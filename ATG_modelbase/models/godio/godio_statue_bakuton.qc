// Created by Crowbar 0.67

$modelname "godio/godio_statue_bakuton.mdl"

$bodygroup "godio_statue_bakuton"
{
	studio "godio_statue_bakuton.smd"
}


$surfaceprop "concrete"

$contents "solid"

$illumposition -1.257 -9.004 83.405

$cdmaterials "models\godio\"

$cbox 0 0 0 0 0 0

$bbox 0 -327.694 0 43.767 0 179.656

$definebone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"godio_statue_bakuton_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$collisionmodel "godio_statue_bakuton_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 1
	$rootbone " "

}
