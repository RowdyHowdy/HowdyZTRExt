class ZRProj_ToxicGas_Deluxe extends KFProj_HansNerveGasGrenade
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
		Damage=40.0f
		DamageRadius=1000.0f
		MyDamageType=Class'HowdyZTRExt.ZRDT_AcidicRounds_DoT'
		ActorClassToIgnoreForDamage=class'KFGame.KFPawn_Human'
	End Object

	Name="Default__ZRProj_ToxicGas_Deluxe"
}
