class ZRUpgrade_Skill_Unyielding_Endurance_Helper extends Info
	transient;
// This is the class name, and we are extending from Info so the class is more optimized by disabling replication. It is required
// that the class name matches the filename as well, otherwise you will get a compilation error.

// These are the variables that the helper class uses. Some of them are defined as const, which means you can not change them during runtime.
var KFPawn_Human Player;
var const byte Regen;
var const array<float> TimeRegen;

// This is called once very early in the lifetime of this class. It is used mostly to do one time setup.
function PostBeginPlay()
{
	//Make sure we call the parent PostBeginPlay
	super.PostBeginPlay();

	// If player does not exist or is dead, delete the helper class
	Player = KFPawn_Human(Owner);
	if (Player == None || Player.Health <= 0)
		Destroy();
}

//This starts a timer to execute a function repeatedly
function StartTimer(bool bDeluxe)
{
	// SetTimer is a base function from the Actor parent class which calls a function called Timer when the time defined by TimeRegen elapses.
	// SetTimer's time unit is in seconds, and the boolean True means the timer loops and does not stop.
	if (bDeluxe)
		SetTimer(TimeRegen[1], True);
	else
		SetTimer(TimeRegen[0], True);
}

// The Timer function which is called by SetTimer
function Timer()
{
	// If player does not exist or is dead, delete the helper class. Else heal the player if it can.
	if (Player == None || Player.Health <= 0)
		Destroy();
	else if (Player.Health < Player.HealthMax)
		Player.Health = Min(Player.Health + Regen, Player.HealthMax);
}

defaultproperties
{
	// These are the default values for the variables defined above. They are used throughout the helper class.
	Regen=1
	TimeRegen(0)=1.0f
	TimeRegen(1)=1.0f

	// This is optional, but this is the name that the game engine will use when it creates an instance of this class using new or spawn,
	// for example the first class to be created would have the name Default__ZRUpgrade_Skill_Test3_Helper_0, the second
	// Default__ZRUpgrade_Skill_Test3_Helper_1, etc. If not defined, the game engine will auto-generate a name that is based on the class name.
	Name="Default__ZRUpgrade_Skill_Unyielding_Endurance_Helper"
}
