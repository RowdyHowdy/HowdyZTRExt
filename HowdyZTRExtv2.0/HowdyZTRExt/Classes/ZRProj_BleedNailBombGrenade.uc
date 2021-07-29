class ZRProj_BleedNailBombGrenade extends KFProj_NailBombGrenade
	hidedropdown;

defaultproperties
{
	FuseTime=0.05f

	Begin Object Name=ExploTemplate0
		Damage=15.0f
		DamageRadius=500.0f
		MyDamageType=Class'HowdyZTRExt.ZRDT_laceratingRounds_DoT'
		ActorClassToIgnoreForDamage=class'KFGame.KFPawn_Human'
	End Object
	
	Name="Default__ZRProj_BleedNailBombGrenade"
}
