class ZRUpgrade_Skill_IcyArmor extends WMUpgrade_Skill;

var array<float> Damage;
var KFPawn_Human Player;

static function ModifyDamageTaken(out int InDamage, int DefaultDamage, int upgLevel, KFPawn OwnerPawn, optional class<DamageType> DamageType, optional Controller InstigatedBy, optional KFWeapon MyKFW)
{
	if (OwnerPawn != None && VSizeSq(OwnerPawn.Velocity) <= 0)
		InDamage -= Round(float(DefaultDamage) * default.Damage[upgLevel - 1]);
}

defaultproperties
{
	Damage(0)=0.15f
	Damage(1)=0.30f

	upgradeName="Icy Armor"
	upgradeDescription(0)="While stationary decrease damage taken by 15%"
	upgradeDescription(1)="While stationary decrease damage taken by <font color=\"#b346ea\">30%</font>"
	upgradeIcon(0)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_Sniper'
	upgradeIcon(1)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_Sniper_Deluxe'

	Name="Default__ZRUpgrade_Skill_IcyArmor"
}
