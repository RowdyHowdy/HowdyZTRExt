class ZRUpgrade_Skill_RadiantMending extends WMUpgrade_Skill;

static simulated function InitiateWeapon(int upgLevel, KFWeapon KFW, KFPawn OwnerPawn)
{
	local ZRUpgrade_Skill_RadiantMending_Helper UPG;
	local bool bFound;

	if (KFPawn_Human(OwnerPawn) != None && OwnerPawn.Role == Role_Authority)
	{
		bFound = False;
		foreach OwnerPawn.ChildActors(class'ZRUpgrade_Skill_RadiantMending_Helper', UPG)
		{
			bFound = True;
			break;
		}

		if (!bFound)
		{
			UPG = OwnerPawn.Spawn(class'ZRUpgrade_Skill_RadiantMending_Helper', OwnerPawn);
			UPG.bDeluxe = (upgLevel > 1);
		}
	}
}

static simulated function DeleteHelperClass(Pawn OwnerPawn)
{
	local ZRUpgrade_Skill_RadiantMending_Helper UPG;

	if (OwnerPawn != None)
	{
		foreach OwnerPawn.ChildActors(class'ZRUpgrade_Skill_RadiantMending_Helper', UPG)
		{
			UPG.Destroy();
		}
	}
}

defaultproperties
{
	upgradeName="Radiant Mending"
	upgradeDescription(0)="Release healing gas when you are affected by ZedTime."
	upgradeDescription(1)="Release <font color=\"#b346ea\">potent</font> healing gas when you are affected by ZedTime."
	upgradeIcon(0)=Texture2D'GuardianPerkPackage.Guardian_Restored_Vigor_N'
	upgradeIcon(1)=Texture2D'GuardianPerkPackage.Guardian_Restored_Vigor_D'

	Name="Default__ZRUpgrade_Skill_RadiantMending"
}
