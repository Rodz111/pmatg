// Created by Crowbar 0.67

$modelname "solve_nr\waize\LightningOrnaments_02.mdl"

$bodygroup "props14"
{
	studio "props14.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -11.615 -5.931 41.025

$cdmaterials "models\solve_nr\waize\"

$cbox 0 0 0 0 0 0

$bbox -57.509 -41.88 21.697 69.371 18.649 60.353

$definebone "Head" "" -0.000093 0.598499 -0.069275 -89.999791 179.999513 0 0 0 0 0 0 0
$definebone "Ribbon_F1" "Head" 2.927537 3.002922 2.868233 -0.000115 179.999978 0 0 0 0 0 0 0
$definebone "Ribbon_B1" "Head" 3.555015 1.764436 3.641387 -5.48418 179.208482 0.128858 0 0 0 0 0 0
$definebone "Ribbon_B2" "Ribbon_B1" 1.912349 -0.000026 0.000679 7.114762 0.000172 0 0 0 0 0 0 0

$jigglebone "Ribbon_F1"
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
$jigglebone "Ribbon_B1"
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
$jigglebone "Ribbon_B2"
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
	"lightningornaments_02_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "lightningornaments_02_physics.smd"
{
	$mass 14.727
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
