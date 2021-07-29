class ZRUpgrade_Skill_PatientZero extends WMUpgrade_Skill;

static simulated function InitiateWeapon(int upgLevel, KFWeapon KFW, KFPawn OwnerPawn)
{
	local ZRUpgrade_Skill_PatientZero_Helper UPG;
	local bool bFound;

	if (KFPawn_Human(OwnerPawn) != None && OwnerPawn.Role == Role_Authority)
	{
		bFound = False;
		foreach OwnerPawn.ChildActors(class'ZRUpgrade_Skill_PatientZero_Helper', UPG)
		{
			bFound = True;
			break;
		}

		if (!bFound)
		{
			UPG = OwnerPawn.Spawn(class'ZRUpgrade_Skill_PatientZero_Helper', OwnerPawn);
			UPG.bDeluxe = (upgLevel > 1);
		}
	}
}

static simulated function DeleteHelperClass(Pawn OwnerPawn)
{
	local ZRUpgrade_Skill_PatientZero_Helper UPG;

	if (OwnerPawn != None)
	{
		foreach OwnerPawn.ChildActors(class'ZRUpgrade_Skill_PatientZero_Helper', UPG)
		{
			UPG.Destroy();
		}
	}
}

defaultproperties
{
	upgradeName="Patient Zero"
	upgradeDescription(0)="ZEDs within 1.5 meters of you become poisoned in seconds"
	upgradeDescription(1)="ZEDs within 1.5 meters of you become<font color=\"#b346ea\">lethally</font> poisoned in seconds"
	upgradeIcon(0)=Texture2D'ScientistPerkPackage.Patient_Zero_N'
	upgradeIcon(1)=Texture2D'ScientistPerkPackage.Patient_Zero_D'

	Name="Default__ZRUpgrade_Skill_PatientZero"
}
