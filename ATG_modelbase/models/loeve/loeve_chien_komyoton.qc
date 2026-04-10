// Created by Crowbar 0.67

$modelname "loeve/loeve_chien_komyoton.mdl"

$bodygroup "studio"
{
	studio "loeve_chien_komyoton.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.013 0.491 -1.996

$cdmaterials "models\loeve\loeve_chien_komyoton\"

$cbox 0 0 0 0 0 0

$bbox -5.85 -1.557 -7.821 5.777 2.54 36.002

$hboxset "default"

$definebone "CharacterRoot" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "Hips" "CharacterRoot" 0 10.249289 19.937048 0 -89.999921 -89.999921 0 0 0 0 0 0
$definebone "Spine" "Hips" 6.789832 -0.004971 0.00001 -0.000115 2.545881 -0.000229 0 0 0 0 0 0
$definebone "Spine1" "Spine" 7.525808 -0.092505 -0.000002 0 -3.877606 0 0 0 0 0 0 0
$definebone "Neck" "Spine1" 10.497774 0.460062 -0.000004 0.000057 -17.165703 0 0 0 0 0 0 0
$definebone "Head" "Neck" 2.964033 0.795873 0 -0.000057 18.867214 0 0 0 0 0 0 0
$definebone "LeftLear01" "Head" 1.01372 -2.198065 2.621907 -45.186602 124.100822 -34.81246 0 0 0 0 0 0
$definebone "LeftLear02" "LeftLear01" 0.176748 -0.159531 1.243637 0.000009 -0.000171 0.000054 0 0 0 0 0 0
$definebone "kuti_down" "Head" 2.093992 2.623133 -0.000025 -89.99975 98.867985 0 0 0 0 0 0 0
$definebone "RightLear01" "Head" 1.013708 -2.198061 -2.621927 -45.187862 -55.897599 -34.81371 0 0 0 0 0 0
$definebone "RightLear02" "RightLear01" -0.176788 0.159517 -1.243629 0.000567 -0.000114 0.000112 0 0 0 0 0 0
$definebone "LeftShoulder" "Spine1" 6.480813 -3.296804 0.932783 -68.240188 89.954493 89.999415 0 0 0 0 0 0
$definebone "LeftArm" "LeftShoulder" 2.916324 -0.391024 -0.376859 5.866059 -68.910038 -84.330058 0 0 0 0 0 0
$definebone "LeftForeArm" "LeftArm" 11.240166 -0.00006 -0.000001 0.000006 0.000001 0.000114 0 0 0 0 0 0
$definebone "LeftHand" "LeftForeArm" 7.157774 -1.03656 0.102745 -5.96993 -52.858049 -1.182876 0 0 0 0 0 0
$definebone "LeftHandThumb" "LeftHand" 1.6836 1.232635 -0.149476 0.000004 -0.000166 -0.000004 0 0 0 0 0 0
$definebone "RightShoulder" "Spine1" 6.480814 -3.296812 -0.932838 -68.239846 -90.045471 89.999579 0 0 0 0 0 0
$definebone "RightArm" "RightShoulder" -2.916321 0.391016 0.376882 5.865654 -68.908604 -84.330338 0 0 0 0 0 0
$definebone "RightForeArm" "RightArm" -11.240187 0.000048 0.000312 0.000632 -0.000001 0.000173 0 0 0 0 0 0
$definebone "RightHand" "RightForeArm" -7.157772 1.036547 -0.102642 -5.761718 -55.940328 -0.952944 0 0 0 0 0 0
$definebone "RightHandThumb" "RightHand" -1.683584 -1.232654 0.149492 0.000002 -0.000052 -0.000001 0 0 0 0 0 0
$definebone "R_Tail01" "Hips" -4.668922 -1.097858 0 -89.999982 0 0 0 0 0 0 0 0
$definebone "R_Tail02" "R_Tail01" 0.000001 -0.000011 6.55105 0 0 0 0 0 0 0 0 0
$definebone "R_Tail03" "R_Tail02" 0 -0.00001 6.453478 0 0 0 0 0 0 0 0 0
$definebone "LeftThigh" "Hips" 0 0.000004 3.623822 0.00338 86.762083 179.999909 0 0 0 0 0 0
$definebone "LeftCalf" "LeftThigh" 8.774183 -1.167385 -0.000513 0.002406 -42.465222 -0.002235 0 0 0 0 0 0
$definebone "LeftFoot" "LeftCalf" 5.300986 0.772882 -0.000006 0.000115 -6.624765 0 0 0 0 0 0 0
$definebone "LeftToeBase" "LeftFoot" 2.141455 5.121192 0.000008 0 0 0 0 0 0 0 0 0
$definebone "RightThigh" "Hips" 0.000001 0 -3.623818 -0.000091 -93.237915 179.999582 0 0 0 0 0 0
$definebone "RightCalf" "RightThigh" -8.774187 1.167366 0.000004 0.000229 -42.464939 0.000172 0 0 0 0 0 0
$definebone "RightFoot" "RightCalf" -5.301001 -0.77286 -0.000004 0 -6.624996 0 0 0 0 0 0 0
$definebone "RightToeBase" "RightFoot" -2.141452 -5.121191 -0.000012 0 -0.000229 0 0 0 0 0 0 0


$sequence "run" {
	"loeve_chien_komyoton_anims\run.smd"
	activity "ACT_IDLE" 1
	autoplay
	fadein 0.2
	fadeout 0.2
	fps 55
	loop
}

$collisionmodel "loeve_chien_komyoton_physics.smd"
{
	$mass 200
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 124

}
