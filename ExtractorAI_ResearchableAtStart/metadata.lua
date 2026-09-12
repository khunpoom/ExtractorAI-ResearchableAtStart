return PlaceObj("ModDef", {
	"title", "Extractor AI Researchable at Start",
	"short_description", "Makes the vanilla Extractor AI breakthrough researchable from game start. You still research it yourself.",
	"last_changes", "v1.2 - Added Preview.jpg for Paradox Mods upload.",
	"description", [[Makes the vanilla Breakthrough "Extractor AI" available to research from the start of a new game (and on existing saves).

It is only revealed - you still spend a Tech Point / research it yourself.
After research, Metals and Rare Metals extractors can work without crews at 50 performance (close worker slots as usual).

Does not grant the tech for free. Does not change extractor buildings.

Source (public, fork and edit freely):
https://github.com/khunpoom/ExtractorAI-ResearchableAtStart

Written entirely by Grok (xAI) for this project. You may modify, republish, and continue the mod as you like.]],
	"id", "xiperxp_ExtractorAIResearchableAtStart",
	"author", "xiperxp",
	"image", "Preview.jpg",
	"version", 4,
	"version_major", 1,
	"version_minor", 2,
	"lua_revision", 350453,
	"saved_with_revision", 350453,
	"code", {
		"Code/Script.lua",
	},
	"TagGameplay", true,
	"TagResearch", true,
})
