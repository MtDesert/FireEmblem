MadePlace="Valentia"
WeaponsData={
	--剑
	{name="SteelSword",chinese="钢剑",type=Sword,
		weight=1,might=4,hit=80},
	{name="SilverSword",chinese="银剑",type=Sword,
		weight=1,might=8,hit=90},
	{name="BraveSword",chinese="勇者剑",type=Sword,
		weight=0,might=5,hit=100,critical=30},
	{name="RoyalSword",chinese="王族剑",type=Sword,
		weight=0,might=7,hit=100,critical=15,
		autoRecover=true},
	{name="ThunderSword",chinese="雷剑",type=Sword,
		weight=3,might=nil,hit=80,
		magic=true,attribute=Thunder,range={1,2}},
	{name="HolySword",chinese="神圣剑",type=Sword,
		weight=0,might=3,hit=100,critical=15,
		autoRecover=true,monsterSlay=true},
	{name="DarkSword",chinese="黑暗剑",type=Sword,
		weight=5,might=13,hit=70,
		curse=true},
	{name="Falcion",chinese="圣剑.法尔西昂",type=Sword,
		weight=0,might=10,hit=80,
		autoRecover=true,monsterSlay=true},
	--枪
	{name="SteelSpear",chinese="钢枪",type=Spear,
		weight=1,might=4,hit=80},
	{name="SilverSpear",chinese="银枪",type=Spear,
		weight=1,might=8,hit=90},
	{name="Javalin",chinese="投枪",type=Spear,
		weight=2,might=3,hit=70,range={1,2}},
	{name="KnightKiller",chinese="杀骑枪",type=Spear,
		weight=1,might=3,hit=85,
		knightBreak=true},
	{name="HolySpear",chinese="神圣枪",type=Spear,
		weight=0,might=3,hit=90,critical=10,
		autoRecover=true,monsterSlay=true},
	{name="Gladius",chinese="圣枪.古拉迪乌斯",type=Spear,
		weight=0,might=15,hit=100,range={1,2},
		autoRecover=true},
	{name="MeteorSpear",chinese="流星枪",type=Spear,
		weight=0,might=10,hit=100,critical=50,
		autoRecover=true},
	{name="MoonLightSpear",chinese="月光枪",type=Spear,
		weight=1,might=10,hit=100,
		autoRecover=true,terrainInvalid=true},
	{name="SteelSpear",chinese="钢枪",type=Spear,
		weight=2,might=20,hit=80,
		autoRecover=true},
	--弓
	{name="SteelBow",chinese="钢弓",type=Bow,
		weight=1,might=3,hit=70,range={1,5}},
	{name="SilverBow",chinese="银弓",type=Bow,
		weight=2,might=7,hit=80,range={1,5}},
	{name="HolyBow",chinese="神圣弓",type=Bow,
		weight=0,might=5,hit=100,range={1,5},
		autoRecover=true,monsterSlay=true},
}
