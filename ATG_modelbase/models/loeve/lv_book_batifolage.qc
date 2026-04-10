// Created by Crowbar 0.67

$modelname "loeve/lv_book_batifolage.mdl"

$bodygroup "body"
{
	studio "lv_book_batifolage.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -14.78 -13.972 13.753

$cdmaterials "models\loeve\lv_book_batifolage\"

$cbox 0 0 0 0 0 0

$bbox -28.64 -51.088 33.936 25.866 12.3 60.353

$definebone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"lv_book_batifolage_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}
