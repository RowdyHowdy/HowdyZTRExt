class ZRUpgrade_Skill_ShockAbsorbers extends WMUpgrade_Skill;

var array<float> Damage, DamageResistance;

static function ModifyDamageGiven(out int InDamage, int DefaultDamage, int upgLevel, optional Actor DamageCauser, optional KFPawn_Monster MyKFPM, optional KFPlayerController DamageInstigator, optional class<KFDamageType> DamageType, optional int HitZoneIdx, optional KFWeapon MyKFW)
{
	if (DamageInstigator != None && WMPawn_Human(DamageInstigator.Pawn) != None && WMPawn_Human(DamageInstigator.Pawn).ZedternalArmor > 0)
		InDamage += DefaultDamage * default.Damage[upgLevel - 1];
}

static function ModifyDamageTaken(out int InDamage, int DefaultDamage, int upgLevel, KFPawn OwnerPawn, optional class<DamageType> DamageType, optional Controller InstigatedBy, optional KFWeapon MyKFW)
{
	if (ClassIsChildOf(DamageType, class'KFDT_Falling') && OwnerPawn != None && WMPawn_Human(OwnerPawn).ZedternalArmor > 0)
		InDamage -= Round(float(DefaultDamage) * default.DamageResistance[upgLevel - 1]);
}

defaultproperties
{
	Damage(0)=0.15f
	Damage(1)=0.4f
	DamageResistance(0)=0.3f
	DamageResistance(1)=0.6f

	upgradeName="Shock Absorbers"
	upgradeDescription(0)="While you have body armor increase damage with <font color=\"#eaeff7\">all weapons</font> by 15% and reduce fall damage by 30%"
	upgradeDescription(1)="While you have body armor increase damage with <font color=\"#eaeff7\">all weapons</font> by <font color=\"#b346ea\">40%</font> and reduce fall damage by <font color=\"#b346ea\">60%</font>"
	upgradeIcon(0)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_SpecialUnit'
	upgradeIcon(1)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_SpecialUnit_Deluxe'

	Name="Default__ZRUpgrade_Skill_ShockAbsorbers"
}
