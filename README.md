# Heroes III port to Web

Currently in progress and works just as a map viewer for a hardcoded map (Vial of Life.h3m).

## Reqirements
Haxe 4

You will need some binary files that come with original game and put them to bin folder:
- bin/h3bin/H3sprite.lod
- bin/maps/Vial of Life.h3m

## Compilation
```
haxe build.hxml
```

## Launch
Start a webserver from bin folder and open the page. 

E.g. you can use nekotools from project root folder.
```
nekotools server -p 7777 -d ./bin
```
