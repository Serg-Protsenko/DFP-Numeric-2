??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.6.0-dev202106142v1.12.1-58488-g1b5b56ae9ca8??
|
dense_576/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:-*!
shared_namedense_576/kernel
u
$dense_576/kernel/Read/ReadVariableOpReadVariableOpdense_576/kernel*
_output_shapes

:-*
dtype0
t
dense_576/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_576/bias
m
"dense_576/bias/Read/ReadVariableOpReadVariableOpdense_576/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
lstm_408/lstm_cell_408/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_408/lstm_cell_408/kernel
?
1lstm_408/lstm_cell_408/kernel/Read/ReadVariableOpReadVariableOplstm_408/lstm_cell_408/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_408/lstm_cell_408/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	-?*8
shared_name)'lstm_408/lstm_cell_408/recurrent_kernel
?
;lstm_408/lstm_cell_408/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_408/lstm_cell_408/recurrent_kernel*
_output_shapes
:	-?*
dtype0
?
lstm_408/lstm_cell_408/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_408/lstm_cell_408/bias
?
/lstm_408/lstm_cell_408/bias/Read/ReadVariableOpReadVariableOplstm_408/lstm_cell_408/bias*
_output_shapes	
:?*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/dense_576/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:-*(
shared_nameAdam/dense_576/kernel/m
?
+Adam/dense_576/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_576/kernel/m*
_output_shapes

:-*
dtype0
?
Adam/dense_576/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_576/bias/m
{
)Adam/dense_576/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_576/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_408/lstm_cell_408/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_408/lstm_cell_408/kernel/m
?
8Adam/lstm_408/lstm_cell_408/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_408/lstm_cell_408/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_408/lstm_cell_408/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	-?*?
shared_name0.Adam/lstm_408/lstm_cell_408/recurrent_kernel/m
?
BAdam/lstm_408/lstm_cell_408/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_408/lstm_cell_408/recurrent_kernel/m*
_output_shapes
:	-?*
dtype0
?
"Adam/lstm_408/lstm_cell_408/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_408/lstm_cell_408/bias/m
?
6Adam/lstm_408/lstm_cell_408/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_408/lstm_cell_408/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_576/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:-*(
shared_nameAdam/dense_576/kernel/v
?
+Adam/dense_576/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_576/kernel/v*
_output_shapes

:-*
dtype0
?
Adam/dense_576/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_576/bias/v
{
)Adam/dense_576/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_576/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_408/lstm_cell_408/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_408/lstm_cell_408/kernel/v
?
8Adam/lstm_408/lstm_cell_408/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_408/lstm_cell_408/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_408/lstm_cell_408/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	-?*?
shared_name0.Adam/lstm_408/lstm_cell_408/recurrent_kernel/v
?
BAdam/lstm_408/lstm_cell_408/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_408/lstm_cell_408/recurrent_kernel/v*
_output_shapes
:	-?*
dtype0
?
"Adam/lstm_408/lstm_cell_408/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_408/lstm_cell_408/bias/v
?
6Adam/lstm_408/lstm_cell_408/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_408/lstm_cell_408/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?"
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?"
value?"B?" B?"
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
l
	cell


state_spec
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
?
iter

beta_1

beta_2
	decay
learning_ratemBmCmDmEmFvGvHvIvJvK
#
0
1
2
3
4
 
#
0
1
2
3
4
?

layers
	variables
non_trainable_variables
regularization_losses
trainable_variables
layer_metrics
 layer_regularization_losses
!metrics
 
?
"
state_size

kernel
recurrent_kernel
bias
#	variables
$regularization_losses
%trainable_variables
&	keras_api
 

0
1
2
 

0
1
2
?

'layers
	variables
(non_trainable_variables

)states
regularization_losses
trainable_variables
*layer_metrics
+layer_regularization_losses
,metrics
\Z
VARIABLE_VALUEdense_576/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_576/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

-layers
	variables
.non_trainable_variables
regularization_losses
trainable_variables
/layer_metrics
0layer_regularization_losses
1metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_408/lstm_cell_408/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_408/lstm_cell_408/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_408/lstm_cell_408/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE

0
1
 
 
 

20
31
 

0
1
2
 

0
1
2
?

4layers
#	variables
5non_trainable_variables
$regularization_losses
%trainable_variables
6layer_metrics
7layer_regularization_losses
8metrics

	0
 
 
 
 
 
 
 
 
 
 
4
	9total
	:count
;	variables
<	keras_api
D
	=total
	>count
?
_fn_kwargs
@	variables
A	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

90
:1

;	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

=0
>1

@	variables
}
VARIABLE_VALUEAdam/dense_576/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_576/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_408/lstm_cell_408/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_408/lstm_cell_408/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_408/lstm_cell_408/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_576/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_576/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_408/lstm_cell_408/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_408/lstm_cell_408/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_408/lstm_cell_408/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_408_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_408_inputlstm_408/lstm_cell_408/kernel'lstm_408/lstm_cell_408/recurrent_kernellstm_408/lstm_cell_408/biasdense_576/kerneldense_576/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_5972875
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_576/kernel/Read/ReadVariableOp"dense_576/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_408/lstm_cell_408/kernel/Read/ReadVariableOp;lstm_408/lstm_cell_408/recurrent_kernel/Read/ReadVariableOp/lstm_408/lstm_cell_408/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/dense_576/kernel/m/Read/ReadVariableOp)Adam/dense_576/bias/m/Read/ReadVariableOp8Adam/lstm_408/lstm_cell_408/kernel/m/Read/ReadVariableOpBAdam/lstm_408/lstm_cell_408/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_408/lstm_cell_408/bias/m/Read/ReadVariableOp+Adam/dense_576/kernel/v/Read/ReadVariableOp)Adam/dense_576/bias/v/Read/ReadVariableOp8Adam/lstm_408/lstm_cell_408/kernel/v/Read/ReadVariableOpBAdam/lstm_408/lstm_cell_408/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_408/lstm_cell_408/bias/v/Read/ReadVariableOpConst*%
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_save_5974079
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_576/kerneldense_576/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_408/lstm_cell_408/kernel'lstm_408/lstm_cell_408/recurrent_kernellstm_408/lstm_cell_408/biastotalcounttotal_1count_1Adam/dense_576/kernel/mAdam/dense_576/bias/m$Adam/lstm_408/lstm_cell_408/kernel/m.Adam/lstm_408/lstm_cell_408/recurrent_kernel/m"Adam/lstm_408/lstm_cell_408/bias/mAdam/dense_576/kernel/vAdam/dense_576/bias/v$Adam/lstm_408/lstm_cell_408/kernel/v.Adam/lstm_408/lstm_cell_408/recurrent_kernel/v"Adam/lstm_408/lstm_cell_408/bias/v*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__traced_restore_5974161??
?
?
%__inference_signature_wrapper_5972875
lstm_408_input
unknown:	?
	unknown_0:	-?
	unknown_1:	?
	unknown_2:-
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_408_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_59717512
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_408_input
?\
?
E__inference_lstm_408_layer_call_and_return_conditional_losses_5972538

inputs?
,lstm_cell_408_matmul_readvariableop_resource:	?A
.lstm_cell_408_matmul_1_readvariableop_resource:	-?<
-lstm_cell_408_biasadd_readvariableop_resource:	?
identity??$lstm_cell_408/BiasAdd/ReadVariableOp?#lstm_cell_408/MatMul/ReadVariableOp?%lstm_cell_408/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????-2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????-2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_408/MatMul/ReadVariableOpReadVariableOp,lstm_cell_408_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_408/MatMul/ReadVariableOp?
lstm_cell_408/MatMulMatMulstrided_slice_2:output:0+lstm_cell_408/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/MatMul?
%lstm_cell_408/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_408_matmul_1_readvariableop_resource*
_output_shapes
:	-?*
dtype02'
%lstm_cell_408/MatMul_1/ReadVariableOp?
lstm_cell_408/MatMul_1MatMulzeros:output:0-lstm_cell_408/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/MatMul_1?
lstm_cell_408/addAddV2lstm_cell_408/MatMul:product:0 lstm_cell_408/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/add?
$lstm_cell_408/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_408_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_408/BiasAdd/ReadVariableOp?
lstm_cell_408/BiasAddBiasAddlstm_cell_408/add:z:0,lstm_cell_408/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/BiasAdd?
lstm_cell_408/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_408/split/split_dim?
lstm_cell_408/splitSplit&lstm_cell_408/split/split_dim:output:0lstm_cell_408/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2
lstm_cell_408/split?
lstm_cell_408/SigmoidSigmoidlstm_cell_408/split:output:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Sigmoid?
lstm_cell_408/Sigmoid_1Sigmoidlstm_cell_408/split:output:1*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Sigmoid_1?
lstm_cell_408/mulMullstm_cell_408/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/mul?
lstm_cell_408/ReluRelulstm_cell_408/split:output:2*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Relu?
lstm_cell_408/mul_1Mullstm_cell_408/Sigmoid:y:0 lstm_cell_408/Relu:activations:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/mul_1?
lstm_cell_408/add_1AddV2lstm_cell_408/mul:z:0lstm_cell_408/mul_1:z:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/add_1?
lstm_cell_408/Sigmoid_2Sigmoidlstm_cell_408/split:output:3*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Sigmoid_2
lstm_cell_408/Relu_1Relulstm_cell_408/add_1:z:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Relu_1?
lstm_cell_408/mul_2Mullstm_cell_408/Sigmoid_2:y:0"lstm_cell_408/Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_408_matmul_readvariableop_resource.lstm_cell_408_matmul_1_readvariableop_resource-lstm_cell_408_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????-:?????????-: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5972454*
condR
while_cond_5972453*K
output_shapes:
8: : : : :?????????-:?????????-: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????-*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????-*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????-2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identity?
NoOpNoOp%^lstm_cell_408/BiasAdd/ReadVariableOp$^lstm_cell_408/MatMul/ReadVariableOp&^lstm_cell_408/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_408/BiasAdd/ReadVariableOp$lstm_cell_408/BiasAdd/ReadVariableOp2J
#lstm_cell_408/MatMul/ReadVariableOp#lstm_cell_408/MatMul/ReadVariableOp2N
%lstm_cell_408/MatMul_1/ReadVariableOp%lstm_cell_408/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
while_body_5972454
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_408_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_408_matmul_1_readvariableop_resource_0:	-?D
5while_lstm_cell_408_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_408_matmul_readvariableop_resource:	?G
4while_lstm_cell_408_matmul_1_readvariableop_resource:	-?B
3while_lstm_cell_408_biasadd_readvariableop_resource:	???*while/lstm_cell_408/BiasAdd/ReadVariableOp?)while/lstm_cell_408/MatMul/ReadVariableOp?+while/lstm_cell_408/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_408/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_408_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_408/MatMul/ReadVariableOp?
while/lstm_cell_408/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_408/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/MatMul?
+while/lstm_cell_408/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_408_matmul_1_readvariableop_resource_0*
_output_shapes
:	-?*
dtype02-
+while/lstm_cell_408/MatMul_1/ReadVariableOp?
while/lstm_cell_408/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_408/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/MatMul_1?
while/lstm_cell_408/addAddV2$while/lstm_cell_408/MatMul:product:0&while/lstm_cell_408/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/add?
*while/lstm_cell_408/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_408_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_408/BiasAdd/ReadVariableOp?
while/lstm_cell_408/BiasAddBiasAddwhile/lstm_cell_408/add:z:02while/lstm_cell_408/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/BiasAdd?
#while/lstm_cell_408/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_408/split/split_dim?
while/lstm_cell_408/splitSplit,while/lstm_cell_408/split/split_dim:output:0$while/lstm_cell_408/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2
while/lstm_cell_408/split?
while/lstm_cell_408/SigmoidSigmoid"while/lstm_cell_408/split:output:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Sigmoid?
while/lstm_cell_408/Sigmoid_1Sigmoid"while/lstm_cell_408/split:output:1*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Sigmoid_1?
while/lstm_cell_408/mulMul!while/lstm_cell_408/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/mul?
while/lstm_cell_408/ReluRelu"while/lstm_cell_408/split:output:2*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Relu?
while/lstm_cell_408/mul_1Mulwhile/lstm_cell_408/Sigmoid:y:0&while/lstm_cell_408/Relu:activations:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/mul_1?
while/lstm_cell_408/add_1AddV2while/lstm_cell_408/mul:z:0while/lstm_cell_408/mul_1:z:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/add_1?
while/lstm_cell_408/Sigmoid_2Sigmoid"while/lstm_cell_408/split:output:3*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Sigmoid_2?
while/lstm_cell_408/Relu_1Reluwhile/lstm_cell_408/add_1:z:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Relu_1?
while/lstm_cell_408/mul_2Mul!while/lstm_cell_408/Sigmoid_2:y:0(while/lstm_cell_408/Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_408/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_408/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????-2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_408/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????-2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_408/BiasAdd/ReadVariableOp*^while/lstm_cell_408/MatMul/ReadVariableOp,^while/lstm_cell_408/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_408_biasadd_readvariableop_resource5while_lstm_cell_408_biasadd_readvariableop_resource_0"n
4while_lstm_cell_408_matmul_1_readvariableop_resource6while_lstm_cell_408_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_408_matmul_readvariableop_resource4while_lstm_cell_408_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????-:?????????-: : : : : 2X
*while/lstm_cell_408/BiasAdd/ReadVariableOp*while/lstm_cell_408/BiasAdd/ReadVariableOp2V
)while/lstm_cell_408/MatMul/ReadVariableOp)while/lstm_cell_408/MatMul/ReadVariableOp2Z
+while/lstm_cell_408/MatMul_1/ReadVariableOp+while/lstm_cell_408/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
: 
??
?
while_body_5973286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_408_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_408_matmul_1_readvariableop_resource_0:	-?D
5while_lstm_cell_408_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_408_matmul_readvariableop_resource:	?G
4while_lstm_cell_408_matmul_1_readvariableop_resource:	-?B
3while_lstm_cell_408_biasadd_readvariableop_resource:	???*while/lstm_cell_408/BiasAdd/ReadVariableOp?)while/lstm_cell_408/MatMul/ReadVariableOp?+while/lstm_cell_408/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_408/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_408_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_408/MatMul/ReadVariableOp?
while/lstm_cell_408/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_408/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/MatMul?
+while/lstm_cell_408/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_408_matmul_1_readvariableop_resource_0*
_output_shapes
:	-?*
dtype02-
+while/lstm_cell_408/MatMul_1/ReadVariableOp?
while/lstm_cell_408/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_408/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/MatMul_1?
while/lstm_cell_408/addAddV2$while/lstm_cell_408/MatMul:product:0&while/lstm_cell_408/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/add?
*while/lstm_cell_408/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_408_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_408/BiasAdd/ReadVariableOp?
while/lstm_cell_408/BiasAddBiasAddwhile/lstm_cell_408/add:z:02while/lstm_cell_408/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/BiasAdd?
#while/lstm_cell_408/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_408/split/split_dim?
while/lstm_cell_408/splitSplit,while/lstm_cell_408/split/split_dim:output:0$while/lstm_cell_408/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2
while/lstm_cell_408/split?
while/lstm_cell_408/SigmoidSigmoid"while/lstm_cell_408/split:output:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Sigmoid?
while/lstm_cell_408/Sigmoid_1Sigmoid"while/lstm_cell_408/split:output:1*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Sigmoid_1?
while/lstm_cell_408/mulMul!while/lstm_cell_408/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/mul?
while/lstm_cell_408/ReluRelu"while/lstm_cell_408/split:output:2*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Relu?
while/lstm_cell_408/mul_1Mulwhile/lstm_cell_408/Sigmoid:y:0&while/lstm_cell_408/Relu:activations:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/mul_1?
while/lstm_cell_408/add_1AddV2while/lstm_cell_408/mul:z:0while/lstm_cell_408/mul_1:z:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/add_1?
while/lstm_cell_408/Sigmoid_2Sigmoid"while/lstm_cell_408/split:output:3*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Sigmoid_2?
while/lstm_cell_408/Relu_1Reluwhile/lstm_cell_408/add_1:z:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Relu_1?
while/lstm_cell_408/mul_2Mul!while/lstm_cell_408/Sigmoid_2:y:0(while/lstm_cell_408/Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_408/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_408/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????-2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_408/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????-2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_408/BiasAdd/ReadVariableOp*^while/lstm_cell_408/MatMul/ReadVariableOp,^while/lstm_cell_408/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_408_biasadd_readvariableop_resource5while_lstm_cell_408_biasadd_readvariableop_resource_0"n
4while_lstm_cell_408_matmul_1_readvariableop_resource6while_lstm_cell_408_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_408_matmul_readvariableop_resource4while_lstm_cell_408_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????-:?????????-: : : : : 2X
*while/lstm_cell_408/BiasAdd/ReadVariableOp*while/lstm_cell_408/BiasAdd/ReadVariableOp2V
)while/lstm_cell_408/MatMul/ReadVariableOp)while/lstm_cell_408/MatMul/ReadVariableOp2Z
+while/lstm_cell_408/MatMul_1/ReadVariableOp+while/lstm_cell_408/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_dense_576_layer_call_fn_5973886

inputs
unknown:-
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_576_layer_call_and_return_conditional_losses_59725562
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????-: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????-
 
