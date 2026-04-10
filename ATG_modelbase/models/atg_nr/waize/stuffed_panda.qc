// Created by Crowbar 0.67

$modelname "solve_nr\waize\Stuffed_Panda.mdl"

$bodygroup "props31"
{
	studio "props31.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -11.615 -5.931 41.025

$cdmaterials "models\solve_nr\waize\"

$cbox 0 0 0 0 0 0

$bbox -57.509 -41.88 21.697 69.371 18.649 60.353

$definebone "Tail_Hips" "" 0 0 0 -89.999982 179.999978 0 0 0 0 0 0 0
$definebone "panda_all" "Tail_Hips" 0.044752 -0.169705 0.012598 12.196209 2.882379 4.913629 0 0 0 0 0 0
$definebone "panda_Right_upperleg" "panda_all" -0.004515 0.011021 0.03244 6.391285 -10.444103 -179.999909 0 0 0 0 0 0
$definebone "panda_Right_leg" "panda_Right_upperleg" -0.077004 0 -0.004675 -19.538429 -0.000001 0 0 0 0 0 0 0
$definebone "panda_Left_upperleg" "panda_all" -0.004514 0.011021 -0.03244 6.39297 169.55584 179.999937 0 0 0 0 0 0
$definebone "panda_Left_leg" "panda_Left_upperleg" 0.077003 0 0.004675 -19.538432 0.000056 0 0 0 0 0 0 0
$definebone "panda_spine" "panda_all" 0.097436 0.003412 0.000001 -0.001032 -13.306487 0.000115 0 0 0 0 0 0
$definebone "panda_neck" "panda_spine" 0.09669 0.000075 0 0.000057 -1.30709 0 0 0 0 0 0 0
$definebone "panda_Left_upperarm" "panda_spine" 0.07389 -0.005936 -0.037687 55.558955 -179.066018 178.409473 0 0 0 0 0 0
$definebone "panda_Left_arm" "panda_Left_upperarm" 0.081865 0 0 1.852997 -1.508826 -0.013522 0 0 0 0 0 0
$definebone "panda_Right_upperarm" "panda_spine" 0.07389 -0.005936 0.037686 55.552097 0.933691 178.409541 0 0 0 0 0 0
$definebone "panda_Right_arm" "panda_Right_upperarm" -0.081879 0.000001 -0.000011 1.852943 -1.508998 -0.01335 0 0 0 0 0 0

$jigglebone "panda_Right_upperleg"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 3
	}
}
$jigglebone "panda_Right_leg"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 3
	}
}
$jigglebone "panda_Left_upperleg"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 3
	}
}
$jigglebone "panda_Left_leg"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 3
	}
}
$jigglebone "panda_spine"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 3
	}
}
$jigglebone "panda_neck"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 3
	}
}
$jigglebone "panda_Left_upperarm"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 3
	}
}
$jigglebone "panda_Left_arm"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 3
	}
}
$jigglebone "panda_Right_upperarm"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 3
	}
}
$jigglebone "panda_Right_arm"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 3
	}
}

$sequence "idle" {
	"stuffed_panda_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "stuffed_panda_physics.smd"
{
	$mass 68.58144
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
