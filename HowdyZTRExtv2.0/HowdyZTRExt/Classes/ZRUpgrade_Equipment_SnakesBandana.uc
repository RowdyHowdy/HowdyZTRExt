class ZRUpgrade_Equipment_SnakesBandana extends WMUpgrade_Equipment;

static simulated function bool GetIsUberAmmoActive(int upgLevel, KFWeapon KFW, KFPawn OwnerPawn)
{
	return True;
}

defaultproperties
{
	// Variables are defined here. Instead of percentages, we use points instead.


	// Name of upgrade on upgrade menu
	upgradeName="Snake's Bandana"
	
	// Equipment upgrades can have more than one description line and work similarly to how perk upgrades descriptions work. Text coloring
	// can be done by using the syntax <font color=\"#color code goes here\">text goes here</font>,
	// example: <font color=\"#b346ea\">foo bar test</font>
	upgradeDescription(0)="SNAAAAAKKKEEEEEE! You have Unlimited Ammo"

	
	// EquipmentBonus works similarly to PerkBonus and WeaponBonus variables. It is used only for text formatting in the upgradeDescription
	// variable. 
	EquipmentBonus(0)=(baseValue=0, incValue=10, maxValue=-1)
	EquipmentBonus(1)=(baseValue=0, incValue=10, maxValue=-1)
	
	// Equipment upgrades can support many icons similarly to perk upgrades. If the equipment upgrade level exceeds the last icon in the array
	// then the last icon will be used.
	upgradeIcon(0)=Texture2D'CHR_CosmeticSet02_Item_TEX.streetpunkbandana.StreetPunkBandana_Red'

	// This is optional, but this is the name that the game engine will use when it creates an instance of this class using new or spawn,
	// for example the first class to be created would have the name Default__ZRUpgrade_Equipment_TestEquipment_0, the second
	// Default__ZRUpgrade_Equipment_TestEquipment_1, etc. If not defined, the game engine will auto-generate a name that is based on the class name.
	Name="Default__ZRUpgrade_Equipment_SnakesBandana"
}
