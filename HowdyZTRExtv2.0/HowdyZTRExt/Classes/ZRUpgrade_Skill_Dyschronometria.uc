class ZRUpgrade_Skill_Dyschronometria extends WMUpgrade_Skill;

static simulated function GetZedTimeExtension(out float InExtension, float DefaultExtension, int upgLevel)
{
	InExtension += float(Min(DefaultExtension * (upgLevel * 3), 10));
}

defaultproperties
{
	upgradeName="Dyschronometria"
	upgradeDescription(0)="Extend Zedtime by 3 seconds when getting a kill"
	upgradeDescription(1)="Extend Zedtime by <font color=\"#b346ea\">6 seconds</font>when getting a kill"
	upgradeIcon(0)=Texture2D'GuardianPerkPackage.Guardian_Extra_Pockets_N'
	upgradeIcon(1)=Texture2D'GuardianPerkPackage.Guardian_Extra_Pockets_D'
	Name="Default__ZRUpgrade_Skill_Dyschronometria"
}
