ClassesData={
	{name="",chinese=""},
--王族
	{name="Lord",chinese="领主"},
	{name="Prince",chinese="王子"},
	{name="Princess",chinese="公主"},
	{name="Queen",chinese="皇后"},
	{name="King",chinese="国王"},
	{name="Emperor",chinese="皇帝"},
--平民
	{name="Villager",chinese="村民"},
	{name="Dancer",chinese="舞者"},
	{name="Bard",chinese="吟游诗人"},
--骑士
	{name="Cavalier",chinese="骑兵",isKnight=true},
	{name="Knight",chinese="骑士",isKnight=true},

	{name="SwordArmor",chinese="剑甲兵"},
	{name="SwordCavalier",chinese="剑骑兵",isKnight=true},
	{name="SwordKnight",chinese="剑骑士",isKnight=true},

	{name="LanceArmor",chinese="枪甲兵"},
	{name="LanceCavalier",chinese="枪骑兵",isKnight=true},
	{name="LanceKnight",chinese="枪骑士",isKnight=true},

	{name="AxeArmor",chinese="斧甲兵"},
	{name="AxeCavalier",chinese="斧骑兵",isKnight=true},
	{name="AxeKnight",chinese="斧骑士",isKnight=true},

	{name="ArchArmor",chinese="弓甲兵"},
	{name="ArchKnight",chinese="弓骑士",isKnight=true},
	{name="BowKnight",chinese="弩骑士",isKnight=true},

	{name="FreeKnight",chinese="自由骑士"},
	{name="PriestKnight",chinese="神官骑士"},
	{name="MagicKnight",chinese="魔法骑士"},
	{name="LordKnight",chinese="领主骑士",isKnight=true},
	{name="DukeKnight",chinese="公爵骑士"},
	{name="MasterKnight",chinese="统帅骑士"},
	{name="Paladin",chinese="圣骑士",isKnight=true},
	{name="SilverKnight",chinese="银骑士",isKnight=true},
	{name="GoldenKnight",chinese="金骑士",isKnight=true},
--空军
	{name="PegasusKnight",chinese="天马骑士",isAirForce=true},
	{name="DragonKnight",chinese="龙骑士",isAirForce=true},
	{name="DragonMaster",chinese="龙骑统帅",isAirForce=true},
	{name="FalconKnight",chinese="隼骑士",isAirForce=true},
--剑术系
	{name="Sworder",chinese="剑士"},
	{name="MagicSworder",chinese="魔剑士"},
	{name="SwordMaster",chinese="剑圣"},
	{name="Mercenary",chinese="佣兵"},
	{name="Braver",chinese="勇者"},
--弓箭系
	{name="Archer",chinese="弓箭手"},
	{name="Sniper",chinese="狙击手"},
	{name="Hunter",chinese="猎人"},
	{name="HorseArcher",chinese="马弓手"},

	{name="Ballista",chinese="弩车"},

	{name="Soldier",chinese="士兵"},
	{name="ArmorSoldier",chinese="装甲兵",isArmor=true},
	{name="General",chinese="将军",isArmor=true},

	{name="Barbarian",chinese="野蛮人"},
	{name="Bandit",chinese="土匪"},
	{name="Fighter",chinese="战士"},
	{name="Berserker",chinese="狂战士"},
	{name="Warrior",chinese="勇士"},
	{name="MountainThief",chinese="山贼"},
	{name="Pirate",chinese="海盗"},
--隐秘系
	{name="Thief",chinese="盗贼"},
	{name="Bandit",chinese="侠盗"},
	{name="Assassin",chinese="刺客"},

	{name="Commander",chinese="指挥官"},
	{name="Mamkute",chinese="龙人"},

	{name="Cleric",chinese="传教士"},
	{name="Warlock",chinese="术士"},
	{name="Mage",chinese="法师"},
	{name="DarkMage",chinese="暗法师"},
	{name="DarkBishop",chinese="暗教主"},
	{name="Monk",chinese="僧侣"},
	{name="Priest",chinese="牧师"},
	{name="Bishop",chinese="教主"},
	{name="Sister",chinese="修女"},
	{name="Saintess",chinese="圣女"},
	{name="Sorcer",chinese="男法师"},
	{name="Sorceress",chinese="女法师"},
	{name="Wizard",chinese="男巫师"},
	{name="Witch",chinese="女巫"},
	{name="Siren",chinese="女海妖"},
	{name="Sage",chinese="贤者"},
	{name="Conjurer",chinese="妖术师"},
	{name="Shaman",chinese="祈祷师"},
	{name="Druid",chinese="德鲁伊"},
}

--特效表
specialEffectList={
	{"knightBreak","isKnight"},--破骑武器
	{"armorBreak","isArmor"},--破甲武器
	{"antiAir","isAirForce"},--对空武器
	{"dragonSlay","isDragon"},--杀龙武器
	{"ballistaBreak","isBallista"},--杀弩车武器
	{"monsterSlay","isMonster"},--杀怪武器
}
