??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
?
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28Ô
?
conv2d_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_36/kernel
}
$conv2d_36/kernel/Read/ReadVariableOpReadVariableOpconv2d_36/kernel*&
_output_shapes
:*
dtype0
t
conv2d_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_36/bias
m
"conv2d_36/bias/Read/ReadVariableOpReadVariableOpconv2d_36/bias*
_output_shapes
:*
dtype0
?
conv2d_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_37/kernel
}
$conv2d_37/kernel/Read/ReadVariableOpReadVariableOpconv2d_37/kernel*&
_output_shapes
:*
dtype0
t
conv2d_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_37/bias
m
"conv2d_37/bias/Read/ReadVariableOpReadVariableOpconv2d_37/bias*
_output_shapes
:*
dtype0
{
dense_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?px* 
shared_namedense_54/kernel
t
#dense_54/kernel/Read/ReadVariableOpReadVariableOpdense_54/kernel*
_output_shapes
:	?px*
dtype0
r
dense_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*
shared_namedense_54/bias
k
!dense_54/bias/Read/ReadVariableOpReadVariableOpdense_54/bias*
_output_shapes
:x*
dtype0
z
dense_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:xT* 
shared_namedense_55/kernel
s
#dense_55/kernel/Read/ReadVariableOpReadVariableOpdense_55/kernel*
_output_shapes

:xT*
dtype0
r
dense_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*
shared_namedense_55/bias
k
!dense_55/bias/Read/ReadVariableOpReadVariableOpdense_55/bias*
_output_shapes
:T*
dtype0
z
dense_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T* 
shared_namedense_56/kernel
s
#dense_56/kernel/Read/ReadVariableOpReadVariableOpdense_56/kernel*
_output_shapes

:T*
dtype0
r
dense_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_56/bias
k
!dense_56/bias/Read/ReadVariableOpReadVariableOpdense_56/bias*
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
Adam/conv2d_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_36/kernel/m
?
+Adam/conv2d_36/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_36/bias/m
{
)Adam/conv2d_36/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_37/kernel/m
?
+Adam/conv2d_37/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_37/bias/m
{
)Adam/conv2d_37/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_54/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?px*'
shared_nameAdam/dense_54/kernel/m
?
*Adam/dense_54/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_54/kernel/m*
_output_shapes
:	?px*
dtype0
?
Adam/dense_54/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*%
shared_nameAdam/dense_54/bias/m
y
(Adam/dense_54/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_54/bias/m*
_output_shapes
:x*
dtype0
?
Adam/dense_55/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:xT*'
shared_nameAdam/dense_55/kernel/m
?
*Adam/dense_55/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_55/kernel/m*
_output_shapes

:xT*
dtype0
?
Adam/dense_55/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*%
shared_nameAdam/dense_55/bias/m
y
(Adam/dense_55/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_55/bias/m*
_output_shapes
:T*
dtype0
?
Adam/dense_56/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T*'
shared_nameAdam/dense_56/kernel/m
?
*Adam/dense_56/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/m*
_output_shapes

:T*
dtype0
?
Adam/dense_56/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_56/bias/m
y
(Adam/dense_56/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_36/kernel/v
?
+Adam/conv2d_36/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_36/bias/v
{
)Adam/conv2d_36/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_37/kernel/v
?
+Adam/conv2d_37/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_37/bias/v
{
)Adam/conv2d_37/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_54/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?px*'
shared_nameAdam/dense_54/kernel/v
?
*Adam/dense_54/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_54/kernel/v*
_output_shapes
:	?px*
dtype0
?
Adam/dense_54/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*%
shared_nameAdam/dense_54/bias/v
y
(Adam/dense_54/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_54/bias/v*
_output_shapes
:x*
dtype0
?
Adam/dense_55/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:xT*'
shared_nameAdam/dense_55/kernel/v
?
*Adam/dense_55/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_55/kernel/v*
_output_shapes

:xT*
dtype0
?
Adam/dense_55/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*%
shared_nameAdam/dense_55/bias/v
y
(Adam/dense_55/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_55/bias/v*
_output_shapes
:T*
dtype0
?
Adam/dense_56/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T*'
shared_nameAdam/dense_56/kernel/v
?
*Adam/dense_56/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/v*
_output_shapes

:T*
dtype0
?
Adam/dense_56/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_56/bias/v
y
(Adam/dense_56/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?E
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?D
value?DB?D B?D
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
R
&	variables
'trainable_variables
(regularization_losses
)	keras_api
R
*	variables
+trainable_variables
,regularization_losses
-	keras_api
R
.	variables
/trainable_variables
0regularization_losses
1	keras_api
h

2kernel
3bias
4	variables
5trainable_variables
6regularization_losses
7	keras_api
R
8	variables
9trainable_variables
:regularization_losses
;	keras_api
h

<kernel
=bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
h

Bkernel
Cbias
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
?
Hiter

Ibeta_1

Jbeta_2
	Kdecay
Llearning_ratem?m? m?!m?2m?3m?<m?=m?Bm?Cm?v?v? v?!v?2v?3v?<v?=v?Bv?Cv?
F
0
1
 2
!3
24
35
<6
=7
B8
C9
F
0
1
 2
!3
24
35
<6
=7
B8
C9
 
?
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
 
\Z
VARIABLE_VALUEconv2d_36/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_36/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEconv2d_37/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_37/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

 0
!1

 0
!1
 
?
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
"	variables
#trainable_variables
$regularization_losses
 
 
 
?
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
&	variables
'trainable_variables
(regularization_losses
 
 
 
?
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
*	variables
+trainable_variables
,regularization_losses
 
 
 
?
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
.	variables
/trainable_variables
0regularization_losses
[Y
VARIABLE_VALUEdense_54/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_54/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

20
31

20
31
 
?
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
4	variables
5trainable_variables
6regularization_losses
 
 
 
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
8	variables
9trainable_variables
:regularization_losses
[Y
VARIABLE_VALUEdense_55/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_55/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

<0
=1

<0
=1
 
?
non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
>	variables
?trainable_variables
@regularization_losses
[Y
VARIABLE_VALUEdense_56/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_56/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

B0
C1

B0
C1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
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
 
N
0
1
2
3
4
5
6
7
	8

9
10

?0
?1
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
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
}
VARIABLE_VALUEAdam/conv2d_36/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_36/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_37/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_37/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_54/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_54/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_55/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_55/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_56/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_56/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_36/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_36/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_37/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_37/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_54/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_54/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_55/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_55/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_56/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_56/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_36_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_36_inputconv2d_36/kernelconv2d_36/biasconv2d_37/kernelconv2d_37/biasdense_54/kerneldense_54/biasdense_55/kerneldense_55/biasdense_56/kerneldense_56/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_129840
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_36/kernel/Read/ReadVariableOp"conv2d_36/bias/Read/ReadVariableOp$conv2d_37/kernel/Read/ReadVariableOp"conv2d_37/bias/Read/ReadVariableOp#dense_54/kernel/Read/ReadVariableOp!dense_54/bias/Read/ReadVariableOp#dense_55/kernel/Read/ReadVariableOp!dense_55/bias/Read/ReadVariableOp#dense_56/kernel/Read/ReadVariableOp!dense_56/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_36/kernel/m/Read/ReadVariableOp)Adam/conv2d_36/bias/m/Read/ReadVariableOp+Adam/conv2d_37/kernel/m/Read/ReadVariableOp)Adam/conv2d_37/bias/m/Read/ReadVariableOp*Adam/dense_54/kernel/m/Read/ReadVariableOp(Adam/dense_54/bias/m/Read/ReadVariableOp*Adam/dense_55/kernel/m/Read/ReadVariableOp(Adam/dense_55/bias/m/Read/ReadVariableOp*Adam/dense_56/kernel/m/Read/ReadVariableOp(Adam/dense_56/bias/m/Read/ReadVariableOp+Adam/conv2d_36/kernel/v/Read/ReadVariableOp)Adam/conv2d_36/bias/v/Read/ReadVariableOp+Adam/conv2d_37/kernel/v/Read/ReadVariableOp)Adam/conv2d_37/bias/v/Read/ReadVariableOp*Adam/dense_54/kernel/v/Read/ReadVariableOp(Adam/dense_54/bias/v/Read/ReadVariableOp*Adam/dense_55/kernel/v/Read/ReadVariableOp(Adam/dense_55/bias/v/Read/ReadVariableOp*Adam/dense_56/kernel/v/Read/ReadVariableOp(Adam/dense_56/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
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
GPU 2J 8? *(
f#R!
__inference__traced_save_130480
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_36/kernelconv2d_36/biasconv2d_37/kernelconv2d_37/biasdense_54/kerneldense_54/biasdense_55/kerneldense_55/biasdense_56/kerneldense_56/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_36/kernel/mAdam/conv2d_36/bias/mAdam/conv2d_37/kernel/mAdam/conv2d_37/bias/mAdam/dense_54/kernel/mAdam/dense_54/bias/mAdam/dense_55/kernel/mAdam/dense_55/bias/mAdam/dense_56/kernel/mAdam/dense_56/bias/mAdam/conv2d_36/kernel/vAdam/conv2d_36/bias/vAdam/conv2d_37/kernel/vAdam/conv2d_37/bias/vAdam/dense_54/kernel/vAdam/dense_54/bias/vAdam/dense_55/kernel/vAdam/dense_55/bias/vAdam/dense_56/kernel/vAdam/dense_56/bias/v*3
Tin,
*2(*
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_130607??	
?

?
.__inference_sequential_19_layer_call_fn_129683
conv2d_36_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?px
	unknown_4:x
	unknown_5:xT
	unknown_6:T
	unknown_7:T
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_36_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_19_layer_call_and_return_conditional_losses_129635o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_36_input
?
?
*__inference_conv2d_36_layer_call_fn_130054

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_129251w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????~~`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?E
?
I__inference_sequential_19_layer_call_and_return_conditional_losses_129736
conv2d_36_input*
conv2d_36_129686:
conv2d_36_129688:*
conv2d_37_129693:
conv2d_37_129695:"
dense_54_129701:	?px
dense_54_129703:x!
dense_55_129707:xT
dense_55_129709:T!
dense_56_129712:T
dense_56_129714:
identity??!conv2d_36/StatefulPartitionedCall?2conv2d_36/kernel/Regularizer/Square/ReadVariableOp?!conv2d_37/StatefulPartitionedCall?/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp? dense_54/StatefulPartitionedCall?.dense_54/kernel/Regularizer/Abs/ReadVariableOp? dense_55/StatefulPartitionedCall? dense_56/StatefulPartitionedCall?
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCallconv2d_36_inputconv2d_36_129686conv2d_36_129688*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_129251?
$average_pooling2d_36/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_average_pooling2d_36_layer_call_and_return_conditional_losses_129261?
dropout_37/PartitionedCallPartitionedCall-average_pooling2d_36/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_129268?
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall#dropout_37/PartitionedCall:output:0conv2d_37_129693conv2d_37_129695*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????==*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_129287?
$average_pooling2d_37/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_average_pooling2d_37_layer_call_and_return_conditional_losses_129297?
dropout_38/PartitionedCallPartitionedCall-average_pooling2d_37/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_38_layer_call_and_return_conditional_losses_129304?
flatten_18/PartitionedCallPartitionedCall#dropout_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????p* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_18_layer_call_and_return_conditional_losses_129312?
 dense_54/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0dense_54_129701dense_54_129703*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_54_layer_call_and_return_conditional_losses_129331?
dropout_39/PartitionedCallPartitionedCall)dense_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_39_layer_call_and_return_conditional_losses_129342?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall#dropout_39/PartitionedCall:output:0dense_55_129707dense_55_129709*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_55_layer_call_and_return_conditional_losses_129355?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0dense_56_129712dense_56_129714*
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
GPU 2J 8? *M
fHRF
D__inference_dense_56_layer_call_and_return_conditional_losses_129372?
2conv2d_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_36_129686*&
_output_shapes
:*
dtype0?
#conv2d_36/kernel/Regularizer/SquareSquare:conv2d_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:{
"conv2d_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 conv2d_36/kernel/Regularizer/SumSum'conv2d_36/kernel/Regularizer/Square:y:0+conv2d_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
 conv2d_36/kernel/Regularizer/mulMul+conv2d_36/kernel/Regularizer/mul/x:output:0)conv2d_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
/conv2d_37/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_37_129693*&
_output_shapes
:*
dtype0?
 conv2d_37/kernel/Regularizer/AbsAbs7conv2d_37/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:{
"conv2d_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 conv2d_37/kernel/Regularizer/SumSum$conv2d_37/kernel/Regularizer/Abs:y:0+conv2d_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
 conv2d_37/kernel/Regularizer/mulMul+conv2d_37/kernel/Regularizer/mul/x:output:0)conv2d_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
.dense_54/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_54_129701*
_output_shapes
:	?px*
dtype0?
dense_54/kernel/Regularizer/AbsAbs6dense_54/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?pxr
!dense_54/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_54/kernel/Regularizer/SumSum#dense_54/kernel/Regularizer/Abs:y:0*dense_54/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_54/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dense_54/kernel/Regularizer/mulMul*dense_54/kernel/Regularizer/mul/x:output:0(dense_54/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_36/StatefulPartitionedCall3^conv2d_36/kernel/Regularizer/Square/ReadVariableOp"^conv2d_37/StatefulPartitionedCall0^conv2d_37/kernel/Regularizer/Abs/ReadVariableOp!^dense_54/StatefulPartitionedCall/^dense_54/kernel/Regularizer/Abs/ReadVariableOp!^dense_55/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2h
2conv2d_36/kernel/Regularizer/Square/ReadVariableOp2conv2d_36/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2b
/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2`
.dense_54/kernel/Regularizer/Abs/ReadVariableOp.dense_54/kernel/Regularizer/Abs/ReadVariableOp2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_36_input
?

?
D__inference_dense_55_layer_call_and_return_conditional_losses_129355

inputs0
matmul_readvariableop_resource:xT-
biasadd_readvariableop_resource:T
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:xT*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Tr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????TP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Ta
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Tw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????x: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?

?
D__inference_dense_56_layer_call_and_return_conditional_losses_129372

inputs0
matmul_readvariableop_resource:T-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:T*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????T: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
d
F__inference_dropout_38_layer_call_and_return_conditional_losses_129304

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_38_layer_call_fn_130175

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_38_layer_call_and_return_conditional_losses_129304h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
l
P__inference_average_pooling2d_36_layer_call_and_return_conditional_losses_130086

inputs
identity?
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
l
P__inference_average_pooling2d_36_layer_call_and_return_conditional_losses_129261

inputs
identity?
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
`
IdentityIdentityAvgPool:output:0*
T0*/
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????~~:W S
/
_output_shapes
:?????????~~
 
_user_specified_nameinputs
?C
?

!__inference__wrapped_model_129203
conv2d_36_inputP
6sequential_19_conv2d_36_conv2d_readvariableop_resource:E
7sequential_19_conv2d_36_biasadd_readvariableop_resource:P
6sequential_19_conv2d_37_conv2d_readvariableop_resource:E
7sequential_19_conv2d_37_biasadd_readvariableop_resource:H
5sequential_19_dense_54_matmul_readvariableop_resource:	?pxD
6sequential_19_dense_54_biasadd_readvariableop_resource:xG
5sequential_19_dense_55_matmul_readvariableop_resource:xTD
6sequential_19_dense_55_biasadd_readvariableop_resource:TG
5sequential_19_dense_56_matmul_readvariableop_resource:TD
6sequential_19_dense_56_biasadd_readvariableop_resource:
identity??.sequential_19/conv2d_36/BiasAdd/ReadVariableOp?-sequential_19/conv2d_36/Conv2D/ReadVariableOp?.sequential_19/conv2d_37/BiasAdd/ReadVariableOp?-sequential_19/conv2d_37/Conv2D/ReadVariableOp?-sequential_19/dense_54/BiasAdd/ReadVariableOp?,sequential_19/dense_54/MatMul/ReadVariableOp?-sequential_19/dense_55/BiasAdd/ReadVariableOp?,sequential_19/dense_55/MatMul/ReadVariableOp?-sequential_19/dense_56/BiasAdd/ReadVariableOp?,sequential_19/dense_56/MatMul/ReadVariableOp?
-sequential_19/conv2d_36/Conv2D/ReadVariableOpReadVariableOp6sequential_19_conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_19/conv2d_36/Conv2DConv2Dconv2d_36_input5sequential_19/conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~*
paddingVALID*
strides
?
.sequential_19/conv2d_36/BiasAdd/ReadVariableOpReadVariableOp7sequential_19_conv2d_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_19/conv2d_36/BiasAddBiasAdd'sequential_19/conv2d_36/Conv2D:output:06sequential_19/conv2d_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~?
sequential_19/conv2d_36/ReluRelu(sequential_19/conv2d_36/BiasAdd:output:0*
T0*/
_output_shapes
:?????????~~?
*sequential_19/average_pooling2d_36/AvgPoolAvgPool*sequential_19/conv2d_36/Relu:activations:0*
T0*/
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
?
!sequential_19/dropout_37/IdentityIdentity3sequential_19/average_pooling2d_36/AvgPool:output:0*
T0*/
_output_shapes
:????????????
-sequential_19/conv2d_37/Conv2D/ReadVariableOpReadVariableOp6sequential_19_conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_19/conv2d_37/Conv2DConv2D*sequential_19/dropout_37/Identity:output:05sequential_19/conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????==*
paddingVALID*
strides
?
.sequential_19/conv2d_37/BiasAdd/ReadVariableOpReadVariableOp7sequential_19_conv2d_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_19/conv2d_37/BiasAddBiasAdd'sequential_19/conv2d_37/Conv2D:output:06sequential_19/conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????==?
sequential_19/conv2d_37/ReluRelu(sequential_19/conv2d_37/BiasAdd:output:0*
T0*/
_output_shapes
:?????????==?
*sequential_19/average_pooling2d_37/AvgPoolAvgPool*sequential_19/conv2d_37/Relu:activations:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
?
!sequential_19/dropout_38/IdentityIdentity3sequential_19/average_pooling2d_37/AvgPool:output:0*
T0*/
_output_shapes
:?????????o
sequential_19/flatten_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@8  ?
 sequential_19/flatten_18/ReshapeReshape*sequential_19/dropout_38/Identity:output:0'sequential_19/flatten_18/Const:output:0*
T0*(
_output_shapes
:??????????p?
,sequential_19/dense_54/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_54_matmul_readvariableop_resource*
_output_shapes
:	?px*
dtype0?
sequential_19/dense_54/MatMulMatMul)sequential_19/flatten_18/Reshape:output:04sequential_19/dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x?
-sequential_19/dense_54/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_54_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0?
sequential_19/dense_54/BiasAddBiasAdd'sequential_19/dense_54/MatMul:product:05sequential_19/dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x~
sequential_19/dense_54/ReluRelu'sequential_19/dense_54/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x?
!sequential_19/dropout_39/IdentityIdentity)sequential_19/dense_54/Relu:activations:0*
T0*'
_output_shapes
:?????????x?
,sequential_19/dense_55/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_55_matmul_readvariableop_resource*
_output_shapes

:xT*
dtype0?
sequential_19/dense_55/MatMulMatMul*sequential_19/dropout_39/Identity:output:04sequential_19/dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T?
-sequential_19/dense_55/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_55_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0?
sequential_19/dense_55/BiasAddBiasAdd'sequential_19/dense_55/MatMul:product:05sequential_19/dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T~
sequential_19/dense_55/ReluRelu'sequential_19/dense_55/BiasAdd:output:0*
T0*'
_output_shapes
:?????????T?
,sequential_19/dense_56/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_56_matmul_readvariableop_resource*
_output_shapes

:T*
dtype0?
sequential_19/dense_56/MatMulMatMul)sequential_19/dense_55/Relu:activations:04sequential_19/dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_19/dense_56/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_19/dense_56/BiasAddBiasAdd'sequential_19/dense_56/MatMul:product:05sequential_19/dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_19/dense_56/SigmoidSigmoid'sequential_19/dense_56/BiasAdd:output:0*
T0*'
_output_shapes
:?????????q
IdentityIdentity"sequential_19/dense_56/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^sequential_19/conv2d_36/BiasAdd/ReadVariableOp.^sequential_19/conv2d_36/Conv2D/ReadVariableOp/^sequential_19/conv2d_37/BiasAdd/ReadVariableOp.^sequential_19/conv2d_37/Conv2D/ReadVariableOp.^sequential_19/dense_54/BiasAdd/ReadVariableOp-^sequential_19/dense_54/MatMul/ReadVariableOp.^sequential_19/dense_55/BiasAdd/ReadVariableOp-^sequential_19/dense_55/MatMul/ReadVariableOp.^sequential_19/dense_56/BiasAdd/ReadVariableOp-^sequential_19/dense_56/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2`
.sequential_19/conv2d_36/BiasAdd/ReadVariableOp.sequential_19/conv2d_36/BiasAdd/ReadVariableOp2^
-sequential_19/conv2d_36/Conv2D/ReadVariableOp-sequential_19/conv2d_36/Conv2D/ReadVariableOp2`
.sequential_19/conv2d_37/BiasAdd/ReadVariableOp.sequential_19/conv2d_37/BiasAdd/ReadVariableOp2^
-sequential_19/conv2d_37/Conv2D/ReadVariableOp-sequential_19/conv2d_37/Conv2D/ReadVariableOp2^
-sequential_19/dense_54/BiasAdd/ReadVariableOp-sequential_19/dense_54/BiasAdd/ReadVariableOp2\
,sequential_19/dense_54/MatMul/ReadVariableOp,sequential_19/dense_54/MatMul/ReadVariableOp2^
-sequential_19/dense_55/BiasAdd/ReadVariableOp-sequential_19/dense_55/BiasAdd/ReadVariableOp2\
,sequential_19/dense_55/MatMul/ReadVariableOp,sequential_19/dense_55/MatMul/ReadVariableOp2^
-sequential_19/dense_56/BiasAdd/ReadVariableOp-sequential_19/dense_56/BiasAdd/ReadVariableOp2\
,sequential_19/dense_56/MatMul/ReadVariableOp,sequential_19/dense_56/MatMul/ReadVariableOp:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_36_input
?f
?	
I__inference_sequential_19_layer_call_and_return_conditional_losses_130039

inputsB
(conv2d_36_conv2d_readvariableop_resource:7
)conv2d_36_biasadd_readvariableop_resource:B
(conv2d_37_conv2d_readvariableop_resource:7
)conv2d_37_biasadd_readvariableop_resource::
'dense_54_matmul_readvariableop_resource:	?px6
(dense_54_biasadd_readvariableop_resource:x9
'dense_55_matmul_readvariableop_resource:xT6
(dense_55_biasadd_readvariableop_resource:T9
'dense_56_matmul_readvariableop_resource:T6
(dense_56_biasadd_readvariableop_resource:
identity?? conv2d_36/BiasAdd/ReadVariableOp?conv2d_36/Conv2D/ReadVariableOp?2conv2d_36/kernel/Regularizer/Square/ReadVariableOp? conv2d_37/BiasAdd/ReadVariableOp?conv2d_37/Conv2D/ReadVariableOp?/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp?dense_54/BiasAdd/ReadVariableOp?dense_54/MatMul/ReadVariableOp?.dense_54/kernel/Regularizer/Abs/ReadVariableOp?dense_55/BiasAdd/ReadVariableOp?dense_55/MatMul/ReadVariableOp?dense_56/BiasAdd/ReadVariableOp?dense_56/MatMul/ReadVariableOp?
conv2d_36/Conv2D/ReadVariableOpReadVariableOp(conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_36/Conv2DConv2Dinputs'conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~*
paddingVALID*
strides
?
 conv2d_36/BiasAdd/ReadVariableOpReadVariableOp)conv2d_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_36/BiasAddBiasAddconv2d_36/Conv2D:output:0(conv2d_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~l
conv2d_36/ReluReluconv2d_36/BiasAdd:output:0*
T0*/
_output_shapes
:?????????~~?
average_pooling2d_36/AvgPoolAvgPoolconv2d_36/Relu:activations:0*
T0*/
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
]
dropout_37/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU@?
dropout_37/dropout/MulMul%average_pooling2d_36/AvgPool:output:0!dropout_37/dropout/Const:output:0*
T0*/
_output_shapes
:???????????m
dropout_37/dropout/ShapeShape%average_pooling2d_36/AvgPool:output:0*
T0*
_output_shapes
:?
/dropout_37/dropout/random_uniform/RandomUniformRandomUniform!dropout_37/dropout/Shape:output:0*
T0*/
_output_shapes
:???????????*
dtype0f
!dropout_37/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???
dropout_37/dropout/GreaterEqualGreaterEqual8dropout_37/dropout/random_uniform/RandomUniform:output:0*dropout_37/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????????
dropout_37/dropout/CastCast#dropout_37/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????????
dropout_37/dropout/Mul_1Muldropout_37/dropout/Mul:z:0dropout_37/dropout/Cast:y:0*
T0*/
_output_shapes
:????????????
conv2d_37/Conv2D/ReadVariableOpReadVariableOp(conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_37/Conv2DConv2Ddropout_37/dropout/Mul_1:z:0'conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????==*
paddingVALID*
strides
?
 conv2d_37/BiasAdd/ReadVariableOpReadVariableOp)conv2d_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_37/BiasAddBiasAddconv2d_37/Conv2D:output:0(conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????==l
conv2d_37/ReluReluconv2d_37/BiasAdd:output:0*
T0*/
_output_shapes
:?????????==?
average_pooling2d_37/AvgPoolAvgPoolconv2d_37/Relu:activations:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
]
dropout_38/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_38/dropout/MulMul%average_pooling2d_37/AvgPool:output:0!dropout_38/dropout/Const:output:0*
T0*/
_output_shapes
:?????????m
dropout_38/dropout/ShapeShape%average_pooling2d_37/AvgPool:output:0*
T0*
_output_shapes
:?
/dropout_38/dropout/random_uniform/RandomUniformRandomUniform!dropout_38/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype0f
!dropout_38/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_38/dropout/GreaterEqualGreaterEqual8dropout_38/dropout/random_uniform/RandomUniform:output:0*dropout_38/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:??????????
dropout_38/dropout/CastCast#dropout_38/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:??????????
dropout_38/dropout/Mul_1Muldropout_38/dropout/Mul:z:0dropout_38/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????a
flatten_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@8  ?
flatten_18/ReshapeReshapedropout_38/dropout/Mul_1:z:0flatten_18/Const:output:0*
T0*(
_output_shapes
:??????????p?
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes
:	?px*
dtype0?
dense_54/MatMulMatMulflatten_18/Reshape:output:0&dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x?
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0?
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????xb
dense_54/ReluReludense_54/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x]
dropout_39/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *]t???
dropout_39/dropout/MulMuldense_54/Relu:activations:0!dropout_39/dropout/Const:output:0*
T0*'
_output_shapes
:?????????xc
dropout_39/dropout/ShapeShapedense_54/Relu:activations:0*
T0*
_output_shapes
:?
/dropout_39/dropout/random_uniform/RandomUniformRandomUniform!dropout_39/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????x*
dtype0f
!dropout_39/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_39/dropout/GreaterEqualGreaterEqual8dropout_39/dropout/random_uniform/RandomUniform:output:0*dropout_39/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????x?
dropout_39/dropout/CastCast#dropout_39/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????x?
dropout_39/dropout/Mul_1Muldropout_39/dropout/Mul:z:0dropout_39/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????x?
dense_55/MatMul/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource*
_output_shapes

:xT*
dtype0?
dense_55/MatMulMatMuldropout_39/dropout/Mul_1:z:0&dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T?
dense_55/BiasAdd/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0?
dense_55/BiasAddBiasAdddense_55/MatMul:product:0'dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Tb
dense_55/ReluReludense_55/BiasAdd:output:0*
T0*'
_output_shapes
:?????????T?
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes

:T*
dtype0?
dense_56/MatMulMatMuldense_55/Relu:activations:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_56/SigmoidSigmoiddense_56/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
2conv2d_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
#conv2d_36/kernel/Regularizer/SquareSquare:conv2d_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:{
"conv2d_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 conv2d_36/kernel/Regularizer/SumSum'conv2d_36/kernel/Regularizer/Square:y:0+conv2d_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
 conv2d_36/kernel/Regularizer/mulMul+conv2d_36/kernel/Regularizer/mul/x:output:0)conv2d_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
/conv2d_37/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp(conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
 conv2d_37/kernel/Regularizer/AbsAbs7conv2d_37/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:{
"conv2d_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 conv2d_37/kernel/Regularizer/SumSum$conv2d_37/kernel/Regularizer/Abs:y:0+conv2d_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
 conv2d_37/kernel/Regularizer/mulMul+conv2d_37/kernel/Regularizer/mul/x:output:0)conv2d_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
.dense_54/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes
:	?px*
dtype0?
dense_54/kernel/Regularizer/AbsAbs6dense_54/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?pxr
!dense_54/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_54/kernel/Regularizer/SumSum#dense_54/kernel/Regularizer/Abs:y:0*dense_54/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_54/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dense_54/kernel/Regularizer/mulMul*dense_54/kernel/Regularizer/mul/x:output:0(dense_54/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: c
IdentityIdentitydense_56/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_36/BiasAdd/ReadVariableOp ^conv2d_36/Conv2D/ReadVariableOp3^conv2d_36/kernel/Regularizer/Square/ReadVariableOp!^conv2d_37/BiasAdd/ReadVariableOp ^conv2d_37/Conv2D/ReadVariableOp0^conv2d_37/kernel/Regularizer/Abs/ReadVariableOp ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp/^dense_54/kernel/Regularizer/Abs/ReadVariableOp ^dense_55/BiasAdd/ReadVariableOp^dense_55/MatMul/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2D
 conv2d_36/BiasAdd/ReadVariableOp conv2d_36/BiasAdd/ReadVariableOp2B
conv2d_36/Conv2D/ReadVariableOpconv2d_36/Conv2D/ReadVariableOp2h
2conv2d_36/kernel/Regularizer/Square/ReadVariableOp2conv2d_36/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_37/BiasAdd/ReadVariableOp conv2d_37/BiasAdd/ReadVariableOp2B
conv2d_37/Conv2D/ReadVariableOpconv2d_37/Conv2D/ReadVariableOp2b
/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp2`
.dense_54/kernel/Regularizer/Abs/ReadVariableOp.dense_54/kernel/Regularizer/Abs/ReadVariableOp2B
dense_55/BiasAdd/ReadVariableOpdense_55/BiasAdd/ReadVariableOp2@
dense_55/MatMul/ReadVariableOpdense_55/MatMul/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_39_layer_call_and_return_conditional_losses_130267

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *]t??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????xC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????x*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????xo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????xi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????xY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????x"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_130318U
;conv2d_36_kernel_regularizer_square_readvariableop_resource:
identity??2conv2d_36/kernel/Regularizer/Square/ReadVariableOp?
2conv2d_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv2d_36_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype0?
#conv2d_36/kernel/Regularizer/SquareSquare:conv2d_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:{
"conv2d_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 conv2d_36/kernel/Regularizer/SumSum'conv2d_36/kernel/Regularizer/Square:y:0+conv2d_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
 conv2d_36/kernel/Regularizer/mulMul+conv2d_36/kernel/Regularizer/mul/x:output:0)conv2d_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$conv2d_36/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^conv2d_36/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2conv2d_36/kernel/Regularizer/Square/ReadVariableOp2conv2d_36/kernel/Regularizer/Square/ReadVariableOp
?
l
P__inference_average_pooling2d_37_layer_call_and_return_conditional_losses_130165

inputs
identity?
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_130607
file_prefix;
!assignvariableop_conv2d_36_kernel:/
!assignvariableop_1_conv2d_36_bias:=
#assignvariableop_2_conv2d_37_kernel:/
!assignvariableop_3_conv2d_37_bias:5
"assignvariableop_4_dense_54_kernel:	?px.
 assignvariableop_5_dense_54_bias:x4
"assignvariableop_6_dense_55_kernel:xT.
 assignvariableop_7_dense_55_bias:T4
"assignvariableop_8_dense_56_kernel:T.
 assignvariableop_9_dense_56_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: E
+assignvariableop_19_adam_conv2d_36_kernel_m:7
)assignvariableop_20_adam_conv2d_36_bias_m:E
+assignvariableop_21_adam_conv2d_37_kernel_m:7
)assignvariableop_22_adam_conv2d_37_bias_m:=
*assignvariableop_23_adam_dense_54_kernel_m:	?px6
(assignvariableop_24_adam_dense_54_bias_m:x<
*assignvariableop_25_adam_dense_55_kernel_m:xT6
(assignvariableop_26_adam_dense_55_bias_m:T<
*assignvariableop_27_adam_dense_56_kernel_m:T6
(assignvariableop_28_adam_dense_56_bias_m:E
+assignvariableop_29_adam_conv2d_36_kernel_v:7
)assignvariableop_30_adam_conv2d_36_bias_v:E
+assignvariableop_31_adam_conv2d_37_kernel_v:7
)assignvariableop_32_adam_conv2d_37_bias_v:=
*assignvariableop_33_adam_dense_54_kernel_v:	?px6
(assignvariableop_34_adam_dense_54_bias_v:x<
*assignvariableop_35_adam_dense_55_kernel_v:xT6
(assignvariableop_36_adam_dense_55_bias_v:T<
*assignvariableop_37_adam_dense_56_kernel_v:T6
(assignvariableop_38_adam_dense_56_bias_v:
identity_40??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*?
value?B?(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_36_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_36_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_37_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_37_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_54_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_54_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_55_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_55_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_56_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_56_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_conv2d_36_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_conv2d_36_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_conv2d_37_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_conv2d_37_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_54_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_54_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_55_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_55_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_56_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_56_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_36_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_36_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_37_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_37_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_54_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_54_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_55_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_55_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_56_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_56_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
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
?
l
P__inference_average_pooling2d_37_layer_call_and_return_conditional_losses_130170

inputs
identity?
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
`
IdentityIdentityAvgPool:output:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????==:W S
/
_output_shapes
:?????????==
 
_user_specified_nameinputs
?
G
+__inference_flatten_18_layer_call_fn_130202

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????p* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_18_layer_call_and_return_conditional_losses_129312a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????p"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_39_layer_call_and_return_conditional_losses_129460

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *]t??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????xC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????x*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????xo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????xi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????xY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????x"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?J
?
I__inference_sequential_19_layer_call_and_return_conditional_losses_129635

inputs*
conv2d_36_129585:
conv2d_36_129587:*
conv2d_37_129592:
conv2d_37_129594:"
dense_54_129600:	?px
dense_54_129602:x!
dense_55_129606:xT
dense_55_129608:T!
dense_56_129611:T
dense_56_129613:
identity??!conv2d_36/StatefulPartitionedCall?2conv2d_36/kernel/Regularizer/Square/ReadVariableOp?!conv2d_37/StatefulPartitionedCall?/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp? dense_54/StatefulPartitionedCall?.dense_54/kernel/Regularizer/Abs/ReadVariableOp? dense_55/StatefulPartitionedCall? dense_56/StatefulPartitionedCall?"dropout_37/StatefulPartitionedCall?"dropout_38/StatefulPartitionedCall?"dropout_39/StatefulPartitionedCall?
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_36_129585conv2d_36_129587*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_129251?
$average_pooling2d_36/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_average_pooling2d_36_layer_call_and_return_conditional_losses_129261?
"dropout_37/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_36/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_129537?
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall+dropout_37/StatefulPartitionedCall:output:0conv2d_37_129592conv2d_37_129594*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????==*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_129287?
$average_pooling2d_37/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_average_pooling2d_37_layer_call_and_return_conditional_losses_129297?
"dropout_38/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_37/PartitionedCall:output:0#^dropout_37/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_38_layer_call_and_return_conditional_losses_129499?
flatten_18/PartitionedCallPartitionedCall+dropout_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????p* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_18_layer_call_and_return_conditional_losses_129312?
 dense_54/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0dense_54_129600dense_54_129602*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_54_layer_call_and_return_conditional_losses_129331?
"dropout_39/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0#^dropout_38/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_39_layer_call_and_return_conditional_losses_129460?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall+dropout_39/StatefulPartitionedCall:output:0dense_55_129606dense_55_129608*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_55_layer_call_and_return_conditional_losses_129355?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0dense_56_129611dense_56_129613*
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
GPU 2J 8? *M
fHRF
D__inference_dense_56_layer_call_and_return_conditional_losses_129372?
2conv2d_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_36_129585*&
_output_shapes
:*
dtype0?
#conv2d_36/kernel/Regularizer/SquareSquare:conv2d_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:{
"conv2d_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 conv2d_36/kernel/Regularizer/SumSum'conv2d_36/kernel/Regularizer/Square:y:0+conv2d_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
 conv2d_36/kernel/Regularizer/mulMul+conv2d_36/kernel/Regularizer/mul/x:output:0)conv2d_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
/conv2d_37/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_37_129592*&
_output_shapes
:*
dtype0?
 conv2d_37/kernel/Regularizer/AbsAbs7conv2d_37/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:{
"conv2d_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 conv2d_37/kernel/Regularizer/SumSum$conv2d_37/kernel/Regularizer/Abs:y:0+conv2d_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
 conv2d_37/kernel/Regularizer/mulMul+conv2d_37/kernel/Regularizer/mul/x:output:0)conv2d_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
.dense_54/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_54_129600*
_output_shapes
:	?px*
dtype0?
dense_54/kernel/Regularizer/AbsAbs6dense_54/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?pxr
!dense_54/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_54/kernel/Regularizer/SumSum#dense_54/kernel/Regularizer/Abs:y:0*dense_54/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_54/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dense_54/kernel/Regularizer/mulMul*dense_54/kernel/Regularizer/mul/x:output:0(dense_54/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_36/StatefulPartitionedCall3^conv2d_36/kernel/Regularizer/Square/ReadVariableOp"^conv2d_37/StatefulPartitionedCall0^conv2d_37/kernel/Regularizer/Abs/ReadVariableOp!^dense_54/StatefulPartitionedCall/^dense_54/kernel/Regularizer/Abs/ReadVariableOp!^dense_55/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall#^dropout_37/StatefulPartitionedCall#^dropout_38/StatefulPartitionedCall#^dropout_39/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2h
2conv2d_36/kernel/Regularizer/Square/ReadVariableOp2conv2d_36/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2b
/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2`
.dense_54/kernel/Regularizer/Abs/ReadVariableOp.dense_54/kernel/Regularizer/Abs/ReadVariableOp2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2H
"dropout_37/StatefulPartitionedCall"dropout_37/StatefulPartitionedCall2H
"dropout_38/StatefulPartitionedCall"dropout_38/StatefulPartitionedCall2H
"dropout_39/StatefulPartitionedCall"dropout_39/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?O
?	
I__inference_sequential_19_layer_call_and_return_conditional_losses_129954

inputsB
(conv2d_36_conv2d_readvariableop_resource:7
)conv2d_36_biasadd_readvariableop_resource:B
(conv2d_37_conv2d_readvariableop_resource:7
)conv2d_37_biasadd_readvariableop_resource::
'dense_54_matmul_readvariableop_resource:	?px6
(dense_54_biasadd_readvariableop_resource:x9
'dense_55_matmul_readvariableop_resource:xT6
(dense_55_biasadd_readvariableop_resource:T9
'dense_56_matmul_readvariableop_resource:T6
(dense_56_biasadd_readvariableop_resource:
identity?? conv2d_36/BiasAdd/ReadVariableOp?conv2d_36/Conv2D/ReadVariableOp?2conv2d_36/kernel/Regularizer/Square/ReadVariableOp? conv2d_37/BiasAdd/ReadVariableOp?conv2d_37/Conv2D/ReadVariableOp?/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp?dense_54/BiasAdd/ReadVariableOp?dense_54/MatMul/ReadVariableOp?.dense_54/kernel/Regularizer/Abs/ReadVariableOp?dense_55/BiasAdd/ReadVariableOp?dense_55/MatMul/ReadVariableOp?dense_56/BiasAdd/ReadVariableOp?dense_56/MatMul/ReadVariableOp?
conv2d_36/Conv2D/ReadVariableOpReadVariableOp(conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_36/Conv2DConv2Dinputs'conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~*
paddingVALID*
strides
?
 conv2d_36/BiasAdd/ReadVariableOpReadVariableOp)conv2d_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_36/BiasAddBiasAddconv2d_36/Conv2D:output:0(conv2d_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~l
conv2d_36/ReluReluconv2d_36/BiasAdd:output:0*
T0*/
_output_shapes
:?????????~~?
average_pooling2d_36/AvgPoolAvgPoolconv2d_36/Relu:activations:0*
T0*/
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
?
dropout_37/IdentityIdentity%average_pooling2d_36/AvgPool:output:0*
T0*/
_output_shapes
:????????????
conv2d_37/Conv2D/ReadVariableOpReadVariableOp(conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_37/Conv2DConv2Ddropout_37/Identity:output:0'conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????==*
paddingVALID*
strides
?
 conv2d_37/BiasAdd/ReadVariableOpReadVariableOp)conv2d_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_37/BiasAddBiasAddconv2d_37/Conv2D:output:0(conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????==l
conv2d_37/ReluReluconv2d_37/BiasAdd:output:0*
T0*/
_output_shapes
:?????????==?
average_pooling2d_37/AvgPoolAvgPoolconv2d_37/Relu:activations:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
?
dropout_38/IdentityIdentity%average_pooling2d_37/AvgPool:output:0*
T0*/
_output_shapes
:?????????a
flatten_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@8  ?
flatten_18/ReshapeReshapedropout_38/Identity:output:0flatten_18/Const:output:0*
T0*(
_output_shapes
:??????????p?
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes
:	?px*
dtype0?
dense_54/MatMulMatMulflatten_18/Reshape:output:0&dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x?
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0?
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????xb
dense_54/ReluReludense_54/BiasAdd:output:0*
T0*'
_output_shapes
:?????????xn
dropout_39/IdentityIdentitydense_54/Relu:activations:0*
T0*'
_output_shapes
:?????????x?
dense_55/MatMul/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource*
_output_shapes

:xT*
dtype0?
dense_55/MatMulMatMuldropout_39/Identity:output:0&dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T?
dense_55/BiasAdd/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0?
dense_55/BiasAddBiasAdddense_55/MatMul:product:0'dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Tb
dense_55/ReluReludense_55/BiasAdd:output:0*
T0*'
_output_shapes
:?????????T?
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes

:T*
dtype0?
dense_56/MatMulMatMuldense_55/Relu:activations:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_56/SigmoidSigmoiddense_56/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
2conv2d_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
#conv2d_36/kernel/Regularizer/SquareSquare:conv2d_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:{
"conv2d_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 conv2d_36/kernel/Regularizer/SumSum'conv2d_36/kernel/Regularizer/Square:y:0+conv2d_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
 conv2d_36/kernel/Regularizer/mulMul+conv2d_36/kernel/Regularizer/mul/x:output:0)conv2d_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
/conv2d_37/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp(conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
 conv2d_37/kernel/Regularizer/AbsAbs7conv2d_37/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:{
"conv2d_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 conv2d_37/kernel/Regularizer/SumSum$conv2d_37/kernel/Regularizer/Abs:y:0+conv2d_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
 conv2d_37/kernel/Regularizer/mulMul+conv2d_37/kernel/Regularizer/mul/x:output:0)conv2d_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
.dense_54/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes
:	?px*
dtype0?
dense_54/kernel/Regularizer/AbsAbs6dense_54/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?pxr
!dense_54/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_54/kernel/Regularizer/SumSum#dense_54/kernel/Regularizer/Abs:y:0*dense_54/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_54/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dense_54/kernel/Regularizer/mulMul*dense_54/kernel/Regularizer/mul/x:output:0(dense_54/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: c
IdentityIdentitydense_56/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_36/BiasAdd/ReadVariableOp ^conv2d_36/Conv2D/ReadVariableOp3^conv2d_36/kernel/Regularizer/Square/ReadVariableOp!^conv2d_37/BiasAdd/ReadVariableOp ^conv2d_37/Conv2D/ReadVariableOp0^conv2d_37/kernel/Regularizer/Abs/ReadVariableOp ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp/^dense_54/kernel/Regularizer/Abs/ReadVariableOp ^dense_55/BiasAdd/ReadVariableOp^dense_55/MatMul/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2D
 conv2d_36/BiasAdd/ReadVariableOp conv2d_36/BiasAdd/ReadVariableOp2B
conv2d_36/Conv2D/ReadVariableOpconv2d_36/Conv2D/ReadVariableOp2h
2conv2d_36/kernel/Regularizer/Square/ReadVariableOp2conv2d_36/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_37/BiasAdd/ReadVariableOp conv2d_37/BiasAdd/ReadVariableOp2B
conv2d_37/Conv2D/ReadVariableOpconv2d_37/Conv2D/ReadVariableOp2b
/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp2`
.dense_54/kernel/Regularizer/Abs/ReadVariableOp.dense_54/kernel/Regularizer/Abs/ReadVariableOp2B
dense_55/BiasAdd/ReadVariableOpdense_55/BiasAdd/ReadVariableOp2@
dense_55/MatMul/ReadVariableOpdense_55/MatMul/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
Q
5__inference_average_pooling2d_36_layer_call_fn_130076

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_average_pooling2d_36_layer_call_and_return_conditional_losses_129212?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?E
?
I__inference_sequential_19_layer_call_and_return_conditional_losses_129397

inputs*
conv2d_36_129252:
conv2d_36_129254:*
conv2d_37_129288:
conv2d_37_129290:"
dense_54_129332:	?px
dense_54_129334:x!
dense_55_129356:xT
dense_55_129358:T!
dense_56_129373:T
dense_56_129375:
identity??!conv2d_36/StatefulPartitionedCall?2conv2d_36/kernel/Regularizer/Square/ReadVariableOp?!conv2d_37/StatefulPartitionedCall?/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp? dense_54/StatefulPartitionedCall?.dense_54/kernel/Regularizer/Abs/ReadVariableOp? dense_55/StatefulPartitionedCall? dense_56/StatefulPartitionedCall?
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_36_129252conv2d_36_129254*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_129251?
$average_pooling2d_36/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_average_pooling2d_36_layer_call_and_return_conditional_losses_129261?
dropout_37/PartitionedCallPartitionedCall-average_pooling2d_36/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_129268?
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall#dropout_37/PartitionedCall:output:0conv2d_37_129288conv2d_37_129290*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????==*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_129287?
$average_pooling2d_37/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_average_pooling2d_37_layer_call_and_return_conditional_losses_129297?
dropout_38/PartitionedCallPartitionedCall-average_pooling2d_37/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_38_layer_call_and_return_conditional_losses_129304?
flatten_18/PartitionedCallPartitionedCall#dropout_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????p* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_18_layer_call_and_return_conditional_losses_129312?
 dense_54/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0dense_54_129332dense_54_129334*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_54_layer_call_and_return_conditional_losses_129331?
dropout_39/PartitionedCallPartitionedCall)dense_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_39_layer_call_and_return_conditional_losses_129342?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall#dropout_39/PartitionedCall:output:0dense_55_129356dense_55_129358*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_55_layer_call_and_return_conditional_losses_129355?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0dense_56_129373dense_56_129375*
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
GPU 2J 8? *M
fHRF
D__inference_dense_56_layer_call_and_return_conditional_losses_129372?
2conv2d_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_36_129252*&
_output_shapes
:*
dtype0?
#conv2d_36/kernel/Regularizer/SquareSquare:conv2d_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:{
"conv2d_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 conv2d_36/kernel/Regularizer/SumSum'conv2d_36/kernel/Regularizer/Square:y:0+conv2d_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
 conv2d_36/kernel/Regularizer/mulMul+conv2d_36/kernel/Regularizer/mul/x:output:0)conv2d_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
/conv2d_37/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_37_129288*&
_output_shapes
:*
dtype0?
 conv2d_37/kernel/Regularizer/AbsAbs7conv2d_37/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:{
"conv2d_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 conv2d_37/kernel/Regularizer/SumSum$conv2d_37/kernel/Regularizer/Abs:y:0+conv2d_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
 conv2d_37/kernel/Regularizer/mulMul+conv2d_37/kernel/Regularizer/mul/x:output:0)conv2d_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
.dense_54/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_54_129332*
_output_shapes
:	?px*
dtype0?
dense_54/kernel/Regularizer/AbsAbs6dense_54/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?pxr
!dense_54/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_54/kernel/Regularizer/SumSum#dense_54/kernel/Regularizer/Abs:y:0*dense_54/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_54/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dense_54/kernel/Regularizer/mulMul*dense_54/kernel/Regularizer/mul/x:output:0(dense_54/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_36/StatefulPartitionedCall3^conv2d_36/kernel/Regularizer/Square/ReadVariableOp"^conv2d_37/StatefulPartitionedCall0^conv2d_37/kernel/Regularizer/Abs/ReadVariableOp!^dense_54/StatefulPartitionedCall/^dense_54/kernel/Regularizer/Abs/ReadVariableOp!^dense_55/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2h
2conv2d_36/kernel/Regularizer/Square/ReadVariableOp2conv2d_36/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2b
/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2`
.dense_54/kernel/Regularizer/Abs/ReadVariableOp.dense_54/kernel/Regularizer/Abs/ReadVariableOp2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_dense_54_layer_call_and_return_conditional_losses_130240

inputs1
matmul_readvariableop_resource:	?px-
biasadd_readvariableop_resource:x
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?.dense_54/kernel/Regularizer/Abs/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?px*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????xr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????xP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????x?
.dense_54/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?px*
dtype0?
dense_54/kernel/Regularizer/AbsAbs6dense_54/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?pxr
!dense_54/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_54/kernel/Regularizer/SumSum#dense_54/kernel/Regularizer/Abs:y:0*dense_54/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_54/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dense_54/kernel/Regularizer/mulMul*dense_54/kernel/Regularizer/mul/x:output:0(dense_54/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????x?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_54/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????p: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_54/kernel/Regularizer/Abs/ReadVariableOp.dense_54/kernel/Regularizer/Abs/ReadVariableOp:P L
(
_output_shapes
:??????????p
 
_user_specified_nameinputs
?

?
D__inference_dense_56_layer_call_and_return_conditional_losses_130307

inputs0
matmul_readvariableop_resource:T-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:T*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????T: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
d
+__inference_dropout_38_layer_call_fn_130180

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_38_layer_call_and_return_conditional_losses_129499w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_19_layer_call_fn_129420
conv2d_36_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?px
	unknown_4:x
	unknown_5:xT
	unknown_6:T
	unknown_7:T
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_36_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_19_layer_call_and_return_conditional_losses_129397o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_36_input
?
?
E__inference_conv2d_37_layer_call_and_return_conditional_losses_129287

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????==*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????==X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????==?
/conv2d_37/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
 conv2d_37/kernel/Regularizer/AbsAbs7conv2d_37/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:{
"conv2d_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 conv2d_37/kernel/Regularizer/SumSum$conv2d_37/kernel/Regularizer/Abs:y:0+conv2d_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
 conv2d_37/kernel/Regularizer/mulMul+conv2d_37/kernel/Regularizer/mul/x:output:0)conv2d_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????==?
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp0^conv2d_37/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2b
/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp:W S
/
_output_shapes
:???????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_39_layer_call_fn_130245

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_39_layer_call_and_return_conditional_losses_129342`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????x"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
d
F__inference_dropout_39_layer_call_and_return_conditional_losses_129342

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????x[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????x"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
D__inference_dense_54_layer_call_and_return_conditional_losses_129331

inputs1
matmul_readvariableop_resource:	?px-
biasadd_readvariableop_resource:x
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?.dense_54/kernel/Regularizer/Abs/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?px*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????xr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????xP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????x?
.dense_54/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?px*
dtype0?
dense_54/kernel/Regularizer/AbsAbs6dense_54/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?pxr
!dense_54/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_54/kernel/Regularizer/SumSum#dense_54/kernel/Regularizer/Abs:y:0*dense_54/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_54/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dense_54/kernel/Regularizer/mulMul*dense_54/kernel/Regularizer/mul/x:output:0(dense_54/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????x?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_54/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????p: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_54/kernel/Regularizer/Abs/ReadVariableOp.dense_54/kernel/Regularizer/Abs/ReadVariableOp:P L
(
_output_shapes
:??????????p
 
_user_specified_nameinputs
?
b
F__inference_flatten_18_layer_call_and_return_conditional_losses_129312

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@8  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????pY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????p"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_39_layer_call_fn_130250

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_39_layer_call_and_return_conditional_losses_129460o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?J
?
I__inference_sequential_19_layer_call_and_return_conditional_losses_129789
conv2d_36_input*
conv2d_36_129739:
conv2d_36_129741:*
conv2d_37_129746:
conv2d_37_129748:"
dense_54_129754:	?px
dense_54_129756:x!
dense_55_129760:xT
dense_55_129762:T!
dense_56_129765:T
dense_56_129767:
identity??!conv2d_36/StatefulPartitionedCall?2conv2d_36/kernel/Regularizer/Square/ReadVariableOp?!conv2d_37/StatefulPartitionedCall?/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp? dense_54/StatefulPartitionedCall?.dense_54/kernel/Regularizer/Abs/ReadVariableOp? dense_55/StatefulPartitionedCall? dense_56/StatefulPartitionedCall?"dropout_37/StatefulPartitionedCall?"dropout_38/StatefulPartitionedCall?"dropout_39/StatefulPartitionedCall?
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCallconv2d_36_inputconv2d_36_129739conv2d_36_129741*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_129251?
$average_pooling2d_36/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_average_pooling2d_36_layer_call_and_return_conditional_losses_129261?
"dropout_37/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_36/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_129537?
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall+dropout_37/StatefulPartitionedCall:output:0conv2d_37_129746conv2d_37_129748*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????==*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_129287?
$average_pooling2d_37/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_average_pooling2d_37_layer_call_and_return_conditional_losses_129297?
"dropout_38/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_37/PartitionedCall:output:0#^dropout_37/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_38_layer_call_and_return_conditional_losses_129499?
flatten_18/PartitionedCallPartitionedCall+dropout_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????p* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_18_layer_call_and_return_conditional_losses_129312?
 dense_54/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0dense_54_129754dense_54_129756*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_54_layer_call_and_return_conditional_losses_129331?
"dropout_39/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0#^dropout_38/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_39_layer_call_and_return_conditional_losses_129460?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall+dropout_39/StatefulPartitionedCall:output:0dense_55_129760dense_55_129762*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_55_layer_call_and_return_conditional_losses_129355?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0dense_56_129765dense_56_129767*
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
GPU 2J 8? *M
fHRF
D__inference_dense_56_layer_call_and_return_conditional_losses_129372?
2conv2d_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_36_129739*&
_output_shapes
:*
dtype0?
#conv2d_36/kernel/Regularizer/SquareSquare:conv2d_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:{
"conv2d_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 conv2d_36/kernel/Regularizer/SumSum'conv2d_36/kernel/Regularizer/Square:y:0+conv2d_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
 conv2d_36/kernel/Regularizer/mulMul+conv2d_36/kernel/Regularizer/mul/x:output:0)conv2d_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
/conv2d_37/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_37_129746*&
_output_shapes
:*
dtype0?
 conv2d_37/kernel/Regularizer/AbsAbs7conv2d_37/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:{
"conv2d_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 conv2d_37/kernel/Regularizer/SumSum$conv2d_37/kernel/Regularizer/Abs:y:0+conv2d_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
 conv2d_37/kernel/Regularizer/mulMul+conv2d_37/kernel/Regularizer/mul/x:output:0)conv2d_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
.dense_54/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_54_129754*
_output_shapes
:	?px*
dtype0?
dense_54/kernel/Regularizer/AbsAbs6dense_54/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?pxr
!dense_54/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_54/kernel/Regularizer/SumSum#dense_54/kernel/Regularizer/Abs:y:0*dense_54/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_54/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dense_54/kernel/Regularizer/mulMul*dense_54/kernel/Regularizer/mul/x:output:0(dense_54/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_36/StatefulPartitionedCall3^conv2d_36/kernel/Regularizer/Square/ReadVariableOp"^conv2d_37/StatefulPartitionedCall0^conv2d_37/kernel/Regularizer/Abs/ReadVariableOp!^dense_54/StatefulPartitionedCall/^dense_54/kernel/Regularizer/Abs/ReadVariableOp!^dense_55/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall#^dropout_37/StatefulPartitionedCall#^dropout_38/StatefulPartitionedCall#^dropout_39/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2h
2conv2d_36/kernel/Regularizer/Square/ReadVariableOp2conv2d_36/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2b
/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2`
.dense_54/kernel/Regularizer/Abs/ReadVariableOp.dense_54/kernel/Regularizer/Abs/ReadVariableOp2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2H
"dropout_37/StatefulPartitionedCall"dropout_37/StatefulPartitionedCall2H
"dropout_38/StatefulPartitionedCall"dropout_38/StatefulPartitionedCall2H
"dropout_39/StatefulPartitionedCall"dropout_39/StatefulPartitionedCall:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_36_input
?
G
+__inference_dropout_37_layer_call_fn_130096

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_129268h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:???????????:W S
/
_output_shapes
:???????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_39_layer_call_and_return_conditional_losses_130255

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????x[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????x"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????x:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_130329R
8conv2d_37_kernel_regularizer_abs_readvariableop_resource:
identity??/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp?
/conv2d_37/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp8conv2d_37_kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
:*
dtype0?
 conv2d_37/kernel/Regularizer/AbsAbs7conv2d_37/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:{
"conv2d_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 conv2d_37/kernel/Regularizer/SumSum$conv2d_37/kernel/Regularizer/Abs:y:0+conv2d_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
 conv2d_37/kernel/Regularizer/mulMul+conv2d_37/kernel/Regularizer/mul/x:output:0)conv2d_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$conv2d_37/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: x
NoOpNoOp0^conv2d_37/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp
?
Q
5__inference_average_pooling2d_36_layer_call_fn_130081

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_average_pooling2d_36_layer_call_and_return_conditional_losses_129261h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????~~:W S
/
_output_shapes
:?????????~~
 
_user_specified_nameinputs
?
l
P__inference_average_pooling2d_37_layer_call_and_return_conditional_losses_129297

inputs
identity?
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
`
IdentityIdentityAvgPool:output:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????==:W S
/
_output_shapes
:?????????==
 
_user_specified_nameinputs
?
l
P__inference_average_pooling2d_36_layer_call_and_return_conditional_losses_130091

inputs
identity?
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
`
IdentityIdentityAvgPool:output:0*
T0*/
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????~~:W S
/
_output_shapes
:?????????~~
 
_user_specified_nameinputs
?

?
.__inference_sequential_19_layer_call_fn_129890

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?px
	unknown_4:x
	unknown_5:xT
	unknown_6:T
	unknown_7:T
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_19_layer_call_and_return_conditional_losses_129635o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_38_layer_call_and_return_conditional_losses_130185

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_36_layer_call_and_return_conditional_losses_130071

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?2conv2d_36/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????~~?
2conv2d_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
#conv2d_36/kernel/Regularizer/SquareSquare:conv2d_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:{
"conv2d_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 conv2d_36/kernel/Regularizer/SumSum'conv2d_36/kernel/Regularizer/Square:y:0+conv2d_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
 conv2d_36/kernel/Regularizer/mulMul+conv2d_36/kernel/Regularizer/mul/x:output:0)conv2d_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????~~?
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_36/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_36/kernel/Regularizer/Square/ReadVariableOp2conv2d_36/kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_37_layer_call_fn_130101

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_129537w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:???????????22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
)__inference_dense_55_layer_call_fn_130276

inputs
unknown:xT
	unknown_0:T
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_55_layer_call_and_return_conditional_losses_129355o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????T`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????x: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?

?
D__inference_dense_55_layer_call_and_return_conditional_losses_130287

inputs0
matmul_readvariableop_resource:xT-
biasadd_readvariableop_resource:T
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:xT*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Tr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????TP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Ta
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Tw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????x: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
d
F__inference_dropout_37_layer_call_and_return_conditional_losses_129268

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:???????????c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:???????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:???????????:W S
/
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_37_layer_call_and_return_conditional_losses_130150

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????==*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????==X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????==?
/conv2d_37/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
 conv2d_37/kernel/Regularizer/AbsAbs7conv2d_37/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:{
"conv2d_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 conv2d_37/kernel/Regularizer/SumSum$conv2d_37/kernel/Regularizer/Abs:y:0+conv2d_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
 conv2d_37/kernel/Regularizer/mulMul+conv2d_37/kernel/Regularizer/mul/x:output:0)conv2d_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????==?
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp0^conv2d_37/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2b
/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp/conv2d_37/kernel/Regularizer/Abs/ReadVariableOp:W S
/
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_130340J
7dense_54_kernel_regularizer_abs_readvariableop_resource:	?px
identity??.dense_54/kernel/Regularizer/Abs/ReadVariableOp?
.dense_54/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp7dense_54_kernel_regularizer_abs_readvariableop_resource*
_output_shapes
:	?px*
dtype0?
dense_54/kernel/Regularizer/AbsAbs6dense_54/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?pxr
!dense_54/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_54/kernel/Regularizer/SumSum#dense_54/kernel/Regularizer/Abs:y:0*dense_54/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_54/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dense_54/kernel/Regularizer/mulMul*dense_54/kernel/Regularizer/mul/x:output:0(dense_54/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_54/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: w
NoOpNoOp/^dense_54/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense_54/kernel/Regularizer/Abs/ReadVariableOp.dense_54/kernel/Regularizer/Abs/ReadVariableOp
?

?
.__inference_sequential_19_layer_call_fn_129865

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?px
	unknown_4:x
	unknown_5:xT
	unknown_6:T
	unknown_7:T
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_19_layer_call_and_return_conditional_losses_129397o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

e
F__inference_dropout_38_layer_call_and_return_conditional_losses_129499

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_18_layer_call_and_return_conditional_losses_130208

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@8  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????pY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????p"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

e
F__inference_dropout_37_layer_call_and_return_conditional_losses_129537

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU@l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:???????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:???????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:???????????w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:???????????q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:???????????a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:???????????:W S
/
_output_shapes
:???????????
 
_user_specified_nameinputs
?
l
P__inference_average_pooling2d_36_layer_call_and_return_conditional_losses_129212

inputs
identity?
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
)__inference_dense_54_layer_call_fn_130223

inputs
unknown:	?px
	unknown_0:x
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_54_layer_call_and_return_conditional_losses_129331o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????p: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????p
 
_user_specified_nameinputs
?Q
?
__inference__traced_save_130480
file_prefix/
+savev2_conv2d_36_kernel_read_readvariableop-
)savev2_conv2d_36_bias_read_readvariableop/
+savev2_conv2d_37_kernel_read_readvariableop-
)savev2_conv2d_37_bias_read_readvariableop.
*savev2_dense_54_kernel_read_readvariableop,
(savev2_dense_54_bias_read_readvariableop.
*savev2_dense_55_kernel_read_readvariableop,
(savev2_dense_55_bias_read_readvariableop.
*savev2_dense_56_kernel_read_readvariableop,
(savev2_dense_56_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_36_kernel_m_read_readvariableop4
0savev2_adam_conv2d_36_bias_m_read_readvariableop6
2savev2_adam_conv2d_37_kernel_m_read_readvariableop4
0savev2_adam_conv2d_37_bias_m_read_readvariableop5
1savev2_adam_dense_54_kernel_m_read_readvariableop3
/savev2_adam_dense_54_bias_m_read_readvariableop5
1savev2_adam_dense_55_kernel_m_read_readvariableop3
/savev2_adam_dense_55_bias_m_read_readvariableop5
1savev2_adam_dense_56_kernel_m_read_readvariableop3
/savev2_adam_dense_56_bias_m_read_readvariableop6
2savev2_adam_conv2d_36_kernel_v_read_readvariableop4
0savev2_adam_conv2d_36_bias_v_read_readvariableop6
2savev2_adam_conv2d_37_kernel_v_read_readvariableop4
0savev2_adam_conv2d_37_bias_v_read_readvariableop5
1savev2_adam_dense_54_kernel_v_read_readvariableop3
/savev2_adam_dense_54_bias_v_read_readvariableop5
1savev2_adam_dense_55_kernel_v_read_readvariableop3
/savev2_adam_dense_55_bias_v_read_readvariableop5
1savev2_adam_dense_56_kernel_v_read_readvariableop3
/savev2_adam_dense_56_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*?
value?B?(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_36_kernel_read_readvariableop)savev2_conv2d_36_bias_read_readvariableop+savev2_conv2d_37_kernel_read_readvariableop)savev2_conv2d_37_bias_read_readvariableop*savev2_dense_54_kernel_read_readvariableop(savev2_dense_54_bias_read_readvariableop*savev2_dense_55_kernel_read_readvariableop(savev2_dense_55_bias_read_readvariableop*savev2_dense_56_kernel_read_readvariableop(savev2_dense_56_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_36_kernel_m_read_readvariableop0savev2_adam_conv2d_36_bias_m_read_readvariableop2savev2_adam_conv2d_37_kernel_m_read_readvariableop0savev2_adam_conv2d_37_bias_m_read_readvariableop1savev2_adam_dense_54_kernel_m_read_readvariableop/savev2_adam_dense_54_bias_m_read_readvariableop1savev2_adam_dense_55_kernel_m_read_readvariableop/savev2_adam_dense_55_bias_m_read_readvariableop1savev2_adam_dense_56_kernel_m_read_readvariableop/savev2_adam_dense_56_bias_m_read_readvariableop2savev2_adam_conv2d_36_kernel_v_read_readvariableop0savev2_adam_conv2d_36_bias_v_read_readvariableop2savev2_adam_conv2d_37_kernel_v_read_readvariableop0savev2_adam_conv2d_37_bias_v_read_readvariableop1savev2_adam_dense_54_kernel_v_read_readvariableop/savev2_adam_dense_54_bias_v_read_readvariableop1savev2_adam_dense_55_kernel_v_read_readvariableop/savev2_adam_dense_55_bias_v_read_readvariableop1savev2_adam_dense_56_kernel_v_read_readvariableop/savev2_adam_dense_56_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::::	?px:x:xT:T:T:: : : : : : : : : :::::	?px:x:xT:T:T::::::	?px:x:xT:T:T:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	?px: 

_output_shapes
:x:$ 

_output_shapes

:xT: 

_output_shapes
:T:$	 

_output_shapes

:T: 


_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	?px: 

_output_shapes
:x:$ 

_output_shapes

:xT: 

_output_shapes
:T:$ 

_output_shapes

:T: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::, (
&
_output_shapes
:: !

_output_shapes
::%"!

_output_shapes
:	?px: #

_output_shapes
:x:$$ 

_output_shapes

:xT: %

_output_shapes
:T:$& 

_output_shapes

:T: '

_output_shapes
::(

_output_shapes
: 
?
Q
5__inference_average_pooling2d_37_layer_call_fn_130160

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_average_pooling2d_37_layer_call_and_return_conditional_losses_129297h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????==:W S
/
_output_shapes
:?????????==
 
_user_specified_nameinputs
?
?
E__inference_conv2d_36_layer_call_and_return_conditional_losses_129251

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?2conv2d_36/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????~~?
2conv2d_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
#conv2d_36/kernel/Regularizer/SquareSquare:conv2d_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:{
"conv2d_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
 conv2d_36/kernel/Regularizer/SumSum'conv2d_36/kernel/Regularizer/Square:y:0+conv2d_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??8?
 conv2d_36/kernel/Regularizer/mulMul+conv2d_36/kernel/Regularizer/mul/x:output:0)conv2d_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????~~?
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_36/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_36/kernel/Regularizer/Square/ReadVariableOp2conv2d_36/kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

e
F__inference_dropout_37_layer_call_and_return_conditional_losses_130118

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU@l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:???????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:???????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:???????????w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:???????????q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:???????????a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:???????????:W S
/
_output_shapes
:???????????
 
_user_specified_nameinputs
?

e
F__inference_dropout_38_layer_call_and_return_conditional_losses_130197

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_dense_56_layer_call_fn_130296

inputs
unknown:T
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
GPU 2J 8? *M
fHRF
D__inference_dense_56_layer_call_and_return_conditional_losses_129372o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????T: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
Q
5__inference_average_pooling2d_37_layer_call_fn_130155

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_average_pooling2d_37_layer_call_and_return_conditional_losses_129224?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
l
P__inference_average_pooling2d_37_layer_call_and_return_conditional_losses_129224

inputs
identity?
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_37_layer_call_and_return_conditional_losses_130106

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:???????????c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:???????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:???????????:W S
/
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_37_layer_call_fn_130133

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????==*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_129287w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????==`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
$__inference_signature_wrapper_129840
conv2d_36_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?px
	unknown_4:x
	unknown_5:xT
	unknown_6:T
	unknown_7:T
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_36_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_129203o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_36_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
U
conv2d_36_inputB
!serving_default_conv2d_36_input:0???????????<
dense_560
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_sequential
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
&	variables
'trainable_variables
(regularization_losses
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
*	variables
+trainable_variables
,regularization_losses
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
.	variables
/trainable_variables
0regularization_losses
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

2kernel
3bias
4	variables
5trainable_variables
6regularization_losses
7	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
8	variables
9trainable_variables
:regularization_losses
;	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

<kernel
=bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Bkernel
Cbias
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Hiter

Ibeta_1

Jbeta_2
	Kdecay
Llearning_ratem?m? m?!m?2m?3m?<m?=m?Bm?Cm?v?v? v?!v?2v?3v?<v?=v?Bv?Cv?"
	optimizer
f
0
1
 2
!3
24
35
<6
=7
B8
C9"
trackable_list_wrapper
f
0
1
 2
!3
24
35
<6
=7
B8
C9"
trackable_list_wrapper
8
?0
?1
?2"
trackable_list_wrapper
?
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
*:(2conv2d_36/kernel
:2conv2d_36/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(2conv2d_37/kernel
:2conv2d_37/bias
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
"	variables
#trainable_variables
$regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
&	variables
'trainable_variables
(regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
*	variables
+trainable_variables
,regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
.	variables
/trainable_variables
0regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?px2dense_54/kernel
:x2dense_54/bias
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
4	variables
5trainable_variables
6regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
8	variables
9trainable_variables
:regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:xT2dense_55/kernel
:T2dense_55/bias
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
>	variables
?trainable_variables
@regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:T2dense_56/kernel
:2dense_56/bias
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
0
?0
?1"
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
(
?0"
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
(
?0"
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
 "
trackable_list_wrapper
(
?0"
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
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
/:-2Adam/conv2d_36/kernel/m
!:2Adam/conv2d_36/bias/m
/:-2Adam/conv2d_37/kernel/m
!:2Adam/conv2d_37/bias/m
':%	?px2Adam/dense_54/kernel/m
 :x2Adam/dense_54/bias/m
&:$xT2Adam/dense_55/kernel/m
 :T2Adam/dense_55/bias/m
&:$T2Adam/dense_56/kernel/m
 :2Adam/dense_56/bias/m
/:-2Adam/conv2d_36/kernel/v
!:2Adam/conv2d_36/bias/v
/:-2Adam/conv2d_37/kernel/v
!:2Adam/conv2d_37/bias/v
':%	?px2Adam/dense_54/kernel/v
 :x2Adam/dense_54/bias/v
&:$xT2Adam/dense_55/kernel/v
 :T2Adam/dense_55/bias/v
&:$T2Adam/dense_56/kernel/v
 :2Adam/dense_56/bias/v
?2?
.__inference_sequential_19_layer_call_fn_129420
.__inference_sequential_19_layer_call_fn_129865
.__inference_sequential_19_layer_call_fn_129890
.__inference_sequential_19_layer_call_fn_129683?
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
I__inference_sequential_19_layer_call_and_return_conditional_losses_129954
I__inference_sequential_19_layer_call_and_return_conditional_losses_130039
I__inference_sequential_19_layer_call_and_return_conditional_losses_129736
I__inference_sequential_19_layer_call_and_return_conditional_losses_129789?
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
?B?
!__inference__wrapped_model_129203conv2d_36_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_conv2d_36_layer_call_fn_130054?
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
E__inference_conv2d_36_layer_call_and_return_conditional_losses_130071?
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
?2?
5__inference_average_pooling2d_36_layer_call_fn_130076
5__inference_average_pooling2d_36_layer_call_fn_130081?
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
?2?
P__inference_average_pooling2d_36_layer_call_and_return_conditional_losses_130086
P__inference_average_pooling2d_36_layer_call_and_return_conditional_losses_130091?
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
?2?
+__inference_dropout_37_layer_call_fn_130096
+__inference_dropout_37_layer_call_fn_130101?
???
FullArgSpec)
args!?
jself
jinputs

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
F__inference_dropout_37_layer_call_and_return_conditional_losses_130106
F__inference_dropout_37_layer_call_and_return_conditional_losses_130118?
???
FullArgSpec)
args!?
jself
jinputs

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
?2?
*__inference_conv2d_37_layer_call_fn_130133?
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
E__inference_conv2d_37_layer_call_and_return_conditional_losses_130150?
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
?2?
5__inference_average_pooling2d_37_layer_call_fn_130155
5__inference_average_pooling2d_37_layer_call_fn_130160?
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
?2?
P__inference_average_pooling2d_37_layer_call_and_return_conditional_losses_130165
P__inference_average_pooling2d_37_layer_call_and_return_conditional_losses_130170?
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
?2?
+__inference_dropout_38_layer_call_fn_130175
+__inference_dropout_38_layer_call_fn_130180?
???
FullArgSpec)
args!?
jself
jinputs

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
F__inference_dropout_38_layer_call_and_return_conditional_losses_130185
F__inference_dropout_38_layer_call_and_return_conditional_losses_130197?
???
FullArgSpec)
args!?
jself
jinputs

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
?2?
+__inference_flatten_18_layer_call_fn_130202?
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
F__inference_flatten_18_layer_call_and_return_conditional_losses_130208?
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
)__inference_dense_54_layer_call_fn_130223?
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
D__inference_dense_54_layer_call_and_return_conditional_losses_130240?
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
?2?
+__inference_dropout_39_layer_call_fn_130245
+__inference_dropout_39_layer_call_fn_130250?
???
FullArgSpec)
args!?
jself
jinputs

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
F__inference_dropout_39_layer_call_and_return_conditional_losses_130255
F__inference_dropout_39_layer_call_and_return_conditional_losses_130267?
???
FullArgSpec)
args!?
jself
jinputs

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
?2?
)__inference_dense_55_layer_call_fn_130276?
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
D__inference_dense_55_layer_call_and_return_conditional_losses_130287?
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
)__inference_dense_56_layer_call_fn_130296?
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
D__inference_dense_56_layer_call_and_return_conditional_losses_130307?
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
__inference_loss_fn_0_130318?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_130329?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_130340?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
$__inference_signature_wrapper_129840conv2d_36_input"?
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
 ?
!__inference__wrapped_model_129203?
 !23<=BCB??
8?5
3?0
conv2d_36_input???????????
? "3?0
.
dense_56"?
dense_56??????????
P__inference_average_pooling2d_36_layer_call_and_return_conditional_losses_130086?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
P__inference_average_pooling2d_36_layer_call_and_return_conditional_losses_130091h7?4
-?*
(?%
inputs?????????~~
? "-?*
#? 
0???????????
? ?
5__inference_average_pooling2d_36_layer_call_fn_130076?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
5__inference_average_pooling2d_36_layer_call_fn_130081[7?4
-?*
(?%
inputs?????????~~
? " ?????????????
P__inference_average_pooling2d_37_layer_call_and_return_conditional_losses_130165?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
P__inference_average_pooling2d_37_layer_call_and_return_conditional_losses_130170h7?4
-?*
(?%
inputs?????????==
? "-?*
#? 
0?????????
? ?
5__inference_average_pooling2d_37_layer_call_fn_130155?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
5__inference_average_pooling2d_37_layer_call_fn_130160[7?4
-?*
(?%
inputs?????????==
? " ???????????
E__inference_conv2d_36_layer_call_and_return_conditional_losses_130071n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????~~
? ?
*__inference_conv2d_36_layer_call_fn_130054a9?6
/?,
*?'
inputs???????????
? " ??????????~~?
E__inference_conv2d_37_layer_call_and_return_conditional_losses_130150l !7?4
-?*
(?%
inputs???????????
? "-?*
#? 
0?????????==
? ?
*__inference_conv2d_37_layer_call_fn_130133_ !7?4
-?*
(?%
inputs???????????
? " ??????????==?
D__inference_dense_54_layer_call_and_return_conditional_losses_130240]230?-
&?#
!?
inputs??????????p
? "%?"
?
0?????????x
? }
)__inference_dense_54_layer_call_fn_130223P230?-
&?#
!?
inputs??????????p
? "??????????x?
D__inference_dense_55_layer_call_and_return_conditional_losses_130287\<=/?,
%?"
 ?
inputs?????????x
? "%?"
?
0?????????T
? |
)__inference_dense_55_layer_call_fn_130276O<=/?,
%?"
 ?
inputs?????????x
? "??????????T?
D__inference_dense_56_layer_call_and_return_conditional_losses_130307\BC/?,
%?"
 ?
inputs?????????T
? "%?"
?
0?????????
? |
)__inference_dense_56_layer_call_fn_130296OBC/?,
%?"
 ?
inputs?????????T
? "???????????
F__inference_dropout_37_layer_call_and_return_conditional_losses_130106l;?8
1?.
(?%
inputs???????????
p 
? "-?*
#? 
0???????????
? ?
F__inference_dropout_37_layer_call_and_return_conditional_losses_130118l;?8
1?.
(?%
inputs???????????
p
? "-?*
#? 
0???????????
? ?
+__inference_dropout_37_layer_call_fn_130096_;?8
1?.
(?%
inputs???????????
p 
? " ?????????????
+__inference_dropout_37_layer_call_fn_130101_;?8
1?.
(?%
inputs???????????
p
? " ?????????????
F__inference_dropout_38_layer_call_and_return_conditional_losses_130185l;?8
1?.
(?%
inputs?????????
p 
? "-?*
#? 
0?????????
? ?
F__inference_dropout_38_layer_call_and_return_conditional_losses_130197l;?8
1?.
(?%
inputs?????????
p
? "-?*
#? 
0?????????
? ?
+__inference_dropout_38_layer_call_fn_130175_;?8
1?.
(?%
inputs?????????
p 
? " ???????????
+__inference_dropout_38_layer_call_fn_130180_;?8
1?.
(?%
inputs?????????
p
? " ???????????
F__inference_dropout_39_layer_call_and_return_conditional_losses_130255\3?0
)?&
 ?
inputs?????????x
p 
? "%?"
?
0?????????x
? ?
F__inference_dropout_39_layer_call_and_return_conditional_losses_130267\3?0
)?&
 ?
inputs?????????x
p
? "%?"
?
0?????????x
? ~
+__inference_dropout_39_layer_call_fn_130245O3?0
)?&
 ?
inputs?????????x
p 
? "??????????x~
+__inference_dropout_39_layer_call_fn_130250O3?0
)?&
 ?
inputs?????????x
p
? "??????????x?
F__inference_flatten_18_layer_call_and_return_conditional_losses_130208a7?4
-?*
(?%
inputs?????????
? "&?#
?
0??????????p
? ?
+__inference_flatten_18_layer_call_fn_130202T7?4
-?*
(?%
inputs?????????
? "???????????p;
__inference_loss_fn_0_130318?

? 
? "? ;
__inference_loss_fn_1_130329 ?

? 
? "? ;
__inference_loss_fn_2_1303402?

? 
? "? ?
I__inference_sequential_19_layer_call_and_return_conditional_losses_129736
 !23<=BCJ?G
@?=
3?0
conv2d_36_input???????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_19_layer_call_and_return_conditional_losses_129789
 !23<=BCJ?G
@?=
3?0
conv2d_36_input???????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_19_layer_call_and_return_conditional_losses_129954v
 !23<=BCA?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_19_layer_call_and_return_conditional_losses_130039v
 !23<=BCA?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????
? ?
.__inference_sequential_19_layer_call_fn_129420r
 !23<=BCJ?G
@?=
3?0
conv2d_36_input???????????
p 

 
? "???????????
.__inference_sequential_19_layer_call_fn_129683r
 !23<=BCJ?G
@?=
3?0
conv2d_36_input???????????
p

 
? "???????????
.__inference_sequential_19_layer_call_fn_129865i
 !23<=BCA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
.__inference_sequential_19_layer_call_fn_129890i
 !23<=BCA?>
7?4
*?'
inputs???????????
p

 
? "???????????
$__inference_signature_wrapper_129840?
 !23<=BCU?R
? 
K?H
F
conv2d_36_input3?0
conv2d_36_input???????????"3?0
.
dense_56"?
dense_56?????????