package data;
class ConfigData {

    static public var data(default, null) = [
        "terrains.json" => {
            "dirt" :
            {
                "moveCost" : 100,
                "minimapUnblocked" : [ 82, 56, 8 ],
                "minimapBlocked"   : [ 57, 40, 8 ],
                "music" : "Dirt.mp3"
            },
            "sand" :
            {
                "moveCost" : 150,
                "minimapUnblocked" : [ 222, 207, 140 ],
                "minimapBlocked"   : [ 165, 158, 107 ],
                "music" : "Sand.mp3"
            },
            "grass" :
            {
                "moveCost" : 100,
                "minimapUnblocked" : [ 0, 65, 0 ],
                "minimapBlocked"   : [ 0, 48, 0 ],
                "music" : "Grass.mp3"
            },
            "snow" :
            {
                "moveCost" : 150,
                "minimapUnblocked" : [ 181, 199, 198 ],
                "minimapBlocked"   : [ 140, 158, 156 ],
                "music" : "Snow.mp3"
            },
            "swamp" :
            {
                "moveCost" : 175,
                "minimapUnblocked" : [ 74, 134, 107 ],
                "minimapBlocked"   : [ 33,  89,  66 ],
                "music" : "Swamp.mp3"
            },
            "rough" :
            {
                "moveCost" : 125,
                "minimapUnblocked" : [ 132, 113, 49 ],
                "minimapBlocked"   : [  99,  81, 33 ],
                "music" : "Rough.mp3"
            },
            "subterra" :
            {
                "moveCost" : 100,
                "minimapUnblocked" : [ 132, 48, 0 ],
                "minimapBlocked"   : [  90,  8, 0 ],
                "music" : "Underground.mp3"
            },
            "lava" :
            {
                "moveCost" : 100,
                "minimapUnblocked" : [ 74, 73, 74 ],
                "minimapBlocked"   : [ 41, 40, 41 ],
                "music" : "Lava.mp3"
            },
            "water" :
            {
                "moveCost" : 100,
                "minimapUnblocked" : [ 8, 81, 148 ],
                "minimapBlocked"   : [ 8, 81, 148 ],
                "music" : "Water.mp3"
            },
            "rock" :
            {
                "moveCost" : -1,
                "minimapUnblocked" : [ 0, 0, 0 ],
                "minimapBlocked"   : [ 0, 0, 0 ],
                "music" : "Underground.mp3" // Impossible in H3
            }
        },
        "config/obstacles.json" => {
            "obstacles" : [
                {
                    "id" : 0,
                    "allowedTerrain" : [0],
                    "specialBattlefields" : [],
                    "width" : 2,
                    "height" : 1,
                    "blockedTiles" :  [0, 1],
                    "defname" : "ObDino1.def",
                    "unknown" : 1
                },
                {
                    "id" : 1,
                    "allowedTerrain" : [0, 1, 5, 6],
                    "specialBattlefields" : [0],
                    "width" : 3,
                    "height" : 2,
                    "blockedTiles" :  [0, 1, 2],
                    "defname" : "ObDino2.def",
                    "unknown" : 0
                },
                {
                    "id" : 2,
                    "allowedTerrain" : [0],
                    "specialBattlefields" : [],
                    "width" : 4,
                    "height" : 2,
                    "blockedTiles" :  [0, 1, -14, -15, -16],
                    "defname" : "ObDino3.def",
                    "unknown" : 1
                },
                {
                    "id" : 3,
                    "allowedTerrain" : [0, 5],
                    "specialBattlefields" : [1],
                    "width" : 2,
                    "height" : 1,
                    "blockedTiles" :  [0, 1],
                    "defname" : "ObSkel1.def",
                    "unknown" : 1
                },
                {
                    "id" : 4,
                    "allowedTerrain" : [0, 5, 6],
                    "specialBattlefields" : [0, 1],
                    "width" : 2,
                    "height" : 1,
                    "blockedTiles" :  [0, 1],
                    "defname" : "ObSkel2.def",
                    "unknown" : 1
                },
                {
                    "id" : 5,
                    "allowedTerrain" : [0],
                    "specialBattlefields" : [],
                    "width" : 4,
                    "height" : 2,
                    "blockedTiles" :  [1, 2, 3],
                    "defname" : "ObBDT01.def",
                    "unknown" : 1
                },
                {
                    "id" : 6,
                    "allowedTerrain" : [0],
                    "specialBattlefields" : [],
                    "width" : 3,
                    "height" : 2,
                    "blockedTiles" :  [-15, -16],
                    "defname" : "ObDRk01.def",
                    "unknown" : 1
                },
                {
                    "id" : 7,
                    "allowedTerrain" : [0],
                    "specialBattlefields" : [],
                    "width" : 2,
                    "height" : 2,
                    "blockedTiles" :  [0, 1],
                    "defname" : "ObDRk02.def",
                    "unknown" : 0
                },
                {
                    "id" : 8,
                    "allowedTerrain" : [0],
                    "specialBattlefields" : [],
                    "width" : 2,
                    "height" : 2,
                    "blockedTiles" :  [-16],
                    "defname" : "ObDRk03.def",
                    "unknown" : 1
                },
                {
                    "id" : 9,
                    "allowedTerrain" : [0],
                    "specialBattlefields" : [],
                    "width" : 2,
                    "height" : 2,
                    "blockedTiles" :  [0, 1],
                    "defname" : "ObDRk04.def",
                    "unknown" : 0
                },
                {
                    "id" : 10,
                    "allowedTerrain" : [0],
                    "specialBattlefields" : [],
                    "width" : 2,
                    "height" : 2,
                    "blockedTiles" :  [0, 1],
                    "defname" : "ObDSh01.def",
                    "unknown" : 0
                },
                {
                    "id" : 11,
                    "allowedTerrain" : [0],
                    "specialBattlefields" : [],
                    "width" : 2,
                    "height" : 1,
                    "blockedTiles" :  [0, 1],
                    "defname" : "ObDTF03.def",
                    "unknown" : 0
                },
                {
                    "id" : 12,
                    "allowedTerrain" : [0, 5],
                    "specialBattlefields" : [1],
                    "width" : 3,
                    "height" : 3,
                    "blockedTiles" :  [0, 1, 2, 3],
                    "defname" : "ObDtS03.def",
                    "unknown" : 0
                },
                {
                    "id" : 13,
                    "allowedTerrain" : [0, 5],
                    "specialBattlefields" : [1],
                    "width" : 3,
                    "height" : 2,
                    "blockedTiles" :  [1, 2, -15],
                    "defname" : "ObDtS04.def",
                    "unknown" : 1
                },
                {
                    "id" : 14,
                    "allowedTerrain" : [0, 5],
                    "specialBattlefields" : [1],
                    "width" : 3,
                    "height" : 2,
                    "blockedTiles" :  [2, -15, -16],
                    "defname" : "ObDtS14.def",
                    "unknown" : 1
                },
                {
                    "id" : 15,
                    "allowedTerrain" : [0, 5],
                    "specialBattlefields" : [1],
                    "width" : 3,
                    "height" : 3,
                    "blockedTiles" :  [1, -16, -33],
                    "defname" : "ObDtS15.def",
                    "unknown" : 1
                },
                {
                    "id" : 16,
                    "allowedTerrain" : [1],
                    "specialBattlefields" : [],
                    "width" : 4,
                    "height" : 4,
                    "blockedTiles" :  [-15, -16, -32, -33, -48, -49],
                    "defname" : "ObDsM01.def",
                    "unknown" : 1
                },
                {
                    "id" : 17,
                    "allowedTerrain" : [1],
                    "specialBattlefields" : [],
                    "width" : 3,
                    "height" : 2,
                    "blockedTiles" :  [1, -15, -16],
                    "defname" : "ObDsS02.def",
                    "unknown" : 1
                },
                {
                    "id" : 18,
                    "allowedTerrain" : [1],
                    "specialBattlefields" : [],
                    "width" : 4,
                    "height" : 2,
                    "blockedTiles" :  [1, 2, 3, -15, -16],
                    "defname" : "ObDsS17.def",
                    "unknown" : 1
                },
                {
                    "id" : 19,
                    "allowedTerrain" : [2, 4],
                    "specialBattlefields" : [],
                    "width" : 2,
                    "height" : 1,
                    "blockedTiles" :  [0, 1],
                    "defname" : "ObGLg01.def",
                    "unknown" : 1
                },
                {
                    "id" : 20,
                    "allowedTerrain" : [2, 4],
                    "specialBattlefields" : [2],
                    "width" : 2,
                    "height" : 2,
                    "blockedTiles" :  [0, 1],
                    "defname" : "ObGRk01.def",
                    "unknown" : 0
                },
                {
                    "id" : 21,
                    "allowedTerrain" : [2, 4],
                    "specialBattlefields" : [],
                    "width" : 1,
                    "height" : 1,
                    "blockedTiles" :  [0],
                    "defname" : "ObGSt01.def",
                    "unknown" : 1
                },
                {
                    "id" : 22,
                    "allowedTerrain" : [2],
                    "specialBattlefields" : [2],
                    "width" : 6,
                    "height" : 2,
                    "blockedTiles" :  [1, 2, 3, 4, -13, -14, -15, -16],
                    "defname" : "ObGrS01.def",
                    "unknown" : 1
                },
                {
                    "id" : 23,
                    "allowedTerrain" : [2],
                    "specialBattlefields" : [],
                    "width" : 7,
                    "height" : 1,
                    "blockedTiles" :  [1, 2],
                    "defname" : "OBGrS02.def",
                    "unknown" : 1
                },
                {
                    "id" : 24,
                    "allowedTerrain" : [3],
                    "specialBattlefields" : [],
                    "width" : 3,
                    "height" : 1,
                    "blockedTiles" :  [0, 1, 2],
                    "defname" : "ObSnS01.def",
                    "unknown" : 1
                },
                {
                    "id" : 25,
                    "allowedTerrain" : [3],
                    "specialBattlefields" : [],
                    "width" : 5,
                    "height" : 1,
                    "blockedTiles" :  [1, 2, 3, 4],
                    "defname" : "ObSnS02.def",
                    "unknown" : 1
                },
                {
                    "id" : 26,
                    "allowedTerrain" : [3],
                    "specialBattlefields" : [],
                    "width" : 3,
                    "height" : 3,
                    "blockedTiles" :  [0, -16, -33],
                    "defname" : "ObSnS03.def",
                    "unknown" : 1
                },
                {
                    "id" : 27,
                    "allowedTerrain" : [3],
                    "specialBattlefields" : [],
                    "width" : 3,
                    "height" : 1,
                    "blockedTiles" :  [0, 1, 2],
                    "defname" : "ObSnS04.def",
                    "unknown" : 1
                },
                {
                    "id" : 28,
                    "allowedTerrain" : [3],
                    "specialBattlefields" : [],
                    "width" : 3,
                    "height" : 1,
                    "blockedTiles" :  [1],
                    "defname" : "ObSnS05.def",
                    "unknown" : 1
                },
                {
                    "id" : 29,
                    "allowedTerrain" : [3],
                    "specialBattlefields" : [],
                    "width" : 3,
                    "height" : 2,
                    "blockedTiles" :  [1, 2],
                    "defname" : "ObSnS06.def",
                    "unknown" : 0
                },
                {
                    "id" : 30,
                    "allowedTerrain" : [3],
                    "specialBattlefields" : [],
                    "width" : 2,
                    "height" : 1,
                    "blockedTiles" :  [0, 1],
                    "defname" : "ObSnS07.def",
                    "unknown" : 1
                },
                {
                    "id" : 31,
                    "allowedTerrain" : [3],
                    "specialBattlefields" : [],
                    "width" : 3,
                    "height" : 2,
                    "blockedTiles" :  [0, 1, 2],
                    "defname" : "ObSnS08.def",
                    "unknown" : 0
                },
                {
                    "id" : 32,
                    "allowedTerrain" : [3],
                    "specialBattlefields" : [],
                    "width" : 7,
                    "height" : 2,
                    "blockedTiles" :  [2, 3, 4, 5, -13, -14, -15, -16],
                    "defname" : "ObSnS09.def",
                    "unknown" : 1
                },
                {
                    "id" : 33,
                    "allowedTerrain" : [3],
                    "specialBattlefields" : [],
                    "width" : 5,
                    "height" : 5,
                    "blockedTiles" :  [3, -13, -14, -15, -33, -49, -66],
                    "defname" : "ObSnS10.def",
                    "unknown" : 1
                },
                {
                    "id" : 34,
                    "allowedTerrain" : [4],
                    "specialBattlefields" : [],
                    "width" : 2,
                    "height" : 2,
                    "blockedTiles" :  [0],
                    "defname" : "ObSwS01.def",
                    "unknown" : 0
                },
                {
                    "id" : 35,
                    "allowedTerrain" : [4],
                    "specialBattlefields" : [],
                    "width" : 8,
                    "height" : 3,
                    "blockedTiles" :  [-10, -11, -12, -13, -14, -15, -16],
                    "defname" : "ObSwS02.def",
                    "unknown" : 1
                },
                {
                    "id" : 36,
                    "allowedTerrain" : [4],
                    "specialBattlefields" : [],
                    "width" : 2,
                    "height" : 1,
                    "blockedTiles" :  [0, 1],
                    "defname" : "ObSwS03.def",
                    "unknown" : 0
                },
                {
                    "id" : 37,
                    "allowedTerrain" : [4],
                    "specialBattlefields" : [],
                    "width" : 3,
                    "height" : 1,
                    "blockedTiles" :  [0, 1, 2],
                    "defname" : "ObSwS04.def",
                    "unknown" : 0
                },
                {
                    "id" : 38,
                    "allowedTerrain" : [4],
                    "specialBattlefields" : [],
                    "width" : 5,
                    "height" : 4,
                    "blockedTiles" :  [-13, -14, -15, -16, -30, -31, -32, -33],
                    "defname" : "ObSwS11b.def",
                    "unknown" : 1
                },
                {
                    "id" : 39,
                    "allowedTerrain" : [4],
                    "specialBattlefields" : [],
                    "width" : 4,
                    "height" : 3,
                    "blockedTiles" :  [-16, -17, -31, -32, -33, -34],
                    "defname" : "ObSwS13a.def",
                    "unknown" : 1
                },
                {
                    "id" : 40,
                    "allowedTerrain" : [5],
                    "specialBattlefields" : [1],
                    "width" : 2,
                    "height" : 2,
                    "blockedTiles" :  [0, 1, -16],
                    "defname" : "ObRgS01.def",
                    "unknown" : 1
                },
                {
                    "id" : 41,
                    "allowedTerrain" : [5],
                    "specialBattlefields" : [1],
                    "width" : 4,
                    "height" : 3,
                    "blockedTiles" :  [-14, -15, -16, -32, -33],
                    "defname" : "ObRgS02.def",
                    "unknown" : 1
                },
                {
                    "id" : 42,
                    "allowedTerrain" : [5],
                    "specialBattlefields" : [1],
                    "width" : 3,
                    "height" : 2,
                    "blockedTiles" :  [1, 2, -15, -16],
                    "defname" : "ObRgS03.def",
                    "unknown" : 1
                },
                {
                    "id" : 43,
                    "allowedTerrain" : [5],
                    "specialBattlefields" : [1],
                    "width" : 3,
                    "height" : 3,
                    "blockedTiles" :  [-16, -32, -33],
                    "defname" : "ObRgS04.def",
                    "unknown" : 1
                },
                {
                    "id" : 44,
                    "allowedTerrain" : [5],
                    "specialBattlefields" : [1],
                    "width" : 3,
                    "height" : 3,
                    "blockedTiles" :  [-15, -16, -32],
                    "defname" : "ObRgS05.def",
                    "unknown" : 1
                },
                {
                    "id" : 45,
                    "allowedTerrain" : [6],
                    "specialBattlefields" : [],
                    "width" : 3,
                    "height" : 3,
                    "blockedTiles" :  [0, 1, 2, -15, -16],
                    "defname" : "ObSuS01.def",
                    "unknown" : 0
                },
                {
                    "id" : 46,
                    "allowedTerrain" : [6],
                    "specialBattlefields" : [],
                    "width" : 3,
                    "height" : 2,
                    "blockedTiles" :  [0, 1, 2],
                    "defname" : "ObSuS02.def",
                    "unknown" : 0
                },
                {
                    "id" : 47,
                    "allowedTerrain" : [6],
                    "specialBattlefields" : [],
                    "width" : 4,
                    "height" : 3,
                    "blockedTiles" :  [0, 1, 2, 3, -14, -15, -16],
                    "defname" : "ObSuS11b.def",
                    "unknown" : 0
                },
                {
                    "id" : 48,
                    "allowedTerrain" : [7],
                    "specialBattlefields" : [],
                    "width" : 4,
                    "height" : 3,
                    "blockedTiles" :  [-14, -32, -33],
                    "defname" : "ObLvS01.def",
                    "unknown" : 1
                },
                {
                    "id" : 49,
                    "allowedTerrain" : [7],
                    "specialBattlefields" : [],
                    "width" : 4,
                    "height" : 2,
                    "blockedTiles" :  [0, 1, 2, -14, -15, -16],
                    "defname" : "ObLvS02.def",
                    "unknown" : 1
                },
                {
                    "id" : 50,
                    "allowedTerrain" : [7],
                    "specialBattlefields" : [],
                    "width" : 5,
                    "height" : 3,
                    "blockedTiles" :  [-13, -14, -15, -30, -31, -32, -33],
                    "defname" : "ObLvS03.def",
                    "unknown" : 1
                },
                {
                    "id" : 51,
                    "allowedTerrain" : [7],
                    "specialBattlefields" : [],
                    "width" : 3,
                    "height" : 2,
                    "blockedTiles" :  [0, 1, 2],
                    "defname" : "ObLvS04.def",
                    "unknown" : 0
                },
                {
                    "id" : 52,
                    "allowedTerrain" : [7],
                    "specialBattlefields" : [],
                    "width" : 4,
                    "height" : 4,
                    "blockedTiles" :  [-14, -15, -32, -33, -49, -50],
                    "defname" : "ObLvS09.def",
                    "unknown" : 1
                },
                {
                    "id" : 53,
                    "allowedTerrain" : [7],
                    "specialBattlefields" : [],
                    "width" : 5,
                    "height" : 3,
                    "blockedTiles" :  [-13, -14, -15, -16, -30, -31],
                    "defname" : "ObLvS17.def",
                    "unknown" : 1
                },
                {
                    "id" : 54,
                    "allowedTerrain" : [7],
                    "specialBattlefields" : [],
                    "width" : 5,
                    "height" : 3,
                    "blockedTiles" :  [-13, -14, -15, -16, -31, -32, -33],
                    "defname" : "ObLvS22.def",
                    "unknown" : 1
                },
                {
                    "id" : 55,
                    "allowedTerrain" : [8],
                    "specialBattlefields" : [],
                    "width" : 3,
                    "height" : 3,
                    "blockedTiles" :  [-15, -16, -33],
                    "defname" : "ObBtS04.def",
                    "unknown" : 1
                },
                {
                    "id" : 56,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [0],
                    "width" : 3,
                    "height" : 2,
                    "blockedTiles" :  [1, -15, -16],
                    "defname" : "ObBhS02.def",
                    "unknown" : 1
                },
                {
                    "id" : 57,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [0],
                    "width" : 3,
                    "height" : 2,
                    "blockedTiles" :  [0, 1, 2],
                    "defname" : "ObBhS03.def",
                    "unknown" : 0
                },
                {
                    "id" : 58,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [0],
                    "width" : 5,
                    "height" : 2,
                    "blockedTiles" :  [1, 2, 3, -14, -15, -16],
                    "defname" : "ObBhS11a.def",
                    "unknown" : 1
                },
                {
                    "id" : 59,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [0],
                    "width" : 4,
                    "height" : 2,
                    "blockedTiles" :  [1, 2, -14, -15],
                    "defname" : "ObBhS12b.def",
                    "unknown" : 1
                },
                {
                    "id" : 60,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [0],
                    "width" : 2,
                    "height" : 2,
                    "blockedTiles" :  [0, 1, -16],
                    "defname" : "ObBhS14b.def",
                    "unknown" : 1
                },
                {
                    "id" : 61,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [3],
                    "width" : 1,
                    "height" : 1,
                    "blockedTiles" :  [0],
                    "defname" : "ObHGs00.def",
                    "unknown" : 0
                },
                {
                    "id" : 62,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [3],
                    "width" : 2,
                    "height" : 1,
                    "blockedTiles" :  [0, 1],
                    "defname" : "ObHGs01.def",
                    "unknown" : 0
                },
                {
                    "id" : 63,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [3],
                    "width" : 3,
                    "height" : 3,
                    "blockedTiles" :  [1],
                    "defname" : "ObHGs02.def",
                    "unknown" : 0
                },
                {
                    "id" : 64,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [3],
                    "width" : 3,
                    "height" : 2,
                    "blockedTiles" :  [0, 1, 2],
                    "defname" : "ObHGs03.def",
                    "unknown" : 0
                },
                {
                    "id" : 65,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [3],
                    "width" : 4,
                    "height" : 3,
                    "blockedTiles" :  [0, 1, 2, 3],
                    "defname" : "ObHGs04.def",
                    "unknown" : 0
                },
                {
                    "id" : 66,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [4],
                    "width" : 1,
                    "height" : 1,
                    "blockedTiles" :  [0],
                    "defname" : "ObEFs00.def",
                    "unknown" : 0
                },
                {
                    "id" : 67,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [4],
                    "width" : 2,
                    "height" : 1,
                    "blockedTiles" :  [0, 1],
                    "defname" : "ObEFs01.def",
                    "unknown" : 0
                },
                {
                    "id" : 68,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [4],
                    "width" : 3,
                    "height" : 2,
                    "blockedTiles" :  [0, 1, 2],
                    "defname" : "ObEFs02.def",
                    "unknown" : 0
                },
                {
                    "id" : 69,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [4],
                    "width" : 4,
                    "height" : 2,
                    "blockedTiles" :  [1, 2],
                    "defname" : "ObEFs03.def",
                    "unknown" : 0
                },
                {
                    "id" : 70,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [4],
                    "width" : 6,
                    "height" : 2,
                    "blockedTiles" :  [1, 2, 3, -12, -13],
                    "defname" : "ObEFs04.def",
                    "unknown" : 0
                },
                {
                    "id" : 71,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [5],
                    "width" : 1,
                    "height" : 1,
                    "blockedTiles" :  [0],
                    "defname" : "ObCFs00.def",
                    "unknown" : 1
                },
                {
                    "id" : 72,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [5],
                    "width" : 3,
                    "height" : 1,
                    "blockedTiles" :  [0, 1, 2],
                    "defname" : "ObCFs01.def",
                    "unknown" : 1
                },
                {
                    "id" : 73,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [5],
                    "width" : 3,
                    "height" : 2,
                    "blockedTiles" :  [1, 2, -15, -16],
                    "defname" : "ObCFs02.def",
                    "unknown" : 1
                },
                {
                    "id" : 74,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [5],
                    "width" : 4,
                    "height" : 2,
                    "blockedTiles" :  [0, 1, 2, -14, -15, -16],
                    "defname" : "ObCFs03.def",
                    "unknown" : 1
                },
                {
                    "id" : 75,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [6],
                    "width" : 1,
                    "height" : 1,
                    "blockedTiles" :  [0],
                    "defname" : "ObLPs00.def",
                    "unknown" : 1
                },
                {
                    "id" : 76,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [6],
                    "width" : 2,
                    "height" : 1,
                    "blockedTiles" :  [0, 1],
                    "defname" : "ObLPs01.def",
                    "unknown" : 1
                },
                {
                    "id" : 77,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [6],
                    "width" : 3,
                    "height" : 2,
                    "blockedTiles" :  [0, -15, -16],
                    "defname" : "ObLPs02.def",
                    "unknown" : 1
                },
                {
                    "id" : 78,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [6],
                    "width" : 5,
                    "height" : 2,
                    "blockedTiles" :  [1, 2, 3, -13, -14, -15, -16],
                    "defname" : "ObLPs03.def",
                    "unknown" : 1
                },
                {
                    "id" : 79,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [7],
                    "width" : 1,
                    "height" : 1,
                    "blockedTiles" :  [0],
                    "defname" : "ObFFs00.def",
                    "unknown" : 0
                },
                {
                    "id" : 80,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [7],
                    "width" : 2,
                    "height" : 1,
                    "blockedTiles" :  [0, 1],
                    "defname" : "ObFFs01.def",
                    "unknown" : 0
                },
                {
                    "id" : 81,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [7],
                    "width" : 3,
                    "height" : 2,
                    "blockedTiles" :  [0, 1, 2, -15],
                    "defname" : "ObFFs02.def",
                    "unknown" : 0
                },
                {
                    "id" : 82,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [7],
                    "width" : 4,
                    "height" : 2,
                    "blockedTiles" :  [1, 2, 3, -15, -16],
                    "defname" : "ObFFs03.def",
                    "unknown" : 0
                },
                {
                    "id" : 83,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [7],
                    "width" : 3,
                    "height" : 3,
                    "blockedTiles" :  [0, 1, 2, 3, -14, -15, -16],
                    "defname" : "ObFFs04.def",
                    "unknown" : 0
                },
                {
                    "id" : 84,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [8],
                    "width" : 1,
                    "height" : 1,
                    "blockedTiles" :  [0],
                    "defname" : "ObRLs00.def",
                    "unknown" : 0
                },
                {
                    "id" : 85,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [8],
                    "width" : 2,
                    "height" : 1,
                    "blockedTiles" :  [0, 1],
                    "defname" : "ObRLs01.def",
                    "unknown" : 0
                },
                {
                    "id" : 86,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [8],
                    "width" : 3,
                    "height" : 1,
                    "blockedTiles" :  [0, 1, 2],
                    "defname" : "ObRLs02.def",
                    "unknown" : 0
                },
                {
                    "id" : 87,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [8],
                    "width" : 4,
                    "height" : 2,
                    "blockedTiles" :  [1, 2, 3, -15, -16],
                    "defname" : "ObRLs03.def",
                    "unknown" : 0
                },
                {
                    "id" : 88,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [9],
                    "width" : 1,
                    "height" : 1,
                    "blockedTiles" :  [0],
                    "defname" : "ObMCs00.def",
                    "unknown" : 1
                },
                {
                    "id" : 89,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [9],
                    "width" : 2,
                    "height" : 2,
                    "blockedTiles" :  [1, -16],
                    "defname" : "ObMCs01.def",
                    "unknown" : 1
                },
                {
                    "id" : 90,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [9],
                    "width" : 4,
                    "height" : 2,
                    "blockedTiles" :  [0, 1, -14, -15],
                    "defname" : "ObMCs02.def",
                    "unknown" : 1
                }
            ],
            "absoluteObstacles" : [
                {
                    "id" : 0,
                    "allowedTerrain" : [0],
                    "specialBattlefields" : [],
                    "width" : 124,
                    "height" : 254,
                    "blockedTiles" :  [80, 94, 95, 96, 97, 105, 106, 107, 108, 109, 110],
                    "defname" : "ObDtL04.pcx"
                },
                {
                    "id" : 1,
                    "allowedTerrain" : [0],
                    "specialBattlefields" : [],
                    "width" : 256,
                    "height" : 254,
                    "blockedTiles" :  [73, 91, 108, 109, 110, 111, 112, 113],
                    "defname" : "ObDtL06.pcx"
                },
                {
                    "id" : 2,
                    "allowedTerrain" : [0],
                    "specialBattlefields" : [],
                    "width" : 168,
                    "height" : 212,
                    "blockedTiles" :  [60, 61, 62, 63, 64, 72, 73, 74, 75, 76, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],
                    "defname" : "ObDtL10.pcx"
                },
                {
                    "id" : 3,
                    "allowedTerrain" : [0],
                    "specialBattlefields" : [],
                    "width" : 124,
                    "height" : 254,
                    "blockedTiles" :  [88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],
                    "defname" : "ObDtL02.pcx"
                },
                {
                    "id" : 4,
                    "allowedTerrain" : [0],
                    "specialBattlefields" : [],
                    "width" : 146,
                    "height" : 254,
                    "blockedTiles" :  [76, 77, 78, 79, 80, 89, 90, 91, 92, 93],
                    "defname" : "ObDtL03.pcx"
                },
                {
                    "id" : 5,
                    "allowedTerrain" : [2],
                    "specialBattlefields" : [],
                    "width" : 173,
                    "height" : 221,
                    "blockedTiles" :  [55, 56, 57, 58, 75, 76, 77, 95, 112, 113, 131],
                    "defname" : "ObGrL01.pcx"
                },
                {
                    "id" : 6,
                    "allowedTerrain" : [2],
                    "specialBattlefields" : [],
                    "width" : 180,
                    "height" : 264,
                    "blockedTiles" :  [81, 91, 92, 93, 94, 95, 96, 97, 98, 106, 107, 123],
                    "defname" : "ObGrL02.pcx"
                },
                {
                    "id" : 7,
                    "allowedTerrain" : [3],
                    "specialBattlefields" : [],
                    "width" : 166,
                    "height" : 255,
                    "blockedTiles" :  [76, 77, 78, 79, 91, 92, 93, 97, 98, 106, 107, 108],
                    "defname" : "ObSnL01.pcx"
                },
                {
                    "id" : 8,
                    "allowedTerrain" : [3],
                    "specialBattlefields" : [],
                    "width" : 302,
                    "height" : 172,
                    "blockedTiles" :  [41, 42, 43, 58, 75, 92, 108, 126, 143],
                    "defname" : "ObSnL14.pcx"
                },
                {
                    "id" : 9,
                    "allowedTerrain" : [4],
                    "specialBattlefields" : [],
                    "width" : 300,
                    "height" : 170,
                    "blockedTiles" :  [40, 41, 58, 59, 74, 75, 92, 93, 109, 110, 111, 127, 128, 129, 130],
                    "defname" : "ObSwL15.pcx"
                },
                {
                    "id" : 10,
                    "allowedTerrain" : [4],
                    "specialBattlefields" : [],
                    "width" : 278,
                    "height" : 171,
                    "blockedTiles" :  [43, 60, 61, 77, 93, 94, 95, 109, 110, 126, 127],
                    "defname" : "ObSwL14.pcx"
                },
                {
                    "id" : 11,
                    "allowedTerrain" : [4],
                    "specialBattlefields" : [],
                    "width" : 256,
                    "height" : 254,
                    "blockedTiles" :  [74, 75, 76, 77, 91, 92, 93, 94, 95, 109, 110, 111, 112],
                    "defname" : "ObSwL22.pcx"
                },
                {
                    "id" : 12,
                    "allowedTerrain" : [7],
                    "specialBattlefields" : [],
                    "width" : 124,
                    "height" : 254,
                    "blockedTiles" :  [77, 78, 79, 80, 81, 91, 92, 93, 94, 105, 106, 107],
                    "defname" : "ObLvL01.pcx"
                },
                {
                    "id" : 13,
                    "allowedTerrain" : [7],
                    "specialBattlefields" : [],
                    "width" : 256,
                    "height" : 128,
                    "blockedTiles" :  [43, 60, 61, 76, 77, 93, 109, 126, 127, 142, 143],
                    "defname" : "OBLvL02.pcx"
                },
                {
                    "id" : 14,
                    "allowedTerrain" : [5],
                    "specialBattlefields" : [1],
                    "width" : 186,
                    "height" : 212,
                    "blockedTiles" :  [55, 72, 90, 107, 125, 126, 127, 128, 129, 130, 131, 132],
                    "defname" : "ObRgL01.pcx"
                },
                {
                    "id" : 15,
                    "allowedTerrain" : [5],
                    "specialBattlefields" : [1],
                    "width" : 347,
                    "height" : 174,
                    "blockedTiles" :  [41, 59, 76, 94, 111, 129, 143, 144, 145],
                    "defname" : "ObRgL02.pcx"
                },
                {
                    "id" : 16,
                    "allowedTerrain" : [5],
                    "specialBattlefields" : [1],
                    "width" : 294,
                    "height" : 169,
                    "blockedTiles" :  [40, 41, 42, 43, 58, 75, 93, 110, 128, 145],
                    "defname" : "ObRgL03.pcx"
                },
                {
                    "id" : 17,
                    "allowedTerrain" : [5],
                    "specialBattlefields" : [1],
                    "width" : 165,
                    "height" : 257,
                    "blockedTiles" :  [72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 89, 105],
                    "defname" : "ObRgL04.pcx"
                },
                {
                    "id" : 18,
                    "allowedTerrain" : [5],
                    "specialBattlefields" : [1],
                    "width" : 208,
                    "height" : 268,
                    "blockedTiles" :  [72, 73, 74, 75, 76, 77, 78, 79, 80, 90, 91, 92, 93, 94, 95, 96, 97],
                    "defname" : "ObRgL05.pcx"
                },
                {
                    "id" : 19,
                    "allowedTerrain" : [5],
                    "specialBattlefields" : [1],
                    "width" : 252,
                    "height" : 254,
                    "blockedTiles" :  [73, 74, 75, 76, 77, 78, 91, 92, 93, 94],
                    "defname" : "ObRgL06.pcx"
                },
                {
                    "id" : 20,
                    "allowedTerrain" : [5],
                    "specialBattlefields" : [1],
                    "width" : 278,
                    "height" : 128,
                    "blockedTiles" :  [23, 40, 58, 75, 93, 110, 128, 145, 163],
                    "defname" : "ObRgL15.pcx"
                },
                {
                    "id" : 21,
                    "allowedTerrain" : [5],
                    "specialBattlefields" : [1],
                    "width" : 208,
                    "height" : 268,
                    "blockedTiles" :  [72, 73, 74, 75, 76, 77, 78, 79, 80, 90, 91, 92, 93, 94, 95, 96, 97],
                    "defname" : "ObRgL05.pcx"
                },
                {
                    "id" : 22,
                    "allowedTerrain" : [5],
                    "specialBattlefields" : [1],
                    "width" : 168,
                    "height" : 212,
                    "blockedTiles" :  [73, 74, 75, 76, 77, 78, 79, 90, 91, 92, 93, 94, 95, 96, 97, 106, 107, 108, 109, 110, 111, 112],
                    "defname" : "ObRgL22.pcx"
                },
                {
                    "id" : 23,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [0],
                    "width" : 147,
                    "height" : 264,
                    "blockedTiles" :  [72, 73, 74, 75, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],
                    "defname" : "ObBhL02.pcx"
                },
                {
                    "id" : 24,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [0],
                    "width" : 178,
                    "height" : 262,
                    "blockedTiles" :  [71, 72, 73, 74, 75, 76, 77, 78, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],
                    "defname" : "ObBhL03.pcx"
                },
                {
                    "id" : 25,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [0],
                    "width" : 173,
                    "height" : 257,
                    "blockedTiles" :  [72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 89, 90, 105, 106],
                    "defname" : "ObBhL05.pcx"
                },
                {
                    "id" : 26,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [0],
                    "width" : 241,
                    "height" : 272,
                    "blockedTiles" :  [73, 91, 108, 109, 110, 111, 112, 113],
                    "defname" : "ObBhL06.pcx"
                },
                {
                    "id" : 27,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [0],
                    "width" : 261,
                    "height" : 129,
                    "blockedTiles" :  [27, 28, 43, 44, 60, 61, 76, 77, 93, 94, 109, 110, 126, 127, 142, 143, 159],
                    "defname" : "ObBhL14.pcx"
                },
                {
                    "id" : 28,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [0],
                    "width" : 180,
                    "height" : 154,
                    "blockedTiles" :  [22, 38, 39, 40, 44, 45, 46, 55, 56, 57, 62, 63, 123, 124, 125, 130, 131, 140, 141, 146, 147, 148],
                    "defname" : "ObBhL16.pcx"
                },
                {
                    "id" : 29,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [5],
                    "width" : 304,
                    "height" : 264,
                    "blockedTiles" :  [76, 77, 92, 93, 94, 95, 109, 110, 111],
                    "defname" : "ObCFL00.pcx"
                },
                {
                    "id" : 30,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [6],
                    "width" : 256,
                    "height" : 257,
                    "blockedTiles" :  [76, 77, 78, 92, 93, 94, 107, 108, 109],
                    "defname" : "ObLPL00.pcx"
                },
                {
                    "id" : 31,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [7],
                    "width" : 257,
                    "height" : 255,
                    "blockedTiles" :  [76, 77, 91, 92, 93, 94, 95, 108, 109, 110, 111],
                    "defname" : "ObFFL00.pcx"
                },
                {
                    "id" : 32,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [8],
                    "width" : 277,
                    "height" : 218,
                    "blockedTiles" :  [60, 61, 75, 76, 77, 91, 92, 93, 94, 95],
                    "defname" : "ObRLL00.pcx"
                },
                {
                    "id" : 33,
                    "allowedTerrain" : [],
                    "specialBattlefields" : [9],
                    "width" : 300,
                    "height" : 214,
                    "blockedTiles" :  [59, 60, 74, 75, 76, 93, 94, 95, 111, 112],
                    "defname" : "ObMCL00.pcx"
                }
            ]
        },
        "config/resources.json" => {
            // Price of each resource in gold, in usual resource order
            "resources_prices": [ 250, 500, 250, 500, 500, 500, 1, 0 ]
        },
        "config/terrainViewPatterns.json" => {
            // Defines terrain view/types patterns.

            // The following table shows the rules for the 3x3 pattern of all terrain types:
            // I) normal(e.g. grass, lava, ...):
            // N:		Native type
            // D:		Dirt border
            // S:		Sand border
            // T:		Sand OR dirt border(all Ts in the pattern are replaced by dirt OR sand)
            // ?:		D,S or N
            // II) dirt:
            // N:		Native type or normal type(grass, lava, ...)
            // S:		Sand border
            // ?:		Any border
            // III) sand:
            // No rules
            // IV) water, rock:
            // N:		Native type
            // S:		Sand border
            // ?:		Any border

            // Additional rule for validiting terrain type:
            // N!:		Native type always(unlike N for dirt)

            // The order of the patterns is important, do not change!

            "terrainView" :
            [
                // Extended mixed transitions
                {
                    "id" : "x1",
                    "data" :
                    [
                        "T", "N", "N",
                        "N", "N", "T",
                        "N", "T", "T"
                    ],
                    "mapping" : { "normal" : "73,74", "dirt" : "45" }
                },
                {
                    "id" : "x2",
                    "data" :
                    [
                        "D", "D", "N",
                        "D", "N", "N",
                        "N", "N", "S"
                    ],
                    "mapping" : { "normal" : "75" }
                },
                {
                    "id" : "x3",
                    "data" :
                    [
                        "S", "S", "N",
                        "S", "N", "N",
                        "N", "N", "D"
                    ],
                    "mapping" : { "normal" : "76" }
                },
                {
                    "id" : "x4",
                    "data" :
                    [
                        "N", "N", "S",
                        "N", "N", "D",
                        "S", "D", "D"
                    ],
                    "mapping" : { "normal" : "77" }
                },
                {
                    "id" : "x5",
                    "data" :
                    [
                        "N", "N", "D",
                        "N", "N", "D",
                        "D", "D", "S"
                    ],
                    "mapping" : { "normal" : "78" }
                },
                    // No transition
                {
                    "id" : "n1",
                    "data" :
                    [
                        "N", "N", "N",
                        "N", "N", "N",
                        "N", "N", "N"
                    ],
                    "mapping" : { "normal" : "49-72", "dirt" : "21-44", "sand" : "0-23", "water" : "20-32", "rock": "0-7" }
                },
                    // Mixed transitions
                {
                    "id" : "m1",
                    "data" :
                    [
                        "T", "N", "N",
                        "N", "N", "N",
                        "N", "N", "T"
                    ],
                    "mapping" : { "normal" : "40, 42", "dirt" : "20" }
                },
                {
                    "id" : "m2",
                    "data" :
                    [
                        "D", "N", "N",
                        "N", "N", "N",
                        "N", "N", "S"
                    ],
                    "mapping" : { "normal" : "41" }
                },
                {
                    "id" : "m3",
                    "data" :
                    [
                        "N", "N", "D,N",
                        "N", "N", "D",
                        "S", "D,N", "D,N"
                    ],
                    "mapping" : { "normal" : "43" }
                },
                {
                    "id" : "m4",
                    "data" :
                    [
                        "N", "N", "S",
                        "N", "N", "D",
                        "D,N", "D", "D,N"
                    ],
                    "mapping" : { "normal" : "44" }
                },
                {
                    "id" : "m5",
                    "data" :
                    [
                        "N", "N", "D",
                        "N", "N", "D",
                        "N", "N", "S"
                    ],
                    "mapping" : { "normal" : "45" }
                },
                {
                    "id" : "m6",
                    "data" :
                    [
                        "N", "N", "N",
                        "N", "N", "N",
                        "D,N", "D", "S"
                    ],
                    "mapping" : { "normal" : "46" }
                },
                {
                    "id" : "m7",
                    "data" :
                    [
                        "N", "N", "?",
                        "N", "N", "S",
                        "D-1,N", "D-1,N", "?"
                    ],
                    "minPoints" : 1,
                    "mapping" : { "normal" : "47" }
                },
                {
                    "id" : "m8",
                    "data" :
                    [
                        "N", "N", "D-1,N",
                        "N", "N", "D-1,N",
                        "?", "S", "?"
                    ],
                    "minPoints" : 1,
                    "mapping" : { "normal" : "48" }
                },
                    // Standard transitions
                {
                    "id" : "s2",
                    "data" :
                    [
                        "?", "N", "N",
                        "T", "N", "N",
                        "?", "N", "N"
                    ],
                    "mapping" : { "normal" : "4-7, 24-27", "dirt" : "4-7", "water" : "4-7", "rock": "2D:16-19" }
                },
                {
                    "id" : "s3",
                    "data" :
                    [
                        "?", "T", "?",
                        "N", "N", "N",
                        "N", "N", "N"
                    ],
                    "mapping" : { "normal" : "8-11, 28-31", "dirt" : "8-11", "water" : "8-11", "rock": "2D:20-23" }
                },
                {
                    "id" : "s4",
                    "data" :
                    [
                        "N", "N", "N",
                        "N", "N", "s3-1,m7-1,m8-1",
                        "N", "s2-1,m7-1,m8-1", "T"
                    ],
                    "minPoints" : 2,
                    "mapping" : { "normal" : "12-15, 32-35", "dirt" : "12-15", "water" : "12-15", "rock": "4D:24-31" }
                },
                {
                    "id" : "s5",
                    "data" :
                    [
                        "T", "T", "?",
                        "T", "N", "s6-1,m1-1,m2-1,N",
                        "?,x1-1,s1-1", "s6-1,m1-1,m2-1,N", "N"
                    ],
                    "minPoints" : 1,
                    "mapping" : { "normal" : "16-17, 36-37", "dirt" : "16-17", "water" : "16-17", "rock": "4D:32-39" }
                },
                {
                    "id" : "s6",
                    "data" :
                    [
                        "N", "N", "N",
                        "N", "N", "s5-1,N",
                        "N", "s5-1,N", "T"
                    ],
                    "minPoints" : 1,
                    "mapping" : { "normal" : "18-19, 38-39", "dirt" : "18-19", "water" : "18-19", "rock": "4D:40-47" }
                },
                {
                    "id" : "s1",
                    "data" :
                    [
                        "?", "?", "?",
                        "?", "N", "N",
                        "T", "N", "N"
                    ],
                    "mapping" : { "normal" : "0-3, 20-23", "dirt" : "0-3", "water" : "0-3", "rock": "4D:8-15" }
                }
            ],
            "terrainType" :
            [
                {
                    "id" : "n1",
                    "data" :
                    [
                        "N!", "N!", "?",
                        "N!", "N!", "?",
                        "?", "?", "?"
                    ]
                },
                {
                    "id" : "n2",
                    "data" :
                    [
                        "N!", "N!", "D,S",
                        "D,S", "N!", "N!",
                        "D,S", "D,S", "N!"
                    ]
                },
                {
                    "id" : "n3",
                    "data" :
                    [
                        "D,S", "D,S", "N!",
                        "D,S", "N!", "N!",
                        "N!", "N!", "D,S"
                    ]
                },
                {
                    "id" : "s1",
                    "data" :
                    [
                        "T", "N", "N",
                        "N", "N", "N,T",
                        "N", "N", "T"
                    ]
                },
                {
                    "id" : "s2",
                    "data" :
                    [
                        "N", "N,T", "T",
                        "N", "N", "N",
                        "T", "N", "N"
                    ]
                }
            ]
        },
        "" => {

        }
    ];

    public function new() {
    }
}
