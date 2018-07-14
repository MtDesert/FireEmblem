dofile("../Classes.lua")

--特效表
specialEffectList={
	{"knightBreak","isKnight"},--破骑武器
	{"armorBreak","isArmor"},--破甲武器
	{"antiAir","isAirForce"},--对空武器
	{"dragonSlay","isDragon"},--杀龙武器
	{"ballistaBreak","isBallista"},--杀弩车武器
	{"monsterSlay","isMonster"},--杀怪武器
}

--有无特效判断
function hasSpecialEffect(weaponData,classData)
	if weaponData and classData then
		for k,v in pairs(specialEffectList) do
			if weaponData[v[1]] == true and classData[v[2]] == true then
				return true
			end
		end
		--通用情况,弓克飞行系
		if weaponData.type==Bow and classData.isAirForce then
			return true
		end
	end
end

--单位攻击力=力量+武器威力*特效系数
function unitAtk(unit,specialEffect)
	local ret = unit.ability.pow
	if unit.equipWeapon then
		local factor=1--非特效情况
		if specialEffect then factor=3 end--特效情况
		ret = ret + unit.equipWeapon.might * factor
	end
	return ret
end

--单位攻击速度=速度-武器重量
function unitAtkSpd(unit)
	local ret = unit.ability.spd
	if unit.equipWeapon then
		ret = ret - unit.equipWeapon.weight
	end
	return ret
end

--单位命中率=技术+武器命中率
function unitHit(unit)
	local ret = unit.ability.skl
	if unit.equipWeapon then
		ret = ret + unit.equipWeapon.hit
	end
	return ret
end

--单位回避率=速度+地形回避-武器重量
function unitAvoid(unit,terrainEffect)
	local ret = unit.ability.spd
	if terrainEffect then
		ret = ret + terrainEffect
	end
	if unit.equipWeapon then
		ret = ret - unit.equipWeapon.weight
	end
	return ret
end

--单位必杀率=取整((技术+速度)/2+武器必杀率)
function unitCrt(unit)
	local ret = (unit.ability.skl + unit.ability.lck) / 2
	if unit.equipWeapon and unit.equipWeapon.critical then
		ret = ret + unit.equipWeapon.critical
	end
	return math.floor(ret)
end

--单位A对单位B的命中损伤必杀
function unitStrike(unitA,unitB)
	local ret={}
	local classData = getDataByName(ClassesData,unitB.class)--获取对方职业
	local effect = hasSpecialEffect(unitA.equipWeapon,classData)--判断武器特效
	ret.hit = unitHit(unitA) - unitAvoid(unitB)--实际命中
	ret.dmg = unitAtk(unitA,effect) - unitB.ability.def--实际损伤
	ret.crt = unitCrt(unitA)--实际必杀率
	ret.atkSpd=unitAtkSpd(unitA)--攻击速度
	return ret
end
