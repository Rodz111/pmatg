// Created by Crowbar 0.67

$modelname "solve_nr\waize\Horn_Guardian.mdl"

$bodygroup "props12"
{
	studio "props12.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -11.615 -5.931 41.025

$cdmaterials "models\solve_nr\waize\"

$cbox 0 0 0 0 0 0

$bbox -57.509 -41.88 21.697 69.371 18.649 60.353

$definebone "Head" "" 0.000024 0.51691 -2.902668 -89.999927 179.999677 0 0 0 0 0 0 0
$definebone "Ribbon_F1" "Head" 3.805123 0.188875 3.839142 -6.396043 176.989121 70.386718 0 0 0 0 0 0
$definebone "Ribbon_F2" "Ribbon_F1" 1.429948 -0.000002 0.000001 0 0 0 0 0 0 0 0 0
$definebone "Ribbon_F3" "Ribbon_F2" 1.429949 -0.000002 0.000002 -0.000058 -0.000114 0 0 0 0 0 0 0
$definebone "Ribbon_B1" "Head" 3.8047 -0.491591 3.591451 -3.901613 -173.235399 69.507058 0 0 0 0 0 0
$definebone "Ribbon_B2" "Ribbon_B1" 1.429948 0 -0.000001 0 0 0.000002 0 0 0 0 0 0
$definebone "Ribbon_B3" "Ribbon_B2" 1.429948 0.000001 0 0.000058 0.000058 0.000003 0 0 0 0 0 0

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
$jigglebone "Ribbon_F2"
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
$jigglebone "Ribbon_F3"
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
$jigglebone "Ribbon_B3"
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
	"horn_guardian_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "horn_guardian_physics.smd"
{
	$mass 9.217649
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
