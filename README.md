# VCMI port to Haxe

VCMI is work-in-progress attempt to recreate engine for Heroes III, giving it new and extended possibilities. This is a port to Haxe with JavaScript target only.

Original C++ project: https://github.com/vcmi/vcmi

Currently porting is in progress and the project works just as a map viewer for a hardcoded map (Vial of Life.h3m).

## Reqirements
Haxe 4

You will need some binary files that come with original game and put them to bin folder:
- bin/h3bin/H3sprite.lod (graphics)
- bin/maps/Vial of Life.h3m (hardcoded map)

## Compilation
```
haxe build.hxml
```

## Launch
Start a webserver from bin folder and open the page. 

E.g. you can use nekotools from project root folder:
```
nekotools server -p 7777 -d ./bin
```
then open localhost:7777 in a browser
