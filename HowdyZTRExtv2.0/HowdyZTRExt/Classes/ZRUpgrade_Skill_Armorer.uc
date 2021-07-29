class ZRUpgrade_Skill_Armorer extends WMUpgrade_Skill;

var array<float> Armor;
var float SupplierArmor;

static simulated function bool IsSupplierActive(int upgLevel)
{
	return True;
}

static simulated function SupplierModifiers(int upgLevel, out float PrimaryAmmoPercentage, out float SecondaryAmmoPercentage, out float ArmorPercentage, out int GrenadeAmount)
{
	ArmorPercentage += default.SupplierArmor;
}

static function ModifyArmor(out int MaxArmor, int DefaultArmor, int upgLevel)
{
	MaxArmor += Round(float(DefaultArmor) * default.Armor[upgLevel - 1]);
}

defaultproperties
{
	Armor(0)=0.2f
	Armor(1)=0.40f
	SupplierArmor=0.3f;

	upgradeName="Armorer"
	upgradeDescription(0)="Increase max armor by 20% and once per wave your teammates can repair 30% of their armor by interacting with you"
	upgradeDescription(1)="Increase max armor by <font color=\"#b346ea\">40%</font> and once per wave your teammates can repair 30% of their armor by interacting with you"
	upgradeIcon(0)=Texture2D'GuardianPerkPackage.Guardian_Armor_supplier_N'
	upgradeIcon(1)=Texture2D'GuardianPerkPackage.Guardian_Armor_supplier_D'

	Name="Default__ZRUpgrade_Skill_Armorer"
}
