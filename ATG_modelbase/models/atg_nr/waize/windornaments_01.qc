// Created by Crowbar 0.67

$modelname "solve_nr\waize\WindOrnaments_01.mdl"

$bodygroup "props45"
{
	studio "props45.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -11.615 -5.931 41.025

$cdmaterials "models\solve_nr\waize\"

$cbox 0 0 0 0 0 0

$bbox -57.509 -41.88 21.697 69.371 18.649 60.353

$definebone "string_01" "" 0.36444 2.320782 7.15147 52.374246 103.000223 0.000057 0 0 0 0 0 0
$definebone "string_02" "string_01" 1.185197 0 0.000001 -0.000056 0.000057 0.000058 0 0 0 0 0 0

$jigglebone "string_01"
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
$jigglebone "string_02"
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
	"windornaments_01_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "windornaments_01_physics.smd"
{
	$mass 4.847904
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
