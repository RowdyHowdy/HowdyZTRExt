class ZRUpgrade_Skill_SuddenBloating extends WMUpgrade_Skill;

var float MaxDamage, Probability;

static function ModifyDamageGiven(out int InDamage, int DefaultDamage, int upgLevel, optional Actor DamageCauser, optional KFPawn_Monster MyKFPM, optional KFPlayerController DamageInstigator, optional class<KFDamageType> DamageType, optional int HitZoneIdx, optional KFWeapon MyKFW)
{
	local rotator Rot;
	local vector Loc;

	if (MyKFPM != None && DamageInstigator != None && FRand() < Fmin(default.Probability, (float(DefaultDamage) / default.MaxDamage)))
	{
		Rot = rotator(MyKFPM.Velocity);
		Loc = MyKFPM.Location;
		Loc.Z -= MyKFPM.GetCollisionHeight();
		Rot.Pitch = 0;
		if (upgLevel == 1)
			DamageInstigator.Spawn(class'HowdyZTRExt.ZRProj_ToxicGas', DamageInstigator, , Loc, Rot, , True);
		else
			DamageInstigator.Spawn(class'HowdyZTRExt.ZRProj_ToxicGas_Deluxe', DamageInstigator, , Loc, Rot, , True);
	}
}

defaultproperties
{
	Probability=0.05f
	MaxDamage=800.0f

	upgradeName="Sudden Bloating"
	upgradeDescription(0)="attacks with <font color=\"#eaeff7\">all weapons</font> may spawn an nerve gas grenade with higher damage equaling a greater chance to explode"
	upgradeDescription(1)="attacks with <font color=\"#eaeff7\">all weapons</font> may cause a <font color=\"#b346ea\">powerful</font> nerve gas grenade with higher damage equaling a greater chance to explode"
	upgradeIcon(0)=Texture2D'ScientistPerkPackage.Completecd_circuit_N'
	upgradeIcon(1)=Texture2D'ScientistPerkPackage.Completecd_circuit_D'

	Name="Default__ZRUpgrade_Skill_SuddenBloating"
}
