class ZRProj_GroundIce_Deluxe extends KFProj_FreezeThrower_GroundIce
	hidedropdown;

simulated function PostBeginPlay()
{
	super.PostBeginPlay();
}

defaultproperties
{
	AssociatedPerkClass=Class'ZedternalReborn.WMPerk'

	PostExplosionLifetime=5.0

	Begin Object Name=ExploTemplate0
		Damage=20.0f
		DamageRadius=200.0f
		MyDamageType=Class'HowdyZTRExt.ZRDT_CryoRounds'
		ActorClassToIgnoreForDamage=class'KFGame.KFPawn_Human'
	End Object

	Name="Default__ZRProj_GroundIce_Deluxe"
}
