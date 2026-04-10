// Created by Crowbar 0.67

$modelname "solve_nr\waize\Tail_Choumei.mdl"

$bodygroup "props32"
{
	studio "props32.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -11.615 -5.931 41.025

$cdmaterials "models\solve_nr\waize\"

$cbox 0 0 0 0 0 0

$bbox -57.509 -41.88 21.697 69.371 18.649 60.353

$definebone "blender_implicit" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tail01" "" 0 7.226901 5.695492 0 0 -166.761254 0 0 0 0 0 0
$definebone "tail02" "tail01" 0 0.000001 2.834876 0 0 28.371209 0 0 0 0 0 0
$definebone "tail03" "tail02" 0 0.00001 2.834872 0 0 67.728484 0 0 0 0 0 0
$definebone "tail04" "tail03" 0 -0.000005 2.834866 0 0 76.592136 0 0 0 0 0 0
$definebone "Wings01" "" 3.136513 6.92683 6.550397 41.84208 39.613041 18.027543 0 0 0 0 0 0
$definebone "Wings02" "Wings01" -0.060486 -0.346232 3.879286 -6.911531 20.016397 -3.493495 0 0 0 0 0 0
$definebone "Wings03" "" 2.142249 7.134175 7.398787 37.377186 26.623055 2.271319 0 0 0 0 0 0
$definebone "Wings04" "Wings03" 0.044463 -0.45544 5.784894 -5.551215 24.397799 -6.263516 0 0 0 0 0 0
$definebone "Wings05" "" 1.161128 7.363525 8.042955 28.640901 40.730023 -3.060282 0 0 0 0 0 0
$definebone "Wings06" "Wings05" -0.032998 -0.18026 6.076565 -5.703449 21.449478 -2.235967 0 0 0 0 0 0
$definebone "Wings07" "" -1.161126 7.363515 8.042956 -28.640901 -40.730023 176.939739 0 0 0 0 0 0
$definebone "Wings08" "Wings07" 0.033043 0.180243 -6.076664 -5.70351 21.449536 -2.236025 0 0 0 0 0 0
$definebone "Wings09" "" -2.142249 7.134185 7.398777 -37.377244 -26.623055 -177.728694 0 0 0 0 0 0
$definebone "Wings10" "Wings09" -0.044413 0.455451 -5.784939 -5.551271 24.397919 -6.263403 0 0 0 0 0 0
$definebone "Wings11" "" -3.13651 6.926837 6.550403 -41.842015 -39.612983 -161.972472 0 0 0 0 0 0
$definebone "Wings12" "Wings11" 0.060399 0.346295 -3.87756 -6.911588 20.016397 -3.493493 0 0 0 0 0 0

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
$jigglebone "Wings01"
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
$jigglebone "Wings02"
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
$jigglebone "Wings03"
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
$jigglebone "Wings04"
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
$jigglebone "Wings05"
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
$jigglebone "Wings06"
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
$jigglebone "Wings07"
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
$jigglebone "Wings08"
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
$jigglebone "Wings09"
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
$jigglebone "Wings10"
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
$jigglebone "Wings11"
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
$jigglebone "Wings12"
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
	"tail_choumei_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "tail_choumei_physics.smd"
{
	$mass 106.5183
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
