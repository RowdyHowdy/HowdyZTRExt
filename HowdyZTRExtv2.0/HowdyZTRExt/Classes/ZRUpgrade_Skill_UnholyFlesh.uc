class ZRUpgrade_Skill_UnholyFlesh extends WMUpgrade_Skill;
// This is the class name, and we are extending from WMUpgrade_Skill so that we have skill upgrade functionality. It is required that the
// class name matches the filename as well, otherwise you will get a compilation error.

// This is the variable that we will use for modifying the player stats within functions defined from WMUpgrade. The functions from
// WMUpgrade are ultimately called from WMPerk, the class in charge of basically everything when it comes to modification of player stats.
var array<float> Damage;

// This increases player magazine size
static function ModifyDamageTaken(out int InDamage, int DefaultDamage, int upgLevel, KFPawn OwnerPawn, optional class<DamageType> DamageType, optional Controller InstigatedBy, optional KFWeapon MyKFW)
{
	if (DamageType != None && (ClassIsChildOf(DamageType, class'KFDT_Bludgeon') || ClassIsChildOf(DamageType, class'KFDT_Piercing') || ClassIsChildOf(DamageType, class'KFDT_Slashing')))
		InDamage -= Round(float(DefaultDamage) * default.Damage[upgLevel - 1]);
}

defaultproperties
{
	// This is the default value for the variable defined above, MagCapacity. Most skill variables are defined as an array as you will need two
	// numbers, one for the base version and one for the deluxe version of the skill.
	Damage(0)=0.20f
	Damage(1)=0.40f

	// The name of the skill on the upgrade menu
	upgradeName="Unholy Flesh"

	// The description for the skill, one for the base version and one for the deluxe version. Text coloring can be done by using
	// the syntax <font color=\"#color code goes here\">text goes here</font>, example: <font color=\"#b346ea\">foo bar test</font>
	upgradeDescription(0)="Increase resistance to Melee damage types by 20%"
	upgradeDescription(1)="Increase resistance to Melee damage types by <font color=\"#b346ea\">40%</font>"

	// The icons to display on the upgrade menu for this skill. Skills have two icons only, one for the base version and one for the
	// deluxe version. It is required to define both of them because skills always come in a base and deluxe version,
	// otherwise a placeholder icon will be used for the missing icons.
	upgradeIcon(0)=Texture2D'GuardianPerkPackage.Guardian_Iron_Flesh_N'
	upgradeIcon(1)=Texture2D'GuardianPerkPackage.Guardian_Iron_Flesh_D'

	// This is optional, but this is the name that the game engine will use when it creates an instance of this class using new or spawn,
	// for example the first class to be created would have the name Default__ZRUpgrade_Skill_Test2_0, the second
	// Default__ZRUpgrade_Skill_Test2_1, etc. If not defined, the game engine will auto-generate a name that is based on the class name.
	Name="Default__ZRUpgrade_Skill_UnholyFlesh"
}
