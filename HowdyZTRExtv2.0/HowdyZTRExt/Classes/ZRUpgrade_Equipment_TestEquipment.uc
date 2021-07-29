class ZRUpgrade_Equipment_TestEquipment extends WMUpgrade_Equipment;
// This is the class name, and we are extending from WMUpgrade_Equipment so that we have equipment upgrade functionality. It is required that the
// class name matches the filename as well, otherwise you will get a compilation error.

// Equipment upgrades work as a hybrid between skills and perks. One of the benefits of equipment upgrades is that are always unlocked from
// the start of the match with no need to buy anything to unlock them. They are intended for additional bonuses / end game upgrades. They
// support multiple levels, multiple descriptions, and multiple icons such as perks, however they do not unlock anything when purchasing
// them unlike perks. Additionally, equipment upgrades can have their own prices and level caps that are independent from other equipment
// upgrades.

// Variables for use in functions below
var int Armor, Health;

// Function that increase armor
static function ModifyArmor(out int MaxArmor, int DefaultArmor, int upgLevel)
{
	//No limit as we have defined -1 in the EquipmentBonus maxValue variable
	MaxArmor += default.Armor * upgLevel;
}

// Function that increase health
static function ModifyHealth(out int InHealth, int DefaultHealth, int upgLevel)
{
	//No limit as we have defined -1 in the EquipmentBonus maxValue variable
	InHealth += default.Health * upgLevel;
}

// Function that makes all explosives immune to siren screams
static simulated function bool ProjSirenResist(int upgLevel, KFPawn OwnerPawn)
{
	return True;
}

defaultproperties
{
	// Variables are defined here. Instead of percentages, we use points instead.
	Armor=10
	Health=10

	// Name of upgrade on upgrade menu
	upgradeName="Test Equipment Stats"
	
	// Equipment upgrades can have more than one description line and work similarly to how perk upgrades descriptions work. Text coloring
	// can be done by using the syntax <font color=\"#color code goes here\">text goes here</font>,
	// example: <font color=\"#b346ea\">foo bar test</font>
	upgradeDescription(0)="Increase armor by %x% points"
	upgradeDescription(1)="Increase health by %x% points"
	upgradeDescription(2)="Your explosives are immune to siren screams"
	
	// EquipmentBonus works similarly to PerkBonus and WeaponBonus variables. It is used only for text formatting in the upgradeDescription
	// variable. 
	EquipmentBonus(0)=(baseValue=0, incValue=10, maxValue=-1)
	EquipmentBonus(1)=(baseValue=0, incValue=10, maxValue=-1)
	
	// Equipment upgrades can support many icons similarly to perk upgrades. If the equipment upgrade level exceeds the last icon in the array
	// then the last icon will be used.
	upgradeIcon(0)=Texture2D'CHR_CosmeticSet_XMAS_02_Item_TEX.christmashood.santahood_green'
	upgradeIcon(1)=Texture2D'CHR_CosmeticSet_XMAS_02_Item_TEX.glassesfeline.glassesfeline_precious'
	upgradeIcon(2)=Texture2D'CHR_CosmeticSet_XMAS_02_Item_TEX.turkeyhat.turkeyhat_precious'

	// This is optional, but this is the name that the game engine will use when it creates an instance of this class using new or spawn,
	// for example the first class to be created would have the name Default__ZRUpgrade_Equipment_TestEquipment_0, the second
	// Default__ZRUpgrade_Equipment_TestEquipment_1, etc. If not defined, the game engine will auto-generate a name that is based on the class name.
	Name="Default__ZRUpgrade_Equipment_TestEquipment"
}
