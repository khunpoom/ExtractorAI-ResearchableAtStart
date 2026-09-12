-- Extractor AI Researchable at Start
-- Reveals the vanilla Breakthrough "ExtractorAI" so it can be researched.
-- Does not research it for you.

local TECH_ID = "ExtractorAI"

local function GetColony()
	return rawget(_G, "UIColony") or rawget(_G, "UICity")
end

local function TechAlreadyAvailable(colony)
	if not colony then
		return false
	end
	if colony.IsTechResearched and colony:IsTechResearched(TECH_ID) then
		return true
	end
	if colony.IsTechDiscovered and colony:IsTechDiscovered(TECH_ID) then
		return true
	end
	local status = colony.tech_status and colony.tech_status[TECH_ID]
	if status and (status.researched or status.discovered) then
		return true
	end
	return false
end

local function RemoveFromBreakthroughQueue()
	local order = rawget(_G, "BreakthroughOrder")
	if type(order) ~= "table" then
		return
	end
	local idx = table.find(order, TECH_ID)
	if idx then
		table.remove(order, idx)
	end
end

local function DiscoverExtractorAI()
	if rawget(_G, "g_Tutorial") then
		return
	end
	if not TechDef or not TechDef[TECH_ID] then
		return
	end

	local colony = GetColony()
	if not colony or not colony.SetTechDiscovered then
		return
	end
	if TechAlreadyAvailable(colony) then
		RemoveFromBreakthroughQueue()
		return
	end

	colony:SetTechDiscovered(TECH_ID)
	RemoveFromBreakthroughQueue()
end

function OnMsg.CityStart()
	DiscoverExtractorAI()
end

function OnMsg.LoadGame()
	DiscoverExtractorAI()
end
