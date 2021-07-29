class ZRUpgrade_Skill_PiercingCold extends WMUpgrade_Skill;

var array<float> Penetration;

static simulated function ModifyPenetrationPassive(out float penetrationFactor, int upgLevel)
{
	penetrationFactor += default.Penetration[upgLevel - 1];
}

defaultproperties
{
	Penetration(0)=1.0f
	Penetration(1)=2.0f

	upgradeName="Piercing Cold"
	upgradeDescription(0)="Increase penetration power with <font color=\"#caab05\">shotguns, rifles, and revolvers</font> by 100%"
	upgradeDescription(1)="Increase penetration power with <font color=\"#caab05\">shotguns, rifles, and revolvers</font> by <font color=\"#b346ea\">200%</font>"
	upgradeIcon(0)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_Penetrator'
	upgradeIcon(1)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_Penetrator_Deluxe'

	Name="Default__ZRUpgrade_Skill_PiercingCold"
}
