class ZRProj_BileBomb_Deluxe extends KFProj_BloatKingPukeMine
	hidedropdown;

simulated function PostBeginPlay()
{
	super.PostBeginPlay();
}

simulated function bool ValidTouch(Pawn Other)
{
	// only detonated when touched by enemies
	if (Other.GetTeamNum() == TeamNum || !Other.IsAliveAndWell())
	{
		return true;
	}

	// only detonate after landing
	if (Physics != PHYS_None)
	{
		return false;
	}

	// Make sure not touching through wall
	return FastTrace(Other.Location, Location, , true);
}

defaultproperties
{
	AssociatedPerkClass=Class'ZedternalReborn.WMPerk'
	

	Begin Object Name=ExploTemplate0
		Damage=40.0f
		DamageRadius=400.0f
		MyDamageType=Class'HowdyZTRExt.ZRDT_AcidicRounds_DoT'
		ActorClassToIgnoreForDamage=class'KFGame.KFPawn_Human'
		DamageFalloffExponent=0.f
		DamageDelay=0.f
		bIgnoreInstigator=True
	End Object


	Name="Default__ZRProj_BileBomb_Deluxe"
}
