# Based on 
# https://machinelearningmastery.com/how-to-develop-lstm-models-for-time-series-forecasting
# https://towardsdatascience.com/the-time-series-transformer-2a521a0efad3
# https://machinelearningmastery.com/timedistributed-layer-for-long-short-term-memory-networks-in-python/
# https://machinelearningmastery.com/how-to-develop-lstm-models-for-multi-step-time-series-forecasting-of-household-power-consumption/

from tensorflow import keras
import pandas as pd
import numpy as np
import glob, os
import matplotlib.pyplot as plt
from sklearn.preprocessing import StandardScaler, MinMaxScaler, RobustScaler


class NeuralManager:
    """
    SR: operates over NN:
    inits data. One instance has to be created for one set of data (cut, long, full...)
    combines the NN from user pattern, trains, saves the best weights
    """
    # ===============================  Init  ====================================================
    def __init__(self, dir_path=None):
        """
        grabs all possible train_test splits from the dir and attaches to self.
        """
        # DFs
        self.X_train = None
        self.X_test = None
        self.y_train = None
        self.y_test = None
        
        self.X_train_normalized = None
        self.X_test_normalized = None
        
        #NP arrays
        self.X_train_unrolled = None
        self.X_test_unrolled = None
        
        self.model = None
        self.scaler = None
        
        self._train_test_init = dict()
        self._init_train_test_data(dir_path)
        
    
    def _init_train_test_data(self, dir_path, verbose=True):
        """
        gets train test data
        
        :param dir_path: dir where train test files located
        """
        for file_path in [f for f in glob.glob(os.path.join(dir_path, "*.csv"))]:
            file_name =  file_path.split('/')[-1].split('.')[0]
            
            if "X_train" in file_name:
                self.X_train = pd.read_csv(file_path, index_col="Date")
                self._train_test_init[file_name] = True
            if "X_test" in file_name:
                self.X_test = pd.read_csv(file_path, index_col="Date")
                self._train_test_init[file_name] = True
            if "y_train" in file_name:
                self.y_train = pd.read_csv(file_path, index_col="Date")
                self._train_test_init[file_name] = True
            if "y_test" in file_name:
                self.y_test = pd.read_csv(file_path, index_col="Date")
                self._train_test_init[file_name] = True
                
        if verbose:
            print(">>> train-test inited: " , self._train_test_init)
            
            
        
        
    # ===============================  Normalize, Power Transform, Split to Sqw =================================
    def normalize_X(self, scaler=None):
        """
        normalizes data with scaler (default is StandardScaler)
        """
        
        self.scaler = StandardScaler() if scaler is None else scaler()
        
        self.X_train_normalized = self.scaler.fit_transform(self.X_train)
        self.X_test_normalized = self.scaler.transform(self.X_test)
                
        return True
    
    # ------------------------------------------------------------------------------------------------------------------#    
    @staticmethod
    def _unroll_array_to_sequence(X, y, sequence_length=4):
        # src: https://analyticsindiamag.com/anomaly-detection-in-temperature-sensor-data-using-lstm-rnn-model/
        
        if len(X) != len(y):
            print(">>> X and y data should have same len...")
            return False
        
        set_X = []
        set_y = []
        
        for index in range(len(X) - sequence_length):
            set_X.append(X[index: index + sequence_length])
            set_y.append(y[index: index + sequence_length])
        
        return np.asarray(set_X), np.asarray(set_y)

    # ------------------------------------------------------------------------------------------------------------------#
    def split_X_to_sequencees(self, sequence_len):
        """
        Splits X to sequences
        >>> Example: [1,2,3,4,5] n_steps/ sequence_len=3 --> [1,2,3], [2,3,4], [3,4,5]
        """
        self.X_train_unrolled, self.y_train_unrolled = self._unroll_array_to_sequence(
            self.X_train_normalized, 
            self.y_train.values, 
            sequence_len)
        
        self.X_test_unrolled, self.y_test_unrolled = self._unroll_array_to_sequence(
            self.X_test_normalized, 
            self.y_test.values, 
            sequence_len)    
        # ------------------------------------------------------------------------------------------------------------------#
    # TODO: PowerTransform

    # ========================================  Model Creation  ==============================================
    def model_combine(self, template:list, compile_model=True, compile_dict=None, metrics=None, verbose=True):
        """
        Combines self.model from template
        
        :param template: list with layers
            >>> example: 
                template = [
                            TimeDistributed(Conv1D(**conv1D_params, input_shape=(None, n_steps, n_features))),
                            TimeDistributed(MaxPooling1D(pool_size=2)),
                            TimeDistributed(Flatten()),
                            LSTM(50, activation='relu'),
                            Dense(1)
                        ]
        :param compile_model: if True, compile_dict has to be provided
        :param metrics: list of metrics that will be used in model compilation
        """
        
        self.model = keras.Sequential()
        for layer in template:                
            self.model.add(layer)
        
        if metrics is None:
            metrics = ['mae']
            
        if compile_model and (compile_dict is None):
            compile_dict = dict()
            compile_defaults = dict(optimizer='adam', loss='rmse', metrics=['mae'])            
            self._helpers_set_dict_default(compile_dict, compile_defaults)
            
        
        self.model.compile(**compile_dict)
        print(">>> model compiled")
        
        if verbose:
            self.model.summary()
        
        return True
    
    # ------------------------------------------------------------------------------------------------------------------#
    def model_fit(self, n_epoch=None, n_seq=None, n_steps=None, batch_size=32, verbose=2,
                  print_charts=True, use_tensorboard=False, return_results=False):
        """
        Fits the self.model, plots 
        """
        if self.model is None:
            print(">>>No model detected. First you have to combine it...")
            return False
        if n_epoch is None:
            n_epoch = 10
        if n_seq is None:
            n_seq = 2
        if n_steps is None:
            n_steps = 2
        
        n_features = self.X_train.shape[1]
        
        x_train = self.X_train_unrolled 
        y_train = self.y_train_unrolled
        x_train = x_train.reshape(x_train.shape[0], n_seq, n_steps, n_features)

        x_test = self.X_test_unrolled 
        y_test = self.y_test_unrolled
        x_test = x_test.reshape(x_test.shape[0], n_seq, n_steps, n_features)
        
        results = self.model.fit(
                                x=x_train, y=y_train,
                                epochs=n_epoch,
                                batch_size=batch_size,
                                validation_data=(x_test, y_test),
                                verbose=verbose,
                            )
        
        if (print_charts and use_tensorboard):
            # TODO
            pass
        
        # simple matplot chart
        if print_charts and (not use_tensorboard):
            loss = np.array(results.history['loss']);       
            val_loss = np.array(results.history['val_loss'])
            
            ax_properties = dict(ch_title='Loss by Epoch\n', 
                                     x_label='epochs', 
                                     y_label='Loss', 
                                     x_lim=None, 
                                     y_lim=None, 
                                     label_series_base=val_loss, 
                                     shift=+5e-4)
                        
            
            fig, ax = plt.subplots(1,1, figsize=(10,5))
            ax.plot(loss, label="train_loss", marker='o') 
            ax.plot(val_loss, label="test_loss", marker='o')
            
            
            self._helpers_plt_set_ax_properties(ax=ax, ax_properties=ax_properties)
            
        
        
        if return_results:
            return val_loss# results
        

    # ========================================  Helpers  ==============================================
    @staticmethod
    def _helpers_set_dict_default(dictionar, keys):
        """
        Sets values for keys in dict.
        
        :param dictionar: dictionary that has to be inspected for presence of keys
        :param keys:
            >> list: keys from list that are not found in dictionar, will be added with None value
            >> dict: keys from keys dict that are not found in dictionar, will be added with keys[key] value
                
        
        returns: None --> as dict is passed by ref, no real need for return
        
        """
        if isinstance(keys, list):
            for key in keys:
                dictionar[key] = dictionar[key] if key in dictionar else None
        
        if isinstance(keys, dict):
            for key, val in keys.items():
                dictionar[key] = dictionar[key] if key in dictionar else val
    # ------------------------------------------------------------------------------------------------------------------#                
    @staticmethod
    def _helpers_plt_set_ax_properties(ax=None, ax_properties=None):
        """
        formats plot created on the base of plt.subplots() with the properties in ax_properties
        :param ax:
        :param ax_properties:
        ax_properties = {
            0: dict(ch_title='Accuracy by Epoch\n', x_label='', y_label='Accuracy', x_lim=None, y_lim=977e-3,
                label_series_base=val_accur, shift=-3e-4),
            1: dict(ch_title='Loss by Epoch\n', x_label='epochs', y_label='Loss', x_lim=None, y_lim=None,
                label_series_base=val_loss, shift=+5e-4)
        }
        :return:
        """
        # general
        ax.legend(loc=3)
        ax.spines["right"].set_visible(False)
        ax.spines["top"].set_visible(False);
        ax.grid(True, color='0.90')
        # ax_properties
        _plt_label_Series(ax=ax, arr_of_labels=ax_properties['label_series_base'],
                         shift=ax_properties['shift'])
        
        
        ax.set_ylim(ax_properties['y_lim'])
        ax.set_title(ax_properties['ch_title'], fontweight='bold')  # oc='left')
        ax.set_xlabel(ax_properties['x_label'])
        ax.set_ylabel(ax_properties['y_label'])
        
    # ------------------------------------------------------------------------------------------------------------------#
    @staticmethod
    def _plt_label_Series(ax=None, arr_of_labels=None, shift=None):
        """
        spits lablels to the dots in the Series chart
        :param ax: ax
        :param arr_of_labels: arr of values, ie: np.array(history.history['accuracy']) from keras.Sequential()
        :param shift: int to shift from the line itself
        :return: None
        """
        for i, val in enumerate(arr_of_labels):
            ax.text(i, val + shift, f"{val:.4f}", weight='bold')

