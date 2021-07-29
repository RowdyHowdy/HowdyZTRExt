class ZRUpgrade_Skill_BloodthirstyArmor_Helper extends Info
	transient;

var KFPawn_Human Player;

function PostBeginPlay()
{
	super.PostBeginPlay();

	Player = KFPawn_Human(Owner);
	if (Player == None || Player.Health <= 0)
		Destroy();
}

function GiveArmor(int Armor)
{
	Player.AddArmor(Armor);
}

defaultproperties
{
	Name="Default__ZRUpgrade_Skill_BloodthirstyArmor_Helper"
}
