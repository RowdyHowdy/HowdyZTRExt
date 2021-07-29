class ZRUpgrade_Skill_PlatedArmor extends WMUpgrade_Skill;

var array<float> Armor;

static function ModifyArmor(out int MaxArmor, int DefaultArmor, int upgLevel)
{
	MaxArmor += Round(float(DefaultArmor) * default.Armor[upgLevel - 1]);
}

defaultproperties
{
	Armor(0)=0.3f
	Armor(1)=0.60f

	upgradeName="Plated Armor"
	upgradeDescription(0)="Increase max armor by 30%"
	upgradeDescription(1)="Increase max armor by <font color=\"#b346ea\">60%</font>"
	upgradeIcon(0)=Texture2D'GuardianPerkPackage.Guardian_Plated_Armor_N'
	upgradeIcon(1)=Texture2D'GuardianPerkPackage.Guardian_Plated_Armor_D'

	Name="Default__ZRUpgrade_Skill_PlatedArmor"
}
