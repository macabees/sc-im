# SC-IM
The 'sc-im' command spreadsheet calculator for the console that uses ncurses.

## SC-IM (Project Info)
[Website](https://github.com/andmarti1424/sc-im)

## Docker Hub
[Website](https://hub.docker.com/r/macabees/sc-im/)

## Build image
`$ docker build -t macabees/sc-im:latest .`

## Run image
`$ docker run -it --rm macabees/sc-im`

## Docker Push
`$ docker push -t macabees/sc-im:latest`

Note: requires `docker login`

## Notes
| Basic Key         | Commands                              |
| ----------------- | ------------------------------------- |
| Key(s)            | Function                              |
| ?                 | help (super helpful!)                 |
| Arrows or h,j,k,l | move cursor                           |
| Ctrl-A            | move to top-left cell (A0)            |
| =                 | insert a number or formula            |
| <, \, >           | insert left/center/right aligned text |
| {, |, }           | align existing text left/center/right |
| e, E              | edit number/string value              |
| x, Del            | clear cell                            |
| ir, ic            | insert row/column                     |
| dr, dc            | delete row/column                     |
