class ZRUpgrade_Skill_Plaguewalker_Helper extends Info
	transient;

var KFPawn_Human Player;
var bool bDeluxe;
var const int CriticalHealth, RadiusSQ;
var const float Recharge, Update;

function PostBeginPlay()
{
	super.PostBeginPlay();

	Player = KFPawn_Human(Owner);
	if (Player == None || Player.Health <= 0)
		Destroy();
	else
		SetTimer(Update, False);
}

function Timer()
{
	local KFPawn_Human KFPH;
	local bool bActivate;

	if (Player == None || Player.Health <= 0)
	{
		Destroy();
		return;
	}

	bActivate = False;
	if (Player.Controller.WorldInfo.TimeDilation < 1) // Changed to enable heal on ZedTime
		bActivate = True;
	else
	{
		foreach DynamicActors(class'KFPawn_Human', KFPH)
		{
			if (Player.Controller.WorldInfo.TimeDilation < 1 && KFPH.Health > 0 && VSizeSQ(Player.Location - KFPH.Location) <= RadiusSQ) // Changed to enable heal on ZedTime
			{
				bActivate = True;
				break;
			}
		}
	}

	if (!bActivate)
		SetTimer(Update, False);
	else
	{
		if (bDeluxe)
		{	
			Spawn(class'HowdyZTRExt.ZRProj_BileBomb', , , Player.Location, Player.Rotation, , True);
		}
		else
			Spawn(class'HowdyZTRExt.ZRProj_BileBomb_Deluxe', , , Player.Location, Player.Rotation, , True);

		SetTimer(Recharge, False);
	}
}

defaultproperties
{
	bDeluxe=False
	CriticalHealth=60
	RadiusSQ=160000
	Recharge=1.0f
	Update=0.5f

	Name="Default__ZRUpgrade_Skill_Plaguewalker_Helper"
}
