local db;
local icon;
local saveVar;

local iconName			= "WoWQuote";
local iconImg			= "Interface\\Icons\\inv_misc_book_08";
local iconOnClick		= function () WQ_ShowUI(); end;
local iconOnTooltipShow	= function (tooltip) tooltip:SetText(iconName); end;

db = LibStub("LibDataBroker-1.1"):NewDataObject(iconName,
{
	type = "data source",
	text = iconName,
	icon = iconImg,
	OnClick = function() iconOnClick(); end,
	OnTooltipShow = function(tooltip) iconOnTooltipShow(tooltip); end,
});
icon = LibStub("LibDBIcon-1.0");
icon:Register(iconName, db, saveVar);




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

icon:Register("WoWQuote", db, WoWQuote_savedVarTable);