_user_specified_nameinputs
?	
?
0__inference_sequential_145_layer_call_fn_5972820
lstm_408_input
unknown:	?
	unknown_0:	-?
	unknown_1:	?
	unknown_2:-
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_408_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_145_layer_call_and_return_conditional_losses_59727922
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_408_input
?
?
J__inference_lstm_cell_408_layer_call_and_return_conditional_losses_5973950

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	-?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	-?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????-2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????-2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????-2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????-2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????-2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????-2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????-2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????-2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????-:?????????-: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????-
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????-
"
_user_specified_name
states/1
?\
?
E__inference_lstm_408_layer_call_and_return_conditional_losses_5973370
inputs_0?
,lstm_cell_408_matmul_readvariableop_resource:	?A
.lstm_cell_408_matmul_1_readvariableop_resource:	-?<
-lstm_cell_408_biasadd_readvariableop_resource:	?
identity??$lstm_cell_408/BiasAdd/ReadVariableOp?#lstm_cell_408/MatMul/ReadVariableOp?%lstm_cell_408/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????-2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????-2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_408/MatMul/ReadVariableOpReadVariableOp,lstm_cell_408_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_408/MatMul/ReadVariableOp?
lstm_cell_408/MatMulMatMulstrided_slice_2:output:0+lstm_cell_408/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/MatMul?
%lstm_cell_408/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_408_matmul_1_readvariableop_resource*
_output_shapes
:	-?*
dtype02'
%lstm_cell_408/MatMul_1/ReadVariableOp?
lstm_cell_408/MatMul_1MatMulzeros:output:0-lstm_cell_408/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/MatMul_1?
lstm_cell_408/addAddV2lstm_cell_408/MatMul:product:0 lstm_cell_408/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/add?
$lstm_cell_408/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_408_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_408/BiasAdd/ReadVariableOp?
lstm_cell_408/BiasAddBiasAddlstm_cell_408/add:z:0,lstm_cell_408/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/BiasAdd?
lstm_cell_408/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_408/split/split_dim?
lstm_cell_408/splitSplit&lstm_cell_408/split/split_dim:output:0lstm_cell_408/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2
lstm_cell_408/split?
lstm_cell_408/SigmoidSigmoidlstm_cell_408/split:output:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Sigmoid?
lstm_cell_408/Sigmoid_1Sigmoidlstm_cell_408/split:output:1*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Sigmoid_1?
lstm_cell_408/mulMullstm_cell_408/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/mul?
lstm_cell_408/ReluRelulstm_cell_408/split:output:2*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Relu?
lstm_cell_408/mul_1Mullstm_cell_408/Sigmoid:y:0 lstm_cell_408/Relu:activations:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/mul_1?
lstm_cell_408/add_1AddV2lstm_cell_408/mul:z:0lstm_cell_408/mul_1:z:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/add_1?
lstm_cell_408/Sigmoid_2Sigmoidlstm_cell_408/split:output:3*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Sigmoid_2
lstm_cell_408/Relu_1Relulstm_cell_408/add_1:z:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Relu_1?
lstm_cell_408/mul_2Mullstm_cell_408/Sigmoid_2:y:0"lstm_cell_408/Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_408_matmul_readvariableop_resource.lstm_cell_408_matmul_1_readvariableop_resource-lstm_cell_408_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????-:?????????-: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5973286*
condR
while_cond_5973285*K
output_shapes:
8: : : : :?????????-:?????????-: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????-*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????-*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????-2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identity?
NoOpNoOp%^lstm_cell_408/BiasAdd/ReadVariableOp$^lstm_cell_408/MatMul/ReadVariableOp&^lstm_cell_408/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_408/BiasAdd/ReadVariableOp$lstm_cell_408/BiasAdd/ReadVariableOp2J
#lstm_cell_408/MatMul/ReadVariableOp#lstm_cell_408/MatMul/ReadVariableOp2N
%lstm_cell_408/MatMul_1/ReadVariableOp%lstm_cell_408/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_5972453
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5972453___redundant_placeholder05
1while_while_cond_5972453___redundant_placeholder15
1while_while_cond_5972453___redundant_placeholder25
1while_while_cond_5972453___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????-:?????????-: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
:
?
?
K__inference_sequential_145_layer_call_and_return_conditional_losses_5972792

inputs#
lstm_408_5972779:	?#
lstm_408_5972781:	-?
lstm_408_5972783:	?#
dense_576_5972786:-
dense_576_5972788:
identity??!dense_576/StatefulPartitionedCall? lstm_408/StatefulPartitionedCall?
 lstm_408/StatefulPartitionedCallStatefulPartitionedCallinputslstm_408_5972779lstm_408_5972781lstm_408_5972783*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????-*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_408_layer_call_and_return_conditional_losses_59727502"
 lstm_408/StatefulPartitionedCall?
!dense_576/StatefulPartitionedCallStatefulPartitionedCall)lstm_408/StatefulPartitionedCall:output:0dense_576_5972786dense_576_5972788*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_576_layer_call_and_return_conditional_losses_59725562#
!dense_576/StatefulPartitionedCall?
IdentityIdentity*dense_576/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_576/StatefulPartitionedCall!^lstm_408/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2F
!dense_576/StatefulPartitionedCall!dense_576/StatefulPartitionedCall2D
 lstm_408/StatefulPartitionedCall lstm_408/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_408_layer_call_fn_5973967

inputs
states_0
states_1
unknown:	?
	unknown_0:	-?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????-:?????????-:?????????-*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_408_layer_call_and_return_conditional_losses_59718262
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????-2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????-2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????-:?????????-: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????-
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????-
"
_user_specified_name
states/1
?
?
J__inference_lstm_cell_408_layer_call_and_return_conditional_losses_5971826

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	-?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	-?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????-2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????-2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????-2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????-2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????-2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????-2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????-2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????-2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????-:?????????-: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????-
 
_user_specified_namestates:OK
'
_output_shapes
:?????????-
 
