return PlaceObj("ModDef", {
	"title", "Extractor AI Researchable at Start",
	"description", [[Makes the vanilla Breakthrough "Extractor AI" available to research from the start of a new game (and on existing saves).

It is only revealed — you still spend a Tech Point / research it yourself.
Metals and Rare Metals extractors can then work without crews at 50 performance after you research it (close worker slots as usual).

Does not grant the tech for free. Does not change extractor buildings.

Compatible with Surviving Mars: Relaunched. New game recommended; also works on loaded saves.]],
	"id", "xiperxp_ExtractorAIResearchableAtStart",
	"author", "xiperxp",
	"version", 1,
	"version_major", 1,
	"version_minor", 0,
	"lua_revision", 350453,
	"saved_with_revision", 350453,
	"code", {
		"Code/Script.lua",
	},
	"TagGameplay", true,
	"TagResearch", true,
})
