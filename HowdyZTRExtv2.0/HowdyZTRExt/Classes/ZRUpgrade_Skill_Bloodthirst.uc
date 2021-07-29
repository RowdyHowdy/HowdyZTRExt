class ZRUpgrade_Skill_Bloodthirst extends WMUpgrade_Skill;

var array<int> MeleeVampire, WeapVampire;

static function AddVampireHealth(out int InHealth, int DefaultHealth, int upgLevel, KFPlayerController KFPC, class<DamageType> DT)
{
	if (DT != None && static.IsMeleeDamageType(DT))
		InHealth += default.MeleeVampire[upgLevel - 1];
	else
		InHealth += default.WeapVampire[upgLevel - 1];
}

defaultproperties
{
	MeleeVampire(0)=3
	MeleeVampire(1)=8
	WeapVampire(0)=1
	WeapVampire(1)=2

	upgradeName="Bloodthirst"
	upgradeDescription(0)="Whenever you kill a ZED heal 3 points of health for any <font color=\"#caab05\">melee weapon</font> or heal 2 points of health for any <font color=\"#caab05\">other weapon</font>"
	upgradeDescription(1)="Whenever you kill a ZED heal <font color=\"#b346ea\">8</font> points of health for any <font color=\"#caab05\">melee weapon</font> or heal <font color=\"#b346ea\">5</font> points of health for any <font color=\"#caab05\">other weapon</font>"
	upgradeIcon(0)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_Vampire'
	upgradeIcon(1)=Texture2D'ZedternalReborn_Resource.Skills.UI_Skill_Vampire_Deluxe'

	Name="Default__ZRUpgrade_Skill_Bloodthirst"
}
