// Created by Crowbar 0.67

$modelname "solve_nr\waize\Wing_Healer_B.mdl"

$bodygroup "props49"
{
	studio "props49.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -11.615 -5.931 41.025

$cdmaterials "models\solve_nr\waize\"

$cbox 0 0 0 0 0 0

$bbox -57.509 -41.88 21.697 69.371 18.649 60.353

$definebone "wing_Left" "" 1.282796 -0.107285 2.780163 0 0 0 0 0 0 0 0 0
$definebone "wing_Right" "" -1.282796 -0.107285 2.780163 0 0 -179.999978 0 0 0 0 0 0

$jigglebone "wing_Left"
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
$jigglebone "wing_Right"
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
	"wing_healer_b_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "wing_healer_b_physics.smd"
{
	$mass 40.99171
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