_user_specified_namestates
??
?
while_body_5972666
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_408_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_408_matmul_1_readvariableop_resource_0:	-?D
5while_lstm_cell_408_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_408_matmul_readvariableop_resource:	?G
4while_lstm_cell_408_matmul_1_readvariableop_resource:	-?B
3while_lstm_cell_408_biasadd_readvariableop_resource:	???*while/lstm_cell_408/BiasAdd/ReadVariableOp?)while/lstm_cell_408/MatMul/ReadVariableOp?+while/lstm_cell_408/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_408/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_408_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_408/MatMul/ReadVariableOp?
while/lstm_cell_408/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_408/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/MatMul?
+while/lstm_cell_408/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_408_matmul_1_readvariableop_resource_0*
_output_shapes
:	-?*
dtype02-
+while/lstm_cell_408/MatMul_1/ReadVariableOp?
while/lstm_cell_408/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_408/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/MatMul_1?
while/lstm_cell_408/addAddV2$while/lstm_cell_408/MatMul:product:0&while/lstm_cell_408/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/add?
*while/lstm_cell_408/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_408_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_408/BiasAdd/ReadVariableOp?
while/lstm_cell_408/BiasAddBiasAddwhile/lstm_cell_408/add:z:02while/lstm_cell_408/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/BiasAdd?
#while/lstm_cell_408/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_408/split/split_dim?
while/lstm_cell_408/splitSplit,while/lstm_cell_408/split/split_dim:output:0$while/lstm_cell_408/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2
while/lstm_cell_408/split?
while/lstm_cell_408/SigmoidSigmoid"while/lstm_cell_408/split:output:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Sigmoid?
while/lstm_cell_408/Sigmoid_1Sigmoid"while/lstm_cell_408/split:output:1*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Sigmoid_1?
while/lstm_cell_408/mulMul!while/lstm_cell_408/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/mul?
while/lstm_cell_408/ReluRelu"while/lstm_cell_408/split:output:2*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Relu?
while/lstm_cell_408/mul_1Mulwhile/lstm_cell_408/Sigmoid:y:0&while/lstm_cell_408/Relu:activations:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/mul_1?
while/lstm_cell_408/add_1AddV2while/lstm_cell_408/mul:z:0while/lstm_cell_408/mul_1:z:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/add_1?
while/lstm_cell_408/Sigmoid_2Sigmoid"while/lstm_cell_408/split:output:3*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Sigmoid_2?
while/lstm_cell_408/Relu_1Reluwhile/lstm_cell_408/add_1:z:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Relu_1?
while/lstm_cell_408/mul_2Mul!while/lstm_cell_408/Sigmoid_2:y:0(while/lstm_cell_408/Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_408/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_408/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????-2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_408/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????-2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_408/BiasAdd/ReadVariableOp*^while/lstm_cell_408/MatMul/ReadVariableOp,^while/lstm_cell_408/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_408_biasadd_readvariableop_resource5while_lstm_cell_408_biasadd_readvariableop_resource_0"n
4while_lstm_cell_408_matmul_1_readvariableop_resource6while_lstm_cell_408_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_408_matmul_readvariableop_resource4while_lstm_cell_408_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????-:?????????-: : : : : 2X
*while/lstm_cell_408/BiasAdd/ReadVariableOp*while/lstm_cell_408/BiasAdd/ReadVariableOp2V
)while/lstm_cell_408/MatMul/ReadVariableOp)while/lstm_cell_408/MatMul/ReadVariableOp2Z
+while/lstm_cell_408/MatMul_1/ReadVariableOp+while/lstm_cell_408/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
: 
?b
?
*sequential_145_lstm_408_while_body_5971661L
Hsequential_145_lstm_408_while_sequential_145_lstm_408_while_loop_counterR
Nsequential_145_lstm_408_while_sequential_145_lstm_408_while_maximum_iterations-
)sequential_145_lstm_408_while_placeholder/
+sequential_145_lstm_408_while_placeholder_1/
+sequential_145_lstm_408_while_placeholder_2/
+sequential_145_lstm_408_while_placeholder_3K
Gsequential_145_lstm_408_while_sequential_145_lstm_408_strided_slice_1_0?
?sequential_145_lstm_408_while_tensorarrayv2read_tensorlistgetitem_sequential_145_lstm_408_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_145_lstm_408_while_lstm_cell_408_matmul_readvariableop_resource_0:	?a
Nsequential_145_lstm_408_while_lstm_cell_408_matmul_1_readvariableop_resource_0:	-?\
Msequential_145_lstm_408_while_lstm_cell_408_biasadd_readvariableop_resource_0:	?*
&sequential_145_lstm_408_while_identity,
(sequential_145_lstm_408_while_identity_1,
(sequential_145_lstm_408_while_identity_2,
(sequential_145_lstm_408_while_identity_3,
(sequential_145_lstm_408_while_identity_4,
(sequential_145_lstm_408_while_identity_5I
Esequential_145_lstm_408_while_sequential_145_lstm_408_strided_slice_1?
?sequential_145_lstm_408_while_tensorarrayv2read_tensorlistgetitem_sequential_145_lstm_408_tensorarrayunstack_tensorlistfromtensor]
Jsequential_145_lstm_408_while_lstm_cell_408_matmul_readvariableop_resource:	?_
Lsequential_145_lstm_408_while_lstm_cell_408_matmul_1_readvariableop_resource:	-?Z
Ksequential_145_lstm_408_while_lstm_cell_408_biasadd_readvariableop_resource:	???Bsequential_145/lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOp?Asequential_145/lstm_408/while/lstm_cell_408/MatMul/ReadVariableOp?Csequential_145/lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOp?
Osequential_145/lstm_408/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2Q
Osequential_145/lstm_408/while/TensorArrayV2Read/TensorListGetItem/element_shape?
Asequential_145/lstm_408/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_145_lstm_408_while_tensorarrayv2read_tensorlistgetitem_sequential_145_lstm_408_tensorarrayunstack_tensorlistfromtensor_0)sequential_145_lstm_408_while_placeholderXsequential_145/lstm_408/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02C
Asequential_145/lstm_408/while/TensorArrayV2Read/TensorListGetItem?
Asequential_145/lstm_408/while/lstm_cell_408/MatMul/ReadVariableOpReadVariableOpLsequential_145_lstm_408_while_lstm_cell_408_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02C
Asequential_145/lstm_408/while/lstm_cell_408/MatMul/ReadVariableOp?
2sequential_145/lstm_408/while/lstm_cell_408/MatMulMatMulHsequential_145/lstm_408/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_145/lstm_408/while/lstm_cell_408/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????24
2sequential_145/lstm_408/while/lstm_cell_408/MatMul?
Csequential_145/lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOpReadVariableOpNsequential_145_lstm_408_while_lstm_cell_408_matmul_1_readvariableop_resource_0*
_output_shapes
:	-?*
dtype02E
Csequential_145/lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOp?
4sequential_145/lstm_408/while/lstm_cell_408/MatMul_1MatMul+sequential_145_lstm_408_while_placeholder_2Ksequential_145/lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????26
4sequential_145/lstm_408/while/lstm_cell_408/MatMul_1?
/sequential_145/lstm_408/while/lstm_cell_408/addAddV2<sequential_145/lstm_408/while/lstm_cell_408/MatMul:product:0>sequential_145/lstm_408/while/lstm_cell_408/MatMul_1:product:0*
T0*(
_output_shapes
:??????????21
/sequential_145/lstm_408/while/lstm_cell_408/add?
Bsequential_145/lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOpReadVariableOpMsequential_145_lstm_408_while_lstm_cell_408_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02D
Bsequential_145/lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOp?
3sequential_145/lstm_408/while/lstm_cell_408/BiasAddBiasAdd3sequential_145/lstm_408/while/lstm_cell_408/add:z:0Jsequential_145/lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????25
3sequential_145/lstm_408/while/lstm_cell_408/BiasAdd?
;sequential_145/lstm_408/while/lstm_cell_408/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2=
;sequential_145/lstm_408/while/lstm_cell_408/split/split_dim?
1sequential_145/lstm_408/while/lstm_cell_408/splitSplitDsequential_145/lstm_408/while/lstm_cell_408/split/split_dim:output:0<sequential_145/lstm_408/while/lstm_cell_408/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split23
1sequential_145/lstm_408/while/lstm_cell_408/split?
3sequential_145/lstm_408/while/lstm_cell_408/SigmoidSigmoid:sequential_145/lstm_408/while/lstm_cell_408/split:output:0*
T0*'
_output_shapes
:?????????-25
3sequential_145/lstm_408/while/lstm_cell_408/Sigmoid?
5sequential_145/lstm_408/while/lstm_cell_408/Sigmoid_1Sigmoid:sequential_145/lstm_408/while/lstm_cell_408/split:output:1*
T0*'
_output_shapes
:?????????-27
5sequential_145/lstm_408/while/lstm_cell_408/Sigmoid_1?
/sequential_145/lstm_408/while/lstm_cell_408/mulMul9sequential_145/lstm_408/while/lstm_cell_408/Sigmoid_1:y:0+sequential_145_lstm_408_while_placeholder_3*
T0*'
_output_shapes
:?????????-21
/sequential_145/lstm_408/while/lstm_cell_408/mul?
0sequential_145/lstm_408/while/lstm_cell_408/ReluRelu:sequential_145/lstm_408/while/lstm_cell_408/split:output:2*
T0*'
_output_shapes
:?????????-22
0sequential_145/lstm_408/while/lstm_cell_408/Relu?
1sequential_145/lstm_408/while/lstm_cell_408/mul_1Mul7sequential_145/lstm_408/while/lstm_cell_408/Sigmoid:y:0>sequential_145/lstm_408/while/lstm_cell_408/Relu:activations:0*
T0*'
_output_shapes
:?????????-23
1sequential_145/lstm_408/while/lstm_cell_408/mul_1?
1sequential_145/lstm_408/while/lstm_cell_408/add_1AddV23sequential_145/lstm_408/while/lstm_cell_408/mul:z:05sequential_145/lstm_408/while/lstm_cell_408/mul_1:z:0*
T0*'
_output_shapes
:?????????-23
1sequential_145/lstm_408/while/lstm_cell_408/add_1?
5sequential_145/lstm_408/while/lstm_cell_408/Sigmoid_2Sigmoid:sequential_145/lstm_408/while/lstm_cell_408/split:output:3*
T0*'
_output_shapes
:?????????-27
5sequential_145/lstm_408/while/lstm_cell_408/Sigmoid_2?
2sequential_145/lstm_408/while/lstm_cell_408/Relu_1Relu5sequential_145/lstm_408/while/lstm_cell_408/add_1:z:0*
T0*'
_output_shapes
:?????????-24
2sequential_145/lstm_408/while/lstm_cell_408/Relu_1?
1sequential_145/lstm_408/while/lstm_cell_408/mul_2Mul9sequential_145/lstm_408/while/lstm_cell_408/Sigmoid_2:y:0@sequential_145/lstm_408/while/lstm_cell_408/Relu_1:activations:0*
T0*'
_output_shapes
:?????????-23
1sequential_145/lstm_408/while/lstm_cell_408/mul_2?
Bsequential_145/lstm_408/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_145_lstm_408_while_placeholder_1)sequential_145_lstm_408_while_placeholder5sequential_145/lstm_408/while/lstm_cell_408/mul_2:z:0*
_output_shapes
: *
element_dtype02D
Bsequential_145/lstm_408/while/TensorArrayV2Write/TensorListSetItem?
#sequential_145/lstm_408/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_145/lstm_408/while/add/y?
!sequential_145/lstm_408/while/addAddV2)sequential_145_lstm_408_while_placeholder,sequential_145/lstm_408/while/add/y:output:0*
T0*
_output_shapes
: 2#
!sequential_145/lstm_408/while/add?
%sequential_145/lstm_408/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_145/lstm_408/while/add_1/y?
#sequential_145/lstm_408/while/add_1AddV2Hsequential_145_lstm_408_while_sequential_145_lstm_408_while_loop_counter.sequential_145/lstm_408/while/add_1/y:output:0*
T0*
_output_shapes
: 2%
#sequential_145/lstm_408/while/add_1?
&sequential_145/lstm_408/while/IdentityIdentity'sequential_145/lstm_408/while/add_1:z:0#^sequential_145/lstm_408/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_145/lstm_408/while/Identity?
(sequential_145/lstm_408/while/Identity_1IdentityNsequential_145_lstm_408_while_sequential_145_lstm_408_while_maximum_iterations#^sequential_145/lstm_408/while/NoOp*
T0*
_output_shapes
: 2*
(sequential_145/lstm_408/while/Identity_1?
(sequential_145/lstm_408/while/Identity_2Identity%sequential_145/lstm_408/while/add:z:0#^sequential_145/lstm_408/while/NoOp*
T0*
_output_shapes
: 2*
(sequential_145/lstm_408/while/Identity_2?
(sequential_145/lstm_408/while/Identity_3IdentityRsequential_145/lstm_408/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_145/lstm_408/while/NoOp*
T0*
_output_shapes
: 2*
(sequential_145/lstm_408/while/Identity_3?
(sequential_145/lstm_408/while/Identity_4Identity5sequential_145/lstm_408/while/lstm_cell_408/mul_2:z:0#^sequential_145/lstm_408/while/NoOp*
T0*'
_output_shapes
:?????????-2*
(sequential_145/lstm_408/while/Identity_4?
(sequential_145/lstm_408/while/Identity_5Identity5sequential_145/lstm_408/while/lstm_cell_408/add_1:z:0#^sequential_145/lstm_408/while/NoOp*
T0*'
_output_shapes
:?????????-2*
(sequential_145/lstm_408/while/Identity_5?
"sequential_145/lstm_408/while/NoOpNoOpC^sequential_145/lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOpB^sequential_145/lstm_408/while/lstm_cell_408/MatMul/ReadVariableOpD^sequential_145/lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2$
"sequential_145/lstm_408/while/NoOp"Y
&sequential_145_lstm_408_while_identity/sequential_145/lstm_408/while/Identity:output:0"]
(sequential_145_lstm_408_while_identity_11sequential_145/lstm_408/while/Identity_1:output:0"]
(sequential_145_lstm_408_while_identity_21sequential_145/lstm_408/while/Identity_2:output:0"]
(sequential_145_lstm_408_while_identity_31sequential_145/lstm_408/while/Identity_3:output:0"]
(sequential_145_lstm_408_while_identity_41sequential_145/lstm_408/while/Identity_4:output:0"]
(sequential_145_lstm_408_while_identity_51sequential_145/lstm_408/while/Identity_5:output:0"?
Ksequential_145_lstm_408_while_lstm_cell_408_biasadd_readvariableop_resourceMsequential_145_lstm_408_while_lstm_cell_408_biasadd_readvariableop_resource_0"?
Lsequential_145_lstm_408_while_lstm_cell_408_matmul_1_readvariableop_resourceNsequential_145_lstm_408_while_lstm_cell_408_matmul_1_readvariableop_resource_0"?
Jsequential_145_lstm_408_while_lstm_cell_408_matmul_readvariableop_resourceLsequential_145_lstm_408_while_lstm_cell_408_matmul_readvariableop_resource_0"?
Esequential_145_lstm_408_while_sequential_145_lstm_408_strided_slice_1Gsequential_145_lstm_408_while_sequential_145_lstm_408_strided_slice_1_0"?
?sequential_145_lstm_408_while_tensorarrayv2read_tensorlistgetitem_sequential_145_lstm_408_tensorarrayunstack_tensorlistfromtensor?sequential_145_lstm_408_while_tensorarrayv2read_tensorlistgetitem_sequential_145_lstm_408_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????-:?????????-: : : : : 2?
Bsequential_145/lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOpBsequential_145/lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOp2?
Asequential_145/lstm_408/while/lstm_cell_408/MatMul/ReadVariableOpAsequential_145/lstm_408/while/lstm_cell_408/MatMul/ReadVariableOp2?
Csequential_145/lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOpCsequential_145/lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
: 
?
?
K__inference_sequential_145_layer_call_and_return_conditional_losses_5972836
lstm_408_input#
lstm_408_5972823:	?#
lstm_408_5972825:	-?
lstm_408_5972827:	?#
dense_576_5972830:-
dense_576_5972832:
identity??!dense_576/StatefulPartitionedCall? lstm_408/StatefulPartitionedCall?
 lstm_408/StatefulPartitionedCallStatefulPartitionedCalllstm_408_inputlstm_408_5972823lstm_408_5972825lstm_408_5972827*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????-*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_408_layer_call_and_return_conditional_losses_59725382"
 lstm_408/StatefulPartitionedCall?
!dense_576/StatefulPartitionedCallStatefulPartitionedCall)lstm_408/StatefulPartitionedCall:output:0dense_576_5972830dense_576_5972832*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_576_layer_call_and_return_conditional_losses_59725562#
!dense_576/StatefulPartitionedCall?
IdentityIdentity*dense_576/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_576/StatefulPartitionedCall!^lstm_408/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2F
!dense_576/StatefulPartitionedCall!dense_576/StatefulPartitionedCall2D
 lstm_408/StatefulPartitionedCall lstm_408/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_408_input
?
?
while_cond_5972049
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5972049___redundant_placeholder05
1while_while_cond_5972049___redundant_placeholder15
1while_while_cond_5972049___redundant_placeholder25
1while_while_cond_5972049___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????-:?????????-: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
:
?v
?
K__inference_sequential_145_layer_call_and_return_conditional_losses_5973189

inputsH
5lstm_408_lstm_cell_408_matmul_readvariableop_resource:	?J
7lstm_408_lstm_cell_408_matmul_1_readvariableop_resource:	-?E
6lstm_408_lstm_cell_408_biasadd_readvariableop_resource:	?:
(dense_576_matmul_readvariableop_resource:-7
)dense_576_biasadd_readvariableop_resource:
identity?? dense_576/BiasAdd/ReadVariableOp?dense_576/MatMul/ReadVariableOp?-lstm_408/lstm_cell_408/BiasAdd/ReadVariableOp?,lstm_408/lstm_cell_408/MatMul/ReadVariableOp?.lstm_408/lstm_cell_408/MatMul_1/ReadVariableOp?lstm_408/whileV
lstm_408/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_408/Shape?
lstm_408/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_408/strided_slice/stack?
lstm_408/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_408/strided_slice/stack_1?
lstm_408/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_408/strided_slice/stack_2?
lstm_408/strided_sliceStridedSlicelstm_408/Shape:output:0%lstm_408/strided_slice/stack:output:0'lstm_408/strided_slice/stack_1:output:0'lstm_408/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_408/strided_slicen
lstm_408/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2
lstm_408/zeros/mul/y?
lstm_408/zeros/mulMullstm_408/strided_slice:output:0lstm_408/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_408/zeros/mulq
lstm_408/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_408/zeros/Less/y?
lstm_408/zeros/LessLesslstm_408/zeros/mul:z:0lstm_408/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_408/zeros/Lesst
lstm_408/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2
lstm_408/zeros/packed/1?
lstm_408/zeros/packedPacklstm_408/strided_slice:output:0 lstm_408/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_408/zeros/packedq
lstm_408/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_408/zeros/Const?
lstm_408/zerosFilllstm_408/zeros/packed:output:0lstm_408/zeros/Const:output:0*
T0*'
_output_shapes
:?????????-2
lstm_408/zerosr
lstm_408/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2
lstm_408/zeros_1/mul/y?
lstm_408/zeros_1/mulMullstm_408/strided_slice:output:0lstm_408/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_408/zeros_1/mulu
lstm_408/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_408/zeros_1/Less/y?
lstm_408/zeros_1/LessLesslstm_408/zeros_1/mul:z:0 lstm_408/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_408/zeros_1/Lessx
lstm_408/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2
lstm_408/zeros_1/packed/1?
lstm_408/zeros_1/packedPacklstm_408/strided_slice:output:0"lstm_408/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_408/zeros_1/packedu
lstm_408/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_408/zeros_1/Const?
lstm_408/zeros_1Fill lstm_408/zeros_1/packed:output:0lstm_408/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????-2
lstm_408/zeros_1?
lstm_408/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_408/transpose/perm?
lstm_408/transpose	Transposeinputs lstm_408/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_408/transposej
lstm_408/Shape_1Shapelstm_408/transpose:y:0*
T0*
_output_shapes
:2
lstm_408/Shape_1?
lstm_408/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_408/strided_slice_1/stack?
 lstm_408/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_408/strided_slice_1/stack_1?
 lstm_408/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_408/strided_slice_1/stack_2?
lstm_408/strided_slice_1StridedSlicelstm_408/Shape_1:output:0'lstm_408/strided_slice_1/stack:output:0)lstm_408/strided_slice_1/stack_1:output:0)lstm_408/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_408/strided_slice_1?
$lstm_408/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$lstm_408/TensorArrayV2/element_shape?
lstm_408/TensorArrayV2TensorListReserve-lstm_408/TensorArrayV2/element_shape:output:0!lstm_408/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_408/TensorArrayV2?
>lstm_408/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>lstm_408/TensorArrayUnstack/TensorListFromTensor/element_shape?
0lstm_408/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_408/transpose:y:0Glstm_408/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_408/TensorArrayUnstack/TensorListFromTensor?
lstm_408/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_408/strided_slice_2/stack?
 lstm_408/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_408/strided_slice_2/stack_1?
 lstm_408/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_408/strided_slice_2/stack_2?
lstm_408/strided_slice_2StridedSlicelstm_408/transpose:y:0'lstm_408/strided_slice_2/stack:output:0)lstm_408/strided_slice_2/stack_1:output:0)lstm_408/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_408/strided_slice_2?
,lstm_408/lstm_cell_408/MatMul/ReadVariableOpReadVariableOp5lstm_408_lstm_cell_408_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,lstm_408/lstm_cell_408/MatMul/ReadVariableOp?
lstm_408/lstm_cell_408/MatMulMatMul!lstm_408/strided_slice_2:output:04lstm_408/lstm_cell_408/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_408/lstm_cell_408/MatMul?
.lstm_408/lstm_cell_408/MatMul_1/ReadVariableOpReadVariableOp7lstm_408_lstm_cell_408_matmul_1_readvariableop_resource*
_output_shapes
:	-?*
dtype020
.lstm_408/lstm_cell_408/MatMul_1/ReadVariableOp?
lstm_408/lstm_cell_408/MatMul_1MatMullstm_408/zeros:output:06lstm_408/lstm_cell_408/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_408/lstm_cell_408/MatMul_1?
lstm_408/lstm_cell_408/addAddV2'lstm_408/lstm_cell_408/MatMul:product:0)lstm_408/lstm_cell_408/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_408/lstm_cell_408/add?
-lstm_408/lstm_cell_408/BiasAdd/ReadVariableOpReadVariableOp6lstm_408_lstm_cell_408_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-lstm_408/lstm_cell_408/BiasAdd/ReadVariableOp?
lstm_408/lstm_cell_408/BiasAddBiasAddlstm_408/lstm_cell_408/add:z:05lstm_408/lstm_cell_408/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
lstm_408/lstm_cell_408/BiasAdd?
&lstm_408/lstm_cell_408/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_408/lstm_cell_408/split/split_dim?
lstm_408/lstm_cell_408/splitSplit/lstm_408/lstm_cell_408/split/split_dim:output:0'lstm_408/lstm_cell_408/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2
lstm_408/lstm_cell_408/split?
lstm_408/lstm_cell_408/SigmoidSigmoid%lstm_408/lstm_cell_408/split:output:0*
T0*'
_output_shapes
:?????????-2 
lstm_408/lstm_cell_408/Sigmoid?
 lstm_408/lstm_cell_408/Sigmoid_1Sigmoid%lstm_408/lstm_cell_408/split:output:1*
T0*'
_output_shapes
:?????????-2"
 lstm_408/lstm_cell_408/Sigmoid_1?
lstm_408/lstm_cell_408/mulMul$lstm_408/lstm_cell_408/Sigmoid_1:y:0lstm_408/zeros_1:output:0*
T0*'
_output_shapes
:?????????-2
lstm_408/lstm_cell_408/mul?
lstm_408/lstm_cell_408/ReluRelu%lstm_408/lstm_cell_408/split:output:2*
T0*'
_output_shapes
:?????????-2
lstm_408/lstm_cell_408/Relu?
lstm_408/lstm_cell_408/mul_1Mul"lstm_408/lstm_cell_408/Sigmoid:y:0)lstm_408/lstm_cell_408/Relu:activations:0*
T0*'
_output_shapes
:?????????-2
lstm_408/lstm_cell_408/mul_1?
lstm_408/lstm_cell_408/add_1AddV2lstm_408/lstm_cell_408/mul:z:0 lstm_408/lstm_cell_408/mul_1:z:0*
T0*'
_output_shapes
:?????????-2
lstm_408/lstm_cell_408/add_1?
 lstm_408/lstm_cell_408/Sigmoid_2Sigmoid%lstm_408/lstm_cell_408/split:output:3*
T0*'
_output_shapes
:?????????-2"
 lstm_408/lstm_cell_408/Sigmoid_2?
lstm_408/lstm_cell_408/Relu_1Relu lstm_408/lstm_cell_408/add_1:z:0*
T0*'
_output_shapes
:?????????-2
lstm_408/lstm_cell_408/Relu_1?
lstm_408/lstm_cell_408/mul_2Mul$lstm_408/lstm_cell_408/Sigmoid_2:y:0+lstm_408/lstm_cell_408/Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2
lstm_408/lstm_cell_408/mul_2?
&lstm_408/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   2(
&lstm_408/TensorArrayV2_1/element_shape?
lstm_408/TensorArrayV2_1TensorListReserve/lstm_408/TensorArrayV2_1/element_shape:output:0!lstm_408/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_408/TensorArrayV2_1`
lstm_408/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_408/time?
!lstm_408/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!lstm_408/while/maximum_iterations|
lstm_408/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_408/while/loop_counter?
lstm_408/whileWhile$lstm_408/while/loop_counter:output:0*lstm_408/while/maximum_iterations:output:0lstm_408/time:output:0!lstm_408/TensorArrayV2_1:handle:0lstm_408/zeros:output:0lstm_408/zeros_1:output:0!lstm_408/strided_slice_1:output:0@lstm_408/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_408_lstm_cell_408_matmul_readvariableop_resource7lstm_408_lstm_cell_408_matmul_1_readvariableop_resource6lstm_408_lstm_cell_408_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????-:?????????-: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_408_while_body_5973099*'
condR
lstm_408_while_cond_5973098*K
output_shapes:
8: : : : :?????????-:?????????-: : : : : *
parallel_iterations 2
lstm_408/while?
9lstm_408/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   2;
9lstm_408/TensorArrayV2Stack/TensorListStack/element_shape?
+lstm_408/TensorArrayV2Stack/TensorListStackTensorListStacklstm_408/while:output:3Blstm_408/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????-*
element_dtype02-
+lstm_408/TensorArrayV2Stack/TensorListStack?
lstm_408/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2 
lstm_408/strided_slice_3/stack?
 lstm_408/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_408/strided_slice_3/stack_1?
 lstm_408/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_408/strided_slice_3/stack_2?
lstm_408/strided_slice_3StridedSlice4lstm_408/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_408/strided_slice_3/stack:output:0)lstm_408/strided_slice_3/stack_1:output:0)lstm_408/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????-*
shrink_axis_mask2
lstm_408/strided_slice_3?
lstm_408/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_408/transpose_1/perm?
lstm_408/transpose_1	Transpose4lstm_408/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_408/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????-2
lstm_408/transpose_1x
lstm_408/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_408/runtime?
dense_576/MatMul/ReadVariableOpReadVariableOp(dense_576_matmul_readvariableop_resource*
_output_shapes

:-*
dtype02!
dense_576/MatMul/ReadVariableOp?
dense_576/MatMulMatMul!lstm_408/strided_slice_3:output:0'dense_576/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_576/MatMul?
 dense_576/BiasAdd/ReadVariableOpReadVariableOp)dense_576_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_576/BiasAdd/ReadVariableOp?
dense_576/BiasAddBiasAdddense_576/MatMul:product:0(dense_576/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_576/BiasAddu
IdentityIdentitydense_576/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_576/BiasAdd/ReadVariableOp ^dense_576/MatMul/ReadVariableOp.^lstm_408/lstm_cell_408/BiasAdd/ReadVariableOp-^lstm_408/lstm_cell_408/MatMul/ReadVariableOp/^lstm_408/lstm_cell_408/MatMul_1/ReadVariableOp^lstm_408/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2D
 dense_576/BiasAdd/ReadVariableOp dense_576/BiasAdd/ReadVariableOp2B
dense_576/MatMul/ReadVariableOpdense_576/MatMul/ReadVariableOp2^
-lstm_408/lstm_cell_408/BiasAdd/ReadVariableOp-lstm_408/lstm_cell_408/BiasAdd/ReadVariableOp2\
,lstm_408/lstm_cell_408/MatMul/ReadVariableOp,lstm_408/lstm_cell_408/MatMul/ReadVariableOp2`
.lstm_408/lstm_cell_408/MatMul_1/ReadVariableOp.lstm_408/lstm_cell_408/MatMul_1/ReadVariableOp2 
lstm_408/whilelstm_408/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
0__inference_sequential_145_layer_call_fn_5973219

inputs
unknown:	?
	unknown_0:	-?
	unknown_1:	?
	unknown_2:-
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_145_layer_call_and_return_conditional_losses_59727922
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
F__inference_dense_576_layer_call_and_return_conditional_losses_5973877

inputs0
matmul_readvariableop_resource:--
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:-*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????-: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????-
 
_user_specified_nameinputs
?
?
*__inference_lstm_408_layer_call_fn_5973856

inputs
unknown:	?
	unknown_0:	-?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????-*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_408_layer_call_and_return_conditional_losses_59725382
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?&
?
while_body_5972050
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_408_5972074_0:	?0
while_lstm_cell_408_5972076_0:	-?,
while_lstm_cell_408_5972078_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_408_5972074:	?.
while_lstm_cell_408_5972076:	-?*
while_lstm_cell_408_5972078:	???+while/lstm_cell_408/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
+while/lstm_cell_408/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_408_5972074_0while_lstm_cell_408_5972076_0while_lstm_cell_408_5972078_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????-:?????????-:?????????-*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_408_layer_call_and_return_conditional_losses_59719722-
+while/lstm_cell_408/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_408/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity4while/lstm_cell_408/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????-2
while/Identity_4?
while/Identity_5Identity4while/lstm_cell_408/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????-2
while/Identity_5?

while/NoOpNoOp,^while/lstm_cell_408/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_408_5972074while_lstm_cell_408_5972074_0"<
while_lstm_cell_408_5972076while_lstm_cell_408_5972076_0"<
while_lstm_cell_408_5972078while_lstm_cell_408_5972078_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????-:?????????-: : : : : 2Z
+while/lstm_cell_408/StatefulPartitionedCall+while/lstm_cell_408/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
: 
?
?
*sequential_145_lstm_408_while_cond_5971660L
Hsequential_145_lstm_408_while_sequential_145_lstm_408_while_loop_counterR
Nsequential_145_lstm_408_while_sequential_145_lstm_408_while_maximum_iterations-
)sequential_145_lstm_408_while_placeholder/
+sequential_145_lstm_408_while_placeholder_1/
+sequential_145_lstm_408_while_placeholder_2/
+sequential_145_lstm_408_while_placeholder_3N
Jsequential_145_lstm_408_while_less_sequential_145_lstm_408_strided_slice_1e
asequential_145_lstm_408_while_sequential_145_lstm_408_while_cond_5971660___redundant_placeholder0e
asequential_145_lstm_408_while_sequential_145_lstm_408_while_cond_5971660___redundant_placeholder1e
asequential_145_lstm_408_while_sequential_145_lstm_408_while_cond_5971660___redundant_placeholder2e
asequential_145_lstm_408_while_sequential_145_lstm_408_while_cond_5971660___redundant_placeholder3*
&sequential_145_lstm_408_while_identity
?
"sequential_145/lstm_408/while/LessLess)sequential_145_lstm_408_while_placeholderJsequential_145_lstm_408_while_less_sequential_145_lstm_408_strided_slice_1*
T0*
_output_shapes
: 2$
"sequential_145/lstm_408/while/Less?
&sequential_145/lstm_408/while/IdentityIdentity&sequential_145/lstm_408/while/Less:z:0*
T0
*
_output_shapes
: 2(
&sequential_145/lstm_408/while/Identity"Y
&sequential_145_lstm_408_while_identity/sequential_145/lstm_408/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????-:?????????-: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
:
?\
?
E__inference_lstm_408_layer_call_and_return_conditional_losses_5973823

inputs?
,lstm_cell_408_matmul_readvariableop_resource:	?A
.lstm_cell_408_matmul_1_readvariableop_resource:	-?<
-lstm_cell_408_biasadd_readvariableop_resource:	?
identity??$lstm_cell_408/BiasAdd/ReadVariableOp?#lstm_cell_408/MatMul/ReadVariableOp?%lstm_cell_408/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????-2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????-2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_408/MatMul/ReadVariableOpReadVariableOp,lstm_cell_408_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_408/MatMul/ReadVariableOp?
lstm_cell_408/MatMulMatMulstrided_slice_2:output:0+lstm_cell_408/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/MatMul?
%lstm_cell_408/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_408_matmul_1_readvariableop_resource*
_output_shapes
:	-?*
dtype02'
%lstm_cell_408/MatMul_1/ReadVariableOp?
lstm_cell_408/MatMul_1MatMulzeros:output:0-lstm_cell_408/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/MatMul_1?
lstm_cell_408/addAddV2lstm_cell_408/MatMul:product:0 lstm_cell_408/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/add?
$lstm_cell_408/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_408_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_408/BiasAdd/ReadVariableOp?
lstm_cell_408/BiasAddBiasAddlstm_cell_408/add:z:0,lstm_cell_408/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/BiasAdd?
lstm_cell_408/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_408/split/split_dim?
lstm_cell_408/splitSplit&lstm_cell_408/split/split_dim:output:0lstm_cell_408/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2
lstm_cell_408/split?
lstm_cell_408/SigmoidSigmoidlstm_cell_408/split:output:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Sigmoid?
lstm_cell_408/Sigmoid_1Sigmoidlstm_cell_408/split:output:1*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Sigmoid_1?
lstm_cell_408/mulMullstm_cell_408/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/mul?
lstm_cell_408/ReluRelulstm_cell_408/split:output:2*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Relu?
lstm_cell_408/mul_1Mullstm_cell_408/Sigmoid:y:0 lstm_cell_408/Relu:activations:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/mul_1?
lstm_cell_408/add_1AddV2lstm_cell_408/mul:z:0lstm_cell_408/mul_1:z:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/add_1?
lstm_cell_408/Sigmoid_2Sigmoidlstm_cell_408/split:output:3*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Sigmoid_2
lstm_cell_408/Relu_1Relulstm_cell_408/add_1:z:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Relu_1?
lstm_cell_408/mul_2Mullstm_cell_408/Sigmoid_2:y:0"lstm_cell_408/Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_408_matmul_readvariableop_resource.lstm_cell_408_matmul_1_readvariableop_resource-lstm_cell_408_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????-:?????????-: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5973739*
condR
while_cond_5973738*K
output_shapes:
8: : : : :?????????-:?????????-: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????-*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????-*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????-2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identity?
NoOpNoOp%^lstm_cell_408/BiasAdd/ReadVariableOp$^lstm_cell_408/MatMul/ReadVariableOp&^lstm_cell_408/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_408/BiasAdd/ReadVariableOp$lstm_cell_408/BiasAdd/ReadVariableOp2J
#lstm_cell_408/MatMul/ReadVariableOp#lstm_cell_408/MatMul/ReadVariableOp2N
%lstm_cell_408/MatMul_1/ReadVariableOp%lstm_cell_408/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
while_body_5973437
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_408_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_408_matmul_1_readvariableop_resource_0:	-?D
5while_lstm_cell_408_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_408_matmul_readvariableop_resource:	?G
4while_lstm_cell_408_matmul_1_readvariableop_resource:	-?B
3while_lstm_cell_408_biasadd_readvariableop_resource:	???*while/lstm_cell_408/BiasAdd/ReadVariableOp?)while/lstm_cell_408/MatMul/ReadVariableOp?+while/lstm_cell_408/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_408/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_408_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_408/MatMul/ReadVariableOp?
while/lstm_cell_408/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_408/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/MatMul?
+while/lstm_cell_408/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_408_matmul_1_readvariableop_resource_0*
_output_shapes
:	-?*
dtype02-
+while/lstm_cell_408/MatMul_1/ReadVariableOp?
while/lstm_cell_408/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_408/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/MatMul_1?
while/lstm_cell_408/addAddV2$while/lstm_cell_408/MatMul:product:0&while/lstm_cell_408/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/add?
*while/lstm_cell_408/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_408_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_408/BiasAdd/ReadVariableOp?
while/lstm_cell_408/BiasAddBiasAddwhile/lstm_cell_408/add:z:02while/lstm_cell_408/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/BiasAdd?
#while/lstm_cell_408/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_408/split/split_dim?
while/lstm_cell_408/splitSplit,while/lstm_cell_408/split/split_dim:output:0$while/lstm_cell_408/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2
while/lstm_cell_408/split?
while/lstm_cell_408/SigmoidSigmoid"while/lstm_cell_408/split:output:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Sigmoid?
while/lstm_cell_408/Sigmoid_1Sigmoid"while/lstm_cell_408/split:output:1*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Sigmoid_1?
while/lstm_cell_408/mulMul!while/lstm_cell_408/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/mul?
while/lstm_cell_408/ReluRelu"while/lstm_cell_408/split:output:2*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Relu?
while/lstm_cell_408/mul_1Mulwhile/lstm_cell_408/Sigmoid:y:0&while/lstm_cell_408/Relu:activations:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/mul_1?
while/lstm_cell_408/add_1AddV2while/lstm_cell_408/mul:z:0while/lstm_cell_408/mul_1:z:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/add_1?
while/lstm_cell_408/Sigmoid_2Sigmoid"while/lstm_cell_408/split:output:3*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Sigmoid_2?
while/lstm_cell_408/Relu_1Reluwhile/lstm_cell_408/add_1:z:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Relu_1?
while/lstm_cell_408/mul_2Mul!while/lstm_cell_408/Sigmoid_2:y:0(while/lstm_cell_408/Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_408/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_408/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????-2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_408/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????-2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_408/BiasAdd/ReadVariableOp*^while/lstm_cell_408/MatMul/ReadVariableOp,^while/lstm_cell_408/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_408_biasadd_readvariableop_resource5while_lstm_cell_408_biasadd_readvariableop_resource_0"n
4while_lstm_cell_408_matmul_1_readvariableop_resource6while_lstm_cell_408_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_408_matmul_readvariableop_resource4while_lstm_cell_408_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????-:?????????-: : : : : 2X
*while/lstm_cell_408/BiasAdd/ReadVariableOp*while/lstm_cell_408/BiasAdd/ReadVariableOp2V
)while/lstm_cell_408/MatMul/ReadVariableOp)while/lstm_cell_408/MatMul/ReadVariableOp2Z
+while/lstm_cell_408/MatMul_1/ReadVariableOp+while/lstm_cell_408/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
: 
?v
?
K__inference_sequential_145_layer_call_and_return_conditional_losses_5973032

inputsH
5lstm_408_lstm_cell_408_matmul_readvariableop_resource:	?J
7lstm_408_lstm_cell_408_matmul_1_readvariableop_resource:	-?E
6lstm_408_lstm_cell_408_biasadd_readvariableop_resource:	?:
(dense_576_matmul_readvariableop_resource:-7
)dense_576_biasadd_readvariableop_resource:
identity?? dense_576/BiasAdd/ReadVariableOp?dense_576/MatMul/ReadVariableOp?-lstm_408/lstm_cell_408/BiasAdd/ReadVariableOp?,lstm_408/lstm_cell_408/MatMul/ReadVariableOp?.lstm_408/lstm_cell_408/MatMul_1/ReadVariableOp?lstm_408/whileV
lstm_408/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_408/Shape?
lstm_408/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_408/strided_slice/stack?
lstm_408/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_408/strided_slice/stack_1?
lstm_408/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_408/strided_slice/stack_2?
lstm_408/strided_sliceStridedSlicelstm_408/Shape:output:0%lstm_408/strided_slice/stack:output:0'lstm_408/strided_slice/stack_1:output:0'lstm_408/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_408/strided_slicen
lstm_408/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2
lstm_408/zeros/mul/y?
lstm_408/zeros/mulMullstm_408/strided_slice:output:0lstm_408/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_408/zeros/mulq
lstm_408/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_408/zeros/Less/y?
lstm_408/zeros/LessLesslstm_408/zeros/mul:z:0lstm_408/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_408/zeros/Lesst
lstm_408/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2
lstm_408/zeros/packed/1?
lstm_408/zeros/packedPacklstm_408/strided_slice:output:0 lstm_408/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_408/zeros/packedq
lstm_408/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_408/zeros/Const?
lstm_408/zerosFilllstm_408/zeros/packed:output:0lstm_408/zeros/Const:output:0*
T0*'
_output_shapes
:?????????-2
lstm_408/zerosr
lstm_408/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2
lstm_408/zeros_1/mul/y?
lstm_408/zeros_1/mulMullstm_408/strided_slice:output:0lstm_408/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_408/zeros_1/mulu
lstm_408/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_408/zeros_1/Less/y?
lstm_408/zeros_1/LessLesslstm_408/zeros_1/mul:z:0 lstm_408/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_408/zeros_1/Lessx
lstm_408/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2
lstm_408/zeros_1/packed/1?
lstm_408/zeros_1/packedPacklstm_408/strided_slice:output:0"lstm_408/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_408/zeros_1/packedu
lstm_408/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_408/zeros_1/Const?
lstm_408/zeros_1Fill lstm_408/zeros_1/packed:output:0lstm_408/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????-2
lstm_408/zeros_1?
lstm_408/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_408/transpose/perm?
lstm_408/transpose	Transposeinputs lstm_408/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_408/transposej
lstm_408/Shape_1Shapelstm_408/transpose:y:0*
T0*
_output_shapes
:2
lstm_408/Shape_1?
lstm_408/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_408/strided_slice_1/stack?
 lstm_408/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_408/strided_slice_1/stack_1?
 lstm_408/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_408/strided_slice_1/stack_2?
lstm_408/strided_slice_1StridedSlicelstm_408/Shape_1:output:0'lstm_408/strided_slice_1/stack:output:0)lstm_408/strided_slice_1/stack_1:output:0)lstm_408/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_408/strided_slice_1?
$lstm_408/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$lstm_408/TensorArrayV2/element_shape?
lstm_408/TensorArrayV2TensorListReserve-lstm_408/TensorArrayV2/element_shape:output:0!lstm_408/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_408/TensorArrayV2?
>lstm_408/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>lstm_408/TensorArrayUnstack/TensorListFromTensor/element_shape?
0lstm_408/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_408/transpose:y:0Glstm_408/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_408/TensorArrayUnstack/TensorListFromTensor?
lstm_408/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_408/strided_slice_2/stack?
 lstm_408/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_408/strided_slice_2/stack_1?
 lstm_408/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_408/strided_slice_2/stack_2?
lstm_408/strided_slice_2StridedSlicelstm_408/transpose:y:0'lstm_408/strided_slice_2/stack:output:0)lstm_408/strided_slice_2/stack_1:output:0)lstm_408/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_408/strided_slice_2?
,lstm_408/lstm_cell_408/MatMul/ReadVariableOpReadVariableOp5lstm_408_lstm_cell_408_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,lstm_408/lstm_cell_408/MatMul/ReadVariableOp?
lstm_408/lstm_cell_408/MatMulMatMul!lstm_408/strided_slice_2:output:04lstm_408/lstm_cell_408/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_408/lstm_cell_408/MatMul?
.lstm_408/lstm_cell_408/MatMul_1/ReadVariableOpReadVariableOp7lstm_408_lstm_cell_408_matmul_1_readvariableop_resource*
_output_shapes
:	-?*
dtype020
.lstm_408/lstm_cell_408/MatMul_1/ReadVariableOp?
lstm_408/lstm_cell_408/MatMul_1MatMullstm_408/zeros:output:06lstm_408/lstm_cell_408/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_408/lstm_cell_408/MatMul_1?
lstm_408/lstm_cell_408/addAddV2'lstm_408/lstm_cell_408/MatMul:product:0)lstm_408/lstm_cell_408/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_408/lstm_cell_408/add?
-lstm_408/lstm_cell_408/BiasAdd/ReadVariableOpReadVariableOp6lstm_408_lstm_cell_408_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-lstm_408/lstm_cell_408/BiasAdd/ReadVariableOp?
lstm_408/lstm_cell_408/BiasAddBiasAddlstm_408/lstm_cell_408/add:z:05lstm_408/lstm_cell_408/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
lstm_408/lstm_cell_408/BiasAdd?
&lstm_408/lstm_cell_408/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_408/lstm_cell_408/split/split_dim?
lstm_408/lstm_cell_408/splitSplit/lstm_408/lstm_cell_408/split/split_dim:output:0'lstm_408/lstm_cell_408/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2
lstm_408/lstm_cell_408/split?
lstm_408/lstm_cell_408/SigmoidSigmoid%lstm_408/lstm_cell_408/split:output:0*
T0*'
_output_shapes
:?????????-2 
lstm_408/lstm_cell_408/Sigmoid?
 lstm_408/lstm_cell_408/Sigmoid_1Sigmoid%lstm_408/lstm_cell_408/split:output:1*
T0*'
_output_shapes
:?????????-2"
 lstm_408/lstm_cell_408/Sigmoid_1?
lstm_408/lstm_cell_408/mulMul$lstm_408/lstm_cell_408/Sigmoid_1:y:0lstm_408/zeros_1:output:0*
T0*'
_output_shapes
:?????????-2
lstm_408/lstm_cell_408/mul?
lstm_408/lstm_cell_408/ReluRelu%lstm_408/lstm_cell_408/split:output:2*
T0*'
_output_shapes
:?????????-2
lstm_408/lstm_cell_408/Relu?
lstm_408/lstm_cell_408/mul_1Mul"lstm_408/lstm_cell_408/Sigmoid:y:0)lstm_408/lstm_cell_408/Relu:activations:0*
T0*'
_output_shapes
:?????????-2
lstm_408/lstm_cell_408/mul_1?
lstm_408/lstm_cell_408/add_1AddV2lstm_408/lstm_cell_408/mul:z:0 lstm_408/lstm_cell_408/mul_1:z:0*
T0*'
_output_shapes
:?????????-2
lstm_408/lstm_cell_408/add_1?
 lstm_408/lstm_cell_408/Sigmoid_2Sigmoid%lstm_408/lstm_cell_408/split:output:3*
T0*'
_output_shapes
:?????????-2"
 lstm_408/lstm_cell_408/Sigmoid_2?
lstm_408/lstm_cell_408/Relu_1Relu lstm_408/lstm_cell_408/add_1:z:0*
T0*'
_output_shapes
:?????????-2
lstm_408/lstm_cell_408/Relu_1?
lstm_408/lstm_cell_408/mul_2Mul$lstm_408/lstm_cell_408/Sigmoid_2:y:0+lstm_408/lstm_cell_408/Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2
lstm_408/lstm_cell_408/mul_2?
&lstm_408/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   2(
&lstm_408/TensorArrayV2_1/element_shape?
lstm_408/TensorArrayV2_1TensorListReserve/lstm_408/TensorArrayV2_1/element_shape:output:0!lstm_408/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_408/TensorArrayV2_1`
lstm_408/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_408/time?
!lstm_408/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!lstm_408/while/maximum_iterations|
lstm_408/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_408/while/loop_counter?
lstm_408/whileWhile$lstm_408/while/loop_counter:output:0*lstm_408/while/maximum_iterations:output:0lstm_408/time:output:0!lstm_408/TensorArrayV2_1:handle:0lstm_408/zeros:output:0lstm_408/zeros_1:output:0!lstm_408/strided_slice_1:output:0@lstm_408/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_408_lstm_cell_408_matmul_readvariableop_resource7lstm_408_lstm_cell_408_matmul_1_readvariableop_resource6lstm_408_lstm_cell_408_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????-:?????????-: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_408_while_body_5972942*'
condR
lstm_408_while_cond_5972941*K
output_shapes:
8: : : : :?????????-:?????????-: : : : : *
parallel_iterations 2
lstm_408/while?
9lstm_408/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   2;
9lstm_408/TensorArrayV2Stack/TensorListStack/element_shape?
+lstm_408/TensorArrayV2Stack/TensorListStackTensorListStacklstm_408/while:output:3Blstm_408/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????-*
element_dtype02-
+lstm_408/TensorArrayV2Stack/TensorListStack?
lstm_408/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2 
lstm_408/strided_slice_3/stack?
 lstm_408/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_408/strided_slice_3/stack_1?
 lstm_408/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_408/strided_slice_3/stack_2?
lstm_408/strided_slice_3StridedSlice4lstm_408/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_408/strided_slice_3/stack:output:0)lstm_408/strided_slice_3/stack_1:output:0)lstm_408/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????-*
shrink_axis_mask2
lstm_408/strided_slice_3?
lstm_408/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_408/transpose_1/perm?
lstm_408/transpose_1	Transpose4lstm_408/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_408/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????-2
lstm_408/transpose_1x
lstm_408/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_408/runtime?
dense_576/MatMul/ReadVariableOpReadVariableOp(dense_576_matmul_readvariableop_resource*
_output_shapes

:-*
dtype02!
dense_576/MatMul/ReadVariableOp?
dense_576/MatMulMatMul!lstm_408/strided_slice_3:output:0'dense_576/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_576/MatMul?
 dense_576/BiasAdd/ReadVariableOpReadVariableOp)dense_576_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_576/BiasAdd/ReadVariableOp?
dense_576/BiasAddBiasAdddense_576/MatMul:product:0(dense_576/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_576/BiasAddu
IdentityIdentitydense_576/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_576/BiasAdd/ReadVariableOp ^dense_576/MatMul/ReadVariableOp.^lstm_408/lstm_cell_408/BiasAdd/ReadVariableOp-^lstm_408/lstm_cell_408/MatMul/ReadVariableOp/^lstm_408/lstm_cell_408/MatMul_1/ReadVariableOp^lstm_408/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2D
 dense_576/BiasAdd/ReadVariableOp dense_576/BiasAdd/ReadVariableOp2B
dense_576/MatMul/ReadVariableOpdense_576/MatMul/ReadVariableOp2^
-lstm_408/lstm_cell_408/BiasAdd/ReadVariableOp-lstm_408/lstm_cell_408/BiasAdd/ReadVariableOp2\
,lstm_408/lstm_cell_408/MatMul/ReadVariableOp,lstm_408/lstm_cell_408/MatMul/ReadVariableOp2`
.lstm_408/lstm_cell_408/MatMul_1/ReadVariableOp.lstm_408/lstm_cell_408/MatMul_1/ReadVariableOp2 
lstm_408/whilelstm_408/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?F
?
E__inference_lstm_408_layer_call_and_return_conditional_losses_5972119

inputs(
lstm_cell_408_5972037:	?(
lstm_cell_408_5972039:	-?$
lstm_cell_408_5972041:	?
identity??%lstm_cell_408/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????-2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????-2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
%lstm_cell_408/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_408_5972037lstm_cell_408_5972039lstm_cell_408_5972041*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????-:?????????-:?????????-*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_408_layer_call_and_return_conditional_losses_59719722'
%lstm_cell_408/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_408_5972037lstm_cell_408_5972039lstm_cell_408_5972041*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????-:?????????-: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5972050*
condR
while_cond_5972049*K
output_shapes:
8: : : : :?????????-:?????????-: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????-*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????-*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????-2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identity~
NoOpNoOp&^lstm_cell_408/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_408/StatefulPartitionedCall%lstm_cell_408/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_408_layer_call_fn_5973834
inputs_0
unknown:	?
	unknown_0:	-?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????-*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_408_layer_call_and_return_conditional_losses_59719092
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_408_layer_call_fn_5973867

inputs
unknown:	?
	unknown_0:	-?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????-*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_408_layer_call_and_return_conditional_losses_59727502
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_5971839
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5971839___redundant_placeholder05
1while_while_cond_5971839___redundant_placeholder15
1while_while_cond_5971839___redundant_placeholder25
1while_while_cond_5971839___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????-:?????????-: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
:
?
?
/__inference_lstm_cell_408_layer_call_fn_5973984

inputs
states_0
states_1
unknown:	?
	unknown_0:	-?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????-:?????????-:?????????-*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_408_layer_call_and_return_conditional_losses_59719722
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????-2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????-2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????-:?????????-: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????-
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????-
"
_user_specified_name
states/1
?\
?
E__inference_lstm_408_layer_call_and_return_conditional_losses_5973521
inputs_0?
,lstm_cell_408_matmul_readvariableop_resource:	?A
.lstm_cell_408_matmul_1_readvariableop_resource:	-?<
-lstm_cell_408_biasadd_readvariableop_resource:	?
identity??$lstm_cell_408/BiasAdd/ReadVariableOp?#lstm_cell_408/MatMul/ReadVariableOp?%lstm_cell_408/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????-2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????-2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_408/MatMul/ReadVariableOpReadVariableOp,lstm_cell_408_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_408/MatMul/ReadVariableOp?
lstm_cell_408/MatMulMatMulstrided_slice_2:output:0+lstm_cell_408/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/MatMul?
%lstm_cell_408/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_408_matmul_1_readvariableop_resource*
_output_shapes
:	-?*
dtype02'
%lstm_cell_408/MatMul_1/ReadVariableOp?
lstm_cell_408/MatMul_1MatMulzeros:output:0-lstm_cell_408/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/MatMul_1?
lstm_cell_408/addAddV2lstm_cell_408/MatMul:product:0 lstm_cell_408/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/add?
$lstm_cell_408/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_408_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_408/BiasAdd/ReadVariableOp?
lstm_cell_408/BiasAddBiasAddlstm_cell_408/add:z:0,lstm_cell_408/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/BiasAdd?
lstm_cell_408/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_408/split/split_dim?
lstm_cell_408/splitSplit&lstm_cell_408/split/split_dim:output:0lstm_cell_408/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2
lstm_cell_408/split?
lstm_cell_408/SigmoidSigmoidlstm_cell_408/split:output:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Sigmoid?
lstm_cell_408/Sigmoid_1Sigmoidlstm_cell_408/split:output:1*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Sigmoid_1?
lstm_cell_408/mulMullstm_cell_408/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/mul?
lstm_cell_408/ReluRelulstm_cell_408/split:output:2*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Relu?
lstm_cell_408/mul_1Mullstm_cell_408/Sigmoid:y:0 lstm_cell_408/Relu:activations:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/mul_1?
lstm_cell_408/add_1AddV2lstm_cell_408/mul:z:0lstm_cell_408/mul_1:z:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/add_1?
lstm_cell_408/Sigmoid_2Sigmoidlstm_cell_408/split:output:3*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Sigmoid_2
lstm_cell_408/Relu_1Relulstm_cell_408/add_1:z:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Relu_1?
lstm_cell_408/mul_2Mullstm_cell_408/Sigmoid_2:y:0"lstm_cell_408/Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_408_matmul_readvariableop_resource.lstm_cell_408_matmul_1_readvariableop_resource-lstm_cell_408_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????-:?????????-: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5973437*
condR
while_cond_5973436*K
output_shapes:
8: : : : :?????????-:?????????-: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????-*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????-*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????-2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identity?
NoOpNoOp%^lstm_cell_408/BiasAdd/ReadVariableOp$^lstm_cell_408/MatMul/ReadVariableOp&^lstm_cell_408/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_408/BiasAdd/ReadVariableOp$lstm_cell_408/BiasAdd/ReadVariableOp2J
#lstm_cell_408/MatMul/ReadVariableOp#lstm_cell_408/MatMul/ReadVariableOp2N
%lstm_cell_408/MatMul_1/ReadVariableOp%lstm_cell_408/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?:
?
 __inference__traced_save_5974079
file_prefix/
+savev2_dense_576_kernel_read_readvariableop-
)savev2_dense_576_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_408_lstm_cell_408_kernel_read_readvariableopF
Bsavev2_lstm_408_lstm_cell_408_recurrent_kernel_read_readvariableop:
6savev2_lstm_408_lstm_cell_408_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_dense_576_kernel_m_read_readvariableop4
0savev2_adam_dense_576_bias_m_read_readvariableopC
?savev2_adam_lstm_408_lstm_cell_408_kernel_m_read_readvariableopM
Isavev2_adam_lstm_408_lstm_cell_408_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_408_lstm_cell_408_bias_m_read_readvariableop6
2savev2_adam_dense_576_kernel_v_read_readvariableop4
0savev2_adam_dense_576_bias_v_read_readvariableopC
?savev2_adam_lstm_408_lstm_cell_408_kernel_v_read_readvariableopM
Isavev2_adam_lstm_408_lstm_cell_408_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_408_lstm_cell_408_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_576_kernel_read_readvariableop)savev2_dense_576_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_408_lstm_cell_408_kernel_read_readvariableopBsavev2_lstm_408_lstm_cell_408_recurrent_kernel_read_readvariableop6savev2_lstm_408_lstm_cell_408_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_dense_576_kernel_m_read_readvariableop0savev2_adam_dense_576_bias_m_read_readvariableop?savev2_adam_lstm_408_lstm_cell_408_kernel_m_read_readvariableopIsavev2_adam_lstm_408_lstm_cell_408_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_408_lstm_cell_408_bias_m_read_readvariableop2savev2_adam_dense_576_kernel_v_read_readvariableop0savev2_adam_dense_576_bias_v_read_readvariableop?savev2_adam_lstm_408_lstm_cell_408_kernel_v_read_readvariableopIsavev2_adam_lstm_408_lstm_cell_408_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_408_lstm_cell_408_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :-:: : : : : :	?:	-?:?: : : : :-::	?:	-?:?:-::	?:	-?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:-: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:%	!

_output_shapes
:	-?:!


_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:-: 

_output_shapes
::%!

_output_shapes
:	?:%!

_output_shapes
:	-?:!

_output_shapes	
:?:$ 

_output_shapes

:-: 

_output_shapes
::%!

_output_shapes
:	?:%!

_output_shapes
:	-?:!

_output_shapes	
:?:

_output_shapes
: 
?
?
K__inference_sequential_145_layer_call_and_return_conditional_losses_5972563

inputs#
lstm_408_5972539:	?#
lstm_408_5972541:	-?
lstm_408_5972543:	?#
dense_576_5972557:-
dense_576_5972559:
identity??!dense_576/StatefulPartitionedCall? lstm_408/StatefulPartitionedCall?
 lstm_408/StatefulPartitionedCallStatefulPartitionedCallinputslstm_408_5972539lstm_408_5972541lstm_408_5972543*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????-*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_408_layer_call_and_return_conditional_losses_59725382"
 lstm_408/StatefulPartitionedCall?
!dense_576/StatefulPartitionedCallStatefulPartitionedCall)lstm_408/StatefulPartitionedCall:output:0dense_576_5972557dense_576_5972559*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_576_layer_call_and_return_conditional_losses_59725562#
!dense_576/StatefulPartitionedCall?
IdentityIdentity*dense_576/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_576/StatefulPartitionedCall!^lstm_408/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2F
!dense_576/StatefulPartitionedCall!dense_576/StatefulPartitionedCall2D
 lstm_408/StatefulPartitionedCall lstm_408/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
F__inference_dense_576_layer_call_and_return_conditional_losses_5972556

inputs0
matmul_readvariableop_resource:--
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:-*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????-: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????-
 
_user_specified_nameinputs
?
?
while_cond_5973587
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5973587___redundant_placeholder05
1while_while_cond_5973587___redundant_placeholder15
1while_while_cond_5973587___redundant_placeholder25
1while_while_cond_5973587___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????-:?????????-: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
:
?
?
J__inference_lstm_cell_408_layer_call_and_return_conditional_losses_5971972

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	-?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	-?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????-2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????-2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????-2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????-2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????-2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????-2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????-2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????-2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????-:?????????-: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????-
 
_user_specified_namestates:OK
'
_output_shapes
:?????????-
 
_user_specified_namestates
?
?
K__inference_sequential_145_layer_call_and_return_conditional_losses_5972852
lstm_408_input#
lstm_408_5972839:	?#
lstm_408_5972841:	-?
lstm_408_5972843:	?#
dense_576_5972846:-
dense_576_5972848:
identity??!dense_576/StatefulPartitionedCall? lstm_408/StatefulPartitionedCall?
 lstm_408/StatefulPartitionedCallStatefulPartitionedCalllstm_408_inputlstm_408_5972839lstm_408_5972841lstm_408_5972843*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????-*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_408_layer_call_and_return_conditional_losses_59727502"
 lstm_408/StatefulPartitionedCall?
!dense_576/StatefulPartitionedCallStatefulPartitionedCall)lstm_408/StatefulPartitionedCall:output:0dense_576_5972846dense_576_5972848*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_576_layer_call_and_return_conditional_losses_59725562#
!dense_576/StatefulPartitionedCall?
IdentityIdentity*dense_576/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_576/StatefulPartitionedCall!^lstm_408/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2F
!dense_576/StatefulPartitionedCall!dense_576/StatefulPartitionedCall2D
 lstm_408/StatefulPartitionedCall lstm_408/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_408_input
?
?
while_cond_5973738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5973738___redundant_placeholder05
1while_while_cond_5973738___redundant_placeholder15
1while_while_cond_5973738___redundant_placeholder25
1while_while_cond_5973738___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????-:?????????-: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
:
?

?
lstm_408_while_cond_5972941.
*lstm_408_while_lstm_408_while_loop_counter4
0lstm_408_while_lstm_408_while_maximum_iterations
lstm_408_while_placeholder 
lstm_408_while_placeholder_1 
lstm_408_while_placeholder_2 
lstm_408_while_placeholder_30
,lstm_408_while_less_lstm_408_strided_slice_1G
Clstm_408_while_lstm_408_while_cond_5972941___redundant_placeholder0G
Clstm_408_while_lstm_408_while_cond_5972941___redundant_placeholder1G
Clstm_408_while_lstm_408_while_cond_5972941___redundant_placeholder2G
Clstm_408_while_lstm_408_while_cond_5972941___redundant_placeholder3
lstm_408_while_identity
?
lstm_408/while/LessLesslstm_408_while_placeholder,lstm_408_while_less_lstm_408_strided_slice_1*
T0*
_output_shapes
: 2
lstm_408/while/Lessx
lstm_408/while/IdentityIdentitylstm_408/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_408/while/Identity";
lstm_408_while_identity lstm_408/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????-:?????????-: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
:
??
?
while_body_5973588
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_408_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_408_matmul_1_readvariableop_resource_0:	-?D
5while_lstm_cell_408_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_408_matmul_readvariableop_resource:	?G
4while_lstm_cell_408_matmul_1_readvariableop_resource:	-?B
3while_lstm_cell_408_biasadd_readvariableop_resource:	???*while/lstm_cell_408/BiasAdd/ReadVariableOp?)while/lstm_cell_408/MatMul/ReadVariableOp?+while/lstm_cell_408/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_408/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_408_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_408/MatMul/ReadVariableOp?
while/lstm_cell_408/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_408/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/MatMul?
+while/lstm_cell_408/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_408_matmul_1_readvariableop_resource_0*
_output_shapes
:	-?*
dtype02-
+while/lstm_cell_408/MatMul_1/ReadVariableOp?
while/lstm_cell_408/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_408/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/MatMul_1?
while/lstm_cell_408/addAddV2$while/lstm_cell_408/MatMul:product:0&while/lstm_cell_408/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/add?
*while/lstm_cell_408/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_408_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_408/BiasAdd/ReadVariableOp?
while/lstm_cell_408/BiasAddBiasAddwhile/lstm_cell_408/add:z:02while/lstm_cell_408/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/BiasAdd?
#while/lstm_cell_408/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_408/split/split_dim?
while/lstm_cell_408/splitSplit,while/lstm_cell_408/split/split_dim:output:0$while/lstm_cell_408/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2
while/lstm_cell_408/split?
while/lstm_cell_408/SigmoidSigmoid"while/lstm_cell_408/split:output:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Sigmoid?
while/lstm_cell_408/Sigmoid_1Sigmoid"while/lstm_cell_408/split:output:1*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Sigmoid_1?
while/lstm_cell_408/mulMul!while/lstm_cell_408/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/mul?
while/lstm_cell_408/ReluRelu"while/lstm_cell_408/split:output:2*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Relu?
while/lstm_cell_408/mul_1Mulwhile/lstm_cell_408/Sigmoid:y:0&while/lstm_cell_408/Relu:activations:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/mul_1?
while/lstm_cell_408/add_1AddV2while/lstm_cell_408/mul:z:0while/lstm_cell_408/mul_1:z:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/add_1?
while/lstm_cell_408/Sigmoid_2Sigmoid"while/lstm_cell_408/split:output:3*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Sigmoid_2?
while/lstm_cell_408/Relu_1Reluwhile/lstm_cell_408/add_1:z:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Relu_1?
while/lstm_cell_408/mul_2Mul!while/lstm_cell_408/Sigmoid_2:y:0(while/lstm_cell_408/Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_408/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_408/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????-2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_408/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????-2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_408/BiasAdd/ReadVariableOp*^while/lstm_cell_408/MatMul/ReadVariableOp,^while/lstm_cell_408/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_408_biasadd_readvariableop_resource5while_lstm_cell_408_biasadd_readvariableop_resource_0"n
4while_lstm_cell_408_matmul_1_readvariableop_resource6while_lstm_cell_408_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_408_matmul_readvariableop_resource4while_lstm_cell_408_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????-:?????????-: : : : : 2X
*while/lstm_cell_408/BiasAdd/ReadVariableOp*while/lstm_cell_408/BiasAdd/ReadVariableOp2V
)while/lstm_cell_408/MatMul/ReadVariableOp)while/lstm_cell_408/MatMul/ReadVariableOp2Z
+while/lstm_cell_408/MatMul_1/ReadVariableOp+while/lstm_cell_408/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_lstm_cell_408_layer_call_and_return_conditional_losses_5973918

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	-?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	-?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????-2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????-2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????-2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????-2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????-2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????-2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????-2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????-2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????-:?????????-: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????-
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????-
"
_user_specified_name
states/1
?
?
*__inference_lstm_408_layer_call_fn_5973845
inputs_0
unknown:	?
	unknown_0:	-?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????-*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_408_layer_call_and_return_conditional_losses_59721192
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?L
?

lstm_408_while_body_5972942.
*lstm_408_while_lstm_408_while_loop_counter4
0lstm_408_while_lstm_408_while_maximum_iterations
lstm_408_while_placeholder 
lstm_408_while_placeholder_1 
lstm_408_while_placeholder_2 
lstm_408_while_placeholder_3-
)lstm_408_while_lstm_408_strided_slice_1_0i
elstm_408_while_tensorarrayv2read_tensorlistgetitem_lstm_408_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_408_while_lstm_cell_408_matmul_readvariableop_resource_0:	?R
?lstm_408_while_lstm_cell_408_matmul_1_readvariableop_resource_0:	-?M
>lstm_408_while_lstm_cell_408_biasadd_readvariableop_resource_0:	?
lstm_408_while_identity
lstm_408_while_identity_1
lstm_408_while_identity_2
lstm_408_while_identity_3
lstm_408_while_identity_4
lstm_408_while_identity_5+
'lstm_408_while_lstm_408_strided_slice_1g
clstm_408_while_tensorarrayv2read_tensorlistgetitem_lstm_408_tensorarrayunstack_tensorlistfromtensorN
;lstm_408_while_lstm_cell_408_matmul_readvariableop_resource:	?P
=lstm_408_while_lstm_cell_408_matmul_1_readvariableop_resource:	-?K
<lstm_408_while_lstm_cell_408_biasadd_readvariableop_resource:	???3lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOp?2lstm_408/while/lstm_cell_408/MatMul/ReadVariableOp?4lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOp?
@lstm_408/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2B
@lstm_408/while/TensorArrayV2Read/TensorListGetItem/element_shape?
2lstm_408/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_408_while_tensorarrayv2read_tensorlistgetitem_lstm_408_tensorarrayunstack_tensorlistfromtensor_0lstm_408_while_placeholderIlstm_408/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype024
2lstm_408/while/TensorArrayV2Read/TensorListGetItem?
2lstm_408/while/lstm_cell_408/MatMul/ReadVariableOpReadVariableOp=lstm_408_while_lstm_cell_408_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype024
2lstm_408/while/lstm_cell_408/MatMul/ReadVariableOp?
#lstm_408/while/lstm_cell_408/MatMulMatMul9lstm_408/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_408/while/lstm_cell_408/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_408/while/lstm_cell_408/MatMul?
4lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOpReadVariableOp?lstm_408_while_lstm_cell_408_matmul_1_readvariableop_resource_0*
_output_shapes
:	-?*
dtype026
4lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOp?
%lstm_408/while/lstm_cell_408/MatMul_1MatMullstm_408_while_placeholder_2<lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%lstm_408/while/lstm_cell_408/MatMul_1?
 lstm_408/while/lstm_cell_408/addAddV2-lstm_408/while/lstm_cell_408/MatMul:product:0/lstm_408/while/lstm_cell_408/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2"
 lstm_408/while/lstm_cell_408/add?
3lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOpReadVariableOp>lstm_408_while_lstm_cell_408_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype025
3lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOp?
$lstm_408/while/lstm_cell_408/BiasAddBiasAdd$lstm_408/while/lstm_cell_408/add:z:0;lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$lstm_408/while/lstm_cell_408/BiasAdd?
,lstm_408/while/lstm_cell_408/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_408/while/lstm_cell_408/split/split_dim?
"lstm_408/while/lstm_cell_408/splitSplit5lstm_408/while/lstm_cell_408/split/split_dim:output:0-lstm_408/while/lstm_cell_408/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2$
"lstm_408/while/lstm_cell_408/split?
$lstm_408/while/lstm_cell_408/SigmoidSigmoid+lstm_408/while/lstm_cell_408/split:output:0*
T0*'
_output_shapes
:?????????-2&
$lstm_408/while/lstm_cell_408/Sigmoid?
&lstm_408/while/lstm_cell_408/Sigmoid_1Sigmoid+lstm_408/while/lstm_cell_408/split:output:1*
T0*'
_output_shapes
:?????????-2(
&lstm_408/while/lstm_cell_408/Sigmoid_1?
 lstm_408/while/lstm_cell_408/mulMul*lstm_408/while/lstm_cell_408/Sigmoid_1:y:0lstm_408_while_placeholder_3*
T0*'
_output_shapes
:?????????-2"
 lstm_408/while/lstm_cell_408/mul?
!lstm_408/while/lstm_cell_408/ReluRelu+lstm_408/while/lstm_cell_408/split:output:2*
T0*'
_output_shapes
:?????????-2#
!lstm_408/while/lstm_cell_408/Relu?
"lstm_408/while/lstm_cell_408/mul_1Mul(lstm_408/while/lstm_cell_408/Sigmoid:y:0/lstm_408/while/lstm_cell_408/Relu:activations:0*
T0*'
_output_shapes
:?????????-2$
"lstm_408/while/lstm_cell_408/mul_1?
"lstm_408/while/lstm_cell_408/add_1AddV2$lstm_408/while/lstm_cell_408/mul:z:0&lstm_408/while/lstm_cell_408/mul_1:z:0*
T0*'
_output_shapes
:?????????-2$
"lstm_408/while/lstm_cell_408/add_1?
&lstm_408/while/lstm_cell_408/Sigmoid_2Sigmoid+lstm_408/while/lstm_cell_408/split:output:3*
T0*'
_output_shapes
:?????????-2(
&lstm_408/while/lstm_cell_408/Sigmoid_2?
#lstm_408/while/lstm_cell_408/Relu_1Relu&lstm_408/while/lstm_cell_408/add_1:z:0*
T0*'
_output_shapes
:?????????-2%
#lstm_408/while/lstm_cell_408/Relu_1?
"lstm_408/while/lstm_cell_408/mul_2Mul*lstm_408/while/lstm_cell_408/Sigmoid_2:y:01lstm_408/while/lstm_cell_408/Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2$
"lstm_408/while/lstm_cell_408/mul_2?
3lstm_408/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_408_while_placeholder_1lstm_408_while_placeholder&lstm_408/while/lstm_cell_408/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_408/while/TensorArrayV2Write/TensorListSetItemn
lstm_408/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_408/while/add/y?
lstm_408/while/addAddV2lstm_408_while_placeholderlstm_408/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_408/while/addr
lstm_408/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_408/while/add_1/y?
lstm_408/while/add_1AddV2*lstm_408_while_lstm_408_while_loop_counterlstm_408/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_408/while/add_1?
lstm_408/while/IdentityIdentitylstm_408/while/add_1:z:0^lstm_408/while/NoOp*
T0*
_output_shapes
: 2
lstm_408/while/Identity?
lstm_408/while/Identity_1Identity0lstm_408_while_lstm_408_while_maximum_iterations^lstm_408/while/NoOp*
T0*
_output_shapes
: 2
lstm_408/while/Identity_1?
lstm_408/while/Identity_2Identitylstm_408/while/add:z:0^lstm_408/while/NoOp*
T0*
_output_shapes
: 2
lstm_408/while/Identity_2?
lstm_408/while/Identity_3IdentityClstm_408/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_408/while/NoOp*
T0*
_output_shapes
: 2
lstm_408/while/Identity_3?
lstm_408/while/Identity_4Identity&lstm_408/while/lstm_cell_408/mul_2:z:0^lstm_408/while/NoOp*
T0*'
_output_shapes
:?????????-2
lstm_408/while/Identity_4?
lstm_408/while/Identity_5Identity&lstm_408/while/lstm_cell_408/add_1:z:0^lstm_408/while/NoOp*
T0*'
_output_shapes
:?????????-2
lstm_408/while/Identity_5?
lstm_408/while/NoOpNoOp4^lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOp3^lstm_408/while/lstm_cell_408/MatMul/ReadVariableOp5^lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_408/while/NoOp";
lstm_408_while_identity lstm_408/while/Identity:output:0"?
lstm_408_while_identity_1"lstm_408/while/Identity_1:output:0"?
lstm_408_while_identity_2"lstm_408/while/Identity_2:output:0"?
lstm_408_while_identity_3"lstm_408/while/Identity_3:output:0"?
lstm_408_while_identity_4"lstm_408/while/Identity_4:output:0"?
lstm_408_while_identity_5"lstm_408/while/Identity_5:output:0"T
'lstm_408_while_lstm_408_strided_slice_1)lstm_408_while_lstm_408_strided_slice_1_0"~
<lstm_408_while_lstm_cell_408_biasadd_readvariableop_resource>lstm_408_while_lstm_cell_408_biasadd_readvariableop_resource_0"?
=lstm_408_while_lstm_cell_408_matmul_1_readvariableop_resource?lstm_408_while_lstm_cell_408_matmul_1_readvariableop_resource_0"|
;lstm_408_while_lstm_cell_408_matmul_readvariableop_resource=lstm_408_while_lstm_cell_408_matmul_readvariableop_resource_0"?
clstm_408_while_tensorarrayv2read_tensorlistgetitem_lstm_408_tensorarrayunstack_tensorlistfromtensorelstm_408_while_tensorarrayv2read_tensorlistgetitem_lstm_408_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????-:?????????-: : : : : 2j
3lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOp3lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOp2h
2lstm_408/while/lstm_cell_408/MatMul/ReadVariableOp2lstm_408/while/lstm_cell_408/MatMul/ReadVariableOp2l
4lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOp4lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
: 
??
?
while_body_5973739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_408_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_408_matmul_1_readvariableop_resource_0:	-?D
5while_lstm_cell_408_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_408_matmul_readvariableop_resource:	?G
4while_lstm_cell_408_matmul_1_readvariableop_resource:	-?B
3while_lstm_cell_408_biasadd_readvariableop_resource:	???*while/lstm_cell_408/BiasAdd/ReadVariableOp?)while/lstm_cell_408/MatMul/ReadVariableOp?+while/lstm_cell_408/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_408/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_408_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_408/MatMul/ReadVariableOp?
while/lstm_cell_408/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_408/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/MatMul?
+while/lstm_cell_408/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_408_matmul_1_readvariableop_resource_0*
_output_shapes
:	-?*
dtype02-
+while/lstm_cell_408/MatMul_1/ReadVariableOp?
while/lstm_cell_408/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_408/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/MatMul_1?
while/lstm_cell_408/addAddV2$while/lstm_cell_408/MatMul:product:0&while/lstm_cell_408/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/add?
*while/lstm_cell_408/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_408_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_408/BiasAdd/ReadVariableOp?
while/lstm_cell_408/BiasAddBiasAddwhile/lstm_cell_408/add:z:02while/lstm_cell_408/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_408/BiasAdd?
#while/lstm_cell_408/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_408/split/split_dim?
while/lstm_cell_408/splitSplit,while/lstm_cell_408/split/split_dim:output:0$while/lstm_cell_408/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2
while/lstm_cell_408/split?
while/lstm_cell_408/SigmoidSigmoid"while/lstm_cell_408/split:output:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Sigmoid?
while/lstm_cell_408/Sigmoid_1Sigmoid"while/lstm_cell_408/split:output:1*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Sigmoid_1?
while/lstm_cell_408/mulMul!while/lstm_cell_408/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/mul?
while/lstm_cell_408/ReluRelu"while/lstm_cell_408/split:output:2*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Relu?
while/lstm_cell_408/mul_1Mulwhile/lstm_cell_408/Sigmoid:y:0&while/lstm_cell_408/Relu:activations:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/mul_1?
while/lstm_cell_408/add_1AddV2while/lstm_cell_408/mul:z:0while/lstm_cell_408/mul_1:z:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/add_1?
while/lstm_cell_408/Sigmoid_2Sigmoid"while/lstm_cell_408/split:output:3*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Sigmoid_2?
while/lstm_cell_408/Relu_1Reluwhile/lstm_cell_408/add_1:z:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/Relu_1?
while/lstm_cell_408/mul_2Mul!while/lstm_cell_408/Sigmoid_2:y:0(while/lstm_cell_408/Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2
while/lstm_cell_408/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_408/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_408/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????-2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_408/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????-2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_408/BiasAdd/ReadVariableOp*^while/lstm_cell_408/MatMul/ReadVariableOp,^while/lstm_cell_408/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_408_biasadd_readvariableop_resource5while_lstm_cell_408_biasadd_readvariableop_resource_0"n
4while_lstm_cell_408_matmul_1_readvariableop_resource6while_lstm_cell_408_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_408_matmul_readvariableop_resource4while_lstm_cell_408_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????-:?????????-: : : : : 2X
*while/lstm_cell_408/BiasAdd/ReadVariableOp*while/lstm_cell_408/BiasAdd/ReadVariableOp2V
)while/lstm_cell_408/MatMul/ReadVariableOp)while/lstm_cell_408/MatMul/ReadVariableOp2Z
+while/lstm_cell_408/MatMul_1/ReadVariableOp+while/lstm_cell_408/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
: 
??
?
"__inference__wrapped_model_5971751
lstm_408_inputW
Dsequential_145_lstm_408_lstm_cell_408_matmul_readvariableop_resource:	?Y
Fsequential_145_lstm_408_lstm_cell_408_matmul_1_readvariableop_resource:	-?T
Esequential_145_lstm_408_lstm_cell_408_biasadd_readvariableop_resource:	?I
7sequential_145_dense_576_matmul_readvariableop_resource:-F
8sequential_145_dense_576_biasadd_readvariableop_resource:
identity??/sequential_145/dense_576/BiasAdd/ReadVariableOp?.sequential_145/dense_576/MatMul/ReadVariableOp?<sequential_145/lstm_408/lstm_cell_408/BiasAdd/ReadVariableOp?;sequential_145/lstm_408/lstm_cell_408/MatMul/ReadVariableOp?=sequential_145/lstm_408/lstm_cell_408/MatMul_1/ReadVariableOp?sequential_145/lstm_408/while|
sequential_145/lstm_408/ShapeShapelstm_408_input*
T0*
_output_shapes
:2
sequential_145/lstm_408/Shape?
+sequential_145/lstm_408/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_145/lstm_408/strided_slice/stack?
-sequential_145/lstm_408/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_145/lstm_408/strided_slice/stack_1?
-sequential_145/lstm_408/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_145/lstm_408/strided_slice/stack_2?
%sequential_145/lstm_408/strided_sliceStridedSlice&sequential_145/lstm_408/Shape:output:04sequential_145/lstm_408/strided_slice/stack:output:06sequential_145/lstm_408/strided_slice/stack_1:output:06sequential_145/lstm_408/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_145/lstm_408/strided_slice?
#sequential_145/lstm_408/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2%
#sequential_145/lstm_408/zeros/mul/y?
!sequential_145/lstm_408/zeros/mulMul.sequential_145/lstm_408/strided_slice:output:0,sequential_145/lstm_408/zeros/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_145/lstm_408/zeros/mul?
$sequential_145/lstm_408/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_145/lstm_408/zeros/Less/y?
"sequential_145/lstm_408/zeros/LessLess%sequential_145/lstm_408/zeros/mul:z:0-sequential_145/lstm_408/zeros/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_145/lstm_408/zeros/Less?
&sequential_145/lstm_408/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2(
&sequential_145/lstm_408/zeros/packed/1?
$sequential_145/lstm_408/zeros/packedPack.sequential_145/lstm_408/strided_slice:output:0/sequential_145/lstm_408/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_145/lstm_408/zeros/packed?
#sequential_145/lstm_408/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_145/lstm_408/zeros/Const?
sequential_145/lstm_408/zerosFill-sequential_145/lstm_408/zeros/packed:output:0,sequential_145/lstm_408/zeros/Const:output:0*
T0*'
_output_shapes
:?????????-2
sequential_145/lstm_408/zeros?
%sequential_145/lstm_408/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2'
%sequential_145/lstm_408/zeros_1/mul/y?
#sequential_145/lstm_408/zeros_1/mulMul.sequential_145/lstm_408/strided_slice:output:0.sequential_145/lstm_408/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2%
#sequential_145/lstm_408/zeros_1/mul?
&sequential_145/lstm_408/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_145/lstm_408/zeros_1/Less/y?
$sequential_145/lstm_408/zeros_1/LessLess'sequential_145/lstm_408/zeros_1/mul:z:0/sequential_145/lstm_408/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2&
$sequential_145/lstm_408/zeros_1/Less?
(sequential_145/lstm_408/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2*
(sequential_145/lstm_408/zeros_1/packed/1?
&sequential_145/lstm_408/zeros_1/packedPack.sequential_145/lstm_408/strided_slice:output:01sequential_145/lstm_408/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_145/lstm_408/zeros_1/packed?
%sequential_145/lstm_408/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%sequential_145/lstm_408/zeros_1/Const?
sequential_145/lstm_408/zeros_1Fill/sequential_145/lstm_408/zeros_1/packed:output:0.sequential_145/lstm_408/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????-2!
sequential_145/lstm_408/zeros_1?
&sequential_145/lstm_408/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_145/lstm_408/transpose/perm?
!sequential_145/lstm_408/transpose	Transposelstm_408_input/sequential_145/lstm_408/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2#
!sequential_145/lstm_408/transpose?
sequential_145/lstm_408/Shape_1Shape%sequential_145/lstm_408/transpose:y:0*
T0*
_output_shapes
:2!
sequential_145/lstm_408/Shape_1?
-sequential_145/lstm_408/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_145/lstm_408/strided_slice_1/stack?
/sequential_145/lstm_408/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_145/lstm_408/strided_slice_1/stack_1?
/sequential_145/lstm_408/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_145/lstm_408/strided_slice_1/stack_2?
'sequential_145/lstm_408/strided_slice_1StridedSlice(sequential_145/lstm_408/Shape_1:output:06sequential_145/lstm_408/strided_slice_1/stack:output:08sequential_145/lstm_408/strided_slice_1/stack_1:output:08sequential_145/lstm_408/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'sequential_145/lstm_408/strided_slice_1?
3sequential_145/lstm_408/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????25
3sequential_145/lstm_408/TensorArrayV2/element_shape?
%sequential_145/lstm_408/TensorArrayV2TensorListReserve<sequential_145/lstm_408/TensorArrayV2/element_shape:output:00sequential_145/lstm_408/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_145/lstm_408/TensorArrayV2?
Msequential_145/lstm_408/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2O
Msequential_145/lstm_408/TensorArrayUnstack/TensorListFromTensor/element_shape?
?sequential_145/lstm_408/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_145/lstm_408/transpose:y:0Vsequential_145/lstm_408/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02A
?sequential_145/lstm_408/TensorArrayUnstack/TensorListFromTensor?
-sequential_145/lstm_408/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_145/lstm_408/strided_slice_2/stack?
/sequential_145/lstm_408/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_145/lstm_408/strided_slice_2/stack_1?
/sequential_145/lstm_408/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_145/lstm_408/strided_slice_2/stack_2?
'sequential_145/lstm_408/strided_slice_2StridedSlice%sequential_145/lstm_408/transpose:y:06sequential_145/lstm_408/strided_slice_2/stack:output:08sequential_145/lstm_408/strided_slice_2/stack_1:output:08sequential_145/lstm_408/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2)
'sequential_145/lstm_408/strided_slice_2?
;sequential_145/lstm_408/lstm_cell_408/MatMul/ReadVariableOpReadVariableOpDsequential_145_lstm_408_lstm_cell_408_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;sequential_145/lstm_408/lstm_cell_408/MatMul/ReadVariableOp?
,sequential_145/lstm_408/lstm_cell_408/MatMulMatMul0sequential_145/lstm_408/strided_slice_2:output:0Csequential_145/lstm_408/lstm_cell_408/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2.
,sequential_145/lstm_408/lstm_cell_408/MatMul?
=sequential_145/lstm_408/lstm_cell_408/MatMul_1/ReadVariableOpReadVariableOpFsequential_145_lstm_408_lstm_cell_408_matmul_1_readvariableop_resource*
_output_shapes
:	-?*
dtype02?
=sequential_145/lstm_408/lstm_cell_408/MatMul_1/ReadVariableOp?
.sequential_145/lstm_408/lstm_cell_408/MatMul_1MatMul&sequential_145/lstm_408/zeros:output:0Esequential_145/lstm_408/lstm_cell_408/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.sequential_145/lstm_408/lstm_cell_408/MatMul_1?
)sequential_145/lstm_408/lstm_cell_408/addAddV26sequential_145/lstm_408/lstm_cell_408/MatMul:product:08sequential_145/lstm_408/lstm_cell_408/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2+
)sequential_145/lstm_408/lstm_cell_408/add?
<sequential_145/lstm_408/lstm_cell_408/BiasAdd/ReadVariableOpReadVariableOpEsequential_145_lstm_408_lstm_cell_408_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02>
<sequential_145/lstm_408/lstm_cell_408/BiasAdd/ReadVariableOp?
-sequential_145/lstm_408/lstm_cell_408/BiasAddBiasAdd-sequential_145/lstm_408/lstm_cell_408/add:z:0Dsequential_145/lstm_408/lstm_cell_408/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2/
-sequential_145/lstm_408/lstm_cell_408/BiasAdd?
5sequential_145/lstm_408/lstm_cell_408/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_145/lstm_408/lstm_cell_408/split/split_dim?
+sequential_145/lstm_408/lstm_cell_408/splitSplit>sequential_145/lstm_408/lstm_cell_408/split/split_dim:output:06sequential_145/lstm_408/lstm_cell_408/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2-
+sequential_145/lstm_408/lstm_cell_408/split?
-sequential_145/lstm_408/lstm_cell_408/SigmoidSigmoid4sequential_145/lstm_408/lstm_cell_408/split:output:0*
T0*'
_output_shapes
:?????????-2/
-sequential_145/lstm_408/lstm_cell_408/Sigmoid?
/sequential_145/lstm_408/lstm_cell_408/Sigmoid_1Sigmoid4sequential_145/lstm_408/lstm_cell_408/split:output:1*
T0*'
_output_shapes
:?????????-21
/sequential_145/lstm_408/lstm_cell_408/Sigmoid_1?
)sequential_145/lstm_408/lstm_cell_408/mulMul3sequential_145/lstm_408/lstm_cell_408/Sigmoid_1:y:0(sequential_145/lstm_408/zeros_1:output:0*
T0*'
_output_shapes
:?????????-2+
)sequential_145/lstm_408/lstm_cell_408/mul?
*sequential_145/lstm_408/lstm_cell_408/ReluRelu4sequential_145/lstm_408/lstm_cell_408/split:output:2*
T0*'
_output_shapes
:?????????-2,
*sequential_145/lstm_408/lstm_cell_408/Relu?
+sequential_145/lstm_408/lstm_cell_408/mul_1Mul1sequential_145/lstm_408/lstm_cell_408/Sigmoid:y:08sequential_145/lstm_408/lstm_cell_408/Relu:activations:0*
T0*'
_output_shapes
:?????????-2-
+sequential_145/lstm_408/lstm_cell_408/mul_1?
+sequential_145/lstm_408/lstm_cell_408/add_1AddV2-sequential_145/lstm_408/lstm_cell_408/mul:z:0/sequential_145/lstm_408/lstm_cell_408/mul_1:z:0*
T0*'
_output_shapes
:?????????-2-
+sequential_145/lstm_408/lstm_cell_408/add_1?
/sequential_145/lstm_408/lstm_cell_408/Sigmoid_2Sigmoid4sequential_145/lstm_408/lstm_cell_408/split:output:3*
T0*'
_output_shapes
:?????????-21
/sequential_145/lstm_408/lstm_cell_408/Sigmoid_2?
,sequential_145/lstm_408/lstm_cell_408/Relu_1Relu/sequential_145/lstm_408/lstm_cell_408/add_1:z:0*
T0*'
_output_shapes
:?????????-2.
,sequential_145/lstm_408/lstm_cell_408/Relu_1?
+sequential_145/lstm_408/lstm_cell_408/mul_2Mul3sequential_145/lstm_408/lstm_cell_408/Sigmoid_2:y:0:sequential_145/lstm_408/lstm_cell_408/Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2-
+sequential_145/lstm_408/lstm_cell_408/mul_2?
5sequential_145/lstm_408/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   27
5sequential_145/lstm_408/TensorArrayV2_1/element_shape?
'sequential_145/lstm_408/TensorArrayV2_1TensorListReserve>sequential_145/lstm_408/TensorArrayV2_1/element_shape:output:00sequential_145/lstm_408/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'sequential_145/lstm_408/TensorArrayV2_1~
sequential_145/lstm_408/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_145/lstm_408/time?
0sequential_145/lstm_408/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0sequential_145/lstm_408/while/maximum_iterations?
*sequential_145/lstm_408/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_145/lstm_408/while/loop_counter?
sequential_145/lstm_408/whileWhile3sequential_145/lstm_408/while/loop_counter:output:09sequential_145/lstm_408/while/maximum_iterations:output:0%sequential_145/lstm_408/time:output:00sequential_145/lstm_408/TensorArrayV2_1:handle:0&sequential_145/lstm_408/zeros:output:0(sequential_145/lstm_408/zeros_1:output:00sequential_145/lstm_408/strided_slice_1:output:0Osequential_145/lstm_408/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_145_lstm_408_lstm_cell_408_matmul_readvariableop_resourceFsequential_145_lstm_408_lstm_cell_408_matmul_1_readvariableop_resourceEsequential_145_lstm_408_lstm_cell_408_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????-:?????????-: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_145_lstm_408_while_body_5971661*6
cond.R,
*sequential_145_lstm_408_while_cond_5971660*K
output_shapes:
8: : : : :?????????-:?????????-: : : : : *
parallel_iterations 2
sequential_145/lstm_408/while?
Hsequential_145/lstm_408/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   2J
Hsequential_145/lstm_408/TensorArrayV2Stack/TensorListStack/element_shape?
:sequential_145/lstm_408/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_145/lstm_408/while:output:3Qsequential_145/lstm_408/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????-*
element_dtype02<
:sequential_145/lstm_408/TensorArrayV2Stack/TensorListStack?
-sequential_145/lstm_408/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2/
-sequential_145/lstm_408/strided_slice_3/stack?
/sequential_145/lstm_408/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_145/lstm_408/strided_slice_3/stack_1?
/sequential_145/lstm_408/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_145/lstm_408/strided_slice_3/stack_2?
'sequential_145/lstm_408/strided_slice_3StridedSliceCsequential_145/lstm_408/TensorArrayV2Stack/TensorListStack:tensor:06sequential_145/lstm_408/strided_slice_3/stack:output:08sequential_145/lstm_408/strided_slice_3/stack_1:output:08sequential_145/lstm_408/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????-*
shrink_axis_mask2)
'sequential_145/lstm_408/strided_slice_3?
(sequential_145/lstm_408/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2*
(sequential_145/lstm_408/transpose_1/perm?
#sequential_145/lstm_408/transpose_1	TransposeCsequential_145/lstm_408/TensorArrayV2Stack/TensorListStack:tensor:01sequential_145/lstm_408/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????-2%
#sequential_145/lstm_408/transpose_1?
sequential_145/lstm_408/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_145/lstm_408/runtime?
.sequential_145/dense_576/MatMul/ReadVariableOpReadVariableOp7sequential_145_dense_576_matmul_readvariableop_resource*
_output_shapes

:-*
dtype020
.sequential_145/dense_576/MatMul/ReadVariableOp?
sequential_145/dense_576/MatMulMatMul0sequential_145/lstm_408/strided_slice_3:output:06sequential_145/dense_576/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_145/dense_576/MatMul?
/sequential_145/dense_576/BiasAdd/ReadVariableOpReadVariableOp8sequential_145_dense_576_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_145/dense_576/BiasAdd/ReadVariableOp?
 sequential_145/dense_576/BiasAddBiasAdd)sequential_145/dense_576/MatMul:product:07sequential_145/dense_576/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 sequential_145/dense_576/BiasAdd?
IdentityIdentity)sequential_145/dense_576/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp0^sequential_145/dense_576/BiasAdd/ReadVariableOp/^sequential_145/dense_576/MatMul/ReadVariableOp=^sequential_145/lstm_408/lstm_cell_408/BiasAdd/ReadVariableOp<^sequential_145/lstm_408/lstm_cell_408/MatMul/ReadVariableOp>^sequential_145/lstm_408/lstm_cell_408/MatMul_1/ReadVariableOp^sequential_145/lstm_408/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2b
/sequential_145/dense_576/BiasAdd/ReadVariableOp/sequential_145/dense_576/BiasAdd/ReadVariableOp2`
.sequential_145/dense_576/MatMul/ReadVariableOp.sequential_145/dense_576/MatMul/ReadVariableOp2|
<sequential_145/lstm_408/lstm_cell_408/BiasAdd/ReadVariableOp<sequential_145/lstm_408/lstm_cell_408/BiasAdd/ReadVariableOp2z
;sequential_145/lstm_408/lstm_cell_408/MatMul/ReadVariableOp;sequential_145/lstm_408/lstm_cell_408/MatMul/ReadVariableOp2~
=sequential_145/lstm_408/lstm_cell_408/MatMul_1/ReadVariableOp=sequential_145/lstm_408/lstm_cell_408/MatMul_1/ReadVariableOp2>
sequential_145/lstm_408/whilesequential_145/lstm_408/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_408_input
?
?
while_cond_5973436
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5973436___redundant_placeholder05
1while_while_cond_5973436___redundant_placeholder15
1while_while_cond_5973436___redundant_placeholder25
1while_while_cond_5973436___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????-:?????????-: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
:
?&
?
while_body_5971840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_408_5971864_0:	?0
while_lstm_cell_408_5971866_0:	-?,
while_lstm_cell_408_5971868_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_408_5971864:	?.
while_lstm_cell_408_5971866:	-?*
while_lstm_cell_408_5971868:	???+while/lstm_cell_408/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
+while/lstm_cell_408/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_408_5971864_0while_lstm_cell_408_5971866_0while_lstm_cell_408_5971868_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????-:?????????-:?????????-*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_408_layer_call_and_return_conditional_losses_59718262-
+while/lstm_cell_408/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_408/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity4while/lstm_cell_408/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????-2
while/Identity_4?
while/Identity_5Identity4while/lstm_cell_408/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????-2
while/Identity_5?

while/NoOpNoOp,^while/lstm_cell_408/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_408_5971864while_lstm_cell_408_5971864_0"<
while_lstm_cell_408_5971866while_lstm_cell_408_5971866_0"<
while_lstm_cell_408_5971868while_lstm_cell_408_5971868_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????-:?????????-: : : : : 2Z
+while/lstm_cell_408/StatefulPartitionedCall+while/lstm_cell_408/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
: 
?F
?
E__inference_lstm_408_layer_call_and_return_conditional_losses_5971909

inputs(
lstm_cell_408_5971827:	?(
lstm_cell_408_5971829:	-?$
lstm_cell_408_5971831:	?
identity??%lstm_cell_408/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????-2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????-2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
%lstm_cell_408/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_408_5971827lstm_cell_408_5971829lstm_cell_408_5971831*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????-:?????????-:?????????-*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_408_layer_call_and_return_conditional_losses_59718262'
%lstm_cell_408/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_408_5971827lstm_cell_408_5971829lstm_cell_408_5971831*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????-:?????????-: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5971840*
condR
while_cond_5971839*K
output_shapes:
8: : : : :?????????-:?????????-: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????-*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????-*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????-2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identity~
NoOpNoOp&^lstm_cell_408/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_408/StatefulPartitionedCall%lstm_cell_408/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?\
?
E__inference_lstm_408_layer_call_and_return_conditional_losses_5973672

inputs?
,lstm_cell_408_matmul_readvariableop_resource:	?A
.lstm_cell_408_matmul_1_readvariableop_resource:	-?<
-lstm_cell_408_biasadd_readvariableop_resource:	?
identity??$lstm_cell_408/BiasAdd/ReadVariableOp?#lstm_cell_408/MatMul/ReadVariableOp?%lstm_cell_408/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????-2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????-2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_408/MatMul/ReadVariableOpReadVariableOp,lstm_cell_408_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_408/MatMul/ReadVariableOp?
lstm_cell_408/MatMulMatMulstrided_slice_2:output:0+lstm_cell_408/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/MatMul?
%lstm_cell_408/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_408_matmul_1_readvariableop_resource*
_output_shapes
:	-?*
dtype02'
%lstm_cell_408/MatMul_1/ReadVariableOp?
lstm_cell_408/MatMul_1MatMulzeros:output:0-lstm_cell_408/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/MatMul_1?
lstm_cell_408/addAddV2lstm_cell_408/MatMul:product:0 lstm_cell_408/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/add?
$lstm_cell_408/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_408_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_408/BiasAdd/ReadVariableOp?
lstm_cell_408/BiasAddBiasAddlstm_cell_408/add:z:0,lstm_cell_408/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/BiasAdd?
lstm_cell_408/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_408/split/split_dim?
lstm_cell_408/splitSplit&lstm_cell_408/split/split_dim:output:0lstm_cell_408/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2
lstm_cell_408/split?
lstm_cell_408/SigmoidSigmoidlstm_cell_408/split:output:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Sigmoid?
lstm_cell_408/Sigmoid_1Sigmoidlstm_cell_408/split:output:1*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Sigmoid_1?
lstm_cell_408/mulMullstm_cell_408/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/mul?
lstm_cell_408/ReluRelulstm_cell_408/split:output:2*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Relu?
lstm_cell_408/mul_1Mullstm_cell_408/Sigmoid:y:0 lstm_cell_408/Relu:activations:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/mul_1?
lstm_cell_408/add_1AddV2lstm_cell_408/mul:z:0lstm_cell_408/mul_1:z:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/add_1?
lstm_cell_408/Sigmoid_2Sigmoidlstm_cell_408/split:output:3*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Sigmoid_2
lstm_cell_408/Relu_1Relulstm_cell_408/add_1:z:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Relu_1?
lstm_cell_408/mul_2Mullstm_cell_408/Sigmoid_2:y:0"lstm_cell_408/Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_408_matmul_readvariableop_resource.lstm_cell_408_matmul_1_readvariableop_resource-lstm_cell_408_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????-:?????????-: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5973588*
condR
while_cond_5973587*K
output_shapes:
8: : : : :?????????-:?????????-: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????-*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????-*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????-2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identity?
NoOpNoOp%^lstm_cell_408/BiasAdd/ReadVariableOp$^lstm_cell_408/MatMul/ReadVariableOp&^lstm_cell_408/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_408/BiasAdd/ReadVariableOp$lstm_cell_408/BiasAdd/ReadVariableOp2J
#lstm_cell_408/MatMul/ReadVariableOp#lstm_cell_408/MatMul/ReadVariableOp2N
%lstm_cell_408/MatMul_1/ReadVariableOp%lstm_cell_408/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_5973285
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5973285___redundant_placeholder05
1while_while_cond_5973285___redundant_placeholder15
1while_while_cond_5973285___redundant_placeholder25
1while_while_cond_5973285___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????-:?????????-: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
:
?	
?
0__inference_sequential_145_layer_call_fn_5972576
lstm_408_input
unknown:	?
	unknown_0:	-?
	unknown_1:	?
	unknown_2:-
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_408_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_145_layer_call_and_return_conditional_losses_59725632
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_408_input
?j
?
#__inference__traced_restore_5974161
file_prefix3
!assignvariableop_dense_576_kernel:-/
!assignvariableop_1_dense_576_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_408_lstm_cell_408_kernel:	?M
:assignvariableop_8_lstm_408_lstm_cell_408_recurrent_kernel:	-?=
.assignvariableop_9_lstm_408_lstm_cell_408_bias:	?#
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: =
+assignvariableop_14_adam_dense_576_kernel_m:-7
)assignvariableop_15_adam_dense_576_bias_m:K
8assignvariableop_16_adam_lstm_408_lstm_cell_408_kernel_m:	?U
Bassignvariableop_17_adam_lstm_408_lstm_cell_408_recurrent_kernel_m:	-?E
6assignvariableop_18_adam_lstm_408_lstm_cell_408_bias_m:	?=
+assignvariableop_19_adam_dense_576_kernel_v:-7
)assignvariableop_20_adam_dense_576_bias_v:K
8assignvariableop_21_adam_lstm_408_lstm_cell_408_kernel_v:	?U
Bassignvariableop_22_adam_lstm_408_lstm_cell_408_recurrent_kernel_v:	-?E
6assignvariableop_23_adam_lstm_408_lstm_cell_408_bias_v:	?
identity_25??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_dense_576_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_576_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_408_lstm_cell_408_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_408_lstm_cell_408_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_408_lstm_cell_408_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_dense_576_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_576_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp8assignvariableop_16_adam_lstm_408_lstm_cell_408_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpBassignvariableop_17_adam_lstm_408_lstm_cell_408_recurrent_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_408_lstm_cell_408_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_dense_576_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_dense_576_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp8assignvariableop_21_adam_lstm_408_lstm_cell_408_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpBassignvariableop_22_adam_lstm_408_lstm_cell_408_recurrent_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_408_lstm_cell_408_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_239
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_24f
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_25?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?

?
lstm_408_while_cond_5973098.
*lstm_408_while_lstm_408_while_loop_counter4
0lstm_408_while_lstm_408_while_maximum_iterations
lstm_408_while_placeholder 
lstm_408_while_placeholder_1 
lstm_408_while_placeholder_2 
lstm_408_while_placeholder_30
,lstm_408_while_less_lstm_408_strided_slice_1G
Clstm_408_while_lstm_408_while_cond_5973098___redundant_placeholder0G
Clstm_408_while_lstm_408_while_cond_5973098___redundant_placeholder1G
Clstm_408_while_lstm_408_while_cond_5973098___redundant_placeholder2G
Clstm_408_while_lstm_408_while_cond_5973098___redundant_placeholder3
lstm_408_while_identity
?
lstm_408/while/LessLesslstm_408_while_placeholder,lstm_408_while_less_lstm_408_strided_slice_1*
T0*
_output_shapes
: 2
lstm_408/while/Lessx
lstm_408/while/IdentityIdentitylstm_408/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_408/while/Identity";
lstm_408_while_identity lstm_408/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????-:?????????-: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
:
?L
?

lstm_408_while_body_5973099.
*lstm_408_while_lstm_408_while_loop_counter4
0lstm_408_while_lstm_408_while_maximum_iterations
lstm_408_while_placeholder 
lstm_408_while_placeholder_1 
lstm_408_while_placeholder_2 
lstm_408_while_placeholder_3-
)lstm_408_while_lstm_408_strided_slice_1_0i
elstm_408_while_tensorarrayv2read_tensorlistgetitem_lstm_408_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_408_while_lstm_cell_408_matmul_readvariableop_resource_0:	?R
?lstm_408_while_lstm_cell_408_matmul_1_readvariableop_resource_0:	-?M
>lstm_408_while_lstm_cell_408_biasadd_readvariableop_resource_0:	?
lstm_408_while_identity
lstm_408_while_identity_1
lstm_408_while_identity_2
lstm_408_while_identity_3
lstm_408_while_identity_4
lstm_408_while_identity_5+
'lstm_408_while_lstm_408_strided_slice_1g
clstm_408_while_tensorarrayv2read_tensorlistgetitem_lstm_408_tensorarrayunstack_tensorlistfromtensorN
;lstm_408_while_lstm_cell_408_matmul_readvariableop_resource:	?P
=lstm_408_while_lstm_cell_408_matmul_1_readvariableop_resource:	-?K
<lstm_408_while_lstm_cell_408_biasadd_readvariableop_resource:	???3lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOp?2lstm_408/while/lstm_cell_408/MatMul/ReadVariableOp?4lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOp?
@lstm_408/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2B
@lstm_408/while/TensorArrayV2Read/TensorListGetItem/element_shape?
2lstm_408/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_408_while_tensorarrayv2read_tensorlistgetitem_lstm_408_tensorarrayunstack_tensorlistfromtensor_0lstm_408_while_placeholderIlstm_408/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype024
2lstm_408/while/TensorArrayV2Read/TensorListGetItem?
2lstm_408/while/lstm_cell_408/MatMul/ReadVariableOpReadVariableOp=lstm_408_while_lstm_cell_408_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype024
2lstm_408/while/lstm_cell_408/MatMul/ReadVariableOp?
#lstm_408/while/lstm_cell_408/MatMulMatMul9lstm_408/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_408/while/lstm_cell_408/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_408/while/lstm_cell_408/MatMul?
4lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOpReadVariableOp?lstm_408_while_lstm_cell_408_matmul_1_readvariableop_resource_0*
_output_shapes
:	-?*
dtype026
4lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOp?
%lstm_408/while/lstm_cell_408/MatMul_1MatMullstm_408_while_placeholder_2<lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%lstm_408/while/lstm_cell_408/MatMul_1?
 lstm_408/while/lstm_cell_408/addAddV2-lstm_408/while/lstm_cell_408/MatMul:product:0/lstm_408/while/lstm_cell_408/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2"
 lstm_408/while/lstm_cell_408/add?
3lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOpReadVariableOp>lstm_408_while_lstm_cell_408_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype025
3lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOp?
$lstm_408/while/lstm_cell_408/BiasAddBiasAdd$lstm_408/while/lstm_cell_408/add:z:0;lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$lstm_408/while/lstm_cell_408/BiasAdd?
,lstm_408/while/lstm_cell_408/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_408/while/lstm_cell_408/split/split_dim?
"lstm_408/while/lstm_cell_408/splitSplit5lstm_408/while/lstm_cell_408/split/split_dim:output:0-lstm_408/while/lstm_cell_408/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2$
"lstm_408/while/lstm_cell_408/split?
$lstm_408/while/lstm_cell_408/SigmoidSigmoid+lstm_408/while/lstm_cell_408/split:output:0*
T0*'
_output_shapes
:?????????-2&
$lstm_408/while/lstm_cell_408/Sigmoid?
&lstm_408/while/lstm_cell_408/Sigmoid_1Sigmoid+lstm_408/while/lstm_cell_408/split:output:1*
T0*'
_output_shapes
:?????????-2(
&lstm_408/while/lstm_cell_408/Sigmoid_1?
 lstm_408/while/lstm_cell_408/mulMul*lstm_408/while/lstm_cell_408/Sigmoid_1:y:0lstm_408_while_placeholder_3*
T0*'
_output_shapes
:?????????-2"
 lstm_408/while/lstm_cell_408/mul?
!lstm_408/while/lstm_cell_408/ReluRelu+lstm_408/while/lstm_cell_408/split:output:2*
T0*'
_output_shapes
:?????????-2#
!lstm_408/while/lstm_cell_408/Relu?
"lstm_408/while/lstm_cell_408/mul_1Mul(lstm_408/while/lstm_cell_408/Sigmoid:y:0/lstm_408/while/lstm_cell_408/Relu:activations:0*
T0*'
_output_shapes
:?????????-2$
"lstm_408/while/lstm_cell_408/mul_1?
"lstm_408/while/lstm_cell_408/add_1AddV2$lstm_408/while/lstm_cell_408/mul:z:0&lstm_408/while/lstm_cell_408/mul_1:z:0*
T0*'
_output_shapes
:?????????-2$
"lstm_408/while/lstm_cell_408/add_1?
&lstm_408/while/lstm_cell_408/Sigmoid_2Sigmoid+lstm_408/while/lstm_cell_408/split:output:3*
T0*'
_output_shapes
:?????????-2(
&lstm_408/while/lstm_cell_408/Sigmoid_2?
#lstm_408/while/lstm_cell_408/Relu_1Relu&lstm_408/while/lstm_cell_408/add_1:z:0*
T0*'
_output_shapes
:?????????-2%
#lstm_408/while/lstm_cell_408/Relu_1?
"lstm_408/while/lstm_cell_408/mul_2Mul*lstm_408/while/lstm_cell_408/Sigmoid_2:y:01lstm_408/while/lstm_cell_408/Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2$
"lstm_408/while/lstm_cell_408/mul_2?
3lstm_408/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_408_while_placeholder_1lstm_408_while_placeholder&lstm_408/while/lstm_cell_408/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_408/while/TensorArrayV2Write/TensorListSetItemn
lstm_408/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_408/while/add/y?
lstm_408/while/addAddV2lstm_408_while_placeholderlstm_408/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_408/while/addr
lstm_408/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_408/while/add_1/y?
lstm_408/while/add_1AddV2*lstm_408_while_lstm_408_while_loop_counterlstm_408/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_408/while/add_1?
lstm_408/while/IdentityIdentitylstm_408/while/add_1:z:0^lstm_408/while/NoOp*
T0*
_output_shapes
: 2
lstm_408/while/Identity?
lstm_408/while/Identity_1Identity0lstm_408_while_lstm_408_while_maximum_iterations^lstm_408/while/NoOp*
T0*
_output_shapes
: 2
lstm_408/while/Identity_1?
lstm_408/while/Identity_2Identitylstm_408/while/add:z:0^lstm_408/while/NoOp*
T0*
_output_shapes
: 2
lstm_408/while/Identity_2?
lstm_408/while/Identity_3IdentityClstm_408/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_408/while/NoOp*
T0*
_output_shapes
: 2
lstm_408/while/Identity_3?
lstm_408/while/Identity_4Identity&lstm_408/while/lstm_cell_408/mul_2:z:0^lstm_408/while/NoOp*
T0*'
_output_shapes
:?????????-2
lstm_408/while/Identity_4?
lstm_408/while/Identity_5Identity&lstm_408/while/lstm_cell_408/add_1:z:0^lstm_408/while/NoOp*
T0*'
_output_shapes
:?????????-2
lstm_408/while/Identity_5?
lstm_408/while/NoOpNoOp4^lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOp3^lstm_408/while/lstm_cell_408/MatMul/ReadVariableOp5^lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_408/while/NoOp";
lstm_408_while_identity lstm_408/while/Identity:output:0"?
lstm_408_while_identity_1"lstm_408/while/Identity_1:output:0"?
lstm_408_while_identity_2"lstm_408/while/Identity_2:output:0"?
lstm_408_while_identity_3"lstm_408/while/Identity_3:output:0"?
lstm_408_while_identity_4"lstm_408/while/Identity_4:output:0"?
lstm_408_while_identity_5"lstm_408/while/Identity_5:output:0"T
'lstm_408_while_lstm_408_strided_slice_1)lstm_408_while_lstm_408_strided_slice_1_0"~
<lstm_408_while_lstm_cell_408_biasadd_readvariableop_resource>lstm_408_while_lstm_cell_408_biasadd_readvariableop_resource_0"?
=lstm_408_while_lstm_cell_408_matmul_1_readvariableop_resource?lstm_408_while_lstm_cell_408_matmul_1_readvariableop_resource_0"|
;lstm_408_while_lstm_cell_408_matmul_readvariableop_resource=lstm_408_while_lstm_cell_408_matmul_readvariableop_resource_0"?
clstm_408_while_tensorarrayv2read_tensorlistgetitem_lstm_408_tensorarrayunstack_tensorlistfromtensorelstm_408_while_tensorarrayv2read_tensorlistgetitem_lstm_408_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????-:?????????-: : : : : 2j
3lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOp3lstm_408/while/lstm_cell_408/BiasAdd/ReadVariableOp2h
2lstm_408/while/lstm_cell_408/MatMul/ReadVariableOp2lstm_408/while/lstm_cell_408/MatMul/ReadVariableOp2l
4lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOp4lstm_408/while/lstm_cell_408/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
: 
?	
?
0__inference_sequential_145_layer_call_fn_5973204

inputs
unknown:	?
	unknown_0:	-?
	unknown_1:	?
	unknown_2:-
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_145_layer_call_and_return_conditional_losses_59725632
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?\
?
E__inference_lstm_408_layer_call_and_return_conditional_losses_5972750

inputs?
,lstm_cell_408_matmul_readvariableop_resource:	?A
.lstm_cell_408_matmul_1_readvariableop_resource:	-?<
-lstm_cell_408_biasadd_readvariableop_resource:	?
identity??$lstm_cell_408/BiasAdd/ReadVariableOp?#lstm_cell_408/MatMul/ReadVariableOp?%lstm_cell_408/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????-2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :-2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :-2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????-2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_408/MatMul/ReadVariableOpReadVariableOp,lstm_cell_408_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_408/MatMul/ReadVariableOp?
lstm_cell_408/MatMulMatMulstrided_slice_2:output:0+lstm_cell_408/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/MatMul?
%lstm_cell_408/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_408_matmul_1_readvariableop_resource*
_output_shapes
:	-?*
dtype02'
%lstm_cell_408/MatMul_1/ReadVariableOp?
lstm_cell_408/MatMul_1MatMulzeros:output:0-lstm_cell_408/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/MatMul_1?
lstm_cell_408/addAddV2lstm_cell_408/MatMul:product:0 lstm_cell_408/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/add?
$lstm_cell_408/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_408_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_408/BiasAdd/ReadVariableOp?
lstm_cell_408/BiasAddBiasAddlstm_cell_408/add:z:0,lstm_cell_408/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_408/BiasAdd?
lstm_cell_408/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_408/split/split_dim?
lstm_cell_408/splitSplit&lstm_cell_408/split/split_dim:output:0lstm_cell_408/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????-:?????????-:?????????-:?????????-*
	num_split2
lstm_cell_408/split?
lstm_cell_408/SigmoidSigmoidlstm_cell_408/split:output:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Sigmoid?
lstm_cell_408/Sigmoid_1Sigmoidlstm_cell_408/split:output:1*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Sigmoid_1?
lstm_cell_408/mulMullstm_cell_408/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/mul?
lstm_cell_408/ReluRelulstm_cell_408/split:output:2*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Relu?
lstm_cell_408/mul_1Mullstm_cell_408/Sigmoid:y:0 lstm_cell_408/Relu:activations:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/mul_1?
lstm_cell_408/add_1AddV2lstm_cell_408/mul:z:0lstm_cell_408/mul_1:z:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/add_1?
lstm_cell_408/Sigmoid_2Sigmoidlstm_cell_408/split:output:3*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Sigmoid_2
lstm_cell_408/Relu_1Relulstm_cell_408/add_1:z:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/Relu_1?
lstm_cell_408/mul_2Mullstm_cell_408/Sigmoid_2:y:0"lstm_cell_408/Relu_1:activations:0*
T0*'
_output_shapes
:?????????-2
lstm_cell_408/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_408_matmul_readvariableop_resource.lstm_cell_408_matmul_1_readvariableop_resource-lstm_cell_408_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????-:?????????-: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5972666*
condR
while_cond_5972665*K
output_shapes:
8: : : : :?????????-:?????????-: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????-   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????-*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????-*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????-2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????-2

Identity?
NoOpNoOp%^lstm_cell_408/BiasAdd/ReadVariableOp$^lstm_cell_408/MatMul/ReadVariableOp&^lstm_cell_408/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_408/BiasAdd/ReadVariableOp$lstm_cell_408/BiasAdd/ReadVariableOp2J
#lstm_cell_408/MatMul/ReadVariableOp#lstm_cell_408/MatMul/ReadVariableOp2N
%lstm_cell_408/MatMul_1/ReadVariableOp%lstm_cell_408/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_5972665
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5972665___redundant_placeholder05
1while_while_cond_5972665___redundant_placeholder15
1while_while_cond_5972665___redundant_placeholder25
1while_while_cond_5972665___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????-:?????????-: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????-:-)
'
_output_shapes
:?????????-:

_output_shapes
: :

_output_shapes
:"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_408_input;
 serving_default_lstm_408_input:0?????????=
	dense_5760
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?f
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
*L&call_and_return_all_conditional_losses
M__call__
N_default_save_signature"
_tf_keras_sequential
?
	cell


state_spec
	variables
regularization_losses
trainable_variables
	keras_api
*O&call_and_return_all_conditional_losses
P__call__"
_tf_keras_rnn_layer
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*Q&call_and_return_all_conditional_losses
R__call__"
_tf_keras_layer
?
iter

beta_1

beta_2
	decay
learning_ratemBmCmDmEmFvGvHvIvJvK"
	optimizer
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
?

layers
	variables
non_trainable_variables
regularization_losses
trainable_variables
layer_metrics
 layer_regularization_losses
!metrics
M__call__
N_default_save_signature
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
,
Sserving_default"
signature_map
?
"
state_size

kernel
recurrent_kernel
bias
#	variables
$regularization_losses
%trainable_variables
&	keras_api
*T&call_and_return_all_conditional_losses
U__call__"
_tf_keras_layer
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
?

'layers
	variables
(non_trainable_variables

)states
regularization_losses
trainable_variables
*layer_metrics
+layer_regularization_losses
,metrics
P__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
": -2dense_576/kernel
:2dense_576/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

-layers
	variables
.non_trainable_variables
regularization_losses
trainable_variables
/layer_metrics
0layer_regularization_losses
1metrics
R__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	?2lstm_408/lstm_cell_408/kernel
::8	-?2'lstm_408/lstm_cell_408/recurrent_kernel
*:(?2lstm_408/lstm_cell_408/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
?

4layers
#	variables
5non_trainable_variables
$regularization_losses
%trainable_variables
6layer_metrics
7layer_regularization_losses
8metrics
U__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
'
	0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
N
	9total
	:count
;	variables
<	keras_api"
_tf_keras_metric
^
	=total
	>count
?
_fn_kwargs
@	variables
A	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
90
:1"
trackable_list_wrapper
-
;	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
=0
>1"
trackable_list_wrapper
-
@	variables"
_generic_user_object
':%-2Adam/dense_576/kernel/m
!:2Adam/dense_576/bias/m
5:3	?2$Adam/lstm_408/lstm_cell_408/kernel/m
?:=	-?2.Adam/lstm_408/lstm_cell_408/recurrent_kernel/m
/:-?2"Adam/lstm_408/lstm_cell_408/bias/m
':%-2Adam/dense_576/kernel/v
!:2Adam/dense_576/bias/v
5:3	?2$Adam/lstm_408/lstm_cell_408/kernel/v
?:=	-?2.Adam/lstm_408/lstm_cell_408/recurrent_kernel/v
/:-?2"Adam/lstm_408/lstm_cell_408/bias/v
?2?
K__inference_sequential_145_layer_call_and_return_conditional_losses_5973032
K__inference_sequential_145_layer_call_and_return_conditional_losses_5973189
K__inference_sequential_145_layer_call_and_return_conditional_losses_5972836
K__inference_sequential_145_layer_call_and_return_conditional_losses_5972852?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
0__inference_sequential_145_layer_call_fn_5972576
0__inference_sequential_145_layer_call_fn_5973204
0__inference_sequential_145_layer_call_fn_5973219
0__inference_sequential_145_layer_call_fn_5972820?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
"__inference__wrapped_model_5971751?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *1?.
,?)
lstm_408_input?????????
?2?
E__inference_lstm_408_layer_call_and_return_conditional_losses_5973370
E__inference_lstm_408_layer_call_and_return_conditional_losses_5973521
E__inference_lstm_408_layer_call_and_return_conditional_losses_5973672
E__inference_lstm_408_layer_call_and_return_conditional_losses_5973823?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_lstm_408_layer_call_fn_5973834
*__inference_lstm_408_layer_call_fn_5973845
*__inference_lstm_408_layer_call_fn_5973856
*__inference_lstm_408_layer_call_fn_5973867?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dense_576_layer_call_and_return_conditional_losses_5973877?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dense_576_layer_call_fn_5973886?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_5972875lstm_408_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_lstm_cell_408_layer_call_and_return_conditional_losses_5973918
J__inference_lstm_cell_408_layer_call_and_return_conditional_losses_5973950?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_lstm_cell_408_layer_call_fn_5973967
/__inference_lstm_cell_408_layer_call_fn_5973984?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
"__inference__wrapped_model_5971751{;?8
1?.
,?)
lstm_408_input?????????
? "5?2
0
	dense_576#? 
	dense_576??????????
F__inference_dense_576_layer_call_and_return_conditional_losses_5973877\/?,
%?"
 ?
inputs?????????-
? "%?"
?
0?????????
? ~
+__inference_dense_576_layer_call_fn_5973886O/?,
%?"
 ?
inputs?????????-
? "???????????
E__inference_lstm_408_layer_call_and_return_conditional_losses_5973370}O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"
?
0?????????-
? ?
E__inference_lstm_408_layer_call_and_return_conditional_losses_5973521}O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"
?
0?????????-
? ?
E__inference_lstm_408_layer_call_and_return_conditional_losses_5973672m??<
5?2
$?!
inputs?????????

 
p 

 
? "%?"
?
0?????????-
? ?
E__inference_lstm_408_layer_call_and_return_conditional_losses_5973823m??<
5?2
$?!
inputs?????????

 
p

 
? "%?"
?
0?????????-
? ?
*__inference_lstm_408_layer_call_fn_5973834pO?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "??????????-?
*__inference_lstm_408_layer_call_fn_5973845pO?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "??????????-?
*__inference_lstm_408_layer_call_fn_5973856`??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????-?
*__inference_lstm_408_layer_call_fn_5973867`??<
5?2
$?!
inputs?????????

 
p

 
? "??????????-?
J__inference_lstm_cell_408_layer_call_and_return_conditional_losses_5973918???}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????-
"?
states/1?????????-
p 
? "s?p
i?f
?
0/0?????????-
E?B
?
0/1/0?????????-
?
0/1/1?????????-
? ?
J__inference_lstm_cell_408_layer_call_and_return_conditional_losses_5973950???}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????-
"?
states/1?????????-
p
? "s?p
i?f
?
0/0?????????-
E?B
?
0/1/0?????????-
?
0/1/1?????????-
? ?
/__inference_lstm_cell_408_layer_call_fn_5973967???}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????-
"?
states/1?????????-
p 
? "c?`
?
0?????????-
A?>
?
1/0?????????-
?
1/1?????????-?
/__inference_lstm_cell_408_layer_call_fn_5973984???}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????-
"?
states/1?????????-
p
? "c?`
?
0?????????-
A?>
?
1/0?????????-
?
1/1?????????-?
K__inference_sequential_145_layer_call_and_return_conditional_losses_5972836sC?@
9?6
,?)
lstm_408_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_145_layer_call_and_return_conditional_losses_5972852sC?@
9?6
,?)
lstm_408_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_145_layer_call_and_return_conditional_losses_5973032k;?8
1?.
$?!
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_145_layer_call_and_return_conditional_losses_5973189k;?8
1?.
$?!
inputs?????????
p

 
? "%?"
?
0?????????
? ?
0__inference_sequential_145_layer_call_fn_5972576fC?@
9?6
,?)
lstm_408_input?????????
p 

 
? "???????????
0__inference_sequential_145_layer_call_fn_5972820fC?@
9?6
,?)
lstm_408_input?????????
p

 
? "???????????
0__inference_sequential_145_layer_call_fn_5973204^;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_145_layer_call_fn_5973219^;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_5972875?M?J
? 
C?@
>
lstm_408_input,?)
lstm_408_input?????????"5?2
0
	dense_576#? 
	dense_576?????????