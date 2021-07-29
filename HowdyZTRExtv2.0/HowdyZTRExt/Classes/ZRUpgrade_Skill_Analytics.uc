class ZRUpgrade_Skill_Analytics extends WMUpgrade_Skill;

var array<float> Bonus;

static function ModifyHealAmount(out float InHealAmount, float DefaultHealAmount, int upgLevel)
{
	InHealAmount += DefaultHealAmount * default.Bonus[upgLevel - 1];
}
static simulated function bool CanSeeEnemyHealth(int upgLevel, KFPawn OwnerPawn)
{
	return True;
}

defaultproperties
{
	Bonus(0)=0.25f
	Bonus(1)=0.6f

	upgradeName="Analytics"
	upgradeDescription(0)="Allows you to see ZED health and increases healing potency by 25%"
	upgradeDescription(1)="Allows you to see ZED health and increases healing potency by <font color=\"#b346ea\">60%</font>"
	upgradeIcon(0)=Texture2D'ScientistPerkPackage.Analytics_N'
	upgradeIcon(1)=Texture2D'ScientistPerkPackage.Analytics_D'

	Name="Default__ZRUpgrade_Skill_Analytics"
}
