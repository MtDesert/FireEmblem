print("lua memory:"..collectgarbage("count")*1024)
print("collectgarbage.isrunning:"..tostring(collectgarbage("isrunning")))

--初始化武器类型
WeaponType={"Sword","Spear","Axe","Bow","Magic","CrossBow","DragonStone"}
for k,v in pairs(WeaponType) do
	local func,err=loadstring(v.."=\""..v.."\"")
	if func then func() end
	if err then print(err) end
end

dofile("../Weapons/FE1.lua")
dofile("../Characters/NewMysteryOfEmblem.lua")
dofile("../Characters/Echoes.lua")
dofile("../Rules/FE1.lua")

--从表结构table中获取首个名为name的数据
function getDataByName(tbl,name)
	if type(tbl)~="table" then return end
	for k,v in ipairs(tbl)do
		if v and v.name and v.name == name then
			return v
		end
	end
end

--打印table的值
function printTable(tbl)
	for k,v in pairs(tbl)do
		print(k..":"..tostring(v))
	end
end

--根据成长率growth和所升等级level计算能力值的加成,返回成长的整数部分和百分数部分
function abilityIncrease(growth,level)
	local product = growth * level
	return math.floor(product/100),math.fmod(product,100)
end

--构造单位(名字,等级)
function Unit(name,level)
	local data = getDataByName(CharactersData,name)
	if data then
		local unit={
			name=data.name,
			class=data.class,
			lv=level,
			hp=0,
			ability={},
			growth={},
		}
		--复制成长率
		for k,v in pairs(data.growth) do
			unit.growth[k]=v
		end
		--复制基础能力值--推算对应level的能力
		for k,v in pairs(data.ability) do
			local ability=v--能力值
			local growth = unit.growth[k];--对应成长率
			--根据成长率推断值
			local a,b = abilityIncrease(growth,level-data.lv)
			if b >= 50 then a = a + 1 end
			ability = ability + a
			--保存计算出来的成长率
			unit.ability[k]=ability
		end
		--加上状态值
		unit.hp=unit.ability.mhp
		return unit
	end
end

--打印单位
function printUnit(unit)
	local a=unit.ability
	print(unit.name.."\tlv:"..unit.lv
		.."\tmhp:"..a.mhp
		.."\tpow:"..a.pow
		.."\tmgc:"..a.mgc
		.."\tskl:"..a.skl
		.."\tspd:"..a.spd
		.."\tlck:"..a.lck
		.."\tdef:"..a.def
		.."\tmdf:"..a.mdf)
end
function printUnitStrike(unit)
	local a=unit.strike
	print(unit.name
		.."\t"..unit.hp.."/"..unit.ability.mhp
		.."\thit:"..a.hit
		.."\tdmg:"..a.dmg
		.."\tcrt:"..a.crt
		.."\tatkSpd:"..a.atkSpd)
end

--具体攻击
function attackUnit(unitA,unitB)
	local isCrt = (math.random(0,99) < unitA.strike.crt)
	local isHit = (math.random(0,99) < unitA.strike.hit)
	local might,damage=0,0
	if isHit then
		local factor=1
		if isCrt then factor=3 end--必杀损伤倍数
		might = unitA.strike.dmg * factor--威力
		damage = might
		if damage > unitB.hp then damage = unitB.hp end--损伤不超过hp
		unitB.hp = unitB.hp - damage
	end
	--计算完毕,构造文字
	if isCrt then isCrt="必杀" else isCrt="" end
	if isHit then isHit="损伤"..damage else isHit="避开了" end
	print(unitA.name..isCrt.."攻击,"..unitB.name..isHit)
end

function isHp0(unitA,unitB)
	if unitA and unitB then
		return isHp0(unitA) or isHp0(unitB)
	elseif unitA then
		return unitA.hp <= 0
	end
end

--攻击演算
function unitAttackUnit(unitA,unitB)
	--计算攻击参数
	unitA.strike=unitStrike(unitA,unitB)
	unitB.strike=unitStrike(unitB,unitA)
	printUnitStrike(unitA)
	printUnitStrike(unitB)
	--开始攻击
	attackUnit(unitA,unitB)
	if isHp0(unitA,unitB) then return end
	attackUnit(unitB,unitA)
	if isHp0(unitA,unitB) then return end
	--攻速快的再攻击
	if unitA.strike.atkSpd>unitB.strike.atkSpd then attackUnit(unitA,unitB) end
	if unitB.strike.atkSpd>unitA.strike.atkSpd then attackUnit(unitB,unitA) end
end

--开始模拟
math.randomseed(os.time())
local unitA=Unit("Alm",20)
local unitB=Unit("Celica",20)
printUnit(unitA)
printUnit(unitB)
unitA.equipWeapon=getDataByName(Weapons,"IronBow")
unitB.equipWeapon=getDataByName(Weapons,"Rapier")
unitAttackUnit(unitA,unitB)
print(unitA.name.."\t"..unitA.hp.."/"..unitA.ability.mhp)
print(unitB.name.."\t"..unitB.hp.."/"..unitB.ability.mhp)
