This directory allows you to effortlessly add basic crafting items that you
will likely want if making custom recipes with Smithy, such as pickaxe heads.

Simply drop a PNG file here with a name matching the item name you want,
such as "Iron Pickaxe Head.png". An item will be registered, a model will be
automatically generated, and the texture will be loaded into the game for use
by the model.

The name will be automatically sanitized to make a registry name; for example,
"Iron Pickaxe Head" will become "iron_pickaxe_head". The filename becomes the
en_us translation of the item. Alternate translations can be provided via the
config/smithy/lang directory.

Items will be registered in the "smithy_custom" namespace. Each launch, a
"items.log" will be written to this directory giving you the generated registry
name of every item.
