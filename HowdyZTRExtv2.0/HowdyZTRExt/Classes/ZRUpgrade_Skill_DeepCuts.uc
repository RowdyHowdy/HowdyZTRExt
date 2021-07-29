class ZRUpgrade_Skill_DeepCuts extends WMUpgrade_Skill;

var const class<KFDamageType> ZRDT;
var array<float> damageFactor;

static function ModifyDamageGiven(out int InDamage, int DefaultDamage, int upgLevel, optional Actor DamageCauser, optional KFPawn_Monster MyKFPM, optional KFPlayerController DamageInstigator, optional class<KFDamageType> DamageType, optional int HitZoneIdx, optional KFWeapon MyKFW)
{
	if (DamageType != None && DamageType != default.ZRDT && DamageInstigator != None && MyKFPM != None && static.IsMeleeDamageType(DamageType))
	{
		//add poison effects on zed
		MyKFPM.ApplyDamageOverTime(int(float(DefaultDamage) * default.damageFactor[upgLevel - 1]), DamageInstigator, default.ZRDT);
	}
}



defaultproperties
{
	ZRDT=class'HowdyZTRExt.ZRDT_laceratingRounds_DoT'
	damageFactor(0)=0.2f
	damageFactor(1)=0.4f

	upgradeName="Deep Cuts"
	upgradeDescription(0)="<font color=\"#eaeff7\">Melee weapons</font> bleed ZEDs inflicting bleeding damage over time"
	upgradeDescription(1)="<font color=\"#eaeff7\">Melee weapons</font> bleed ZEDs inflicting <font color=\"#b346ea\">high bleeding damage over time</font>"
	upgradeIcon(0)=Texture2D'ScientistPerkPackage.Lacerating_Rounds_N'
	upgradeIcon(1)=Texture2D'ScientistPerkPackage.Lacerating_Rounds_D'

	Name="Default__ZRUpgrade_Skill_DeepCuts"
}
