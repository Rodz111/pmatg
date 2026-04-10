// Created by Crowbar 0.67

$modelname "solve_nr\waize\WaterOrnaments_01.mdl"

$bodygroup "props43"
{
	studio "props43.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -11.615 -5.931 41.025

$cdmaterials "models\solve_nr\waize\"

$cbox 0 0 0 0 0 0

$bbox -57.509 -41.88 21.697 69.371 18.649 60.353

$definebone "blender_implicit" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "Ribbon_L1" "" 4.329805 0.646534 1.522003 -84.730259 1.545095 108.381783 0 0 0 0 0 0
$definebone "Ribbon_L2" "Ribbon_L1" -1.199218 2.095696 0.064479 -3.306654 -169.987071 -0.289747 0 0 0 0 0 0

$jigglebone "Ribbon_L1"
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
$jigglebone "Ribbon_L2"
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
	"waterornaments_01_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "waterornaments_01_physics.smd"
{
	$mass 4.53828
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
