local db;
local icon;

db = LibStub("LibDataBroker-1.1"):NewDataObject("WoWQuote",
{
	type = "data source",
	text = "WoWQuote",
	icon = "Interface\\Icons\\inv_misc_book_08",
	OnClick = function() WQ_ShowUI(); end,
});
icon = LibStub("LibDBIcon-1.0");

icon:Register("WoWQuote", db, savedVarTable);
