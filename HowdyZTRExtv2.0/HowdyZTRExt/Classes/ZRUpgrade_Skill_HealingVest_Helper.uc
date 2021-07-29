class ZRUpgrade_Skill_HealingVest_Helper extends Info
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
	if (Player.Armor <= 0) // Changed to enable heal on ZedTime
		bActivate = True;
	else
	{
		foreach DynamicActors(class'KFPawn_Human', KFPH)
		{
			if (Player.Armor <= 1 && KFPH.Health > 0 && VSizeSQ(Player.Location - KFPH.Location) <= RadiusSQ) // Changed to enable heal on ZedTime
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
		Player.StartAirBorneAgentEvent();
		Spawn(class'ZedternalReborn.WMFX_AirborneAgent', , , Player.Location, Player.Rotation, , True);

		if (bDeluxe)
		{
			Player.HealDamage(35, Player.Controller, class'KFGameContent.KFDT_Healing_MedicGrenade');
			foreach DynamicActors(class'KFPawn_Human', KFPH)
			{
				if (KFPH != Player && VSizeSQ(Player.Location - KFPH.Location) <= RadiusSQ)
					KFPH.HealDamage(20, Player.Controller, class'KFGameContent.KFDT_Healing_MedicGrenade');
			}
		}
		else
			Player.HealDamage(15, Player.Controller, class'KFGameContent.KFDT_Healing_MedicGrenade');

		SetTimer(Recharge, False);
	}
}

defaultproperties
{
	bDeluxe=False
	CriticalHealth=60
	RadiusSQ=160000
	Recharge=45.0f
	Update=0.5f

	Name="Default__ZRUpgrade_Skill_HealingVest_Helper"
}
