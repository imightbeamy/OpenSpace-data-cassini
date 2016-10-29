# Cassini module data for OpenSpace

To use with OpenSpace run `./init <OpenSpace root directory>`

#Key bindings

F6 - Set time: Launch
F7 - Set time: First Venus Flyby
F8 - Set time: Watching Saturnian Storms
F9 - Set time: First Close Encounter with Titan
F10 - Set time: A Big Surprise at a Small Moon
F11 - Set time: The Grand Finale


#Development

To develop try using `fswatch`:
* You can install on mac using brew, `brew install fswatch`
* Run `fswatch -o data/ | xargs -n1 ./init.sh <OpenSpace root directory>`
* Now init will run whenever you change a dev file
