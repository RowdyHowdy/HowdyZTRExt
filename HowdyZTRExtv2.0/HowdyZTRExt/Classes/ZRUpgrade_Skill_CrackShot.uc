class ZRUpgrade_Skill_CrackShot extends WMUpgrade_Skill;

var array<float> Bonus;

static function ModifyDamageGiven(out int InDamage, int DefaultDamage, int upgLevel, optional Actor DamageCauser, optional KFPawn_Monster MyKFPM, optional KFPlayerController DamageInstigator, optional class<KFDamageType> DamageType, optional int HitZoneIdx, optional KFWeapon MyKFW)
{
	if (HitZoneIdx == HZI_HEAD && MyKFW != None)
		InDamage += Round(float(DefaultDamage) * default.Bonus[upgLevel - 1]);
}

static simulated function GetIronSightSpeedModifier(out float InSpeed, float DefaultSpeed, int upgLevel)
{
	InSpeed -= DefaultSpeed * default.Bonus[upgLevel - 1];
}

defaultproperties
{
	Bonus(0)=0.1f
	Bonus(1)=0.25f

	upgradeName="Crack Shot"
	upgradeDescription(0)="Increases headshot damage and aim down sight speed by 10% with <font color=\"#eaeff7\">all weapons</font>"
	upgradeDescription(1)="Increases headshot damage and aim down sight speed by <font color=\"#b346ea\">25%</font> with <font color=\"#eaeff7\">all weapons</font>"
	upgradeIcon(0)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_DeadEye'
	upgradeIcon(1)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_DeadEye_Deluxe'

	Name="Default__ZRUpgrade_Skill_CrackShot"
}
