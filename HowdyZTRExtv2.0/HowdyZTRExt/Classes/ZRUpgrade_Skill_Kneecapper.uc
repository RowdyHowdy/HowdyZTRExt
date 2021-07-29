class ZRUpgrade_Skill_Kneecapper extends WMUpgrade_Skill;

var array<float> Knockdown;
var const array<byte> BoneBreakerBodyParts;

static function ModifyKnockdownPower(out float InKnockdownPower, float DefaultKnockdownPower, int upgLevel, KFPawn OwnerPawn, optional class<DamageType> DamageType, optional byte BodyPart, optional bool bIsSprinting=False)
{
	if (default.BoneBreakerBodyParts.Find(class'KFGame.KFPawn_Monster'.default.HitZones[BodyPart].Limb) != INDEX_NONE)
		InKnockdownPower += DefaultKnockdownPower * default.Knockdown[1 + (upgLevel - 1) * 2];
}

defaultproperties
{
	Knockdown(0)=0.6f
	Knockdown(1)=0.7f
	Knockdown(2)=0.9f
	Knockdown(3)=1.0f
	BoneBreakerBodyParts(0)=2
	BoneBreakerBodyParts(1)=3
	BoneBreakerBodyParts(2)=4
	BoneBreakerBodyParts(3)=5

	upgradeName="Kneecapper"
	upgradeDescription(0)="Shooting ZEDs in the arms and legs with <font color=\"#eaeff7\">all weapons</font> knockdown power by 50% for limb shots"
	upgradeDescription(1)="Shooting ZEDs in the arms and legs with <font color=\"#eaeff7\">all weapons</font> knockdown power by <font color=\"#b346ea\">80%</font> for limb shots"
	upgradeIcon(0)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_BoneBreaker'
	upgradeIcon(1)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_BoneBreaker_Deluxe'

	Name="Default__ZRUpgrade_Skill_Kneecapper"
}
