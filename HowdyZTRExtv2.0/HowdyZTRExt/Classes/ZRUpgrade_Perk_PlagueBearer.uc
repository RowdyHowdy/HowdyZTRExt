Class ZRUpgrade_Perk_PlagueBearer extends WMUpgrade_Perk;
// This is the class name, and we are extending from WMUpgrade_Perk so that we have perk upgrade functionality. It is required that the
// class name matches the filename as well, otherwise you will get a compilation error.

// These are variables that we will use for modifying the player stats within functions defined from WMUpgrade. The functions from WMUpgrade
// are ultimately called from WMPerk, the class in charge of basically everything when it comes to modification of player stats.
var array<float> DamageOverTime;
var float Defense, MagSize, Damage;

static function ModifyDoTScaler(out float InDoTScaler, float DefaultDotScaler, int upgLevel, optional class<KFDamageType> KFDT, optional bool bNapalmInfected)
{
	InDoTScaler += DefaultDotScaler * default.DamageOverTime[upgLevel - 1];
}

static simulated function ModifyMagSizeAndNumberPassive(out float magazineCapacityFactor, int upgLevel)
{
	magazineCapacityFactor += default.MagSize * upgLevel;
}

static function ModifyDamageGiven(out int InDamage, int DefaultDamage, int upgLevel, optional Actor DamageCauser, optional KFPawn_Monster MyKFPM, optional KFPlayerController DamageInstigator, optional class<KFDamageType> DamageType, optional int HitZoneIdx, optional KFWeapon MyKFW)
{
	if (DamageType != None && ClassIsChildOf(DamageType, class'KFDT_Toxic'))
		InDamage += Round(float(DefaultDamage) * default.Damage * upgLevel);
}



defaultproperties
{
	// These are the default values for the variables we defined above. They are multiplied against the upgLevel variable as shown above.
	// The values of these variables should match the PerkBonus incValue in order to be accurate to the perk description.
	DamageOverTime(0)=0.1f
	MagSize=0.05f
	Damage=0.10f

	// The name of the perk that will appear on the upgrade menu
	upgradeName="Plaguebearer"

	// The descriptions of the perk. The %x% will be automatically filled using the PerkBonus array that has the same index,
	// upgradeDescription(0) will use PerkBonus(0), etc. Text coloring can be done by using the syntax
	// <font color=\"#color code goes here\">text goes here</font>, example: <font color=\"#b346ea\">foo bar test</font>
	upgradeDescription(0)="+%x%% Damage over time effects"
	upgradeDescription(1)="+%x%% Mag Size with <font color=\"#eaeff7\">any weapon</font>"
	upgradeDescription(2)="+%x%% Damage with <font color=\"#caab05\">Toxic and Poison Sources</font>"

	// The PerkBonus array is just used by the perk descriptions for text formatting. The baseValue is the starting value before you buy
	// any upgrades, this is 99.9% always zero. The incValue is the increase amount by every perk level. The maxValue is the maximum value
	// that the number may go to, without -1 being no limit (infinite scaling). Most of the time these numbers represent percentages, so
	// 15% would be 0.15f in code, etc.
	PerkBonus(0)=(baseValue=0, incValue=10, maxValue=-1)
	PerkBonus(1)=(baseValue=0, incValue=20, maxValue=-1)
	PerkBonus(2)=(baseValue=0, incValue=10, maxValue=-1)

	// The icons to display on the upgrade menu and player HUD for each of the perk levels. The icons come from UPK files which hold
	// the resources for all unreal engine based games. The first part of the name is the package name (UI_PerkIcons_TEX),
	// which is usually the actual name of the UPK file within the game files.
	// You must use the KF2 SDK to create/modify/view UPKs, and the SDK can also give you the full path to a resource so you do not
	// need to guess what the full path should be. For specifically perks, any level above that last upgradeIcon defined will just keep
	// using the final icon defined (for example, level 10 of this perk would still use the icon defined in upgradeIcon(5)).
	upgradeIcon(0)=Texture2D'GuardianPerkPackage.Guardian_Rank_0'
	upgradeIcon(1)=Texture2D'GuardianPerkPackage.Guardian_Rank_1'
	upgradeIcon(2)=Texture2D'GuardianPerkPackage.Guardian_Rank_2'
	upgradeIcon(3)=Texture2D'GuardianPerkPackage.Guardian_Rank_3'
	upgradeIcon(4)=Texture2D'GuardianPerkPackage.Guardian_Rank_4'
	upgradeIcon(5)=Texture2D'GuardianPerkPackage.Guardian_Rank_5'

	// This is optional, but this is the name that the game engine will use when it creates an instance of this class using new or spawn,
	// for example the first class to be created would have the name Default__ZRUpgrade_Perk_TestPerk_0, the second
	// Default__ZRUpgrade_Perk_TestPerk_1, etc. If not defined, the game engine will auto-generate a name that is based on the class name.
	Name="Default__ZRUpgrade_Perk_PlagueBearer"
}
