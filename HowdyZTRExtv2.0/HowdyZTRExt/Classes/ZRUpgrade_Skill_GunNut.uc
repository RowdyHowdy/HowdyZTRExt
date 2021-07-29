class ZRUpgrade_Skill_GunNut extends WMUpgrade_Skill;

var float ReloadRateDeluxe;
var array<float> Damage;

static simulated function GetReloadRateScalePassive(out float reloadRateFactor, int upgLevel)
{
	if (upgLevel > 1)
		reloadRateFactor = 1.0f / (1.0f / reloadRateFactor + default.ReloadRateDeluxe);
}

static simulated function bool GetUsingTactialReload(int upgLevel, KFWeapon KFW)
{
	return (static.IsWeaponOnSpecificPerk(KFW, class'KFGame.KFPerk_Commando') || static.IsWeaponOnSpecificPerk(KFW, class'KFGame.KFPerk_Demolitionist')
		|| static.IsWeaponOnSpecificPerk(KFW, class'KFGame.KFPerk_Gunslinger') || static.IsWeaponOnSpecificPerk(KFW, class'KFGame.KFPerk_Sharpshooter')
		|| static.IsWeaponOnSpecificPerk(KFW, class'KFGame.KFPerk_Support') || static.IsWeaponOnSpecificPerk(KFW, class'KFGame.KFPerk_SWAT'));
}

static function ModifyDamageGiven(out int InDamage, int DefaultDamage, int upgLevel, optional Actor DamageCauser, optional KFPawn_Monster MyKFPM, optional KFPlayerController DamageInstigator, optional class<KFDamageType> DamageType, optional int HitZoneIdx, optional KFWeapon MyKFW)
{
	if (IsWeaponOnSpecificPerk(MyKFW, class'KFGame.KFPerk_Commando') || IsDamageTypeOnSpecificPerk(DamageType, class'KFGame.KFPerk_Commando') || IsWeaponOnSpecificPerk(MyKFW, class'KFGame.KFPerk_Demolitionist') || IsDamageTypeOnSpecificPerk(DamageType, class'KFGame.KFPerk_Demolitionist') || IsWeaponOnSpecificPerk(MyKFW, class'KFGame.KFPerk_Gunslinger') || IsDamageTypeOnSpecificPerk(DamageType, class'KFGame.KFPerk_Gunslinger') || IsWeaponOnSpecificPerk(MyKFW, class'KFGame.KFPerk_Sharpshooter') || IsDamageTypeOnSpecificPerk(DamageType, class'KFGame.KFPerk_Sharpshooter') || IsWeaponOnSpecificPerk(MyKFW, class'KFGame.KFPerk_Support') || IsDamageTypeOnSpecificPerk(DamageType, class'KFGame.KFPerk_Support') || IsWeaponOnSpecificPerk(MyKFW, class'KFGame.KFPerk_Swat') || IsDamageTypeOnSpecificPerk(DamageType, class'KFGame.KFPerk_Swat'))
		InDamage += Round(float(DefaultDamage) * default.Damage[upgLevel]);
}

defaultproperties
{
	ReloadRateDeluxe=0.3f
	Damage(0)=0.10f
	Damage(1)=0.25f

	upgradeName="Gun Nut"
	upgradeDescription(0)="Increase reload speed and increase damage by 10% with <font color=\"#caab05\">Commando, Demolitionist, Gunslinger, Sharpshooter, Support, and SWAT weapons</font>"
	upgradeDescription(1)="Increase reload speed by <font color=\"#b346ea\">30%</font> and increase damage by <font color=\"#b346ea\">25%</font> with <font color=\"#caab05\">all weapons</font>"
	upgradeIcon(0)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_TacticalReload'
	upgradeIcon(1)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_TacticalReload_Deluxe'

	Name="Default__ZRUpgrade_Skill_GunNut"
}
