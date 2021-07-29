class ZRUpgrade_Skill_ConvenientMalfunction extends WMUpgrade_Skill;

static function ModifyDamageTaken(out int InDamage, int DefaultDamage, int upgLevel, KFPawn OwnerPawn, optional class<DamageType> DamageType, optional Controller InstigatedBy, optional KFWeapon MyKFW)
{
	local ZRUpgrade_Skill_ConvenientMalfunction_Helper UPG;

	if (InDamage > 0)
	{
		UPG = GetHelper(OwnerPawn, upgLevel);
		if (UPG != None && UPG.bReady)
			UPG.Explosion();
	}
}

static function ZRUpgrade_Skill_ConvenientMalfunction_Helper GetHelper(KFPawn OwnerPawn, int upgLevel)
{
	local ZRUpgrade_Skill_ConvenientMalfunction_Helper UPG;

	if (KFPawn_Human(OwnerPawn) != None)
	{
		foreach OwnerPawn.ChildActors(class'ZRUpgrade_Skill_ConvenientMalfunction_Helper', UPG)
		{
			return UPG;
		}

		//Should have one
		UPG = OwnerPawn.Spawn(class'ZRUpgrade_Skill_ConvenientMalfunction_Helper', OwnerPawn);
		UPG.bDeluxe = (upgLevel > 1);
	}

	return UPG;
}

static simulated function DeleteHelperClass(Pawn OwnerPawn)
{
	local ZRUpgrade_Skill_ConvenientMalfunction_Helper UPG;

	if (OwnerPawn != None)
	{
		foreach OwnerPawn.ChildActors(class'ZRUpgrade_Skill_ConvenientMalfunction_Helper', UPG)
		{
			UPG.Destroy();
		}
	}
}

defaultproperties
{
	upgradeName="Convenient Malfunction"
	upgradeDescription(0)="Release an EMP explosion when you take damage"
	upgradeDescription(1)="Release a <font color=\"#b346ea\">huge</font> EMP explosion when you take damage"
	upgradeIcon(0)=Texture2D'ScientistPerkPackage.Convenient_Malfunction_N'
	upgradeIcon(1)=Texture2D'ScientistPerkPackage.Convenient_Malfunction_D'

	Name="Default__ZRUpgrade_Skill_ConvenientMalfunction"
}
