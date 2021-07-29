class ZRUpgrade_Skill_BatteringRam extends WMUpgrade_Skill;

var array<float> Speed;

static simulated function bool ShouldKnockDownOnBump(int upgLevel, KFPawn_Monster KFPM, KFPawn OwnerPawn)
{
	return OwnerPawn.Controller.WorldInfo.TimeDilation < 1.0f;
}

static simulated function ModifySpeedPassive(out float speedFactor, int upgLevel)
{
	speedFactor += default.Speed[upgLevel - 1];
}

defaultproperties
{
	Speed(0)=0.05f
	Speed(1)=0.10f
	

	upgradeName="Battering Ram"
	upgradeDescription(0)="You move 5% faster and knockdown zeds on contact during ZED Time"
	upgradeDescription(1)="You move <font color=\"#b346ea\">10%</font> faster and knockdown zeds on contact during ZED Time"
	upgradeIcon(0)=Texture2D'GuardianPerkPackage.Guardian_Battaring_Ram_N'
	upgradeIcon(1)=Texture2D'GuardianPerkPackage.Guardian_Battaring_Ram_D'

	Name="Default__ZRUpgrade_Skill_BatteringRam"
}


