# HowdyZTRExt
Killing Floor 2 Zedternal Extension



Hey Everyone! 

To install my extension you are going to need the file names.


To allow the perks to be playable in your ZedternalReborn.ini file (found in your config folder for your server) 
Under [ZedternalReborn.Config_PerkUpgrade]
Paste:

PerkUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Guardian,bIsStatic=False)
PerkUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Vampire,bIsStatic=False)
PerkUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Scientist,bIsStatic=False)
PerkUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Cryomancer,bIsStatic=False)
PerkUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_PlagueBearer,bIsStatic=False)


Increase this value (PerkUpgrade_NbAvailablePerks=) to 15: eg. "PerkUpgrade_NbAvailablePerks=15"

You can entirely choose which of these you play with by adding/removing the perks you don't want to use.


 - For Guardian.

Under [ZedternalReborn.Config_SkillUpgrade] in your ZedternalReborn.ini file
Paste:

SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Guardian",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_BloodthirstyArmor") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Guardian",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_Armorer") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Guardian",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_IronFlesh") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Guardian",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_PlatedArmor") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Guardian",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_BatteringRam") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Guardian",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_ExtraPockets") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Guardian",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_BlastPlating") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Guardian",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_ShockAbsorbers") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Guardian",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_HealingVest") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Guardian",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_Juggernaut")

  - For Scientist.

Under [ZedternalReborn.Config_SkillUpgrade] in your ZedternalReborn.ini file
Paste:

SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Scientist",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_ConvenientMalfunction") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Scientist",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_ChargedRounds") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Scientist",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_AddedVoltage") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Scientist",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_ConcentratedConcoction") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Scientist",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_Analytics") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Scientist",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_CompletedCircuit") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Scientist",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_Immunity") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Scientist",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_GunNut") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Scientist",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_ElectroStaticContraction") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Scientist",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_ShockJock")

  - For Cryomancer.

Under [ZedternalReborn.Config_SkillUpgrade] in your ZedternalReborn.ini file
Paste:

SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Cryomancer",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_CryoRounds") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Cryomancer",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_ColdHearted") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Cryomancer",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_ArcticChill") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Cryomancer",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_DeathChill") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Cryomancer",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_ColdStep") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Cryomancer",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_ExtraNades") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Cryomancer",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_CrackShot") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Cryomancer",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_PiercingCold") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Cryomancer",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_IcyArmor") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Cryomancer",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_LiquidLoading")

  - For PlagueBearer.

Under [ZedternalReborn.Config_SkillUpgrade] in your ZedternalReborn.ini file
Paste:

SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Plaguebearer",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_ZedDIE") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Plaguebearer",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_PatientZero") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Plaguebearer",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_SuddenBloating") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Plaguebearer",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_BileBomb") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Plaguebearer",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_Plaguewalker") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Plaguebearer",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_Antibodies") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Plaguebearer",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_Dyschronometria") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Plaguebearer",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_QuickFooted") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Plaguebearer",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_SkullCrack") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Plaguebearer",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_Kneecapper")

  - For Vampire.

Under [ZedternalReborn.Config_SkillUpgrade] in your ZedternalReborn.ini file
Paste:

SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Vampire",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_LaceratingRounds") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Vampire",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_DeepCuts") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Vampire",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_ShatterSpleen") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Vampire",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_Bloodthirst") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Vampire",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_BloodThinning") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Vampire",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_OverPower") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Vampire",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_Unyielding_Endurance") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Vampire",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_RadiantMending") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Vampire",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_UnholyFlesh") 
SkillUpgrade_Upgrade=(PerkPath="HowdyZTRExt.ZRUpgrade_Perk_Vampire",SkillPath="HowdyZTRExt.ZRUpgrade_Skill_Adrenaline")

  - For Equipment

These are entirely optional and intended to allow for very silly builds.
Firstly for the Exchange skills, these offer HUGE buffs, with a HUGE downside.

