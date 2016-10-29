--[[  OpenSpace keybinding script ]]--

-- Load the common helper functions
dofile(openspace.absPath('${SCRIPTS}/common.lua'))

-- Set focuses
openspace.bindKey("o", "openspace.setPropertyValue('Interaction.origin', 'OsirisRex')")

-- Jumps to mission times
openspace.bindKey("F6" , "openspace.printInfo('Set time: Launch');                          openspace.time.setTime('1997 OCT 15 00:00:00');")
openspace.bindKey("F7" , "openspace.printInfo('Set time: First Venus Flyby');               openspace.time.setTime('1998 APR 26 00:00:00');")
openspace.bindKey("F8" , "openspace.printInfo('Set time: Watching Saturnian Storms');       openspace.time.setTime('2004 APR 8 00:00:00');")
openspace.bindKey("F9", "openspace.printInfo('Set time: First Close Encounter with Titan'); openspace.time.setTime('2004 OCT 25 00:00:00');")
openspace.bindKey("F10", "openspace.printInfo('Set time: A Big Surprise at a Small Moon');  openspace.time.setTime('2005 JUL 14 00:00:00');")
openspace.bindKey("F11" , "openspace.printInfo('Set time: The Grand Finale');               openspace.time.setTime('2017 SEP 15 00:00:00');")
-- OBS!! Avoid key F12
-- Pressing F12 triggers a breakpoint on AMNH Windows machine, with with the following stack trace:

openspace.bindKey("F4", "openspace.scriptScheduler.clear(); openspace.scriptScheduler.load('${OPENSPACE_DATA}/scene/osirisrex/scheduled_scripts.lua');")

openspace.bindKey("q", helper.property.invert('SunMarker.renderable.enabled'))
openspace.bindKey("e", helper.property.invert('EarthMarker.renderable.enabled'))

openspace.bindKey("c", "openspace.parallel.setAddress('130.236.142.51');openspace.parallel.setPassword('osiris2016');openspace.parallel.connect();")
