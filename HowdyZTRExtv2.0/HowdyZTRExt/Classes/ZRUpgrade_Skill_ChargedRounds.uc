class ZRUpgrade_Skill_ChargedRounds extends WMUpgrade_Skill;

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
	ZRDT=class'HowdyZTRExt.ZRDT_ChargedRounds_DoT'
	maxProbability=1.0f
	maxDamage=100.0f
	damageFactor(0)=0.4f
	damageFactor(1)=0.8f

	upgradeName="Charged Rounds"
	upgradeDescription(0)="<font color=\"#eaeff7\">All weapons</font> can EMP ZEDs inflicting Electric damage over time"
	upgradeDescription(1)="<font color=\"#eaeff7\">All weapons</font> can EMP ZEDs inflicting <font color=\"#b346ea\">high</font> Electric damage over time"
	upgradeIcon(0)=Texture2D'ScientistPerkPackage.Charged_Rounds_N'
	upgradeIcon(1)=Texture2D'ScientistPerkPackage.Charged_Rounds_D'

	Name="Default__ZRUpgrade_Skill_ChargedRounds"
}
