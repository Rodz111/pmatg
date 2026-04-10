// Created by Crowbar 0.67

$modelname "solve_nr\waize\Stuffed_Burger_A.mdl"

$bodygroup "props30"
{
	studio "props30.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -11.615 -5.931 41.025

$cdmaterials "models\solve_nr\waize\"

$cbox 0 0 0 0 0 0

$bbox -57.509 -41.88 21.697 69.371 18.649 60.353

$definebone "Burger_Base" "" 0 -8.172263 0.317392 -89.999982 179.999978 0 0 0 0 0 0 0
$definebone "Burger_root" "Burger_Base" 2.144452 -7.131383 0 0 -84.904668 0 0 0 0 0 0 0
$definebone "Burger1" "Burger_root" 6.091236 3.842082 -0.433609 0 0 0 0 0 0 0 0 0
$definebone "Burger2" "Burger_root" 2.278859 2.397785 5.315478 -27.822598 94.39428 0 0 0 0 0 0 0
$definebone "Burger3" "Burger_root" -0.133537 7.525959 -0.091537 0 84.360472 0 0 0 0 0 0 0
$definebone "Burger4" "Burger_root" 1.376415 1.55376 -4.592588 21.694989 89.272437 -91.967459 0 0 0 0 0 0

$jigglebone "Burger1"
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
$jigglebone "Burger2"
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
$jigglebone "Burger3"
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
$jigglebone "Burger4"
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
	"stuffed_burger_a_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "stuffed_burger_a_physics.smd"
{
	$mass 42.49397
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
