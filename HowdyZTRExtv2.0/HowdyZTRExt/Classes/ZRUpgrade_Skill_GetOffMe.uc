class ZRUpgrade_Skill_GetOffMe extends WMUpgrade_Skill;
// This is the class name, and we are extending from WMUpgrade_Skill so that we have skill upgrade functionality. It is required that the
// class name matches the filename as well, otherwise you will get a compilation error.

// This is the variable that we will use for modifying the player stats within functions defined from WMUpgrade. The functions from
// WMUpgrade are ultimately called from WMPerk, the class in charge of basically everything when it comes to modification of player stats.
var array<float> MeleeDamage, stumblePowerFactor, knockdownPowerFactor; 

// This increases player damage output
static function ModifyDamageGiven(out int InDamage, int DefaultDamage, int upgLevel, optional Actor DamageCauser, optional KFPawn_Monster MyKFPM, optional KFPlayerController DamageInstigator, optional class<KFDamageType> DamageType, optional int HitZoneIdx, optional KFWeapon MyKFW)
{
	if (DamageType != None && static.IsMeleeDamageType(DamageType))
		InDamage += float(DefaultDamage) * default.stumblePowerFactor[upgLevel - 1];
		InDamage += float(DefaultDamage) * default.knockdownPowerFactor[upgLevel - 1];
}
defaultproperties
{
	// This is the default value for the variable defined above, Damage. Most skill variables are defined as an array as you will need two
	// numbers, one for the base version and one for the deluxe version of the skill.
	stumblePowerFactor(0)=0.75f
	stumblePowerFactor(1)=1.00f
	knockdownPowerFactor(0)=0.40f
	knockdownPowerFactor(1)=0.80f
	// The name of the skill on the upgrade menu
	upgradeName="Get Off Me!"

	// The description for the skill, one for the base version and one for the deluxe version. Text coloring can be done by using
	// the syntax <font color=\"#color code goes here\">text goes here</font>, example: <font color=\"#b346ea\">foo bar test</font>
	upgradeDescription(0)="Increase Increase stumble, and knockdown power with <font color=\"#caab05\">melee weapons</font> by 75%"
	upgradeDescription(1)="Increase Increase stumble, and knockdown power with <font color=\"#eaeff7\">melee</font> by <font color=\"#b346ea\">150%</font>"

	// The icons to display on the upgrade menu for this skill. Skills have two icons only, one for the base version and one for the
	// deluxe version. It is required to define both of them because skills always come in a base and deluxe version,
	// otherwise a placeholder icon will be used for the missing icons.
	upgradeIcon(0)=Texture2D'GuardianPerkPackage.Guardian_Get_Of_Me_N'
	upgradeIcon(1)=Texture2D'GuardianPerkPackage.Guardian_Get_Of_Me_D'

	// This is optional, but this is the name that the game engine will use when it creates an instance of this class using new or spawn,
	// for example the first class to be created would have the name Default__ZRUpgrade_Skill_Test1_0, the second
	// Default__ZRUpgrade_Skill_Test1_1, etc. If not defined, the game engine will auto-generate a name that is based on the class name.
	Name="Default__ZRUpgrade_Skill_GetOffMe"
}
