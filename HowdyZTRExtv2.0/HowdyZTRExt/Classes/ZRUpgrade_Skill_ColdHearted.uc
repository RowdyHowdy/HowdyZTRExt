class ZRUpgrade_Skill_ColdHearted extends WMUpgrade_Skill;

var array<float> DamageOverTime;
var array<float> Damage;

static function ModifyDoTScaler(out float InDoTScaler, float DefaultDotScaler, int upgLevel, optional class<KFDamageType> KFDT, optional bool bNapalmInfected)
{
	InDoTScaler += DefaultDotScaler * default.DamageOverTime[upgLevel - 1];
}

static function ModifyDamageGiven(out int InDamage, int DefaultDamage, int upgLevel, optional Actor DamageCauser, optional KFPawn_Monster MyKFPM, optional KFPlayerController DamageInstigator, optional class<KFDamageType> DamageType, optional int HitZoneIdx, optional KFWeapon MyKFW)
{
	if (DamageType != None && ClassIsChildOf(DamageType, class'KFDT_Freeze'))
		InDamage += Round(float(DefaultDamage) * default.Damage[upgLevel - 1] * upgLevel);
}

defaultproperties
{
	DamageOverTime(0)=1.5f
	DamageOverTime(1)=3.0f
	Damage(0)=0.10f
	Damage(1)=0.20f

	upgradeName="Cold Hearted"
	upgradeDescription(0)="Freeze effects last 150% longer and do 10% more damage"
	upgradeDescription(1)="Freeze effects last <font color=\"#b346ea\">300%</font> longer and do <font color=\"#b346ea\">20%</font> more damage"
	upgradeIcon(0)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_Barbecue'
	upgradeIcon(1)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_Barbecue_Deluxe'

	Name="Default__ZRUpgrade_Skill_ColdHearted"
}