For Exchange Equipment
Under [ZedternalReborn.Config_EquipmentUpgrade] in your ZedternalReborn.ini file
Paste:

EquipmentUpgrade_Upgrade=(EquipmentPath="HowdyZTRExt.ZRUpgrade_Equipment_Exchange_ShapedGlass",BasePrice=5000,MaxPrice=7500,MaxLevel=2) 
EquipmentUpgrade_Upgrade=(EquipmentPath="HowdyZTRExt.ZRUpgrade_Equipment_Exchange_Pacifist",BasePrice=5000,MaxPrice=10000,MaxLevel=2) 
EquipmentUpgrade_Upgrade=(EquipmentPath="HowdyZTRExt.ZRUpgrade_Equipment_Exchange_Bulwark",BasePrice=5000,MaxPrice=10000,MaxLevel=2) 
EquipmentUpgrade_Upgrade=(EquipmentPath="HowdyZTRExt.ZRUpgrade_Equipment_Exchange_LightPacker",BasePrice=10000,MaxPrice=12500,MaxLevel=2) 
EquipmentUpgrade_Upgrade=(EquipmentPath="HowdyZTRExt.ZRUpgrade_Equipment_Exchange_ExcessiveMag",BasePrice=3000,MaxPrice=10000,MaxLevel=3) 
EquipmentUpgrade_Upgrade=(EquipmentPath="HowdyZTRExt.ZRUpgrade_Equipment_Exchange_TriggerHappy",BasePrice=5000,MaxPrice=10000,MaxLevel=2) 
EquipmentUpgrade_Upgrade=(EquipmentPath="HowdyZTRExt.ZRUpgrade_Equipment_Exchange_ShortMag",BasePrice=5000,MaxPrice=10000,MaxLevel=2)
EquipmentUpgrade_Upgrade=(EquipmentPath="HowdyZTRExt.ZRUpgrade_Equipment_Exchange_ShapedGlass",BasePrice=5000,MaxPrice=7500,MaxLevel=2) 
EquipmentUpgrade_Upgrade=(EquipmentPath="HowdyZTRExt.ZRUpgrade_Equipment_Exchange_Pacifist",BasePrice=5000,MaxPrice=10000,MaxLevel=2) 
EquipmentUpgrade_Upgrade=(EquipmentPath="HowdyZTRExt.ZRUpgrade_Equipment_Exchange_Bulwark",BasePrice=5000,MaxPrice=10000,MaxLevel=2) 
EquipmentUpgrade_Upgrade=(EquipmentPath="HowdyZTRExt.ZRUpgrade_Equipment_Exchange_LightPacker",BasePrice=10000,MaxPrice=12500,MaxLevel=2) 
EquipmentUpgrade_Upgrade=(EquipmentPath="HowdyZTRExt.ZRUpgrade_Equipment_Exchange_ExcessiveMag",BasePrice=3000,MaxPrice=10000,MaxLevel=3) 
EquipmentUpgrade_Upgrade=(EquipmentPath="HowdyZTRExt.ZRUpgrade_Equipment_Exchange_TriggerHappy",BasePrice=5000,MaxPrice=10000,MaxLevel=2) 
EquipmentUpgrade_Upgrade=(EquipmentPath="HowdyZTRExt.ZRUpgrade_Equipment_Exchange_ShortMag",BasePrice=5000,MaxPrice=10000,MaxLevel=2)

For Extra Equipment
Under [ZedternalReborn.Config_EquipmentUpgrade] in your ZedternalReborn.ini file
Paste:

EquipmentUpgrade_Upgrade=(EquipmentPath="HowdyZTRExt.ZRUpgrade_Equipment_SnakesBandana",BasePrice=50000,MaxPrice=100000,MaxLevel=1)
EquipmentUpgrade_Upgrade=(EquipmentPath="HowdyZTRExt.ZRUpgrade_Equipment_Untouchable",BasePrice=25000,MaxPrice=100000,MaxLevel=1)
