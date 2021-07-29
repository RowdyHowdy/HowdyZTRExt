class ZRUpgrade_Skill_Adrenaline extends WMUpgrade_Skill;

var array<float> MeleeSpeed;

static simulated function ModifyMeleeAttackSpeedPassive(out float durationFactor, int upgLevel)
{
	durationFactor = 1.0f / (1.0f / durationFactor + default.MeleeSpeed[upgLevel - 1]);
}

defaultproperties
{
	MeleeSpeed(0)=0.2f
	MeleeSpeed(1)=0.5f

	upgradeName="Adrenaline"
	upgradeDescription(0)="Attack 20% faster with <font color=\"#eaeff7\">melee weapons</font>"
	upgradeDescription(1)="Attack <font color=\"#b346ea\">50%</font> faster with <font color=\"#eaeff7\">melee weapons</font>"
	upgradeIcon(0)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_Butcher'
	upgradeIcon(1)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_Butcher_Deluxe'

	Name="Default__ZRUpgrade_Skill_Adrenaline"
}
