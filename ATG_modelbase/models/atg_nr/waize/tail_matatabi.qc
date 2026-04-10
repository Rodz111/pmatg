// Created by Crowbar 0.67

$modelname "solve_nr\waize\Tail_Matatabi.mdl"

$bodygroup "props38"
{
	studio "props38.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -11.615 -5.931 41.025

$cdmaterials "models\solve_nr\waize\"

$cbox 0 0 0 0 0 0

$bbox -57.509 -41.88 21.697 69.371 18.649 60.353

$definebone "tail01" "" -1.319626 2.120268 3.537649 31.921142 100.409764 90.000098 0 0 0 0 0 0
$definebone "tail02" "tail01" 0.146123 0 0 18.29403 103.86808 5.142926 0 0 0 0 0 0
$definebone "tail03" "tail02" 0.155642 0 0 -9.983505 28.594433 4.146953 0 0 0 0 0 0
$definebone "tail04" "tail03" 0.229579 0 0 12.32736 -57.093521 17.446965 0 0 0 0 0 0
$definebone "tail05" "" 1.319635 2.120269 3.537638 -31.921196 -100.409655 -90.000098 0 0 0 0 0 0
$definebone "tail06" "tail05" -0.146122 0 0 18.293967 103.86808 5.142928 0 0 0 0 0 0
$definebone "tail07" "tail06" -0.155643 -0.000001 -0.000001 -9.983504 28.594437 4.146955 0 0 0 0 0 0
$definebone "tail08" "tail07" -0.189541 0 0 12.32742 -57.093476 17.447027 0 0 0 0 0 0

$jigglebone "tail01"
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
$jigglebone "tail02"
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
$jigglebone "tail03"
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
$jigglebone "tail04"
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
$jigglebone "tail05"
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
$jigglebone "tail06"
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
$jigglebone "tail07"
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
$jigglebone "tail08"
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
	"tail_matatabi_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "tail_matatabi_physics.smd"
{
	$mass 51.44186
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
