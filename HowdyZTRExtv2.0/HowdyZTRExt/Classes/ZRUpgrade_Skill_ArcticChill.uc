class ZRUpgrade_Skill_ArcticChill extends WMUpgrade_Skill;

var float Snare;
var array<float> RateOfFire;

static function ModifySnarePower(out float InSnarePower, float DefaultSnarePower, int upgLevel, optional class<DamageType> DamageType, optional byte BodyPart)
{
	if (ClassIsChildOf(DamageType, class'KFDT_Freeze'))
		InSnarePower += DefaultSnarePower * default.Snare;
}

static simulated function ModifyRateOfFirePassive(out float rateOfFireFactor, int upgLevel)
{
	rateOfFireFactor = 1.0f / (1.0f / rateOfFireFactor + default.RateOfFire[upgLevel - 1]);
}

static simulated function ModifyMeleeAttackSpeedPassive(out float durationFactor, int upgLevel)
{
	durationFactor = 1.0f / (1.0f / durationFactor + default.RateOfFire[upgLevel - 1]);
}



defaultproperties
{
	Snare=30.0f
	RateOfFire(0)=0.10f
	RateOfFire(1)=0.25f

	upgradeName="Arctic Chill"
	upgradeDescription(0)="Attack and shoot 10% faster with all weapons, and Zeds affected by freeze damage are slowed"
	upgradeDescription(1)="Attack and shoot <font color=\"#b346ea\">25%</font> faster with all weapons, and Zeds affected by freeze damage are slowed"
	upgradeIcon(0)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_Barbecue'
	upgradeIcon(1)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_Barbecue_Deluxe'

	Name="Default__ZRUpgrade_Skill_ArcticChill"
}
