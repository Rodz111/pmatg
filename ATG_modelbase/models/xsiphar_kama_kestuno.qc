// Created by Crowbar 0.67

$modelname "xsiphar_kama_kestuno.mdl"

$bodygroup "xsiphar_kama_kestuno"
{
	studio "xsiphar_kama_kestuno.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -25.544 15.756 27.785

$cdmaterials "models\"

$cbox 0 0 0 0 0 0

$bbox -39.286 -60.207 -4.605 7.773 9.039 60.175

$definebone "ValveBiped.Bip01_Pelvis" "" 0 -0.67246 42.41251 0 0.000057 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0.000001 0.000008 -0.576311 4.944397 89.999695 89.999927 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 4.624798 -0.178372 -0.000025 0.000057 -1.674584 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 4.628029 -0.043147 -0.00002 -0.002521 5.748084 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 4.600433 -0.506455 -0.000222 0.002979 11.121283 0.000516 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 0.798229 0.086457 -1.798713 64.04303 169.573994 -90.207606 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 4.851803 2.361874 0.008547 0.051108 -18.890652 89.887796 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 10.367466 -0.000077 0.000011 0.012084 -3.760495 -0.014725 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 10.391117 0.000006 0.000008 6.094548 7.462546 -89.592322 0 0 0 0 0 0


$sequence "idle" {
	"xsiphar_kama_kestuno_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "xsiphar_kama_kestuno_physics.smd"
{
	$mass 85
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
