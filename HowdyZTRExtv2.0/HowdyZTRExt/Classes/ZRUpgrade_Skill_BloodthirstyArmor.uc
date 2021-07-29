class ZRUpgrade_Skill_BloodthirstyArmor extends WMUpgrade_Skill;


var array<int> Armor;
var array<int> ArmorOnKillSmall;
var array<int> ArmorOnKillLarge;

static function ModifyDamageGiven(out int InDamage, int DefaultDamage, int upgLevel, optional Actor DamageCauser, optional KFPawn_Monster MyKFPM, optional KFPlayerController DamageInstigator, optional class<KFDamageType> DamageType, optional int HitZoneIdx, optional KFWeapon MyKFW)
{
	local ZRUpgrade_Skill_BloodthirstyArmor_Helper UPG;

	if (DamageInstigator.Pawn != None)
	{
		UPG = GetHelper(DamageInstigator.Pawn);
		if (UPG != None)
			// On Hit give Armor
			//UPG.GiveArmor(default.Armor[upgLevel - 1]);

			// On Small ZED Kill
			if (MyKFPM != None && MyKFPM.IsAliveAndWell() && (MyKFPM.Health - InDamage) <= 0 && DamageInstigator != None && DamageInstigator.Pawn != None)
			{
				UPG.GiveArmor(default.ArmorOnKillSmall[upglevel -1]);
				DamageInstigator.MyGFxHUD.ShowNonCriticalMessage("+" $ default.ArmorOnKillSmall[upglevel -1] $ " Armor");
			}
			// On Big ZED Kill
			if (MyKFPM != None && MyKFPM.bLargeZed && MyKFPM.IsAliveAndWell() && (MyKFPM.Health - InDamage) <= 0 && DamageInstigator != None && DamageInstigator.Pawn != None)
			{
				UPG.GiveArmor(default.ArmorOnKillLarge[upglevel -1]);
				DamageInstigator.MyGFxHUD.ShowNonCriticalMessage("+" $ default.ArmorOnKillLarge[upglevel -1] $ " Armor");
			}
	}
}

static function ZRUpgrade_Skill_BloodthirstyArmor_Helper GetHelper(Pawn OwnerPawn)
{
	local ZRUpgrade_Skill_BloodthirstyArmor_Helper UPG;

	if (WMPawn_Human(OwnerPawn) != None)
	{
		foreach OwnerPawn.ChildActors(class'ZRUpgrade_Skill_BloodthirstyArmor_Helper', UPG)
		{
			return UPG;
		}

		//Should have one
		UPG = OwnerPawn.Spawn(class'ZRUpgrade_Skill_BloodthirstyArmor_Helper', OwnerPawn);
	}

	return UPG;
}

static simulated function DeleteHelperClass(Pawn OwnerPawn)
{
	local ZRUpgrade_Skill_BloodthirstyArmor_Helper UPG;

	if (OwnerPawn != None)
	{
		foreach OwnerPawn.ChildActors(class'ZRUpgrade_Skill_BloodthirstyArmor_Helper', UPG)
		{
			UPG.Destroy();
		}
	}
}

defaultproperties
{
	Armor(0)=1
	Armor(1)=3
	ArmorOnKillSmall(0)=1
	ArmorOnKillSmall(1)=2
	ArmorOnKillLarge(0)=5
	ArmorOnKillLarge(1)=10
		
	upgradeName="Bloodthirsty Armor"

	upgradeDescription(0)="Killing a Zed repairs your Armor by 1, Repairs 5 Armor if it was a <font color=\"#eaeff7\">Large Zed</font>."
	upgradeDescription(1)="Killing a Zed repairs your Armor by 2, <font color=\"#b346ea\">Repairs 10 Armor</font> if it was a <font color=\"#eaeff7\">Large Zed</font>."

	upgradeIcon(0)=Texture2D'GuardianPerkPackage.Guardian_Blood_thirsty_armor_N'
	upgradeIcon(1)=Texture2D'GuardianPerkPackage.Guardian_Blood_thirsty_armor_D'

	Name="Default__ZRUpgrade_Skill_BloodthirstyArmor"
}
