This directory allows you to define fuel data for items not defined in data
packs. The filename must be a namespaced ID, with a space instead of a colon
(for Windows support).

Example fuel file, in "minecraft coal.json":
{
	"time": 2400,
	"burn_temperature": 1875,
	"stoked_burn_temperature": 2100,
	"ignition_temperature": 400
}

(This matches Smithy's built-in fuel definition and is redundant.)
