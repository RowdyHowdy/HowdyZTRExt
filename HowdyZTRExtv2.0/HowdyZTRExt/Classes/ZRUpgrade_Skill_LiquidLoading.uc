class ZRUpgrade_Skill_LiquidLoading extends WMUpgrade_Skill;

var array<float> ReloadRate;

static simulated function GetReloadRateScale(out float InReloadRateScale, int upgLevel, KFWeapon KFW, KFPawn OwnerPawn)
{
	if (OwnerPawn != None && VSizeSq(OwnerPawn.Velocity) <= 0)
	{
		InReloadRateScale = 1.0f / (1.0f / InReloadRateScale * default.ReloadRate[upgLevel - 1]);
	}
}

defaultproperties
{
	ReloadRate(0)=1.2f
	ReloadRate(1)=1.5f

	upgradeName="Liquid Loading"
	upgradeDescription(0)="While stationary increase reload speed by 20% with <font color=\"#eaeff7\">all weapons</font>"
	upgradeDescription(1)="While stationary increase reload speed by <font color=\"#b346ea\">50%</font> with <font color=\"#eaeff7\">all weapons</font>"
	upgradeIcon(0)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_Sniper'
	upgradeIcon(1)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_Sniper_Deluxe'

	Name="Default__ZRUpgrade_Skill_LiquidLoading"
}
