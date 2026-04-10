// Created by Crowbar 0.67

$modelname "xsiphar_kyodai_swep.mdl"

$bodygroup "xsiphar_kyodai_swep"
{
	studio "xsiphar_kyodai_swep.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -8.549 25.224 52.553

$cdmaterials "models\"

$cbox 0 0 0 0 0 0

$bbox -50.448 -42.057 28.574 0 24.958 76.531

$definebone "ValveBiped.Bip01_Pelvis" "" 0 0 35.90794 0 0.000057 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0.000013 4.927811 -0.007612 4.944454 89.999695 89.999927 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" -0.000004 -0.000001 0 0.000057 -1.674412 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" -0.000004 0 0 -0.002521 5.747855 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 9.565666 -0.530772 -0.000441 0.002979 11.1222 0.000516 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 7.344543 -1.459546 -2.06137 64.042627 169.572683 -90.208228 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 4.482634 1.676201 -0.223871 -0.579376 -18.670167 90.513066 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 10.497051 0.000127 -0.000008 -0.115381 -1.454281 -0.021027 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 10.497037 0.000088 0 6.094962 7.463406 -89.591919 0 0 0 0 0 0


$sequence "idle" {
	"xsiphar_kyodai_swep_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "xsiphar_kyodai_swep_physics.smd"
{
	$mass 85
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
