class ZRUpgrade_Skill_Juggernaut extends WMUpgrade_Skill;

var array<float> Resistance;

static function bool CanNotBeGrabbed(int upgLevel, KFPawn OwnerPawn)
{
	if (KFPawn_Human(OwnerPawn) != None && KFPawn_Human(OwnerPawn).Armor > 0)
		return True;
	else
		return False;
}

static simulated function bool ImmuneToCameraShake(int upgLevel, KFPawn OwnerPawn)
{
	if (KFPawn_Human(OwnerPawn) != None && KFPawn_Human(OwnerPawn).Armor > 0)
		return True;
	else
		return False;
}

static function ModifyDamageTaken(out int InDamage, int DefaultDamage, int upgLevel, KFPawn OwnerPawn, optional class<DamageType> DamageType, optional Controller InstigatedBy, optional KFWeapon MyKFW)
{
	if (KFPawn_Human(OwnerPawn) != None && KFPawn_Human(OwnerPawn).Armor > 0)
	{
		InDamage -= Max(1, Round(float(DefaultDamage) * default.Resistance[upgLevel - 1]));
	}
}

defaultproperties
{
	Resistance(0)=0.1f
	Resistance(1)=0.2f

	upgradeName="Juggernaut"
	upgradeDescription(0)="While Wearing Armor clots can't grab you, you are immune to camera shake and increase damage resistance by 10%."
	upgradeDescription(1)="While Wearing Armor clots can't grab you, you are immune to camera shake and increase damage resistance by <font color=\"#b346ea\">20%</font>"
	upgradeIcon(0)=Texture2D'GuardianPerkPackage.Guardian_Plated_Armor_N'
	upgradeIcon(1)=Texture2D'GuardianPerkPackage.Guardian_Plated_Armor_D'

	Name="Default__ZRUpgrade_Skill_Juggernaut"
}
