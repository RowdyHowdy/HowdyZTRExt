class ZRProj_GroundIce extends KFProj_FreezeThrower_GroundIce
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
		Damage=10.0f
		DamageRadius=100.0f
		MyDamageType=Class'HowdyZTRExt.ZRDT_CryoRounds'
		ActorClassToIgnoreForDamage=class'KFGame.KFPawn_Human'
	End Object

	Name="Default__ZRProj_GroundIce"
}
