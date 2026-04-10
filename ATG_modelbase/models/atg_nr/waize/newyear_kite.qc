// Created by Crowbar 0.67

$modelname "solve_nr\waize\Newyear_Kite.mdl"

$bodygroup "props21"
{
	studio "props21.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -11.615 -5.931 41.025

$cdmaterials "models\solve_nr\waize\"

$cbox 0 0 0 0 0 0

$bbox -57.509 -41.88 21.697 69.371 18.649 60.353

$definebone "blender_implicit" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "foot_short_R_joint" "" 1.989983 6.945155 17.629274 0 -179.999978 0 0 0 0 0 0 0
$definebone "foot_short_C_joint" "" 0 7.180308 17.629274 0 -179.999978 0 0 0 0 0 0 0
$definebone "foot_short_L_joint" "" -1.989983 6.945155 17.629274 0 -179.999978 0 0 0 0 0 0 0
$definebone "foot_long_R_joint" "" 3.714634 6.635061 17.629274 0 -179.999978 0 0 0 0 0 0 0
$definebone "foot_long_R1_joint" "foot_long_R_joint" -0.000001 0 -6.6329 0 0 0 0 0 0 0 0 0
$definebone "foot_long_R2_joint" "foot_long_R1_joint" 0 0 -6.632899 89.999982 -179.999978 0 0 0 0 0 0 0
$definebone "foot_long_L_joint" "" -3.714634 6.635061 17.629274 0 -179.999978 0 0 0 0 0 0 0
$definebone "foot_long_L1_joint" "foot_long_L_joint" -0.000001 0 -6.632901 89.999982 -179.999978 0 0 0 0 0 0 0
$definebone "foot_long_L2_joint" "foot_long_L1_joint" 6.632898 0 0.000003 0 0 0 0 0 0 0 0 0

$jigglebone "foot_short_R_joint"
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
		angle_constraint 15
	}
}
$jigglebone "foot_short_C_joint"
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
		angle_constraint 15
	}
}
$jigglebone "foot_short_L_joint"
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
		angle_constraint 15
	}
}
$jigglebone "foot_long_R_joint"
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
		angle_constraint 15
	}
}
$jigglebone "foot_long_R1_joint"
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
		angle_constraint 15
	}
}
$jigglebone "foot_long_R2_joint"
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
		angle_constraint 15
	}
}
$jigglebone "foot_long_L_joint"
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
		angle_constraint 15
	}
}
$jigglebone "foot_long_L1_joint"
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
		angle_constraint 15
	}
}
$jigglebone "foot_long_L2_joint"
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
		angle_constraint 15
	}
}

$sequence "idle" {
	"newyear_kite_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "newyear_kite_physics.smd"
{
	$mass 61.36477
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
