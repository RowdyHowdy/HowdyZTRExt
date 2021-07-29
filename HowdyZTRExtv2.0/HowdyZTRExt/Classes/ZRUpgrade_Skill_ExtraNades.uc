class ZRUpgrade_Skill_ExtraNades extends WMUpgrade_Skill;

var array<int> ExtraGrenades;

static simulated function ModifySpareGrenadeAmount(out int SpareGrenade, int DefaultSpareGrenade, int upgLevel)
{
	SpareGrenade += default.ExtraGrenades[upgLevel - 1];
}

defaultproperties
{
	ExtraGrenades(0)=2
	ExtraGrenades(1)=4

	upgradeName="Extra Grenades"
	upgradeDescription(0)="Increase grenade capacity by 2"
	upgradeDescription(1)="Increase grenade capacity by <font color=\"#b346ea\">4</font>"
	upgradeIcon(0)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_DoorTraps'
	upgradeIcon(1)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_DoorTraps_Deluxe'

	Name="Default__ZRUpgrade_Skill_ExtraNades"
}
