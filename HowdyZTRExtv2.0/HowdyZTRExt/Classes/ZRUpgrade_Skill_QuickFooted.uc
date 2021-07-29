class ZRUpgrade_Skill_QuickFooted extends WMUpgrade_Skill;

var array<float> speed;

static simulated function ModifySpeedPassive(out float speedFactor, int upgLevel)
{
	speedFactor += default.Speed[upgLevel - 1];
}

defaultproperties
{
	Speed(0)=0.1f
	Speed(1)=0.2f

	upgradeName="Quick Footed"
	upgradeDescription(0)="Increase movement speed by 10%"
	upgradeDescription(1)="Increase movement speed by <font color=\"#b346ea\">20%</font>"
	upgradeIcon(0)=Texture2D'GuardianPerkPackage.Guardian_Extra_Pockets_N'
	upgradeIcon(1)=Texture2D'GuardianPerkPackage.Guardian_Extra_Pockets_D'
	Name="Default__ZRUpgrade_Skill_QuickFooted"
}
