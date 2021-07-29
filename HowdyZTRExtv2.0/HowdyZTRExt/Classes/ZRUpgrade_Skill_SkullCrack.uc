class ZRUpgrade_Skill_SkullCrack extends WMUpgrade_Skill;

var array<float> Damage;
var const array<byte> BoneBreakerBodyParts;

static function ModifyDamageGiven(out int InDamage, int DefaultDamage, int upgLevel, optional Actor DamageCauser, optional KFPawn_Monster MyKFPM, optional KFPlayerController DamageInstigator, optional class<KFDamageType> DamageType, optional int HitZoneIdx, optional KFWeapon MyKFW)

{
	if (HitZoneIdx == HZI_HEAD)
	InDamage += default.Damage[upgLevel - 1];
}

defaultproperties
{
	Damage(0)=0.20f
	Damage(1)=0.40f

	upgradeName="SkullCrack"
	upgradeDescription(0)="Increase damage dealt to heads with <font color=\"#eaeff7\">all weapons</font> by 20%"
	upgradeDescription(1)="Increase damage dealt to heads with <font color=\"#eaeff7\">all weapons</font> by <font color=\"#b346ea\">40%</font>"
	upgradeIcon(0)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_Ruthless'
	upgradeIcon(1)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_Ruthless_Deluxe'

	Name="Default__ZRUpgrade_Skill_SkullCrack"
}
