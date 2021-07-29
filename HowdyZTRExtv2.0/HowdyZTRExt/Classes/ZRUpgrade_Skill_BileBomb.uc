class ZRUpgrade_Skill_BileBomb extends WMUpgrade_Skill;

var float MaxDamage, Probability;

static function ModifyDamageGiven(out int InDamage, int DefaultDamage, int upgLevel, optional Actor DamageCauser, optional KFPawn_Monster MyKFPM, optional KFPlayerController DamageInstigator, optional class<KFDamageType> DamageType, optional int HitZoneIdx, optional KFWeapon MyKFW)
{
	local rotator Rot;
	local vector Loc;

	if (MyKFPM != None && MyKFPM.IsAliveAndWell() && (MyKFPM.Health - InDamage) <= 0 && DamageInstigator != None && DamageInstigator.Pawn != None && (ClassIsChildOf(DamageType, class'KFDT_Toxic')))
	{
		Rot = rotator(MyKFPM.Velocity);
		Loc = MyKFPM.Location;
		Loc.Z -= MyKFPM.GetCollisionHeight();
		Rot.Pitch = 0;
		if (upgLevel == 1)
			DamageInstigator.Spawn(class'HowdyZTRExt.ZRProj_BileBomb', DamageInstigator, , Loc, Rot, , True);
		else
			DamageInstigator.Spawn(class'HowdyZTRExt.ZRProj_BileBomb_Deluxe', DamageInstigator, , Loc, Rot, , True);
	}
}

defaultproperties
{
	Probability=0.2f
	MaxDamage=1000.0f

	upgradeName="BileBomb"
	upgradeDescription(0)="When an enemy afflicted by poison dies, they explode and afflict poison to nearby zeds"
	upgradeDescription(1)="When an enemy afflicted by poison dies, they explode <font color=\"#b346ea\">hugely</font> and afflict poison to nearby zeds"
	upgradeIcon(0)=Texture2D'ScientistPerkPackage.Shatter_Spleen_N'
	upgradeIcon(1)=Texture2D'ScientistPerkPackage.Shatter_Spleen_D'

	Name="Default__ZRUpgrade_Skill_BileBomb"
}
