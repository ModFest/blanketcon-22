This directory allows you to inject additional translations into the game, such
as for custom items defined in config/smithy/items.

These translation files are injected directly, and so use the vanilla JSON lang
file format. For example, if you have an "Iron Armor Plate.png" item you want
to localize, this could be in an en_uk.json:

{
	"item.smithy_custom.iron_armor_plate": "Iron Armour Plate"
}
