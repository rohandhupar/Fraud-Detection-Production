÷
á´
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
8
Const
output"dtype"
valuetensor"
dtypetype
=
Greater
x"T
y"T
z
"
Ttype:
2	
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

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
1
Square
x"T
y"T"
Ttype:

2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.13.12b'v1.13.0-rc2-5-g6612da8'ð|

"w1/Initializer/random_normal/shapeConst*
valueB"      *
_class
	loc:@w1*
dtype0*
_output_shapes
:
}
!w1/Initializer/random_normal/meanConst*
valueB
 *    *
_class
	loc:@w1*
dtype0*
_output_shapes
: 

#w1/Initializer/random_normal/stddevConst*
valueB
 *  >*
_class
	loc:@w1*
dtype0*
_output_shapes
: 
Ó
1w1/Initializer/random_normal/RandomStandardNormalRandomStandardNormal"w1/Initializer/random_normal/shape*
T0*
_class
	loc:@w1*
seed2 *
dtype0*
_output_shapes

:*

seed 
¿
 w1/Initializer/random_normal/mulMul1w1/Initializer/random_normal/RandomStandardNormal#w1/Initializer/random_normal/stddev*
T0*
_class
	loc:@w1*
_output_shapes

:
¨
w1/Initializer/random_normalAdd w1/Initializer/random_normal/mul!w1/Initializer/random_normal/mean*
T0*
_class
	loc:@w1*
_output_shapes

:

w1
VariableV2*
_class
	loc:@w1*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 

	w1/AssignAssignw1w1/Initializer/random_normal*
