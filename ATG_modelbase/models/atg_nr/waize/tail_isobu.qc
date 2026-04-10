// Created by Crowbar 0.67

$modelname "solve_nr\waize\Tail_Isobu.mdl"

$bodygroup "props34"
{
	studio "props34.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -11.615 -5.931 41.025

$cdmaterials "models\solve_nr\waize\"

$cbox 0 0 0 0 0 0

$bbox -57.509 -41.88 21.697 69.371 18.649 60.353

$definebone "Tail01" "" 0 1.964466 4.166334 0 0 -153.511029 0 0 0 0 0 0
$definebone "Tail02" "Tail01" 0 0 0.189957 0 0 51.116835 0 0 0 0 0 0
$definebone "Tail03" "Tail02" 0 0 0.172688 0 0 68.129265 0 0 0 0 0 0
$definebone "Tail04" "Tail03" 0 0 0.172688 0 0 41.076317 0 0 0 0 0 0
$definebone "Tail05" "" 3.14587 1.25852 4.166334 -0.000057 -34.999986 -153.511029 0 0 0 0 0 0
$definebone "Tail06" "Tail05" 0 0 0.176682 0 -0.000003 51.116835 0 0 0 0 0 0
$definebone "Tail07" "Tail06" 0 0 0.16062 -0.000003 -0.000003 68.129265 0 0 0 0 0 0
$definebone "Tail08" "Tail07" 0 0 0.16062 -0.000003 0.000002 41.076379 0 0 0 0 0 0
$definebone "Tail09" "" -3.145866 1.258521 4.166439 0 34.999986 26.488985 0 0 0 0 0 0
$definebone "Tail10" "Tail09" 0 0 -0.176683 0.000001 0.000002 51.116832 0 0 0 0 0 0
$definebone "Tail11" "Tail10" 0 0 -0.16062 0.000003 0.000001 68.129265 0 0 0 0 0 0
$definebone "Tail12" "Tail11" 0 0 -0.160621 0.000002 -0.000003 41.076375 0 0 0 0 0 0

$jigglebone "Tail01"
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
$jigglebone "Tail02"
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
$jigglebone "Tail03"
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
$jigglebone "Tail04"
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
$jigglebone "Tail05"
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
$jigglebone "Tail06"
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
$jigglebone "Tail07"
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
$jigglebone "Tail08"
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
$jigglebone "Tail09"
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
$jigglebone "Tail10"
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
$jigglebone "Tail11"
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
$jigglebone "Tail12"
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
	"tail_isobu_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "tail_isobu_physics.smd"
{
	$mass 94.66199
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
