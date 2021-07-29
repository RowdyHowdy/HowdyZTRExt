class ZRUpgrade_Skill_LaceratingRounds extends WMUpgrade_Skill;

var const class<KFDamageType> ZRDT;

var float maxProbability;
var float maxDamage;
var array<float> damageFactor;

static function ModifyDamageGiven(out int InDamage, int DefaultDamage, int upgLevel, optional Actor DamageCauser, optional KFPawn_Monster MyKFPM, optional KFPlayerController DamageInstigator, optional class<KFDamageType> DamageType, optional int HitZoneIdx, optional KFWeapon MyKFW)
{
	if (DamageType != None && DamageType != default.ZRDT && DamageInstigator != None && MyKFPM != None && FRand() < (float(DefaultDamage) * default.maxProbability / default.maxDamage))
	{
		//add poison effects on zed
		MyKFPM.ApplyDamageOverTime(int(float(DefaultDamage) * default.damageFactor[upgLevel - 1]), DamageInstigator, default.ZRDT);
	}
}

defaultproperties
{
	ZRDT=class'HowdyZTRExt.ZRDT_laceratingRounds_DoT'
	maxProbability=1.0f
	maxDamage=75.0f
	damageFactor(0)=0.3f
	damageFactor(1)=0.6f

	upgradeName="Lacerating Rounds"
	upgradeDescription(0)="<font color=\"#eaeff7\">All weapons</font> can bleed ZEDs inflicting bleeding damage over time"
	upgradeDescription(1)="<font color=\"#eaeff7\">All weapons</font> can bleed ZEDs inflicting <font color=\"#b346ea\">high</font> bleeding damage over time"
	upgradeIcon(0)=Texture2D'ScientistPerkPackage.Lacerating_Rounds_N'
	upgradeIcon(1)=Texture2D'ScientistPerkPackage.Lacerating_Rounds_D'

	Name="Default__ZRUpgrade_Skill_LaceratingRounds"
}
