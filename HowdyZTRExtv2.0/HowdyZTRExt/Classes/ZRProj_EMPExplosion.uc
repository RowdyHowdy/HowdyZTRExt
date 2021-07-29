class ZRProj_EMPExplosion extends KFProj_EMPGrenade
	hidedropdown;

simulated function PostBeginPlay()
{
	super.PostBeginPlay();

	ExplodeTimer();
}

defaultproperties
{
	AssociatedPerkClass=Class'ZedternalReborn.WMPerk'
	FuseTime=0.05f

	Begin Object Name=ExploTemplate0
		Damage=20.0f
		DamageRadius=500.0f
		MyDamageType=Class'HowdyZTRExt.ZRDT_EMPExplosion'
		ActorClassToIgnoreForDamage=class'KFGame.KFPawn_Human'
	End Object

	Name="Default__ZRProj_EMPExplosion"
}
