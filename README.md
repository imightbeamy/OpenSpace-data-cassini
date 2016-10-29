# Cassini module data for OpenSpace

To use with OpenSpace run `./init <OpenSpace root directory>`

To develop try using `fswatch`:
* You can install on mac using brew, `brew install fswatch`
* Run `fswatch -o data/ | xargs -n1 ./init.sh <OpenSpace root directory>`
* Now init will run whenever you change a dev file