class ZRUpgrade_Skill_Unyielding_Endurance extends WMUpgrade_Skill;
// This is the class name, and we are extending from WMUpgrade_Skill so that we have skill upgrade functionality. It is required that the
// class name matches the filename as well, otherwise you will get a compilation error.

// This is the variable that we will use for modifying the player stats within functions defined from WMUpgrade. The functions from
// WMUpgrade are ultimately called from WMPerk, the class in charge of basically everything when it comes to modification of player stats.
var array<float> Health;

// This increases player health
static function ModifyHealth(out int InHealth, int DefaultHealth, int upgLevel)
{
	// upgLevel will either be 1 or 2 depending on version of the skill (1 for base and 2 for deluxe). Arrays are always zero-based indexing
	// so we have to put upgLevel - 1 when accessing the array to avoid a out of bounds exception.
	InHealth += Round(float(DefaultHealth) * default.Health[upgLevel - 1]);
}

// This function is only executed infrequently, good for creating a helper class which requires little interaction with the skill code
static simulated function InitiateWeapon(int upgLevel, KFWeapon KFW, KFPawn OwnerPawn)
{
	local ZRUpgrade_Skill_Unyielding_Endurance_Helper UPG;
	local bool bFound;

	// This checks if the pawn is a human (player) and that the pawn has the role Role_Authority, which is almost always the server side.
	// This prevents an issue where the helper class is created on both the client and server which can cause problems if the helper class
	// is only designed to be run by server (no replication defined in the helper class). In this case, if the helper class was created on
	// both the client and server then the health regen would be doubled what it actually should be.
	if (KFPawn_Human(OwnerPawn) != None && OwnerPawn.Role == Role_Authority)
	{
		// See if the player already has a helper class
		bFound = False;
		foreach OwnerPawn.ChildActors(class'ZRUpgrade_Skill_Unyielding_Endurance_Helper', UPG)
		{
			// If found, do nothing
			bFound = True;
			break;
		}

		// If no helper class was found, create one using spawn and set the owner as OwnerPawn
		if (!bFound)
		{
			UPG = OwnerPawn.Spawn(class'ZRUpgrade_Skill_Unyielding_Endurance_Helper', OwnerPawn);
			UPG.StartTimer(upgLevel > 1);
		}
	}
}

// This is called by the perk reroll code when removing a skill from a player. This ensures that no rouge helper classes are still running
// even when the player does not own the skill anymore. It is very important to define this function when you are using helper classes with
// your skill.
static simulated function DeleteHelperClass(Pawn OwnerPawn)
{
	local ZRUpgrade_Skill_Unyielding_Endurance_Helper UPG;

	if (OwnerPawn != None)
	{
		foreach OwnerPawn.ChildActors(class'ZRUpgrade_Skill_Unyielding_Endurance_Helper', UPG)
		{
			// Destroy the helper class
			UPG.Destroy();
		}
	}
}

defaultproperties
{
	// This is the default value for the variable defined above, Health. Most skill variables are defined as an array as you will need two
	// numbers, one for the base version and one for the deluxe version of the skill.
	Health(0)=0.15f
	Health(1)=0.30f

	// The name of the skill on the upgrade menu
	upgradeName="Unyielding Endurance"

	// The description for the skill, one for the base version and one for the deluxe version. Text coloring can be done by using
	// the syntax <font color=\"#color code goes here\">text goes here</font>, example: <font color=\"#b346ea\">foo bar test</font>
	upgradeDescription(0)="Increase total health by 15% and regenerate 1 health point every second"
	upgradeDescription(1)="Increase total health by <font color=\"#b346ea\">30%</font> and regenerate 2 health points <font color=\"#b346ea\">every second</font>"
	
	// The icons to display on the upgrade menu for this skill. Skills have two icons only, one for the base version and one for the
	// deluxe version. It is required to define both of them because skills always come in a base and deluxe version,
	// otherwise a placeholder icon will be used for the missing icons.
	upgradeIcon(0)=Texture2D'GuardianPerkPackage.Guardian_Unyielding_Endurance_N'
	upgradeIcon(1)=Texture2D'GuardianPerkPackage.Guardian_Unyielding_Endurance_D'

	// This is optional, but this is the name that the game engine will use when it creates an instance of this class using new or spawn,
	// for example the first class to be created would have the name Default__ZRUpgrade_Skill_Unyielding_Endurance_0, the second
	// Default__ZRUpgrade_Skill_Unyielding_Endurance_1, etc. If not defined, the game engine will auto-generate a name that is based on the class name.
	Name="Default__ZRUpgrade_Skill_Unyielding_Endurance"
}
