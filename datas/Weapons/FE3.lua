--[[武器数据表,表中有大量item,每个item有如下数据(顺序无关)
name是名称,用来查询的主要依据,每个item不应该重名
chinese中文名,用来支持翻译,可无
type武器类型,用来判断是什么武器

以下几乎是所有武器都会有的基础数值
price价格,可无(比如非卖品)
durability耐久度,可无(即使用次数无限)
lv武器等级,可无(比如特定角色的专用武器)
weight武器重量,可无(默认为0)
range攻击范围,可无(默认为1-1)
might威力,可无(比如此威力根据某些公式计算)
hit命中率,可无(比如此威力根据某些公式计算)
critical必杀率,可无(比如此威力根据某些公式计算)
note说明,可无

以下是特殊数值
armorBreak(boolean)破甲,对抗重甲兵种时有利
knightBreak(boolean)破骑,对抗陆骑兵兵种有利
dragonSlay(boolean)斩龙,对抗龙骑士或龙族有利
antiAir(boolean)防空,对抗空军有利
magic(boolean)魔法,表明该武器攻击时作为魔法攻击
attribute属性,主要用于魔法武器(非魔法武器也可以)
devil(boolean)恶魔,攻击时候可能会损伤自己
vulnerary(boolean),可当伤药用
]]

MadePlace="Akania"
WeaponsData={
	{name="IronSword",chinese="铁剑",type=Sword,
		price=420,durability=42,weight=2,might=5,hit=90},
	{name="SteelSword",chinese="钢剑",type=Sword,
		price=760,durability=38,weight=4,might=8,hit=80},
	{name="SilverSword",chinese="银剑",type=Sword,
		price=2000,durability=20,weight=3,might=12,hit=90},
	{name="KillSword",chinese="必杀剑",type=Sword,
		price=1100,durability=22,weight=2,might=8,hit=100,critical=20},
	{name="MasterSword",chinese="大师剑",type=Sword,
		price=10000,durability=25,weight=5,might=12,hit=100,critical=30},
	{name="Rapier",chinese="突刺剑",type=Sword,
		price=3000,durability=30,weight=1,might=5,hit=90,critical=10,
		armorBreak=true,knightBreak=true},
	{name="LadySword",chinese="女士剑",type=Sword,
		price=1100,durability=22,weight=2,might=8,hit=100,critical=10,
		ladyOnly=true,brawnBreak=true},
	{name="ArmorKiller",chinese="破甲剑",type=Sword,
		price=1000,durability=20,weight=4,might=6,hit=100,
		armorBreak=true},
	{name="SworderKiller",chinese="剑士杀手",type=Sword,
		price=2400,durability=12,weight=4,might=8,hit=80,
		sworderBreak=true},
	{name="MiracleSword",chinese="奇迹剑",type=Sword,
		price=24000,durability=24,weight=4,might=20,hit=100,
		expX=2},
	{name="ThunderSword",chinese="雷剑",type=Sword,
		price=1400,durability=28,weight=5,might=10,hit=90,
		magic=true,attribute=Thunder,range={1,2}},
	{name="DragonKiller",chinese="杀龙剑",type=Sword,
		price=1600,durability=30,weight=4,might=10,hit=80,
		dragonSlay=true},
	{name="DevilSword",chinese="恶魔剑",type=Sword,
		price=1900,durability=20,weight=10,might=18,hit=80,
		curse=true},
	{name="Falcion",chinese="圣剑.法尔西昂",type=Sword,
		price=nil,durability=nil,weight=10,might=10,hit=100,
		dragonSlay=true},
	--枪
	{name="SlimSpear",chinese="细枪",type=Spear,
		price=450,durability=38,weight=2,might=5,hit=100,critical=5},
	{name="IronSpear",chinese="铁枪",type=Spear,
		price=380,durability=38,weight=6,might=7,hit=100},
	{name="SteelSpear",chinese="钢枪",type=Spear,
		price=560,durability=28,weight=8,might=10,hit=90},
	{name="SilverSpear",chinese="银枪",type=Spear,
		price=1600,durability=20,weight=7,might=14,hit=90},
	{name="KnightKiller",chinese="骑士杀手",type=Spear,
		price=700,durability=15,weight=5,might=5,hit=90,
		knightBreak=true},
	{name="Javelin",chinese="投枪",type=Spear,
		price=600,durability=20,weight=20,might=8,hit=70,
		range={1,2}},
	{name="KillerLance",chinese="必杀枪",type=Spear,
		price=1200,durability=24,weight=4,might=9,hit=100,critical=20},
	{name="Gladius",chinese="圣枪.古拉迪乌斯",type=Spear,
		price=17000,durability=17,weight=8,might=20,hit=100,
		expX=2},
	--斧
	{name="IronAxe",chinese="铁斧",type=Axe,
		price=430,durability=43,weight=7,might=8,hit=80},
	{name="SteelAxe",chinese="钢斧",type=Axe,
		price=600,durability=30,weight=9,might=11,hit=70},
	{name="SilverAxe",chinese="银斧",type=Axe,
		price=10000,durability=20,weight=9,might=15,hit=90},
	{name="Hatchet",chinese="投斧",type=Axe,
		price=450,durability=15,weight=9,might=5,hit=60,
		range={1,2}},
	{name="DevilAxe",chinese="恶魔斧",type=Axe,
		price=900,durability=9,weight=20,might=20,hit=70,
		curse=true},
	--弓
	{name="IronBow",chinese="铁弓",type=Bow,
		price=330,durability=18,weight=4,might=6,hit=100},
	{name="SteelBow",chinese="钢弓",type=Bow,
		price=560,durability=27,weight=7,might=9,hit=90},
	{name="SteelBow",chinese="银弓",type=Bow,
		price=2200,durability=22,weight=6,might=13,hit=100},
	{name="KillerBow",chinese="必杀弓",type=Bow,
		price=1000,durability=20,weight=3,might=8,hit=100,critical=20},
	{name="Parthia",chinese="圣弓.帕尔提亚",type=Bow,
		price=17000,durability=17,weight=7,might=20,hit=80,
		expX=2},
	--弩车
	{name="Helepolis",chinese="巨弩",type=Ballista,
		weight=20,might=6,hit=80,
		antiAir=true},
	{name="StoneThrower",chinese="投石器",type=Ballista,
		weight=20,might=15,hit=60},
	{name="FireBolt",chinese="火弩箭",type=Ballista,
		weight=20,might=10,hit=90,
		attribute=Fire},
	{name="ThunderBolt",chinese="雷弩箭",type=Ballista,
		weight=20,might=10,hit=80},
	{name="Cannon",chinese="大炮",type=Ballista,
		weight=20,might=20,hit=70},
}