use_locking(*
T0*
_class
	loc:@w1*
validate_shape(*
_output_shapes

:
W
w1/readIdentityw1*
T0*
_class
	loc:@w1*
_output_shapes

:

"w2/Initializer/random_normal/shapeConst*
valueB"      *
_class
	loc:@w2*
dtype0*
_output_shapes
:
}
!w2/Initializer/random_normal/meanConst*
valueB
 *    *
_class
	loc:@w2*
dtype0*
_output_shapes
: 

#w2/Initializer/random_normal/stddevConst*
valueB
 *  >*
_class
	loc:@w2*
dtype0*
_output_shapes
: 
Ó
1w2/Initializer/random_normal/RandomStandardNormalRandomStandardNormal"w2/Initializer/random_normal/shape*
dtype0*
_output_shapes

:*

seed *
T0*
_class
	loc:@w2*
seed2 
¿
 w2/Initializer/random_normal/mulMul1w2/Initializer/random_normal/RandomStandardNormal#w2/Initializer/random_normal/stddev*
_output_shapes

:*
T0*
_class
	loc:@w2
¨
w2/Initializer/random_normalAdd w2/Initializer/random_normal/mul!w2/Initializer/random_normal/mean*
T0*
_class
	loc:@w2*
_output_shapes

:

w2
VariableV2*
dtype0*
_output_shapes

:*
shared_name *
_class
	loc:@w2*
	container *
shape
:

	w2/AssignAssignw2w2/Initializer/random_normal*
T0*
_class
	loc:@w2*
validate_shape(*
_output_shapes

:*
use_locking(
W
w2/readIdentityw2*
_output_shapes

:*
T0*
_class
	loc:@w2

"w3/Initializer/random_normal/shapeConst*
valueB"      *
_class
	loc:@w3*
dtype0*
_output_shapes
:
}
!w3/Initializer/random_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
	loc:@w3

#w3/Initializer/random_normal/stddevConst*
valueB
 *  >*
_class
	loc:@w3*
dtype0*
_output_shapes
: 
Ó
1w3/Initializer/random_normal/RandomStandardNormalRandomStandardNormal"w3/Initializer/random_normal/shape*

seed *
T0*
_class
	loc:@w3*
seed2 *
dtype0*
_output_shapes

:
¿
 w3/Initializer/random_normal/mulMul1w3/Initializer/random_normal/RandomStandardNormal#w3/Initializer/random_normal/stddev*
T0*
_class
	loc:@w3*
_output_shapes

:
¨
w3/Initializer/random_normalAdd w3/Initializer/random_normal/mul!w3/Initializer/random_normal/mean*
T0*
_class
	loc:@w3*
_output_shapes

:

w3
VariableV2*
dtype0*
_output_shapes

:*
shared_name *
_class
	loc:@w3*
	container *
shape
:

	w3/AssignAssignw3w3/Initializer/random_normal*
T0*
_class
	loc:@w3*
validate_shape(*
_output_shapes

:*
use_locking(
W
w3/readIdentityw3*
T0*
_class
	loc:@w3*
_output_shapes

:

"w4/Initializer/random_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *
_class
	loc:@w4
}
!w4/Initializer/random_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
	loc:@w4

#w4/Initializer/random_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  >*
_class
	loc:@w4
Ó
1w4/Initializer/random_normal/RandomStandardNormalRandomStandardNormal"w4/Initializer/random_normal/shape*
dtype0*
_output_shapes

:*

seed *
T0*
_class
	loc:@w4*
seed2 
¿
 w4/Initializer/random_normal/mulMul1w4/Initializer/random_normal/RandomStandardNormal#w4/Initializer/random_normal/stddev*
T0*
_class
	loc:@w4*
_output_shapes

:
¨
w4/Initializer/random_normalAdd w4/Initializer/random_normal/mul!w4/Initializer/random_normal/mean*
T0*
_class
	loc:@w4*
_output_shapes

:

w4
VariableV2*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name *
_class
	loc:@w4

	w4/AssignAssignw4w4/Initializer/random_normal*
use_locking(*
T0*
_class
	loc:@w4*
validate_shape(*
_output_shapes

:
W
w4/readIdentityw4*
T0*
_class
	loc:@w4*
_output_shapes

:
x
b1/Initializer/zerosConst*
valueB*    *
_class
	loc:@b1*
dtype0*
_output_shapes
:

b1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
	loc:@b1*
	container *
shape:

	b1/AssignAssignb1b1/Initializer/zeros*
use_locking(*
T0*
_class
	loc:@b1*
validate_shape(*
_output_shapes
:
S
b1/readIdentityb1*
T0*
_class
	loc:@b1*
_output_shapes
:
x
b2/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *
_class
	loc:@b2

b2
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
	loc:@b2

	b2/AssignAssignb2b2/Initializer/zeros*
T0*
_class
	loc:@b2*
validate_shape(*
_output_shapes
:*
use_locking(
S
b2/readIdentityb2*
T0*
_class
	loc:@b2*
_output_shapes
:
x
b3/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *
_class
	loc:@b3

b3
VariableV2*
shared_name *
_class
	loc:@b3*
	container *
shape:*
dtype0*
_output_shapes
:

	b3/AssignAssignb3b3/Initializer/zeros*
use_locking(*
T0*
_class
	loc:@b3*
validate_shape(*
_output_shapes
:
S
b3/readIdentityb3*
_output_shapes
:*
T0*
_class
	loc:@b3
\
PlaceholderPlaceholder*
dtype0*
_output_shapes

:*
shape
:

forward_pass/layer_1MatMulPlaceholderw1/read*
T0*
_output_shapes

:*
transpose_a( *
transpose_b( 
_
forward_pass/addAddforward_pass/layer_1b1/read*
_output_shapes

:*
T0
Z
forward_pass/SigmoidSigmoidforward_pass/add*
T0*
_output_shapes

:

forward_pass/layer_2MatMulforward_pass/Sigmoidw2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
a
forward_pass/add_1Addforward_pass/layer_2b2/read*
T0*
_output_shapes

:
^
forward_pass/Sigmoid_1Sigmoidforward_pass/add_1*
T0*
_output_shapes

:

forward_pass/layer_MatMulforward_pass/Sigmoid_1w3/read*
transpose_b( *
T0*
_output_shapes

:*
transpose_a( 
`
forward_pass/add_2Addforward_pass/layer_b3/read*
T0*
_output_shapes

:
^
forward_pass/Sigmoid_2Sigmoidforward_pass/add_2*
T0*
_output_shapes

:

forward_pass/final_layerMatMulforward_pass/Sigmoid_2w4/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
g
forward_pass/subSubforward_pass/final_layerPlaceholder*
T0*
_output_shapes

:
X
forward_pass/SquareSquareforward_pass/sub*
T0*
_output_shapes

:
c
forward_pass/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

forward_pass/MeanMeanforward_pass/Squareforward_pass/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Y
forward_pass/Const_1Const*
valueB
 *·Ñ8*
dtype0*
_output_shapes
: 
i
forward_pass/GreaterGreaterforward_pass/Meanforward_pass/Const_1*
T0*
_output_shapes
: 
v
forward_pass/case/cond/SwitchSwitchforward_pass/Greaterforward_pass/Greater*
_output_shapes
: : *
T0

m
forward_pass/case/cond/switch_tIdentityforward_pass/case/cond/Switch:1*
T0
*
_output_shapes
: 
k
forward_pass/case/cond/switch_fIdentityforward_pass/case/cond/Switch*
T0
*
_output_shapes
: 
a
forward_pass/case/cond/pred_idIdentityforward_pass/Greater*
T0
*
_output_shapes
: 

forward_pass/case/cond/ConstConst ^forward_pass/case/cond/switch_t*
dtype0*
_output_shapes
: *"
valueB BFraud Transaction

forward_pass/case/cond/Const_1Const ^forward_pass/case/cond/switch_f*#
valueB BNormal Transaction*
dtype0*
_output_shapes
: 

forward_pass/case/cond/MergeMergeforward_pass/case/cond/Const_1forward_pass/case/cond/Const*
N*
_output_shapes
: : *
T0
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
{
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*/
value&B$Bb1Bb2Bb3Bw1Bw2Bw3Bw4
q
save/SaveV2/shape_and_slicesConst*!
valueBB B B B B B B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesb1b2b3w1w2w3w4*
dtypes
	2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 

save/RestoreV2/tensor_namesConst"/device:CPU:0*/
value&B$Bb1Bb2Bb3Bw1Bw2Bw3Bw4*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*!
valueBB B B B B B B 
½
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*0
_output_shapes
:::::::*
dtypes
	2

save/AssignAssignb1save/RestoreV2*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
	loc:@b1

save/Assign_1Assignb2save/RestoreV2:1*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
	loc:@b2

save/Assign_2Assignb3save/RestoreV2:2*
T0*
_class
	loc:@b3*
validate_shape(*
_output_shapes
:*
use_locking(

save/Assign_3Assignw1save/RestoreV2:3*
T0*
_class
	loc:@w1*
validate_shape(*
_output_shapes

:*
use_locking(

save/Assign_4Assignw2save/RestoreV2:4*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*
_class
	loc:@w2

save/Assign_5Assignw3save/RestoreV2:5*
T0*
_class
	loc:@w3*
validate_shape(*
_output_shapes

:*
use_locking(

save/Assign_6Assignw4save/RestoreV2:6*
use_locking(*
T0*
_class
	loc:@w4*
validate_shape(*
_output_shapes

:

save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6
[
save_1/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
shape: *
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_95fd64f96a684ed69cff902c29040741/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 

save_1/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*/
value&B$Bb1Bb2Bb3Bw1Bw2Bw3Bw4

save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*!
valueBB B B B B B B *
dtype0*
_output_shapes
:
­
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesb1b2b3w1w2w3w4"/device:CPU:0*
dtypes
	2
¨
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
²
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
_output_shapes
: *
T0

save_1/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*/
value&B$Bb1Bb2Bb3Bw1Bw2Bw3Bw4

!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*!
valueBB B B B B B B *
dtype0*
_output_shapes
:
Å
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
	2*0
_output_shapes
:::::::

save_1/AssignAssignb1save_1/RestoreV2*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
	loc:@b1

save_1/Assign_1Assignb2save_1/RestoreV2:1*
T0*
_class
	loc:@b2*
validate_shape(*
_output_shapes
:*
use_locking(

save_1/Assign_2Assignb3save_1/RestoreV2:2*
T0*
_class
	loc:@b3*
validate_shape(*
_output_shapes
:*
use_locking(

save_1/Assign_3Assignw1save_1/RestoreV2:3*
use_locking(*
T0*
_class
	loc:@w1*
validate_shape(*
_output_shapes

:

save_1/Assign_4Assignw2save_1/RestoreV2:4*
use_locking(*
T0*
_class
	loc:@w2*
validate_shape(*
_output_shapes

:

save_1/Assign_5Assignw3save_1/RestoreV2:5*
use_locking(*
T0*
_class
	loc:@w3*
validate_shape(*
_output_shapes

:

save_1/Assign_6Assignw4save_1/RestoreV2:6*
T0*
_class
	loc:@w4*
validate_shape(*
_output_shapes

:*
use_locking(

save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"Ã
trainable_variables«¨
>
w1:0	w1/Assign	w1/read:02w1/Initializer/random_normal:08
>
w2:0	w2/Assign	w2/read:02w2/Initializer/random_normal:08
>
w3:0	w3/Assign	w3/read:02w3/Initializer/random_normal:08
>
w4:0	w4/Assign	w4/read:02w4/Initializer/random_normal:08
6
b1:0	b1/Assign	b1/read:02b1/Initializer/zeros:08
6
b2:0	b2/Assign	b2/read:02b2/Initializer/zeros:08
6
b3:0	b3/Assign	b3/read:02b3/Initializer/zeros:08"Ê
cond_context¹¶

 forward_pass/case/cond/cond_text forward_pass/case/cond/pred_id:0!forward_pass/case/cond/switch_t:0 *«
forward_pass/case/cond/Const:0
 forward_pass/case/cond/pred_id:0
!forward_pass/case/cond/switch_t:0D
 forward_pass/case/cond/pred_id:0 forward_pass/case/cond/pred_id:0

"forward_pass/case/cond/cond_text_1 forward_pass/case/cond/pred_id:0!forward_pass/case/cond/switch_f:0*­
 forward_pass/case/cond/Const_1:0
 forward_pass/case/cond/pred_id:0
!forward_pass/case/cond/switch_f:0D
 forward_pass/case/cond/pred_id:0 forward_pass/case/cond/pred_id:0"¹
	variables«¨
>
w1:0	w1/Assign	w1/read:02w1/Initializer/random_normal:08
>
w2:0	w2/Assign	w2/read:02w2/Initializer/random_normal:08
>
w3:0	w3/Assign	w3/read:02w3/Initializer/random_normal:08
>
w4:0	w4/Assign	w4/read:02w4/Initializer/random_normal:08
6
b1:0	b1/Assign	b1/read:02b1/Initializer/zeros:08
6
b2:0	b2/Assign	b2/read:02b2/Initializer/zeros:08
6
b3:0	b3/Assign	b3/read:02b3/Initializer/zeros:08*
serving_defaultw
%
inputs
Placeholder:02

class name$
forward_pass/case/cond/Merge:0 tensorflow/serving/predict