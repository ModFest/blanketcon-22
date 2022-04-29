This directory allows you to define material data for items not defined in data
packs. The filename must be a namespaced ID, with a space instead of a colon
(for Windows support).

Example material file, in "minecraft iron_ingot.json":
{
	"mass": 9.0,
	"workable_at": 1150,
	"weldable_at": 1400,
	"melts_at": 1540,
	"destroyed_at": 2860,
	"tier": 3
}

(This matches Smithy's built-in material definition and is redundant.)

Mass is, effectively, an abstraction of thermal capacity and thermal
conductivity. You can fudge the value to make things heat faster or slower. You
can also make materials inherit from others like so, in "minecraft iron_block.json":
{
	"parent": "minecraft:iron_ingot",
	"mass": 81.0
}
