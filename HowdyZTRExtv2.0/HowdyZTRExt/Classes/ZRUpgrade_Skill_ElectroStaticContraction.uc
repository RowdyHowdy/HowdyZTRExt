class ZRUpgrade_Skill_ElectroStaticContraction extends WMUpgrade_Skill;

var array<float> Knockdown;

static function ModifyKnockdownPower(out float InKnockdownPower, float DefaultKnockdownPower, int upgLevel, KFPawn OwnerPawn, optional class<DamageType> DamageType, optional byte BodyPart, optional bool bIsSprinting=False)
{
	if (ClassIsChildOf(DamageType, class'KFDT_EMP') && OwnerPawn != None)
		InKnockdownPower += DefaultKnockdownPower * default.Knockdown[1 + (upgLevel - 1) * 2];
}

defaultproperties
{
	Knockdown(0)=0.5f
	Knockdown(1)=1.0f

	upgradeName="Electrostatic Contraction"
	upgradeDescription(0)="When an enemy afflicted by EMP is attacked, they take an additional 50% knockdown damage"
	upgradeDescription(1)="When an enemy afflicted by EMP is attacked, they take an additional <font color=\"#b346ea\">100%</font> knockdown damage"
	upgradeIcon(0)=Texture2D'ScientistPerkPackage.Shatter_Spleen_N'
	upgradeIcon(1)=Texture2D'ScientistPerkPackage.Shatter_Spleen_D'

	Name="Default__ZRUpgrade_Skill_ElectroStaticContraction"
}
