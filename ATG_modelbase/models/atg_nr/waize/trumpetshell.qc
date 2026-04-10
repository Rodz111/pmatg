// Created by Crowbar 0.67

$modelname "solve_nr\waize\TrumpetShell.mdl"

$bodygroup "props42"
{
	studio "props42.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -11.615 -5.931 41.025

$cdmaterials "models\solve_nr\waize\"

$cbox 0 0 0 0 0 0

$bbox -57.509 -41.88 21.697 69.371 18.649 60.353

$definebone "blender_implicit" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "left_01" "" 5.238334 1.593723 2.790304 80.793297 3.253713 3.211887 0 0 0 0 0 0
$definebone "left_02" "left_01" 0.110068 0.012526 0 -0.27353 0.457507 -0.004641 0 0 0 0 0 0

$jigglebone "left_01"
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
$jigglebone "left_02"
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
	"trumpetshell_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "trumpetshell_physics.smd"
{
	$mass 25.60595
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
