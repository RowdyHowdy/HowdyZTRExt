class ZRUpgrade_Skill_ExtraPockets extends WMUpgrade_Skill;

var array<int> Bonus;

static function ApplyWeightLimits(out int InWeightLimit, int DefaultWeightLimit, int upgLevel)
{
	InWeightLimit += default.Bonus[upgLevel - 1];
}

defaultproperties
{
	Bonus(0)=4
	Bonus(1)=8

	upgradeName="Extra Pockets"
	upgradeDescription(0)="Increase weight capacity by 4"
	upgradeDescription(1)="Increase weight capacity by <font color=\"#b346ea\">8</font>"
	upgradeIcon(0)=Texture2D'GuardianPerkPackage.Guardian_Extra_Pockets_N'
	upgradeIcon(1)=Texture2D'GuardianPerkPackage.Guardian_Extra_Pockets_D'
	Name="Default__ZRUpgrade_Skill_ExtraPockets"
}
