package data;

class ModData {
    public static var data:Map<String, String> = [
        "artifacts" => '{
    "spellBook":
    {
        "index" : 0,
        "type" : ["HERO"]
    },
    "spellScroll":
    {
        "index" : 1,
        "type" : ["HERO"]
    },
    "grail":
    {
        "index" : 2,
        "type" : ["HERO"]
    },
    "catapult":
    {
        "index" : 3,
        "type" : ["HERO"],
        "warMachine" : "catapult"
    },
    "ballista":
    {
        "index" : 4,
        "type" : ["HERO"],
        "warMachine" : "ballista"
    },
    "ammoCart":
    {
        "index" : 5,
        "type" : ["HERO"],
        "warMachine" : "ammoCart"
    },
    "firstAidTent":
    {
        "index" : 6,
        "type" : ["HERO"],
        "warMachine" : "firstAidTent"
    },
    "centaurAxe":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.attack",
                "type" : "PRIMARY_SKILL",
                "val" : 2,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 7,
        "type" : ["HERO"]
    },
    "blackshardOfTheDeadKnight":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.attack",
                "type" : "PRIMARY_SKILL",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 8,
        "type" : ["HERO"]
    },
    "greaterGnollsFlail":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.attack",
                "type" : "PRIMARY_SKILL",
                "val" : 4,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 9,
        "type" : ["HERO"]
    },
    "ogresClubOfHavoc":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.attack",
                "type" : "PRIMARY_SKILL",
                "val" : 5,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 10,
        "type" : ["HERO"]
    },
    "swordOfHellfire":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.attack",
                "type" : "PRIMARY_SKILL",
                "val" : 6,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 11,
        "type" : ["HERO"]
    },
    "titansGladius":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.attack",
                "type" : "PRIMARY_SKILL",
                "val" : 12,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.defence",
                "type" : "PRIMARY_SKILL",
                "val" : -3,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 12,
        "type" : ["HERO"]
    },
    "shieldOfTheDwarvenLords":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.defence",
                "type" : "PRIMARY_SKILL",
                "val" : 2,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 13,
        "type" : ["HERO"]
    },
    "shieldOfTheYawningDead":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.defence",
                "type" : "PRIMARY_SKILL",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 14,
        "type" : ["HERO"]
    },
    "bucklerOfTheGnollKing":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.defence",
                "type" : "PRIMARY_SKILL",
                "val" : 4,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 15,
        "type" : ["HERO"]
    },
    "targOfTheRampagingOgre":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.defence",
                "type" : "PRIMARY_SKILL",
                "val" : 5,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 16,
        "type" : ["HERO"]
    },
    "shieldOfTheDamned":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.defence",
                "type" : "PRIMARY_SKILL",
                "val" : 6,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 17,
        "type" : ["HERO"]
    },
    "sentinelsShield":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.defence",
                "type" : "PRIMARY_SKILL",
                "val" : 12,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : 0,
                "type" : "PRIMARY_SKILL",
                "val" : -3,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 18,
        "type" : ["HERO"]
    },
    "helmOfTheAlabasterUnicorn":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.knowledge",
                "type" : "PRIMARY_SKILL",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 19,
        "type" : ["HERO"]
    },
    "skullHelmet":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.knowledge",
                "type" : "PRIMARY_SKILL",
                "val" : 2,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 20,
        "type" : ["HERO"]
    },
    "helmOfChaos":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.knowledge",
                "type" : "PRIMARY_SKILL",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 21,
        "type" : ["HERO"]
    },
    "crownOfTheSupremeMagi":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.knowledge",
                "type" : "PRIMARY_SKILL",
                "val" : 4,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 22,
        "type" : ["HERO"]
    },
    "hellstormHelmet":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.knowledge",
                "type" : "PRIMARY_SKILL",
                "val" : 5,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 23,
        "type" : ["HERO"]
    },
    "thunderHelmet":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.knowledge",
                "type" : "PRIMARY_SKILL",
                "val" : 10,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.spellpower",
                "type" : "PRIMARY_SKILL",
                "val" : -2,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 24,
        "type" : ["HERO"]
    },
    "breastplateOfPetrifiedWood":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.spellpower",
                "type" : "PRIMARY_SKILL",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 25,
        "type" : ["HERO"]
    },
    "ribCage":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.spellpower",
                "type" : "PRIMARY_SKILL",
                "val" : 2,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 26,
        "type" : ["HERO"]
    },
    "scalesOfTheGreaterBasilisk":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.spellpower",
                "type" : "PRIMARY_SKILL",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 27,
        "type" : ["HERO"]
    },
    "tunicOfTheCyclopsKing":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.spellpower",
                "type" : "PRIMARY_SKILL",
                "val" : 4,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 28,
        "type" : ["HERO"]
    },
    "breastplateOfBrimstone":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.spellpower",
                "type" : "PRIMARY_SKILL",
                "val" : 5,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 29,
        "type" : ["HERO"]
    },
    "titansCuirass":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.spellpower",
                "type" : "PRIMARY_SKILL",
                "val" : 10,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.knowledge",
                "type" : "PRIMARY_SKILL",
                "val" : -2,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 30,
        "type" : ["HERO"]
    },
    "armorOfWonder":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.attack",
                "type" : "PRIMARY_SKILL",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.defence",
                "type" : "PRIMARY_SKILL",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.spellpower",
                "type" : "PRIMARY_SKILL",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.knowledge",
                "type" : "PRIMARY_SKILL",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 31,
        "type" : ["HERO"]
    },
    "sandalsOfTheSaint":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.attack",
                "type" : "PRIMARY_SKILL",
                "val" : 2,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.defence",
                "type" : "PRIMARY_SKILL",
                "val" : 2,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.spellpower",
                "type" : "PRIMARY_SKILL",
                "val" : 2,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.knowledge",
                "type" : "PRIMARY_SKILL",
                "val" : 2,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 32,
        "type" : ["HERO"]
    },
    "celestialNecklaceOfBliss":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.attack",
                "type" : "PRIMARY_SKILL",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.defence",
                "type" : "PRIMARY_SKILL",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.spellpower",
                "type" : "PRIMARY_SKILL",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.knowledge",
                "type" : "PRIMARY_SKILL",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 33,
        "type" : ["HERO"]
    },
    "lionsShieldOfCourage":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.attack",
                "type" : "PRIMARY_SKILL",
                "val" : 4,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.defence",
                "type" : "PRIMARY_SKILL",
                "val" : 4,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.spellpower",
                "type" : "PRIMARY_SKILL",
                "val" : 4,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.knowledge",
                "type" : "PRIMARY_SKILL",
                "val" : 4,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 34,
        "type" : ["HERO"]
    },
    "swordOfJudgement":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.attack",
                "type" : "PRIMARY_SKILL",
                "val" : 5,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.defence",
                "type" : "PRIMARY_SKILL",
                "val" : 5,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.spellpower",
                "type" : "PRIMARY_SKILL",
                "val" : 5,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.knowledge",
                "type" : "PRIMARY_SKILL",
                "val" : 5,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 35,
        "type" : ["HERO"]
    },
    "helmOfHeavenlyEnlightenment":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.attack",
                "type" : "PRIMARY_SKILL",
                "val" : 6,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.defence",
                "type" : "PRIMARY_SKILL",
                "val" : 6,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.spellpower",
                "type" : "PRIMARY_SKILL",
                "val" : 6,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.knowledge",
                "type" : "PRIMARY_SKILL",
                "val" : 6,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 36,
        "type" : ["HERO"]
    },
    "quietEyeOfTheDragon":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.attack",
                "type" : "PRIMARY_SKILL",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.defence",
                "type" : "PRIMARY_SKILL",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 37,
        "type" : ["HERO"]
    },
    "redDragonFlameTongue":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.attack",
                "type" : "PRIMARY_SKILL",
                "val" : 2,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.defence",
                "type" : "PRIMARY_SKILL",
                "val" : 2,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 38,
        "type" : ["HERO"]
    },
    "dragonScaleShield":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.attack",
                "type" : "PRIMARY_SKILL",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.defence",
                "type" : "PRIMARY_SKILL",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 39,
        "type" : ["HERO"]
    },
    "dragonScaleArmor":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.attack",
                "type" : "PRIMARY_SKILL",
                "val" : 4,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.defence",
                "type" : "PRIMARY_SKILL",
                "val" : 4,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 40,
        "type" : ["HERO"]
    },
    "dragonboneGreaves":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.spellpower",
                "type" : "PRIMARY_SKILL",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.knowledge",
                "type" : "PRIMARY_SKILL",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 41,
        "type" : ["HERO"]
    },
    "dragonWingTabard":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.spellpower",
                "type" : "PRIMARY_SKILL",
                "val" : 2,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.knowledge",
                "type" : "PRIMARY_SKILL",
                "val" : 2,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 42,
        "type" : ["HERO"]
    },
    "necklaceOfDragonteeth":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.spellpower",
                "type" : "PRIMARY_SKILL",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.knowledge",
                "type" : "PRIMARY_SKILL",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 43,
        "type" : ["HERO"]
    },
    "crownOfDragontooth":
    {
        "bonuses" : [
            {
                "subtype" : "primSkill.spellpower",
                "type" : "PRIMARY_SKILL",
                "val" : 4,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.knowledge",
                "type" : "PRIMARY_SKILL",
                "val" : 4,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 44,
        "type" : ["HERO"]
    },
    "stillEyeOfTheDragon":
    {
        "bonuses" : [
            {
                "type" : "MORALE",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            },
            {
                "type" : "LUCK",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 45,
        "type" : ["HERO"]
    },
    "cloverOfFortune":
    {
        "bonuses" : [
            {
                "type" : "LUCK",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 46,
        "type" : ["HERO"]
    },
    "cardsOfProphecy":
    {
        "bonuses" : [
            {
                "type" : "LUCK",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 47,
        "type" : ["HERO"]
    },
    "ladybirdOfLuck":
    {
        "bonuses" : [
            {
                "type" : "LUCK",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 48,
        "type" : ["HERO"]
    },
    "badgeOfCourage":
    {
        "bonuses" : [
            {
                "type" : "MORALE",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            },
            {
                "type" : "MIND_IMMUNITY",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 49,
        "type" : ["HERO"]
    },
    "crestOfValor":
    {
        "bonuses" : [
            {
                "type" : "MORALE",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 50,
        "type" : ["HERO"]
    },
    "glyphOfGallantry":
    {
        "bonuses" : [
            {
                "type" : "MORALE",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 51,
        "type" : ["HERO"]
    },
    "speculum":
    {
        "bonuses" : [
            {
                "type" : "SIGHT_RADIOUS",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 52,
        "type" : ["HERO"]
    },
    "spyglass":
    {
        "bonuses" : [
            {
                "type" : "SIGHT_RADIOUS",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 53,
        "type" : ["HERO"]
    },
    "amuletOfTheUndertaker":
    {
        "bonuses" : [
            {
                "subtype" : 12,
                "type" : "SECONDARY_SKILL_PREMY",
                "val" : 5,
                "valueType" : "ADDITIVE_VALUE"
            }
        ],
        "index" : 54,
        "type" : ["HERO"]
    },
    "vampiresCowl":
    {
        "bonuses" : [
            {
                "subtype" : 12,
                "type" : "SECONDARY_SKILL_PREMY",
                "val" : 10,
                "valueType" : "ADDITIVE_VALUE"
            }
        ],
        "index" : 55,
        "type" : ["HERO"]
    },
    "deadMansBoots":
    {
        "bonuses" : [
            {
                "subtype" : 12,
                "type" : "SECONDARY_SKILL_PREMY",
                "val" : 15,
                "valueType" : "ADDITIVE_VALUE"
            }
        ],
        "index" : 56,
        "type" : ["HERO"]
    },
    "garnitureOfInterference":
    {
        "bonuses" : [
            {
                "subtype" : 0,
                "type" : "MAGIC_RESISTANCE",
                "val" : 5,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 57,
        "type" : ["HERO"]
    },
    "surcoatOfCounterpoise":
    {
        "bonuses" : [
            {
                "subtype" : 0,
                "type" : "MAGIC_RESISTANCE",
                "val" : 10,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 58,
        "type" : ["HERO"]
    },
    "bootsOfPolarity":
    {
        "bonuses" : [
            {
                "subtype" : 0,
                "type" : "MAGIC_RESISTANCE",
                "val" : 15,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 59,
        "type" : ["HERO"]
    },
    "bowOfElvenCherrywood":
    {
        "bonuses" : [
            {
                "subtype" : "skill.archery",
                "type" : "SECONDARY_SKILL_PREMY",
                "val" : 5,
                "valueType" : "ADDITIVE_VALUE"
            }
        ],
        "index" : 60,
        "type" : ["HERO"]
    },
    "bowstringOfTheUnicornsMane":
    {
        "bonuses" : [
            {
                "subtype" : "skill.archery",
                "type" : "SECONDARY_SKILL_PREMY",
                "val" : 10,
                "valueType" : "ADDITIVE_VALUE"
            }
        ],
        "index" : 61,
        "type" : ["HERO"]
    },
    "angelFeatherArrows":
    {
        "bonuses" : [
            {
                "subtype" : "skill.archery",
                "type" : "SECONDARY_SKILL_PREMY",
                "val" : 15,
                "valueType" : "ADDITIVE_VALUE"
            }
        ],
        "index" : 62,
        "type" : ["HERO"]
    },
    "birdOfPerception":
    {
        "bonuses" : [
            {
                "subtype" : "skill.eagleEye",
                "type" : "SECONDARY_SKILL_PREMY",
                "val" : 5,
                "valueType" : "ADDITIVE_VALUE"
            }
        ],
        "index" : 63,
        "type" : ["HERO"]
    },
    "stoicWatchman":
    {
        "bonuses" : [
            {
                "subtype" : "skill.eagleEye",
                "type" : "SECONDARY_SKILL_PREMY",
                "val" : 10,
                "valueType" : "ADDITIVE_VALUE"
            }
        ],
        "index" : 64,
        "type" : ["HERO"]
    },
    "emblemOfCognizance":
    {
        "bonuses" : [
            {
                "subtype" : "skill.eagleEye",
                "type" : "SECONDARY_SKILL_PREMY",
                "val" : 15,
                "valueType" : "ADDITIVE_VALUE"
            }
        ],
        "index" : 65,
        "type" : ["HERO"]
    },
    "statesmansMedal":
    {
        "bonuses" : [
            {
                "type" : "SURRENDER_DISCOUNT",
                "val" : 10,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 66,
        "type" : ["HERO"]
    },
    "diplomatsRing":
    {
        "bonuses" : [
            {
                "type" : "SURRENDER_DISCOUNT",
                "val" : 10,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 67,
        "type" : ["HERO"]
    },
    "ambassadorsSash":
    {
        "bonuses" : [
            {
                "type" : "SURRENDER_DISCOUNT",
                "val" : 10,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 68,
        "type" : ["HERO"]
    },
    "ringOfTheWayfarer":
    {
        "bonuses" : [
            {
                "type" : "STACKS_SPEED",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 69,
        "type" : ["HERO"]
    },
    "equestriansGloves":
    {
        "bonuses" : [
            {
                "type" : "LAND_MOVEMENT",
                "val" : 300,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 70,
        "type" : ["HERO"]
    },
    "necklaceOfOceanGuidance":
    {
        "bonuses" : [
            {
                "type" : "SEA_MOVEMENT",
                "val" : 1000,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 71,
        "type" : ["HERO"]
    },
    "angelWings":
    {
        "bonuses" : [
            {
                "type" : "FLYING_MOVEMENT",
                "val" : 0,
                "valueType" : "INDEPENDENT_MIN"
            }
        ],
        "index" : 72,
        "type" : ["HERO"]
    },
    "charmOfMana":
    {
        "bonuses" : [
            {
                "type" : "MANA_REGENERATION",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 73,
        "type" : ["HERO"]
    },
    "talismanOfMana":
    {
        "bonuses" : [
            {
                "type" : "MANA_REGENERATION",
                "val" : 2,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 74,
        "type" : ["HERO"]
    },
    "mysticOrbOfMana":
    {
        "bonuses" : [
            {
                "type" : "MANA_REGENERATION",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 75,
        "type" : ["HERO"]
    },
    "collarOfConjuring":
    {
        "bonuses" : [
            {
                "type" : "SPELL_DURATION",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 76,
        "type" : ["HERO"]
    },
    "ringOfConjuring":
    {
        "bonuses" : [
            {
                "type" : "SPELL_DURATION",
                "val" : 2,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 77,
        "type" : ["HERO"]
    },
    "capeOfConjuring":
    {
        "bonuses" : [
            {
                "type" : "SPELL_DURATION",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 78,
        "type" : ["HERO"]
    },
    "orbOfTheFirmament":
    {
        "bonuses" : [
            {
                "type" : "AIR_SPELL_DMG_PREMY",
                "val" : 50,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 79,
        "type" : ["HERO"]
    },
    "orbOfSilt":
    {
        "bonuses" : [
            {
                "type" : "EARTH_SPELL_DMG_PREMY",
                "val" : 50,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 80,
        "type" : ["HERO"]
    },
    "orbOfTempestuousFire":
    {
        "bonuses" : [
            {
                "type" : "FIRE_SPELL_DMG_PREMY",
                "val" : 50,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 81,
        "type" : ["HERO"]
    },
    "orbOfDrivingRain":
    {
        "bonuses" : [
            {
                "type" : "WATER_SPELL_DMG_PREMY",
                "val" : 50,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 82,
        "type" : ["HERO"]
    },
    "recantersCloak":
    {
        "index" : 83,
        "type" : ["HERO"],
        "bonuses": [
            {
                "type" : "BLOCK_MAGIC_ABOVE",
                "val" : 2,
                "valueType" : "INDEPENDENT_MIN",
                "propagator": "BATTLE_WIDE"
            }
        ]
    },
    "spiritOfOppression":
    {
        "bonuses" : [
            {
                "type" : "BLOCK_MORALE",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 84,
        "type" : ["HERO"]
    },
    "hourglassOfTheEvilHour":
    {
        "bonuses" : [
            {
                "type" : "BLOCK_LUCK",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 85,
        "type" : ["HERO"]
    },
    "tomeOfFireMagic":
    {
        "bonuses" : [
            {
                "type" : "FIRE_SPELLS",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 86,
        "type" : ["HERO"]
    },
    "tomeOfAirMagic":
    {
        "bonuses" : [
            {
                "type" : "AIR_SPELLS",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 87,
        "type" : ["HERO"]
    },
    "tomeOfWaterMagic":
    {
        "bonuses" : [
            {
                "type" : "WATER_SPELLS",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 88,
        "type" : ["HERO"]
    },
    "tomeOfEarthMagic":
    {
        "bonuses" : [
            {
                "type" : "EARTH_SPELLS",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 89,
        "type" : ["HERO"]
    },
    "bootsOfLevitation":
    {
        "bonuses" : [
            {
                "type" : "WATER_WALKING",
                "val" : 0,
                "valueType" : "INDEPENDENT_MIN"
            }
        ],
        "index" : 90,
        "type" : ["HERO"]
    },
    "goldenBow":
    {
        "bonuses" : [
            {
                "limiters" : ["SHOOTER_ONLY"],
                "subtype" : 0,
                "type" : "NO_DISTANCE_PENALTY",
                "val" : 0,
                "valueType" : "ADDITIVE_VALUE"
            },
            {
                "limiters" : ["SHOOTER_ONLY"],
                "subtype" : 0,
                "type" : "NO_WALL_PENALTY",
                "val" : 0,
                "valueType" : "ADDITIVE_VALUE"
            }
        ],
        "index" : 91,
        "type" : ["HERO"]
    },
    "sphereOfPermanence":
    {
        "bonuses" : [
            {
                "subtype" : 35,
                "type" : "SPELL_IMMUNITY",
                "val" : 0,
                "valueType" : "BASE_NUMBER",
                "addInfo" : 1
            }
        ],
        "index" : 92,
        "type" : ["HERO"]
    },
    "orbOfVulnerability":
    {
        "bonuses" : [
            {
                "type" : "NEGATE_ALL_NATURAL_IMMUNITIES",
                "subtype" : 0,
                "val" : 0,
                "valueType" : "BASE_NUMBER",
                "propagator": "BATTLE_WIDE"
            },
            {
                "type" : "NEGATE_ALL_NATURAL_IMMUNITIES",
                "subtype" : 1,
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 93,
        "type" : ["HERO"]
    },
    "ringOfVitality":
    {
        "bonuses" : [
            {
                "type" : "STACK_HEALTH",
                "val" : 1,
                "valueType" : "ADDITIVE_VALUE"
            }
        ],
        "index" : 94,
        "type" : ["HERO"]
    },
    "ringOfLife":
    {
        "bonuses" : [
            {
                "type" : "STACK_HEALTH",
                "val" : 1,
                "valueType" : "ADDITIVE_VALUE"
            }
        ],
        "index" : 95,
        "type" : ["HERO"]
    },
    "vialOfLifeblood":
    {
        "bonuses" : [
            {
                "type" : "STACK_HEALTH",
                "val" : 2,
                "valueType" : "ADDITIVE_VALUE"
            }
        ],
        "index" : 96,
        "type" : ["HERO"]
    },
    "necklaceOfSwiftness":
    {
        "bonuses" : [
            {
                "type" : "STACKS_SPEED",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 97,
        "type" : ["HERO"]
    },
    "bootsOfSpeed":
    {
        "bonuses" : [
            {
                "type" : "LAND_MOVEMENT",
                "val" : 600,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 98,
        "type" : ["HERO"]
    },
    "capeOfVelocity":
    {
        "bonuses" : [
            {
                "type" : "STACKS_SPEED",
                "val" : 2,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 99,
        "type" : ["HERO"]
    },
    "pendantOfDispassion":
    {
        "bonuses" : [
            {
                "subtype" : "spell.berserk",
                "type" : "SPELL_IMMUNITY",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 100,
        "type" : ["HERO"]
    },
    "pendantOfSecondSight":
    {
        "bonuses" : [
            {
                "subtype" : "spell.blind",
                "type" : "SPELL_IMMUNITY",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 101,
        "type" : ["HERO"]
    },
    "pendantOfHoliness":
    {
        "bonuses" : [
            {
                "subtype" : "spell.curse",
                "type" : "SPELL_IMMUNITY",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 102,
        "type" : ["HERO"]
    },
    "pendantOfLife":
    {
        "bonuses" : [
            {
                "subtype" : "spell.deathRipple",
                "type" : "SPELL_IMMUNITY",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 103,
        "type" : ["HERO"]
    },
    "pendantOfDeath":
    {
        "bonuses" : [
            {
                "limiters" : ["IS_UNDEAD"],
                "subtype" : "spell.destroyUndead",
                "type" : "SPELL_IMMUNITY",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 104,
        "type" : ["HERO"]
    },
    "pendantOfFreeWill":
    {
        "bonuses" : [
            {
                "subtype" : "spell.hypnotize",
                "type" : "SPELL_IMMUNITY",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 105,
        "type" : ["HERO"]
    },
    "pendantOfNegativity":
    {
        "bonuses" : [
            {
                "subtype" : "spell.lightningBolt",
                "type" : "SPELL_IMMUNITY",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "spell.chainLightning",
                "type" : "SPELL_IMMUNITY",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 106,
        "type" : ["HERO"]
    },
    "pendantOfTotalRecall":
    {
        "bonuses" : [
            {
                "subtype" : "spell.forgetfulness",
                "type" : "SPELL_IMMUNITY",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 107,
        "type" : ["HERO"]
    },
    "pendantOfCourage":
    {
        "bonuses" : [
            {
                "type" : "MORALE",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            },
            {
                "type" : "LUCK",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 108,
        "type" : ["HERO"]
    },
    "everflowingCrystalCloak":
    {
        "bonuses" : [
            {
                "subtype" : "resource.crystal",
                "type" : "GENERATE_RESOURCE",
                "val" : 1,
                "valueType" : "BASE_NUMBER",
                "stacking" : "ALWAYS"
            }
        ],
        "index" : 109,
        "type" : ["HERO"]
    },
    "ringOfInfiniteGems":
    {
        "bonuses" : [
            {
                "subtype" : "resource.gems",
                "type" : "GENERATE_RESOURCE",
                "val" : 1,
                "valueType" : "BASE_NUMBER",
                "stacking" : "ALWAYS"
            }
        ],
        "index" : 110,
        "type" : ["HERO"]
    },
    "everpouringVialOfMercury":
    {
        "bonuses" : [
            {
                "subtype" : "resource.mercury",
                "type" : "GENERATE_RESOURCE",
                "val" : 1,
                "valueType" : "BASE_NUMBER",
                "stacking" : "ALWAYS"
            }
        ],
        "index" : 111,
        "type" : ["HERO"]
    },
    "inexhaustibleCartOfOre":
    {
        "bonuses" : [
            {
                "subtype" : "resource.ore",
                "type" : "GENERATE_RESOURCE",
                "val" : 1,
                "valueType" : "BASE_NUMBER",
                "stacking" : "ALWAYS"
            }
        ],
        "index" : 112,
        "type" : ["HERO"]
    },
    "eversmokingRingOfSulfur":
    {
        "bonuses" : [
            {
                "subtype" : "resource.sulfur",
                "type" : "GENERATE_RESOURCE",
                "val" : 1,
                "valueType" : "BASE_NUMBER",
                "stacking" : "ALWAYS"
            }
        ],
        "index" : 113,
        "type" : ["HERO"]
    },
    "inexhaustibleCartOfLumber":
    {
        "bonuses" : [
            {
                "subtype" : "resource.wood",
                "type" : "GENERATE_RESOURCE",
                "val" : 1,
                "valueType" : "BASE_NUMBER",
                "stacking" : "ALWAYS"
            }
        ],
        "index" : 114,
        "type" : ["HERO"]
    },
    "endlessSackOfGold":
    {
        "bonuses" : [
            {
                "subtype" : "resource.gold",
                "type" : "GENERATE_RESOURCE",
                "val" : 1000,
                "valueType" : "BASE_NUMBER",
                "stacking" : "ALWAYS"
            }
        ],
        "index" : 115,
        "type" : ["HERO"]
    },
    "endlessBagOfGold":
    {
        "bonuses" : [
            {
                "subtype" : "resource.gold",
                "type" : "GENERATE_RESOURCE",
                "val" : 750,
                "valueType" : "BASE_NUMBER",
                "stacking" : "ALWAYS"
            }
        ],
        "index" : 116,
        "type" : ["HERO"]
    },
    "endlessPurseOfGold":
    {
        "bonuses" : [
            {
                "subtype" : "resource.gold",
                "type" : "GENERATE_RESOURCE",
                "val" : 500,
                "valueType" : "BASE_NUMBER",
                "stacking" : "ALWAYS"
            }
        ],
        "index" : 117,
        "type" : ["HERO"]
    },
    "legsOfLegion":
    {
        "index" : 118,
        "type" : ["HERO"],
        "bonuses" : [
            {
                "type" : "CREATURE_GROWTH",
                "subtype" : 1,
                "val" : 5,
                "propagator": "VISITED_TOWN_AND_VISITOR"
            }
        ]
    },
    "loinsOfLegion":
    {
        "index" : 119,
        "type" : ["HERO"],
        "bonuses" : [
            {
                "type" : "CREATURE_GROWTH",
                "subtype" : 2,
                "val" : 4,
                "propagator": "VISITED_TOWN_AND_VISITOR"
            }
        ]
    },
    "torsoOfLegion":
    {
        "index" : 120,
        "type" : ["HERO"],
        "bonuses" : [
            {
                "type" : "CREATURE_GROWTH",
                "subtype" : 3,
                "val" : 3,
                "propagator": "VISITED_TOWN_AND_VISITOR"
            }
        ]
    },
    "armsOfLegion":
    {
        "index" : 121,
        "type" : ["HERO"],
        "bonuses" : [
            {
                "type" : "CREATURE_GROWTH",
                "subtype" : 4,
                "val" : 2,
                "propagator": "VISITED_TOWN_AND_VISITOR"
            }
        ]
    },
    "headOfLegion":
    {
        "index" : 122,
        "type" : ["HERO"],
        "bonuses" : [
            {
                "type" : "CREATURE_GROWTH",
                "subtype" : 5,
                "val" : 1,
                "propagator": "VISITED_TOWN_AND_VISITOR"
            }
        ]
    },
    "seaCaptainsHat":
    {
        "bonuses" : [
            {
                "type" : "WHIRLPOOL_PROTECTION",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            },
            {
                "type" : "SEA_MOVEMENT",
                "val" : 500,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "spell.summonBoat",
                "type" : "SPELL",
                "val" : 3,
                "valueType" : "INDEPENDENT_MAX"
            },
            {
                "subtype" : "spell.scuttleBoat",
                "type" : "SPELL",
                "val" : 3,
                "valueType" : "INDEPENDENT_MAX"
            }
        ],
        "index" : 123,
        "type" : ["HERO"]
    },
    "spellbindersHat":
    {
        "bonuses" : [
            {
                "subtype" : 5,
                "type" : "SPELLS_OF_LEVEL",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 124,
        "type" : ["HERO"]
    },
    "shacklesOfWar":
    {
        "index" : 125,
        "type" : ["HERO"],
        "bonuses" : [
            {
                "type" : "BATTLE_NO_FLEEING",
                "propagator": "BATTLE_WIDE"
            }
        ]
    },
    "orbOfInhibition":
    {
        "index" : 126,
        "type" : ["HERO"],
        "bonuses" : [
            {
                "type" : "BLOCK_ALL_MAGIC",
                "propagator": "BATTLE_WIDE"
            }
        ]
    },
    "vialOfDragonBlood":
    {
        "bonuses" : [
            {
                "limiters" : ["DRAGON_NATURE"],
                "subtype" : "primSkill.attack",
                "type" : "PRIMARY_SKILL",
                "val" : 5,
                "valueType" : "BASE_NUMBER"
            },
            {
                "limiters" : ["DRAGON_NATURE"],
                "subtype" : "primSkill.defence",
                "type" : "PRIMARY_SKILL",
                "val" : 5,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 127,
        "type" : ["HERO"]
    },
    "armageddonsBlade":
    {
        "bonuses" : [
            {
                "subtype" : "spell.armageddon",
                "type" : "SPELL",
                "val" : 3,
                "valueType" : "INDEPENDENT_MAX"
            },
            {
                "subtype" : "spell.armageddon",
                "type" : "SPELL_IMMUNITY",
                "val" : 0,
                "valueType" : "BASE_NUMBER",
                "addInfo" : 1
            },
            {
                "subtype" : "primSkill.attack",
                "type" : "PRIMARY_SKILL",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.defence",
                "type" : "PRIMARY_SKILL",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.spellpower",
                "type" : "PRIMARY_SKILL",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.knowledge",
                "type" : "PRIMARY_SKILL",
                "val" : 6,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 128,
        "type" : ["HERO"]
    },
    "angelicAlliance":
    {
        "bonuses" : [
            {
                "type" : "NONEVIL_ALIGNMENT_MIX",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "spell.prayer",
                "type" : "OPENING_BATTLE_SPELL",
                "val" : 10,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 129,
        "type" : ["HERO"],
        "components":
        [
            "armorOfWonder",
            "sandalsOfTheSaint",
            "celestialNecklaceOfBliss",
            "lionsShieldOfCourage",
            "swordOfJudgement",
            "helmOfHeavenlyEnlightenment"
        ]
    },
    "cloakOfTheUndeadKing":
    {
        "bonuses" : [
            {
                "type" : "IMPROVED_NECROMANCY",
                "subtype" : "creature.walkingDead",
                "addInfo" : 1
            },
            {
                "type" : "IMPROVED_NECROMANCY",
                "subtype" : "creature.wight",
                "addInfo" : 2
            },
            {
                "type" : "IMPROVED_NECROMANCY",
                "subtype" : "creature.lich",
                "addInfo" : 3
            }
        ],
        "index" : 130,
        "type" : ["HERO"],
        "components":
        [
            "amuletOfTheUndertaker",
            "vampiresCowl",
            "deadMansBoots"
        ]
    },
    "elixirOfLife":
    {
        "bonuses" : [
            {
                "type" : "STACK_HEALTH",
                "val" : 25,
                "valueType" : "PERCENT_TO_BASE"
            },
            {
                "type" : "STACK_HEALTH",
                "val" : -25,
                "valueType" : "PERCENT_TO_BASE",
                "limiters" : ["IS_UNDEAD"]
            },
            {
                "type" : "HP_REGENERATION",
                "val" : 50,
                "valueType" : "BASE_NUMBER"
            },
            {
                "type" : "HP_REGENERATION",
                "val" : -50,
                "valueType" : "BASE_NUMBER",
                "limiters" : ["IS_UNDEAD"]
            }
        ],
        "index" : 131,
        "type" : ["HERO"],
        "components":
        [
            "ringOfVitality",
            "ringOfLife",
            "vialOfLifeblood"
        ]
    },
    "armorOfTheDamned":
    {
        "bonuses" : [
            {
                "subtype" : "spell.slow",
                "type" : "OPENING_BATTLE_SPELL",
                "val" : 50,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "spell.curse",
                "type" : "OPENING_BATTLE_SPELL",
                "val" : 50,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "spell.weakness",
                "type" : "OPENING_BATTLE_SPELL",
                "val" : 50,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "spell.misfortune",
                "type" : "OPENING_BATTLE_SPELL",
                "val" : 50,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 132,
        "type" : ["HERO"],
        "components":
        [
            "blackshardOfTheDeadKnight",
            "shieldOfTheYawningDead",
            "skullHelmet",
            "ribCage"
        ]
    },
    "statueOfLegion":
    {
        "index" : 133,
        "type" : ["HERO"],
        "components":
        [
            "legsOfLegion",
            "loinsOfLegion",
            "torsoOfLegion",
            "armsOfLegion",
            "headOfLegion"
        ],
        "bonuses" : [
            {
                "type" : "CREATURE_GROWTH_PERCENT",
                "val" : 50,
                "propagator": "PLAYER_PROPAGATOR"
            }
        ]
    },
    "powerOfTheDragonFather":
    {
        "index" : 134,
        "type" : ["HERO"],
        "bonuses" : [
            {
                "type" : "LEVEL_SPELL_IMMUNITY",
                "val" : 4,
                "valueType" : "INDEPENDENT_MAX"
            },
            {
                "subtype" : "primSkill.attack",
                "type" : "PRIMARY_SKILL",
                "val" : 6,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.defence",
                "type" : "PRIMARY_SKILL",
                "val" : 6,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.spellpower",
                "type" : "PRIMARY_SKILL",
                "val" : 6,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "primSkill.knowledge",
                "type" : "PRIMARY_SKILL",
                "val" : 6,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "components":
        [
            "quietEyeOfTheDragon",
            "redDragonFlameTongue",
            "dragonScaleShield",
            "dragonScaleArmor",
            "dragonboneGreaves",
            "dragonWingTabard",
            "necklaceOfDragonteeth",
            "crownOfDragontooth",
            "stillEyeOfTheDragon"
        ]
    },
    "titansThunder":
    {
        "bonuses" : [
            {
                "subtype" : "spell.titanBolt",
                "type" : "SPELL",
                "val" : 3,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 135,
        "type" : ["HERO"],
        "components":
        [
            "titansGladius",
            "sentinelsShield",
            "thunderHelmet",
            "titansCuirass"
        ]
    },
    "admiralsHat":
    {
        "bonuses" : [
            {
                "type" : "FREE_SHIP_BOARDING",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 136,
        "type" : ["HERO"],
        "components":
        [
            "necklaceOfOceanGuidance",
            "seaCaptainsHat"
        ]
    },
    "bowOfTheSharpshooter":
    {
        "bonuses" : [
            {
                "limiters" : ["SHOOTER_ONLY"],
                "subtype" : 0,
                "type" : "NO_DISTANCE_PENALTY",
                "val" : 0,
                "valueType" : "ADDITIVE_VALUE"
            },
            {
                "limiters" : ["SHOOTER_ONLY"],
                "subtype" : 0,
                "type" : "NO_WALL_PENALTY",
                "val" : 0,
                "valueType" : "ADDITIVE_VALUE"
            },
            {
                "limiters" : ["SHOOTER_ONLY"],
                "subtype" : 0,
                "type" : "FREE_SHOOTING",
                "val" : 0,
                "valueType" : "ADDITIVE_VALUE"
            }
        ],
        "index" : 137,
        "type" : ["HERO"],
        "components":
        [
            "bowOfElvenCherrywood",
            "bowstringOfTheUnicornsMane",
            "angelFeatherArrows"
        ]
    },
    "wizardsWell":
    {
        "bonuses" : [
            {
                "type" : "FULL_MANA_REGENERATION",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 138,
        "type" : ["HERO"],
        "components":
        [
            "charmOfMana",
            "talismanOfMana",
            "mysticOrbOfMana"
        ]
    },
    "ringOfTheMagi":
    {
        "bonuses" : [
            {
                "type" : "SPELL_DURATION",
                "val" : 50,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 139,
        "type" : ["HERO"],
        "components":
        [
            "collarOfConjuring",
            "ringOfConjuring",
            "capeOfConjuring"
        ]
    },
    "cornucopia":
    {
        "bonuses" : [
            {
                "subtype" : "resource.crystal",
                "type" : "GENERATE_RESOURCE",
                "val" : 4,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "resource.gems",
                "type" : "GENERATE_RESOURCE",
                "val" : 4,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "resource.mercury",
                "type" : "GENERATE_RESOURCE",
                "val" : 4,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "resource.sulfur",
                "type" : "GENERATE_RESOURCE",
                "val" : 4,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 140,
        "type" : ["HERO"],
        "components":
        [
            "everflowingCrystalCloak",
            "ringOfInfiniteGems",
            "everpouringVialOfMercury",
            "eversmokingRingOfSulfur"
        ]
    },
    "magicWand":
    {
        "bonuses" : [
            {
                "type" : "CASTS",
                "val" : 10,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "spell.implosion",
                "type" : "SPELLCASTER",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "spell.fireball",
                "type" : "SPELLCASTER",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            },
            {
                "type" : "RANDOM_SPELLCASTER",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : "creature.vampireLord",
                "type" : "DAEMON_SUMMONING",
                "val" : 10,
                "valueType" : "BASE_NUMBER"
            },
            {
                "addInfo" : 2,
                "subtype" : "spell.lightningBolt",
                "type" : "ENCHANTER",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : 1,
                "type" : "REBIRTH",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            },
            {
                "type" : "MANA_DRAIN",
                "val" : 10,
                "valueType" : "BASE_NUMBER"
            },
            {
                "type" : "HEALER",
                "val" : 25,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 141,
        "type" : ["CREATURE"]
    },
    "goldTowerArrow":
    {
        "bonuses" : [
            {
                "type" : "NO_DISTANCE_PENALTY",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            },
            {
                "type" : "ADDITIONAL_ATTACK",
                "val" : 2,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : 22,
                "type" : "SPELL_LIKE_ATTACK",
                "val" : 1,
                "valueType" : "BASE_NUMBER"
            },
            {
                "type" : "CATAPULT",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            },
            {
                "type" : "ACID_BREATH",
                "val" : 20,
                "valueType" : "BASE_NUMBER"
            },
            {
                "subtype" : 0,
                "type" : "SHOTS",
                "val" : 200,
                "valueType" : "PERCENT_TO_BASE"
            },
            {
                "addInfo" : 1,
                "subtype" : "spell.age",
                "type" : "SPELL_BEFORE_ATTACK",
                "val" : 50,
                "valueType" : "BASE_NUMBER"
            },
            {
                "addInfo" : 1,
                "subtype" : "spell.berserk",
                "type" : "SPELL_AFTER_ATTACK",
                "val" : 50,
                "valueType" : "BASE_NUMBER"
            },
            {
                "addInfo" : 1,
                "subtype" : "spell.poison",
                "type" : "SPELL_AFTER_ATTACK",
                "val" : 50,
                "valueType" : "BASE_NUMBER"
            },
            {
                "addInfo" : 1,
                "subtype" : "spell.disruptingRay",
                "type" : "SPELL_AFTER_ATTACK",
                "val" : 50,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 142,
        "type" : ["CREATURE"]
    },
    "monstersPower":
    {
        "bonuses" : [
            {
                "type" : "STACK_HEALTH",
                "val" : 100,
                "valueType" : "PERCENT_TO_BASE"
            },
            {
                "subtype" : 2,
                "type" : "CREATURE_DAMAGE",
                "val" : 100,
                "valueType" : "PERCENT_TO_ALL"
            },
            {
                "type" : "HP_REGENERATION",
                "val" : 50,
                "valueType" : "BASE_NUMBER"
            },
            {
                "type" : "NO_RETALIATION",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            },
            {
                "type" : "RETURN_AFTER_STRIKE",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            },
            {
                "type" : "ATTACKS_ALL_ADJACENT",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            },
            {
                "type" : "SPELL_RESISTANCE_AURA",
                "val" : 100,
                "valueType" : "BASE_NUMBER"
            },
            {
                "type" : "DIRECT_DAMAGE_IMMUNITY",
                "val" : 0,
                "valueType" : "BASE_NUMBER"
            }
        ],
        "index" : 143,
        "type" : ["CREATURE"]
    }
}',
        "bonuses" => '{
          "ADDITIONAL_ATTACK": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_DOUBLE"
            },
            "name": "Double Strike",
            "description": "Attacks twice"
          },
          "ADDITIONAL_RETALIATION": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_RETAIL1"
            },
            "name": "Additional retaliations",
            "description": "May Retaliate {val} extra times"
          },
          "AIR_IMMUNITY": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_SPAIR1"
            },
            "name": "Air immunity",
            "description": "Immune to all Air school spells"
          },
          "ATTACKS_ALL_ADJACENT": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_ROUND"
            },
            "name": "Attack all around",
            "description": "Attacks all adjacent enemies"
          },
          "BLOCKS_RETALIATION": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_RETAIL"
            },
            "name": "No retaliation",
            "description": "Enemy cannot Retaliate"
          },
          "CATAPULT": {
            "graphics": {
              "icon": "zvs/Lib1.res/Catapult"
            },
            "name": "Catapult",
            "description": "Attacks siege walls"
          },
          "CATAPULT_EXTRA_SHOTS": {
            "graphics": {
              "icon": "zvs/Lib1.res/Catapult"
            },
            "name": "Additional siege attacks",
            "description": "Can hit siege walls {val} extra times per attack"
          },
          "CHANGES_SPELL_COST_FOR_ALLY": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_MANA"
            },
            "name": "Reduce Casting Cost ({val})",
            "description": "Reduces spell cost for hero"
          },
          "CHANGES_SPELL_COST_FOR_ENEMY": {
            "graphics": {
              "icon": "zvs/Lib1.res/MagicDamper"
            },
            "name": "Magic Damper ({val})",
            "description": "Increases Cost of enemy spells"
          },
          "CHARGE_IMMUNITY": {
            "graphics": {
              "icon": "zvs/Lib1.res/ChargeImmune"
            },
            "name": "Immune to Charge",
            "description": "Immune to Champion charge"
          },
          "DAEMON_SUMMONING": {
            "graphics": {
              "icon": "zvs/Lib1.res/RiseDemons"
            },
            "name": "Summoner ({subtype.creature})",
            "description": "Can rise creatures from corpses"
          },
          "DARKNESS": {
            "name": "Darkness cover",
            "description": "Adds {val} darkness radius"
          },
          "DEATH_STARE": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_DEATH"
            },
            "name": "Death Stare ({val}%)",
            "description": "{val}% chance to kill single creature"
          },
          "DEFENSIVE_STANCE": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_DEFBON"
            },
            "name": "Defense Bonus",
            "description": "+{val} Defense when defending"
          },
          "DOUBLE_DAMAGE_CHANCE": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_DBLOW"
            },
            "name": "Death Blow",
            "description": "{val}% chance for double damage"
          },
          "DRAGON_NATURE": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_DRAGON"
            },
            "name": "Dragon",
            "description": "Creature has a Dragon Nature"
          },
          "DIRECT_DAMAGE_IMMUNITY": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_SPDIR"
            },
            "name": "Direct Damage Immunity",
            "description": "Immune to direct damage spells"
          },
          "DISGUISED": {
            "hidden": true
          },
          "EARTH_IMMUNITY": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_SPEATH1"
            },
            "name": "Earth immunity",
            "description": "Immune to all Earth school spells"
          },
          "ENCHANTER": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_CAST1"
            },
            "name": "Enchanter",
            "description": "Can cast mass {subtype.spell} every turn"
          },
          "ENCHANTED": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_BLESS"
            },
            "name": "Enchanted",
            "description": "Affected by permanent {subtype.spell}"
          },
          "ENEMY_DEFENCE_REDUCTION": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_RDEF"
            },
            "name": "Ignore Defense ({val}%)",
            "description": "Ignores part of Defence for the attack"
          },
          "FIRE_IMMUNITY": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_SPFIRE1"
            },
            "name": "Fire immunity",
            "description": "Immune to all Fire school spells"
          },
          "FIRE_SHIELD": {
            "graphics": {
              "icon": "zvs/Lib1.res/FireShield"
            },
            "name": "Fire Shield ({val}%)",
            "description": "Reflects part of melee damage"
          },
          "FEAR": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_FEAR"
            },
            "name": "Fear",
            "description": "Causes Fear on an enemy stack"
          },
          "FEARLESS": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_FEARL"
            },
            "name": "Fearless",
            "description": "Immune to Fear ability"
          },
          "FLYING": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_FLY"
            },
            "name": "Fly",
            "description": "Can Fly (ignores obstacles)"
          },
          "FREE_SHOOTING": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_SHOOTA"
            },
            "name": "Shoot Close",
            "description": "Can shoot in Close Combat"
          },
          "FULL_HP_REGENERATION": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_TROLL"
            },
            "name": "Regeneration",
            "description": "May Regenerate to full Health"
          },
          "GENERAL_DAMAGE_REDUCTION": {
            "graphics": {
              "icon": "zvs/Lib1.res/DamageReductionMelee"
            },
            "name": "Reduce Damage ({val}%)",
            "description": "Reduces physical damage from ranged or melee"
          },
          "HATE": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_HATE"
            },
            "name": "Hates {subtype.creature}",
            "description": "Does {val}% more damage"
          },
          "HEALER": {
            "graphics": {
              "icon": "zvs/Lib1.res/Healer"
            },
            "name": "Healer",
            "description": "Heals allied units"
          },
          "HP_REGENERATION": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_TROLL"
            },
            "name": "Regeneration",
            "description": "Heals {val} hit points every round"
          },
          "JOUSTING": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_CHAMP"
            },
            "name": "Champion Charge",
            "description": "+5% damage per hex travelled"
          },
          "KING1": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_KING1"
            },
            "name": "King 1",
            "description": "Vulnerable to basic SLAYER"
          },
          "KING2": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_KING2"
            },
            "name": "King 2",
            "description": "Vulnerable to advanced SLAYER"
          },
          "KING3": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_KING3"
            },
            "name": "King 3",
            "description": "Vulnerable to expert SLAYER"
          },
          "LEVEL_SPELL_IMMUNITY": {
            "graphics": {
              "icon": ""
            },
            "name": "Spell immunity 1-{val}",
            "description": "Immune to spells of levels 1-{val}"
          },
          "LIFE_DRAIN": {
            "graphics": {
              "icon": "zvs/Lib1.res/DrainLife"
            },
            "name": "Drain life ({val}%)",
            "description": "Drains {val}% of damage dealt"
          },
          "MANA_CHANNELING": {
            "graphics": {
              "icon": "zvs/Lib1.res/ManaChannel"
            },
            "name": "Magic Channel {val}%",
            "description": "Gives your hero mana spent by enemy"
          },
          "MANA_DRAIN": {
            "graphics": {
              "icon": "zvs/Lib1.res/ManaDrain"
            },
            "name": "Mana Drain",
            "description": "Drains {val} mana every turn"
          },
          "MAGIC_MIRROR": {
            "graphics": {
              "icon": "zvs/Lib1.res/MagicMirror"
            },
            "name": "Magic Mirror ({val}%)",
            "description": "{val}% chance to redirects an offensive spell to enemy"
          },
          "MAGIC_RESISTANCE": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_DWARF"
            },
            "name": "Magic Resistance({MR}%)",
            "description": "{MR}% chance to resist enemy spell"
          },
          "MIND_IMMUNITY": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_MIND"
            },
            "name": "Mind Spell Immunity",
            "description": "Immune to Mind-type spells"
          },
          "NONE": {
            "hidden": true
          },
          "NO_DISTANCE_PENALTY": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_DIST"
            },
            "name": "No distance penalty",
            "description": "Full damage from any distance"
          },
          "NO_MELEE_PENALTY": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_MELEE"
            },
            "name": "No melee penalty",
            "description": "Creature has no Melee Penalty"
          },
          "NO_MORALE": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_MORAL"
            },
            "name": "Neutral Morale",
            "description": "Creature is immune to morale effects"
          },
          "NO_WALL_PENALTY": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_OBST"
            },
            "name": "No wall penalty",
            "description": "Full damage during siege"
          },
          "NO_TERRAIN_PENALTY": {
            "hidden": true
          },
          "NON_LIVING": {
            "graphics": {
              "icon": "zvs/Lib1.res/NonLiving"
            },
            "name": "Non living",
            "description": "Immunity to many effects"
          },
          "RANDOM_SPELLCASTER": {
            "graphics": {
              "icon": "zvs/Lib1.res/RandomBoost"
            },
            "name": "Random spellcaster",
            "description": "Can cast random spell"
          },
          "RECEPTIVE": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_NOFRIM"
            },
            "name": "Receptive",
            "description": "No Immunity to Friendly Spells"
          },
          "REBIRTH": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_REBIRTH"
            },
            "name": "Rebirth ({val}%)",
            "description": "{val}% of stack will rise after death"
          },
          "RETURN_AFTER_STRIKE": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_HARPY"
            },
            "name": "Attack and Return",
            "description": "Returns after melee attack"
          },
          "SECONDARY_SKILL_PREMY": {
            "hidden": true
          },
          "SELF_LUCK": {
            "graphics": {
              "icon": "zvs/Lib1.res/SelfLuck"
            },
            "name": "Positive luck",
            "description": "Always has Positive Luck"
          },
          "SELF_MORALE": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_MINOT"
            },
            "name": "Positive morale",
            "description": "Always has Positive Morale"
          },
          "SHOOTER": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_SHOOT"
            },
            "name": "Ranged",
            "description": "Creature can shoot"
          },
          "SOUL_STEAL": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_SUMMON2"
            },
            "name": "Soul Steal",
            "description": "Gains {val} new creatures for each enemy killed"
          },
          "SPELLCASTER": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_CASTER"
            },
            "name": "Spellcaster",
            "description": "Can cast {subtype.spell}"
          },
          "SPELL_AFTER_ATTACK": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_CAST"
            },
            "name": "Cast After Attack",
            "description": "{val}% to cast {subtype.spell} after attack"
          },
          "SPELL_BEFORE_ATTACK": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_CAST2"
            },
            "name": "Cast Before Attack",
            "description": "{val}% to cast {subtype.spell} before attack"
          },
          "SPELL_DAMAGE_REDUCTION": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_GOLEM"
            },
            "name": "Spell Resistance",
            "description": "Damage from spells reduced {val}%."
          },
          "SPELL_IMMUNITY": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_SPDISB"
            },
            "name": "Spell immunity",
            "description": "Immune to {subtype.spell}"
          },
          "SPELL_LIKE_ATTACK": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_SPDFIRE"
            },
            "name": "Spell-like attack",
            "description": "Attacks with {subtype.spell}"
          },
          "SPELL_RESISTANCE_AURA": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_UNIC"
            },
            "name": "Aura of Resistance",
            "description": "Nearby stacks get {val}% resistance"
          },
          "TWO_HEX_ATTACK_BREATH": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_BREATH"
            },
            "name": "Breath",
            "description": "Breath Attack (2-hex range)"
          },
          "THREE_HEADED_ATTACK": {
            "graphics": {
              "icon": "zvs/Lib1.res/ThreeHeaded"
            },
            "name": "Three-headed attack",
            "description": "Attacks three adjacent units"
          },
          "TRANSMUTATION": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_SGTYPE"
            },
            "name": "Transmutation",
            "description": "{val}% chance to transform attacked unit to other type"
          },
          "UNDEAD": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_UNDEAD"
            },
            "name": "Undead",
            "description": "Creature is Undead"
          },
          "UNLIMITED_RETALIATIONS": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_RETAIL1"
            },
            "name": "Unlimited retaliations",
            "description": "Retaliates any number of attacks"
          },
          "VISIONS": {
            "hidden": true
          },
          "WATER_IMMUNITY": {
            "graphics": {
              "icon": "zvs/Lib1.res/E_SPWATER1"
            },
            "name": "Water immunity",
            "description": "Immune to all Water school spells"
          },
          "BLOCKS_RANGED_RETALIATION": {
            "name": "No ranged retaliation",
            "description": "Enemy cannot Retaliate by shooting"
          },
          "DESTRUCTION": {
            "name": "Destruction",
            "description": "Has {val}% chance to kill extra units after attack"
          },
          "FIRST_STRIKE": {
            "name": "First Strike",
            "description": "This creature attacks first instead of retaliating"
          },
          "RANGED_RETALIATION": {
            "name": "Ranged retaliation",
            "description": "Can perform ranged counterattack"
          },
          "SHOOTS_ALL_ADJACENT": {
            "name": "Shoot all around",
            "description": "This creature\'s ranged attacks strike all targets in a small area"
          },
          "SUMMON_GUARDIANS": {
            "name": "Summon guardians",
            "description": "At battle start summons {subtype.creature} ({val}%)"
          },
          "SYNERGY_TARGET": {
            "name": "Synergizable",
            "description": "This creature is vulnerable to synergy effect"
          },
          "WIDE_BREATH": {
            "name": "Wide breath",
            "description": "Wide breath attack (multiple hexes)"
          }
         }',
        "creatures" => '{
	"pikeman" :
	{
		"index": 0,
		"level": 1,
		"faction": "castle",
		"upgrades": ["halberdier"],
		"abilities":
		{
			"cavalryChargeImmunity" :
			{
				"type" : "CHARGE_IMMUNITY"
			}
		},
		"graphics" :
		{
			"animation": "CPKMAN.DEF"
		},
		"sound" :
		{
			"attack": "PIKEATTK.wav",
			"defend": "PIKEDFND.wav",
			"killed": "PIKEKILL.wav",
			"move": "PIKEMOVE.wav",
			"wince": "PIKEWNCE.wav"
		}
	},
	"halberdier" :
	{
		"index": 1,
		"level": 1,
		"faction": "castle",
		"abilities":
		{
			"cavalryChargeImmunity" :
			{
				"type" : "CHARGE_IMMUNITY"
			}
		},
		"graphics" :
		{
			"animation": "CHALBD.DEF"
		},
		"sound" :
		{
			"attack": "HALBATTK.wav",
			"defend": "HALBDFND.wav",
			"killed": "HALBKILL.wav",
			"move": "HALBMOVE.wav",
			"wince": "HALBWNCE.wav"
		}
	},
	"archer" :
	{
		"index": 2,
		"level": 2,
		"extraNames": [ "lightCrossbowman" ],
		"faction": "castle",
		"upgrades": ["marksman"],
		"graphics" :
		{
			"animation": "CLCBOW.DEF",
			"missile" :
			{
				"projectile": "PLCBOWX.DEF"
			}
		},
		"sound" :
		{
			"attack": "LCRSATTK.wav",
			"defend": "LCRSDFND.wav",
			"killed": "LCRSKILL.wav",
			"move": "LCRSMOVE.wav",
			"shoot": "LCRSSHOT.wav",
			"wince": "LCRSWNCE.wav"
		}
	},
	"marksman" :
	{
		"index": 3,
		"level": 2,
		"faction": "castle",
		"abilities": {
			"extraAttack" :
			{
				"type": "ADDITIONAL_ATTACK",
				"val" : 1,
				"effectRange": "ONLY_DISTANCE_FIGHT"
			}
		},
		"graphics" :
		{
			"animation": "CHCBOW.DEF",
			"missile" :
			{
				"projectile": "PLCBOWX.DEF"
			}
		},
		"sound" :
		{
			"attack": "HCRSATTK.wav",
			"defend": "HCRSDFND.wav",
			"killed": "HCRSKILL.wav",
			"move": "HCRSMOVE.wav",
			"shoot": "HCRSSHOT.wav",
			"wince": "HCRSWNCE.wav"
		}
	},
	"griffin" :
	{
		"index": 4,
		"level": 3,
		"faction": "castle",
		"abilities":
		{
			"extraRetaliation" :
			{
				"type" : "ADDITIONAL_RETALIATION",
				"val" : 1
			}
		},
		"upgrades": ["royalGriffin"],
		"hasDoubleWeek": true,
		"graphics" :
		{
			"animation": "CGRIFF.DEF"
		},
		"sound" :
		{
			"attack": "GRIFATTK.wav",
			"defend": "GRIFDFND.wav",
			"killed": "GRIFKILL.wav",
			"move": "GRIFMOVE.wav",
			"wince": "GRIFWNCE.wav"
		}
	},
	"royalGriffin" :
	{
		"index": 5,
		"level": 3,
		"faction": "castle",
		"abilities":
		{
			"unlimitedRetaliation" :
			{
				"type" : "UNLIMITED_RETALIATIONS"
			}
		},
		"graphics" :
		{
			"animation": "CRGRIF.DEF"
		},
		"sound" :
		{
			"attack": "RGRFATTK.wav",
			"defend": "RGRFDFND.wav",
			"killed": "RGRFKILL.wav",
			"move": "RGRFMOVE.wav",
			"wince": "RGRFWNCE.wav"
		}
	},
	"swordsman" :
	{
		"index": 6,
		"level": 4,
		"faction": "castle",
		"upgrades": ["crusader"],
		"graphics" :
		{
			"animation": "CSWORD.DEF"
		},
		"sound" :
		{
			"attack": "SWRDATTK.wav",
			"defend": "SWRDDFND.wav",
			"killed": "SWRDKILL.wav",
			"move": "SWRDMOVE.wav",
			"wince": "SWRDWNCE.wav"
		}
	},
	"crusader" :
	{
		"index": 7,
		"level": 4,
		"faction": "castle",
		"abilities":
		{
			"extraAttack" :
			{
				"type" : "ADDITIONAL_ATTACK",
				"val" : 1
			}
		},
		"graphics" :
		{
			"animation": "CCRUSD.DEF"
		},
		"sound" :
		{
			"attack": "CRUSATTK.wav",
			"defend": "CRUSDFND.wav",
			"killed": "CRUSKILL.wav",
			"move": "CRUSMOVE.wav",
			"wince": "CRUSWNCE.wav"
		}
	},
	"monk" :
	{
		"index": 8,
		"level": 5,
		"faction": "castle",
		"upgrades": ["zealot"],
		"graphics" :
		{
			"animation": "CMONKK.DEF",
			"missile" :
			{
				"projectile": "CPRZEAX.DEF"
			}
		},
		"sound" :
		{
			"attack": "MONKATTK.wav",
			"defend": "MONKDFND.wav",
			"killed": "MONKKILL.wav",
			"move": "MONKMOVE.wav",
			"shoot": "MONKSHOT.wav",
			"wince": "MONKWNCE.wav"
		}
	},
	"zealot" :
	{
		"index": 9,
		"level": 5,
		"faction": "castle",
		"graphics" :
		{
			"animation": "CZEALT.DEF",
			"missile" :
			{
				"projectile": "CPRZEAX.DEF"
			}
		},
		"sound" :
		{
			"attack": "ZELTATTK.wav",
			"defend": "ZELTDFND.wav",
			"killed": "ZELTKILL.wav",
			"move": "ZELTMOVE.wav",
			"shoot": "ZELTSHOT.wav",
			"wince": "ZELTWNCE.wav"
		}
	},
	"cavalier" :
	{
		"index": 10,
		"level": 6,
		"faction": "castle",
		"upgrades": ["champion"],
		"graphics" :
		{
			"animation": "CCAVLR.DEF"
		},
		"sound" :
		{
			"attack": "CAVAATTK.wav",
			"defend": "CAVADFND.wav",
			"killed": "CAVAKILL.wav",
			"move": "CAVAMOVE.wav",
			"wince": "CAVAWNCE.wav"
		}
	},
	"champion" :
	{
		"index": 11,
		"level": 6,
		"faction": "castle",
		"graphics" :
		{
			"animation": "CCHAMP.DEF"
		},
		"sound" :
		{
			"attack": "CHMPATTK.wav",
			"defend": "CHMPDFND.wav",
			"killed": "CHMPKILL.wav",
			"move": "CHMPMOVE.wav",
			"wince": "CHMPWNCE.wav"
		}
	},
	"angel" :
	{
		"index": 12,
		"level": 7,
		"faction": "castle",
		"abilities":
		{
			"hateDevils" :
			{
				"type" : "HATE",
				"subtype" : "creature.devil",
				"val" : 50
			},
			"hateArchDevils" :
			{
				"type" : "HATE",
				"subtype" : "creature.archDevil",
				"val" : 50
			},
			"const_raises_morale" :
			{
				"stacking" : "Angels"
			}
		},
		"upgrades": ["archangel"],
		"graphics" :
		{
			"animation": "CANGEL.DEF"
		},
		"sound" :
		{
			"attack": "ANGLATTK.wav",
			"defend": "ANGLDFND.wav",
			"killed": "ANGLKILL.wav",
			"move": "ANGLMOVE.wav",
			"wince": "ANGLWNCE.wav"
		}
	},
	"archangel" :
	{
		"index": 13,
		"level": 7,
		"faction": "castle",
		"abilities":
		{
			"resurrection100hp" :
			{
				"type" : "SPECIFIC_SPELL_POWER",
				"subtype" : "spell.resurrection",
				"val" : 100
			},
			"resurrects" :
			{
				"type" : "SPELLCASTER",
				"subtype" : "spell.resurrection",
				"val" : 3
			},
			"spellpoints" :
			{
				"type" : "CASTS",
				"val" : 1
			},
			"hateDevils" :
			{
				"type" : "HATE",
				"subtype" : "creature.devil",
				"val" : 50
			},
			"hateArchDevils" :
			{
				"type" : "HATE",
				"subtype" : "creature.archDevil",
				"val" : 50
			},
			"const_raises_morale" :
			{
				"stacking" : "Angels"
			}
		},
		"graphics" :
		{
			"animation": "CRANGL.DEF"
		},
		"sound" :
		{
			"attack": "AAGLATTK.wav",
			"defend": "AAGLDFND.wav",
			"killed": "AAGLKILL.wav",
			"move": "AAGLMOVE.wav",
			"wince": "AAGLWNCE.wav"
		}
	},
	"airElemental" :
	{
		"index": 112,
		"level": 2,
		"extraNames": [ "airElementals" ],
		"faction": "conflux",
		"abilities":
		{
			"nonLiving" :
			{
				"type" : "NON_LIVING"
			},
			"immuneToMind" :
			{
				"type" : "MIND_IMMUNITY"
			},
			"meteorShowerImmunity" :
			{
				"type" : "SPELL_IMMUNITY",
				"subtype" : "spell.meteorShower"
			},
			"lightingVulnerablity" :
			{
				"type" : "MORE_DAMAGE_FROM_SPELL",
				"subtype" : "spell.lightningBolt",
				"val" : 100
			},
			"chainLightingVulnerablity" :
			{
				"type" : "MORE_DAMAGE_FROM_SPELL",
				"subtype" : "spell.chainLightning",
				"val" : 100
			}
		},
		"upgrades": ["stormElemental"],
		"graphics" :
		{
			"animationTime" :
			{
				"idle" : 0
			},
			"animation": "CAELEM.DEF"
		},
		"sound" :
		{
			"attack": "AELMATTK.wav",
			"defend": "AELMDFND.wav",
			"killed": "AELMKILL.wav",
			"move": "AELMMOVE.wav",
			"wince": "AELMWNCE.wav"
		}
	},
	"earthElemental" :
	{
		"index": 113,
		"level": 5,
		"faction": "conflux",
		"abilities":
		{
			"nonLiving" :
			{
				"type" : "NON_LIVING"
			},
			"immuneToMind" :
			{
				"type" : "MIND_IMMUNITY"
			},
			"meteorShowerVulnerability" :
			{
				"type" : "MORE_DAMAGE_FROM_SPELL",
				"subtype" : "spell.meteorShower",
				"val" : 100
			},
			"lightingImmunity" :
			{
				"type" : "SPELL_IMMUNITY",
				"subtype" : "spell.lightningBolt"
			},
			"chainLightingImmunity" :
			{
				"type" : "SPELL_IMMUNITY",
				"subtype" : "spell.chainLightning"
			},
			"armageddonImmunity" :
			{
				"type" : "SPELL_IMMUNITY",
				"subtype" : "spell.armageddon"
			}
		},
		"upgrades": ["magmaElemental"],
		"graphics" :
		{
			"animationTime" :
			{
				"idle" : 0
			},
			"animation": "CEELEM.DEF"
		},
		"sound" :
		{
			"attack": "EELMATTK.wav",
			"defend": "EELMDFND.wav",
			"killed": "EELMKILL.wav",
			"move": "EELMMOVE.wav",
			"wince": "EELMWNCE.wav"
		}
	},
	"fireElemental" :
	{
		"index": 114,
		"level": 4,
		"faction": "conflux",
		"abilities":
		{
			"nonLiving" :
			{
				"type" : "NON_LIVING"
			},
			"immuneToMind" :
			{
				"type" : "MIND_IMMUNITY"
			},
			"immuneToFire" :
			{
				"type" : "FIRE_IMMUNITY",
				"subtype" : 0
			},
			"frostRingVulnerablity" :
			{
				"type" : "MORE_DAMAGE_FROM_SPELL",
				"subtype" : "spell.frostRing",
				"val" : 100
			},
			"iceBoltVulnerablity" :
			{
				"type" : "MORE_DAMAGE_FROM_SPELL",
				"subtype" : "spell.iceBolt",
				"val" : 100
			}
		},
		"upgrades": ["energyElemental"],
		"graphics" :
		{
			"animationTime" :
			{
				"idle" : 0
			},
			"animation": "CFELEM.DEF"
		},
		"sound" :
		{
			"attack": "FELMATTK.wav",
			"defend": "FELMDFND.wav",
			"killed": "FELMKILL.wav",
			"move": "FELMMOVE.wav",
			"wince": "FELMWNCE.wav"
		}
	},
	"waterElemental" :
	{
		"index": 115,
		"level": 3,
		"extraNames": [ "waterElementals" ],
		"faction": "conflux",
		"abilities":
		{
			"nonLiving" :
			{
				"type" : "NON_LIVING"
			},
			"immuneToMind" :
			{
				"type" : "MIND_IMMUNITY"
			},
			"fireShieldVulnerablity" :
			{
				"type" : "MORE_DAMAGE_FROM_SPELL",
				"subtype" : "spell.fireShield",
				"val" : 100
			},
			"infernoVulnerablity" :
			{
				"type" : "MORE_DAMAGE_FROM_SPELL",
				"subtype" : "spell.inferno",
				"val" : 100
			},
			"fireballVulnerablity" :
			{
				"type" : "MORE_DAMAGE_FROM_SPELL",
				"subtype" : "spell.fireball",
				"val" : 100
			},
			"fireWallVulnerablity" :
			{
				"type" : "MORE_DAMAGE_FROM_SPELL",
				"subtype" : "spell.fireWall",
				"val" : 100
			},
			"armageddonVulnerablity" :
			{
				"type" : "MORE_DAMAGE_FROM_SPELL",
				"subtype" : "spell.armageddon",
				"val" : 100
			},
			"immuneToWater" :
			{
				"type" : "WATER_IMMUNITY",
				"subtype" : 2
			}
		},
		"doubleWide" : true,
		"upgrades": ["iceElemental"],
		"graphics" :
		{
			"animationTime" :
			{
				"idle" : 0
			},
			"animation": "CWELEM.DEF"
		},
		"sound" :
		{
			"attack": "WELMATTK.wav",
			"defend": "WELMDFND.wav",
			"killed": "WELMKILL.wav",
			"move": "WELMMOVE.wav",
			"wince": "WELMWNCE.wav"
		}
	},
	"pixie" :
	{
		"index": 118,
		"level": 1,
		"extraNames": [ "pixies" ],
		"faction": "conflux",
		"upgrades": ["sprite"],
		"graphics" :
		{
			"animation": "CPIXIE.DEF"
		},
		"sound" :
		{
			"attack": "PIXIATTK.wav",
			"defend": "PIXIDFND.wav",
			"killed": "PIXIKILL.wav",
			"move": "PIXIMOVE.wav",
			"wince": "PIXIWNCE.wav"
		}
	},
	"sprite" :
	{
		"index": 119,
		"level": 1,
		"faction": "conflux",
		"graphics" :
		{
			"animation": "CSPRITE.DEF"
		},
		"sound" :
		{
			"attack": "SPRTATTK.wav",
			"defend": "SPRTDFND.wav",
			"killed": "SPRTKILL.wav",
			"move": "SPRTMOVE.wav",
			"wince": "SPRTWNCE.wav"
		}
	},
	"psychicElemental" :
	{
		"index": 120,
		"level": 6,
		"faction": "conflux",
		"abilities":
		{
			"nonLiving" :
			{
				"type" : "NON_LIVING"
			}
		},
		"doubleWide" : false,
		"upgrades": ["magicElemental"],
		"graphics" :
		{
			"animation": "CPSYEL.DEF"
		},
		"sound" :
		{
			"attack": "PSYCATTK.wav",
			"defend": "PSYCDFND.wav",
			"killed": "PSYCKILL.wav",
			"move": "PSYCMOVE.wav",
			"wince": "PSYCWNCE.wav"
		}
	},
	"magicElemental" :
	{
		"index": 121,
		"level": 6,
		"faction": "conflux",
		"abilities":
		{
			"nonLiving" :
			{
				"type" : "NON_LIVING"
			},
			"magicImmunity" :
			{
				"type" : "LEVEL_SPELL_IMMUNITY",
				"val" : 5
			}
		},
		"doubleWide" : false,
		"graphics" :
		{
			"animation": "CMAGEL.DEF"
		},
		"sound" :
		{
			"attack": "MGELATTK.wav",
			"defend": "MGELDFND.wav",
			"killed": "MGELKILL.wav",
			"move": "MGELMOVE.wav",
			"wince": "MGELWNCE.wav"
		}
	},
	"iceElemental" :
	{
		"index": 123,
		"level": 3,
		"faction": "conflux",
		"abilities":
		{
			"nonLiving" :
			{
				"type" : "NON_LIVING"
			},
			"spellPower" :
			{
				"type" : "CREATURE_ENCHANT_POWER",
				"val" : 6
			},
			"spellPoints" :
			{
				"type" : "CASTS",
				"val" : 3
			},
			"spellcaster":
			{
				"type" : "SPELLCASTER",
				"subtype" : "spell.protectWater",
				"val" : 2
			},
			"immuneToMind" :
			{
				"type" : "MIND_IMMUNITY"
			},
			"fireShieldVulnerablity" :
			{
				"type" : "MORE_DAMAGE_FROM_SPELL",
				"subtype" : "spell.fireShield",
				"val" : 100
			},
			"infernoVulnerablity" :
			{
				"type" : "MORE_DAMAGE_FROM_SPELL",
				"subtype" : "spell.inferno",
				"val" : 100
			},
			"fireballVulnerablity" :
			{
				"type" : "MORE_DAMAGE_FROM_SPELL",
				"subtype" : "spell.fireball",
				"val" : 100
			},
			"fireWallVulnerablity" :
			{
				"type" : "MORE_DAMAGE_FROM_SPELL",
				"subtype" : "spell.fireWall",
				"val" : 100
			},
			"armageddonVulnerablity" :
			{
				"type" : "MORE_DAMAGE_FROM_SPELL",
				"subtype" : "spell.armageddon",
				"val" : 100
			},
			"immuneToWater" :
			{
				"type" : "WATER_IMMUNITY",
				"subtype" : 2
			}
		},
		"doubleWide" : true,
		"graphics" :
		{
			"animation": "CICEE.DEF",
			"animationTime" :
			{
				"idle" : 0
			},
			"missile" :
			{
				"projectile": "PICEE.DEF"
			}
		},
		"sound" :
		{
			"attack": "ICELATTK.wav",
			"defend": "ICELDFND.wav",
			"killed": "ICELKILL.wav",
			"move": "ICELMOVE.wav",
			"shoot": "ICELSHOT.wav",
			"wince": "ICELWNCE.wav"
		}
	},
	"magmaElemental" :
	{
		"index": 125,
		"level": 5,
		"faction": "conflux",
		"abilities":
		{
			"nonLiving" :
			{
				"type" : "NON_LIVING"
			},
			"spellPower" :
			{
				"type" : "CREATURE_ENCHANT_POWER",
				"val" : 6
			},
			"spellPoints" :
			{
				"type" : "CASTS",
				"val" : 3
			},
			"spellcaster":
			{
				"type" : "SPELLCASTER",
				"subtype" : "spell.protectEarth",
				"val" : 2
			},
			"meteorShowerVulnerability" :
			{
				"type" : "MORE_DAMAGE_FROM_SPELL",
				"subtype" : "spell.meteorShower",
				"val" : 100
			},
			"lightingImmunity" :
			{
				"type" : "SPELL_IMMUNITY",
				"subtype" : "spell.lightningBolt"
			},
			"chainLightingImmunity" :
			{
				"type" : "SPELL_IMMUNITY",
				"subtype" : "spell.chainLightning"
			},
			"armageddonImmunity" :
			{
				"type" : "SPELL_IMMUNITY",
				"subtype" : "spell.armageddon"
			}
		},
		"graphics" :
		{
			"animationTime" :
			{
				"idle" : 0
			},
			"animation": "CSTONE.DEF"
		},
		"sound" :
		{
			"attack": "MAGMATTK.wav",
			"defend": "MAGMDFND.wav",
			"killed": "MAGMKILL.wav",
			"move": "MAGMMOVE.wav",
			"wince": "MAGMWNCE.wav"
		}
	},
	"stormElemental" :
	{
		"index": 127,
		"level": 2,
		"faction": "conflux",
		"abilities":
		{
			"nonLiving" :
			{
				"type" : "NON_LIVING"
			},
			"spellPower" :
			{
				"type" : "CREATURE_ENCHANT_POWER",
				"val" : 6
			},
			"spellPoints" :
			{
				"type" : "CASTS",
				"val" : 3
			},
			"spellcaster":
			{
				"type" : "SPELLCASTER",
				"subtype" : "spell.protectAir",
				"val" : 2
			},
			"meteorShowerImmunity" :
			{
				"type" : "SPELL_IMMUNITY",
				"subtype" : "spell.meteorShower"
			},
			"lightingVulnerablity" :
			{
				"type" : "MORE_DAMAGE_FROM_SPELL",
				"subtype" : "spell.lightningBolt",
				"val" : 100
			},
			"chainLightingVulnerablity" :
			{
				"type" : "MORE_DAMAGE_FROM_SPELL",
				"subtype" : "spell.chainLightning",
				"val" : 100
			}
		},
		"graphics" :
		{
			"animation": "CSTORM.DEF",
			"animationTime" :
			{
				"idle" : 0
			},
			"missile" :
			{
				"projectile": "CPRGTIX.DEF"
			}
		},
		"sound" :
		{
			"attack": "STORATTK.wav",
			"defend": "STORDFND.wav",
			"killed": "STORKILL.wav",
			"move": "STORMOVE.wav",
			"shoot": "STORSHOT.wav",
			"wince": "STORWNCE.wav"
		}
	},
	"energyElemental" :
	{
		"index": 129,
		"level": 4,
		"faction": "conflux",
		"abilities":
		{
			"nonLiving" :
			{
				"type" : "NON_LIVING"
			},
			"immuneToMind" :
			{
				"type" : "MIND_IMMUNITY"
			},
			"immuneToFire" :
			{
				"type" : "FIRE_IMMUNITY",
				"subtype" : 0
			},
			"frostRingVulnerablity" :
			{
				"type" : "MORE_DAMAGE_FROM_SPELL",
				"subtype" : "spell.frostRing",
				"val" : 100
			},
			"iceBoltVulnerablity" :
			{
				"type" : "MORE_DAMAGE_FROM_SPELL",
				"subtype" : "spell.iceBolt",
				"val" : 100
			},
			"spellPower" :
			{
				"type" : "CREATURE_ENCHANT_POWER",
				"val" : 6
			},
			"spellPoints" :
			{
				"type" : "CASTS",
				"val" : 3
			},
			"spellcaster":
			{
				"type" : "SPELLCASTER",
				"subtype" : "spell.protectFire",
				"val" : 2
			}
		},
		"graphics" :
		{
			"animationTime" :
			{
				"idle" : 0
			},
			"animation": "CNRG.DEF"
		},
		"sound" :
		{
			"attack": "ENERATTK.wav",
			"defend": "ENERDFND.wav",
			"killed": "ENERKILL.wav",
			"move": "ENERMOVE.wav",
			"wince": "ENERWNCE.wav"
		}
	},
	"firebird" :
	{
		"index": 130,
		"level": 7,
		"faction": "conflux",
		"upgrades": ["phoenix"],
		"abilities":
		{
			"immuneToFire" :
			{
				"type" : "FIRE_IMMUNITY",
				"subtype" : 0
			}
		},
		"graphics" :
		{
			"animation": "CFBIRD.DEF"
		},
		"sound" :
		{
			"attack": "FIRBATTK.wav",
			"defend": "FIRBDFND.wav",
			"killed": "FIRBKILL.wav",
			"move": "FIRBMOVE.wav",
			"wince": "FIRBWNCE.wav"
		}
	},
	"phoenix" :
	{
		"index": 131,
		"level": 7,
		"faction": "conflux",
		"abilities":
		{
			"rebirthOnce" :
			{
				"type" : "CASTS",
				"val" : 1
			},
			"immuneToFire" :
			{
				"type" : "FIRE_IMMUNITY",
				"subtype" : 0
			},
			"rebirth" :
			{
				"type" : "REBIRTH",
				"val" : 20
			}
		},
		"graphics" :
		{
			"animation": "CPHX.DEF"
		},
		"sound" :
		{
			"attack": "PHOEATTK.wav",
			"defend": "PHOEDFND.wav",
			"killed": "PHOEKILL.wav",
			"move": "PHOEMOVE.wav",
			"wince": "PHOEWNCE.wav"
		}
	},
	"troglodyte" :
	{
		"index": 70,
		"level": 1,
		"faction": "dungeon",
		"abilities":
		{
			"blindImmunity" :
			{
				"type" : "SPELL_IMMUNITY",
				"subtype" : "spell.blind",
				"addInfo" : 1
			},
			"petrifyImmunity" :
			{
				"type" : "SPELL_IMMUNITY",
				"subtype" : "spell.stoneGaze",
				"addInfo" : 1
			}
		},
		"upgrades": ["infernalTroglodyte"],
		"hasDoubleWeek": true,
		"graphics" :
		{
			"animation": "CTROGL.DEF"
		},
		"sound" :
		{
			"attack": "TROGATTK.wav",
			"defend": "TROGDFND.wav",
			"killed": "TROGKILL.wav",
			"move": "TROGMOVE.wav",
			"wince": "TROGWNCE.wav"
		}
	},
	"infernalTroglodyte" :
	{
		"index": 71,
		"level": 1,
		"faction": "dungeon",
		"abilities":
		{
			"blindImmunity" :
			{
				"type" : "SPELL_IMMUNITY",
				"subtype" : "spell.blind",
				"addInfo" : 1
			},
			"petrifyImmunity" :
			{
				"type" : "SPELL_IMMUNITY",
				"subtype" : "spell.stoneGaze",
				"addInfo" : 1
			}
		},
		"graphics" :
		{
			"animation": "CITROG.DEF"
		},
		"sound" :
		{
			"attack": "ITRGATTK.wav",
			"defend": "ITRGDFND.wav",
			"killed": "ITRGKILL.wav",
			"move": "ITRGMOVE.wav",
			"wince": "ITRGWNCE.wav"
		}
	},
	"harpy" :
	{
		"index": 72,
		"level": 2,
		"faction": "dungeon",
		"abilities":
		{
			"strikeAndReturn" :
			{
				"type" : "RETURN_AFTER_STRIKE"
			}
		},
		"upgrades": ["harpyHag"],
		"hasDoubleWeek": true,
		"graphics" :
		{
			"animation": "CHARPY.DEF"
		},
		"sound" :
		{
			"attack": "HARPATTK.wav",
			"defend": "HARPDFND.wav",
			"killed": "HARPKILL.wav",
			"move": "HARPMOVE.wav",
			"wince": "HARPWNCE.wav"
		}
	},
	"harpyHag" :
	{
		"index": 73,
		"level": 2,
		"faction": "dungeon",
		"abilities":
		{
			"strikeAndReturn" :
			{
				"type" : "RETURN_AFTER_STRIKE"
			},
			"noRetaliation" :
			{
				"type" : "BLOCKS_RETALIATION"
			}
		},
		"graphics" :
		{
			"animation": "CHARPH.DEF"
		},
		"sound" :
		{
			"attack": "HHAGATTK.wav",
			"defend": "HHAGDFND.wav",
			"killed": "HHAGKILL.wav",
			"move": "HHAGMOVE.wav",
			"shoot": "HHAGSHOT.wav",
			"wince": "HHAGWNCE.wav"
		}
	},
	"beholder" :
	{
		"index": 74,
		"level": 3,
		"faction": "dungeon",
		"upgrades": ["evilEye"],
		"graphics" :
		{
			"animation": "CBEHOL.DEF",
			"missile" :
			{
				"projectile": "SMBALX.DEF"
			}
		},
		"sound" :
		{
			"attack": "BHDRATTK.wav",
			"defend": "BHDRDFND.wav",
			"killed": "BHDRKILL.wav",
			"move": "BHDRMOVE.wav",
			"shoot": "BHDRSHOT.wav",
			"wince": "BHDRWNCE.wav"
		}
	},
	"evilEye" :
	{
		"index": 75,
		"level": 3,
		"faction": "dungeon",
		"graphics" :
		{
			"animation": "CEVEYE.DEF",
			"missile" :
			{
				"projectile": "SMBALX.DEF"
			}
		},
		"sound" :
		{
			"attack": "EVLIATTK.wav",
			"defend": "EVLIDFND.wav",
			"killed": "EVLIKILL.wav",
			"move": "EVLIMOVE.wav",
			"shoot": "EVLISHOT.wav",
			"wince": "EVLIWNCE.wav"
		}
	},
	"medusa" :
	{
		"index": 76,
		"level": 4,
		"faction": "dungeon",
		"abilities":
		{
			"petrification" :
			{
				"type" : "SPELL_AFTER_ATTACK",
				"subtype" : "spell.stoneGaze",
				"val" : 20,
				"addInfo" : [0,2]
			}
		},
		"upgrades": ["medusaQueen"],
		"graphics" :
		{
			"animation": "CMEDUS.DEF",
			"missile" :
			{
				"projectile": "PMEDUSX.DEF"
			}
		},
		"sound" :
		{
			"attack": "MEDUATTK.wav",
			"defend": "MEDUDFND.wav",
			"killed": "MEDUKILL.wav",
			"move": "MEDUMOVE.wav",
			"shoot": "MEDUSHOT.wav",
			"wince": "MEDUWNCE.wav"
		}
	},
	"medusaQueen" :
	{
		"index": 77,
		"level": 4,
		"faction": "dungeon",
		"abilities":
		{
			"petrification" :
			{
				"type" : "SPELL_AFTER_ATTACK",
				"subtype" : "spell.stoneGaze",
				"val" : 20,
				"addInfo" : [0,2]
			}
		},
		"graphics" :
		{
			"animation": "CMEDUQ.DEF",
			"missile" :
			{
				"projectile": "PMEDUSX.DEF"
			}
		},
		"sound" :
		{
			"attack": "MEDQATTK.wav",
			"defend": "MEDQDFND.wav",
			"killed": "MEDQKILL.wav",
			"move": "MEDQMOVE.wav",
			"shoot": "MEDQSHOT.wav",
			"wince": "MEDQWNCE.wav"
		}
	},
	"minotaur" :
	{
		"index": 78,
		"level": 5,
		"faction": "dungeon",
		"abilities":
		{
			"fearless" :
			{
				"type" : "SELF_MORALE"
			}
		 },
		"upgrades": ["minotaurKing"],
		"graphics" :
		{
			"animation": "CMINOT.DEF"
		},
		"sound" :
		{
			"attack": "MINOATTK.wav",
			"defend": "MINODFND.wav",
			"killed": "MINOKILL.wav",
			"move": "MINOMOVE.wav",
			"wince": "MINOWNCE.wav"
		}
	},
	"minotaurKing" :
	{
		"index": 79,
		"level": 5,
		"faction": "dungeon",
		"abilities":
		{
			"fearless" :
			{
				"type" : "SELF_MORALE"
			}
		 },
		"graphics" :
		{
			"animation": "CMINOK.DEF"
		},
		"sound" :
		{
			"attack": "MINKATTK.wav",
			"defend": "MINKDFND.wav",
			"killed": "MINKKILL.wav",
			"move": "MINKMOVE.wav",
			"shoot": "MINKSHOT.wav",
			"wince": "MINKWNCE.wav"
		}
	},
	"manticore" :
	{
		"index": 80,
		"level": 6,
		"faction": "dungeon",
		"upgrades": ["scorpicore"],
		"graphics" :
		{
			"animation": "CMCORE.DEF"
		},
		"sound" :
		{
			"attack": "MANTATTK.wav",
			"defend": "MANTDFND.wav",
			"killed": "MANTKILL.wav",
			"move": "MANTMOVE.wav",
			"shoot": "MANTSHOT.wav",
			"wince": "MANTWNCE.wav"
		}
	},
	"scorpicore" :
	{
		"index": 81,
		"level": 6,
		"faction": "dungeon",
		"abilities":
		{
			"paralize" :
			{
				"type" : "SPELL_AFTER_ATTACK",
				"subtype" : "spell.paralyze",
				"val" : 20
			}
		},
		"graphics" :
		{
			"animation": "CCMCOR.DEF"
		},
		"sound" :
		{
			"attack": "SCRPATTK.wav",
			"defend": "SCRPDFND.wav",
			"killed": "SCRPKILL.wav",
			"move": "SCRPMOVE.wav",
			"shoot": "SCRPSHOT.wav",
			"wince": "SCRPWNCE.wav"
		}
	},
	"redDragon" :
	{
		"index": 82,
		"level": 7,
		"faction": "dungeon",
		"abilities":
		{
			"dragon" :
			{
				"type" : "DRAGON_NATURE"
			},
			"fireBreath" :
			{
				"type" : "TWO_HEX_ATTACK_BREATH"
			},
			"spellImmunity" :
			{
				"type" : "LEVEL_SPELL_IMMUNITY",
				"val" : 3
			}
		},
		"upgrades": ["blackDragon"],
		"graphics" :
		{
			"animation": "CRDRGN.DEF"
		},
		"sound" :
		{
			"attack": "RDDRATTK.wav",
			"defend": "RDDRDFND.wav",
			"killed": "RDDRKILL.wav",
			"move": "RDDRMOVE.wav",
			"wince": "RDDRWNCE.wav"
		}
	},
	"blackDragon" :
	{
		"index": 83,
		"level": 7,
		"faction": "dungeon",
		"abilities":
		{
			"dragon" :
			{
				"type" : "DRAGON_NATURE"
			},
			"fireBreath" :
			{
				"type" : "TWO_HEX_ATTACK_BREATH"
			},
			"spellImmunity" :
			{
				"type" : "LEVEL_SPELL_IMMUNITY",
				"val" : 5
			},
			"hateGiants" :
			{
				"type" : "HATE",
				"subtype" : "creature.giant",
				"val" : 50
			},
			"hateTitans" :
			{
				"type" : "HATE",
				"subtype" : "creature.titan",
				"val" : 50
			}
		},
		"graphics" :
		{
			"animation": "CBDRGN.DEF"
		},
		"sound" :
		{
			"attack": "BKDRATTK.wav",
			"defend": "BKDRDFND.wav",
			"killed": "BKDRKILL.wav",
			"move": "BKDRMOVE.wav",
			"wince": "BKDRWNCE.wav"
		}
	},
	"gnoll" :
	{
		"index": 98,
		"level": 1,
		"faction": "fortress",
		"upgrades": ["gnollMarauder"],
		"graphics" :
		{
			"animation": "CGNOLL.DEF"
		},
		"sound" :
		{
			"attack": "GNOLATTK.wav",
			"defend": "GNOLDFND.wav",
			"killed": "GNOLKILL.wav",
			"move": "GNOLMOVE.wav",
			"wince": "GNOLWNCE.wav"
		}
	},
	"gnollMarauder" :
	{
		"index": 99,
		"level": 1,
		"faction": "fortress",
		"graphics" :
		{
			"animation": "CGNOLM.DEF"
		},
		"sound" :
		{
			"attack": "GNLMATTK.wav",
			"defend": "GNLMDFND.wav",
			"killed": "GNLMKILL.wav",
			"move": "GNLMMOVE.wav",
			"wince": "GNLMWNCE.wav"
		}
	},
	"lizardman" :
	{
		"index": 100,
		"level": 2,
		"extraNames": [ "primitiveLizardman" ],
		"faction": "fortress",
		"upgrades": ["lizardWarrior"],
		"hasDoubleWeek": true,
		"graphics" :
		{
			"animation": "CPLIZA.DEF",
			"missile" :
			{
				"projectile": "PPLIZAX.DEF"
			}
		},
		"sound" :
		{
			"attack": "PLIZATTK.wav",
			"defend": "PLIZDFND.wav",
			"killed": "PLIZKILL.wav",
			"move": "PLIZMOVE.wav",
			"shoot": "PLIZSHOT.wav",
			"wince": "PLIZWNCE.wav"
		}
	},
	"lizardWarrior" :
	{
		"index": 101,
		"level": 2,
		"faction": "fortress",
		"graphics" :
		{
			"animation": "CALIZA.DEF",
			"missile" :
			{
				"projectile": "PPLIZAX.DEF"
			}
		},
		"sound" :
		{
			"attack": "ALIZATTK.wav",
			"defend": "ALIZDFND.wav",
			"killed": "ALIZKILL.wav",
			"move": "ALIZMOVE.wav",
			"shoot": "ALIZSHOT.wav",
			"wince": "ALIZWNCE.wav"
		}
	},
	"gorgon" :
	{
		"index": 102,
		"level": 5,
		"faction": "fortress",
		"upgrades": ["mightyGorgon"],
		"graphics" :
		{
			"animation": "CCGORG.DEF"
		},
		"sound" :
		{
			"attack": "CGORATTK.wav",
			"defend": "CGORDFND.wav",
			"killed": "CGORKILL.wav",
			"move": "CGORMOVE.wav",
			"wince": "CGORWNCE.wav"
		}
	},
	"mightyGorgon" :
	{
		"index": 103,
		"level": 5,
		"faction": "fortress",
		"abilities":
		{
			"deathStare" :
			{
				"type" : "DEATH_STARE",
				"subtype" : 0,
				"val" : 10
			}
		},
		"graphics" :
		{
			"animation": "CBGOG.DEF"
		},
		"sound" :
		{
			"attack": "BGORATTK.wav",
			"defend": "BGORDFND.wav",
			"killed": "BGORKILL.wav",
			"move": "BGORMOVE.wav",
			"wince": "BGORWNCE.wav"
		}
	},
	"serpentFly" :
	{
		"index": 104,
		"level": 3,
		"extraNames": [ "dragonFly" ],
		"faction": "fortress",
		"abilities":
		{
			"dispellHelpful" :
			{
				"type" : "SPELL_AFTER_ATTACK",
				"subtype" : "spell.dispelHelpful",
				"val" : 100
			}
		},
		"upgrades": ["fireDragonFly"],
		"hasDoubleWeek": true,
		"graphics" :
		{
			"animation": "CDRFLY.DEF"
		},
		"sound" :
		{
			"attack": "DFLYATTK.wav",
			"defend": "DFLYDFND.wav",
			"killed": "DFLYKILL.wav",
			"move": "DFLYMOVE.wav",
			"wince": "DFLYWNCE.wav"
		}
	},
	"fireDragonFly" :
	{
		"index": 105,
		"level": 3,
		"faction": "fortress",
		"abilities":
		{
			"dispellHelpful" :
			{
				"type" : "SPELL_AFTER_ATTACK",
				"subtype" : "spell.dispelHelpful",
				"val" : 100
			},
			"castWeakness" :
			{
				"type" : "SPELL_AFTER_ATTACK",
				"subtype" : "spell.weakness",
				"val" : 100
			}
		},
		"graphics" :
		{
			"animation": "CDRFIR.DEF"
		},
		"sound" :
		{
			"attack": "FDFLATTK.wav",
			"defend": "FDFLDFND.wav",
			"killed": "FDFLKILL.wav",
			"move": "FDFLMOVE.wav",
			"shoot": "FDFLSHOT.wav",
			"wince": "FDFLWNCE.wav"
		}
	},
	"basilisk" :
	{
		"index": 106,
		"level": 4,
		"faction": "fortress",
		"abilities":
		{
			"petrify" :
			{
				"type" : "SPELL_AFTER_ATTACK",
				"subtype" : "spell.stoneGaze",
				"val" : 20
			}
		},
		"upgrades": ["greaterBasilisk"],
		"graphics" :
		{
			"animation": "CBASIL.DEF"
		},
		"sound" :
		{
			"attack": "BASLATTK.wav",
			"defend": "BASLDFND.wav",
			"killed": "BASLKILL.wav",
			"move": "BASLMOVE.wav",
			"wince": "BASLWNCE.wav"
		}
	},
	"greaterBasilisk" :
	{
		"index": 107,
		"level": 4,
		"faction": "fortress",
		"abilities":
		{
			"petrify" :
			{
				"type" : "SPELL_AFTER_ATTACK",
				"subtype" : "spell.stoneGaze",
				"val" : 20
			}
		},
		"graphics" :
		{
			"animation": "CGBASI.DEF"
		},
		"sound" :
		{
			"attack": "GBASATTK.wav",
			"defend": "GBASDFND.wav",
			"killed": "GBASKILL.wav",
			"move": "GBASMOVE.wav",
			"wince": "GBASWNCE.wav"
		}
	},
	"wyvern" :
	{
		"index": 108,
		"level": 6,
		"faction": "fortress",
		"upgrades": ["wyvernMonarch"],
		"graphics" :
		{
			"animation": "CWYVER.DEF"
		},
		"sound" :
		{
			"attack": "WYVNATTK.wav",
			"defend": "WYVNDFND.wav",
			"killed": "WYVNKILL.wav",
			"move": "WYVNMOVE.wav",
			"wince": "WYVNWNCE.wav"
		}
	},
	"wyvernMonarch" :
	{
		"index": 109,
		"level": 6,
		"faction": "fortress",
		"abilities":
		{
			"petrify" :
			{
				"type" : "SPELL_AFTER_ATTACK",
				"subtype" : "spell.poison",
				"val" : 50
			}
		},
		"graphics" :
		{
			"animation": "CWYVMN.DEF"
		},
		"sound" :
		{
			"attack": "WYVMATTK.wav",
			"defend": "WYVMDFND.wav",
			"killed": "WYVMKILL.wav",
			"move": "WYVMMOVE.wav",
			"wince": "WYVMWNCE.wav"
		}
	},
	"hydra" :
	{
		"index": 110,
		"level": 7,
		"faction": "fortress",
		"abilities":
		{
			"noRetaliate" :
			{
				"type" : "BLOCKS_RETALIATION"
			},
			"attackAll" :
			{
				"type" : "ATTACKS_ALL_ADJACENT"
			}
		},
		"upgrades": ["chaosHydra"],
		"graphics" :
		{
			"animation": "CHYDRA.DEF"
		},
		"sound" :
		{
			"attack": "HYDRATTK.wav",
			"defend": "HYDRDFND.wav",
			"killed": "HYDRKILL.wav",
			"move": "HYDRMOVE.wav",
			"wince": "HYDRWNCE.wav"
		}
	},
	"chaosHydra" :
	{
		"index": 111,
		"level": 7,
		"faction": "fortress",
		"abilities":
		{
			"noRetaliate" :
			{
				"type" : "BLOCKS_RETALIATION"
			},
			"attackAll" :
			{
				"type" : "ATTACKS_ALL_ADJACENT"
			}
		},
		"graphics" :
		{
			"animation": "CCHYDR.DEF"
		},
		"sound" :
		{
			"attack": "CHYDATTK.wav",
			"defend": "CHYDDFND.wav",
			"killed": "CHYDKILL.wav",
			"move": "CHYDMOVE.wav",
			"wince": "CHYDWNCE.wav"
		}
	},
	"imp" :
	{
		"index": 42,
		"level": 1,
		"faction": "inferno",
		"upgrades": ["familiar"],
		"graphics" :
		{
			"animation": "CIMP.DEF"
		},
		"sound" :
		{
			"attack": "IMPPATTK.wav",
			"defend": "IMPPDFND.wav",
			"killed": "IMPPKILL.wav",
			"move": "IMPPMOVE.wav",
			"wince": "IMPPWNCE.wav"
		}
	},
	"familiar" :
	{
		"index": 43,
		"level": 1,
		"faction": "inferno",
		"abilities":
		{
			"manaChannel" :
			{
				"type" : "MANA_CHANNELING",
				"val" : 20
			}
		},
		"graphics" :
		{
			"animation": "CFAMIL.DEF"
		},
		"sound" :
		{
			"attack": "FMLRATTK.wav",
			"defend": "FMLRDFND.wav",
			"killed": "FMLRKILL.wav",
			"move": "FMLRMOVE.wav",
			"wince": "FMLRWNCE.wav"
		}
	},
	"gog" :
	{
		"index": 44,
		"level": 2,
		"faction": "inferno",
		"upgrades": ["magog"],
		"hasDoubleWeek": true,
		"graphics" :
		{
			"animation": "CGOG.DEF",
			"missile" :
			{
				"projectile": "CPRGOGX.DEF"
			}
		},
		"sound" :
		{
			"attack": "GOGGATTK.wav",
			"defend": "GOGGDFND.wav",
			"killed": "GOGGKILL.wav",
			"move": "GOGGMOVE.wav",
			"shoot": "GOGGSHOT.wav",
			"wince": "GOGGWNCE.wav"
		}
	},
	"magog" :
	{
		"index": 45,
		"level": 2,
		"faction": "inferno",
		"abilities":
		{
			"fireball" :
			{
				"type" : "SPELL_LIKE_ATTACK",
				"subtype" : "spell.fireball"
			}
		},
		"graphics" :
		{
			"animation": "CMAGOG.DEF",
			"missile" :
			{
				"projectile": "CPRGOGX.DEF"
			}
		},
		"sound" :
		{
			"attack": "MGOGATTK.wav",
			"defend": "MGOGDFND.wav",
			"killed": "MGOGKILL.wav",
			"move": "MGOGMOVE.wav",
			"shoot": "SPONTCOMB.wav",
			"wince": "MGOGWNCE.wav"
		}
	},
	"hellHound" :
	{
		"index": 46,
		"level": 3,
		"faction": "inferno",
		"upgrades": ["cerberus"],
		"abilities":
		{
			 "FLYING_ARMY" : null
		},
		"graphics" :
		{
			"animation": "CHHOUN.DEF"
		},
		"sound" :
		{
			"attack": "HHNDATTK.wav",
			"defend": "HHNDDFND.wav",
			"killed": "HHNDKILL.wav",
			"move": "HHNDMOVE.wav",
			"wince": "HHNDWNCE.wav"
		}
	},
	"cerberus" :
	{
		"index": 47,
		"level": 3,
		"faction": "inferno",
		"abilities":
		{
			"threeHeads" :
			{
				"type" : "THREE_HEADED_ATTACK"
			},
			"noRetaliation" :
			{
				"type" : "BLOCKS_RETALIATION"
			},
			"FLYING_ARMY" : null
		},
		"graphics" :
		{
			"animation": "CCERBU.DEF"
		},
		"sound" :
		{
			"attack": "CERBATTK.wav",
			"defend": "CERBDFND.wav",
			"killed": "CERBKILL.wav",
			"move": "CERBMOVE.wav",
			"wince": "CERBWNCE.wav"
		}
	},
	"demon" :
	{
		"index": 48,
		"level": 4,
		"faction": "inferno",
		"upgrades": ["hornedDemon"],
		"graphics" :
		{
			"animation": "COHDEM.DEF"
		},
		"sound" :
		{
			"attack": "SHDMATTK.wav",
			"defend": "SHDMDFND.wav",
			"killed": "SHDMKILL.wav",
			"move": "SHDMMOVE.wav",
			"wince": "SHDMWNCE.wav"
		}
	},
	"hornedDemon" :
	{
		"index": 49,
		"level": 4,
		"faction": "inferno",
		"graphics" :
		{
			"animation": "CTHDEM.DEF"
		},
		"sound" :
		{
			"attack": "DHDMATTK.wav",
			"defend": "DHDMDFND.wav",
			"killed": "DHDMKILL.wav",
			"move": "DHDMMOVE.wav",
			"wince": "DHDMWNCE.wav"
		}
	},
	"pitFiend" :
	{
		"index": 50,
		"level": 5,
		"faction": "inferno",
		"upgrades": ["pitLord"],
		"graphics" :
		{
			"animation": "CPFIEN.DEF"
		},
		"sound" :
		{
			"attack": "PFNDATTK.wav",
			"defend": "PFNDDFND.wav",
			"killed": "PFNDKILL.wav",
			"move": "PFNDMOVE.wav",
			"wince": "PFNDWNCE.wav"
		}
	},
	"pitLord" :
	{
		"index": 51,
		"level": 5,
		"faction": "inferno",
		"abilities":
		{
			"demonSummon" :
			{
				"type" : "DAEMON_SUMMONING",
				"subtype" : "creature.demon",
				"val" : 50
			},
			"castsAmount" :
			{
				"type" : "CASTS",
				"val" : 1
			}
		},
		"graphics" :
		{
			"animation": "CPFOE.DEF"
		},
		"sound" :
		{
			"attack": "PFOEATTK.wav",
			"defend": "PFOEDFND.wav",
			"killed": "PFOEKILL.wav",
			"move": "PFOEMOVE.wav",
			"wince": "PFOEWNCE.wav"
		}
	},
	"efreet" :
	{
		"index": 52,
		"level": 6,
		"faction": "inferno",
		"abilities":
		{
			"hateGenies" :
			{
				"type" : "HATE",
				"subtype" : "creature.genie",
				"val" : 50
			},
			"hateMasterGenies" :
			{
				"type" : "HATE",
				"subtype" : "creature.masterGenie",
				"val" : 50
			},
			"canFly" :
			{
				"type" : "FLYING"
			},
			"immuneToFire" :
			{
				"type" : "FIRE_IMMUNITY",
				"subtype" : 0
			}
		},
		"upgrades": ["efreetSultan"],
		"graphics" :
		{
			"animation": "CEFREE.DEF"
		},
		"sound" :
		{
			"attack": "EFRTATTK.wav",
			"defend": "EFRTDFND.wav",
			"killed": "EFRTKILL.wav",
			"move": "EFRTMOVE.wav",
			"wince": "EFRTWNCE.wav"
		}
	},
	"efreetSultan" :
	{
		"index": 53,
		"level": 6,
		"faction": "inferno",
		"abilities":
		{
			"hateGenies" :
			{
				"type" : "HATE",
				"subtype" : "creature.genie",
				"val" : 50
			},
			"hateMasterGenies" :
			{
				"type" : "HATE",
				"subtype" : "creature.masterGenie",
				"val" : 50
			},
			"canFly" :
			{
				"type" : "FLYING"
			},
			"immuneToFire" :
			{
				"type" : "FIRE_IMMUNITY",
				"subtype" : 0
			},
			"fireShield" :
			{
				"type" : "FIRE_SHIELD",
				"val" : 30
			}
		},
		"graphics" :
		{
			"animation": "CEFRES.DEF"
		},
		"sound" :
		{
			"attack": "ESULATTK.wav",
			"defend": "ESULDFND.wav",
			"killed": "ESULKILL.wav",
			"move": "ESULMOVE.wav",
			"shoot": "ESULSHOT.wav",
			"wince": "ESULWNCE.wav"
		}
	},
	"devil" :
	{
		"index": 54,
		"level": 7,
		"faction": "inferno",
		"abilities":
		{
			"hateAngels" :
			{
				"type" : "HATE",
				"subtype" : "creature.angel",
				"val" : 50
			},
			"hateArchAngels" :
			{
				"type" : "HATE",
				"subtype" : "creature.archangel",
				"val" : 50,
				"description" : "Devil -1"
			},
			"FLYING_ARMY" :
			{

				"subtype" : 1
			},
			"descreaseLuck" :
			{
				"type" : "LUCK",
				"effectRange" : "ONLY_ENEMY_ARMY",
				"val" : -1,
				"stacking" : "Devils"
			},
			"blockRetaliation" :
			{
				"type" : "BLOCKS_RETALIATION"
			}
		},
		"upgrades": ["archDevil"],
		"graphics" :
		{
			"animation": "CDEVIL.DEF"
		},
		"sound" :
		{
			"attack": "DEVLATTK.wav",
			"defend": "DEVLDFND.wav",
			"killed": "DEVLKILL.wav",
			"move": "DEVLMOVE.wav",
			"wince": "DEVLWNCE.wav",
			"startMoving": "DEVLEXT1.wav",
			"endMoving": "DEVLEXT2.wav"
		}
	},
	"archDevil" :
	{
		"index": 55,
		"level": 7,
		"faction": "inferno",
		"abilities" :
		{
			"hateAngels" :
			{
				"type" : "HATE",
				"subtype" : "creature.angel",
				"val" : 50
			},
			"hateArchAngels" :
			{
				"type" : "HATE",
				"subtype" : "creature.archangel",
				"val" : 50
			},
			"FLYING_ARMY" :
			{

				"subtype" : 1
			},
			"descreaseLuck" :
			{
				"type" : "LUCK",
				"effectRange" : "ONLY_ENEMY_ARMY",
				"val" : -1,
				"stacking" : "Devils"
			},
			"blockRetaliation" :
			{
				"type" : "BLOCKS_RETALIATION"
			}
		},
		"graphics" :
		{
			"missile" : null,
			"animation": "CADEVL.DEF"
		},
		"sound" :
		{
			"attack": "ADVLATTK.wav",
			"defend": "ADVLDFND.wav",
			"killed": "ADVLKILL.wav",
			"move": "ADVLMOVE.wav",
			"wince": "ADVLWNCE.wav",
			"startMoving": "ADVLEXT1.wav",
			"endMoving": "ADVLEXT2.wav"
		}
	},
	"skeleton" :
	{
		"index": 56,
		"level": 1,
		"faction": "necropolis",
		"upgrades": ["skeletonWarrior"],
		"graphics" :
		{
			"animation": "CSKELE.DEF"
		},
		"sound" :
		{
			"attack": "SKELATTK.wav",
			"defend": "SKELDFND.wav",
			"killed": "SKELKILL.wav",
			"move": "SKELMOVE.wav",
			"wince": "SKELWNCE.wav"
		}
	},
	"skeletonWarrior" :
	{
		"index": 57,
		"level": 1,
		"faction": "necropolis",
		"graphics" :
		{
			"animation": "CWSKEL.DEF"
		},
		"sound" :
		{
			"attack": "SKLWATTK.wav",
			"defend": "SKLWDFND.wav",
			"killed": "SKLWKILL.wav",
			"move": "SKLWMOVE.wav",
			"wince": "SKLWWNCE.wav"
		}
	},
	"walkingDead" :
	{
		"index": 58,
		"level": 2,
		"extraNames": [ "zombie" ],
		"faction" : "necropolis",
		"upgrades": ["zombieLord"],
		"graphics" :
		{
			"animation": "CZOMBI.DEF"
		},
		"sound" :
		{
			"attack": "ZOMBATTK.wav",
			"defend": "ZOMBDFND.wav",
			"killed": "ZOMBKILL.wav",
			"move": "ZOMBMOVE.wav",
			"wince": "ZOMBWNCE.wav"
		}
	},
	"zombieLord" :
	{
		"index": 59,
		"level": 2,
		"faction": "necropolis",
		"graphics" :
		{
			"animation": "CZOMLO.DEF"
		},
		"sound" :
		{
			"attack": "ZMBLATTK.wav",
			"defend": "ZMBLDFND.wav",
			"killed": "ZMBLKILL.wav",
			"move": "ZMBLMOVE.wav",
			"wince": "ZMBLWNCE.wav"
		},
		"abilities":
		{
			"castDisease" :
			{
				"type" : "SPELL_AFTER_ATTACK",
				"subtype" : "spell.disease",
				"val" : 20
			}
		}
	},
	"wight" :
	{
		"index": 60,
		"level": 3,
		"faction": "necropolis",
		"abilities":
		{
			"regenerate" :
			{
				"type" : "FULL_HP_REGENERATION",
				"subtype" : 1
			}
		},
		"upgrades": ["wraith"],
		"hasDoubleWeek": true,
		"graphics" :
		{
			"animation": "CWIGHT.DEF"
		},
		"sound" :
		{
			"attack": "WGHTATTK.wav",
			"defend": "WGHTDFND.wav",
			"killed": "WGHTKILL.wav",
			"move": "WGHTMOVE.wav",
			"wince": "WGHTWNCE.wav"
		}
	},
	"wraith" :
	{
		"index": 61,
		"level": 3,
		"faction": "necropolis",
		"abilities":
		{
			"regenerate" :
			{
				"type" : "FULL_HP_REGENERATION",
				"subtype" : 1
			},
			"drainsMana" :
			{
				"type" : "MANA_DRAIN",
				"val" : 2
			}
		},
		"graphics" :
		{
			"animation": "CWRAIT.DEF"
		},
		"sound" :
		{
			"attack": "WRTHATTK.wav",
			"defend": "WRTHDFND.wav",
			"killed": "WRTHKILL.wav",
			"move": "WRTHMOVE.wav",
			"wince": "WRTHWNCE.wav"
		}
	},
	"vampire" :
	{
		"index": 62,
		"level": 4,
		"faction": "necropolis",
		"abilities":
		{
			"noRetalitation" :
			{
				"type" : "BLOCKS_RETALIATION",
				"subtype" : 1
			}
		},
		"upgrades": ["vampireLord"],
		"graphics" :
		{
			"animation": "CVAMP.DEF"
		},
		"sound" :
		{
			"attack": "VAMPATTK.wav",
			"defend": "VAMPDFND.wav",
			"killed": "VAMPKILL.wav",
			"move": "VAMPMOVE.wav",
			"wince": "VAMPWNCE.wav",
			"startMoving": "VAMPEXT1.wav",
			"endMoving": "VAMPEXT2.wav"
		}
	},
	"vampireLord" :
	{
		"index": 63,
		"level": 4,
		"faction": "necropolis",
		"abilities":
		{
			"noRetalitation" :
			{
				"type" : "BLOCKS_RETALIATION",
				"subtype" : 1
			},
			"drainsLife" :
			{
				"type" : "LIFE_DRAIN",
				"val" : 100
			}
		},
		"graphics" :
		{
			"animation": "CNOSFE.DEF"
		},
		"sound" :
		{
			"attack": "NOSFATTK.wav",
			"defend": "NOSFDFND.wav",
			"killed": "NOSFKILL.wav",
			"move": "NOSFMOVE.wav",
			"shoot": "NOSFSHOT.wav",
			"wince": "NOSFWNCE.wav",
			"startMoving": "NOSFEXT1.wav",
			"endMoving": "NOSFEXT2.wav"
		}
	},
	"lich" :
	{
		"index": 64,
		"level": 5,
		"faction": "necropolis",
		"abilities":
		{
			"deathCloud" :
			{
				"type" : "SPELL_LIKE_ATTACK",
				"subtype" : "spell.deathCloud"
			}
		},
		"upgrades": ["powerLich"],
		"graphics" :
		{
			"animation": "CLICH.DEF",
			"missile" :
			{
				"projectile": "PLICH.DEF"
			}
		},
		"sound" :
		{
			"attack": "LICHATTK.wav",
			"defend": "LICHDFND.wav",
			"killed": "LICHKILL.wav",
			"move": "LICHMOVE.wav",
			"shoot": "LICHSHOT.wav",
			"wince": "LICHWNCE.wav"
		}
	},
	"powerLich" :
	{
		"index": 65,
		"level": 5,
		"faction": "necropolis",
		"abilities":
		{
			"deathCloud" :
			{
				"type" : "SPELL_LIKE_ATTACK",
				"subtype" : "spell.deathCloud"
			}
		},
		"graphics" :
		{
			"animation": "CPLICH.DEF",
			"missile" :
			{
				"projectile": "PLICH.DEF"
			}
		},
		"sound" :
		{
			"attack": "PLCHATTK.wav",
			"defend": "PLCHDFND.wav",
			"killed": "PLCHKILL.wav",
			"move": "PLCHMOVE.wav",
			"shoot": "PLCHSHOT.wav",
			"wince": "PLCHWNCE.wav"
		}
	},
	"blackKnight" :
	{
		"index": 66,
		"level": 6,
		"faction": "necropolis",
		"abilities":
		{
			"curses" :
			{
				"type" : "SPELL_AFTER_ATTACK",
				"subtype" : "spell.curse",
				"val" : 20
			}
		},
		"upgrades": ["dreadKnight"],
		"graphics" :
		{
			"animation": "CBKNIG.DEF"
		},
		"sound" :
		{
			"attack": "BKNTATTK.wav",
			"defend": "BKNTDFND.wav",
			"killed": "BKNTKILL.wav",
			"move": "BKNTMOVE.wav",
			"wince": "BKNTWNCE.wav"
		}
	},
	"dreadKnight" :
	{
		"index": 67,
		"level": 6,
		"faction": "necropolis",
		"abilities":
		{
			"curses" :
			{
				"type" : "SPELL_AFTER_ATTACK",
				"subtype" : "spell.curse",
				"val" : 20
			},
			"deathStrike" :
			{
				"type" : "DOUBLE_DAMAGE_CHANCE",
				"val" : 20
			}
		},
		"graphics" :
		{
			"animation": "CBLORD.DEF"
		},
		"sound" :
		{
			"attack": "BLRDATTK.wav",
			"defend": "BLRDDFND.wav",
			"killed": "BLRDKILL.wav",
			"move": "BLRDMOVE.wav",
			"wince": "BLRDWNCE.wav"
		}
	},
	"boneDragon" :
	{
		"index": 68,
		"level": 7,
		"faction": "necropolis",
		"abilities" :
		{
			"dragon" :
			{
				"type" : "DRAGON_NATURE"
			},
			"const_lowers_morale" :
			{
				"stacking" : "Undead Dragons"
			}
		},
		"upgrades": ["ghostDragon"],
		"graphics" :
		{
			"animation": "CNDRGN.DEF"
		},
		"sound" :
		{
			"attack": "BODRATTK.wav",
			"defend": "BODRDFND.wav",
			"killed": "BODRKILL.wav",
			"move": "BODRMOVE.wav",
			"wince": "BODRWNCE.wav"
		}
	},
	"ghostDragon" :
	{
		"index": 69,
		"level": 7,
		"faction": "necropolis",
		"abilities":
		{
			"dragon" :
			{
				"type" : "DRAGON_NATURE"
			},
			"const_lowers_morale" :
			{
				"stacking" : "Undead Dragons"
			},
			"age" :
			{
				"type" : "SPELL_AFTER_ATTACK",
				"subtype" : "spell.age",
				"val" : 20
			}
		},
		"graphics" :
		{
			"animation": "CHDRGN.DEF"
		},
		"sound" :
		{
			"attack": "GHDRATTK.wav",
			"defend": "GHDRDFND.wav",
			"killed": "GHDRKILL.wav",
			"move": "GHDRMOVE.wav",
			"wince": "GHDRWNCE.wav"
		}
	},
	"goldGolem" :
	{
		"index": 116,
		"level": 4,
		"faction": "neutral",
		"abilities":
		{
			"magicResistance" :
			{
				"type" : "SPELL_DAMAGE_REDUCTION",
				"subtype" : -1,
				"val" : 85
			},
			"nonliving" :
			{
				"type" : "NON_LIVING"
			}
		},
		"graphics" :
		{
			"animation": "CGGOLE.DEF"
		},
		"sound" :
		{
			"attack": "GGLMATTK.wav",
			"defend": "GGLMDFND.wav",
			"killed": "GGLMKILL.wav",
			"move": "GGLMMOVE.wav",
			"wince": "GGLMWNCE.wav"
		}
	},
	"diamondGolem" :
	{
		"index": 117,
		"level": 5,
		"faction": "neutral",
		"abilities":
		{
			"magicResistance" :
			{
				"type" : "SPELL_DAMAGE_REDUCTION",
				"subtype" : -1,
				"val" : 95
			},
			"nonliving" :
			{
				"type" : "NON_LIVING"
			}
		},
		"graphics" :
		{
			"animation": "CDGOLE.DEF"
		},
		"sound" :
		{
			"attack": "DGLMATTK.wav",
			"defend": "DGLMDFND.wav",
			"killed": "DGLMKILL.wav",
			"move": "DGLMMOVE.wav",
			"wince": "DGLMWNCE.wav"
		}
	},
	"azureDragon" :
	{
		"index": 132,
		"level": 10,
		"faction": "neutral",
		"abilities":
		{
			"dragon" :
			{
				"type" : "DRAGON_NATURE"
			},
			"fireBreath" :
			{
				"type" : "TWO_HEX_ATTACK_BREATH"
			},
			"spellImmunity" :
			{
				"type" : "LEVEL_SPELL_IMMUNITY",
				"val" : 3
			},
			"fearless" :
			{
				"type" : "FEARLESS"
			},
			"fear" :
			{
				"type" : "FEAR"
			}
		},
		"graphics" :
		{
			"animation": "CADRGN.DEF"
		},
		"sound" :
		{
			"attack": "AZURATTK.wav",
			"defend": "AZURDFND.wav",
			"killed": "AZURKILL.wav",
			"move": "AZURMOVE.wav",
			"wince": "AZURWNCE.wav"
		}
	},
	"crystalDragon" :
	{
		"index": 133,
		"level": 10,
		"faction": "neutral",
		"abilities":
		{
			"dragon" :
			{
				"type" : "DRAGON_NATURE"
			},
			"magicResistance" :
			{
				"type" : "MAGIC_RESISTANCE",
				"val" : 20
			},
			"crystals" :
			{
				"type" : "GENERATE_RESOURCE",
				"subtype" : "resource.crystal",
				"val" : 1,
				"propagator" : "HERO"
			},
			"FLYING_ARMY" : null
		},
		"graphics" :
		{
			"animation": "CCDRGN.DEF"
		},
		"sound" :
		{
			"attack": "CRYSATTK.wav",
			"defend": "CRYSDFND.wav",
			"killed": "CRYSKILL.wav",
			"move": "CRYSMOVE.wav",
			"wince": "CRYSWNCE.wav"
		}
	},
	"fairieDragon" :
	{
		"index": 134,
		"level": 8,
		"faction": "neutral",
		"abilities":
		{
			"dragon" :
			{
				"type" : "DRAGON_NATURE"
			},
			"mirror" :
			{
				"type" : "MAGIC_MIRROR",
				"val" : 20
			},
			"casts" :
			{
				"type" : "CASTS",
				"val" : 5
			},
			"spellpower" :
			{
				"type" : "CREATURE_SPELL_POWER",
				"val" : 500
			},
			"castsMagicArrow" :
			{
				"type" : "SPELLCASTER",
				"subtype" : "spell.magicArrow",
				"addInfo" : 22,
				"val" : 2
			},
			"castsIceBolt" :
			{
				"type" : "SPELLCASTER",
				"subtype" : "spell.iceBolt",
				"addInfo" : 22,
				"val" : 2
			},
			"castsLightningBolt" :
			{
				"type" : "SPELLCASTER",
				"subtype" : "spell.lightningBolt",
				"addInfo" : 22,
				"val" : 2
			},
			"castsChainLightning" :
			{
				"type" : "SPELLCASTER",
				"subtype" : "spell.chainLightning",
				"addInfo" : 5,
				"val" : 2
			},
			"castsFrostRing" :
			{
				"type" : "SPELLCASTER",
				"subtype" : "spell.frostRing",
				"addInfo" : 10,
				"val" : 2
			},
			"castsFireball" :
			{
				"type" : "SPELLCASTER",
				"subtype" : "spell.fireball",
				"addInfo" : 21,
				"val" : 2
			},
			"castsInferno" :
			{
				"type" : "SPELLCASTER",
				"subtype" : "spell.inferno",
				"addInfo" : 5,
				"val" : 2
			},
			"castsMeteorShower" :
			{
				"type" : "SPELLCASTER",
				"subtype" : "spell.meteorShower",
				"addInfo" : 5,
				"val" : 2
			}
		},
		"graphics" :
		{
			"animation": "CFDRGN.DEF"
		},
		"sound" :
		{
			"attack": "FAERATTK.wav",
			"defend": "FAERDFND.wav",
			"killed": "FAERKILL.wav",
			"move": "FAERMOVE.wav",
			"shoot": "FAERSHOT.wav",
			"wince": "FAERWNCE.wav"
		}
	},
	"rustDragon" :
	{
		"index": 135,
		"level": 10,
		"faction": "neutral",
		"abilities":
		{
			"dragon" :
			{
				"type" : "DRAGON_NATURE"
			},
			"acidBreath" :
			{
				"type" : "ACID_BREATH",
				"val" : 25,
				"addInfo" : 20
			},
			"fireBreath" :
			{
				"type" : "TWO_HEX_ATTACK_BREATH"
			},
			"reduceDefence" :
			{
				"type" : "SPELL_AFTER_ATTACK",
				"subtype" : "spell.acidBreath",
				"val" : 100
			}
		},
		"graphics" :
		{
			"animation": "CRSDGN.DEF"
		},
		"sound" :
		{
			"attack": "RUSTATTK.wav",
			"defend": "RUSTDFND.wav",
			"killed": "RUSTKILL.wav",
			"move": "RUSTMOVE.wav",
			"wince": "RUSTWNCE.wav"
		}
	},
	"enchanter" :
	{
		"index": 136,
		"level": 6,
		"extraNames": [ "enchanters" ],
		"faction": "neutral",
		"abilities":
		{
			"noPenalty" :
			{
				"type" : "NO_WALL_PENALTY"
			},
			"casts" :
			{
				"type" : "CASTS",
				"val" : 5
			},
			"castsAirShield" :
			{
				"type" : "ENCHANTER",
				"subtype" : "spell.airShield",
				"val" : 3,
				"addInfo" : 3
			},
			"castsBless" :
			{
				"type" : "ENCHANTER",
				"subtype" : "spell.bless",
				"val" : 3,
				"addInfo" : 3
			},
			"castsWeakness" :
			{
				"type" : "ENCHANTER",
				"subtype" : "spell.weakness",
				"val" : 3,
				"addInfo" : 3
			},
			"castsStoneSkin" :
			{
				"type" : "ENCHANTER",
				"subtype" : "spell.stoneSkin",
				"val" : 3,
				"addInfo" : 3
			},
			"castsSlow" :
			{
				"type" : "ENCHANTER",
				"subtype" : "spell.slow",
				"val" : 3,
				"addInfo" : 3
			},
			"castsHaste" :
			{
				"type" : "ENCHANTER",
				"subtype" : "spell.haste",
				"val" : 3,
				"addInfo" : 3
			}

		},
		"graphics" :
		{
			"animation": "Cench.DEF",
			"missile" :
			{
				"projectile": "CPRZEAX.DEF"
			}
		},
		"sound" :
		{
			"attack": "ENCHATTK.wav",
			"defend": "ENCHDFND.wav",
			"killed": "ENCHKILL.wav",
			"move": "ENCHMOVE.wav",
			"shoot": "ENCHSHOT.wav",
			"wince": "ENCHWNCE.wav"
		}
	},
	"sharpshooter" :
	{
		"index": 137,
		"level": 4,
		"extraNames": [ "sharpshooters" ],
		"faction": "neutral",
		"abilities":
		{
			"noPenalty" :
			{
				"type" : "NO_WALL_PENALTY"
			},
			"noDistancePenalty" :
			{
				"type" : "NO_DISTANCE_PENALTY"
			}
		},
		"graphics" :
		{
			"animation": "CSHARP.DEF",
			"missile" :
			{
				"projectile": "PELFX.DEF"
			}
		},
		"sound" :
		{
			"attack": "HCRSATTK.wav",
			"defend": "HCRSDFND.wav",
			"killed": "HCRSKILL.wav",
			"move": "HCRSMOVE.wav",
			"shoot": "HCRSSHOT.wav",
			"wince": "HCRSWNCE.wav"
		}
	},
	"halfling" :
	{
		"index": 138,
		"level": 1,
		"faction": "neutral",
		"abilities":
		{
			"lucky" :
			{
				"type" : "SELF_LUCK"
			}
		 },
		"graphics" :
		{
			"animation": "CHALF.DEF",
			"missile" :
			{
				"projectile": "PHALF.DEF"
			}
		},
		"sound" :
		{
			"attack": "HALFATTK.wav",
			"defend": "HALFDFND.wav",
			"killed": "HALFKILL.wav",
			"move": "HALFMOVE.wav",
			"shoot": "HALFSHOT.wav",
			"wince": "HALFWNCE.wav"
		}
	},
	"peasant" :
	{
		"index": 139,
		"level": 1,
		"faction": "neutral",
		"graphics" :
		{
			"animation": "CPEAS.DEF"
		},
		"sound" :
		{
			"attack": "PSNTATTK.wav",
			"defend": "PSNTDFND.wav",
			"killed": "PSNTKILL.wav",
			"move": "PSNTMOVE.wav",
			"wince": "PSNTWNCE.wav"
		}
	},
	"boar" :
	{
		"index": 140,
		"level": 2,
		"faction": "neutral",
		"doubleWide" : true,
		"graphics" :
		{
			"animation": "CBOAR.DEF"
		},
		"sound" :
		{
			"attack": "BOARATTK.wav",
			"defend": "BOARDFND.wav",
			"killed": "BOARKILL.wav",
			"move": "BOARMOVE.wav",
			"wince": "BOARWNCE.wav"
		}
	},
	"mummy" :
	{
		"index": 141,
		"level": 3,
		"faction": "neutral",
		"abilities":
		{
			"undead" :
			{
				"type" : "UNDEAD"
			},
			"castCurse" :
			{
				"type" : "SPELL_AFTER_ATTACK",
				"subtype" : "spell.curse",
				"val" : 50
			}
		},
		"graphics" :
		{
			"animation": "CMUMMY.DEF"
		},
		"sound" :
		{
			"attack": "MUMYATTK.wav",
			"defend": "MUMYDFND.wav",
			"killed": "MUMYKILL.wav",
			"move": "MUMYMOVE.wav",
			"wince": "MUMYWNCE.wav"
		}
	},
	"nomad" :
	{
		"index": 142,
		"level": 3,
		"faction": "neutral",
		"abilities":
		{
			"sandWalker" :
			{
				"type" : "NO_TERRAIN_PENALTY",
				"subtype" : "terrain.sand",
				"propagator" : "HERO"
			}
		},
		"doubleWide" : true,
		"graphics" :
		{
			"animation": "CNOMAD.DEF"
		},
		"sound" :
		{
			"attack": "NMADATTK.wav",
			"defend": "NMADDFND.wav",
			"killed": "NMADKILL.wav",
			"move": "NMADMOVE.wav",
			"wince": "NMADWNCE.wav"
		}
	},
	"rogue" :
	{
		"index": 143,
		"level": 2,
		"faction": "neutral",
		"abilities":
		{
			"visionsMonsters" :
			{
				"type" : "VISIONS",
				"subtype" : 0,
				"val" : 3,
				"valueType" : "INDEPENDENT_MAX",
				"propagator" : "HERO"
			},
			"visionsHeroes" :
			{
				"type" : "VISIONS",
				"subtype" : 1,
				"val" : 3,
				"valueType" : "INDEPENDENT_MAX",
				"propagator" : "HERO"
			},
			"visionsTowns" :
			{
				"type" : "VISIONS",
				"subtype" : 2,
				"val" : 3,
				"valueType" : "INDEPENDENT_MAX",
				"propagator" : "HERO"
			}
		},
		"graphics" :
		{
			"animation": "CROGUE.DEF"
		},
		"sound" :
		{
			"attack": "ROGUATTK.wav",
			"defend": "ROGUDFND.wav",
			"killed": "ROGUKILL.wav",
			"move": "ROGUMOVE.wav",
			"wince": "ROGUWNCE.wav"
		}
	},
	"troll" :
	{
		"index": 144,
		"level": 5,
		"faction": "neutral",
		"abilities":
		{
			"regenerates" :
			{
				"type" : "FULL_HP_REGENERATION"
			}
		},
		"graphics" :
		{
			"animation": "CTROLL.DEF"
		},
		"sound" :
		{
			"attack": "TRLLATTK.wav",
			"defend": "TRLLDFND.wav",
			"killed": "TRLLKILL.wav",
			"move": "TRLLMOVE.wav",
			"wince": "TRLLWNCE.wav"
		}
	},
	"centaur" :
	{
		"index": 14,
		"level": 1,
		"faction": "rampart",
		"upgrades": ["centaurCaptain"],
		"hasDoubleWeek": true,
		"graphics" :
		{
			"missile" : null,
			"animation": "CCENTR.DEF"
		},
		"sound" :
		{
			"attack": "CNTRATTK.wav",
			"defend": "CNTRDFND.wav",
			"killed": "CNTRKILL.wav",
			"move": "CNTRMOVE.wav",
			"shoot": "CNTRSHOT.wav",
			"wince": "CNTRWNCE.wav"
		}
	},
	"centaurCaptain" :
	{
		"index": 15,
		"level": 1,
		"faction": "rampart",
		"graphics" :
		{
			"missile" : null,
			"animation": "CECENT.DEF"
		},
		"sound" :
		{
			"attack": "ECNTATTK.wav",
			"defend": "ECNTDFND.wav",
			"killed": "ECNTKILL.wav",
			"move": "ECNTMOVE.wav",
			"wince": "ECNTWNCE.wav"
		}
	},
	"dwarf" :
	{
		"index": 16,
		"level": 2,
		"faction": "rampart",
		"abilities":
		{
			"magicResistance" :
			{
				"type" : "MAGIC_RESISTANCE",
				"val" : 20
			}
		},
		"upgrades": ["battleDwarf"],
		"graphics" :
		{
			"animation": "CDWARF.DEF"
		},
		"sound" :
		{
			"attack": "DWRFATTK.wav",
			"defend": "DWRFDFND.wav",
			"killed": "DWRFKILL.wav",
			"move": "DWRFMOVE.wav",
			"wince": "DWRFWNCE.wav"
		}
	},
	"battleDwarf" :
	{
		"index": 17,
		"level": 2,
		"faction": "rampart",
		"abilities":
		{
			"magicResistance" :
			{
				"type" : "MAGIC_RESISTANCE",
				"val" : 40
			}
		},
		"graphics" :
		{
			"animation": "CBDWAR.DEF"
		},
		"sound" :
		{
			"attack": "BDRFATTK.wav",
			"defend": "BDRFDFND.wav",
			"killed": "BDRFKILL.wav",
			"move": "BDRFMOVE.wav",
			"wince": "BDRFWNCE.wav"
		}
	},
	"woodElf" :
	{
		"index": 18,
		"level": 3,
		"faction": "rampart",
		"upgrades": ["grandElf"],
		"graphics" :
		{
			"animation": "CELF.DEF",
			"missile" :
			{
				"projectile": "PELFX.DEF"
			}
		},
		"sound" :
		{
			"attack": "WELFATTK.wav",
			"defend": "WELFDFND.wav",
			"killed": "WELFKILL.wav",
			"move": "WELFMOVE.wav",
			"shoot": "WELFSHOT.wav",
			"wince": "WELFWNCE.wav"
		}
	},
	"grandElf" :
	{
		"index": 19,
		"level": 3,
		"faction": "rampart",
		"abilities":
		{
			"doubleShot" :
			{
				"type": "ADDITIONAL_ATTACK",
				"val" : 1,
				"effectRange": "ONLY_DISTANCE_FIGHT"
			}
		},
		"graphics" :
		{
			"animation": "CGRELF.DEF",
			"missile" :
			{
				"projectile": "PELFX.DEF"
			}
		},
		"sound" :
		{
			"attack": "GELFATTK.wav",
			"defend": "GELFDFND.wav",
			"killed": "GELFKILL.wav",
			"move": "GELFMOVE.wav",
			"shoot": "GELFSHOT.wav",
			"wince": "GELFWNCE.wav"
		}
	},
	"pegasus" :
	{
		"index": 20,
		"level": 4,
		"faction": "rampart",
		"abilities":
		{
			"increaseManaCost" :
			{
				"type" : "CHANGES_SPELL_COST_FOR_ENEMY",
				"val" : 2
			}
		},
		"upgrades": ["silverPegasus"],
		"hasDoubleWeek": true,
		"graphics" :
		{
			"animation": "CPEGAS.DEF"
		},
		"sound" :
		{
			"attack": "PEGAATTK.wav",
			"defend": "PEGADFND.wav",
			"killed": "PEGAKILL.wav",
			"move": "PEGAMOVE.wav",
			"wince": "PEGAWNCE.wav"
		}
	},
	"silverPegasus" :
	{
		"index": 21,
		"level": 4,
		"faction": "rampart",
		"abilities":
		{
			"increaseManaCost" :
			{
				"type" : "CHANGES_SPELL_COST_FOR_ENEMY",
				"val" : 2
			}
		},
		"graphics" :
		{
			"animation": "CAPEGS.DEF"
		},
		"sound" :
		{
			"attack": "APEGATTK.wav",
			"defend": "APEGDFND.wav",
			"killed": "APEGKILL.wav",
			"move": "APEGMOVE.wav",
			"wince": "APEGWNCE.wav"
		}
	},
	"dendroidGuard" :
	{
		"index": 22,
		"level": 5,
		"faction": "rampart",
		"abilities":
		{
			"binds" :
			{
				"type" : "SPELL_AFTER_ATTACK",
				"subtype" : "spell.bind",
				"val" : 100
			}
		},
		"upgrades": ["dendroidSoldier"],
		"graphics" :
		{
			"animation": "CTREE.DEF"
		},
		"sound" :
		{
			"attack": "TREEATTK.wav",
			"defend": "TREEDFND.wav",
			"killed": "TREEKILL.wav",
			"move": "TREEMOVE.wav",
			"wince": "TREEWNCE.wav"
		}
	},
	"dendroidSoldier" :
	{
		"index": 23,
		"level": 5,
		"faction": "rampart",
		"abilities":
		{
			"binds" :
			{
				"type" : "SPELL_AFTER_ATTACK",
				"subtype" : "spell.bind",
				"val" : 100
			}
		},
		"graphics" :
		{
			"animation": "CBTREE.DEF"
		},
		"sound" :
		{
			"attack": "BTREATTK.wav",
			"defend": "BTREDFND.wav",
			"killed": "BTREKILL.wav",
			"move": "BTREMOVE.wav",
			"wince": "BTREWNCE.wav"
		}
	},
	"unicorn" :
	{
		"index": 24,
		"level": 6,
		"faction": "rampart",
		"abilities":
		{
			"spellResistAura" :
			{
				"type" : "SPELL_RESISTANCE_AURA",
				"val" : 20
			},
			"blinds" :
			{
				"type" : "SPELL_AFTER_ATTACK",
				"subtype" : "spell.blind",
				"val" : 20
			}
		},
		"upgrades": ["warUnicorn"],
		"graphics" :
		{
			"animation": "CUNICO.DEF"
		},
		"sound" :
		{
			"attack": "UNICATTK.wav",
			"defend": "UNICDFND.wav",
			"killed": "UNICKILL.wav",
			"move": "UNICMOVE.wav",
			"wince": "UNICWNCE.wav"
		}
	},
	"warUnicorn" :
	{
		"index": 25,
		"level": 6,
		"faction": "rampart",
		"abilities":
		{
			"spellResistAura" :
			{
				"type" : "SPELL_RESISTANCE_AURA",
				"val" : 20
			},
			"blinds" :
			{
				"type" : "SPELL_AFTER_ATTACK",
				"subtype" : "spell.blind",
				"val" : 20
			}
		},
		"graphics" :
		{
			"animation": "CWUNIC.DEF"
		},
		"sound" :
		{
			"attack": "WUNCATTK.wav",
			"defend": "WUNCDFND.wav",
			"killed": "WUNCKILL.wav",
			"move": "WUNCMOVE.wav",
			"shoot": "WUNCSHOT.wav",
			"wince": "WUNCWNCE.wav"
		}
	},
	"greenDragon" :
	{
		"index": 26,
		"level": 7,
		"faction": "rampart",
		"abilities":
		{
			"dragon" :
			{
				"type" : "DRAGON_NATURE"
			},
			"fireBreath" :
			{
				"type" : "TWO_HEX_ATTACK_BREATH"
			},
			"spellImmunity" :
			{
				"type" : "LEVEL_SPELL_IMMUNITY",
				"val" : 3
			}
		},
		"upgrades": ["goldDragon"],
		"graphics" :
		{
			"animation": "CGDRAG.DEF"
		},
		"sound" :
		{
			"attack": "GRDRATTK.wav",
			"defend": "GRDRDFND.wav",
			"killed": "GRDRKILL.wav",
			"move": "GRDRMOVE.wav",
			"wince": "GRDRWNCE.wav"
		}
	},
	"goldDragon" :
	{
		"index": 27,
		"level": 7,
		"faction": "rampart",
		"abilities":
		{
			"dragon" :
			{
				"type" : "DRAGON_NATURE"
			},
			"fireBreath" :
			{
				"type" : "TWO_HEX_ATTACK_BREATH"
			},
			"spellImmunity" :
			{
				"type" : "LEVEL_SPELL_IMMUNITY",
				"val" : 4
			}
		},
		"graphics" :
		{
			"animation": "CDDRAG.DEF"
		},
		"sound" :
		{
			"attack": "GODRATTK.wav",
			"defend": "GODRDFND.wav",
			"killed": "GODRKILL.wav",
			"move": "GODRMOVE.wav",
			"wince": "GODRWNCE.wav"
		}
	},
	"unused122" :
	{
		"faction": "neutral",
		"disabled" : true,
		"graphics" : null,
		"index" : 122
	},
	"unused124" :
	{
		"faction": "neutral",
		"disabled" : true,
		"graphics" : null,
		"index" : 124
	},
	"unused126" :
	{
		"faction": "neutral",
		"disabled" : true,
		"graphics" : null,
		"index" : 126
	},
	"unused128" :
	{
		"faction": "neutral",
		"disabled" : true,
		"graphics" : null,
		"index" : 128
	},

	"catapult" :
	{
		"special" : true,
		"index": 145,
		"level": 0,
		"faction": "neutral",
		"graphics" :
		{
			"animation": "SMCATA.DEF",
			"missile" :
			{
				"projectile": "SMCATX.DEF"
			}
		},
		"sound" :
		{
			"killed": "CATAKILL.wav",
			"shoot": "CATASHOT.wav",
			"wince": "CATAWNCE.wav"
		}
	},
	"ballista" :
	{
		"special" : true,
		"index": 146,
		"level": 0,
		"faction": "neutral",
		"graphics" :
		{
			"animation": "SMBAL.DEF",
			"missile" :
			{
				"projectile": "SMBALX.DEF"
			}
		},
		"sound" :
		{
			"killed": "BALLKILL.wav",
			"shoot": "BALLSHOT.wav",
			"wince": "BALLWNCE.wav"
		}
	},
	"firstAidTent" :
	{
		"special" : true,
		"index": 147,
		"level": 0,
		"faction": "neutral",
		"abilities": { "heals" : { "type" : "HEALER" } },
		"graphics" :
		{
			"animation": "SMTENT.DEF"
		},
		"sound" :
		{
			"killed": "FAIDKILL.wav",
			"wince": "FAIDWNCE.wav"
		}
	},
	"ammoCart" :
	{
		"special" : true,
		"index": 148,
		"level": 0,
		"faction": "neutral",
		"abilities": { "inactive" : { "type" : "NOT_ACTIVE" } },
		"graphics" :
		{
			"animation": "SMCART.DEF"
		},
		"sound" :
		{
			"killed": "CARTKILL.wav",
			"wince": "CARTWNCE.wav"
		}
	},
	"arrowTower" :
	{
		"special" : true,
		"index": 149,
		"level": 0,
		"faction": "neutral",
		"abilities":
		{
			"shooter" : { "type" : "SHOOTER" },
			"ignoreDefence" : { "type" : "ENEMY_DEFENCE_REDUCTION", "val" : 100 },
			"noWallPenalty" : { "type" : "NO_WALL_PENALTY" },
			"noDistancePenalty" : { "type" : "NO_DISTANCE_PENALTY" },
			"noLuck" : { "type" : "NO_LUCK" }
		},
		"graphics" :
		{
			"animation": "CLCBOW.DEF"
		},
		"sound": {}
	},
	"goblin" :
	{
		"index": 84,
		"level": 1,
		"extraNames": [ "goblins" ],
		"faction": "stronghold",
		"upgrades": ["hobgoblin"],
		"graphics" :
		{
			"animation": "CGOBLI.DEF"
		},
		"sound" :
		{
			"attack": "GBLNATTK.wav",
			"defend": "GBLNDFND.wav",
			"killed": "GBLNKILL.wav",
			"move": "GBLNMOVE.wav",
			"wince": "GBLNWNCE.wav"
		}
	},
	"hobgoblin" :
	{
		"index": 85,
		"level": 1,
		"faction": "stronghold",
		"hasDoubleWeek": true,
		"graphics" :
		{
			"animation": "CHGOBL.DEF"
		},
		"sound" :
		{
			"attack": "HGOBATTK.wav",
			"defend": "HGOBDFND.wav",
			"killed": "HGOBKILL.wav",
			"move": "HGOBMOVE.wav",
			"wince": "HGOBWNCE.wav"
		}
	},
	"goblinWolfRider" :
	{
		"index": 86,
		"level": 2,
		"faction": "stronghold",
		"upgrades": ["hobgoblinWolfRider"],
		"hasDoubleWeek": true,
		"graphics" :
		{
			"animation": "CBWLFR.DEF"
		},
		"sound" :
		{
			"attack": "GWRDATTK.wav",
			"defend": "GWRDDFND.wav",
			"killed": "GWRDKILL.wav",
			"move": "GWRDMOVE.wav",
			"wince": "GWRDWNCE.wav"
		}
	},
	"hobgoblinWolfRider" :
	{
		"index": 87,
		"level": 2,
		"faction": "stronghold",
		"abilities":
		{
			"extraAttack" :
			{
				"type" : "ADDITIONAL_ATTACK",
				"val" : 1
			}
		},
		"graphics" :
		{
			"animation": "CUWLFR.DEF"
		},
		"sound" :
		{
			"attack": "HGWRATTK.wav",
			"defend": "HGWRDFND.wav",
			"killed": "HGWRKILL.wav",
			"move": "HGWRMOVE.wav",
			"wince": "HGWRWNCE.wav"
		}
	},
	"orc" :
	{
		"index": 88,
		"level": 3,
		"faction": "stronghold",
		"upgrades": ["orcChieftain"],
		"graphics" :
		{
			"animation": "CORC.DEF",
			"missile" :
			{
				"projectile": "PORCHX.DEF"
			}
		},
		"sound" :
		{
			"attack": "OORCATTK.wav",
			"defend": "OORCDFND.wav",
			"killed": "OORCKILL.wav",
			"move": "OORCMOVE.wav",
			"shoot": "OORCSHOT.wav",
			"wince": "OORCWNCE.wav"
		}
	},
	"orcChieftain" :
	{
		"index": 89,
		"level": 3,
		"faction": "stronghold",
		"graphics" :
		{
			"animation": "CORCCH.DEF",
			"missile" :
			{
				"projectile": "PORCHX.DEF"
			}
		},
		"sound" :
		{
			"attack": "ORCCATTK.wav",
			"defend": "ORCCDFND.wav",
			"killed": "ORCCKILL.wav",
			"move": "ORCCMOVE.wav",
			"shoot": "ORCCSHOT.wav",
			"wince": "ORCCWNCE.wav"
		}
	},
	"ogre" :
	{
		"index": 90,
		"level": 4,
		"faction": "stronghold",
		"upgrades": ["ogreMage"],
		"graphics" :
		{
			"animation": "COGRE.DEF"
		},
		"sound" :
		{
			"attack": "OGREATTK.wav",
			"defend": "OGREDFND.wav",
			"killed": "OGREKILL.wav",
			"move": "OGREMOVE.wav",
			"wince": "OGREWNCE.wav"
		}
	},
	"ogreMage" :
	{
		"index": 91,
		"level": 4,
		"faction": "stronghold",
		"abilities":
		{
			"castsBloodlust" :
			{
				"type" : "SPELLCASTER",
				"subtype" : "spell.bloodlust",
				"val" : 2
			},
			"castsCount" :
			{
				"type" : "CASTS",
				"val" : 3
			},
			"castLength" :
			{
				"type" : "CREATURE_ENCHANT_POWER",
				"val" : 3
			}
		},
		"graphics" :
		{
			"animation": "COGMAG.DEF"
		},
		"sound" :
		{
			"attack": "OGRMATTK.wav",
			"defend": "OGRMDFND.wav",
			"killed": "OGRMKILL.wav",
			"move": "OGRMMOVE.wav",
			"shoot": "OGRMSHOT.wav",
			"wince": "OGRMWNCE.wav"
		}
	},
	"roc" :
	{
		"index": 92,
		"level": 5,
		"faction": "stronghold",
		"upgrades": ["thunderbird"],
		"graphics" :
		{
			"animation": "CROC.DEF"
		},
		"sound" :
		{
			"attack": "ROCCATTK.wav",
			"defend": "ROCCDFND.wav",
			"killed": "ROCCKILL.wav",
			"move": "ROCCMOVE.wav",
			"wince": "ROCCWNCE.wav"
		}
	},
	"thunderbird" :
	{
		"index": 93,
		"level": 5,
		"faction": "stronghold",
		"abilities":
		{
			"thunderStrength" :
			{
				"type" : "SPECIFIC_SPELL_POWER",
				"subtype" : "spell.thunderbolt",
				"val" : 10
			},
			"thunderOnAttack" :
			{
				"type" : "SPELL_AFTER_ATTACK",
				"subtype" : "spell.thunderbolt",
				"val" : 20
			}
		},
		"graphics" :
		{
			"animation": "CTBIRD.DEF"
		},
		"sound" :
		{
			"attack": "TBRDATTK.wav",
			"defend": "TBRDDFND.wav",
			"killed": "TBRDKILL.wav",
			"move": "TBRDMOVE.wav",
			"wince": "TBRDWNCE.wav"
		}
	},
	"cyclop" :
	{
		"index": 94,
		"level": 6,
		"faction": "stronghold",
		"upgrades": ["cyclopKing"],
		"graphics" :
		{
			"animation": "CCYCLR.DEF",
			"missile" :
			{
				"projectile": "PCYCLBX.DEF"
			}
		},
		"sound" :
		{
			"attack": "CCYCATTK.wav",
			"defend": "CCYCDFND.wav",
			"killed": "CCYCKILL.wav",
			"move": "CCYCMOVE.wav",
			"shoot": "CCYCSHOT.wav",
			"wince": "CCYCWNCE.wav"
		}
	},
	"cyclopKing" :
	{
		"index": 95,
		"level": 6,
		"faction": "stronghold",
		"abilities":
		{
			"siegeDoubleAttack" :
			{
				"type" : "CATAPULT_EXTRA_SHOTS",
				"val" : 1
			}
		},
		"graphics" :
		{
			"animation": "CCYCLLOR.DEF",
			"missile" :
			{
				"projectile": "PCYCLBX.DEF"
			}
		},
		"sound" :
		{
			"attack": "CYCLATTK.wav",
			"defend": "CYCLDFND.wav",
			"killed": "CYCLKILL.wav",
			"move": "CYCLMOVE.wav",
			"shoot": "CYCLSHOT.wav",
			"wince": "CYCLWNCE.wav"
		}
	},
	"behemoth" :
	{
		"index": 96,
		"level": 7,
		"faction": "stronghold",
		"abilities":
		{
			"reduceDefence" :
			{
				"type" : "ENEMY_DEFENCE_REDUCTION",
				"val" : 40
			}
		},
		"upgrades": ["ancientBehemoth"],
		"graphics" :
		{
			"animation": "CYBEHE.DEF"
		},
		"sound" :
		{
			"attack": "YBMHATTK.wav",
			"defend": "YBMHDFND.wav",
			"killed": "YBMHKILL.wav",
			"move": "YBMHMOVE.wav",
			"wince": "YBMHWNCE.wav"
		}
	},
	"ancientBehemoth" :
	{
		"index": 97,
		"level": 7,
		"faction": "stronghold",
		"abilities":
		{
			"reduceDefence" :
			{
				"type" : "ENEMY_DEFENCE_REDUCTION",
				"val" : 80
			}
		},
		"graphics" :
		{
			"animation": "CABEHE.DEF"
		},
		"sound" :
		{
			"attack": "BMTHATTK.wav",
			"defend": "BMTHDFND.wav",
			"killed": "BMTHKILL.wav",
			"move": "BMTHMOVE.wav",
			"wince": "BMTHWNCE.wav"
		}
	},
	"gremlin" :
	{
		"index": 28,
		"level": 1,
		"extraNames": [ "apprenticeGremlin" ],
		"faction": "tower",
		"upgrades": ["masterGremlin"],
		"hasDoubleWeek": true,
		"graphics" :
		{
			"animation": "CGREMA.DEF"
		},
		"sound" :
		{
			"attack": "AGRMATTK.wav",
			"defend": "AGRMDFND.wav",
			"killed": "AGRMKILL.wav",
			"move": "AGRMMOVE.wav",
			"shoot": "AGRMSHOT.wav",
			"wince": "AGRMWNCE.wav"
		}
	},
	"masterGremlin" :
	{
		"index": 29,
		"level": 1,
		"faction": "tower",
		"graphics" :
		{
			"animation": "CGREMM.DEF",
			"missile" :
			{
				"projectile": "CPRGRE.DEF"
			}
		},
		"sound" :
		{
			"attack": "MGRMATTK.wav",
			"defend": "MGRMDFND.wav",
			"killed": "MGRMKILL.wav",
			"move": "MGRMMOVE.wav",
			"shoot": "MGRMSHOT.wav",
			"wince": "MGRMWNCE.wav"
		}
	},
	"stoneGargoyle" :
	{
		"index": 30,
		"level": 2,
		"faction": "tower",
		"abilities":
		{
			"nonliving" :
			{
				"type" : "NON_LIVING"
			}
		},
		"upgrades": ["obsidianGargoyle"],
		"graphics" :
		{
			"animation": "CGARGO.DEF"
		},
		"sound" :
		{
			"attack": "SGRGATTK.wav",
			"defend": "SGRGDFND.wav",
			"killed": "SGRGKILL.wav",
			"move": "SGRGMOVE.wav",
			"wince": "SGRGWNCE.wav"
		}
	},
	"obsidianGargoyle" :
	{
		"index": 31,
		"level": 2,
		"faction": "tower",
		"abilities":
		{
			"nonliving" :
			{
				"type" : "NON_LIVING"
			}
		},
		"graphics" :
		{
			"animation": "COGARG.DEF"
		},
		"sound" :
		{
			"attack": "OGRGATTK.wav",
			"defend": "OGRGDFND.wav",
			"killed": "OGRGKILL.wav",
			"move": "OGRGMOVE.wav",
			"wince": "OGRGWNCE.wav"
		}
	},
	"ironGolem" :
	{
		"index": 32,
		"level": 3,
		"faction": "tower",
		"abilities":
		{
			"magicResistance" :
			{
				"type" : "SPELL_DAMAGE_REDUCTION",
				"subtype" : -1,
				"val" : 50
			},
			"nonliving" :
			{
				"type" : "NON_LIVING"
			}
		},
		"upgrades": ["stoneGolem"],
		"graphics" :
		{
			"animation": "CSGOLE.DEF"
		},
		"sound" :
		{
			"attack": "SGLMATTK.wav",
			"defend": "SGLMDFND.wav",
			"killed": "SGLMKILL.wav",
			"move": "SGLMMOVE.wav",
			"wince": "SGLMWNCE.wav"
		}
	},
	"stoneGolem" :
	{
		"index": 33,
		"level": 3,
		"faction": "tower",
		"abilities" :
		{
			"magicResistance" :
			{
				"type" : "SPELL_DAMAGE_REDUCTION",
				"subtype" : -1,
				"val" : 75
			},
			"nonliving" :
			{
				"type" : "NON_LIVING"
			}
		},
		"graphics" :
		{
			"animation": "CIGOLE.DEF"
		},
		"sound" :
		{
			"attack": "IGLMATTK.wav",
			"defend": "IGLMDFND.wav",
			"killed": "IGLMKILL.wav",
			"move": "IGLMMOVE.wav",
			"wince": "IGLMWNCE.wav"
		}
	},
	"mage" :
	{
		"index": 34,
		"level": 4,
		"faction": "tower",
		"abilities":
		{
			"reduceSpellCost" :
			{
				"type" : "CHANGES_SPELL_COST_FOR_ALLY",
				"val" :  2
			}
		},
		"upgrades": ["archMage"],
		"graphics" :
		{
			"animation": "CMAGE.DEF",
			"missile" :
			{
				"projectile": "PMAGEX.DEF"
			}
		},
		"sound" :
		{
			"attack": "MAGEATTK.wav",
			"defend": "MAGEDFND.wav",
			"killed": "MAGEKILL.wav",
			"move": "MAGEMOVE.wav",
			"shoot": "MAGESHOT.wav",
			"wince": "MAGEWNCE.wav"
		}
	},
	"archMage" :
	{
		"index": 35,
		"level": 4,
		"faction": "tower",
		"abilities":
		{
			"reduceSpellCost" :
			{
				"type" : "CHANGES_SPELL_COST_FOR_ALLY",
				"val" :  2
			}
		},
		"graphics" :
		{
			"animation": "CAMAGE.DEF",
			"missile" :
			{
				"projectile": "PMAGEX.DEF"
			}
		},
		"sound" :
		{
			"attack": "AMAGATTK.wav",
			"defend": "AMAGDFND.wav",
			"killed": "AMAGKILL.wav",
			"move": "AMAGMOVE.wav",
			"shoot": "AMAGSHOT.wav",
			"wince": "AMAGWNCE.wav"
		}
	},
	"genie" :
	{
		"index": 36,
		"level": 5,
		"faction": "tower",
		"abilities":
		{
			"hateAngels" :
			{
				"type" : "HATE",
				"subtype" : "creature.efreet",
				"val" : 50
			},
			"hateArchAngels" :
			{
				"type" : "HATE",
				"subtype" : "creature.efreetSultan",
				"val" : 50
			}
		},
		"upgrades": ["masterGenie"],
		"graphics" :
		{
			"animation": "CGENIE.DEF"
		},
		"sound" :
		{
			"attack": "GENIATTK.wav",
			"defend": "GENIDFND.wav",
			"killed": "GENIKILL.wav",
			"move": "GENIMOVE.wav",
			"wince": "GENIWNCE.wav"
		}
	},
	"masterGenie" :
	{
		"index": 37,
		"level": 5,
		"faction": "tower",
		"abilities":
		{
			"hateAngels" :
			{
				"type" : "HATE",
				"subtype" : "creature.efreet",
				"val" : 50
			},
			"hateArchAngels" :
			{
				"type" : "HATE",
				"subtype" : "creature.efreetSultan",
				"val" : 50
			},
			"spellsLength" :
			{
				"type" : "CREATURE_ENCHANT_POWER",
				"val" : 5
			},
			"randomSpellcaster" :
			{
				"type" : "RANDOM_SPELLCASTER",
				"val" : 2
			},
			"casts" :
			{
				"type" : "CASTS",
				"val" : 3
			}
		},
		"graphics" :
		{
			"animation": "CSULTA.DEF"
		},
		"sound" :
		{
			"attack": "CALFATTK.wav",
			"defend": "CALFDFND.wav",
			"killed": "CALFKILL.wav",
			"move": "CALFMOVE.wav",
			"shoot": "CALFSHOT.wav",
			"wince": "CALFWNCE.wav"
		}
	},
	"naga" :
	{
		"index": 38,
		"level": 6,
		"faction": "tower",
		"abilities" :
		{
			"noRetaliation" :
			{
				"type" : "BLOCKS_RETALIATION"
			}
		},
		"upgrades": ["nagaQueen"],
		"graphics" :
		{
			"animation": "CNAGA.DEF"
		},
		"sound" :
		{
			"attack": "NSENATTK.wav",
			"defend": "NSENDFND.wav",
			"killed": "NSENKILL.wav",
			"move": "NSENMOVE.wav",
			"wince": "NSENWNCE.wav"
		}
	},
	"nagaQueen" :
	{
		"index": 39,
		"level": 6,
		"faction": "tower",
		"abilities" :
		{
			"noRetaliation" :
			{
				"type" : "BLOCKS_RETALIATION"
			}
		},
		"graphics" :
		{
			"animation": "CNAGAG.DEF"
		},
		"sound" :
		{
			"attack": "NGRDATTK.wav",
			"defend": "NGRDDFND.wav",
			"killed": "NGRDKILL.wav",
			"move": "NGRDMOVE.wav",
			"wince": "NGRDWNCE.wav"
		}
	},
	"giant" :
	{
		"index": 40,
		"level": 7,
		"faction": "tower",
		"abilities" :
		{
			"immuneToMind" :
			{
				"type" : "MIND_IMMUNITY"
			}
		},
		"upgrades": ["titan"],
		"graphics" :
		{
			"animation": "CLTITA.DEF"
		},
		"sound" :
		{
			"attack": "LTITATTK.wav",
			"defend": "LTITDFND.wav",
			"killed": "LTITKILL.wav",
			"move": "LTITMOVE.wav",
			"wince": "LTITWNCE.wav"
		}
	},
	"titan" :
	{
		"index": 41,
		"level": 7,
		"faction": "tower",
		"abilities" :
		{
			"immuneToMind" :
			{
				"type" : "MIND_IMMUNITY"
			},
			"hateArchAngels" :
			{
				"type" : "HATE",
				"subtype" : "creature.blackDragon",
				"val" : 50
			}
		},
		"graphics" :
		{
			"animation": "CGTITA.DEF",
			"missile" :
			{
				"projectile": "CPRGTIX.DEF"
			}
		},
		"sound" :
		{
			"attack": "GTITATTK.wav",
			"defend": "GTITDFND.wav",
			"killed": "GTITKILL.wav",
			"move": "GTITMOVE.wav",
			"shoot": "GTITSHOT.wav",
			"wince": "GTITWNCE.wav"
		}
	}
}
',
        "factions" => '{
	"castle" :
	{
		"index" : 0,
		"nativeTerrain": "grass",
		"alignment" : "good",
		"creatureBackground" :
		{
			"120px" : "TPCASCAS",
			"130px" : "CRBKGCAS"
		},
		"puzzleMap" :
		{
			"prefix" : "PUZCAS",
			"pieces" :
			[
				{ "x": 7, "y": 8, "index": 39 },
				{ "x": 7, "y": 30, "index": 41 },
				{ "x": 7, "y": 102, "index": 1 },
				{ "x": 7, "y": 156, "index": 23 },
				{ "x": 7, "y": 202, "index": 6 },
				{ "x": 7, "y": 320, "index": 13 },
				{ "x": 16, "y": 8, "index": 39 },
				{ "x": 22, "y": 406, "index": 2 },
				{ "x": 70, "y": 301, "index": 22 },
				{ "x": 72, "y": 194, "index": 11 },
				{ "x": 101, "y": 332, "index": 8 },
				{ "x": 106, "y": 8, "index": 9 },
				{ "x": 106, "y": 31, "index": 29 },
				{ "x": 114, "y": 60, "index": 7 },
				{ "x": 126, "y": 329, "index": 17 },
				{ "x": 128, "y": 191, "index": 21 },
				{ "x": 152, "y": 347, "index": 27 },
				{ "x": 154, "y": 239, "index": 31 },
				{ "x": 157, "y": 429, "index": 34 },
				{ "x": 166, "y": 470, "index": 4 },
				{ "x": 185, "y": 127, "index": 30 },
				{ "x": 212, "y": 335, "index": 36 },
				{ "x": 214, "y": 191, "index": 48 },
				{ "x": 217, "y": 226, "index": 43 },
				{ "x": 235, "y": 147, "index": 35 },
				{ "x": 245, "y": 77, "index": 16 },
				{ "x": 266, "y": 384, "index": 42 },
				{ "x": 288, "y": 288, "index": 45 },
				{ "x": 298, "y": 8, "index": 26 },
				{ "x": 321, "y": 177, "index": 46 },
				{ "x": 346, "y": 67, "index": 38 },
				{ "x": 354, "y": 459, "index": 20 },
				{ "x": 355, "y": 397, "index": 25 },
				{ "x": 375, "y": 162, "index": 28 },
				{ "x": 382, "y": 255, "index": 32 },
				{ "x": 408, "y": 32, "index": 37 },
				{ "x": 408, "y": 111, "index": 14 },
				{ "x": 421, "y": 147, "index": 19 },
				{ "x": 422, "y": 466, "index": 12 },
				{ "x": 426, "y": 8, "index": 15 },
				{ "x": 436, "y": 238, "index": 24 },
				{ "x": 458, "y": 336, "index": 44 },
				{ "x": 486, "y": 8, "index": 40 },
				{ "x": 487, "y": 144, "index": 33 },
				{ "x": 517, "y": 145, "index": 18 },
				{ "x": 520, "y": 68, "index": 5 },
				{ "x": 524, "y": 234, "index": 10 },
				{ "x": 525, "y": 327, "index": 3 }
			]
		},
		"town" :
		{
			"mapObject" :
			{
				"templates" : {
					"castle" :  { "animation" : "AVCcasx0.def" },
					"citadel" : { "animation" : "AVCcasx0.def" },
					"fort"    : { "animation" : "AVCcasx0.def" },
					"village" : { "animation" : "AVCCAST0.DEF" },
					"capitol" : { "animation" : "AVCCASZ0.DEF" }
				}
			},
			"structures" :
			{
				"extraAnimation": { "animation" : "TBCSEXT2.def", "x" : 46,  "y" : 119 },
				"mageGuild1":     { "animation" : "TBCSMAGE.def", "x" : 707, "y" : 166, "z" : 1, "border" : "TOCSMAG1.bmp", "area" : "TZCSMAG1.bmp" },
				"mageGuild2":     { "animation" : "TBCSMAG2.def", "x" : 706, "y" : 135, "z" : 1, "border" : "TOCSMAG2.bmp", "area" : "TZCSMAG2.bmp" },
				"mageGuild3":     { "animation" : "TBCSMAG3.def", "x" : 704, "y" : 107, "z" : 1, "border" : "TOCSM301.bmp", "area" : "TZCSM301.bmp" },
				"mageGuild4":     { "animation" : "TBCSMAG4.def", "x" : 704, "y" : 76,  "z" : 1, "border" : "TOCSM401.bmp", "area" : "TZCSM401.bmp" },
				"tavern":         { "animation" : "TBCSTVRN.def", "x" : 0,   "y" : 230, "z" : 1, "border" : "TOCSTAV1.bmp", "area" : "TZCSTAV1.bmp" },
				"shipyard":       { "animation" : "TBCSDOCK.def", "x" : 478, "y" : 134, "border" : "TOCSDKMS.bmp", "area" : "TZCSDKMS.bmp" },
				"fort":           { "animation" : "TBCSCSTL.def", "x" : 595, "y" : 66,  "border" : "TOCSCAS1.bmp", "area" : "TZCSCAS1.bmp" },
				"citadel":        { "animation" : "TBCSCAS2.def", "x" : 478, "y" : 66,  "border" : "TOCSCAS2.bmp", "area" : "TZCSCAS2.bmp" },
				"castle":         { "animation" : "TBCSCAS3.def", "x" : 478, "y" : 37,  "border" : "TOCSCAS3.bmp", "area" : "TZCSCAS3.bmp" },
				"villageHall":    { "animation" : "TBCSHALL.def", "x" : 0,   "y" : 209, "border" : "TOCSH101.bmp", "area" : "TZCSH101.bmp" },
				"townHall":       { "animation" : "TBCSHAL2.def", "x" : 0,   "y" : 176, "border" : "TOCSH201.bmp", "area" : "TZCSH201.bmp" },
				"cityHall":       { "animation" : "TBCSHAL3.def", "x" : 0,   "y" : 164, "border" : "TOCSH301.bmp", "area" : "TZCSH301.bmp" },
				"capitol":        { "animation" : "TBCSHAL4.def", "x" : 0,   "y" : 154, "border" : "TOCSH401.bmp", "area" : "TZCSH401.bmp" },
				"marketplace":    { "animation" : "TBCSMARK.def", "x" : 413, "y" : 264, "border" : "TOCSMRK1.bmp", "area" : "TZCSMRK1.bmp" },
				"resourceSilo":   { "animation" : "TBCSSILO.def", "x" : 488, "y" : 228, "border" : "TOCSMRK2.bmp", "area" : "TZCSMRK2.bmp" },
				"blacksmith":     { "animation" : "TBCSBLAK.def", "x" : 213, "y" : 251, "border" : "TOCSBLAK.bmp", "area" : "TZCSBLAK.bmp" },
				"special1":       { "animation" : "TBCSSPEC.def", "x" : 533, "y" : 71,  "border" : "TOCSLT01.bmp", "area" : "TZCSLT01.bmp" },
				"horde1":         { "animation" : "TBCSHRD1.def", "x" : 76,  "y" : 53,  "z" : -1, "border" : "TOCSGR1H.bmp", "area" : "TZCSGR1H.bmp", "hidden" : true },
				"horde1Upgr":     { "animation" : "TBCSHRD2.def", "x" : 76,  "y" : 35,  "z" : -1, "border" : "TOCSGR2H.bmp", "area" : "TZCSGR2H.bmp", "hidden" : true, "builds" : "horde1" },
				"ship":           { "animation" : "TBCSBOAT.def", "x" : 478, "y" : 134, "border" : "TOCSDKMN.bmp", "area" : "TZCSDKMN.bmp", "hidden" : true },
				"special2":       { "animation" : "TBCSEXT0.def", "x" : 384, "y" : 193, "z" : -2, "border" : "TOCSCAVM.bmp", "area" : "TZCSCAVM.bmp" },
				"special3":       { "animation" : "TBCSEXT1.def", "x" : 0,   "y" : 198, "z" :  1, "border" : "TOCSTAV2.bmp", "area" : "TZCSTAV2.bmp" },
				"grail":          { "animation" : "TBCSHOLY.def", "x" : 456, "y" : 109, "z" : -1, "border" : "TOCSHOLY.bmp", "area" : "TZCSHOLY.bmp" },
				"dwellingLvl1":   { "animation" : "TBCSDW_0.def", "x" : 304, "y" : 92,  "border" : "TOCSPIK1.bmp", "area" : "TZCSPIK1.bmp" },
				"dwellingLvl2":   { "animation" : "TBCSDW_1.def", "x" : 360, "y" : 130, "border" : "TOCSCRS1.bmp", "area" : "TZCSCRS1.bmp" },
				"dwellingLvl3":   { "animation" : "TBCSDW_2.def", "x" : 76,  "y" : 57,  "z" : -1, "border" : "TOCSGR1N.bmp", "area" : "TZCSGR1N.bmp" },
				"dwellingLvl4":   { "animation" : "TBCSDW_3.def", "x" : 176, "y" : 101, "border" : "TOCSSWD1.bmp", "area" : "TZCSSWD1.bmp" },
				"dwellingLvl5":   { "animation" : "TBCSDW_4.def", "x" : 563, "y" : 211, "z" : 1,  "border" : "TOCSMON1.bmp", "area" : "TZCSMON1.bmp" },
				"dwellingLvl6":   { "animation" : "TBCSDW_5.def", "x" : 174, "y" : 190, "z" : -1, "border" : "TOCSC101.bmp", "area" : "TZCSCAV1.bmp" },
				"dwellingLvl7":   { "animation" : "TBCSDW_6.def", "x" : 303, "y" : 0,   "z" : -1, "border" : "TOCSANG1.bmp", "area" : "TZCSANG1.bmp" },
				"dwellingUpLvl1": { "animation" : "TBCSUP_0.def", "x" : 304, "y" : 65,  "border" : "TOCSPIK2.bmp", "area" : "TZCSPIK2.bmp" },
				"dwellingUpLvl2": { "animation" : "TBCSUP_1.def", "x" : 360, "y" : 115, "border" : "TOCSCRS2.bmp", "area" : "TZCSCRS2.bmp" },
				"dwellingUpLvl3": { "animation" : "TBCSUP_2.def", "x" : 76,  "y" : 35,  "z" : -1, "border" : "TOCSGR2N.bmp", "area" : "TZCSGR2N.bmp" },
				"dwellingUpLvl4": { "animation" : "TBCSUP_3.def", "x" : 176, "y" : 85,  "border" : "TOCSSWD2.bmp", "area" : "TZCSSWD2.bmp" },
				"dwellingUpLvl5": { "animation" : "TBCSUP_4.def", "x" : 563, "y" : 173, "z" : 1,  "border" : "TOCSMON2.bmp", "area" : "TZCSMON2.bmp" },
				"dwellingUpLvl6": { "animation" : "TBCSUP_5.def", "x" : 160, "y" : 190, "z" : -1, "border" : "TOCSCAV2.bmp", "area" : "TZCSCAV2.bmp" },
				"dwellingUpLvl7": { "animation" : "TBCSUP_6.def", "x" : 303, "y" : 0,   "z" : -1, "border" : "TOCSANG2.bmp", "area" : "TZCSANG2.bmp" }
			},

			"musicTheme" : "music/CstleTown",
			"defaultTavern" : 5,
			"tavernVideo" : "TAVERN.BIK",
			"guildBackground" : "TPMAGE.bmp",
			"townBackground": "TBCSBACK.bmp",
			"guildWindow": "TPMAGECS.bmp",
			"buildingsIcons": "HALLCSTL.DEF",
			"hallBackground": "TPTHBKCS.BMP",
			"hallSlots":
			[
				[ [ "villageHall", "townHall", "cityHall", "capitol" ], [ "fort", "citadel", "castle" ], [ "tavern", "special3" ], [ "blacksmith" ] ],
				[ [ "marketplace", "resourceSilo" ], [ "mageGuild1", "mageGuild2", "mageGuild3", "mageGuild4" ], [ "shipyard", "special1" ] ],
				[ [ "special2" ], [ "horde1", "horde1Upgr" ] ],
				[ [ "dwellingLvl1", "dwellingUpLvl1" ], [ "dwellingLvl2", "dwellingUpLvl2" ], [ "dwellingLvl3", "dwellingUpLvl3" ], [ "dwellingLvl4", "dwellingUpLvl4" ] ],
				[ [ "dwellingLvl5", "dwellingUpLvl5" ], [ "dwellingLvl6", "dwellingUpLvl6" ], [ "dwellingLvl7", "dwellingUpLvl7" ] ]
			],
			"creatures" :
			[
				["pikeman", "halberdier"],
				["archer", "marksman"],
				["griffin", "royalGriffin"],
				["swordsman", "crusader"],
				["monk", "zealot"],
				["cavalier", "champion"],
				["angel", "archangel"]
			],
			"horde" : [ 2, -1 ],
			"mageGuild" : 4,
			"warMachine" : "ballista",
			"moatDamage" : 70,
			"moatHexes" : [ 11, 28, 44, 61, 77, 111, 129, 146, 164, 181 ],


			"buildings" :
			{
				"mageGuild1":     { "id" : 0 },
				"mageGuild2":     { "id" : 1,  "upgrades" : "mageGuild1" },
				"mageGuild3":     { "id" : 2,  "upgrades" : "mageGuild2" },
				"mageGuild4":     { "id" : 3,  "upgrades" : "mageGuild3" },
				"tavern":         { "id" : 5 },
				"shipyard":       { "id" : 6 },
				"fort":           { "id" : 7 },
				"citadel":        { "id" : 8,  "upgrades" : "fort" },
				"castle":         { "id" : 9,  "upgrades" : "citadel" },
				"villageHall":    { "id" : 10, "mode" : "auto", "produce": { "gold": 500 } },
				"townHall":       { "id" : 11, "upgrades" : "villageHall", "requires" : [ "tavern" ], "produce": { "gold": 1000 } },
				"cityHall":       { "id" : 12, "upgrades" : "townHall", "requires" : [ "allOf", [ "mageGuild1" ], [ "marketplace" ], [ "blacksmith" ] ], "produce": { "gold": 2000 } },
				"capitol":        { "id" : 13, "upgrades" : "cityHall", "requires" : [ "castle" ], "produce": { "gold": 4000 } },
				"marketplace":    { "id" : 14 },
				"resourceSilo":   { "id" : 15, "requires" : [ "marketplace" ], "produce": { "ore": 1, "wood": 1 } },
				"blacksmith":     { "id" : 16 },

				"special1":       { "id" : 17, "requires" : [ "shipyard" ] },
				"horde1":         { "id" : 18, "upgrades" : "dwellingLvl3" },
				"horde1Upgr":     { "id" : 19, "upgrades" : "dwellingUpLvl3", "requires" : [ "horde1" ], "mode" : "auto" },
				"ship":           { "id" : 20, "upgrades" : "shipyard" },
				"special2":       { "id" : 21, "requires" : [ "dwellingLvl4" ] },
				"special3":       { "id" : 22, "upgrades" : "tavern" },
				"grail":          { "id" : 26, "mode" : "grail", "produce": { "gold": 5000 }},

				"dwellingLvl1":   { "id" : 30, "requires" : [ "fort" ] },
				"dwellingLvl2":   { "id" : 31, "requires" : [ "dwellingLvl1" ] },
				"dwellingLvl3":   { "id" : 32, "requires" : [ "dwellingLvl4" ] },
				"dwellingLvl4":   { "id" : 33, "requires" : [ "allOf", [ "blacksmith" ], [ "dwellingLvl1" ] ] },
				"dwellingLvl5":   { "id" : 34, "requires" : [ "allOf", [ "mageGuild1" ], [ "dwellingLvl4" ] ] },
				"dwellingLvl6":   { "id" : 35, "requires" : [ "special2" ] },
				"dwellingLvl7":   { "id" : 36, "requires" : [ "dwellingLvl5" ] },

				"dwellingUpLvl1": { "id" : 37, "upgrades" : "dwellingLvl1" },
				"dwellingUpLvl2": { "id" : 38, "upgrades" : "dwellingLvl2" },
				"dwellingUpLvl3": { "id" : 39, "upgrades" : "dwellingLvl3" },
				"dwellingUpLvl4": { "id" : 40, "upgrades" : "dwellingLvl4" },
				"dwellingUpLvl5": { "id" : 41, "upgrades" : "dwellingLvl5" },
				"dwellingUpLvl6": { "id" : 42, "upgrades" : "dwellingLvl6" },
				"dwellingUpLvl7": { "id" : 43, "upgrades" : "dwellingLvl7" },

				"horde2" : null,
				"horde2Upgr" : null,
				"mageGuild5" : null,
				"special4" : null
			},

			"siege" :
			{
				"shooter" : "archer",
				"imagePrefix" : "SGCS",
				"gate" :
				{
					"arch" : { "x" : 477, "y" : 238 },
					"gate" : { "x" : 399, "y" : 274 }
				},
				"moat" :
				{
					"bank" : { "x" : 403, "y" : 80 },
					"moat" : { "x" : 410, "y" : 90 }
				},
				"static" :
				{
					"background" : { "x" : 600, "y" : 49 },
					"bottom" : { "x" : 512, "y" : 347 },
					"top" : { "x" : 489, "y" : 79 }
				},
				"towers" :
				{
					"bottom" :
					{
						"battlement" : { "x" : 602, "y" : 500 },
						"creature" : { "x" : 394, "y" : 299	},
						"tower" : { "x" : 602, "y" : 500 }
					},
					"keep" :
					{
						"battlement" : { "x" : 720, "y" : 158 },
						"creature" : { "x" : 526, "y" : -29 },
						"tower" : { "x" : 720, "y" : 158 }
					},
					"top" :
					{
						"battlement" : { "x" : 557, "y" : 24 },
						"creature" : { "x" : 342, "y" : -187 },
						"tower" : { "x" : 569, "y" : 35 }
					}
				},
				"walls" :
				{
					"bottom" : { "x" : 528, "y" : 350 },
					"bottomMid" : { "x" : 469, "y" : 291 },
					"upper" : { "x" : 524, "y" : 32 },
					"upperMid" : { "x" : 470, "y" : 127 }
				}
			}
		}
	},
	"conflux" :
	{
		"index" : 8,
		"nativeTerrain": "grass",
		"alignment" : "neutral",
		"creatureBackground" :
		{
			"120px" : "TPCASELE",
			"130px" : "CRBKGELE"
		},
		"puzzleMap" :
		{
			"prefix" : "PUZELE",
			"pieces" :
			[
				{ "x": 7, "y": 8, "index": 1 },
				{ "x": 7, "y": 54, "index": 6 },
				{ "x": 7, "y": 227, "index": 16 },
				{ "x": 7, "y": 426, "index": 9 },
				{ "x": 15, "y": 48, "index": 22 },
				{ "x": 45, "y": 375, "index": 32 },
				{ "x": 48, "y": 249, "index": 28 },
				{ "x": 86, "y": 500, "index": 15 },
				{ "x": 93, "y": 55, "index": 37 },
				{ "x": 99, "y": 245, "index": 7 },
				{ "x": 101, "y": 354, "index": 27 },
				{ "x": 104, "y": 175, "index": 35 },
				{ "x": 107, "y": 14, "index": 21 },
				{ "x": 124, "y": 296, "index": 38 },
				{ "x": 134, "y": 8, "index": 4 },
				{ "x": 181, "y": 466, "index": 26 },
				{ "x": 182, "y": 200, "index": 40 },
				{ "x": 189, "y": 381, "index": 33 },
				{ "x": 192, "y": 40, "index": 8 },
				{ "x": 192, "y": 364, "index": 11 },
				{ "x": 201, "y": 124, "index": 48 },
				{ "x": 203, "y": 330, "index": 42 },
				{ "x": 228, "y": 293, "index": 45 },
				{ "x": 235, "y": 39, "index": 25 },
				{ "x": 242, "y": 335, "index": 44 },
				{ "x": 275, "y": 488, "index": 5 },
				{ "x": 278, "y": 202, "index": 46 },
				{ "x": 290, "y": 80, "index": 13 },
				{ "x": 291, "y": 115, "index": 20 },
				{ "x": 308, "y": 225, "index": 43 },
				{ "x": 310, "y": 158, "index": 39 },
				{ "x": 312, "y": 24, "index": 12 },
				{ "x": 317, "y": 8, "index": 2 },
				{ "x": 323, "y": 443, "index": 10 },
				{ "x": 327, "y": 253, "index": 41 },
				{ "x": 330, "y": 36, "index": 36 },
				{ "x": 349, "y": 330, "index": 34 },
				{ "x": 349, "y": 426, "index": 17 },
				{ "x": 407, "y": 191, "index": 47 },
				{ "x": 421, "y": 430, "index": 31 },
				{ "x": 428, "y": 246, "index": 23 },
				{ "x": 467, "y": 90, "index": 29 },
				{ "x": 481, "y": 13, "index": 30 },
				{ "x": 489, "y": 346, "index": 18 },
				{ "x": 504, "y": 113, "index": 19 },
				{ "x": 504, "y": 190, "index": 24 },
				{ "x": 507, "y": 8, "index": 14 },
				{ "x": 542, "y": 436, "index": 3 }
			]
		},
		"town" :
		{
			"mapObject" :
			{
				"templates" : {
					"castle" :  { "animation" : "avchforx.def" },
					"citadel" : { "animation" : "avchforx.def" },
					"fort"    : { "animation" : "avchforx.def" },
					"village" : { "animation" : "AVCHFOR0.DEF" },
					"capitol" : { "animation" : "AVCHFORZ.DEF" }
				}
			},
			"structures" :
			{
				"extraAnimation2":{ "animation" : "TBELEXT5.def", "x" : 682, "y" : 183,  "z" : -1 },
				"extraAnimation": { "animation" : "TBELEXT1.def", "x" : 23,  "y" : 218 },
				"mageGuild1":     { "animation" : "TBELMAGE.def", "x" : 206, "y" : 58,  "z" : 4,  "border" : "TOELMAGE.bmp", "area" : "TZELMAGE.bmp" },
				"mageGuild2":     { "animation" : "TBELMAG2.def", "x" : 206, "y" : 58,  "z" : 4,  "border" : "TOELMAG2.bmp", "area" : "TZELMAG2.bmp" },
				"mageGuild3":     { "animation" : "TBELMAG3.def", "x" : 206, "y" : 58,  "z" : 4,  "border" : "TOELMAG3.bmp", "area" : "TZELMAG3.bmp" },
				"mageGuild4":     { "animation" : "TBELMAG4.def", "x" : 206, "y" : 58,  "z" : 4,  "border" : "TOELMAG4.bmp", "area" : "TZELMAG4.bmp" },
				"mageGuild5":     { "animation" : "TBELMAG5.def", "x" : 206, "y" : 58,  "z" : 4,  "border" : "TOELMAG5.bmp", "area" : "TZELMAG5.bmp" },
				"tavern":         { "animation" : "TBELTVRN.def", "x" : 553, "y" : 203, "z" : 1,  "border" : "TOELTVRN.bmp", "area" : "TZELTVRN.bmp" },
				"shipyard":       { "animation" : "TBELDOCK.def", "x" : 239, "y" : 215, "z" : 2,  "border" : "TOELDOCK.bmp", "area" : "TZELDOCK.bmp" },
				"fort":           { "animation" : "TBELCSTL.def", "x" : 349, "y" : 101, "z" : -1, "border" : "TOELCSTL.bmp", "area" : "TZELCSTL.bmp" },
				"citadel":        { "animation" : "TBELCAS2.def", "x" : 349, "y" : 101, "z" : -1, "border" : "TOELCAS2.bmp", "area" : "TZELCAS2.bmp" },
				"castle":         { "animation" : "TBELCAS3.def", "x" : 349, "y" : 101, "z" : -1, "border" : "TOELCAS3.bmp", "area" : "TZELCAS3.bmp" },
				"villageHall":    { "animation" : "TBELHALL.def", "x" : -1,  "y" : 164, "z" : 5,  "border" : "TOELHALL.bmp", "area" : "TZELHALL.bmp" },
				"townHall":       { "animation" : "TBELHAL2.def", "x" : 0,   "y" : 165, "z" : 5,  "border" : "TOELHAL2.bmp", "area" : "TZELHAL2.bmp" },
				"cityHall":       { "animation" : "TBELHAL3.def", "x" : 0,   "y" : 165, "z" : 5,  "border" : "TOELHAL3.bmp", "area" : "TZELHAL3.bmp" },
				"capitol":        { "animation" : "TBELHAL4.def", "x" : 0,   "y" : 164, "z" : 5,  "border" : "TOELHAL4.bmp", "area" : "TZELHAL4.bmp" },
				"marketplace":    { "animation" : "TBELMARK.def", "x" : 347, "y" : 216, "z" : 4,  "border" : "TOELMARK.bmp", "area" : "TZELMARK.bmp" },
				"resourceSilo":   { "animation" : "TBELSILO.def", "x" : 372, "y" : 171, "z" : 2,  "border" : "TOELSILO.bmp", "area" : "TZELSILO.bmp" },
				"blacksmith":     { "animation" : "TBELBLAK.def", "x" : 449, "y" : 151, "z" : 1,  "border" : "TOELBLAK.bmp", "area" : "TZELBLAK.bmp" },
				"special1":       { "animation" : "TBELSPEC.def", "x" : 284, "y" : 246, "z" : 4,  "border" : "TOELSPEC.bmp", "area" : "TZELSPEC.bmp" },
				"horde1":         { "animation" : "TBELHRD1.def", "x" : 689, "y" : 250, "border" : "TOELHRD1.bmp", "area" : "TZELHRD1.bmp", "hidden" : true },
				"horde1Upgr":     { "animation" : "TBELHRD2.def", "x" : 689, "y" : 250, "border" : "TOELHRD2.bmp", "area" : "TZELHRD2.bmp", "hidden" : true, "builds" : "horde1" },
				"ship":           { "animation" : "TBELBOAT.def", "x" : 239, "y" : 215, "z" : 2,  "border" : "TOELBOAT.bmp", "area" : "TZELBOAT.bmp", "hidden" : true },
				"special2":       { "animation" : "TBELEXT6.def", "x" : 104, "y" : 170, "z" : 3,  "border" : "TOELEXT6.bmp", "area" : "TZELEXT6.bmp" },
				"grail":          { "animation" : "TBELHOLY.def", "x" : 307, "y" : 2,   "border" : "TOELHOLY.bmp", "area" : "TZELHOLY.bmp" },
				"extraTownHall":  { "animation" : "TBELEXT2.def", "x" : 232, "y" : 205 },
				"extraCityHall":  { "animation" : "TBELEXT3.def", "x" : 516, "y" : 223, "z" : 1 },
				"extraCapitol":   { "animation" : "TBELEXT4.def", "x" : 0,   "y" : 252, "z" : 6 },
				"dwellingLvl1":   { "animation" : "TBELDW_0.def", "x" : 689, "y" : 250, "border" : "TOELDW_0.bmp", "area" : "TZELDW_0.bmp" },
				"dwellingLvl2":   { "animation" : "TBELDW_1.def", "x" : 630, "y" : 50,  "border" : "TOELDW_1.bmp", "area" : "TZELDW_1.bmp" },
				"dwellingLvl3":   { "animation" : "TBELDW_2.def", "x" : 709, "y" : 210, "z" : -1, "border" : "TOELDW_2.bmp", "area" : "TZELDW_2.bmp" },
				"dwellingLvl4":   { "animation" : "TBELDW_3.def", "x" : 108, "y" : 131, "z" : -1, "border" : "TOELDW_3.bmp", "area" : "TZELDW_3.bmp" },
				"dwellingLvl5":   { "animation" : "TBELDW_4.def", "x" : 264, "y" : 168, "z" : -1, "border" : "TOELDW_4.bmp", "area" : "TZELDW_4.bmp" },
				"dwellingLvl6":   { "animation" : "TBELDW_5.def", "x" : 394, "y" : 283, "z" : 2,  "border" : "TOELDW_5.bmp", "area" : "TZELDW_5.bmp" },
				"dwellingLvl7":   { "animation" : "TBELDW_6.def", "x" : 43,  "y" : 16,  "z" : -2, "border" : "TOELDW_6.bmp", "area" : "TZELDW_6.bmp" },
				"dwellingUpLvl1": { "animation" : "TBELUP_0.def", "x" : 689, "y" : 250, "border" : "TOELUP_0.bmp", "area" : "TZELUP_0.bmp" },
				"dwellingUpLvl2": { "animation" : "TBELUP_1.def", "x" : 630, "y" : 50,  "border" : "TOELUP_1.bmp", "area" : "TZELUP_1.bmp" },
				"dwellingUpLvl3": { "animation" : "TBELUP_2.def", "x" : 709, "y" : 210, "z" : -1, "border" : "TOELUP_2.bmp", "area" : "TZELUP_2.bmp" },
				"dwellingUpLvl4": { "animation" : "TBELUP_3.def", "x" : 108, "y" : 131, "z" : -1, "border" : "TOELUP_3.bmp", "area" : "TZELUP_3.bmp" },
				"dwellingUpLvl5": { "animation" : "TBELUP_4.def", "x" : 264, "y" : 168, "z" : -1, "border" : "TOELUP_4.bmp", "area" : "TZELUP_4.bmp" },
				"dwellingUpLvl6": { "animation" : "TBELUP_5.def", "x" : 394, "y" : 283, "z" : 2,  "border" : "TOELUP_5.bmp", "area" : "TZELUP_5.bmp" },
				"dwellingUpLvl7": { "animation" : "TBELUP_6.def", "x" : 43,  "y" : 0,   "z" : -2, "border" : "TOELUP_6.bmp", "area" : "TZELUP_6.bmp" }
			},

			"musicTheme" : "music/ElemTown",
			"defaultTavern" : 5,
			"tavernVideo" : "TAVERN.BIK",
			"guildBackground" : "TPMAGE.bmp",
			"townBackground": "TBELBACK.bmp",
			"guildWindow": "TPMAGEEL.bmp",
			"buildingsIcons": "HALLELEM.DEF",
			"hallBackground": "TPTHBKFR.BMP",
			"hallSlots":
			[
				[ [ "villageHall", "townHall", "cityHall", "capitol" ], [ "fort", "citadel", "castle" ], [ "tavern" ], [ "blacksmith" ] ],
				[ [ "marketplace", "resourceSilo" ], [ "mageGuild1", "mageGuild2", "mageGuild3", "mageGuild4", "mageGuild5" ], [ "shipyard" ] ],
				[ [ "special2" ], [ "special1" ], [ "horde1", "horde1Upgr" ] ],
				[ [ "dwellingLvl1", "dwellingUpLvl1" ], [ "dwellingLvl2", "dwellingUpLvl2" ], [ "dwellingLvl3", "dwellingUpLvl3" ], [ "dwellingLvl4", "dwellingUpLvl4" ] ],
				[ [ "dwellingLvl5", "dwellingUpLvl5" ], [ "dwellingLvl6", "dwellingUpLvl6" ], [ "dwellingLvl7", "dwellingUpLvl7" ] ]
			],
			"creatures" :
			[
				["pixie", "sprite"],
				["airElemental", "stormElemental"],
				["waterElemental", "iceElemental"],
				["fireElemental", "energyElemental"],
				["earthElemental", "magmaElemental"],
				["psychicElemental", "magicElemental"],
				["firebird", "phoenix"]
			],
			"horde" : [ 0, -1 ],
			"mageGuild" : 5,
			"primaryResource" : "mercury",
			"warMachine" : "ballista",
			"moatDamage" : 70,
			"moatHexes" : [ 11, 28, 44, 61, 77, 111, 129, 146, 164, 181 ],

			"buildings" :
			{
				"mageGuild1":     { "id" : 0 },
				"mageGuild2":     { "id" : 1,  "upgrades" : "mageGuild1" },
				"mageGuild3":     { "id" : 2,  "upgrades" : "mageGuild2" },
				"mageGuild4":     { "id" : 3,  "upgrades" : "mageGuild3" },
				"mageGuild5":     { "id" : 4,  "upgrades" : "mageGuild4" },
				"tavern":         { "id" : 5 },
				"shipyard":       { "id" : 6 },
				"fort":           { "id" : 7 },
				"citadel":        { "id" : 8,  "upgrades" : "fort" },
				"castle":         { "id" : 9,  "upgrades" : "citadel" },
				"villageHall":    { "id" : 10, "mode" : "auto", "produce": { "gold": 500 } },
				"townHall":       { "id" : 11, "upgrades" : "villageHall", "requires" : [ "tavern" ], "produce": { "gold": 1000 } },
				"cityHall":       { "id" : 12, "upgrades" : "townHall", "requires" : [ "allOf", [ "mageGuild1" ], [ "marketplace" ], [ "blacksmith" ] ], "produce": { "gold": 2000 } },
				"capitol":        { "id" : 13, "upgrades" : "cityHall", "requires" : [ "castle" ], "produce": { "gold": 4000 } },
				"marketplace":    { "id" : 14 },
				"resourceSilo":   { "id" : 15, "requires" : [ "marketplace" ], "produce": { "mercury": 1 } },
				"blacksmith":     { "id" : 16 },

				"special1":       { "id" : 17, "requires" : [ "marketplace" ] },
				"horde1":         { "id" : 18, "upgrades" : "dwellingLvl1" },
				"horde1Upgr":     { "id" : 19, "upgrades" : "dwellingUpLvl1", "requires" : [ "horde1" ], "mode" : "auto" },
				"ship":           { "id" : 20, "upgrades" : "shipyard" },
				"special2":       { "id" : 21, "requires" : [ "mageGuild1" ] },
				"grail":          { "id" : 26, "mode" : "grail", "produce": { "gold": 5000 }},
				"extraTownHall":  { "id" : 27, "requires" : [ "townHall" ], "mode" : "auto" },
				"extraCityHall":  { "id" : 28, "requires" : [ "cityHall" ], "mode" : "auto" },
				"extraCapitol":   { "id" : 29, "requires" : [ "capitol" ], "mode" : "auto" },

				"dwellingLvl1":   { "id" : 30, "requires" : [ "fort" ] },
				"dwellingLvl2":   { "id" : 31, "requires" : [ "allOf", [ "dwellingLvl1" ], [ "mageGuild1" ] ] },
				"dwellingLvl3":   { "id" : 32, "requires" : [ "allOf", [ "dwellingLvl1" ], [ "mageGuild1" ] ] },
				"dwellingLvl4":   { "id" : 33, "requires" : [ "dwellingLvl2" ] },
				"dwellingLvl5":   { "id" : 34, "requires" : [ "dwellingLvl3" ] },
				"dwellingLvl6":   { "id" : 35, "requires" : [ "allOf", [ "dwellingLvl4" ], [ "dwellingLvl5" ] ] },
				"dwellingLvl7":   { "id" : 36, "requires" : [ "dwellingLvl6" ] },

				"dwellingUpLvl1": { "id" : 37, "upgrades" : "dwellingLvl1" },
				"dwellingUpLvl2": { "id" : 38, "upgrades" : "dwellingLvl2" },
				"dwellingUpLvl3": { "id" : 39, "upgrades" : "dwellingLvl3" },
				"dwellingUpLvl4": { "id" : 40, "upgrades" : "dwellingLvl4", "requires" : [ "dwellingLvl2" ] },
				"dwellingUpLvl5": { "id" : 41, "upgrades" : "dwellingLvl5" },
				"dwellingUpLvl6": { "id" : 42, "upgrades" : "dwellingLvl6", "requires" : [ "mageGuild2" ] },
				"dwellingUpLvl7": { "id" : 43, "upgrades" : "dwellingLvl7" },

				"horde2" : null,
				"horde2Upgr" : null,
				"special3" : null,
				"special4" : null
			},

			"siege" :
			{
				"shooter" : "stormElemental",
				"imagePrefix" : "SGEL",
				"gate" :
				{
					"arch" : { "x" : 486, "y" : 232 },
					"gate" : { "x" : 408, "y" : 254 }
				},
				"moat" :
				{
					"bank" : { "x" : 407, "y" : 80 },
					"moat" : { "x" : 407, "y" : 80 }
				},
				"static" :
				{
					"background" : { "x" : 600, "y" : 50 },
					"bottom" : { "x" : 509, "y" : 346 },
					"top" : { "x" : 490, "y" : 97 }
				},
				"towers" :
				{
					"bottom" :
					{
						"battlement" : { "x" : 608, "y" : 505 },
						"creature" : { "x" : 382, "y" : 308 },
						"tower" : { "x" : 608, "y" : 505 }
					},
					"keep" :
					{
						"battlement" : { "x" : 736, "y" : 159 },
						"creature" : { "x" : 529, "y" : -42 },
						"tower" : { "x" : 736, "y" : 159 }
					},
					"top" :
					{
						"battlement" : { "x" : 576, "y" : 28 },
						"creature" : { "x" : 341, "y" : -162 },
						"tower" : { "x" : 576, "y" : 28 }
					}
				},
				"walls" :
				{
					"bottom" : { "x" : 509, "y" : 346 },
					"bottomMid" : { "x" : 468, "y" : 299 },
					"upper" : { "x" : 521, "y" : 41 },
					"upperMid" : { "x" : 471, "y" : 147 }
				}
			}
		}
	},
	"dungeon" :
	{
		"index" : 5,
		"nativeTerrain": "subterra",
		"alignment" : "evil",
		"creatureBackground" :
		{
			"120px" : "TPCASDUN",
			"130px" : "CRBKGDUN"
		},
		"puzzleMap" :
		{
			"prefix" : "PUZDUN",
			"pieces" :
			[
				{ "x": 7, "y": 8, "index": 31 },
				{ "x": 7, "y": 125, "index": 1 },
				{ "x": 7, "y": 353, "index": 33 },
				{ "x": 7, "y": 394, "index": 6 },
				{ "x": 30, "y": 101, "index": 36 },
				{ "x": 33, "y": 219, "index": 16 },
				{ "x": 57, "y": 171, "index": 13 },
				{ "x": 62, "y": 8, "index": 47 },
				{ "x": 63, "y": 90, "index": 41 },
				{ "x": 83, "y": 471, "index": 10 },
				{ "x": 94, "y": 117, "index": 21 },
				{ "x": 99, "y": 8, "index": 5 },
				{ "x": 113, "y": 258, "index": 32 },
				{ "x": 156, "y": 146, "index": 28 },
				{ "x": 165, "y": 288, "index": 42 },
				{ "x": 172, "y": 388, "index": 44 },
				{ "x": 177, "y": 36, "index": 39 },
				{ "x": 194, "y": 235, "index": 46 },
				{ "x": 204, "y": 502, "index": 3 },
				{ "x": 236, "y": 320, "index": 23 },
				{ "x": 238, "y": 8, "index": 20 },
				{ "x": 245, "y": 75, "index": 25 },
				{ "x": 247, "y": 396, "index": 29 },
				{ "x": 247, "y": 459, "index": 14 },
				{ "x": 253, "y": 152, "index": 48 },
				{ "x": 301, "y": 233, "index": 43 },
				{ "x": 323, "y": 8, "index": 12 },
				{ "x": 323, "y": 178, "index": 45 },
				{ "x": 328, "y": 342, "index": 30 },
				{ "x": 329, "y": 428, "index": 19 },
				{ "x": 339, "y": 8, "index": 26 },
				{ "x": 357, "y": 141, "index": 27 },
				{ "x": 374, "y": 8, "index": 15 },
				{ "x": 374, "y": 236, "index": 34 },
				{ "x": 392, "y": 439, "index": 35 },
				{ "x": 400, "y": 291, "index": 40 },
				{ "x": 401, "y": 103, "index": 18 },
				{ "x": 422, "y": 381, "index": 37 },
				{ "x": 436, "y": 8, "index": 17 },
				{ "x": 438, "y": 336, "index": 24 },
				{ "x": 449, "y": 131, "index": 9 },
				{ "x": 453, "y": 161, "index": 11 },
				{ "x": 471, "y": 267, "index": 38 },
				{ "x": 477, "y": 64, "index": 22 },
				{ "x": 480, "y": 456, "index": 8 },
				{ "x": 485, "y": 8, "index": 2 },
				{ "x": 536, "y": 197, "index": 4 },
				{ "x": 541, "y": 22, "index": 7 }
			]
		},
		"town" :
		{
			"mapObject" :
			{
				"templates" : {
					"castle" :  { "animation" : "AVCdunx0.def" },
					"citadel" : { "animation" : "AVCdunx0.def" },
					"fort"    : { "animation" : "AVCdunx0.def" },
					"village" : { "animation" : "AVCDUNG0.DEF" },
					"capitol" : { "animation" : "AVCDUNZ0.DEF" }
				}
			},
			"structures" :
			{
				"mageGuild1":     { "animation" : "TBDNMAGE.def", "x" : 164, "y" : 119, "z" : -1, "border" : "TODMAG1.bmp",  "area" : "TZDMAG1.bmp" },
				"mageGuild2":     { "animation" : "TBDNMAG2.def", "x" : 164, "y" : 97,  "z" : -1, "border" : "TODMAG2.bmp",  "area" : "TZDMAG2.bmp" },
				"mageGuild3":     { "animation" : "TBDNMAG3.def", "x" : 164, "y" : 77,  "z" : -1, "border" : "TODMAG3.bmp",  "area" : "TZDMAG3.bmp" },
				"mageGuild4":     { "animation" : "TBDNMAG4.def", "x" : 164, "y" : 61,  "z" : -1, "border" : "TODMAG4.bmp",  "area" : "TZDMAG4.bmp" },
				"mageGuild5":     { "animation" : "TBDNMAG5.def", "x" : 164, "y" : 15,  "z" : -1, "border" : "TODMAG5.bmp",  "area" : "TZDMAG5.bmp" },
				"tavern":         { "animation" : "TBDNTVRN.def", "x" : 211, "y" : 297, "border" : "TODTAV.bmp",   "area" : "TZDTAV.bmp" },
				"fort":           { "animation" : "TBDNCSTL.def", "x" : 363, "y" : 87,  "z" : 2,  "border" : "TODCAS1.bmp",  "area" : "TZDCAS1.bmp" },
				"citadel":        { "animation" : "TBDNCAS2.def", "x" : 363, "y" : 87,  "z" : 2,  "border" : "TODCAS2.bmp",  "area" : "TZDCAS2.bmp" },
				"castle":         { "animation" : "TBDNCAS3.def", "x" : 363, "y" : 87,  "z" : 2,  "border" : "TODCAS3.bmp",  "area" : "TZDCAS3.bmp" },
				"villageHall":    { "animation" : "TBDNHALL.def", "x" : 0,   "y" : 234, "border" : "TODHALL1.bmp", "area" : "TZDHALL1.bmp" },
				"townHall":       { "animation" : "TBDNHAL2.def", "x" : 0,   "y" : 223, "border" : "TODHALL2.bmp", "area" : "TZDHALL2.bmp" },
				"cityHall":       { "animation" : "TBDNHAL3.def", "x" : 0,   "y" : 223, "border" : "TODHALL3.bmp", "area" : "TZDHALL3.bmp" },
				"capitol":        { "animation" : "TBDNHAL4.def", "x" : 0,   "y" : 203, "z" : -1, "border" : "TODHALL4.bmp", "area" : "TZDHALL4.bmp" },
				"marketplace":    { "animation" : "TBDNMARK.def", "x" : 590, "y" : 318, "z" : -2, "border" : "TODMARK.bmp",  "area" : "TZDMARK.bmp" },
				"resourceSilo":   { "animation" : "TBDNSILO.def", "x" : 624, "y" : 335, "z" : 1,  "border" : "TODSILO.bmp",  "area" : "TZDSILO.bmp" },
				"blacksmith":     { "animation" : "TBDNBLAK.def", "x" : 544, "y" : 248, "z" : -3, "border" : "TODSMITH.bmp", "area" : "TZDSMITH.bmp" },
				"special1":       { "animation" : "TBDNSPEC.def", "x" : 746, "y" : 294, "z" : 1,  "border" : "TODART.bmp",   "area" : "TZDART.bmp" },
				"horde1":         { "animation" : "TBDNHRD1.def", "x" : 0,   "y" : 326, "z" : 2,  "border" : "TODTR1HA.bmp", "area" : "TZDTR1HA.bmp", "hidden" : true },
				"horde1Upgr":     { "animation" : "TBDNHRD2.def", "x" : 0,   "y" : 300, "z" : 2,  "border" : "TODTR2HA.bmp", "area" : "TZDTR2HA.bmp", "hidden" : true, "builds" : "horde1" },
				"special2":       { "animation" : "TBDNEXT0.def", "x" : 131, "y" : 26 , "border" : "TODVOR1A.bmp", "area" : "TZDVOR1A.bmp" },
				"special3":       { "animation" : "TBDNEXT1.def", "x" : 687, "y" : 177, "border" : "TODPORTA.bmp", "area" : "TZDPORTA.bmp" },
				"special4":       { "animation" : "TBDNEXT2.def", "x" : 313, "y" : 298, "border" : "TODACAD.bmp",  "area" : "TZDACAD.bmp" },
				"grail":          { "animation" : "TBDNHOLY.def", "x" : 562, "y" : 24,  "z" : 1,  "border" : "TODHOLY.bmp",  "area" : "TZDHOLY.bmp" },
				"dwellingLvl1":   { "animation" : "TBDNDW_0.def", "x" : 0,   "y" : 326, "z" : 2,  "border" : "TODTRG1A.bmp", "area" : "TZDTRG1A.bmp" },
				"dwellingLvl2":   { "animation" : "TBDNDW_1.def", "x" : 0,   "y" : 26,  "border" : "TODHAR1.bmp",  "area" : "TZDHAR1.bmp" },
				"dwellingLvl3":   { "animation" : "TBDNDW_2.def", "x" : 118, "y" : 308, "z" : 1,  "border" : "TODBEH1A.bmp", "area" : "TZDBEH1A.bmp" },
				"dwellingLvl4":   { "animation" : "TBDNDW_3.def", "x" : 300, "y" : 29,  "z" : -1, "border" : "TODMED1.bmp",  "area" : "TZDMED1.bmp" },
				"dwellingLvl5":   { "animation" : "TBDNDW_4.def", "x" : 551, "y" : 186, "z" : 1,  "border" : "TODMIN1.bmp",  "area" : "TZDMIN1.bmp" },
				"dwellingLvl6":   { "animation" : "TBDNDW_5.def", "x" : 270, "y" : 253, "z" : -1, "border" : "TODMAN1.bmp",  "area" : "TZDMAN1.bmp" },
				"dwellingLvl7":   { "animation" : "TBDNDW_6.def", "x" : 550, "y" : 0,   "z" : -1, "border" : "TODDRA1A.bmp", "area" : "TZDDRA1A.bmp" },
				"dwellingUpLvl1": { "animation" : "TBDNUP_0.def", "x" : 0,   "y" : 300, "z" : 2,  "border" : "TODTRG2A.bmp", "area" : "TZDTRG2A.bmp" },
				"dwellingUpLvl2": { "animation" : "TBDNUP_1.def", "x" : 0,   "y" : 26,  "border" : "TODHAR2.bmp",  "area" : "TZDHAR2.bmp" },
				"dwellingUpLvl3": { "animation" : "TBDNUP_2.def", "x" : 118, "y" : 256, "z" : 1,  "border" : "TODBEH2A.bmp", "area" : "TZDBEH2A.bmp" },
				"dwellingUpLvl4": { "animation" : "TBDNUP_3.def", "x" : 300, "y" : 29,  "z" : -1, "border" : "TODMED2.bmp",  "area" : "TZDMED2.bmp" },
				"dwellingUpLvl5": { "animation" : "TBDNUP_4.def", "x" : 519, "y" : 172, "z" : 1,  "border" : "TODMIN2.bmp",  "area" : "TZDMIN2.bmp" },
				"dwellingUpLvl6": { "animation" : "TBDNUP_5.def", "x" : 270, "y" : 253, "z" : -1, "border" : "TODMAN2.bmp",  "area" : "TZDMAN2.bmp" },
				"dwellingUpLvl7": { "animation" : "TBDNUP_6.def", "x" : 550, "y" : 0,   "z" : -1, "border" : "TODDRA2A.bmp", "area" : "TZDDRA2A.bmp" }
			},

			"musicTheme" : "music/Dungeon",
			"defaultTavern" : 5,
			"tavernVideo" : "TAVERN.BIK",
			"guildBackground" : "TPMAGE.bmp",
			"townBackground": "TBDNBACK.bmp",
			"guildWindow": "TPMAGEDN.bmp",
			"buildingsIcons": "HALLDUNG.DEF",
			"hallBackground": "TPTHBKDG.BMP",
			"hallSlots":
			[
				[ [ "villageHall", "townHall", "cityHall", "capitol" ], [ "fort", "citadel", "castle" ], [ "tavern" ], [ "blacksmith" ] ],
				[ [ "marketplace", "resourceSilo" ], [ "mageGuild1", "mageGuild2", "mageGuild3", "mageGuild4", "mageGuild5" ], [ "special2" ], [ "special3" ] ],
				[ [ "special1" ], [ "special4" ], [ "horde1", "horde1Upgr" ] ],
				[ [ "dwellingLvl1", "dwellingUpLvl1" ], [ "dwellingLvl2", "dwellingUpLvl2" ], [ "dwellingLvl3", "dwellingUpLvl3" ], [ "dwellingLvl4", "dwellingUpLvl4" ] ],
				[ [ "dwellingLvl5", "dwellingUpLvl5" ], [ "dwellingLvl6", "dwellingUpLvl6" ], [ "dwellingLvl7", "dwellingUpLvl7" ] ]
			],
			"creatures" :
			[
				["troglodyte", "infernalTroglodyte"],
				["harpy", "harpyHag"],
				["beholder", "evilEye"],
				["medusa", "medusaQueen"],
				["minotaur", "minotaurKing"],
				["manticore", "scorpicore"],
				["redDragon", "blackDragon"]
			],
			"horde" : [ 0, -1 ],
			"mageGuild" : 5,
			"primaryResource" : "sulfur",
			"warMachine" : "ballista",
			"moatDamage" : 90,
			"moatHexes" : [ 11, 28, 44, 61, 77, 111, 129, 146, 164, 181 ],

			"buildings" :
			{
				"mageGuild1":     { "id" : 0 },
				"mageGuild2":     { "id" : 1,  "upgrades" : "mageGuild1" },
				"mageGuild3":     { "id" : 2,  "upgrades" : "mageGuild2" },
				"mageGuild4":     { "id" : 3,  "upgrades" : "mageGuild3" },
				"mageGuild5":     { "id" : 4,  "upgrades" : "mageGuild4" },
				"tavern":         { "id" : 5 },
				"fort":           { "id" : 7 },
				"citadel":        { "id" : 8,  "upgrades" : "fort" },
				"castle":         { "id" : 9,  "upgrades" : "citadel" },
				"villageHall":    { "id" : 10, "mode" : "auto", "produce": { "gold": 500 } },
				"townHall":       { "id" : 11, "upgrades" : "villageHall", "requires" : [ "tavern" ], "produce": { "gold": 1000 } },
				"cityHall":       { "id" : 12, "upgrades" : "townHall", "requires" : [ "allOf", [ "mageGuild1" ], [ "marketplace" ], [ "blacksmith" ] ], "produce": { "gold": 2000 } },
				"capitol":        { "id" : 13, "upgrades" : "cityHall", "requires" : [ "castle" ], "produce": { "gold": 4000 } },
				"marketplace":    { "id" : 14 },
				"resourceSilo":   { "id" : 15, "requires" : [ "marketplace" ] },
				"blacksmith":     { "id" : 16 },

				"special1":       { "id" : 17, "requires" : [ "marketplace" ] },
				"horde1":         { "id" : 18, "upgrades" : "dwellingLvl1" },
				"horde1Upgr":     { "id" : 19, "upgrades" : "dwellingUpLvl1", "requires" : [ "horde1" ], "mode" : "auto" },
				"special2":       { "id" : 21, "requires" : [ "mageGuild1" ] },
				"special3":       { "id" : 22 },
				"special4":       { "id" : 23 },
				"grail":          { "id" : 26, "mode" : "grail", "produce": { "gold": 5000 }},

				"dwellingLvl1":   { "id" : 30, "requires" : [ "fort" ] },
				"dwellingLvl2":   { "id" : 31, "requires" : [ "dwellingLvl1" ] },
				"dwellingLvl3":   { "id" : 32, "requires" : [ "dwellingLvl1" ] },
				"dwellingLvl4":   { "id" : 33, "requires" : [ "allOf", [ "dwellingLvl2" ], [ "dwellingLvl3" ] ] },
				"dwellingLvl5":   { "id" : 34, "requires" : [ "dwellingLvl4" ] },
				"dwellingLvl6":   { "id" : 35, "requires" : [ "dwellingLvl4" ] },
				"dwellingLvl7":   { "id" : 36, "requires" : [ "allOf", [ "mageGuild2" ], [ "dwellingLvl5" ], [ "dwellingLvl6" ] ] },

				"dwellingUpLvl1": { "id" : 37, "upgrades" : "dwellingLvl1" },
				"dwellingUpLvl2": { "id" : 38, "upgrades" : "dwellingLvl2" },
				"dwellingUpLvl3": { "id" : 39, "upgrades" : "dwellingLvl3" },
				"dwellingUpLvl4": { "id" : 40, "upgrades" : "dwellingLvl4" },
				"dwellingUpLvl5": { "id" : 41, "upgrades" : "dwellingLvl5" },
				"dwellingUpLvl6": { "id" : 42, "upgrades" : "dwellingLvl6" },
				"dwellingUpLvl7": { "id" : 43, "upgrades" : "dwellingLvl7", "requires" : [ "mageGuild3" ] },

				"horde2" : null,
				"horde2Upgr" : null,
				"ship" : null,
				"shipyard" : null
			},

			"siege" :
			{
				"shooter" : "medusa",
				"imagePrefix" : "SGDN",
				"gate" :
				{
					"arch" : { "x" : 471, "y" : 165 },
					"gate" : { "x" : 395, "y" : 260 }
				},
				"moat" :
				{
					"bank" : { "x" : 284, "y" : 94 },
					"moat" : { "x" : 284, "y" : 94 }
				},
				"static" :
				{
					"background" : { "x" : 608, "y" : 50 },
					"bottom" : { "x" : 522, "y" : 306 },
					"top" : { "x" : 494, "y" : 53 }
				},
				"towers" :
				{
					"bottom" :
					{
						"battlement" : { "x" : 595, "y" : 496 },
						"creature" : { "x" : 410, "y" : 293 },
						"tower" : { "x" : 595, "y" : 496 }
					},
					"keep" :
					{
						"battlement" : { "x" : 732, "y" : 162 },
						"creature" : { "x" : 570, "y" : -50 },
						"tower" : { "x" : 732, "y" : 162 }
					},
					"top" :
					{
						"battlement" : { "x" : 562, "y" : 15 },
						"creature" : { "x" : 381, "y" : -187 },
						"tower" : { "x" : 562, "y" : 15 }
					}
				},
				"walls" :
				{
					"bottom" : { "x" : 559, "y" : 448 },
					"bottomMid" : { "x" : 471, "y" : 296 },
					"upper" : { "x" : 523, "y" : 56 },
					"upperMid" : { "x" : 478, "y" : 181 }
				}
			}
		}
	},
	"fortress" :
	{
		"index" : 7,
		"nativeTerrain": "swamp",
		"alignment" : "neutral",
		"creatureBackground" :
		{
			"120px" : "TPCASFOR",
			"130px" : "CRBKGFOR"
		},
		"puzzleMap" :
		{
			"prefix" : "PUZFOR",
			"pieces" :
			[
				{ "x": 7, "y": 8, "index": 36 },
				{ "x": 7, "y": 152, "index": 25 },
				{ "x": 7, "y": 306, "index": 34 },
				{ "x": 7, "y": 388, "index": 23 },
				{ "x": 7, "y": 434, "index": 15 },
				{ "x": 23, "y": 417, "index": 37 },
				{ "x": 32, "y": 232, "index": 38 },
				{ "x": 42, "y": 137, "index": 39 },
				{ "x": 47, "y": 440, "index": 8 },
				{ "x": 56, "y": 19, "index": 47 },
				{ "x": 71, "y": 8, "index": 1 },
				{ "x": 87, "y": 219, "index": 30 },
				{ "x": 90, "y": 26, "index": 41 },
				{ "x": 104, "y": 397, "index": 33 },
				{ "x": 116, "y": 345, "index": 40 },
				{ "x": 134, "y": 215, "index": 11 },
				{ "x": 175, "y": 168, "index": 19 },
				{ "x": 191, "y": 428, "index": 13 },
				{ "x": 200, "y": 326, "index": 24 },
				{ "x": 216, "y": 98, "index": 18 },
				{ "x": 221, "y": 398, "index": 20 },
				{ "x": 225, "y": 235, "index": 46 },
				{ "x": 239, "y": 8, "index": 9 },
				{ "x": 245, "y": 40, "index": 7 },
				{ "x": 248, "y": 208, "index": 48 },
				{ "x": 261, "y": 439, "index": 5 },
				{ "x": 262, "y": 134, "index": 26 },
				{ "x": 297, "y": 352, "index": 22 },
				{ "x": 309, "y": 99, "index": 16 },
				{ "x": 320, "y": 262, "index": 43 },
				{ "x": 323, "y": 404, "index": 10 },
				{ "x": 326, "y": 200, "index": 45 },
				{ "x": 331, "y": 20, "index": 17 },
				{ "x": 345, "y": 178, "index": 21 },
				{ "x": 353, "y": 8, "index": 3 },
				{ "x": 358, "y": 290, "index": 42 },
				{ "x": 381, "y": 399, "index": 14 },
				{ "x": 400, "y": 65, "index": 12 },
				{ "x": 428, "y": 160, "index": 35 },
				{ "x": 448, "y": 293, "index": 29 },
				{ "x": 451, "y": 94, "index": 27 },
				{ "x": 453, "y": 424, "index": 2 },
				{ "x": 462, "y": 397, "index": 32 },
				{ "x": 465, "y": 8, "index": 4 },
				{ "x": 486, "y": 163, "index": 44 },
				{ "x": 492, "y": 184, "index": 31 },
				{ "x": 517, "y": 304, "index": 6 },
				{ "x": 549, "y": 8, "index": 28 }
			]
		},
		"town" :
		{
			"mapObject" :
			{
				"templates" : {
					"castle" :  { "animation" : "AVCftrx0.def" },
					"citadel" : { "animation" : "AVCftrx0.def" },
					"fort"    : { "animation" : "AVCftrx0.def" },
					"village" : { "animation" : "AVCFTRT0.DEF" },
					"capitol" : { "animation" : "AVCFORZ0.DEF" }
				}
			},
			"structures" :
			{
				"extraAnimation": { "animation" : "TBFREXT2.def", "x" : 372, "y" : 227 },
				"mageGuild1":     { "animation" : "TBFRMAGE.def", "x" : 0,   "y" : 200, "z" : -1, "border" : "TOFMAG1A.bmp", "area" : "TZFMAG1A.bmp" },
				"mageGuild2":     { "animation" : "TBFRMAG2.def", "x" : 0,   "y" : 177, "z" : -1, "border" : "TOFMAG2A.bmp", "area" : "TZFMAG2A.bmp" },
				"mageGuild3":     { "animation" : "TBFRMAG3.def", "x" : 0,   "y" : 135, "z" : -1, "border" : "TOFMAG3A.bmp", "area" : "TZFMAG3A.bmp" },
				"tavern":         { "animation" : "TBFRTVRN.def", "x" : 634, "y" : 219, "z" : 3,  "border" : "TOFTAVA.bmp",  "area" : "TZFTAVA.bmp" },
				"shipyard":       { "animation" : "TBFRDOCK.def", "x" : 197, "y" : 294, "border" : "TOFDCK2.bmp",  "area" : "TZFDCK2.bmp" },
				"fort":           { "animation" : "TBFRCSTL.def", "x" : 368, "y" : 118, "z" : -1, "border" : "TOFCAS1.bmp",  "area" : "TZFCAS1.bmp" },
				"citadel":        { "animation" : "TBFRCAS2.def", "x" : 368, "y" : 98,  "z" : -1, "border" : "TOFCAS2.bmp",  "area" : "TZFCAS2.bmp" },
				"castle":         { "animation" : "TBFRCAS3.def", "x" : 368, "y" : 55,  "z" : -1, "border" : "TOFCAS3.bmp",  "area" : "TZFCAS3.bmp" },
				"villageHall":    { "animation" : "TBFRHALL.def", "x" : 166, "y" : 128, "z" : 1,  "border" : "TOFHAL1.bmp",  "area" : "TZFHAL1.bmp" },
				"townHall":       { "animation" : "TBFRHAL2.def", "x" : 166, "y" : 97,  "z" : 1,  "border" : "TOFHAL2.bmp",  "area" : "TZFHAL2.bmp" },
				"cityHall":       { "animation" : "TBFRHAL3.def", "x" : 166, "y" : 51,  "z" : 1,  "border" : "TOFHAL3.bmp",  "area" : "TZFHAL3.bmp" },
				"capitol":        { "animation" : "TBFRHAL4.def", "x" : 166, "y" : 2,   "z" : 1,  "border" : "TOFHAL4.bmp",  "area" : "TZFHAL4.bmp" },
				"marketplace":    { "animation" : "TBFRMARK.def", "x" : 382, "y" : 219, "z" : 4,  "border" : "TOFMRKAA.bmp", "area" : "TZFMRKAA.bmp" },
				"resourceSilo":   { "animation" : "TBFRSILO.def", "x" : 448, "y" : 210, "z" : 2,  "border" : "TOFMRK2A.bmp", "area" : "TZFMRK2A.bmp" },
				"blacksmith":     { "animation" : "TBFRBLAK.def", "x" : 360, "y" : 160, "border" : "TOFAIDA.bmp",  "area" : "TZFAIDA.bmp" },
				"special1":       { "animation" : "TBFRSPEC.def", "x" : 703, "y" : 36,  "border" : "TOFCAGE.bmp",  "area" : "TZFCAGE.bmp" },
				"horde1":         { "animation" : "TBFRHRD1.def", "x" : 641, "y" : 121, "z" : 1,  "border" : "TOFGNL1H.bmp", "area" : "TZFGNL1H.bmp", "hidden" : true },
				"horde1Upgr":     { "animation" : "TBFRHRD2.def", "x" : 641, "y" : 68,  "z" : 1,  "border" : "TOFGNL2H.bmp", "area" : "TZFGNL2H.bmp", "hidden" : true, "builds" : "horde1" },
				"ship":           { "animation" : "TBFRBOAT.def", "x" : 197, "y" : 294, "z" : 1,  "border" : "TOFDCK1.bmp",  "area" : "TZFDCK1.bmp", "hidden" : true },
				"special2":       { "animation" : "TBFREXT0.def", "x" : 341, "y" : 174, "border" : "TOFCASD.bmp",  "area" : "TZFCASD.bmp" },
				"special3":       { "animation" : "TBFREXT1.def", "x" : 349, "y" : 79,  "z" : -2, "border" : "TOFCASA.bmp",  "area" : "TZFCASA.bmp" },
				"grail":          { "animation" : "TBFRHOLY.def", "x" : 468, "y" : 260, "z" : 5,  "border" : "TOFHLYAA.bmp", "area" : "TZFHLYAA.bmp" },
				"extraCapitol":   { "animation" : "TBFRWTRW.def", "x" : 320, "y" : 141 },
				"dwellingLvl1":   { "animation" : "TBFRDW_0.def", "x" : 641, "y" : 168, "z" : 1,  "border" : "TOFGNL1.bmp",  "area" : "TZFGNL1.bmp" },
				"dwellingLvl2":   { "animation" : "TBFRDW_1.def", "x" : 141, "y" : 178, "border" : "TOFLIZ1.bmp",  "area" : "TZFLIZ1.bmp" },
				"dwellingLvl3":   { "animation" : "TBFRDW_3.def", "x" : 192, "y" : 85,  "border" : "TOFFLY1A.bmp", "area" : "TZFFLY1A.bmp" },
				"dwellingLvl4":   { "animation" : "TBFRDW_4.def", "x" : 0,   "y" : 292, "border" : "TOFBAS1.bmp",  "area" : "TZFBAS1.bmp" },
				"dwellingLvl5":   { "animation" : "TBFRDW_2.def", "x" : 15,  "y" : 127, "z" : -2, "border" : "TOFGOR1.bmp",  "area" : "TZFGOR1.bmp" },
				"dwellingLvl6":   { "animation" : "TBFRDW_5.def", "x" : 0,   "y" : 4,   "border" : "TOFWYV1.bmp",  "area" : "TZFWYV1.bmp" },
				"dwellingLvl7":   { "animation" : "TBFRDW_6.def", "x" : 612, "y" : 291, "z" : 5,  "border" : "TOFHYD1A.bmp", "area" : "TZFHYD1A.bmp" },
				"dwellingUpLvl1": { "animation" : "TBFRUP_0.def", "x" : 641, "y" : 107, "z" : 1,  "border" : "TOFGNL2.bmp",  "area" : "TZFGNL2.bmp" },
				"dwellingUpLvl2": { "animation" : "TBFRUP_1.def", "x" : 125, "y" : 163, "border" : "TOFLIZ2.bmp",  "area" : "TZFLIZ2.bmp" },
				"dwellingUpLvl3": { "animation" : "TBFRUP_3.def", "x" : 159, "y" : 19,  "border" : "TOFFLY2A.bmp", "area" : "TZFFLY2A.bmp" },
				"dwellingUpLvl4": { "animation" : "TBFRUP_4.def", "x" : 0,   "y" : 257, "border" : "TOFBAS2.bmp",  "area" : "TZFBAS2.bmp" },
				"dwellingUpLvl5": { "animation" : "TBFRUP_2.def", "x" : 15,  "y" : 69,  "z" : -2, "border" : "TOFGOR2.bmp",  "area" : "TZFGOR2.bmp" },
				"dwellingUpLvl6": { "animation" : "TBFRUP_5.def", "x" : 0,   "y" : 4,   "border" : "TOFWYV2.bmp",  "area" : "TZFWYV2.bmp" },
				"dwellingUpLvl7": { "animation" : "TBFRUP_6.def", "x" : 587, "y" : 263, "z" : 5,  "border" : "TOFHYD2A.bmp", "area" : "TZFHYD2A.bmp" }
			},

			"musicTheme" : "music/FortressTown",
			"defaultTavern" : 5,
			"tavernVideo" : "TAVERN.BIK",
			"guildBackground" : "TPMAGE.bmp",
			"townBackground": "TBFRBACK.bmp",
			"guildWindow": "TPMAGEFR.bmp",
			"buildingsIcons": "HALLFORT.DEF",
			"hallBackground": "TPTHBKFR.BMP",
			"hallSlots":
			[
				[ [ "villageHall", "townHall", "cityHall", "capitol" ], [ "fort", "citadel", "castle" ], [ "tavern" ], [ "blacksmith" ] ],
				[ [ "marketplace", "resourceSilo" ], [ "mageGuild1", "mageGuild2", "mageGuild3" ], [ "shipyard" ] ],
				[ [ "special1" ], [ "special2", "special3" ], [ "horde1", "horde1Upgr" ] ],
				[ [ "dwellingLvl1", "dwellingUpLvl1" ], [ "dwellingLvl2", "dwellingUpLvl2" ], [ "dwellingLvl3", "dwellingUpLvl3" ], [ "dwellingLvl4", "dwellingUpLvl4" ] ],
				[ [ "dwellingLvl5", "dwellingUpLvl5" ], [ "dwellingLvl6", "dwellingUpLvl6" ], [ "dwellingLvl7", "dwellingUpLvl7" ] ]
			],
			"creatures" :
			[
				["gnoll", "gnollMarauder"],
				["lizardman", "lizardWarrior"],
				["serpentFly", "fireDragonFly"],
				["basilisk", "greaterBasilisk"],
				["gorgon", "mightyGorgon"],
				["wyvern", "wyvernMonarch"],
				["hydra", "chaosHydra"]
			],
			"horde" : [ 0, -1 ],
			"mageGuild" : 3,
			"warMachine" : "firstAidTent",
			"moatDamage" : 90,
			"moatHexes" : [ 10, 11, 27, 28, 43, 44, 60, 61, 76, 77, 94, 110, 111, 128, 129, 145, 146, 163, 164, 180, 181 ],


			"buildings" :
			{
				"mageGuild1":     { "id" : 0 },
				"mageGuild2":     { "id" : 1,  "upgrades" : "mageGuild1" },
				"mageGuild3":     { "id" : 2,  "upgrades" : "mageGuild2" },
				"tavern":         { "id" : 5 },
				"shipyard":       { "id" : 6 },
				"fort":           { "id" : 7 },
				"citadel":        { "id" : 8,  "upgrades" : "fort" },
				"castle":         { "id" : 9,  "upgrades" : "citadel" },
				"villageHall":    { "id" : 10, "mode" : "auto", "produce": { "gold": 500 } },
				"townHall":       { "id" : 11, "upgrades" : "villageHall", "requires" : [ "tavern" ], "produce": { "gold": 1000 } },
				"cityHall":       { "id" : 12, "upgrades" : "townHall", "requires" : [ "allOf", [ "mageGuild1" ], [ "marketplace" ], [ "blacksmith" ] ], "produce": { "gold": 2000 } },
				"capitol":        { "id" : 13, "upgrades" : "cityHall", "requires" : [ "castle" ], "produce": { "gold": 4000 } },
				"marketplace":    { "id" : 14 },
				"resourceSilo":   { "id" : 15, "requires" : [ "marketplace" ], "produce": { "wood": 1, "ore": 1 } },
				"blacksmith":     { "id" : 16 },

				"special1":       { "id" : 17, "requires" : [ "allOf", [ "townHall" ], [ "special2" ] ] },
				"horde1":         { "id" : 18, "upgrades" : "dwellingLvl1" },
				"horde1Upgr":     { "id" : 19, "upgrades" : "dwellingUpLvl1", "requires" : [ "horde1" ], "mode" : "auto" },
				"ship":           { "id" : 20, "upgrades" : "shipyard" },
				"special2":       { "id" : 21, "requires" : [ "fort" ] },
				"special3":       { "id" : 22, "requires" : [ "special2" ] },
				"grail":          { "id" : 26, "mode" : "grail", "produce": { "gold": 5000 }},
				"extraCapitol":   { "id" : 29, "requires" : [ "capitol" ], "mode" : "auto" },

				"dwellingLvl1":   { "id" : 30, "requires" : [ "fort" ] },
				"dwellingLvl2":   { "id" : 31, "requires" : [ "dwellingLvl1" ] },
				"dwellingLvl3":   { "id" : 32, "requires" : [ "dwellingLvl1" ] },
				"dwellingLvl4":   { "id" : 33, "requires" : [ "dwellingLvl3" ] },
				"dwellingLvl5":   { "id" : 34, "requires" : [ "allOf", [ "dwellingLvl2" ], [ "dwellingLvl3" ] ] },
				"dwellingLvl6":   { "id" : 35, "requires" : [ "dwellingLvl2" ] },
				"dwellingLvl7":   { "id" : 36, "requires" : [ "allOf", [ "dwellingLvl4" ], [ "dwellingLvl6" ] ] },

				"dwellingUpLvl1": { "id" : 37, "upgrades" : "dwellingLvl1", "requires" : [ "tavern" ] },
				"dwellingUpLvl2": { "id" : 38, "upgrades" : "dwellingLvl2" },
				"dwellingUpLvl3": { "id" : 39, "upgrades" : "dwellingLvl3" },
				"dwellingUpLvl4": { "id" : 40, "upgrades" : "dwellingLvl4" },
				"dwellingUpLvl5": { "id" : 41, "upgrades" : "dwellingLvl5", "requires" : [ "resourceSilo" ] },
				"dwellingUpLvl6": { "id" : 42, "upgrades" : "dwellingLvl6" },
				"dwellingUpLvl7": { "id" : 43, "upgrades" : "dwellingLvl7" },

				"horde2" : null,
				"horde2Upgr" : null,
				"mageGuild4" : null,
				"mageGuild5" : null,
				"special4" : null
			},

			"siege" :
			{
				"shooter" : "lizardman",
				"imagePrefix" : "SGFR",
				"gate" :
				{
					"arch" : { "x" : 483, "y" : 236 },
					"gate" : { "x" : 392, "y" : 253 }
				},
				"moat" :
				{
					"bank" : { "x" : 376, "y" : 70 },
					"moat" : { "x" : 383, "y" : 95 }
				},
				"static" :
				{
					"background" : { "x" : 599, "y" : 62 },
					"bottom" : { "x" : 522, "y" : 382 },
					"top" : { "x" : 508, "y" : 130 }
				},
				"towers" :
				{
					"bottom" :
					{
						"battlement" : { "x" : 599, "y" : 505 },
						"creature" : { "x" : 372, "y" : 308 },
						"tower" : { "x" : 599, "y" : 505 }
					},
					"keep" :
					{
						"battlement" : { "x" : 721, "y" : 178 },
						"creature" : { "x" : 541, "y" : -37 },
						"tower" : { "x" : 721, "y" : 178 }
					},
					"top" :
					{
						"battlement" : { "x" : 548, "y" : 27 },
						"creature" : { "x" : 326, "y" : -182 },
						"tower" : { "x" : 548, "y" : 27 }
					}
				},
				"walls" :
				{
					"bottom" : { "x" : 546, "y" : 441 },
					"bottomMid" : { "x" : 486, "y" : 306 },
					"upper" : { "x" : 526, "y" : 80 },
					"upperMid" : { "x" : 498, "y" : 184 }
				}
			}
		}
	},
	"inferno" :
	{
		"index" : 3,
		"nativeTerrain": "lava",
		"alignment" : "evil",
		"creatureBackground" :
		{
			"120px" : "TPCASINF",
			"130px" : "CRBKGINF"
		},
		"puzzleMap" :
		{
			"prefix" : "PUZINF",
			"pieces" :
			[
				{ "x": 7, "y": 8, "index": 30 },
				{ "x": 7, "y": 16, "index": 2 },
				{ "x": 7, "y": 95, "index": 12 },
				{ "x": 7, "y": 271, "index": 27 },
				{ "x": 7, "y": 308, "index": 8 },
				{ "x": 7, "y": 464, "index": 1 },
				{ "x": 16, "y": 164, "index": 26 },
				{ "x": 41, "y": 378, "index": 39 },
				{ "x": 50, "y": 471, "index": 13 },
				{ "x": 51, "y": 101, "index": 17 },
				{ "x": 80, "y": 260, "index": 35 },
				{ "x": 81, "y": 48, "index": 4 },
				{ "x": 91, "y": 143, "index": 47 },
				{ "x": 115, "y": 8, "index": 25 },
				{ "x": 141, "y": 360, "index": 28 },
				{ "x": 153, "y": 269, "index": 41 },
				{ "x": 164, "y": 55, "index": 44 },
				{ "x": 173, "y": 101, "index": 36 },
				{ "x": 173, "y": 492, "index": 6 },
				{ "x": 187, "y": 160, "index": 48 },
				{ "x": 194, "y": 388, "index": 19 },
				{ "x": 200, "y": 373, "index": 20 },
				{ "x": 204, "y": 282, "index": 45 },
				{ "x": 239, "y": 469, "index": 11 },
				{ "x": 240, "y": 8, "index": 32 },
				{ "x": 271, "y": 163, "index": 43 },
				{ "x": 276, "y": 255, "index": 46 },
				{ "x": 296, "y": 428, "index": 3 },
				{ "x": 297, "y": 281, "index": 16 },
				{ "x": 306, "y": 8, "index": 10 },
				{ "x": 317, "y": 17, "index": 15 },
				{ "x": 327, "y": 84, "index": 29 },
				{ "x": 348, "y": 142, "index": 40 },
				{ "x": 348, "y": 342, "index": 21 },
				{ "x": 370, "y": 405, "index": 22 },
				{ "x": 401, "y": 103, "index": 18 },
				{ "x": 407, "y": 40, "index": 31 },
				{ "x": 421, "y": 508, "index": 7 },
				{ "x": 453, "y": 215, "index": 33 },
				{ "x": 455, "y": 377, "index": 34 },
				{ "x": 460, "y": 170, "index": 38 },
				{ "x": 475, "y": 319, "index": 42 },
				{ "x": 488, "y": 412, "index": 37 },
				{ "x": 504, "y": 8, "index": 24 },
				{ "x": 515, "y": 67, "index": 5 },
				{ "x": 517, "y": 211, "index": 14 },
				{ "x": 532, "y": 305, "index": 23 },
				{ "x": 556, "y": 335, "index": 9 }
			]
		},
		"town" :
		{
			"mapObject" :
			{
				"templates" : {
					"castle" :  { "animation" : "AVCinfx0.def" },
					"citadel" : { "animation" : "AVCinfx0.def" },
					"fort"    : { "animation" : "AVCinfx0.def" },
					"village" : { "animation" : "AVCINFT0.DEF" },
					"capitol" : { "animation" : "AVCINFZ0.DEF" }
				}
			},
			"structures" :
			{
				"mageGuild1":     { "animation" : "TBINMAGE.def", "x" : 667, "y" : 127, "border" : "TOIMAG1A.bmp", "area" : "TZIMAG1A.bmp" },
				"mageGuild2":     { "animation" : "TBINMAG2.def", "x" : 667, "y" : 101, "border" : "TOIMAG2A.bmp", "area" : "TZIMAG2A.bmp" },
				"mageGuild3":     { "animation" : "TBINMAG3.def", "x" : 667, "y" : 83,  "border" : "TOIMAG3A.bmp", "area" : "TZIMAG3A.bmp" },
				"mageGuild4":     { "animation" : "TBINMAG4.def", "x" : 667, "y" : 56,  "border" : "TOIMAG4A.bmp", "area" : "TZIMAG4A.bmp" },
				"mageGuild5":     { "animation" : "TBINMAG5.def", "x" : 667, "y" : 35,  "border" : "TOIMAG5A.bmp", "area" : "TZIMAG5A.bmp" },
				"tavern":         { "animation" : "TBINTVRN.def", "x" : 105, "y" : 219, "z" : 1,  "border" : "TOITAV.bmp",   "area" : "TZITAV.bmp" },
				"fort":           { "animation" : "TBINCSTL.def", "x" : 222, "y" : 44,  "border" : "TOICAS2A.bmp", "area" : "TZICAS2A.bmp" },
				"citadel":        { "animation" : "TBINCAS2.def", "x" : 222, "y" : 44,  "border" : "TOICAS1A.bmp", "area" : "TZICAS1A.bmp" },
				"castle":         { "animation" : "TBINCAS3.def", "x" : 222, "y" : 18,  "border" : "TOICAS3A.bmp", "area" : "TZICAS3A.bmp" },
				"villageHall":    { "animation" : "TBINHALL.def", "x" : 0,   "y" : 174, "border" : "TOIHAL1.bmp",  "area" : "TZIHAL1.bmp"  },
				"townHall":       { "animation" : "TBINHAL2.def", "x" : 0,   "y" : 174, "border" : "TOIHAL2.bmp",  "area" : "TZIHAL2.bmp"  },
				"cityHall":       { "animation" : "TBINHAL3.def", "x" : 0,   "y" : 174, "border" : "TOIHAL3.bmp",  "area" : "TZIHAL3.bmp"  },
				"capitol":        { "animation" : "TBINHAL4.def", "x" : 0,   "y" : 131, "border" : "TOIHAL4.bmp",  "area" : "TZIHAL4.bmp"  },
				"marketplace":    { "animation" : "TBINMARK.def", "x" : 511, "y" : 301, "z" : 4,  "border" : "TOIMAR1.bmp",  "area" : "TZIMAR1.bmp" },
				"resourceSilo":   { "animation" : "TBINSILO.def", "x" : 497, "y" : 337, "z" : 5,  "border" : "TOIMAR2.bmp",  "area" : "TZIMAR2.bmp" },
				"blacksmith":     { "animation" : "TBINBLAK.def", "x" : 684, "y" : 253, "z" : 1,  "border" : "TOIBLKA.bmp",  "area" : "TZIBLKA.bmp" },
				"horde1":         { "animation" : "TBINHRD1.def", "x" : 614, "y" : 256, "border" : "TOIMP1HA.bmp", "area" : "TZIMP1HA.bmp", "hidden" : true },
				"horde1Upgr":     { "animation" : "TBINHRD2.def", "x" : 614, "y" : 221, "border" : "TOIMP2HA.bmp", "area" : "TZIMP2HA.bmp", "hidden" : true, "builds" : "horde1" },
				"special2":       { "animation" : "TBINEXT0.def", "x" : 297, "y" : 0,   "z" : -1, "border" : "TOICAB1A.bmp", "area" : "TZICAB1A.bmp" },
				"special3":       { "animation" : "TBINEXT1.def", "x" : 227, "y" : 174, "z" : 2,  "border" : "TOICASGA.bmp", "area" : "TZICASGA.bmp" },
				"special4":       { "animation" : "TBINEXT2.def", "x" : 593, "y" : 104, "border" : "TOIPAIN.bmp",  "area" : "TZIPAIN.bmp"  },
				"horde2":         { "animation" : "TBINHRD3.def", "x" : 10,  "y" : 301, "border" : "TOIHND1H.bmp", "area" : "TZIHND1H.bmp", "hidden" : true },
				"horde2Upgr":     { "animation" : "TBINHRD4.def", "x" : 9,   "y" : 273, "border" : "TOIHND2H.bmp", "area" : "TZIHND2H.bmp", "hidden" : true, "builds" : "horde2" },
				"grail":          { "animation" : "TBINHOLY.def", "x" : 24,  "y" : 10,  "z" : -1, "border" : "TOIHOLY.bmp",  "area" : "TZIHOLY.bmp" },
				"dwellingLvl1":   { "animation" : "TBINDW_0.def", "x" : 614, "y" : 256, "border" : "TOIMP1A.bmp",  "area" : "TZIMP1A.bmp"  },
				"dwellingLvl2":   { "animation" : "TBINDW_1.def", "x" : 187, "y" : 248, "z" : 4,  "border" : "TOIGOG1A.bmp", "area" : "TZIGOG1A.bmp" },
				"dwellingLvl3":   { "animation" : "TBINDW_2.def", "x" : 9,   "y" : 325, "border" : "TOIHND1.bmp",  "area" : "TZIHND1.bmp"  },
				"dwellingLvl4":   { "animation" : "TBINDW_3.def", "x" : 414, "y" : 204, "z" : 2,  "border" : "TOIDMN1.bmp",  "area" : "TZIDMN1.bmp" },
				"dwellingLvl5":   { "animation" : "TBINDW_4.def", "x" : 359, "y" : 296, "z" : 3,  "border" : "TOIPIT1.bmp",  "area" : "TZIPIT1.bmp" },
				"dwellingLvl6":   { "animation" : "TBINDW_5.def", "x" : 220, "y" : 350, "z" : 5,  "border" : "TOIEFR1.bmp",  "area" : "TZIEFR1.bmp" },
				"dwellingLvl7":   { "animation" : "TBINDW_6.def", "x" : 420, "y" : 153, "z" : -1, "border" : "TOIDVL1.bmp",  "area" : "TZIDVL1.bmp" },
				"dwellingUpLvl1": { "animation" : "TBINUP_0.def", "x" : 614, "y" : 221, "border" : "TOIMP2A.bmp",  "area" : "TZIMP2A.bmp"  },
				"dwellingUpLvl2": { "animation" : "TBINUP_1.def", "x" : 187, "y" : 212, "z" : 4,  "border" : "TOIGOG2A.bmp", "area" : "TZIGOG2A.bmp" },
				"dwellingUpLvl3": { "animation" : "TBINUP_2.def", "x" : 9,   "y" : 273, "border" : "TOIHND2.bmp",  "area" : "TZIHND2.bmp"  },
				"dwellingUpLvl4": { "animation" : "TBINUP_3.def", "x" : 412, "y" : 197, "z" : 2,  "border" : "TOIDMN2.bmp",  "area" : "TZIDMN2.bmp" },
				"dwellingUpLvl5": { "animation" : "TBINUP_4.def", "x" : 359, "y" : 244, "z" : 3,  "border" : "TOIPIT2.bmp",  "area" : "TZIPIT2.bmp" },
				"dwellingUpLvl6": { "animation" : "TBINUP_5.def", "x" : 220, "y" : 282, "z" : 5,  "border" : "TOIEFR2.bmp",  "area" : "TZIEFR2.bmp" },
				"dwellingUpLvl7": { "animation" : "TBINUP_6.def", "x" : 420, "y" : 105, "z" : -1, "border" : "TOIDVL2.bmp",  "area" : "TZIDVL2.bmp" }
			},

			"musicTheme" : "music/InfernoTown",
			"defaultTavern" : 5,
			"tavernVideo" : "TAVERN.BIK",
			"guildBackground" : "TPMAGE.bmp",
			"townBackground": "TBINBACK.bmp",
			"guildWindow": "TPMAGEIN.bmp",
			"buildingsIcons": "HALLINFR.DEF",
			"hallBackground": "TPTHBKIN.BMP",
			"hallSlots":
			[
				[ [ "villageHall", "townHall", "cityHall", "capitol" ], [ "fort", "citadel", "castle" ], [ "tavern" ], [ "blacksmith" ] ],
				[ [ "marketplace", "resourceSilo" ], [ "mageGuild1", "mageGuild2", "mageGuild3", "mageGuild4", "mageGuild5" ], [ "special4" ], [ "special2" ] ],
				[ [ "special3" ], [ "horde1", "horde1Upgr" ], [ "horde2", "horde2Upgr" ] ],
				[ [ "dwellingLvl1", "dwellingUpLvl1" ], [ "dwellingLvl2", "dwellingUpLvl2" ], [ "dwellingLvl3", "dwellingUpLvl3" ], [ "dwellingLvl4", "dwellingUpLvl4" ] ],
				[ [ "dwellingLvl5", "dwellingUpLvl5" ], [ "dwellingLvl6", "dwellingUpLvl6" ], [ "dwellingLvl7", "dwellingUpLvl7" ] ]
			],
			"creatures" :
			[
				["imp", "familiar"],
				["gog", "magog"],
				["hellHound", "cerberus"],
				["demon", "hornedDemon"],
				["pitFiend", "pitLord"],
				["efreet", "efreetSultan"],
				["devil", "archDevil"]
			],
			"horde" : [ 0, 2 ],
			"mageGuild" : 5,
			"primaryResource" : "mercury",
			"warMachine" : "ammoCart",
			"moatDamage" : 90,
			"moatHexes" : [ 11, 28, 44, 61, 77, 111, 129, 146, 164, 181 ],

			"buildings" :
			{
				"mageGuild1":     { "id" : 0 },
				"mageGuild2":     { "id" : 1,  "upgrades" : "mageGuild1" },
				"mageGuild3":     { "id" : 2,  "upgrades" : "mageGuild2" },
				"mageGuild4":     { "id" : 3,  "upgrades" : "mageGuild3" },
				"mageGuild5":     { "id" : 4,  "upgrades" : "mageGuild4" },
				"tavern":         { "id" : 5 },
				"fort":           { "id" : 7 },
				"citadel":        { "id" : 8,  "upgrades" : "fort" },
				"castle":         { "id" : 9,  "upgrades" : "citadel" },
				"villageHall":    { "id" : 10, "mode" : "auto", "produce": { "gold": 500 } },
				"townHall":       { "id" : 11, "upgrades" : "villageHall", "requires" : [ "tavern" ], "produce": { "gold": 1000 } },
				"cityHall":       { "id" : 12, "upgrades" : "townHall", "requires" : [ "allOf", [ "mageGuild1" ], [ "marketplace" ], [ "blacksmith" ] ], "produce": { "gold": 2000 } },
				"capitol":        { "id" : 13, "upgrades" : "cityHall", "requires" : [ "castle" ], "produce": { "gold": 4000 } },
				"marketplace":    { "id" : 14 },
				"resourceSilo":   { "id" : 15, "requires" : [ "marketplace" ], "produce": { "mercury": 1 } },
				"blacksmith":     { "id" : 16 },

				"horde1":         { "id" : 18, "upgrades" : "dwellingLvl1" },
				"horde1Upgr":     { "id" : 19, "upgrades" : "dwellingUpLvl1", "requires" : [ "horde1" ], "mode" : "auto" },
				"special2":       { "id" : 21, "requires" : [ "fort" ] },
				"special3":       { "id" : 22, "requires" : [ "citadel" ] },
				"special4":       { "id" : 23, "requires" : [ "mageGuild1" ] },
				"horde2":         { "id" : 24, "upgrades" : "dwellingLvl3" },
				"horde2Upgr":     { "id" : 25, "upgrades" : "dwellingUpLvl3", "requires" : [ "horde2" ], "mode" : "auto" },
				"grail":          { "id" : 26, "mode" : "grail", "produce": { "gold": 5000 }},

				"dwellingLvl1":   { "id" : 30, "requires" : [ "fort" ] },
				"dwellingLvl2":   { "id" : 31, "requires" : [ "dwellingLvl1" ] },
				"dwellingLvl3":   { "id" : 32, "requires" : [ "dwellingLvl1" ] },
				"dwellingLvl4":   { "id" : 33, "requires" : [ "dwellingLvl2" ] },
				"dwellingLvl5":   { "id" : 34, "requires" : [ "dwellingLvl4" ] },
				"dwellingLvl6":   { "id" : 35, "requires" : [ "allOf", [ "mageGuild1" ], [ "dwellingLvl4" ] ] },
				"dwellingLvl7":   { "id" : 36, "requires" : [ "allOf", [ "dwellingLvl5" ], [ "dwellingLvl6" ] ] },

				"dwellingUpLvl1": { "id" : 37, "upgrades" : "dwellingLvl1" },
				"dwellingUpLvl2": { "id" : 38, "upgrades" : "dwellingLvl2" },
				"dwellingUpLvl3": { "id" : 39, "upgrades" : "dwellingLvl3" },
				"dwellingUpLvl4": { "id" : 40, "upgrades" : "dwellingLvl4" },
				"dwellingUpLvl5": { "id" : 41, "upgrades" : "dwellingLvl5", "requires" : [ "mageGuild2" ] },
				"dwellingUpLvl6": { "id" : 42, "upgrades" : "dwellingLvl6" },
				"dwellingUpLvl7": { "id" : 43, "upgrades" : "dwellingLvl7" },

				"ship" : null,
				"shipyard" : null,
				"special1" : null
			},

			"siege" :
			{
				"shooter" : "gog",
				"imagePrefix" : "SGIN",
				"gate" :
				{
					"arch" : { "x" : 477, "y" : 221 },
					"gate" : { "x" : 408, "y" : 254 }
				},
				"moat" :
				{
					"bank" : { "x" : 403, "y" : 68 },
					"moat" : { "x" : 403, "y" : 68 }
				},
				"static" :
				{
					"background" : { "x" : 606, "y" : 52 },
					"bottom" : { "x" : 522, "y" : 376 },
					"top" : { "x" : 502, "y" : 92 }
				},
				"towers" :
				{
					"bottom" :
					{
						"battlement" : { "x" : 595, "y" : 514 },
						"creature" : { "x" : 369, "y" : 298 },
						"tower" : { "x" : 595, "y" : 514 }
					},
					"keep" :
					{
						"battlement" : { "x" : 730, "y" : 179 },
						"creature" : { "x" : 511, "y" : -37 },
						"tower" : { "x" : 730, "y" : 179 }
					},
					"top" :
					{
						"battlement" : { "x" : 569, "y" : 27 },
						"creature" : { "x" : 341, "y" : -187 },
						"tower" : { "x" : 569, "y" : 27 }
					}
				},
				"walls" :
				{
					"bottom" : { "x" : 561, "y" : 451 },
					"bottomMid" : { "x" : 485, "y" : 316 },
					"upper" : { "x" : 532, "y" : 71 },
					"upperMid" : { "x" : 480, "y" : 151 }
				}
			}
		}
	},
	"necropolis" :
	{
		"index" : 4,
		"nativeTerrain": "dirt",
		"alignment" : "evil",
		"creatureBackground" :
		{
			"120px" : "TPCASNEC",
			"130px" : "CRBKGNEC"
		},
		"puzzleMap" :
		{
			"prefix" : "PUZNEC",
			"pieces" :
			[
				{ "x": 7, "y": 8, "index": 22 },
				{ "x": 7, "y": 188, "index": 1 },
				{ "x": 7, "y": 329, "index": 20 },
				{ "x": 7, "y": 403, "index": 24 },
				{ "x": 8, "y": 8, "index": 47 },
				{ "x": 14, "y": 138, "index": 30 },
				{ "x": 15, "y": 8, "index": 9 },
				{ "x": 34, "y": 374, "index": 31 },
				{ "x": 55, "y": 82, "index": 25 },
				{ "x": 55, "y": 150, "index": 38 },
				{ "x": 57, "y": 281, "index": 8 },
				{ "x": 94, "y": 188, "index": 36 },
				{ "x": 108, "y": 344, "index": 6 },
				{ "x": 119, "y": 424, "index": 13 },
				{ "x": 124, "y": 256, "index": 37 },
				{ "x": 131, "y": 8, "index": 7 },
				{ "x": 139, "y": 92, "index": 11 },
				{ "x": 145, "y": 371, "index": 29 },
				{ "x": 148, "y": 42, "index": 21 },
				{ "x": 175, "y": 200, "index": 44 },
				{ "x": 200, "y": 291, "index": 45 },
				{ "x": 201, "y": 66, "index": 42 },
				{ "x": 210, "y": 482, "index": 18 },
				{ "x": 247, "y": 98, "index": 28 },
				{ "x": 250, "y": 227, "index": 48 },
				{ "x": 262, "y": 8, "index": 15 },
				{ "x": 293, "y": 373, "index": 32 },
				{ "x": 303, "y": 286, "index": 46 },
				{ "x": 318, "y": 173, "index": 43 },
				{ "x": 345, "y": 444, "index": 2 },
				{ "x": 356, "y": 8, "index": 5 },
				{ "x": 357, "y": 386, "index": 17 },
				{ "x": 362, "y": 38, "index": 40 },
				{ "x": 382, "y": 8, "index": 19 },
				{ "x": 382, "y": 119, "index": 35 },
				{ "x": 421, "y": 164, "index": 27 },
				{ "x": 422, "y": 249, "index": 4 },
				{ "x": 428, "y": 52, "index": 14 },
				{ "x": 429, "y": 101, "index": 10 },
				{ "x": 443, "y": 132, "index": 41 },
				{ "x": 452, "y": 239, "index": 34 },
				{ "x": 465, "y": 441, "index": 23 },
				{ "x": 469, "y": 300, "index": 39 },
				{ "x": 476, "y": 20, "index": 3 },
				{ "x": 537, "y": 249, "index": 33 },
				{ "x": 547, "y": 430, "index": 12 },
				{ "x": 559, "y": 140, "index": 26 },
				{ "x": 558, "y": 8, "index": 16 }
			]
		},
		"town" :
		{
			"mapObject" :
			{
				"templates" : {
					"castle" :  { "animation" : "AVCnecx0.def" },
					"citadel" : { "animation" : "AVCnecx0.def" },
					"fort"    : { "animation" : "AVCnecx0.def" },
					"village" : { "animation" : "AVCNECR0.DEF" },
					"capitol" : { "animation" : "AVCNECZ0.DEF" }
				}
			},
			"structures" :
			{
				"extraAnimation": { "animation" : "TBNCEXT2.def", "x" : 25,  "y" : 279 },
				"mageGuild1":     { "animation" : "TBNCMAGE.def", "x" : 341, "y" : 116, "z" : -1, "border" : "TONMAG1.bmp",  "area" : "TZNMAG1.bmp" },
				"mageGuild2":     { "animation" : "TBNCMAG2.def", "x" : 341, "y" : 97,  "z" : -1, "border" : "TONMAG2.bmp",  "area" : "TZNMAG2.bmp" },
				"mageGuild3":     { "animation" : "TBNCMAG3.def", "x" : 341, "y" : 78,  "z" : -1, "border" : "TONMAG3.bmp",  "area" : "TZNMAG3.bmp" },
				"mageGuild4":     { "animation" : "TBNCMAG4.def", "x" : 340, "y" : 62,  "z" : -1, "border" : "TONMAG4.bmp",  "area" : "TZNMAG4.bmp" },
				"mageGuild5":     { "animation" : "TBNCMAG5.def", "x" : 343, "y" : 35,  "z" : -1, "border" : "TONMAG5.bmp",  "area" : "TZNMAG5.bmp" },
				"tavern":         { "animation" : "TBNCTVRN.def", "x" : 508, "y" : 189, "border" : "TONTAV.bmp",   "area" : "TZNTAV.bmp"  },
				"shipyard":       { "animation" : "TBNCDOCK.def", "x" : 617, "y" : 265, "z" : -2, "border" : "TONSHPBA.bmp", "area" : "TZNSHPBA.bmp" },
				"fort":           { "animation" : "TBNCCSTL.def", "x" : 138, "y" : 66,  "border" : "TONCAS1.bmp",  "area" : "TZNCAS1.bmp" },
				"citadel":        { "animation" : "TBNCCAS2.def", "x" : 139, "y" : 66,  "border" : "TONCAS2.bmp",  "area" : "TZNCAS2.bmp" },
				"castle":         { "animation" : "TBNCCAS3.def", "x" : 34,  "y" : 18,  "border" : "TONCAS3.bmp",  "area" : "TZNCAS3.bmp" },
				"villageHall":    { "animation" : "TBNCHALL.def", "x" : 468, "y" : 76,  "z" : -1, "border" : "TONHAL1.bmp",  "area" : "TZNHAL1.bmp" },
				"townHall":       { "animation" : "TBNCHAL2.def", "x" : 482, "y" : 56,  "z" : -1, "border" : "TONHAL2.bmp",  "area" : "TZNHAL2.bmp" },
				"cityHall":       { "animation" : "TBNCHAL3.def", "x" : 478, "y" : 26,  "z" : -1, "border" : "TONHAL3.bmp",  "area" : "TZNHAL3.bmp" },
				"capitol":        { "animation" : "TBNCHAL4.def", "x" : 481, "y" : 26,  "z" : -1, "border" : "TONHAL4.bmp",  "area" : "TZNHAL4.bmp" },
				"marketplace":    { "animation" : "TBNCMARK.def", "x" : 347, "y" : 215, "z" : 2,  "border" : "TONMRK1.bmp",  "area" : "TZNMRK1.bmp" },
				"resourceSilo":   { "animation" : "TBNCSILO.def", "x" : 276, "y" : 185, "z" : 1,  "border" : "TONMRK2.bmp",  "area" : "TZNMRK2.bmp" },
				"blacksmith":     { "animation" : "TBNCBLAK.def", "x" : 382, "y" : 252, "z" : 4,  "border" : "TONSMITA.bmp", "area" : "TZNSMITA.bmp" },
				"special1":       { "animation" : "TBNCSPEC.def", "x" : 18,  "y" : 0,   "z" : -1, "border" : "TONSHRDA.bmp", "area" : "TZNSHRDA.bmp" },
				"horde1":         { "animation" : "TBNCHRD1.def", "x" : 80,  "y" : 222, "z" : 4, "border" : "TONSKE1H.bmp", "area" : "TZNSKE1H.bmp", "hidden" : true },
				"horde1Upgr":     { "animation" : "TBNCHRD2.def", "x" : 64,  "y" : 222, "z" : 4, "border" : "TONSKE2H.bmp", "area" : "TZNSKE2H.bmp", "hidden" : true, "builds" : "horde1" },
				"ship":           { "animation" : "TBNCBOAT.def", "x" : 617, "y" : 265, "z" : -2, "border" : "TONSHPNA.bmp", "area" : "TZNSHPNA.bmp", "hidden" : true },
				"special2":       { "animation" : "TBNCEXT0.def", "x" : 307, "y" : 61,  "z" : -2, "border" : "TONNECRA.bmp", "area" : "TZNNECRA.bmp" },
				"special3":       { "animation" : "TBNCEXT1.def", "x" : 247, "y" : 275, "z" : 4,  "border" : "TONSKELT.bmp", "area" : "TZNSKELT.bmp" },
				"grail":          { "animation" : "TBNCHOLY.def", "x" : 410, "y" : 88,  "border" : "TONHOLYA.bmp", "area" : "TZNHOLYA.bmp" },
				"extraTownHall":  { "animation" : "TBNCEXT3.def", "x" : 0,   "y" : 241 },
				"extraCityHall":  { "animation" : "TBNCEXT4.def", "x" : 321, "y" : 255 },
				"extraCapitol":   { "animation" : "TBNCEXT5.def", "x" : 475, "y" : 257 },
				"dwellingLvl1":   { "animation" : "TBNCDW_0.def", "x" : 80,  "y" : 222, "z" : 4, "border" : "TONSKEL1.bmp", "area" : "TZNSKEL1.bmp" },
				"dwellingLvl2":   { "animation" : "TBNCDW_1.def", "x" : 502, "y" : 223, "border" : "TONZOMB1.bmp", "area" : "TZNZOMB1.bmp" },
				"dwellingLvl3":   { "animation" : "TBNCDW_2.def", "x" : 0,   "y" : 187, "z" : 2, "border" : "TONWIGH1.bmp", "area" : "TZNWIGH1.bmp" },
				"dwellingLvl4":   { "animation" : "TBNCDW_3.def", "x" : 607, "y" : 212, "z" : 2, "border" : "TONVAM1.bmp",  "area" : "TZNVAM1.bmp" },
				"dwellingLvl5":   { "animation" : "TBNCDW_4.def", "x" : 206, "y" : 207, "z" : 3, "border" : "TONLICH1.bmp", "area" : "TZNLICH1.bmp" },
				"dwellingLvl6":   { "animation" : "TBNCDW_5.def", "x" : 0,   "y" : 31,  "border" : "TONBKN1.bmp",  "area" : "TZNBKN1.bmp" },
				"dwellingLvl7":   { "animation" : "TBNCDW_6.def", "x" : 663, "y" : 25,  "border" : "TONBON1.bmp",  "area" : "TZNBON1.bmp" },
				"dwellingUpLvl1": { "animation" : "TBNCUP_0.def", "x" : 64,  "y" : 222, "z" : 4, "border" : "TONSKEL2.bmp", "area" : "TZNSKEL2.bmp" },
				"dwellingUpLvl2": { "animation" : "TBNCUP_1.def", "x" : 498, "y" : 224, "border" : "TONZOMB2.bmp", "area" : "TZNZOMB2.bmp" },
				"dwellingUpLvl3": { "animation" : "TBNCUP_2.def", "x" : 0,   "y" : 179, "z" : 2, "border" : "TONWIGH2.bmp", "area" : "TZNWIGH2.bmp" },
				"dwellingUpLvl4": { "animation" : "TBNCUP_3.def", "x" : 615, "y" : 193, "z" : 2, "border" : "TONVAM2.bmp",  "area" : "TZNVAM2.bmp" },
				"dwellingUpLvl5": { "animation" : "TBNCUP_4.def", "x" : 222, "y" : 171, "z" : 3, "border" : "TONLICH2.bmp", "area" : "TZNLICH2.bmp" },
				"dwellingUpLvl6": { "animation" : "TBNCUP_5.def", "x" : 0,   "y" : 30,  "border" : "TONBKN2.bmp",  "area" : "TZNBKN2.bmp" },
				"dwellingUpLvl7": { "animation" : "TBNCUP_6.def", "x" : 662, "y" : 23,  "border" : "TONBON2.bmp",  "area" : "TZNBON2.bmp" }
			},

			"musicTheme" : "music/NecroTown",
			"defaultTavern" : 5,
			"tavernVideo" : "TAVERN.BIK",
			"guildBackground" : "TPMAGE.bmp",
			"townBackground": "TBNCBACK.bmp",
			"guildWindow": "TPMAGENC.bmp",
			"buildingsIcons": "HALLNECR.DEF",
			"hallBackground": "TPTHBKNC.BMP",
			"hallSlots":
			[
				[ [ "villageHall", "townHall", "cityHall", "capitol" ], [ "fort", "citadel", "castle" ], [ "tavern" ], [ "blacksmith" ] ],
				[ [ "marketplace", "resourceSilo" ], [ "mageGuild1", "mageGuild2", "mageGuild3", "mageGuild4", "mageGuild5" ], [ "special2" ], [ "shipyard" ] ],
				[ [ "special1" ], [ "special3" ], [ "horde1", "horde1Upgr" ] ],
				[ [ "dwellingLvl1", "dwellingUpLvl1" ], [ "dwellingLvl2", "dwellingUpLvl2" ], [ "dwellingLvl3", "dwellingUpLvl3" ], [ "dwellingLvl4", "dwellingUpLvl4" ] ],
				[ [ "dwellingLvl5", "dwellingUpLvl5" ], [ "dwellingLvl6", "dwellingUpLvl6" ], [ "dwellingLvl7", "dwellingUpLvl7" ] ]
			],
			"creatures" :
			[
				["skeleton", "skeletonWarrior"],
				["walkingDead", "zombieLord"],
				["wight", "wraith"],
				["vampire", "vampireLord"],
				["lich", "powerLich"],
				["blackKnight", "dreadKnight"],
				["boneDragon", "ghostDragon"]
			],
			"horde" : [ 0, -1 ],
			"mageGuild" : 5,
			"warMachine" : "firstAidTent",
			"moatDamage" : 70,
			"moatHexes" : [ 11, 28, 44, 61, 77, 111, 129, 146, 164, 181 ],


			"buildings" :
			{
				"mageGuild1":     { "id" : 0 },
				"mageGuild2":     { "id" : 1,  "upgrades" : "mageGuild1" },
				"mageGuild3":     { "id" : 2,  "upgrades" : "mageGuild2" },
				"mageGuild4":     { "id" : 3,  "upgrades" : "mageGuild3" },
				"mageGuild5":     { "id" : 4,  "upgrades" : "mageGuild4" },
				"tavern":         { "id" : 5 },
				"shipyard":       { "id" : 6 },
				"fort":           { "id" : 7 },
				"citadel":        { "id" : 8,  "upgrades" : "fort" },
				"castle":         { "id" : 9,  "upgrades" : "citadel" },
				"villageHall":    { "id" : 10, "mode" : "auto", "produce": { "gold": 500 } },
				"townHall":       { "id" : 11, "upgrades" : "villageHall", "requires" : [ "tavern" ], "produce": { "gold": 1000 } },
				"cityHall":       { "id" : 12, "upgrades" : "townHall", "requires" : [ "allOf", [ "mageGuild1" ], [ "marketplace" ], [ "blacksmith" ] ], "produce": { "gold": 2000 } },
				"capitol":        { "id" : 13, "upgrades" : "cityHall", "requires" : [ "castle" ], "produce": { "gold": 4000 } },
				"marketplace":    { "id" : 14 },
				"resourceSilo":   { "id" : 15, "requires" : [ "marketplace" ], "produce": { "ore": 1, "wood": 1 } },
				"blacksmith":     { "id" : 16 },

				"special1":       { "id" : 17, "requires" : [ "fort" ] },
				"horde1":         { "id" : 18, "upgrades" : "dwellingLvl1", "requires" : [ "special3" ] },
				"horde1Upgr":     { "id" : 19, "upgrades" : "dwellingUpLvl1", "requires" : [ "horde1" ], "mode" : "auto" },
				"ship":           { "id" : 20, "upgrades" : "shipyard" },
				"special2":       { "id" : 21, "requires" : [ "mageGuild1" ] },
				"special3":       { "id" : 22, "requires" : [ "dwellingLvl1" ] },
				"grail":          { "id" : 26, "mode" : "grail", "produce": { "gold": 5000 }},
				"extraTownHall":  { "id" : 27, "requires" : [ "townHall" ], "mode" : "auto" },
				"extraCityHall":  { "id" : 28, "requires" : [ "cityHall" ], "mode" : "auto" },
				"extraCapitol":   { "id" : 29, "requires" : [ "capitol" ], "mode" : "auto" },

				"dwellingLvl1":   { "id" : 30, "requires" : [ "fort" ] },
				"dwellingLvl2":   { "id" : 31, "requires" : [ "dwellingLvl1" ] },
				"dwellingLvl3":   { "id" : 32, "requires" : [ "dwellingLvl1" ] },
				"dwellingLvl4":   { "id" : 33, "requires" : [ "dwellingLvl2" ] },
				"dwellingLvl5":   { "id" : 34, "requires" : [ "allOf", [ "mageGuild1"  ], [ "dwellingLvl2" ] ] },
				"dwellingLvl6":   { "id" : 35, "requires" : [ "allOf", [ "dwellingLvl4" ], [ "dwellingLvl5" ] ] },
				"dwellingLvl7":   { "id" : 36, "requires" : [ "dwellingLvl6" ] },

				"dwellingUpLvl1": { "id" : 37, "upgrades" : "dwellingLvl1" },
				"dwellingUpLvl2": { "id" : 38, "upgrades" : "dwellingLvl2" },
				"dwellingUpLvl3": { "id" : 39, "upgrades" : "dwellingLvl3" },
				"dwellingUpLvl4": { "id" : 40, "upgrades" : "dwellingLvl4", "requires" : [ "special2" ] },
				"dwellingUpLvl5": { "id" : 41, "upgrades" : "dwellingLvl5" },
				"dwellingUpLvl6": { "id" : 42, "upgrades" : "dwellingLvl6" },
				"dwellingUpLvl7": { "id" : 43, "upgrades" : "dwellingLvl7" },

				"horde2" : null,
				"horde2Upgr" : null,
				"special4" : null
			},

			"siege" :
			{
				"shooter" : "lich",
				"imagePrefix" : "SGNC",
				"gate" :
				{
					"arch" : { "x" : 474, "y" : 240 },
					"gate" : { "x" : 401, "y" : 262 }
				},
				"moat" :
				{
					"bank" : { "x" : -1, "y" : -1 },
					"moat" : { "x" : 406, "y" : 77 }
				},
				"static" :
				{
					"background" : { "x" : 604, "y" : 58 },
					"bottom" : { "x" : 509, "y" : 372 },
					"top" : { "x" : 504, "y" : 97 }
				},
				"towers" :
				{
					"bottom" :
					{
						"battlement" : { "x" : 592, "y" : 512 },
						"creature" : { "x" : 371, "y" : 303 },
						"tower" : { "x" : 592, "y" : 512 }
					},
					"keep" :
					{
						"battlement" : { "x" : 730, "y" : 164 },
						"creature" : { "x" : 501, "y" : 98 },
						"tower" : { "x" : 730, "y" : 164 }
					},
					"top" :
					{
						"battlement" : { "x" : 561, "y" : 26 },
						"creature" : { "x" : 339, "y" : -177 },
						"tower" : { "x" : 561, "y" : 26 }
					}
				},
				"walls" :
				{
					"bottom" : { "x" : 536, "y" : 445 },
					"bottomMid" : { "x" : 478, "y" : 323 },
					"upper" : { "x" : 543, "y" : 66 },
					"upperMid" : { "x" : 487, "y" : 164 }
				}
			}
		}
	},
	"neutral" :
	{
		"name" : "Neutral",
		"index" : 9,
		"alignment" : "neutral",
		"creatureBackground" :
		{
			"120px" : "TPCASNEU",
			"130px" : "CRBKGNEU"
		}
	},
	"rampart" :
	{
		"index" : 1,
		"nativeTerrain": "grass",
		"alignment" : "good",
		"creatureBackground" :
		{
			"120px" : "TPCASRAM",
			"130px" : "CRBKGRAM"
		},
		"puzzleMap" :
		{
			"prefix" : "PUZRAM",
			"pieces" :
			[
				{ "x": 7, "y": 8, "index": 2 },
				{ "x": 7, "y": 101, "index": 13 },
				{ "x": 7, "y": 195, "index": 20 },
				{ "x": 7, "y": 310, "index": 6 },
				{ "x": 7, "y": 378, "index": 22 },
				{ "x": 7, "y": 449, "index": 21 },
				{ "x": 61, "y": 8, "index": 19 },
				{ "x": 97, "y": 42, "index": 8 },
				{ "x": 98, "y": 201, "index": 24 },
				{ "x": 108, "y": 308, "index": 36 },
				{ "x": 115, "y": 461, "index": 1 },
				{ "x": 129, "y": 366, "index": 7 },
				{ "x": 134, "y": 8, "index": 4 },
				{ "x": 157, "y": 188, "index": 25 },
				{ "x": 160, "y": 309, "index": 39 },
				{ "x": 162, "y": 441, "index": 11 },
				{ "x": 164, "y": 126, "index": 28 },
				{ "x": 174, "y": 390, "index": 33 },
				{ "x": 178, "y": 188, "index": 46 },
				{ "x": 187, "y": 258, "index": 41 },
				{ "x": 190, "y": 24, "index": 38 },
				{ "x": 215, "y": 272, "index": 45 },
				{ "x": 255, "y": 443, "index": 9 },
				{ "x": 265, "y": 323, "index": 40 },
				{ "x": 277, "y": 45, "index": 47 },
				{ "x": 278, "y": 383, "index": 27 },
				{ "x": 292, "y": 196, "index": 43 },
				{ "x": 294, "y": 266, "index": 48 },
				{ "x": 310, "y": 8, "index": 17 },
				{ "x": 330, "y": 493, "index": 16 },
				{ "x": 339, "y": 8, "index": 12 },
				{ "x": 339, "y": 167, "index": 29 },
				{ "x": 344, "y": 108, "index": 35 },
				{ "x": 361, "y": 239, "index": 31 },
				{ "x": 363, "y": 385, "index": 44 },
				{ "x": 398, "y": 310, "index": 42 },
				{ "x": 400, "y": 130, "index": 23 },
				{ "x": 404, "y": 436, "index": 32 },
				{ "x": 421, "y": 127, "index": 26 },
				{ "x": 429, "y": 8, "index": 37 },
				{ "x": 430, "y": 106, "index": 30 },
				{ "x": 462, "y": 393, "index": 14 },
				{ "x": 469, "y": 270, "index": 10 },
				{ "x": 486, "y": 8, "index": 3 },
				{ "x": 499, "y": 481, "index": 15 },
				{ "x": 511, "y": 255, "index": 34 },
				{ "x": 516, "y": 48, "index": 18 },
				{ "x": 525, "y": 169, "index": 5 }
			]
		},
		"town" :
		{
			"mapObject" :
			{
				"templates" : {
					"castle" :  { "animation" : "AVCramx0.def" },
					"citadel" : { "animation" : "AVCramx0.def" },
					"fort"    : { "animation" : "AVCramx0.def" },
					"village" : { "animation" : "AVCRAMP0.DEF" },
					"capitol" : { "animation" : "AVCRAMZ0.DEF" }
				}
			},
			"structures" :
			{
				"extraAnimation": { "animation" : "TBRMEXT2.def", "x" : 327, "y" : 236 },
				"mageGuild1":     { "animation" : "TBRMMAGE.def", "x" : 454, "y" : 200, "z" : -1, "border" : "TORMAG1.bmp",  "area" : "TZRMAG1.bmp" },
				"mageGuild2":     { "animation" : "TBRMMAG2.def", "x" : 438, "y" : 178, "z" : -1, "border" : "TORMAG2.bmp",  "area" : "TZRMAG2.bmp" },
				"mageGuild3":     { "animation" : "TBRMMAG3.def", "x" : 418, "y" : 153, "z" : -1, "border" : "TORMAG3.bmp",  "area" : "TZRMAG3.bmp" },
				"mageGuild4":     { "animation" : "TBRMMAG4.def", "x" : 406, "y" : 129, "z" : -1, "border" : "TORMAG4.bmp",  "area" : "TZRMAG4.bmp" },
				"mageGuild5":     { "animation" : "TBRMMAG5.def", "x" : 384, "y" : 104, "z" : -1, "border" : "TORMAG5.bmp",  "area" : "TZRMAG5.bmp" },
				"tavern":         { "animation" : "TBRMTVRN.def", "x" : 181, "y" : 229, "z" : 1,  "border" : "TORTAV.bmp",   "area" : "TZRTAV.bmp" },
				"fort":           { "animation" : "TBRMCSTL.def", "x" : 63,  "y" : 25,  "z" : -2, "border" : "TORCAS1.bmp",  "area" : "TZRCAS1.bmp" },
				"citadel":        { "animation" : "TBRMCAS2.def", "x" : 79,  "y" : 18,  "z" : -2, "border" : "TORCAS3.bmp",  "area" : "TZRCAS3.bmp" },
				"castle":         { "animation" : "TBRMCAS3.def", "x" : 79,  "y" : 18,  "z" : -2, "border" : "TORCAS2.bmp",  "area" : "TZRCAS2.bmp" },
				"villageHall":    { "animation" : "TBRMHALL.def", "x" : 565, "y" : 216, "border" : "TORHAL1.bmp",  "area" : "TZRHAL1.bmp" },
				"townHall":       { "animation" : "TBRMHAL2.def", "x" : 538, "y" : 187, "border" : "TORHAL2.bmp",  "area" : "TZRHAL2.bmp" },
				"cityHall":       { "animation" : "TBRMHAL3.def", "x" : 538, "y" : 187, "border" : "TORHAL3.bmp",  "area" : "TZRHAL3.bmp" },
				"capitol":        { "animation" : "TBRMHAL4.def", "x" : 534, "y" : 187, "border" : "TORHAL4.bmp",  "area" : "TZRHAL4.bmp" },
				"marketplace":    { "animation" : "TBRMMARK.def", "x" : 129, "y" : 301, "z" : 3,  "border" : "TORMRK1.bmp",  "area" : "TZRMRK1.bmp" },
				"resourceSilo":   { "animation" : "TBRMSILO.def", "x" : 245, "y" : 324, "z" : 4,  "border" : "TORMRK2.bmp",  "area" : "TZRMRK2.bmp" },
				"blacksmith":     { "animation" : "TBRMBLAK.def", "x" : 558, "y" : 105, "z" : -3, "border" : "TORAID.bmp",   "area" : "TZRAID.bmp" },
				"special1":       { "animation" : "TBRMSPEC.def", "x" : 555, "y" : 297, "border" : "TORGAR1A.bmp", "area" : "TZRGAR1A.bmp" },
				"horde1":         { "animation" : "TBRMHRD1.def", "x" : 0,   "y" : 154, "border" : "TORDWF1H.bmp", "area" : "TZRDWF1H.bmp", "hidden" : true },
				"horde1Upgr":     { "animation" : "TBRMHRD2.def", "x" : 0,   "y" : 143, "border" : "TORDWF2H.bmp", "area" : "TZRDWF2H.bmp", "hidden" : true, "builds" : "horde1" },
				"special2":       { "animation" : "TBRMEXT0.def", "x" : 555, "y" : 297, "z" : 2, "border" : "TORGAR2A.bmp", "area" : "TZRGAR2A.bmp" },
				"special3":       { "animation" : "TBRMEXT1.def", "x" : 0,   "y" : 181, "z" : 1, "border" : "TORDWFT.bmp",  "area" : "TZRDWFT.bmp" },
				"horde2":         { "animation" : "TBRMHRD3.def", "x" : 47,  "y" : 142, "z" : -1, "border" : "TORTRE1H.bmp", "area" : "TZRTRE1H.bmp", "hidden" : true },
				"horde2Upgr":     { "animation" : "TBRMHRD4.def", "x" : 47,  "y" : 142, "z" : -1, "border" : "TORTRE2H.bmp", "area" : "TZRTRE2H.bmp", "hidden" : true, "builds" : "horde2" },
				"grail":          { "animation" : "TBRMHOLY.def", "x" : 0,   "y" : 54,  "z" : -1, "border" : "TORHOLY.bmp",  "area" : "TZRHOLY.bmp" },
				"extraTownHall":  { "animation" : "TBRMEXT3.def", "x" : 293, "y" : 235 },
				"extraCityHall":  { "animation" : "TBRMEXT4.def", "x" : 295, "y" : 191 },
				"extraCapitol":   { "animation" : "TBRMEXT5.def", "x" : 260, "y" : 171 },
				"dwellingLvl1":   { "animation" : "TBRMDW_0.def", "x" : 0,   "y" : 236, "z" : 2,  "border" : "TORCEN1A.bmp", "area" : "TZRCEN1A.bmp" },
				"dwellingLvl2":   { "animation" : "TBRMDW_1.def", "x" : 0,   "y" : 154, "border" : "TORDWF1.bmp",  "area" : "TZRDWF1.bmp" },
				"dwellingLvl3":   { "animation" : "TBRMDW_2.def", "x" : 668, "y" : 101, "border" : "TORELF1.bmp",  "area" : "TZRELF1.bmp" },
				"dwellingLvl4":   { "animation" : "TBRMDW_3.def", "x" : 287, "y" : 73,  "z" : -1, "border" : "TORPEG1A.bmp", "area" : "TZRPEG1A.bmp" },
				"dwellingLvl5":   { "animation" : "TBRMDW_4.def", "x" : 68,  "y" : 146, "z" : -1, "border" : "TORTRE1.bmp",  "area" : "TZRTRE1.bmp" },
				"dwellingLvl6":   { "animation" : "TBRMDW_5.def", "x" : 362, "y" : 90,  "z" : -2, "border" : "TORUNI1.bmp",  "area" : "TZRUNI1.bmp" },
				"dwellingLvl7":   { "animation" : "TBRMDW_6.def", "x" : 502, "y" : 27,  "z" : -5, "border" : "TORDR1AA.bmp", "area" : "TZRDR1AA.bmp" },
				"dwellingUpLvl1": { "animation" : "TBRMUP_0.def", "x" : 0,   "y" : 236, "z" : 2,  "border" : "TORCEN2A.bmp", "area" : "TZRCEN2A.bmp" },
				"dwellingUpLvl2": { "animation" : "TBRMUP_1.def", "x" : 0,   "y" : 143, "border" : "TORDWF2.bmp",  "area" : "TZRDWF2.bmp" },
				"dwellingUpLvl3": { "animation" : "TBRMUP_2.def", "x" : 665, "y" : 101, "border" : "TORELF2.bmp",  "area" : "TZRELF2.bmp" },
				"dwellingUpLvl4": { "animation" : "TBRMUP_3.def", "x" : 287, "y" : 28,  "z" : -1, "border" : "TORPEG2A.bmp", "area" : "TZRPEG2A.bmp" },
				"dwellingUpLvl5": { "animation" : "TBRMUP_4.def", "x" : 63,  "y" : 146, "z" : -1, "border" : "TORTRE2.bmp",  "area" : "TZRTRE2.bmp" },
				"dwellingUpLvl6": { "animation" : "TBRMUP_5.def", "x" : 362, "y" : 90,  "z" : -2, "border" : "TORUNI2.bmp",  "area" : "TZRUNI2.bmp" },
				"dwellingUpLvl7": { "animation" : "TBRMUP_6.def", "x" : 502, "y" : 5,   "z" : -5, "border" : "TORDR2AA.bmp", "area" : "TZRDR2AA.bmp" }
			},

			"musicTheme" : "music/Rampart",
			"defaultTavern" : 5,
			"tavernVideo" : "TAVERN.BIK",
			"guildBackground" : "TPMAGE.bmp",
			"townBackground": "TBRMBACK.bmp",
			"guildWindow": "TPMAGERM.bmp",
			"buildingsIcons": "HALLRAMP.DEF",
			"hallBackground": "TPTHBKRM.BMP",
			"hallSlots":
			[
				[ [ "villageHall", "townHall", "cityHall", "capitol" ], [ "fort", "citadel", "castle" ], [ "tavern" ], [ "blacksmith" ] ],
				[ [ "marketplace", "resourceSilo" ], [ "mageGuild1", "mageGuild2", "mageGuild3", "mageGuild4", "mageGuild5" ], [ "special1", "special2" ] ],
				[ [ "special3" ], [ "horde2", "horde2Upgr" ], [ "horde1", "horde1Upgr" ] ],
				[ [ "dwellingLvl1", "dwellingUpLvl1" ], [ "dwellingLvl2", "dwellingUpLvl2" ], [ "dwellingLvl3", "dwellingUpLvl3" ], [ "dwellingLvl4", "dwellingUpLvl4" ] ],
				[ [ "dwellingLvl5", "dwellingUpLvl5" ], [ "dwellingLvl6", "dwellingUpLvl6" ], [ "dwellingLvl7", "dwellingUpLvl7" ] ]
			],
			"creatures" :
			[
				["centaur", "centaurCaptain"],
				["dwarf", "battleDwarf"],
				["woodElf", "grandElf"],
				["pegasus", "silverPegasus"],
				["dendroidGuard", "dendroidSoldier"],
				["unicorn", "warUnicorn"],
				["greenDragon", "goldDragon"]
			],
			"horde" : [ 1, 4 ],
			"mageGuild" : 5,
			"primaryResource" : "crystal",
			"warMachine" : "firstAidTent",
			"moatDamage" : 70,
			"moatHexes" : [ 11, 28, 44, 61, 77, 111, 129, 146, 164, 181 ],

			"buildings" :
			{
				"mageGuild1":     { "id" : 0 },
				"mageGuild2":     { "id" : 1,  "upgrades" : "mageGuild1" },
				"mageGuild3":     { "id" : 2,  "upgrades" : "mageGuild2" },
				"mageGuild4":     { "id" : 3,  "upgrades" : "mageGuild3" },
				"mageGuild5":     { "id" : 4,  "upgrades" : "mageGuild4" },
				"tavern":         { "id" : 5 },
				"fort":           { "id" : 7 },
				"citadel":        { "id" : 8,  "upgrades" : "fort" },
				"castle":         { "id" : 9,  "upgrades" : "citadel" },
				"villageHall":    { "id" : 10, "mode" : "auto", "produce": { "gold": 500 } },
				"townHall":       { "id" : 11, "upgrades" : "villageHall", "requires" : [ "tavern" ], "produce": { "gold": 1000 } },
				"cityHall":       { "id" : 12, "upgrades" : "townHall", "requires" : [ "allOf", [ "mageGuild1" ], [ "marketplace" ], [ "blacksmith" ] ], "produce": { "gold": 2000 } },
				"capitol":        { "id" : 13, "upgrades" : "cityHall", "requires" : [ "castle" ], "produce": { "gold": 4000 } },
				"marketplace":    { "id" : 14 },
				"resourceSilo":   { "id" : 15, "requires" : [ "marketplace" ], "produce": { "crystal": 1 } },
				"blacksmith":     { "id" : 16 },

				"special1":       { "id" : 17 },
				"horde1":         { "id" : 18, "upgrades" : "dwellingLvl2" },
				"horde1Upgr":     { "id" : 19, "upgrades" : "dwellingUpLvl2", "requires" : [ "horde1" ], "mode" : "auto" },
				"special2":       { "id" : 21, "requires" : [ "special1" ] },
				"special3":       { "id" : 22, "requires" : [ "horde1" ] },
				"horde2":         { "id" : 24, "upgrades" : "dwellingLvl5" },
				"horde2Upgr":     { "id" : 25, "upgrades" : "dwellingUpLvl5", "requires" : [ "horde2" ], "mode" : "auto" },
				"grail":          { "id" : 26, "mode" : "grail", "produce": { "gold": 5000 }},
				"extraTownHall":  { "id" : 27, "requires" : [ "townHall" ], "mode" : "auto" },
				"extraCityHall":  { "id" : 28, "requires" : [ "cityHall" ], "mode" : "auto" },
				"extraCapitol":   { "id" : 29, "requires" : [ "capitol" ], "mode" : "auto" },

				"dwellingLvl1":   { "id" : 30, "requires" : [ "fort" ] },
				"dwellingLvl2":   { "id" : 31, "requires" : [ "dwellingLvl1" ] },
				"dwellingLvl3":   { "id" : 32, "requires" : [ "dwellingLvl1" ] },
				"dwellingLvl4":   { "id" : 33, "requires" : [ "dwellingLvl3" ] },
				"dwellingLvl5":   { "id" : 34, "requires" : [ "dwellingLvl3" ] },
				"dwellingLvl6":   { "id" : 35, "requires" : [ "allOf", [ "dwellingLvl3" ], [ "dwellingLvl4" ] ] },
				"dwellingLvl7":   { "id" : 36, "requires" : [ "allOf", [ "dwellingLvl6" ], [ "mageGuild2" ] ] },

				"dwellingUpLvl1": { "id" : 37, "upgrades" : "dwellingLvl1" },
				"dwellingUpLvl2": { "id" : 38, "upgrades" : "dwellingLvl2" },
				"dwellingUpLvl3": { "id" : 39, "upgrades" : "dwellingLvl3" },
				"dwellingUpLvl4": { "id" : 40, "upgrades" : "dwellingLvl4" },
				"dwellingUpLvl5": { "id" : 41, "upgrades" : "dwellingLvl5" },
				"dwellingUpLvl6": { "id" : 42, "upgrades" : "dwellingLvl6" },
				"dwellingUpLvl7": { "id" : 43, "upgrades" : "dwellingLvl7", "requires" : [ "mageGuild3" ] },

				"ship" : null,
				"shipyard" : null,
				"special4" : null
			},

			"siege" :
			{
				"shooter" : "woodElf",
				"imagePrefix" : "SGRM",
				"gate" :
				{
					"arch" : { "x" : 460, "y" : 220 },
					"gate" : { "x" : 403, "y" : 271 }
				},
				"moat" :
				{
					"bank" : { "x" : 410, "y" : 97 },
					"moat" : { "x" : 410, "y" : 77 }
				},
				"static" :
				{
					"background" : { "x" : 608, "y" : 46 },
					"bottom" : { "x" : 510, "y" : 364 },
					"top" : { "x" : 492, "y" : 103 }
				},
				"towers" :
				{
					"bottom" :
					{
						"battlement" : { "x" : 594, "y" : 511 },
						"creature" : { "x" : 371, "y" : 296 },
						"tower" : { "x" : 594, "y" : 511 }
					},
					"keep" :
					{
						"battlement" : { "x" : 724, "y" : 189 },
						"creature" : { "x" : 532, "y" : -27 },
						"tower" : { "x" : 724, "y" : 189 }
					},
					"top" :
					{
						"battlement" : { "x" : 566, "y" : 31 },
						"creature" : { "x" : 341, "y" : -186 },
						"tower" : { "x" : 565, "y" : 31 }
					}
				},
				"walls" :
				{
					"bottom" : { "x" : 549, "y" : 451 },
					"bottomMid" : { "x" : 469, "y" : 309 },
					"upper" : { "x" : 530, "y" : 57 },
					"upperMid" : { "x" : 469, "y" : 186 }
				}
			}
		}
	},
	"random":
	{
        "index": -1,
        "town":
		{
			"mapObject" :
			{
				"templates" :
				{
					"castle" :  { "editorAnimation" : "AVCRANX0.def" },
					"village" : { "editorAnimation" : "AVCRAND0.def" },
					"capitol" : { "editorAnimation" : "AVCRANZ0.def" }
				}
			},
			"buildings" :
			{
				"mageGuild1":     { "id" : 0 },
				"mageGuild2":     { "id" : 1,  "upgrades" : "mageGuild1" },
				"mageGuild3":     { "id" : 2,  "upgrades" : "mageGuild2" },
				"mageGuild4":     { "id" : 3,  "upgrades" : "mageGuild3" },
				"mageGuild5":     { "id" : 4,  "upgrades" : "mageGuild4" },

				"tavern":         { "id" : 5 },
				"shipyard":       { "id" : 6 },
				"fort":           { "id" : 7 },
				"citadel":        { "id" : 8,  "upgrades" : "fort" },
				"castle":         { "id" : 9,  "upgrades" : "citadel" },


				"villageHall":    { "id" : 10, "mode" : "auto", "produce" : { "gold": 500 } },
				"townHall":       { "id" : 11, "upgrades" : "villageHall", "requires" : [ "tavern" ], "produce" : { "gold": 1000 } },
				"cityHall":       { "id" : 12, "upgrades" : "townHall", "requires" : [ "allOf", [ "mageGuild1" ], [ "marketplace" ], [ "blacksmith" ] ], "produce": { "gold": 2000 } },
				"capitol":        { "id" : 13, "upgrades" : "cityHall", "requires" : [ "castle" ], "produce" : { "gold": 4000 } },


				"marketplace":    { "id" : 14 },
				"resourceSilo":   { "id" : 15, "upgrades" : "marketplace" },
				"blacksmith":     { "id" : 16 },

				"horde1":         { "id" : -30, "upgrades" : "dwellingLvl1" },
				"horde2":         { "id" : -31, "upgrades" : "dwellingLvl2" },
				"horde3":         { "id" : -32, "upgrades" : "dwellingLvl3" },
				"horde4":         { "id" : -33, "upgrades" : "dwellingLvl4" },
				"horde5":         { "id" : -34, "upgrades" : "dwellingLvl5" },
				"horde6":         { "id" : -35, "upgrades" : "dwellingLvl6" },
				"horde7":         { "id" : -36, "upgrades" : "dwellingLvl7" },

				"grail":          { "id" : 26, "mode" : "grail", "produce" : { "gold": 5000 } },

				"dwellingLvl1":   { "id" : 30 },
				"dwellingLvl2":   { "id" : 31 },
				"dwellingLvl3":   { "id" : 32 },
				"dwellingLvl4":   { "id" : 33 },
				"dwellingLvl5":   { "id" : 34 },
				"dwellingLvl6":   { "id" : 35 },
				"dwellingLvl7":   { "id" : 36 },

				"dwellingUpLvl1": { "id" : 37, "upgrades" : "dwellingLvl1" },
				"dwellingUpLvl2": { "id" : 38, "upgrades" : "dwellingLvl2" },
				"dwellingUpLvl3": { "id" : 39, "upgrades" : "dwellingLvl3" },
				"dwellingUpLvl4": { "id" : 40, "upgrades" : "dwellingLvl4" },
				"dwellingUpLvl5": { "id" : 41, "upgrades" : "dwellingLvl5" },
				"dwellingUpLvl6": { "id" : 42, "upgrades" : "dwellingLvl6" },
				"dwellingUpLvl7": { "id" : 43, "upgrades" : "dwellingLvl7" }
			}
		}
	},
	"stronghold" :
	{
		"index" : 6,
		"nativeTerrain": "rough",
		"alignment" : "neutral",
		"creatureBackground" :
		{
			"120px" : "TPCASSTR",
			"130px" : "CRBKGSTR"
		},
		"puzzleMap" :
		{
			"prefix" : "PUZSTR",
			"pieces" :
			[
				{ "x": 7, "y": 8, "index": 6 },
				{ "x": 7, "y": 229, "index": 14 },
				{ "x": 7, "y": 405, "index": 15 },
				{ "x": 7, "y": 465, "index": 10 },
				{ "x": 12, "y": 8, "index": 9 },
				{ "x": 32, "y": 245, "index": 21 },
				{ "x": 32, "y": 277, "index": 33 },
				{ "x": 36, "y": 337, "index": 19 },
				{ "x": 39, "y": 15, "index": 36 },
				{ "x": 47, "y": 115, "index": 23 },
				{ "x": 49, "y": 178, "index": 25 },
				{ "x": 70, "y": 8, "index": 1 },
				{ "x": 101, "y": 35, "index": 41 },
				{ "x": 111, "y": 311, "index": 44 },
				{ "x": 123, "y": 156, "index": 45 },
				{ "x": 138, "y": 423, "index": 32 },
				{ "x": 140, "y": 224, "index": 43 },
				{ "x": 144, "y": 136, "index": 11 },
				{ "x": 149, "y": 452, "index": 18 },
				{ "x": 158, "y": 475, "index": 5 },
				{ "x": 191, "y": 68, "index": 7 },
				{ "x": 202, "y": 12, "index": 39 },
				{ "x": 218, "y": 349, "index": 34 },
				{ "x": 219, "y": 285, "index": 42 },
				{ "x": 222, "y": 96, "index": 28 },
				{ "x": 262, "y": 8, "index": 8 },
				{ "x": 279, "y": 166, "index": 48 },
				{ "x": 279, "y": 425, "index": 22 },
				{ "x": 303, "y": 314, "index": 27 },
				{ "x": 320, "y": 109, "index": 16 },
				{ "x": 326, "y": 146, "index": 47 },
				{ "x": 333, "y": 160, "index": 46 },
				{ "x": 362, "y": 26, "index": 4 },
				{ "x": 365, "y": 441, "index": 17 },
				{ "x": 380, "y": 297, "index": 38 },
				{ "x": 392, "y": 242, "index": 29 },
				{ "x": 427, "y": 275, "index": 40 },
				{ "x": 445, "y": 85, "index": 2 },
				{ "x": 446, "y": 424, "index": 30 },
				{ "x": 459, "y": 347, "index": 37 },
				{ "x": 463, "y": 53, "index": 24 },
				{ "x": 484, "y": 210, "index": 20 },
				{ "x": 488, "y": 8, "index": 26 },
				{ "x": 489, "y": 303, "index": 35 },
				{ "x": 529, "y": 8, "index": 31 },
				{ "x": 529, "y": 421, "index": 3 },
				{ "x": 558, "y": 87, "index": 13 },
				{ "x": 563, "y": 261, "index": 12 }
			]
		},
		"town" :
		{
			"mapObject" :
			{
				"templates" : {
					"castle" :  { "animation" : "AVCstrx0.def" },
					"citadel" : { "animation" : "AVCstrx0.def" },
					"fort"    : { "animation" : "AVCstrx0.def" },
					"village" : { "animation" : "AVCSTRO0.DEF" },
					"capitol" : { "animation" : "AVCSTRZ0.DEF" }
				}
			},
			"structures" :
			{
				"extraAnimation": { "animation" : "TBSTEXT3.def", "x" : 23,  "y" : 20 },
				"mageGuild1":     { "animation" : "TBSTMAGE.def", "x" : 473, "y" : 67,  "z" : -1, "border" : "TOSMAG1.bmp",  "area" : "TZSMAG1.bmp" },
				"mageGuild2":     { "animation" : "TBSTMAG2.def", "x" : 473, "y" : 37,  "z" : -1, "border" : "TOSMAG2.bmp",  "area" : "TZSMAG2.bmp" },
				"mageGuild3":     { "animation" : "TBSTMAG3.def", "x" : 473, "y" : 1,   "z" : -1, "border" : "TOSMAG3.bmp",  "area" : "TZSMAG3.bmp" },
				"tavern":         { "animation" : "TBSTTVRN.def", "x" : 170, "y" : 280, "z" : 2,  "border" : "TOSTAV.bmp",   "area" : "TZSTAV.bmp" },
				"fort":           { "animation" : "TBSTCSTL.def", "x" : 402, "y" : 148, "z" : -1, "border" : "TOSCA1.bmp",   "area" : "TZSCA1.bmp" },
				"citadel":        { "animation" : "TBSTCAS2.def", "x" : 402, "y" : 114, "z" : -1, "border" : "TOSCA2.bmp",   "area" : "TZSCA2.bmp" },
				"castle":         { "animation" : "TBSTCAS3.def", "x" : 402, "y" : 114, "z" : -1, "border" : "TOSCA3.bmp",   "area" : "TZSCA3.bmp" },
				"villageHall":    { "animation" : "TBSTHALL.def", "x" : 0,   "y" : 259, "border" : "TOSHAL1A.bmp", "area" : "TZSHAL1A.bmp" },
				"townHall":       { "animation" : "TBSTHAL2.def", "x" : 0,   "y" : 225, "border" : "TOSHAL2A.bmp", "area" : "TZSHAL2A.bmp" },
				"cityHall":       { "animation" : "TBSTHAL3.def", "x" : 0,   "y" : 201, "border" : "TOSHAL3A.bmp", "area" : "TZSHAL3A.bmp" },
				"capitol":        { "animation" : "TBSTHAL4.def", "x" : 0,   "y" : 148, "border" : "TOSHAL4A.bmp", "area" : "TZSHAL4A.bmp" },
				"marketplace":    { "animation" : "TBSTMARK.def", "x" : 397, "y" : 308, "z" : 1,  "border" : "TOSMRK1.bmp",  "area" : "TZSMRK1.bmp" },
				"resourceSilo":   { "animation" : "TBSTSILO.def", "x" : 458, "y" : 248, "z" : 1,  "border" : "TOSMRK2.bmp",  "area" : "TZSMRK2.bmp" },
				"blacksmith":     { "animation" : "TBSTBLAK.def", "x" : 660, "y" : 286, "border" : "TOSBLK1.bmp",  "area" : "TZSBLK1.bmp" },
				"special1":       { "animation" : "TBSTSPEC.def", "x" : 550, "y" : 229, "border" : "TOSCA1EA.bmp", "area" : "TZSCA1EA.bmp" },
				"horde1":         { "animation" : "TBSTHRD1.def", "x" : 373, "y" : 239, "border" : "TOSGOB1H.bmp", "area" : "TZSGOB1H.bmp", "hidden" : true },
				"horde1Upgr":     { "animation" : "TBSTHRD2.def", "x" : 373, "y" : 220, "border" : "TOSGOB2H.bmp", "area" : "TZSGOB2H.bmp", "hidden" : true, "builds" : "horde1" },
				"special2":       { "animation" : "TBSTEXT0.def", "x" : 473, "y" : 282, "z" : 3,  "border" : "TOSMRK1C.bmp", "area" : "TZSMRK1C.bmp" },
				"special3":       { "animation" : "TBSTEXT1.def", "x" : 617, "y" : 286, "z" : 1,  "border" : "TOSBLK2.bmp",  "area" : "TZSBLK2.bmp" },
				"special4":       { "animation" : "TBSTEXT2.def", "x" : 313, "y" : 13,  "z" : -1, "border" : "TOSVAH.bmp",   "area" : "TZSVAH.bmp" },
				"grail":          { "animation" : "TBSTHOLY.def", "x" : 321, "y" : 105, "z" : 2,  "border" : "TOSHOLYA.bmp", "area" : "TZSHOLYA.bmp" },
				"dwellingLvl1":   { "animation" : "TBSTDW_0.def", "x" : 373, "y" : 239, "border" : "TOSGOB1.bmp",  "area" : "TZSGOB1.bmp" },
				"dwellingLvl2":   { "animation" : "TBSTDW_1.def", "x" : 266, "y" : 246, "z" : 1,  "border" : "TOSWOL1.bmp",  "area" : "TZSWOL1.bmp" },
				"dwellingLvl3":   { "animation" : "TBSTDW_2.def", "x" : 566, "y" : 232, "z" : 2,  "border" : "TOSORC1.bmp",  "area" : "TZSORC1.bmp" },
				"dwellingLvl4":   { "animation" : "TBSTDW_3.def", "x" : 197, "y" : 204, "border" : "TOSOGR1.bmp",  "area" : "TZSOGR1.bmp" },
				"dwellingLvl5":   { "animation" : "TBSTDW_4.def", "x" : 137, "y" : 30,  "z" : -1, "border" : "TOSROC1.bmp",  "area" : "TZSROC1.bmp" },
				"dwellingLvl6":   { "animation" : "TBSTDW_5.def", "x" : 622, "y" : 160, "z" : -2, "border" : "TOSCYC1.bmp",  "area" : "TZSCYC1.bmp" },
				"dwellingLvl7":   { "animation" : "TBSTDW_6.def", "x" : 604, "y" : 0,   "border" : "TOSBEH1A.bmp", "area" : "TZSBEH1A.bmp" },
				"dwellingUpLvl1": { "animation" : "TBSTUP_0.def", "x" : 373, "y" : 220, "border" : "TOSGOB2.bmp",  "area" : "TZSGOB2.bmp" },
				"dwellingUpLvl2": { "animation" : "TBSTUP_1.def", "x" : 266, "y" : 225, "z" : 1,  "border" : "TOSWOL2.bmp",  "area" : "TZSWOL2.bmp" },
				"dwellingUpLvl3": { "animation" : "TBSTUP_2.def", "x" : 566, "y" : 158, "z" : 2,  "border" : "TOSORC2.bmp",  "area" : "TZSORC2.bmp" },
				"dwellingUpLvl4": { "animation" : "TBSTUP_3.def", "x" : 197, "y" : 137, "border" : "TOSOGR2.bmp",  "area" : "TZSOGR2.bmp" },
				"dwellingUpLvl5": { "animation" : "TBSTUP_4.def", "x" : 129, "y" : 15,  "z" : -1, "border" : "TOSROC2.bmp",  "area" : "TZSROC2.bmp" },
				"dwellingUpLvl6": { "animation" : "TBSTUP_5.def", "x" : 616, "y" : 93,  "z" : -2, "border" : "TOSCYC2A.bmp", "area" : "TZSCYC2A.bmp" },
				"dwellingUpLvl7": { "animation" : "TBSTUP_6.def", "x" : 604, "y" : 0,   "border" : "TOSBEH2A.bmp", "area" : "TZSBEH2A.bmp" }
			},

			"musicTheme" : "music/Stronghold",
			"defaultTavern" : 5,
			"tavernVideo" : "TAVERN.BIK",
			"guildBackground" : "TPMAGE.bmp",
			"townBackground": "TBSTBACK.bmp",
			"guildWindow": "TPMAGEST.bmp",
			"buildingsIcons": "HALLSTRN.DEF",
			"hallBackground": "TPTHBKTW.BMP",
			"hallSlots":
			[
				[ [ "villageHall", "townHall", "cityHall", "capitol" ], [ "fort", "citadel", "castle" ], [ "tavern" ], [ "blacksmith" ] ],
				[ [ "marketplace", "resourceSilo" ], [ "mageGuild1", "mageGuild2", "mageGuild3" ], [ "special4" ], [ "special1" ] ],
				[ [ "special2" ], [ "special3" ], [ "horde1", "horde1Upgr" ] ],
				[ [ "dwellingLvl1", "dwellingUpLvl1" ], [ "dwellingLvl2", "dwellingUpLvl2" ], [ "dwellingLvl3", "dwellingUpLvl3" ], [ "dwellingLvl4", "dwellingUpLvl4" ] ],
				[ [ "dwellingLvl5", "dwellingUpLvl5" ], [ "dwellingLvl6", "dwellingUpLvl6" ], [ "dwellingLvl7", "dwellingUpLvl7" ] ]
			],
			"creatures" :
			[
				["goblin", "hobgoblin"],
				["goblinWolfRider", "hobgoblinWolfRider"],
				["orc", "orcChieftain"],
				["ogre", "ogreMage"],
				["roc", "thunderbird"],
				["cyclop", "cyclopKing"],
				["behemoth", "ancientBehemoth"]
			],
			"horde" : [ 0, -1 ],
			"mageGuild" : 3,
			"warMachine" : "ammoCart",
			"moatDamage" : 70,
			"moatHexes" : [ 11, 28, 44, 61, 77, 111, 129, 146, 164, 181 ],


			"buildings" :
			{
				"mageGuild1":     { "id" : 0 },
				"mageGuild2":     { "id" : 1,  "upgrades" : "mageGuild1" },
				"mageGuild3":     { "id" : 2,  "upgrades" : "mageGuild2" },
				"tavern":         { "id" : 5 },
				"fort":           { "id" : 7 },
				"citadel":        { "id" : 8,  "upgrades" : "fort" },
				"castle":         { "id" : 9,  "upgrades" : "citadel" },
				"villageHall":    { "id" : 10, "mode" : "auto", "produce": { "gold": 500 } },
				"townHall":       { "id" : 11, "upgrades" : "villageHall", "requires" : [ "tavern" ], "produce": { "gold": 1000 } },
				"cityHall":       { "id" : 12, "upgrades" : "townHall", "requires" : [ "allOf", [ "mageGuild1" ], [ "marketplace" ], [ "blacksmith" ] ], "produce": { "gold": 2000 } },
				"capitol":        { "id" : 13, "upgrades" : "cityHall", "requires" : [ "castle" ], "produce": { "gold": 4000 } },
				"marketplace":    { "id" : 14 },
				"resourceSilo":   { "id" : 15, "requires" : [ "marketplace" ], "produce": { "ore": 1, "wood": 1 } },
				"blacksmith":     { "id" : 16 },

				"special1":       { "id" : 17, "requires" : [ "fort" ] },
				"horde1":         { "id" : 18, "upgrades" : "dwellingLvl1" },
				"horde1Upgr":     { "id" : 19, "upgrades" : "dwellingUpLvl1", "requires" : [ "horde1" ], "mode" : "auto" },
				"special2":       { "id" : 21, "requires" : [ "marketplace" ] },
				"special3":       { "id" : 22, "requires" : [ "blacksmith" ] },
				"special4":       { "id" : 23, "requires" : [ "fort" ] },
				"grail":          { "id" : 26, "mode" : "grail", "produce": { "gold": 5000 }},

				"dwellingLvl1":   { "id" : 30, "requires" : [ "fort" ] },
				"dwellingLvl2":   { "id" : 31, "requires" : [ "dwellingLvl1" ] },
				"dwellingLvl3":   { "id" : 32, "requires" : [ "dwellingLvl1" ] },
				"dwellingLvl4":   { "id" : 33, "requires" : [ "dwellingLvl3" ] },
				"dwellingLvl5":   { "id" : 34, "requires" : [ "dwellingLvl2" ] },
				"dwellingLvl6":   { "id" : 35, "requires" : [ "dwellingLvl4" ] },
				"dwellingLvl7":   { "id" : 36, "requires" : [ "dwellingLvl5" ] },

				"dwellingUpLvl1": { "id" : 37, "upgrades" : "dwellingLvl1" },
				"dwellingUpLvl2": { "id" : 38, "upgrades" : "dwellingLvl2", "requires" : [ "dwellingUpLvl1" ] },
				"dwellingUpLvl3": { "id" : 39, "upgrades" : "dwellingLvl3", "requires" : [ "blacksmith" ] },
				"dwellingUpLvl4": { "id" : 40, "upgrades" : "dwellingLvl4", "requires" : [ "mageGuild1" ] },
				"dwellingUpLvl5": { "id" : 41, "upgrades" : "dwellingLvl5" },
				"dwellingUpLvl6": { "id" : 42, "upgrades" : "dwellingLvl6" },
				"dwellingUpLvl7": { "id" : 43, "upgrades" : "dwellingLvl7" },

				"horde2" : null,
				"horde2Upgr" : null,
				"mageGuild4" : null,
				"mageGuild5" : null,
				"ship" : null,
				"shipyard" : null
			},

			"siege" :
			{
				"shooter" : "orc",
				"imagePrefix" : "SGST",
				"gate" :
				{
					"arch" : { "x" : 478, "y" : 235 },
					"gate" : { "x" : 407, "y" : 266 }
				},
				"moat" :
				{
					"bank" : { "x" : 410, "y" : 91 },
					"moat" : { "x" : 410, "y" : 90 }
				},
				"static" :
				{
					"background" : { "x" : 617, "y" : 62 },
					"bottom" : { "x" : 511, "y" : 380 },
					"top" : { "x" : 499, "y" : 107}
				},
				"towers" :
				{
					"bottom" :
					{
						"battlement" : { "x" : 586, "y" : 508 },
						"creature" : { "x" : 361, "y" : 290 },
						"tower" : { "x" : 586, "y" : 508 }
					},
					"keep" :
					{
						"battlement" : { "x" : 731, "y" : 168 },
						"creature" : { "x" : 531, "y" : -45 },
						"tower" : { "x" : 731, "y" : 168 }
					},
					"top" :
					{
						"battlement" : { "x" : 568, "y" : 30 },
						"creature" : { "x" : 342, "y" : -187 },
						"tower" : { "x" : 568, "y" : 30 }
					}
				},
				"walls" :
				{
					"bottom" : { "x" : 553, "y" : 440 },
					"bottomMid" : { "x" : 483, "y" : 304 },
					"upper" : { "x" : 534, "y" : 69 },
					"upperMid" : { "x" : 476, "y" : 189 }
				}
			}
		}
	},
	"tower" :
	{
		"index" : 2,
		"nativeTerrain" : "snow",
		"alignment" : "good",
		"creatureBackground" :
		{
			"120px" : "TPCASTOW",
			"130px" : "CRBKGTOW"
		},
		"puzzleMap" :
		{
			"prefix" : "PUZTOW",
			"pieces" :
			[
				{ "x": 7, "y": 8, "index": 1 },
				{ "x": 7, "y": 52, "index": 13 },
				{ "x": 7, "y": 243, "index": 8 },
				{ "x": 7, "y": 486, "index": 22 },
				{ "x": 26, "y": 391, "index": 7 },
				{ "x": 27, "y": 31, "index": 23 },
				{ "x": 27, "y": 89, "index": 31 },
				{ "x": 28, "y": 303, "index": 20 },
				{ "x": 28, "y": 336, "index": 25 },
				{ "x": 37, "y": 234, "index": 33 },
				{ "x": 59, "y": 77, "index": 6 },
				{ "x": 76, "y": 462, "index": 15 },
				{ "x": 91, "y": 245, "index": 34 },
				{ "x": 114, "y": 31, "index": 19 },
				{ "x": 118, "y": 323, "index": 42 },
				{ "x": 132, "y": 87, "index": 36 },
				{ "x": 163, "y": 370, "index": 40 },
				{ "x": 171, "y": 255, "index": 21 },
				{ "x": 192, "y": 8, "index": 28 },
				{ "x": 212, "y": 483, "index": 38 },
				{ "x": 228, "y": 95, "index": 44 },
				{ "x": 231, "y": 205, "index": 46 },
				{ "x": 293, "y": 380, "index": 10 },
				{ "x": 297, "y": 190, "index": 43 },
				{ "x": 297, "y": 260, "index": 48 },
				{ "x": 298, "y": 8, "index": 17 },
				{ "x": 298, "y": 89, "index": 35 },
				{ "x": 312, "y": 462, "index": 29 },
				{ "x": 320, "y": 261, "index": 45 },
				{ "x": 340, "y": 17, "index": 37 },
				{ "x": 350, "y": 121, "index": 12 },
				{ "x": 350, "y": 174, "index": 41 },
				{ "x": 355, "y": 371, "index": 27 },
				{ "x": 357, "y": 469, "index": 3 },
				{ "x": 376, "y": 289, "index": 11 },
				{ "x": 388, "y": 8, "index": 4 },
				{ "x": 407, "y": 45, "index": 47 },
				{ "x": 421, "y": 284, "index": 30 },
				{ "x": 436, "y": 159, "index": 39 },
				{ "x": 445, "y": 8, "index": 18 },
				{ "x": 445, "y": 211, "index": 26 },
				{ "x": 463, "y": 422, "index": 24 },
				{ "x": 477, "y": 29, "index": 2 },
				{ "x": 497, "y": 153, "index": 5 },
				{ "x": 499, "y": 108, "index": 14 },
				{ "x": 503, "y": 281, "index": 16 },
				{ "x": 537, "y": 418, "index": 9 },
				{ "x": 556, "y": 215, "index": 32 }
			]
		},
		"town" :
		{
			"mapObject" :
			{
				"templates" : {
					"castle" :  { "animation" : "AVCtowx0.def" },
					"citadel" : { "animation" : "AVCtowx0.def" },
					"fort"    : { "animation" : "AVCtowx0.def" },
					"village" : { "animation" : "AVCTOWR0.DEF" },
					"capitol" : { "animation" : "AVCTOWZ0.DEF" }
				}
			},
			"structures" :
			{
				"mageGuild1":     { "animation" : "TBTWMAGE.def", "x" : 597, "y" : 82,  "border" : "TOTGLD1.bmp",  "area" : "TZTGLD1.bmp" },
				"mageGuild2":     { "animation" : "TBTWMAG2.def", "x" : 593, "y" : 65,  "border" : "TOTGLD2.bmp",  "area" : "TZTGLD2.bmp" },
				"mageGuild3":     { "animation" : "TBTWMAG3.def", "x" : 593, "y" : 48,  "border" : "TOTGLD3.bmp",  "area" : "TZTGLD3.bmp" },
				"mageGuild4":     { "animation" : "TBTWMAG4.def", "x" : 593, "y" : 31,  "border" : "TOTGLD4.bmp",  "area" : "TZTGLD4.bmp" },
				"mageGuild5":     { "animation" : "TBTWMAG5.def", "x" : 593, "y" : 14,  "border" : "TOTGLD5.bmp",  "area" : "TZTGLD5.bmp" },
				"tavern":         { "animation" : "TBTWTVRN.def", "x" : 375, "y" : 278, "z" : 1, "border" : "TOTTAV.bmp",   "area" : "TZTTAV.bmp" },
				"fort":           { "animation" : "TBTWCSTL.def", "x" : 304, "y" : 0,   "border" : "TOTCAS1.bmp",  "area" : "TZTCAS1.bmp" },
				"citadel":        { "animation" : "TBTWCAS2.def", "x" : 301, "y" : 0,   "border" : "TOTCAS2.bmp",  "area" : "TZTCAS2.bmp" },
				"castle":         { "animation" : "TBTWCAS3.def", "x" : 301, "y" : 0,   "border" : "TOTCAS3.bmp",  "area" : "TZTCAS3.bmp" },
				"villageHall":    { "animation" : "TBTWHALL.def", "x" : 0,   "y" : 259, "z" : 1,  "border" : "TOTHAL1.bmp",  "area" : "TZTHAL1.bmp" },
				"townHall":       { "animation" : "TBTWHAL2.def", "x" : 0,   "y" : 220, "z" : 1,  "border" : "TOTHAL2.bmp",  "area" : "TZTHAL2.bmp" },
				"cityHall":       { "animation" : "TBTWHAL3.def", "x" : 0,   "y" : 82,  "z" : 1,  "border" : "TOTHAL3.bmp",  "area" : "TZTHAL3.bmp" },
				"capitol":        { "animation" : "TBTWHAL4.def", "x" : 0,   "y" : 82,  "z" : 1,  "border" : "TOTHAL4.bmp",  "area" : "TZTHAL4.bmp" },
				"marketplace":    { "animation" : "TBTWMARK.def", "x" : 614, "y" : 292, "border" : "TOTMRK.bmp",   "area" : "TZTMRK.bmp" },
				"resourceSilo":   { "animation" : "TBTWSILO.def", "x" : 763, "y" : 214, "z" : 3, "border" : "TOTMRKS.bmp",  "area" : "TZTMRKS.bmp" },
				"blacksmith":     { "animation" : "TBTWBLAK.def", "x" : 478, "y" : 211, "border" : "TOTBLKA.bmp",  "area" : "TZTBLKA.bmp" },
				"special1":       { "animation" : "TBTWSPEC.def", "x" : 674, "y" : 276, "z" : 2, "border" : "TOTMRKA.bmp",  "area" : "TZTMRKA.bmp" },
				"horde1":         { "animation" : "TBTWHRD1.def", "x" : 0,   "y" : 47,  "border" : "TOTGAR1H.bmp", "area" : "TZTGAR1H.bmp", "hidden" : true },
				"horde1Upgr":     { "animation" : "TBTWHRD2.def", "x" : 0,   "y" : 28,  "border" : "TOTGAR2H.bmp", "area" : "TZTGAR2H.bmp", "hidden" : true, "builds" : "horde1" },
				"special2":       { "animation" : "TBTWEXT0.def", "x" : 409, "y" : 82,  "border" : "TOTCASW.bmp",  "area" : "TZTCASW.bmp" },
				"special3":       { "animation" : "TBTWEXT1.def", "x" : 702, "y" : 115, "border" : "TOTGLDL.bmp",  "area" : "TZTGLDL.bmp" },
				"special4":       { "animation" : "TBTWEXT2.def", "x" : 592, "y" : 189, "z" : 1,  "border" : "TOTGLDW.bmp",  "area" : "TZTGLDW.bmp" },
				"grail":          { "animation" : "TBTWHOLY.def", "x" : 237, "y" : 14,  "z" : -1, "border" : "TOTHOLYA.bmp", "area" : "TZTHOLYA.bmp" },
				"dwellingLvl1":   { "animation" : "TBTWDW_0.def", "x" : 453, "y" : 221, "z" : 1,  "border" : "TOTGRM1A.bmp", "area" : "TZTGRM1A.bmp" },
				"dwellingLvl2":   { "animation" : "TBTWDW_1.def", "x" : 4,   "y" : 46,  "border" : "TOTGAR1.bmp",  "area" : "TZTGAR1.bmp" },
				"dwellingLvl3":   { "animation" : "TBTWDW_2.def", "x" : 209, "y" : 177, "z" : 1,  "border" : "TOTGOL1A.bmp", "area" : "TZTGOL1A.bmp" },
				"dwellingLvl4":   { "animation" : "TBTWDW_3.def", "x" : 613, "y" : 95,  "border" : "TOTMAG1.bmp",  "area" : "TZTMAG1.bmp" },
				"dwellingLvl5":   { "animation" : "TBTWDW_4.def", "x" : 511, "y" : 75,  "border" : "TOTGEN1.bmp",  "area" : "TZTGEN1.bmp" },
				"dwellingLvl6":   { "animation" : "TBTWDW_5.def", "x" : 681, "y" : 208, "z" : 2,  "border" : "TOTNAG1.bmp",  "area" : "TZTNAG1.bmp" },
				"dwellingLvl7":   { "animation" : "TBTWDW_6.def", "x" : 75,  "y" : 144, "z" : -1, "border" : "TOTTIT1.bmp",  "area" : "TZTTIT1.bmp" },
				"dwellingUpLvl1": { "animation" : "TBTWUP_0.def", "x" : 446, "y" : 221, "z" : 1,  "border" : "TOTGRM2A.bmp", "area" : "TZTGRM2A.bmp" },
				"dwellingUpLvl2": { "animation" : "TBTWUP_1.def", "x" : 4,   "y" : 28,  "border" : "TOTGAR2.bmp",  "area" : "TZTGAR2.bmp" },
				"dwellingUpLvl3": { "animation" : "TBTWUP_2.def", "x" : 209, "y" : 177, "z" : 1,  "border" : "TOTGOL2A.bmp", "area" : "TZTGOL2A.bmp" },
				"dwellingUpLvl4": { "animation" : "TBTWUP_3.def", "x" : 613, "y" : 74,  "border" : "TOTMAG2.bmp",  "area" : "TZTMAG2.bmp" },
				"dwellingUpLvl5": { "animation" : "TBTWUP_4.def", "x" : 511, "y" : 8,   "border" : "TOTGEN2.bmp",  "area" : "TZTGEN2.bmp" },
				"dwellingUpLvl6": { "animation" : "TBTWUP_5.def", "x" : 681, "y" : 157, "z" : 2,  "border" : "TOTNAG2.bmp",  "area" : "TZTNAG2.bmp" },
				"dwellingUpLvl7": { "animation" : "TBTWUP_6.def", "x" : 75,  "y" : 91,  "z" : -1, "border" : "TOTTIT2.bmp",  "area" : "TZTTIT2.bmp" }
			},

			"musicTheme" : "music/TowerTown",
			"defaultTavern" : 5,
			"tavernVideo" : "TAVERN.BIK",
			"guildBackground" : "TPMAGE.bmp",
			"townBackground": "TBTWBACK.bmp",
			"guildWindow": "TPMAGETW.bmp",
			"buildingsIcons": "HALLTOWR.DEF",
			"hallBackground": "TPTHBKTW.BMP",
			"hallSlots":
			[
				[ [ "villageHall", "townHall", "cityHall", "capitol" ], [ "fort", "citadel", "castle" ], [ "tavern" ], [ "blacksmith" ] ],
				[ [ "marketplace", "resourceSilo" ], [ "mageGuild1", "mageGuild2", "mageGuild3", "mageGuild4", "mageGuild5" ], [ "special3" ], [ "special4" ] ],
				[ [ "special1" ], [ "special2" ], [ "horde1", "horde1Upgr" ] ],
				[ [ "dwellingLvl1", "dwellingUpLvl1" ], [ "dwellingLvl2", "dwellingUpLvl2" ], [ "dwellingLvl3", "dwellingUpLvl3" ], [ "dwellingLvl4", "dwellingUpLvl4" ] ],
				[ [ "dwellingLvl5", "dwellingUpLvl5" ], [ "dwellingLvl6", "dwellingUpLvl6" ], [ "dwellingLvl7", "dwellingUpLvl7" ] ]
			],
			"creatures" :
			[
				["gremlin", "masterGremlin"],
				["stoneGargoyle", "obsidianGargoyle"],
				["ironGolem", "stoneGolem"],
				["mage", "archMage"],
				["genie", "masterGenie"],
				["naga", "nagaQueen"],
				["giant", "titan"]
			],
			"horde" : [ 1, -1 ],
			"primaryResource" : "gems",
			"mageGuild" : 5,
			"warMachine" : "ammoCart",
			"moatDamage" : 0,
			"moatHexes" : [ 11, 28, 44, 61, 77, 111, 129, 146, 164, 181 ],

			"buildings" :
			{
				"mageGuild1":     { "id" : 0 },
				"mageGuild2":     { "id" : 1,  "upgrades" : "mageGuild1" },
				"mageGuild3":     { "id" : 2,  "upgrades" : "mageGuild2" },
				"mageGuild4":     { "id" : 3,  "upgrades" : "mageGuild3" },
				"mageGuild5":     { "id" : 4,  "upgrades" : "mageGuild4" },
				"tavern":         { "id" : 5 },
				"fort":           { "id" : 7 },
				"citadel":        { "id" : 8,  "upgrades" : "fort" },
				"castle":         { "id" : 9,  "upgrades" : "citadel" },
				"villageHall":    { "id" : 10, "mode" : "auto", "produce" : { "gold": 500 } },
				"townHall":       { "id" : 11, "upgrades" : "villageHall", "requires" : [ "tavern" ], "produce" : { "gold": 1000 } },
				"cityHall":       { "id" : 12, "upgrades" : "townHall", "requires" : [ "allOf", [ "mageGuild1" ], [ "marketplace" ], [ "blacksmith" ] ], "produce": { "gold": 2000 } },
				"capitol":        { "id" : 13, "upgrades" : "cityHall", "requires" : [ "castle" ], "produce" : { "gold": 4000 } },
				"marketplace":    { "id" : 14 },
				"resourceSilo":   { "id" : 15, "requires" : [ "marketplace" ], "produce" : { "gems": 1 } },
				"blacksmith":     { "id" : 16 },

				"special1":       { "id" : 17, "requires" : [ "marketplace" ] },
				"horde1":         { "id" : 18, "upgrades" : "dwellingLvl2" },
				"horde1Upgr":     { "id" : 19, "upgrades" : "dwellingUpLvl2", "requires" : [ "horde1" ], "mode" : "auto" },
				"special2":       { "id" : 21, "requires" : [ "fort" ] },
				"special3":       { "id" : 22, "requires" : [ "mageGuild1" ] },
				"special4":       { "id" : 23, "requires" : [ "mageGuild1" ] },
				"grail":          { "id" : 26, "mode" : "grail", "produce" : { "gold": 5000 } },

				"dwellingLvl1":   { "id" : 30, "requires" : [ "fort" ] },
				"dwellingLvl2":   { "id" : 31, "requires" : [ "dwellingLvl1" ] },
				"dwellingLvl3":   { "id" : 32, "requires" : [ "dwellingLvl1" ] },
				"dwellingLvl4":   { "id" : 33, "requires" : [ "allOf", [ "mageGuild1" ], [ "dwellingLvl2" ], [ "dwellingLvl3" ] ] },
				"dwellingLvl5":   { "id" : 34, "requires" : [ "dwellingLvl4" ] },
				"dwellingLvl6":   { "id" : 35, "requires" : [ "dwellingLvl4" ] },
				"dwellingLvl7":   { "id" : 36, "requires" : [ "allOf", [ "dwellingLvl5" ], [ "dwellingLvl6" ] ] },

				"dwellingUpLvl1": { "id" : 37, "upgrades" : "dwellingLvl1" },
				"dwellingUpLvl2": { "id" : 38, "upgrades" : "dwellingLvl2" },
				"dwellingUpLvl3": { "id" : 39, "upgrades" : "dwellingLvl3" },
				"dwellingUpLvl4": { "id" : 40, "upgrades" : "dwellingLvl4", "requires" : [ "special3" ] },
				"dwellingUpLvl5": { "id" : 41, "upgrades" : "dwellingLvl5" },
				"dwellingUpLvl6": { "id" : 42, "upgrades" : "dwellingLvl6" },
				"dwellingUpLvl7": { "id" : 43, "upgrades" : "dwellingLvl7" },

				"horde2" : null,
				"horde2Upgr" : null,
				"ship" : null,
				"shipyard" : null
			},

			"siege" :
			{
				"shooter" : "mage",
				"imagePrefix" : "SGTW",
				"gate" :
				{
					"arch" : { "x" : 471, "y" : 187 },
					"gate" : { "x" : 400, "y" : 253 }
				},
				"moat" :
				{
					"bank" : { "x" : 410, "y" : 80 },
					"moat" : { "x" : 410, "y" : 90 }
				},
				"static" :
				{
					"background" : { "x" : 615, "y" : 57 },
					"bottom" : { "x" : 517, "y" : 365 },
					"top" : { "x" : 514, "y" : 79 }
				},
				"towers" :
				{
					"bottom" :
					{
						"battlement" : { "x" : 592, "y" : 516 },
						"creature" : { "x" : 355, "y" : 311 },
						"tower" : { "x" : 592, "y" : 516 }
					},
					"keep" :
					{
						"battlement" : { "x" : 726, "y" : 148 },
						"creature" : { "x" : 499, "y" : -16 },
						"tower" : { "x" : 726, "y" : 148 }
					},
					"top" :
					{
						"battlement" : { "x" : 580, "y" : 36 },
						"creature" : { "x" : 346, "y" : -175 },
						"tower" : { "x" : 580, "y" : 36 }
					}
				},
				"walls" :
				{
					"bottom" : { "x" : 547, "y" : 452 },
					"bottomMid" : { "x" : 475, "y" : 298 },
					"upper" : { "x" : 547, "y" : 66 },
					"upperMid" : { "x" : 488, "y" : 190 }
				}
			}
		}
	}
}
',
        "heroClasses" => '{
	"knight":
	{
		"index": 0,
		"faction" : "castle",
		"defaultTavern" : 5,
		"affinity" : "might",
		"commander" : "zealot",
		"mapObject" : { "templates" : { "default" : { "animation" : "AH00_.def", "editorAnimation": "AH00_E.def" } } },
		"animation":  { "battle" : { "male" : "CH00.DEF",  "female" : "CH01.DEF" } }
	},
	"cleric" :
	{
		"index": 1,
		"faction" : "castle",
		"defaultTavern" : 5,
		"affinity" : "magic",
		"commander" : "zealot",
		"mapObject" : { "templates" : { "default" : { "animation" : "AH01_.def", "editorAnimation": "AH01_E.def" } } },
		"animation":  { "battle" : { "male" : "CH00.DEF",  "female" : "CH01.DEF" } }
	},
	"ranger" :
	{
		"index": 2,
		"faction" : "rampart",
		"defaultTavern" : 5,
		"affinity" : "might",
		"commander" : "grandElf",
		"mapObject" : { "templates" : { "default" : { "animation" : "AH02_.def", "editorAnimation": "AH02_E.def" } } },
		"animation":  { "battle" : { "male" : "CH02.DEF",  "female" : "CH03.DEF" } }
	},
	"druid" :
	{
		"index": 3,
		"faction" : "rampart",
		"defaultTavern" : 5,
		"affinity" : "magic",
		"commander" : "grandElf",
		"mapObject" : { "templates" : { "default" : { "animation" : "AH03_.def", "editorAnimation": "AH03_E.def" } } },
		"animation":  { "battle" : { "male" : "CH02.DEF",  "female" : "CH03.DEF" } }
	},
	"alchemist" :
	{
		"index": 4,
		"faction" : "tower",
		"defaultTavern" : 5,
		"affinity" : "might",
		"commander" : "archMage",
		"mapObject" : { "templates" : { "default" : { "animation" : "AH04_.def", "editorAnimation": "AH04_E.def" } } },
		"animation":  { "battle" : { "male" : "CH05.DEF",  "female" : "CH04.DEF" } }
	},
	"wizard" :
	{
		"index": 5,
		"faction" : "tower",
		"defaultTavern" : 5,
		"affinity" : "magic",
		"commander" : "archMage",
		"mapObject" : { "templates" : { "default" : { "animation" : "AH05_.def", "editorAnimation": "AH05_E.def" } } },
		"animation":  { "battle" : { "male" : "CH05.DEF",  "female" : "CH04.DEF" } }
	},
	"demoniac" :
	{
		"index": 6,
		"faction" : "inferno",
		"defaultTavern" : 5,
		"affinity" : "might",
		"commander" : "magog",
		"mapObject" : { "templates" : { "default" : { "animation" : "AH06_.def", "editorAnimation": "AH06_E.def" } } },
		"animation":  { "battle" : { "male" : "CH06.DEF",  "female" : "CH07.DEF" } }
	},
	"heretic" :
	{
		"index": 7,
		"faction" : "inferno",
		"defaultTavern" : 5,
		"affinity" : "magic",
		"commander" : "magog",
		"mapObject" : { "templates" : { "default" : { "animation" : "AH07_.def", "editorAnimation": "AH07_E.def" } } },
		"animation":  { "battle" : { "male" : "CH06.DEF",  "female" : "CH07.DEF" } }
	},
	"deathknight" :
	{
		"index": 8,
		"faction" : "necropolis",
		"defaultTavern" : 5,
		"affinity" : "might",
		"commander" : "powerLich",
		"mapObject" : { "templates" : { "default" : { "animation" : "AH08_.def", "editorAnimation": "AH08_E.def" } } },
		"animation":  { "battle" : { "male" : "CH08.DEF",  "female" : "CH09.DEF" } }
	},
	"necromancer" :
	{
		"index": 9,
		"faction" : "necropolis",
		"defaultTavern" : 5,
		"affinity" : "magic",
		"commander" : "powerLich",
		"mapObject" : { "templates" : { "default" : { "animation" : "AH09_.def", "editorAnimation": "AH09_E.def" } } },
		"animation":  { "battle" : { "male" : "CH08.DEF",  "female" : "CH09.DEF" } }
	},
	"warlock" :
	{
		"index": 10,
		"faction" : "dungeon",
		"defaultTavern" : 5,
		"affinity" : "might",
		"commander" : "medusaQueen",
		"mapObject" : { "templates" : { "default" : { "animation" : "AH10_.def", "editorAnimation": "AH10_E.def" } } },
		"animation":  { "battle" : { "male" : "CH010.DEF",  "female" : "CH11.DEF" } }
	},
	"overlord" :
	{
		"index": 11,
		"faction" : "dungeon",
		"defaultTavern" : 5,
		"affinity" : "magic",
		"commander" : "medusaQueen",
		"mapObject" : { "templates" : { "default" : { "animation" : "AH11_.def", "editorAnimation": "AH11_E.def" } } },
		"animation":  { "battle" : { "male" : "CH010.DEF",  "female" : "CH11.DEF" } }
	},
	"barbarian" :
	{
		"index": 12,
		"faction" : "stronghold",
		"defaultTavern" : 5,
		"affinity" : "might",
		"commander" : "orcChieftain",
		"mapObject" : { "templates" : { "default" : { "animation" : "AH12_.def", "editorAnimation": "AH12_E.def" } } },
		"animation":  { "battle" : { "male" : "CH013.DEF",  "female" : "CH012.DEF" } }
	},
	"battlemage" :
	{
		"index": 13,
		"faction" : "stronghold",
		"defaultTavern" : 5,
		"affinity" : "magic",
		"commander" : "orcChieftain",
		"mapObject" : { "templates" : { "default" : { "animation" : "AH13_.def", "editorAnimation": "AH13_E.def" } } },
		"animation":  { "battle" : { "male" : "CH013.DEF",  "female" : "CH012.DEF" } }
	},
	"beastmaster" :
	{
		"index": 14,
		"faction" : "fortress",
		"defaultTavern" : 5,
		"affinity" : "might",
		"commander" : "lizardWarrior",
		"mapObject" : { "templates" : { "default" : { "animation" : "AH14_.def", "editorAnimation": "AH14_E.def" } } },
		"animation":  { "battle" : { "male" : "CH014.DEF",  "female" : "CH015.DEF" } }
	},
	"witch" :
	{
		"index": 15,
		"faction" : "fortress",
		"defaultTavern" : 5,
		"affinity" : "magic",
		"commander" : "lizardWarrior",
		"mapObject" : { "templates" : { "default" : { "animation" : "AH15_.def", "editorAnimation": "AH15_E.def" } } },
		"animation":  { "battle" : { "male" : "CH014.DEF",  "female" : "CH015.DEF" } }
	},
	"planeswalker" :
	{
		"index": 16,
		"faction" : "conflux",
		"defaultTavern" : 5,
		"affinity" : "might",
		"commander" : "iceElemental",
		"mapObject" : { "templates" : { "default" : { "animation" : "AH16_.def", "editorAnimation": "AH16_E.def" } } },
		"animation":  { "battle" : { "male" : "CH16.DEF",  "female" : "CH16.DEF" } }
	},
	"elementalist" :
	{
		"index": 17,
		"faction" : "conflux",
		"defaultTavern" : 5,
		"affinity" : "magic",
		"commander" : "iceElemental",
		"mapObject" : { "templates" : { "default" : { "animation" : "AH17_.def", "editorAnimation": "AH17_E.def" } } },
		"animation":  { "battle" : { "male" : "CH17.DEF",  "female" : "CH17.DEF" } }
	}
}
',
        "heroes" => '{
	"orrin":
	{
		"index": 0,
		"class" : "knight",
		"female": false,
		"skills":
		[
			{ "skill" : "leadership", "level": "basic" },
			{ "skill" : "archery", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"archery" : {
					"subtype" : "skill.archery",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"valeska":
	{
		"index": 1,
		"class" : "knight",
		"female": true,
		"skills":
		[
			{ "skill" : "leadership", "level": "basic" },
			{ "skill" : "archery", "level": "basic" }
		],
		"specialty" : {
			"creature" : "archer"
		}
	},
	"edric":
	{
		"index": 2,
		"class" : "knight",
		"female": false,
		"skills":
		[
			{ "skill" : "leadership", "level": "basic" },
			{ "skill" : "armorer", "level": "basic" }
		],
		"specialty" : {
			"creature" : "griffin"
		}
	},
	"sylvia":
	{
		"index": 3,
		"class" : "knight",
		"female": true,
		"skills":
		[
			{ "skill" : "leadership", "level": "basic" },
			{ "skill" : "navigation", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"navigation" : {
					"subtype" : "skill.navigation",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"lordHaart":
	{
		"index": 4,
		"class" : "knight",
		"female": false,
		"special" : true,
		"skills":
		[
			{ "skill" : "leadership", "level": "basic" },
			{ "skill" : "estates", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"estates" : {
					"subtype" : "skill.estates",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"sorsha":
	{
		"index": 5,
		"class" : "knight",
		"female": true,
		"skills":
		[
			{ "skill" : "leadership", "level": "basic" },
			{ "skill" : "offence", "level": "basic" }
		],
		"specialty" : {
			"creature" : "swordsman"
		}
	},
	"christian":
	{
		"index": 6,
		"class" : "knight",
		"female": false,
		"skills":
		[
			{ "skill" : "leadership", "level": "basic" },
			{ "skill" : "artillery", "level": "basic" }
		],
		"specialty" : {
			"creature" : "ballista"
		}
	},
	"tyris":
	{
		"index": 7,
		"class" : "knight",
		"female": true,
		"skills":
		[
			{ "skill" : "leadership", "level": "basic" },
			{ "skill" : "tactics", "level": "basic" }
		],
		"specialty" : {
			"creature" : "cavalier"
		}
	},
	"rion":
	{
		"index": 8,
		"class" : "cleric",
		"female": false,
		"spellbook": [ "stoneSkin" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "firstAid", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"firstAid" : {
					"subtype" : "skill.firstAid",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"adela":
	{
		"index": 9,
		"class" : "cleric",
		"female": true,
		"spellbook": [ "bless" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "diplomacy", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"bless" : {
					"addInfo" : 0,
					"subtype" : "spell.bless",
					"type" : "SPECIAL_BLESS_DAMAGE",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 3
				}
			}
		}
	},
	"cuthbert":
	{
		"index": 10,
		"class" : "cleric",
		"female": false,
		"spellbook": [ "weakness" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "estates", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"weakness" : {
					"addInfo" : 0,
					"subtype" : "spell.weakness",
					"type" : "SPECIAL_PECULIAR_ENCHANT"
				}
			}
		}
	},
	"adelaide":
	{
		"index": 11,
		"class" : "cleric",
		"female": true,
		"spellbook": [ "frostRing" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "advanced" }
		],
		"specialty" : {
			"bonuses" : {
				"frostRing" : {
					"subtype" : "spell.frostRing",
					"type" : "SPECIAL_SPELL_LEV",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 3
				}
			}
		}
	},
	"ingham":
	{
		"index": 12,
		"class" : "cleric",
		"female": false,
		"spellbook": [ "curse" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "mysticism", "level": "basic" }
		],
		"specialty" : {
			"creature" : "monk"
		}
	},
	"sanya":
	{
		"index": 13,
		"class" : "cleric",
		"female": true,
		"spellbook": [ "dispel" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "eagleEye", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"eagleEye" : {
					"subtype" : "skill.eagleEye",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"loynis":
	{
		"index": 14,
		"class" : "cleric",
		"spellbook": [ "prayer" ],
		"female": false,
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "learning", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"prayer" : {
					"addInfo" : 0,
					"subtype" : "spell.prayer",
					"type" : "SPECIAL_PECULIAR_ENCHANT"
				}
			}
		}
	},
	"caitlin":
	{
		"index": 15,
		"class" : "cleric",
		"female": true,
		"spellbook": [ "cure" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "intelligence", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"gold" : {
					"subtype" : "resource.gold",
					"type" : "GENERATE_RESOURCE",
					"val" : 350
				}
			}
		}
	},
	"pasis":
	{
		"index": 128,
		"class" : "planeswalker",
		"female": true,
		"skills":
		[
			{ "skill" : "artillery", "level": "basic" },
			{ "skill" : "offence", "level": "basic" }
		],
		"specialty" : {
			"base" : {
				"limiters" : [
					{
						"parameters" : [ "psychicElemental", true ],
						"type" : "CREATURE_TYPE_LIMITER"
					}
				],
				"type" : "PRIMARY_SKILL",
				"val" : 3
			},
			"bonuses" : {
				"attack" : { "subtype" : "primSkill.attack" },
				"defence" : { "subtype" : "primSkill.defence" }
			}
		}
	},
	"thunar":
	{
		"index": 129,
		"class" : "planeswalker",
		"female": true,
		"skills":
		[
			{ "skill" : "estates", "level": "basic" },
			{ "skill" : "tactics", "level": "basic" }
		],
		"specialty" : {
			"base" : {
				"limiters" : [
					{
						"parameters" : [ "earthElemental", true ],
						"type" : "CREATURE_TYPE_LIMITER"
					}
				]
			},
			"bonuses" : {
				"health" : {
					"type" : "STACK_HEALTH",
					"val" : 5
				},
				"attack" : {
					"subtype" : "primSkill.attack",
					"type" : "PRIMARY_SKILL",
					"val" : 2
				},
				"defence" : {
					"subtype" : "primSkill.defence",
					"type" : "PRIMARY_SKILL",
					"val" : 1
				}
			}
		}
	},
	"ignissa":
	{
		"index": 130,
		"class" : "planeswalker",
		"female": true,
		"skills":
		[
			{ "skill" : "artillery", "level": "basic" },
			{ "skill" : "offence", "level": "basic" }
		],
		"specialty" : {
			"base" : {
				"limiters" : [
					{
						"parameters" : [ "fireElemental", true ],
						"type" : "CREATURE_TYPE_LIMITER"
					}
				]
			},
			"bonuses" : {
				"damage" : {
					"subtype" : 0,
					"type" : "CREATURE_DAMAGE",
					"val" : 2
				},
				"attack" : {
					"subtype" : "primSkill.attack",
					"type" : "PRIMARY_SKILL",
					"val" : 1
				},
				"defence" : {
					"subtype" : "primSkill.defence",
					"type" : "PRIMARY_SKILL",
					"val" : 2
				}
			}
		}
	},
	"lacus":
	{
		"index": 131,
		"class" : "planeswalker",
		"female": true,
		"skills":
		[
			{ "skill" : "tactics", "level": "advanced" }
		],
		"specialty" : {
			"bonuses" : {
				"attack" : {
					"limiters" : [
						{
							"parameters" : [ "waterElemental", true ],
							"type" : "CREATURE_TYPE_LIMITER"
						}
					],
					"subtype" : "primSkill.attack",
					"type" : "PRIMARY_SKILL",
					"val" : 2
				}
			}
		}
	},
	"monere":
	{
		"index": 132,
		"class" : "planeswalker",
		"female": false,
		"skills":
		[
			{ "skill" : "logistics", "level": "basic" },
			{ "skill" : "offence", "level": "basic" }
		],
		"specialty" : {
			"base" : {
				"limiters" : [
					{
						"parameters" : [ "psychicElemental", true ],
						"type" : "CREATURE_TYPE_LIMITER"
					}
				],
				"type" : "PRIMARY_SKILL",
				"val" : 3
			},
			"bonuses" : {
				"attack" : { "subtype" : "primSkill.attack" },
				"defence" : { "subtype" : "primSkill.defence" }
			}
		}
	},
	"erdamon":
	{
		"index": 133,
		"class" : "planeswalker",
		"female": false,
		"skills":
		[
			{ "skill" : "estates", "level": "basic" },
			{ "skill" : "tactics", "level": "basic" }
		],
		"specialty" : {
			"base" : {
				"limiters" : [
					{
						"parameters" : [ "earthElemental", true ],
						"type" : "CREATURE_TYPE_LIMITER"
					}
				]
			},
			"bonuses" : {
				"health" : {
					"type" : "STACK_HEALTH",
					"val" : 5
				},
				"attack" : {
					"subtype" : "primSkill.attack",
					"type" : "PRIMARY_SKILL",
					"val" : 2
				},
				"defence" : {
					"subtype" : "primSkill.defence",
					"type" : "PRIMARY_SKILL",
					"val" : 1
				}
			}
		}
	},
	"fiur":
	{
		"index": 134,
		"class" : "planeswalker",
		"female": false,
		"skills":
		[
			{ "skill" : "offence", "level": "advanced" }
		],
		"specialty" : {
			"base" : {
				"limiters" : [
					{
						"parameters" : [ "fireElemental", true ],
						"type" : "CREATURE_TYPE_LIMITER"
					}
				]
			},
			"bonuses" : {
				"damage" : {
					"subtype" : 0,
					"type" : "CREATURE_DAMAGE",
					"val" : 2
				},
				"attack" : {
					"subtype" : "primSkill.attack",
					"type" : "PRIMARY_SKILL",
					"val" : 1
				},
				"defence" : {
					"subtype" : "primSkill.defence",
					"type" : "PRIMARY_SKILL",
					"val" : 2
				}
			}
		}
	},
	"kalt":
	{
		"index": 135,
		"class" : "planeswalker",
		"female": false,
		"skills":
		[
			{ "skill" : "tactics", "level": "basic" },
			{ "skill" : "learning", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"attack" : {
					"limiters" : [
						{
							"parameters" : [ "waterElemental", true ],
							"type" : "CREATURE_TYPE_LIMITER"
						}
					],
					"subtype" : "primSkill.attack",
					"type" : "PRIMARY_SKILL",
					"val" : 2
				}
			}
		}
	},
	"luna":
	{
		"index": 136,
		"class" : "elementalist",
		"spellbook": [ "fireWall" ],
		"female": true,
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "fireMagic", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"fireWall" : {
					"subtype" : "spell.fireWall",
					"type" : "SPECIFIC_SPELL_DAMAGE",
					"val" : 100,
					"valueType" : "BASE_NUMBER"
				}
			}
		}
	},
	"brissa":
	{
		"index": 137,
		"class" : "elementalist",
		"female": true,
		"spellbook": [ "haste" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "airMagic", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"haste" : {
					"addInfo" : 0,
					"subtype" : "spell.haste",
					"type" : "SPECIAL_PECULIAR_ENCHANT"
				}
			}
		}
	},
	"ciele":
	{
		"index": 138,
		"class" : "elementalist",
		"female": true,
		"spellbook": [ "magicArrow" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "waterMagic", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"magicArrow" : {
					"subtype" : "spell.magicArrow",
					"type" : "SPECIFIC_SPELL_DAMAGE",
					"val" : 50,
					"valueType" : "BASE_NUMBER"
				}
			}
		}
	},
	"labetha":
	{
		"index": 139,
		"class" : "elementalist",
		"female": true,
		"spellbook": [ "stoneSkin" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "earthMagic", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"stoneSkin" : {
					"addInfo" : 0,
					"subtype" : "spell.stoneSkin",
					"type" : "SPECIAL_PECULIAR_ENCHANT"
				}
			}
		}
	},
	"inteus":
	{
		"index": 140,
		"class" : "elementalist",
		"female": false,
		"spellbook": [ "bloodlust" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "fireMagic", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"bloodlust" : {
					"addInfo" : 0,
					"subtype" : "spell.bloodlust",
					"type" : "SPECIAL_PECULIAR_ENCHANT"
				}
			}
		}
	},
	"aenain":
	{
		"index": 141,
		"class" : "elementalist",
		"female": false,
		"spellbook": [ "disruptingRay" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "airMagic", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"disruptingRay" : {
					"addInfo" : 0,
					"subtype" : "spell.disruptingRay",
					"type" : "SPECIAL_PECULIAR_ENCHANT"
				}
			}
		}
	},
	"gelare":
	{
		"index": 142,
		"class" : "elementalist",
		"female": false,
		"spellbook": [ "dispel" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "waterMagic", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"gold" : {
					"subtype" : "resource.gold",
					"type" : "GENERATE_RESOURCE",
					"val" : 350
				}
			}
		}
	},
	"grindan":
	{
		"index": 143,
		"class" : "elementalist",
		"female": false,
		"spellbook": [ "slow" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "earthMagic", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"gold" : {
					"subtype" : "resource.gold",
					"type" : "GENERATE_RESOURCE",
					"val" : 350
				}
			}
		}
	},
	"lorelei":
	{
		"index": 80,
		"class" : "warlock",
		"female": true,
		"skills":
		[
			{ "skill" : "scouting", "level": "basic" },
			{ "skill" : "leadership", "level": "basic" }
		],
		"specialty" : {
			"creature" : "harpy"
		}
	},
	"arlach":
	{
		"index": 81,
		"class" : "warlock",
		"female": false,
		"skills":
		[
			{ "skill" : "artillery", "level": "basic" },
			{ "skill" : "offence", "level": "basic" }
		],
		"specialty" : {
			"creature" : "ballista"
		}
	},
	"dace":
	{
		"index": 82,
		"class" : "warlock",
		"female": false,
		"skills":
		[
			{ "skill" : "tactics", "level": "basic" },
			{ "skill" : "offence", "level": "basic" }
		],
		"specialty" : {
			"creature" : "minotaur"
		}
	},
	"ajit":
	{
		"index": 83,
		"class" : "warlock",
		"female": false,
		"skills":
		[
			{ "skill" : "leadership", "level": "basic" },
			{ "skill" : "resistance", "level": "basic" }
		],
		"specialty" : {
			"creature" : "beholder"
		}
	},
	"damacon":
	{
		"index": 84,
		"class" : "warlock",
		"female": false,
		"skills":
		[
			{ "skill" : "offence", "level": "advanced" }
		],
		"specialty" : {
			"bonuses" : {
				"gold" : {
					"subtype" : "resource.gold",
					"type" : "GENERATE_RESOURCE",
					"val" : 350
				}
			}
		}
	},
	"gunnar":
	{
		"index": 85,
		"class" : "warlock",
		"female": false,
		"skills":
		[
			{ "skill" : "logistics", "level": "basic" },
			{ "skill" : "tactics", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"logistics" : {
					"subtype" : "skill.logistics",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"synca":
	{
		"index": 86,
		"class" : "warlock",
		"female": true,
		"skills":
		[
			{ "skill" : "leadership", "level": "basic" },
			{ "skill" : "scholar", "level": "basic" }
		],
		"specialty" : {
			"creature" : "manticore"
		}
	},
	"shakti":
	{
		"index": 87,
		"class" : "warlock",
		"female": false,
		"skills":
		[
			{ "skill" : "tactics", "level": "basic" },
			{ "skill" : "offence", "level": "basic" }
		],
		"specialty" : {
			"creature" : "troglodyte"
		}
	},
	"alamar":
	{
		"index": 88,
		"class" : "overlord",
		"spellbook": [ "resurrection" ],
		"female": false,
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "scholar", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"resurrection" : {
					"subtype" : "spell.resurrection",
					"type" : "SPECIAL_SPELL_LEV",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 3
				}
			}
		}
	},
	"jaegar":
	{
		"index": 89,
		"class" : "overlord",
		"female": false,
		"spellbook": [ "shield" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "mysticism", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"mysticism" : {
					"subtype" : "skill.mysticism",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"malekith":
	{
		"index": 90,
		"class" : "overlord",
		"female": false,
		"spellbook": [ "bloodlust" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "sorcery", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"sorcery" : {
					"subtype" : "skill.sorcery",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"jeddite":
	{
		"index": 91,
		"class" : "overlord",
		"female": true,
		"spellbook": [ "resurrection" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "advanced" }
		],
		"specialty" : {
			"bonuses" : {
				"resurrection" : {
					"subtype" : "spell.resurrection",
					"type" : "SPECIAL_SPELL_LEV",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 3
				}
			}
		}
	},
	"geon":
	{
		"index": 92,
		"class" : "overlord",
		"female": false,
		"spellbook": [ "slow" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "eagleEye", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"eagleEye" : {
					"subtype" : "skill.eagleEye",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"deemer":
	{
		"index": 93,
		"class" : "overlord",
		"female": false,
		"spellbook": [ "meteorShower" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "scouting", "level": "advanced" }
		],
		"specialty" : {
			"bonuses" : {
				"meteorShower" : {
					"subtype" : "spell.meteorShower",
					"type" : "SPECIAL_SPELL_LEV",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 3
				}
			}
		}
	},
	"sephinroth":
	{
		"index": 94,
		"class" : "overlord",
		"female": true,
		"spellbook": [ "protectAir" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "intelligence", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"crystal" : {
					"subtype" : "resource.crystal",
					"type" : "GENERATE_RESOURCE",
					"val" : 1
				}
			}
		}
	},
	"darkstorn":
	{
		"index": 95,
		"class" : "overlord",
		"female": false,
		"spellbook": [ "stoneSkin" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "learning", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"stoneSkin" : {
					"addInfo" : 0,
					"subtype" : "spell.stoneSkin",
					"type" : "SPECIAL_PECULIAR_ENCHANT"
				}
			}
		}
	},
	"bron":
	{
		"index": 112,
		"class" : "beastmaster",
		"female": false,
		"skills":
		[
			{ "skill" : "armorer", "level": "basic" },
			{ "skill" : "resistance", "level": "basic" }
		],
		"specialty" : {
			"creature" : "basilisk"
		},
		"army" :
		[
			{
				"min" : 10, "max" : 20,
				"creature" : "gnoll"
			},
			{
				"min" : 4, "max" : 7,
				"creature" : "basilisk"
			},
			{
				"min" : 2, "max" : 4,
				"creature" : "serpentFly"
			}
		]
	},
	"drakon":
	{
		"index": 113,
		"class" : "beastmaster",
		"female": false,
		"skills":
		[
			{ "skill" : "armorer", "level": "basic" },
			{ "skill" : "leadership", "level": "basic" }
		],
		"specialty" : {
			"creature" : "gnoll"
		}
	},
	"wystan":
	{
		"index": 114,
		"class" : "beastmaster",
		"female": false,
		"skills":
		[
			{ "skill" : "armorer", "level": "basic" },
			{ "skill" : "archery", "level": "basic" }
		],
		"specialty" : {
			"creature" : "lizardman"
		}
	},
	"tazar":
	{
		"index": 115,
		"class" : "beastmaster",
		"female": false,
		"skills":
		[
			{ "skill" : "armorer", "level": "advanced" }
		],
		"specialty" : {
			"bonuses" : {
				"armorer" : {
					"subtype" : "skill.armorer",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"alkin":
	{
		"index": 116,
		"class" : "beastmaster",
		"female": false,
		"skills":
		[
			{ "skill" : "armorer", "level": "basic" },
			{ "skill" : "offence", "level": "basic" }
		],
		"specialty" : {
			"creature" : "gorgon"
		}
	},
	"korbac":
	{
		"index": 117,
		"class" : "beastmaster",
		"female": false,
		"skills":
		[
			{ "skill" : "armorer", "level": "basic" },
			{ "skill" : "pathfinding", "level": "basic" }
		],
		"specialty" : {
			"creature" : "serpentFly"
		}
	},
	"gerwulf":
	{
		"index": 118,
		"class" : "beastmaster",
		"female": false,
		"skills":
		[
			{ "skill" : "armorer", "level": "basic" },
			{ "skill" : "artillery", "level": "basic" }
		],
		"specialty" : {
			"creature" : "ballista"
		}
	},
	"broghild":
	{
		"index": 119,
		"class" : "beastmaster",
		"female": false,
		"skills":
		[
			{ "skill" : "armorer", "level": "basic" },
			{ "skill" : "scouting", "level": "basic" }
		],
		"specialty" : {
			"creature" : "wyvern"
		}
	},
	"mirlanda":
	{
		"index": 120,
		"class" : "witch",
		"spellbook": [ "weakness" ],
		"female": true,
		"skills":
		[
			{ "skill" : "wisdom", "level": "advanced" }
		],
		"specialty" : {
			"bonuses" : {
				"weakness" : {
					"addInfo" : 0,
					"subtype" : "spell.weakness",
					"type" : "SPECIAL_PECULIAR_ENCHANT"
				}
			}
		}
	},
	"rosic":
	{
		"index": 121,
		"class" : "witch",
		"female": true,
		"spellbook": [ "magicArrow" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "mysticism", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"mysticism" : {
					"subtype" : "skill.mysticism",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"voy":
	{
		"index": 122,
		"class" : "witch",
		"female": true,
		"spellbook": [ "slow" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "navigation", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"navigation" : {
					"subtype" : "skill.navigation",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"verdish":
	{
		"index": 123,
		"class" : "witch",
		"female": true,
		"spellbook": [ "protectFire" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "firstAid", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"firstAid" : {
					"subtype" : "skill.firstAid",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"merist":
	{
		"index": 124,
		"class" : "witch",
		"female": true,
		"spellbook": [ "stoneSkin" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "learning", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"stoneSkin" : {
					"addInfo" : 0,
					"subtype" : "spell.stoneSkin",
					"type" : "SPECIAL_PECULIAR_ENCHANT"
				}
			}
		}
	},
	"styg":
	{
		"index": 125,
		"class" : "witch",
		"female": true,
		"spellbook": [ "shield" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "sorcery", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"sorcery" : {
					"subtype" : "skill.sorcery",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"andra":
	{
		"index": 126,
		"class" : "witch",
		"female": true,
		"spellbook": [ "dispel" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "intelligence", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"intelligence" : {
					"subtype" : "skill.intelligence",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"tiva":
	{
		"index": 127,
		"class" : "witch",
		"female": true,
		"spellbook": [ "stoneSkin" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "eagleEye", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"eagleEye" : {
					"subtype" : "skill.eagleEye",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"fiona":
	{
		"index": 48,
		"class" : "demoniac",
		"female": true,
		"skills":
		[
			{ "skill" : "scouting", "level": "advanced" }
		],
		"specialty" : {
			"creature" : "hellHound"
		}
	},
	"rashka":
	{
		"index": 49,
		"class" : "demoniac",
		"female": false,
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "scholar", "level": "basic" }
		],
		"specialty" : {
			"creature" : "efreet"
		}
	},
	"marius":
	{
		"index": 50,
		"class" : "demoniac",
		"female": true,
		"skills":
		[
			{ "skill" : "armorer", "level": "advanced" }
		],
		"specialty" : {
			"creature" : "demon"
		}
	},
	"ignatius":
	{
		"index": 51,
		"class" : "demoniac",
		"female": false,
		"skills":
		[
			{ "skill" : "tactics", "level": "basic" },
			{ "skill" : "resistance", "level": "basic" }
		],
		"specialty" : {
			"creature" : "imp"
		}
	},
	"octavia":
	{
		"index": 52,
		"class" : "demoniac",
		"female": true,
		"skills":
		[
			{ "skill" : "scholar", "level": "basic" },
			{ "skill" : "offence", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"gold" : {
					"subtype" : "resource.gold",
					"type" : "GENERATE_RESOURCE",
					"val" : 350
				}
			}
		}
	},
	"calh":
	{
		"index": 53,
		"class" : "demoniac",
		"female": false,
		"skills":
		[
			{ "skill" : "archery", "level": "basic" },
			{ "skill" : "scouting", "level": "basic" }
		],
		"specialty" : {
			"creature" : "gog"
		}
	},
	"pyre":
	{
		"index": 54,
		"class" : "demoniac",
		"female": true,
		"skills":
		[
			{ "skill" : "artillery", "level": "basic" },
			{ "skill" : "logistics", "level": "basic" }
		],
		"specialty" : {
			"creature" : "ballista"
		}
	},
	"nymus":
	{
		"index": 55,
		"class" : "demoniac",
		"female": true,
		"skills":
		[
			{ "skill" : "offence", "level": "advanced" }
		],
		"specialty" : {
			"creature" : "pitFiend"
		}
	},
	"ayden":
	{
		"index": 56,
		"class" : "heretic",
		"spellbook": [ "viewEarth" ],
		"female": false,
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "intelligence", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"intelligence" : {
					"subtype" : "skill.intelligence",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"xyron":
	{
		"index": 57,
		"class" : "heretic",
		"female": false,
		"spellbook": [ "inferno" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "scholar", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"inferno" : {
					"subtype" : "spell.inferno",
					"type" : "SPECIAL_SPELL_LEV",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 3
				}
			}
		}
	},
	"axsis":
	{
		"index": 58,
		"class" : "heretic",
		"female": false,
		"spellbook": [ "protectAir" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "mysticism", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"mysticism" : {
					"subtype" : "skill.mysticism",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"olema":
	{
		"index": 59,
		"class" : "heretic",
		"female": true,
		"spellbook": [ "weakness" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "ballistics", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"weakness" : {
					"addInfo" : 0,
					"subtype" : "spell.weakness",
					"type" : "SPECIAL_PECULIAR_ENCHANT"
				}
			}
		}
	},
	"calid":
	{
		"index": 60,
		"class" : "heretic",
		"female": false,
		"spellbook": [ "haste" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "learning", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"sulfur" : {
					"subtype" : "resource.sulfur",
					"type" : "GENERATE_RESOURCE",
					"val" : 1
				}
			}
		}
	},
	"ash":
	{
		"index": 61,
		"class" : "heretic",
		"female": true,
		"spellbook": [ "bloodlust" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "eagleEye", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"bloodlust" : {
					"addInfo" : 0,
					"subtype" : "spell.bloodlust",
					"type" : "SPECIAL_PECULIAR_ENCHANT"
				}
			}
		}
	},
	"zydar":
	{
		"index": 62,
		"class" : "heretic",
		"female": false,
		"spellbook": [ "stoneSkin" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "sorcery", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"sorcery" : {
					"subtype" : "skill.sorcery",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"xarfax":
	{
		"index": 63,
		"class" : "heretic",
		"female": false,
		"spellbook": [ "fireball" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "leadership", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"fireball" : {
					"subtype" : "spell.fireball",
					"type" : "SPECIAL_SPELL_LEV",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 3
				}
			}
		}
	},
	"straker":
	{
		"index": 64,
		"class" : "deathknight",
		"female": false,
		"spellbook": [ "haste" ],
		"skills":
		[
			{ "skill" : "necromancy", "level": "basic" },
			{ "skill" : "resistance", "level": "basic" }
		],
		"specialty" : {
			"creature" : "walkingDead"
		}
	},
	"vokial":
	{
		"index": 65,
		"class" : "deathknight",
		"female": false,
		"spellbook": [ "stoneSkin" ],
		"skills":
		[
			{ "skill" : "necromancy", "level": "basic" },
			{ "skill" : "artillery", "level": "basic" }
		],
		"specialty" : {
			"creature" : "vampire"
		}
	},
	"moandor":
	{
		"index": 66,
		"class" : "deathknight",
		"female": false,
		"spellbook": [ "slow" ],
		"skills":
		[
			{ "skill" : "necromancy", "level": "basic" },
			{ "skill" : "learning", "level": "basic" }
		],
		"specialty" : {
			"creature" : "lich"
		}
	},
	"charna":
	{
		"index": 67,
		"class" : "deathknight",
		"female": true,
		"spellbook": [ "magicArrow" ],
		"skills":
		[
			{ "skill" : "necromancy", "level": "basic" },
			{ "skill" : "tactics", "level": "basic" }
		],
		"specialty" : {
			"creature" : "wight"
		}
	},
	"tamika":
	{
		"index": 68,
		"class" : "deathknight",
		"female": true,
		"spellbook": [ "magicArrow" ],
		"skills":
		[
			{ "skill" : "necromancy", "level": "basic" },
			{ "skill" : "offence", "level": "basic" }
		],
		"specialty" : {
			"creature" : "blackKnight"
		}
	},
	"isra":
	{
		"index": 69,
		"class" : "deathknight",
		"female": true,
		"spellbook": [ "magicArrow" ],
		"skills":
		[
			{ "skill" : "necromancy", "level": "advanced" }
		],
		"specialty" : {
			"bonuses" : {
				"necromancy" : {
					"subtype" : "skill.necromancy",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"clavius":
	{
		"index": 70,
		"class" : "deathknight",
		"female": false,
		"spellbook": [ "magicArrow" ],
		"skills":
		[
			{ "skill" : "necromancy", "level": "basic" },
			{ "skill" : "offence", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"gold" : {
					"subtype" : "resource.gold",
					"type" : "GENERATE_RESOURCE",
					"val" : 350
				}
			}
		}
	},
	"galthran":
	{
		"index": 71,
		"class" : "deathknight",
		"female": false,
		"spellbook": [ "shield" ],
		"skills":
		[
			{ "skill" : "necromancy", "level": "basic" },
			{ "skill" : "armorer", "level": "basic" }
		],
		"specialty" : {
			"creature" : "skeleton"
		}
	},
	"septienna":
	{
		"index": 72,
		"class" : "necromancer",
		"female": true,
		"spellbook": [ "deathRipple" ],
		"skills":
		[
			{ "skill" : "necromancy", "level": "basic" },
			{ "skill" : "scholar", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"deathRipple" : {
					"subtype" : "spell.deathRipple",
					"type" : "SPECIAL_SPELL_LEV",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 3
				}
			}
		}
	},
	"aislinn":
	{
		"index": 73,
		"class" : "necromancer",
		"female": true,
		"spellbook": [ "meteorShower" ],
		"skills":
		[
			{ "skill" : "necromancy", "level": "basic" },
			{ "skill" : "wisdom", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"meteorShower" : {
					"subtype" : "spell.meteorShower",
					"type" : "SPECIAL_SPELL_LEV",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 3
				}
			}
		}
	},
	"sandro":
	{
		"index": 74,
		"class" : "necromancer",
		"female": false,
		"spellbook": [ "slow" ],
		"skills":
		[
			{ "skill" : "necromancy", "level": "basic" },
			{ "skill" : "sorcery", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"sorcery" : {
					"subtype" : "skill.sorcery",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"nimbus":
	{
		"index": 75,
		"class" : "necromancer",
		"female": false,
		"spellbook": [ "shield" ],
		"skills":
		[
			{ "skill" : "necromancy", "level": "basic" },
			{ "skill" : "eagleEye", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"eagleEye" : {
					"subtype" : "skill.eagleEye",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"thant":
	{
		"index": 76,
		"class" : "necromancer",
		"female": false,
		"spellbook": [ "animateDead" ],
		"skills":
		[
			{ "skill" : "necromancy", "level": "basic" },
			{ "skill" : "mysticism", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"animateDead" : {
					"subtype" : "spell.animateDead",
					"type" : "SPECIAL_SPELL_LEV",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 3
				}
			}
		}
	},
	"xsi":
	{
		"index": 77,
		"class" : "necromancer",
		"female": true,
		"spellbook": [ "stoneSkin" ],
		"skills":
		[
			{ "skill" : "necromancy", "level": "basic" },
			{ "skill" : "learning", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"stoneSkin" : {
					"addInfo" : 0,
					"subtype" : "spell.stoneSkin",
					"type" : "SPECIAL_PECULIAR_ENCHANT"
				}
			}
		}
	},
	"vidomina":
	{
		"index": 78,
		"class" : "necromancer",
		"female": true,
		"spellbook": [ "curse" ],
		"skills":
		[
			{ "skill" : "necromancy", "level": "advanced" }
		],
		"specialty" : {
			"bonuses" : {
				"necromancy" : {
					"subtype" : "skill.necromancy",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"nagash":
	{
		"index": 79,
		"class" : "necromancer",
		"female": false,
		"spellbook": [ "protectAir" ],
		"skills":
		[
			{ "skill" : "necromancy", "level": "basic" },
			{ "skill" : "intelligence", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"gold" : {
					"subtype" : "resource.gold",
					"type" : "GENERATE_RESOURCE",
					"val" : 350
				}
			}
		}
	},
	"mephala":
	{
		"index": 16,
		"class" : "ranger",
		"female": true,
		"skills":
		[
			{ "skill" : "leadership", "level": "basic" },
			{ "skill" : "armorer", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"armorer" : {
					"subtype" : "skill.armorer",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"ufretin":
	{
		"index": 17,
		"class" : "ranger",
		"female": false,
		"skills":
		[
			{ "skill" : "luck", "level": "basic" },
			{ "skill" : "resistance", "level": "basic" }
		],
		"specialty" : {
			"creature" : "dwarf"
		}
	},
	"jenova":
	{
		"index": 18,
		"class" : "ranger",
		"female": true,
		"skills":
		[
			{ "skill" : "archery", "level": "advanced" }
		],
		"specialty" : {
			"bonuses" : {
				"gold" : {
					"subtype" : "resource.gold",
					"type" : "GENERATE_RESOURCE",
					"val" : 350
				}
			}
		}
	},
	"ryland":
	{
		"index": 19,
		"class" : "ranger",
		"female": false,
		"skills":
		[
			{ "skill" : "diplomacy", "level": "basic" },
			{ "skill" : "leadership", "level": "basic" }
		],
		"specialty" : {
			"creature" : "dendroidGuard"
		}
	},
	"thorgrim":
	{
		"index": 20,
		"class" : "ranger",
		"female": false,
		"skills":
		[
			{ "skill" : "resistance", "level": "advanced" }
		],
		"specialty" : {
			"bonuses" : {
				"resistance" : {
					"subtype" : "skill.resistance",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"ivor":
	{
		"index": 21,
		"class" : "ranger",
		"female": false,
		"skills":
		[
			{ "skill" : "archery", "level": "basic" },
			{ "skill" : "offence", "level": "basic" }
		],
		"specialty" : {
			"creature" : "woodElf"
		}
	},
	"clancy":
	{
		"index": 22,
		"class" : "ranger",
		"female": false,
		"skills":
		[
			{ "skill" : "pathfinding", "level": "basic" },
			{ "skill" : "resistance", "level": "basic" }
		],
		"specialty" : {
			"creature" : "unicorn"
		}
	},
	"kyrre":
	{
		"index": 23,
		"class" : "ranger",
		"female": true,
		"skills":
		[
			{ "skill" : "archery", "level": "basic" },
			{ "skill" : "logistics", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"logistics" : {
					"subtype" : "skill.logistics",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"coronius":
	{
		"index": 24,
		"class" : "druid",
		"spellbook": [ "slayer" ],
		"female": false,
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "scholar", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"slayer" : {
					"addInfo" : 1,
					"subtype" : "spell.slayer",
					"type" : "SPECIAL_PECULIAR_ENCHANT"
				}
			}
		}
	},
	"uland":
	{
		"index": 25,
		"class" : "druid",
		"female": false,
		"spellbook": [ "cure" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "advanced" },
			{ "skill" : "ballistics", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"cure" : {
					"subtype" : "spell.cure",
					"type" : "SPECIAL_SPELL_LEV",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 3
				}
			}
		}
	},
	"elleshar":
	{
		"index": 26,
		"class" : "druid",
		"female": false,
		"spellbook": [ "curse" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "intelligence", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"intelligence" : {
					"subtype" : "skill.intelligence",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"gem":
	{
		"index": 27,
		"class" : "druid",
		"female": true,
		"spellbook": [ "summonBoat" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "firstAid", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"firstAid" : {
					"subtype" : "skill.firstAid",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"malcom":
	{
		"index": 28,
		"class" : "druid",
		"female": false,
		"spellbook": [ "magicArrow" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "eagleEye", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"eagleEye" : {
					"subtype" : "skill.eagleEye",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"melodia":
	{
		"index": 29,
		"class" : "druid",
		"spellbook": [ "fortune" ],
		"female": true,
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "luck", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"fortune" : {
					"subtype" : "spell.fortune",
					"type" : "MAXED_SPELL"
				}
			}
		}
	},
	"alagar":
	{
		"index": 30,
		"class" : "druid",
		"female": false,
		"spellbook": [ "iceBolt" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "sorcery", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"iceBolt" : {
					"subtype" : "spell.iceBolt",
					"type" : "SPECIAL_SPELL_LEV",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 3
				}
			}
		}
	},
	"aeris":
	{
		"index": 31,
		"class" : "druid",
		"female": false,
		"spellbook": [ "protectAir" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "scouting", "level": "basic" }
		],
		"specialty" : {
			"creature" : "pegasus"
		}
	},
	"sirMullich":
	{
		"index": 144,
		"class" : "knight",
		"female": false,
		"special" : false,
		"skills":
		[
			{ "skill" : "leadership", "level": "advanced" }
		],
		"specialty" : {
			"bonuses" : {
				"speed" : {
					"type" : "STACKS_SPEED",
					"val" : 2
				}
			}
		}
	},
	"adrienne":
	{
		"index": 145,
		"class" : "witch",
		"female": true,
		"special" : true,
		"spellbook": [ "inferno" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "fireMagic", "level": "expert" }
		],
		"specialty" : { "bonuses" : {  } }
	},
	"catherine":
	{
		"index": 146,
		"class" : "knight",
		"female": true,
		"special" : true,
		"skills":
		[
			{ "skill" : "leadership", "level": "basic" },
			{ "skill" : "offence", "level": "basic" }
		],
		"specialty" : {
			"creature" : "swordsman"
		}
	},
	"dracon":
	{
		"index": 147,
		"class" : "wizard",
		"female": false,
		"special" : true,
		"spellbook": [ "haste" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "advanced" }
		],
		"specialty" : {
			"base" : {
				"addInfo" : "creature.enchanter",
				"type" : "SPECIAL_UPGRADE"
			},
			"bonuses" : {
				"archMage2enchanter" : { "subtype" : "creature.archMage" },
				"mage2enchanter" : { "subtype" : "creature.mage" },
				"monk2enchanter" : { "subtype" : "creature.monk" },
				"zealot2enchanter" : { "subtype" : "creature.zealot" }
			}
		}
	},
	"gelu":
	{
		"index": 148,
		"class" : "ranger",
		"female": false,
		"special" : true,
		"skills":
		[
			{ "skill" : "archery", "level": "basic" },
			{ "skill" : "leadership", "level": "basic" }
		],
		"specialty" : {
			"base" : {
				"addInfo" : "creature.sharpshooter",
				"type" : "SPECIAL_UPGRADE"
			},
			"bonuses" : {
				"archer2sharpshooter" : { "subtype" : "creature.archer" },
				"grandElf2sharpshooter" : { "subtype" : "creature.grandElf" },
				"marksman2sharpshooter" : { "subtype" : "creature.marksman" },
				"woodElf2sharpshooter" : { "subtype" : "creature.woodElf" }
			}
		}
	},
	"kilgor":
	{
		"index": 149,
		"class" : "barbarian",
		"female": false,
		"special" : true,
		"skills":
		[
			{ "skill" : "offence", "level": "advanced" }
		],
		"specialty" : {
			"base" : {
				"limiters" : [
					{
						"parameters" : [ "behemoth", true ],
						"type" : "CREATURE_TYPE_LIMITER"
					}
				]
			},
			"bonuses" : {
				"damage" : {
					"subtype" : 0,
					"type" : "CREATURE_DAMAGE",
					"val" : 10
				},
				"attack" : {
					"subtype" : "primSkill.attack",
					"type" : "PRIMARY_SKILL",
					"val" : 5
				},
				"defence" : {
					"subtype" : "primSkill.defence",
					"type" : "PRIMARY_SKILL",
					"val" : 5
				}
			}
		}
	},
	"undeadHaart":
	{
		"index": 150,
		"class" : "deathknight",
		"female": false,
		"special" : true,
		"spellbook": [ "slow" ],
		"skills":
		[
			{ "skill" : "necromancy", "level": "advanced" }
		],
		"specialty" : {
			"base" : {
				"limiters" : [
					{
						"parameters" : [ "blackKnight", true ],
						"type" : "CREATURE_TYPE_LIMITER"
					}
				]
			},
			"bonuses" : {
				"damage" : {
					"subtype" : 0,
					"type" : "CREATURE_DAMAGE",
					"val" : 10
				},
				"attack" : {
					"subtype" : "primSkill.attack",
					"type" : "PRIMARY_SKILL",
					"val" : 5
				},
				"defence" : {
					"subtype" : "primSkill.defence",
					"type" : "PRIMARY_SKILL",
					"val" : 5
				}
			}
		}
	},
	"mutare":
	{
		"index": 151,
		"class" : "warlock",
		"female": true,
		"special" : true,
		"spellbook": [ "magicArrow" ],
		"skills":
		[
			{ "skill" : "estates", "level": "basic" },
			{ "skill" : "tactics", "level": "basic" }
		],
		"specialty" : {
			"base" : {
				"limiters" : [
					{
						"parameters" : [ "DRAGON_NATURE" ],
						"type" : "HAS_ANOTHER_BONUS_LIMITER"
					}
				],
				"type" : "PRIMARY_SKILL",
				"val" : 5
			},
			"bonuses" : {
				"attack" : { "subtype" : "primSkill.attack" },
				"defence" : { "subtype" : "primSkill.defence" }
			}
		}
	},
	"roland":
	{
		"index": 152,
		"class" : "knight",
		"female": false,
		"special" : true,
		"skills":
		[
			{ "skill" : "leadership", "level": "basic" },
			{ "skill" : "armorer", "level": "basic" }
		],
		"specialty" : {
			"creature" : "griffin"
		}
	},
	"mutareDrake":
	{
		"index": 153,
		"class" : "warlock",
		"female": true,
		"special" : true,
		"spellbook": [ "magicArrow" ],
		"skills":
		[
			{ "skill" : "estates", "level": "basic" },
			{ "skill" : "tactics", "level": "basic" }
		],
		"specialty" : {
			"base" : {
				"limiters" : [
					{
						"parameters" : [ "DRAGON_NATURE" ],
						"type" : "HAS_ANOTHER_BONUS_LIMITER"
					}
				],
				"type" : "PRIMARY_SKILL",
				"val" : 5
			},
			"bonuses" : {
				"attack" : { "subtype" : "primSkill.attack" },
				"defence" : { "subtype" : "primSkill.defence" }
			}
		},
		"army" :
		[
			{
				"min" : 10, "max" : 20,
				"creature" : "troglodyte"
			},
			{
				"min" : 4, "max" : 7,
				"creature" : "harpy"
			},
			{
				"min" : 2, "max" : 3,
				"creature" : "evilEye"
			}
		]
	},
	"boragus":
	{
		"index": 154,
		"class" : "barbarian",
		"female": false,
		"special" : true,
		"skills":
		[
			{ "skill" : "tactics", "level": "basic" },
			{ "skill" : "offence", "level": "basic" }
		],
		"specialty" : {
			"creature" : "ogre"
		},
		"army" :
		[
			{
				"min" : 10, "max" : 20,
				"creature" : "goblin"
			},
			{
				"min" : 4, "max" : 7,
				"creature" : "goblinWolfRider"
			},
			{
				"min" : 2, "max" : 3,
				"creature" : "orc"
			}
		]
	},
	"xeron":
	{
		"index": 155,
		"class" : "demoniac",
		"female": false,
		"special" : true,
		"skills":
		[
			{ "skill" : "leadership", "level": "basic" },
			{ "skill" : "tactics", "level": "basic" }
		],
		"specialty" : {
			"base" : {
				"limiters" : [
					{
						"parameters" : [ "devil", true ],
						"type" : "CREATURE_TYPE_LIMITER"
					}
				]
			},
			"bonuses" : {
				"attack" : {
					"subtype" : "primSkill.attack",
					"type" : "PRIMARY_SKILL",
					"val" : 4
				},
				"defence" : {
					"subtype" : "primSkill.defence",
					"type" : "PRIMARY_SKILL",
					"val" : 2
				},
				"speed" : {
					"type" : "STACKS_SPEED",
					"val" : 1
				}
			}
		},
		"army" :
		[
			{
				"min" : 10, "max" : 20,
				"creature" : "imp"
			},
			{
				"min" : 4, "max" : 7,
				"creature" : "hellHound"
			},
			{
				"min" : 2, "max" : 3,
				"creature" : "hellHound"
			}
		]
	},
	"yog":
	{
		"index": 96,
		"class" : "barbarian",
		"female": false,
		"skills":
		[
			{ "skill" : "offence", "level": "basic" },
			{ "skill" : "ballistics", "level": "basic" }
		],
		"specialty" : {
			"creature" : "cyclop"
		}
	},
	"gurnisson":
	{
		"index": 97,
		"class" : "barbarian",
		"female": false,
		"skills":
		[
			{ "skill" : "offence", "level": "basic" },
			{ "skill" : "artillery", "level": "basic" }
		],
		"specialty" : {
			"creature" : "ballista"
		}
	},
	"jabarkas":
	{
		"index": 98,
		"class" : "barbarian",
		"female": false,
		"skills":
		[
			{ "skill" : "offence", "level": "basic" },
			{ "skill" : "archery", "level": "basic" }
		],
		"specialty" : {
			"creature" : "orc"
		}
	},
	"shiva":
	{
		"index": 99,
		"class" : "barbarian",
		"female": true,
		"skills":
		[
			{ "skill" : "offence", "level": "basic" },
			{ "skill" : "scouting", "level": "basic" }
		],
		"specialty" : {
			"creature" : "roc"
		}
	},
	"gretchin":
	{
		"index": 100,
		"class" : "barbarian",
		"female": true,
		"skills":
		[
			{ "skill" : "offence", "level": "basic" },
			{ "skill" : "pathfinding", "level": "basic" }
		],
		"specialty" : {
			"creature" : "goblin"
		}
	},
	"krellion":
	{
		"index": 101,
		"class" : "barbarian",
		"female": false,
		"skills":
		[
			{ "skill" : "offence", "level": "basic" },
			{ "skill" : "resistance", "level": "basic" }
		],
		"specialty" : {
			"creature" : "ogre"
		}
	},
	"cragHack":
	{
		"index": 102,
		"class" : "barbarian",
		"female": false,
		"skills":
		[
			{ "skill" : "offence", "level": "advanced" }
		],
		"specialty" : {
			"bonuses" : {
				"offence" : {
					"subtype" : "skill.offence",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"tyraxor":
	{
		"index": 103,
		"class" : "barbarian",
		"female": false,
		"skills":
		[
			{ "skill" : "offence", "level": "basic" },
			{ "skill" : "tactics", "level": "basic" }
		],
		"specialty" : {
			"creature" : "goblinWolfRider"
		}
	},
	"gird":
	{
		"index": 104,
		"class" : "battlemage",
		"spellbook": [ "bloodlust" ],
		"female": true,
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "sorcery", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"sorcery" : {
					"subtype" : "skill.sorcery",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"vey":
	{
		"index": 105,
		"class" : "battlemage",
		"female": false,
		"spellbook": [ "magicArrow" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "leadership", "level": "basic" }
		],
		"specialty" : {
			"creature" : "ogre"
		}
	},
	"dessa":
	{
		"index": 106,
		"class" : "battlemage",
		"female": true,
		"spellbook": [ "stoneSkin" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "logistics", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"logistics" : {
					"subtype" : "skill.logistics",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"terek":
	{
		"index": 107,
		"class" : "battlemage",
		"female": false,
		"spellbook": [ "haste" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "tactics", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"haste" : {
					"addInfo" : 0,
					"subtype" : "spell.haste",
					"type" : "SPECIAL_PECULIAR_ENCHANT"
				}
			}
		}
	},
	"zubin":
	{
		"index": 108,
		"class" : "battlemage",
		"female": false,
		"spellbook": [ "precision" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "artillery", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"precision" : {
					"addInfo" : 0,
					"subtype" : "spell.precision",
					"type" : "SPECIAL_PECULIAR_ENCHANT"
				}
			}
		}
	},
	"gundula":
	{
		"index": 109,
		"class" : "battlemage",
		"spellbook": [ "slow" ],
		"female": true,
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "offence", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"sorcery" : {
					"subtype" : "skill.sorcery",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"oris":
	{
		"index": 110,
		"class" : "battlemage",
		"female": true,
		"spellbook": [ "protectAir" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "eagleEye", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"eagleEye" : {
					"subtype" : "skill.eagleEye",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"saurug":
	{
		"index": 111,
		"class" : "battlemage",
		"female": false,
		"spellbook": [ "bloodlust" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "resistance", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"gems" : {
					"subtype" : "resource.gems",
					"type" : "GENERATE_RESOURCE",
					"val" : 1
				}
			}
		}
	},
	"piquedram":
	{
		"index": 32,
		"class" : "alchemist",
		"female": false,
		"spellbook": [ "shield" ],
		"skills":
		[
			{ "skill" : "scouting", "level": "basic" },
			{ "skill" : "mysticism", "level": "basic" }
		],
		"specialty" : {
			"creature" : "stoneGargoyle"
		}
	},
	"thane":
	{
		"index": 33,
		"class" : "alchemist",
		"female": false,
		"spellbook": [ "magicArrow" ],
		"skills":
		[
			{ "skill" : "scholar", "level": "advanced" }
		],
		"specialty" : {
			"creature" : "genie"
		}
	},
	"josephine":
	{
		"index": 34,
		"class" : "alchemist",
		"spellbook": [ "haste" ],
		"female": true,
		"skills":
		[
			{ "skill" : "mysticism", "level": "basic" },
			{ "skill" : "sorcery", "level": "basic" }
		],
		"specialty" : {
			"creature" : "ironGolem"
		}
	},
	"neela":
	{
		"index": 35,
		"class" : "alchemist",
		"female": true,
		"spellbook": [ "shield" ],
		"skills":
		[
			{ "skill" : "scholar", "level": "basic" },
			{ "skill" : "armorer", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"armorer" : {
					"subtype" : "skill.armorer",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"torosar ":
	{
		"index": 36,
		"class" : "alchemist",
		"female": false,
		"spellbook": [ "magicArrow" ],
		"skills":
		[
			{ "skill" : "mysticism", "level": "basic" },
			{ "skill" : "tactics", "level": "basic" }
		],
		"specialty" : {
			"creature" : "ballista"
		}
	},
	"fafner":
	{
		"index": 37,
		"class" : "alchemist",
		"female": false,
		"spellbook": [ "haste" ],
		"skills":
		[
			{ "skill" : "scholar", "level": "basic" },
			{ "skill" : "resistance", "level": "basic" }
		],
		"specialty" : {
			"creature" : "naga"
		}
	},
	"rissa":
	{
		"index": 38,
		"class" : "alchemist",
		"female": true,
		"spellbook": [ "magicArrow" ],
		"skills":
		[
			{ "skill" : "mysticism", "level": "basic" },
			{ "skill" : "offence", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"mercury" : {
					"subtype" : "resource.mercury",
					"type" : "GENERATE_RESOURCE",
					"val" : 1
				}
			}
		}
	},
	"iona":
	{
		"index": 39,
		"class" : "alchemist",
		"spellbook": [ "magicArrow" ],
		"female": true,
		"skills":
		[
			{ "skill" : "scholar", "level": "basic" },
			{ "skill" : "intelligence", "level": "basic" }
		],
		"specialty" : {
			"creature" : "genie"
		}
	},
	"astral":
	{
		"index": 40,
		"class" : "wizard",
		"female": false,
		"spellbook": [ "hypnotize" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "advanced" }
		],
		"specialty" : {
			"bonuses" : {
				"hypnotize" : {
					"subtype" : "spell.hypnotize",
					"type" : "SPECIAL_SPELL_LEV",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 3
				}
			}
		}
	},
	"halon":
	{
		"index": 41,
		"class" : "wizard",
		"female": false,
		"spellbook": [ "stoneSkin" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "mysticism", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"mysticism" : {
					"subtype" : "skill.mysticism",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"serena":
	{
		"index": 42,
		"class" : "wizard",
		"female": true,
		"spellbook": [ "dispel" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "eagleEye", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"eagleEye" : {
					"subtype" : "skill.eagleEye",
					"type" : "SECONDARY_SKILL_PREMY",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 5,
					"valueType" : "PERCENT_TO_BASE"
				}
			}
		}
	},
	"daremyth":
	{
		"index": 43,
		"class" : "wizard",
		"female": true,
		"spellbook": [ "fortune" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "intelligence", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"fortune" : {
					"subtype" : "spell.fortune",
					"type" : "MAXED_SPELL"
				}
			}
		}
	},
	"theodorus":
	{
		"index": 44,
		"class" : "wizard",
		"spellbook": [ "shield" ],
		"female": false,
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "ballistics", "level": "basic" }
		],
		"specialty" : {
			"creature" : "mage"
		}
	},
	"solmyr":
	{
		"index": 45,
		"class" : "wizard",
		"female": false,
		"spellbook": [ "chainLightning" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "sorcery", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"chainLightning" : {
					"subtype" : "spell.chainLightning",
					"type" : "SPECIAL_SPELL_LEV",
					"updater" : "TIMES_HERO_LEVEL",
					"val" : 3
				}
			}
		}
	},
	"cyra":
	{
		"index": 46,
		"class" : "wizard",
		"female": true,
		"spellbook": [ "haste" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "diplomacy", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"haste" : {
					"addInfo" : 0,
					"subtype" : "spell.haste",
					"type" : "SPECIAL_PECULIAR_ENCHANT"
				}
			}
		}
	},
	"aine":
	{
		"index": 47,
		"class" : "wizard",
		"female": true,
		"spellbook": [ "curse" ],
		"skills":
		[
			{ "skill" : "wisdom", "level": "basic" },
			{ "skill" : "scholar", "level": "basic" }
		],
		"specialty" : {
			"bonuses" : {
				"gold" : {
					"subtype" : "resource.gold",
					"type" : "GENERATE_RESOURCE",
					"val" : 350
				}
			}
		}
	}
}
',
        "objects" => '{
	"creatureBank" : {
		"index" :16,
		"handler": "bank",
		"base" : {
			"sounds" : {
				"visit" : ["ROGUE"]
			}
		},
		"types" : {
			"cyclopsStockpile" :
			{
				"index" : 0,
				"name" : "Cyclops Stockpile",
				"aiValue" : 3000,
				"sounds" : {
					"ambient" : ["LOOPCAVE"]
				},
				"rmg" : {
					"value"		: 3000,
					"rarity"	: 100
				},
				"levels": [
					{
						"chance": 30,
						"guards": [
							{ "amount": 4, "type": "cyclop" },
							{ "amount": 4, "type": "cyclop" },
							{ "amount": 4, "type": "cyclop", "upgradeChance": 50 },
							{ "amount": 4, "type": "cyclop" },
							{ "amount": 4, "type": "cyclop" }
						],

						"combat_value": 506,
						"reward" : {
							"value": 10000,
							"resources":
							{
								"wood" : 4,
								"mercury" : 4,
								"ore" : 4,
								"sulfur" : 4,
								"crystal" : 4,
								"gems" : 4
							}
						}
					},

					{
						"chance": 30,
						"guards": [
							{ "amount": 6, "type": "cyclop" },
							{ "amount": 6, "type": "cyclop" },
							{ "amount": 6, "type": "cyclop", "upgradeChance": 50 },
							{ "amount": 6, "type": "cyclop" },
							{ "amount": 6, "type": "cyclop" }
						],
						"combat_value": 760,
						"reward" : {
							"value": 15000,
							"resources":
							{
								"wood" : 6,
								"mercury" : 6,
								"ore" : 6,
								"sulfur" : 6,
								"crystal" : 6,
								"gems" : 6
							}
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 8, "type": "cyclop" },
							{ "amount": 8, "type": "cyclop" },
							{ "amount": 8, "type": "cyclop", "upgradeChance": 50 },
							{ "amount": 8, "type": "cyclop" },
							{ "amount": 8, "type": "cyclop" }
						],
						"combat_value": 1013,
						"reward" : {
							"value": 20000,
							"resources":
							{
								"wood" : 8,
								"mercury" : 8,
								"ore" : 8,
								"sulfur" : 8,
								"crystal" : 8,
								"gems" : 8
							}
						}
					},
					{
						"chance": 10,
						"guards": [
							{ "amount": 10, "type": "cyclop" },
							{ "amount": 10, "type": "cyclop" },
							{ "amount": 10, "type": "cyclop", "upgradeChance": 50 },
							{ "amount": 10, "type": "cyclop" },
							{ "amount": 10, "type": "cyclop" }
						],
						"combat_value": 1266,
						"reward" : {
							"value": 25000,
							"resources":
							{
								"wood" : 10,
								"mercury" : 10,
								"ore" : 10,
								"sulfur" : 10,
								"crystal" : 10,
								"gems" : 10
							}
						}
					}
				]
			},
			"dwarvenTreasury" : {
				"index" : 1,
				"resetDuration" : 0,
				"name" : "Dwarven Treasury",
				"aiValue" : 2000,
				"sounds" : {
					"ambient" : ["LOOPDWAR"]
				},
				"rmg" : {
					"value"		: 2000,
					"rarity"	: 100
				},
				"levels": [
					{
						"chance": 30,
						"guards": [
							{ "amount": 10, "type": "dwarf" },
							{ "amount": 10, "type": "dwarf" },
							{ "amount": 10, "type": "dwarf", "upgradeChance": 50 },
							{ "amount": 10, "type": "dwarf" },
							{ "amount": 10, "type": "dwarf" }
						],
						"combat_value": 194,
						"reward" : {
						"value": 3500,
							"resources":
							{
								"crystal" : 2,
								"gold" : 2500
							}
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 15, "type": "dwarf" },
							{ "amount": 15, "type": "dwarf" },
							{ "amount": 15, "type": "dwarf", "upgradeChance": 50 },
							{ "amount": 15, "type": "dwarf" },
							{ "amount": 15, "type": "dwarf" }
						],
						"combat_value": 291,
						"reward" : {
							"value": 5500,
							"resources":
							{
								"crystal" : 3,
								"gold" : 4000
							}
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 20, "type": "dwarf" },
							{ "amount": 20, "type": "dwarf" },
							{ "amount": 20, "type": "dwarf", "upgradeChance": 50 },
							{ "amount": 20, "type": "dwarf" },
							{ "amount": 20, "type": "dwarf" }
						],
						"combat_value": 388,
						"reward" : {
							"value": 7500,
							"resources":
							{
								"crystal" : 5,
								"gold" : 5000
							}
						}
					},
					{
						"chance": 10,
						"guards": [
							{ "amount": 30, "type": "dwarf" },
							{ "amount": 30, "type": "dwarf" },
							{ "amount": 30, "type": "dwarf", "upgradeChance": 50 },
							{ "amount": 30, "type": "dwarf" },
							{ "amount": 30, "type": "dwarf" }
						],
						"combat_value": 582,
						"reward" : {
							"value": 12500,
							"resources":
							{
								"crystal" : 10,
								"gold" : 7500
							}
						}
					}
				]
			},
			"griffinConservatory" : {
				"index" : 2,
				"resetDuration" : 0,
				"name" : "Griffin Conservatory",
				"aiValue" : 9000,
				"sounds" : {
					"ambient" : ["LOOPGRIF"]
				},
				"rmg" : {
					"value"		: 2000,
					"rarity"	: 100
				},
				"levels": [
					{
						"chance": 30,
						"guards": [
							{ "amount": 10, "type": "griffin" },
							{ "amount": 10, "type": "griffin" },
							{ "amount": 10, "type": "griffin", "upgradeChance": 50 },
							{ "amount": 10, "type": "griffin" },
							{ "amount": 10, "type": "griffin" }
						],
						"combat_value": 351,
						"reward" : {
							"value": 3000,
							"creatures": [ { "amount": 1, "type": "angel" } ]
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 20, "type": "griffin" },
							{ "amount": 20, "type": "griffin" },
							{ "amount": 20, "type": "griffin", "upgradeChance": 50 },
							{ "amount": 20, "type": "griffin" },
							{ "amount": 20, "type": "griffin" }
						],
						"combat_value": 702,
						"reward" : {
							"value": 6000,
							"creatures": [ { "amount": 2, "type": "angel" } ]
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 30, "type": "griffin" },
							{ "amount": 30, "type": "griffin" },
							{ "amount": 30, "type": "griffin", "upgradeChance": 50 },
							{ "amount": 30, "type": "griffin" },
							{ "amount": 30, "type": "griffin" }
						],
						"combat_value": 1053,
						"reward" : {
							"value": 9000,
							"creatures": [ { "amount": 3, "type": "angel" } ]
						}
					},
					{
						"chance": 10,
						"guards": [
							{ "amount": 40, "type": "griffin" },
							{ "amount": 40, "type": "griffin" },
							{ "amount": 40, "type": "griffin", "upgradeChance": 50 },
							{ "amount": 40, "type": "griffin" },
							{ "amount": 40, "type": "griffin" }
						],
						"combat_value": 1404,
						"reward" : {
							"value": 12000,
							"creatures": [ { "amount": 4, "type": "angel" } ]
						}
					}
				]
			},
			"inpCache" :  {
				"index" : 3,
				"resetDuration" : 0,
				"name" : "Imp Cache",
				"aiValue" : 1500,
				"sounds" : {
					"ambient" : ["LOOPFIRE"]
				},
				"rmg" : {
					"value"		: 5000,
					"rarity"	: 100
				},
				"levels": [
					{
						"chance": 30,
						"guards": [
							{ "amount": 20, "type": "imp" },
							{ "amount": 20, "type": "imp" },
							{ "amount": 20, "type": "imp", "upgradeChance": 50 },
							{ "amount": 20, "type": "imp" },
							{ "amount": 20, "type": "imp" }
						],
						"combat_value": 100,
						"reward" : {
							"value": 2000,
							"resources":
							{
								"gold" : 1000
							}
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 30, "type": "imp" },
							{ "amount": 30, "type": "imp" },
							{ "amount": 30, "type": "imp", "upgradeChance": 50 },
							{ "amount": 30, "type": "imp" },
							{ "amount": 30, "type": "imp" }
						],
						"combat_value": 150,
						"reward" : {
							"value": 3000,
							"resources":
							{
								"mercury" : 3,
								"gold" : 1500
							}
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 40, "type": "imp" },
							{ "amount": 40, "type": "imp" },
							{ "amount": 40, "type": "imp", "upgradeChance": 50 },
							{ "amount": 40, "type": "imp" },
							{ "amount": 40, "type": "imp" }
						],
						"combat_value": 200,
						"reward" : {
							"value": 4000,
							"resources":
							{
								"mercury" : 4,
								"gold" : 2000
							}
						}
					},
					{
						"chance": 10,
						"guards": [
							{ "amount": 60, "type": "imp" },
							{ "amount": 60, "type": "imp" },
							{ "amount": 60, "type": "imp", "upgradeChance": 50 },
							{ "amount": 60, "type": "imp" },
							{ "amount": 60, "type": "imp" }
						],
						"combat_value": 300,
						"reward" : {
							"value": 6000,
							"resources":
							{
								"mercury" : 6,
								"gold" : 3000
							}
						}
					}
				]
			},
			"medusaStore" : {
				"index" : 4,
				"resetDuration" : 0,
				"name" : "Medusa Stores",
				"aiValue" : 1500,
				"sounds" : {
					"ambient" : ["LOOPMEDU"]
				},
				"rmg" : {
					"value"		: 1500,
					"rarity"	: 100
				},
				"levels": [
					{
						"chance": 30,
						"guards": [
							{ "amount": 4, "type": "medusa" },
							{ "amount": 4, "type": "medusa" },
							{ "amount": 4, "type": "medusa", "upgradeChance": 50 },
							{ "amount": 4, "type": "medusa" },
							{ "amount": 4, "type": "medusa" }
						],
						"combat_value": 207,
						"reward" : {
							"value": 4500,
							"resources":
							{
								"sulfur" : 5,
								"gold" : 2000
							}
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 6, "type": "medusa" },
							{ "amount": 6, "type": "medusa" },
							{ "amount": 6, "type": "medusa", "upgradeChance": 50 },
							{ "amount": 6, "type": "medusa" },
							{ "amount": 6, "type": "medusa" }
						],
						"combat_value": 310,
						"reward" : {
							"value": 6000,
							"resources":
							{
								"sulfur" : 6,
								"gold" : 3000
							}
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 8, "type": "medusa" },
							{ "amount": 8, "type": "medusa" },
							{ "amount": 8, "type": "medusa", "upgradeChance": 50 },
							{ "amount": 8, "type": "medusa" },
							{ "amount": 8, "type": "medusa" }
						],
						"combat_value": 414,
						"reward" : {
							"value": 8000,
							"resources":
							{
								"sulfur" : 8,
								"gold" : 4000
							}
						}
					},
					{
						"chance": 10,
						"guards": [
							{ "amount": 10, "type": "medusa" },
							{ "amount": 10, "type": "medusa" },
							{ "amount": 10, "type": "medusa", "upgradeChance": 50 },
							{ "amount": 10, "type": "medusa" },
							{ "amount": 10, "type": "medusa" }
						],
						"combat_value": 517,
						"reward" : {
							"value": 10000,
							"resources":
							{
								"sulfur" : 10,
								"gold" : 5000
							}
						}
					}
				]
			},
			"nagaBank" : {
				"index" : 5,
				"resetDuration" : 0,
				"name" : "Naga Bank",
				"aiValue" : 3000,
				"sounds" : {
					"ambient" : ["LOOPNAGA"]
				},
				"rmg" : {
					"value"		: 3000,
					"rarity"	: 100
				},
				"levels": [
					{
						"chance": 30,
						"guards": [
							{ "amount": 2, "type": "naga" },
							{ "amount": 2, "type": "naga" },
							{ "amount": 2, "type": "naga", "upgradeChance": 50 },
							{ "amount": 2, "type": "naga" },
							{ "amount": 2, "type": "naga" }
						],
						"combat_value": 403,
						"reward" : {
							"value": 8000,
							"resources":
							{
								"gems" : 8,
								"gold" : 4000
							}
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 3, "type": "naga" },
							{ "amount": 3, "type": "naga" },
							{ "amount": 3, "type": "naga", "upgradeChance": 50 },
							{ "amount": 3, "type": "naga" },
							{ "amount": 3, "type": "naga" }
						],
						"combat_value": 605,
						"reward" : {
							"value": 12000,
							"resources":
							{
								"gems" : 12,
								"gold" : 6000
							}
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 4, "type": "naga" },
							{ "amount": 4, "type": "naga" },
							{ "amount": 4, "type": "naga", "upgradeChance": 50 },
							{ "amount": 4, "type": "naga" },
							{ "amount": 4, "type": "naga" }
						],
						"combat_value": 806,
						"reward" : {
							"value": 16000,
							"resources":
							{
								"gems" : 16,
								"gold" : 8000
							}
						}
					},
					{
						"chance": 10,
						"guards": [
							{ "amount": 6, "type": "naga" },
							{ "amount": 6, "type": "naga" },
							{ "amount": 6, "type": "naga", "upgradeChance": 50 },
							{ "amount": 6, "type": "naga" },
							{ "amount": 6, "type": "naga" }
						],
						"combat_value": 1210,
						"reward" : {
							"value": 24000,
							"resources":
							{
								"gems" : 24,
								"gold" : 12000
							}
						}
					}
				]
			},
			"dragonFlyHive" : {
				"index" : 6,
				"resetDuration" : 0,
				"name" : "Dragon Fly Hive",
				"aiValue" : 9000,
				"sounds" : {
					"ambient" : ["LOOPLEAR"]
				},
				"rmg" : {
					"value"		: 9000,
					"rarity"	: 100
				},
				"levels": [
					{
						"chance": 30,
						"guards": [
							{ "amount": 6, "type": "fireDragonFly" },
							{ "amount": 6, "type": "fireDragonFly" },
							{ "amount": 6, "type": "fireDragonFly" },
							{ "amount": 6, "type": "fireDragonFly" },
							{ "amount": 6, "type": "fireDragonFly" }
						],
						"combat_value": 154,
						"reward" : {
							"value": 3200,
							"creatures": [ { "amount": 4, "type": "wyvern" } ]
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 9, "type": "fireDragonFly" },
							{ "amount": 9, "type": "fireDragonFly" },
							{ "amount": 9, "type": "fireDragonFly" },
							{ "amount": 9, "type": "fireDragonFly" },
							{ "amount": 9, "type": "fireDragonFly" }
						],
						"combat_value": 230,
						"reward" : {
							"value": 4800,
							"creatures": [ { "amount": 6, "type": "wyvern" } ]
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 12, "type": "fireDragonFly" },
							{ "amount": 12, "type": "fireDragonFly" },
							{ "amount": 12, "type": "fireDragonFly" },
							{ "amount": 12, "type": "fireDragonFly" },
							{ "amount": 12, "type": "fireDragonFly" }
						],
						"combat_value": 307,
						"reward" : {
							"value": 6400,
							"creatures": [ { "amount": 8, "type": "wyvern" } ]
						}
					},
					{
						"chance": 10,
						"guards": [
							{ "amount": 18, "type": "fireDragonFly" },
							{ "amount": 18, "type": "fireDragonFly" },
							{ "amount": 18, "type": "fireDragonFly" },
							{ "amount": 18, "type": "fireDragonFly" },
							{ "amount": 18, "type": "fireDragonFly" }
						],
						"combat_value": 461,
						"reward" : {
							"value": 9600,
							"creatures": [ { "amount": 12, "type": "wyvern" } ]
						}
					}
				]
			}
		}
	},
	"shipwreck" : {
		"index" :85,
		"handler": "bank",
		"types" : {
			"shipwreck" : {
				"index" : 0,
				"resetDuration" : 0,
				"name" : "Shipwreck",
				"aiValue" : 2000,
				"rmg" : {
					"value"		: 2000,
					"rarity"	: 100
				},
				"levels": [
					{
						"chance": 30,
						"guards": [
							{ "amount": 2, "type": "wight" },
							{ "amount": 2, "type": "wight" },
							{ "amount": 2, "type": "wight" },
							{ "amount": 2, "type": "wight" },
							{ "amount": 2, "type": "wight" }
						],
						"combat_value": 31,
						"reward" : {
							"value": 2000,
							"resources":
							{
								"gold" : 2000
							}
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 3, "type": "wight" },
							{ "amount": 3, "type": "wight" },
							{ "amount": 3, "type": "wight" },
							{ "amount": 3, "type": "wight" },
							{ "amount": 3, "type": "wight" }
						],
						"combat_value": 46,
						"reward" : {
							"value": 3000,
							"resources":
							{
								"gold" : 3000
							}
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 5, "type": "wight" },
							{ "amount": 5, "type": "wight" },
							{ "amount": 5, "type": "wight" },
							{ "amount": 5, "type": "wight" },
							{ "amount": 5, "type": "wight" }
						],
						"combat_value": 77,
						"reward" : {
							"value": 5000,
							"resources":
							{
								"gold" : 4000
							},
							"artifacts": [ { "class" : "TREASURE" } ]
						}
					},
					{
						"chance": 10,
						"guards": [
							{ "amount": 10, "type": "wight" },
							{ "amount": 10, "type": "wight" },
							{ "amount": 10, "type": "wight" },
							{ "amount": 10, "type": "wight" },
							{ "amount": 10, "type": "wight" }
						],
						"combat_value": 154,
						"reward" : {
							"value": 7000,
							"resources":
							{
								"gold" : 5000
							},
							"artifacts": [ { "class" : "MINOR" } ]
						}
					}
				]
			}
		}
	},
	"derelictShip" : {
		"index" :24,
		"handler": "bank",
		"types" : {
			"derelictShip" : {
				"index" : 0,
				"resetDuration" : 0,
				"name" : "Derelict Ship",
				"aiValue" : 4000,
				"rmg" : {
					"value"		: 4000,
					"rarity"	: 20
				},
				"levels": [
					{
						"chance": 30,
						"guards": [
							{ "amount": 4, "type": "waterElemental" },
							{ "amount": 4, "type": "waterElemental" },
							{ "amount": 4, "type": "waterElemental" },
							{ "amount": 4, "type": "waterElemental" },
							{ "amount": 4, "type": "waterElemental" }
						],
						"combat_value": 138,
						"reward" : {
							"value": 3000,
							"resources":
							{
								"gold" : 3000
							}
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 6, "type": "waterElemental" },
							{ "amount": 6, "type": "waterElemental" },
							{ "amount": 6, "type": "waterElemental" },
							{ "amount": 6, "type": "waterElemental" },
							{ "amount": 6, "type": "waterElemental" }
						],
						"combat_value": 207,
						"reward" : {
							"value": 4000,
							"resources":
							{
								"gold" : 3000
							},
							"artifacts": [ { "class" : "TREASURE" } ]
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 8, "type": "waterElemental" },
							{ "amount": 8, "type": "waterElemental" },
							{ "amount": 8, "type": "waterElemental" },
							{ "amount": 8, "type": "waterElemental" },
							{ "amount": 8, "type": "waterElemental" }
						],
						"combat_value": 276,
						"reward" : {
							"value": 5000,
							"resources":
							{
								"gold" : 4000
							},
							"artifacts": [ { "class" : "TREASURE" } ]
						}
					},
					{
						"chance": 10,
						"guards": [
							{ "amount": 12, "type": "waterElemental" },
							{ "amount": 12, "type": "waterElemental" },
							{ "amount": 12, "type": "waterElemental" },
							{ "amount": 12, "type": "waterElemental" },
							{ "amount": 12, "type": "waterElemental" }
						],
						"combat_value": 414,
						"reward" : {
							"value": 8000,
							"resources":
							{
								"gold" : 6000
							},
							"artifacts": [ { "class" : "MINOR" } ]
						}
					}
				]
			}
		}
	},
	"crypt" : {
		"index" :84,
		"handler": "bank",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPDEAD"],
				"visit" : ["GRAVEYARD"]
			}
		},
		"types" : {
			"crypt" : {
				"index" : 0,
				"resetDuration" : 0,
				"name" : "Crypt",
				"aiValue" : 1500,
				"rmg" : {
					"value"		: 1000,
					"rarity"	: 100
				},
				"levels": [
					{
						"chance": 30,
						"guards": [
							{ "amount": 10, "type": "skeleton" },
							{ "amount": 10, "type": "walkingDead" },
							{ "amount": 10, "type": "walkingDead" },
							{ "amount": 10, "type": "skeleton" },
							{ "amount": 10, "type": "skeleton" }
						],
						"combat_value": 75,
						"reward" : {
							"value": 1500,
							"resources":
							{
								"gold" : 1500
							}
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 13, "type": "skeleton" },
							{ "amount": 10, "type": "walkingDead" },
							{ "amount": 5, "type": "wight" },
							{ "amount": 10, "type": "walkingDead" },
							{ "amount": 12, "type": "skeleton" }
						],
						"combat_value": 94,
						"reward" : {
							"value": 2000,
							"resources":
							{
								"gold" : 2000
							}
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 20, "type": "skeleton" },
							{ "amount": 20, "type": "walkingDead" },
							{ "amount": 10, "type": "wight" },
							{ "amount": 5, "type": "vampire" }
						],
						"combat_value": 169,
						"reward" : {
							"value": 3500,
							"resources":
							{
								"gold" : 2500
							},
							"artifacts": [ { "class" : "TREASURE" } ]
						}
					},
					{
						"chance": 10,
						"guards": [
							{ "amount": 20, "type": "skeleton" },
							{ "amount": 20, "type": "walkingDead" },
							{ "amount": 10, "type": "wight" },
							{ "amount": 10, "type": "vampire" }
						],
						"combat_value": 225,
						"reward" : {
							"value": 6000,
							"resources":
							{
								"gold" : 5000
							},
							"artifacts": [ { "class" : "TREASURE" } ]
						}
					}
				]
			}
		}
	},
	"dragonUtopia" : {
		"index" :25,
		"handler": "bank",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPDRAG"],
				"visit" : ["DRAGON"]
			}
		},
		"types" : {
			"dragonUtopia" : {
				"index" : 0,
				"resetDuration" : 0,
				"name" : "Dragon Utopia",
				"aiValue" : 11000,
				"rmg" : {
					"value"		: 10000,
					"rarity"	: 100
				},
				"levels": [
					{
						"chance": 30,
						"guards": [
							{ "amount": 8, "type": "greenDragon" },
							{ "amount": 5, "type": "redDragon" },
							{ "amount": 2, "type": "goldDragon" },
							{ "amount": 1, "type": "blackDragon" }
						],
						"combat_value": 769,
						"reward" : {
							"value": 38000,
							"resources":
							{
								"gold" : 20000
							},
							"artifacts": [
								{ "class" : "TREASURE" },
								{ "class" : "MINOR" },
								{ "class" : "MAJOR" },
								{ "class" : "RELIC" }
							]
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 8, "type": "greenDragon" },
							{ "amount": 6, "type": "redDragon" },
							{ "amount": 3, "type": "goldDragon" },
							{ "amount": 2, "type": "blackDragon" }
						],
						"combat_value": 209,
						"reward" : {
							"value": 57000,
							"resources":
							{
								"gold" : 30000
							},
							"artifacts": [
								{ "class" : "MINOR" },
								{ "class" : "MAJOR" },
								{ "class" : "RELIC" },
								{ "class" : "RELIC" }
							]
						}
					},
					{
						"chance": 30,
						"guards": [
							{ "amount": 8, "type": "greenDragon" },
							{ "amount": 6, "type": "redDragon" },
							{ "amount": 4, "type": "goldDragon" },
							{ "amount": 3, "type": "blackDragon" }
						],
						"combat_value": 556,
						"reward" : {
							"value": 75000,
							"resources":
							{
								"gold" : 40000
							},
							"artifacts": [
								{ "class" : "MAJOR" },
								{ "class" : "RELIC" },
								{ "class" : "RELIC" },
								{ "class" : "RELIC" }
							]
						}
					},
					{
						"chance": 10,
						"guards": [
							{ "amount": 8, "type": "greenDragon" },
							{ "amount": 7, "type": "redDragon" },
							{ "amount": 6, "type": "goldDragon" },
							{ "amount": 5, "type": "blackDragon" }
						],
						"combat_value": 343,
						"reward" : {
							"value": 90000,
							"resources":
							{
								"gold" : 50000
							},
							"artifacts": [
								{ "class" : "RELIC" },
								{ "class" : "RELIC" },
								{ "class" : "RELIC" },
								{ "class" : "RELIC" }
							]
						}
					}
				]
			}
		}
	},
	"pyramid" : {
		"index" :63,
		"handler": "bank",
		"base" : {
			"sounds" : {
				"visit" : ["MYSTERY"]
			}
		},
		"types" : {
			"pyramid" : {
				"index" : 0,
				"resetDuration" : 0,
				"name" : "Pyramid",
				"aiValue" : 8000,
				"rmg" : {
					"value"		: 5000,
					"rarity"	: 20
				},
				"levels": [
					{
						"chance": 100,
						"guards": [
							{ "amount": 20, "type": "goldGolem" },
							{ "amount": 10, "type": "diamondGolem" },
							{ "amount": 20, "type": "goldGolem" },
							{ "amount": 10, "type": "diamondGolem" }
						],
						"combat_value": 786,
						"reward" : {
							"value": 15000,
							"spells" : [ { "level" : 5 } ]
						}
					}
				]
			}
		}
	},
	"creatureGeneratorCommon" : {
		"index" :17,
		"handler": "dwelling",
		"base" : {
			"base" : {
				"visitableFrom" : [ "---", "+++", "+++" ],
				"mask" : [ "VVV", "VBB", "VAA" ]
			},
			"sounds" : {
				"ambient" : ["LOOPSWOR"],
				"visit" : ["MILITARY"]
			}
		},
		"types" : {
			"basiliskPit": {
				"index": 0,
				"creatures": [["basilisk"]],
				"sounds": {
					"ambient": ["LOOPMONS"]
				}
			},
			"behemothCrag": {
				"index": 1,
				"creatures": [["behemoth"]],
				"sounds": {
					"ambient": ["LOOPBEHE"]
				}
			},
			"pillarOfEyes": {
				"index": 2,
				"creatures": [["beholder"]],
				"sounds": {
					"ambient": ["LOOPCAVE"]
				}
			},
			"hallOfDarkness": {
				"index": 3,
				"creatures": [["blackKnight"]],
				"sounds": {
					"ambient": ["LOOPDEAD"]
				}
			},
			"dragonVault": {
				"index": 4,
				"creatures": [["boneDragon"]],
				"sounds": {
					"ambient": ["LOOPDRAG"]
				}
			},
			"trainingGrounds": {
				"index": 5,
				"creatures": [["cavalier"]],
				"sounds": {
					"ambient": ["LOOPHORS"]
				}
			},
			"centaurStables": {
				"index": 6,
				"creatures": [["centaur"]],
				"sounds": {
					"ambient": ["LOOPHORS"]
				}
			},
			"airConflux": {
				"index": 7,
				"creatures": [["airElemental"]],
				"sounds": {
					"ambient": ["LOOPAIR"]
				}
			},
			"portalOfGlory": {
				"index": 8,
				"creatures": [["angel"]],
				"sounds": {
					"ambient": ["LOOPSANC"]
				}
			},
			"cyclopsCave": {
				"index": 9,
				"creatures": [["cyclop"]],
				"sounds": {
					"ambient": ["LOOPCAVE"]
				}
			},
			"forsakenPalace": {
				"index": 10,
				"creatures": [["devil"]],
				"sounds": {
					"ambient": ["LOOPDEVL"]
				}
			},
			"serpentFlyHive": {
				"index": 11,
				"creatures": [["serpentFly"]],
				"sounds": {
					"ambient": ["LOOPLEAR"]
				}
			},
			"dwarfCottage": {
				"index": 12,
				"creatures": [["dwarf"]],
				"sounds": {
					"ambient": ["LOOPDWAR"]
				}
			},
			"earthConflux": {
				"index": 13,
				"creatures": [["earthElemental"]],
				"sounds": {
					"ambient": ["LOOPEART"]
				}
			},
			"fireLake": {
				"index": 14,
				"creatures": [["efreet"]],
				"sounds": {
					"ambient": ["LOOPVENT"]
				}
			},
			"homestead": {
				"index": 15,
				"creatures": [["woodElf"]],
				"sounds": {
					"ambient": ["LOOPELF"]
				}
			},
			"fireConflux": {
				"index": 16,
				"creatures": [["fireElemental"]],
				"sounds": {
					"ambient": ["LOOPFIRE"]
				}
			},
			"parapet": {
				"index": 17,
				"creatures": [["stoneGargoyle"]],
				"sounds": {
					"ambient": ["LOOPGRIF"]
				}
			},
			"altarOfWishes": {
				"index": 18,
				"creatures": [["genie"]],
				"sounds": {
					"ambient": ["LOOPMAGI"]
				}
			},
			"wolfPen": {
				"index": 19,
				"creatures": [["goblinWolfRider"]],
				"sounds": {
					"ambient": ["LOOPWOLF"]
				}
			},
			"gnollHut": {
				"index": 20,
				"creatures": [["gnoll"]],
				"sounds": {
					"ambient": ["LOOPORC"]
				}
			},
			"goblinBarracks": {
				"index": 21,
				"creatures": [["goblin"]],
				"sounds": {
					"ambient": ["LOOPGOBL"]
				}
			},
			"hallOfSins": {
				"index": 22,
				"creatures": [["gog"]],
				"sounds": {
					"ambient": ["LOOPVENT"]
				}
			},
			"gorgonLair": {
				"index": 23,
				"creatures": [["gorgon"]],
				"sounds": {
					"ambient": ["LOOPBEHE"]
				}
			},
			"dragonCliffs": {
				"index": 24,
				"creatures": [["greenDragon"]],
				"sounds": {
					"ambient": ["LOOPDRAG"]
				}
			},
			"griffinTower": {
				"index": 25,
				"creatures": [["griffin"]],
				"sounds": {
					"ambient": ["LOOPGRIF"]
				}
			},
			"harpyLoft": {
				"index": 26,
				"creatures": [["harpy"]],
				"sounds": {
					"ambient": ["LOOPHARP"]
				}
			},
			"kennels": {
				"index": 27,
				"creatures": [["hellHound"]],
				"sounds": {
					"ambient": ["LOOPDOG"]
				}
			},
			"hydraPond": {
				"index": 28,
				"creatures": [["hydra"]],
				"sounds": {
					"ambient": ["LOOPHYDR"]
				}
			},
			"impCrucible": {
				"index": 29,
				"creatures": [["imp"]],
				"sounds": {
					"ambient": ["LOOPFIRE"]
				}
			},
			"lizardDen": {
				"index": 30,
				"creatures": [["lizardman"]],
				"sounds": {
					"ambient": ["LOOPARCH"]
				}
			},
			"mageTower": {
				"index": 31,
				"creatures": [["mage"]],
				"sounds": {
					"ambient": ["LOOPMAGI"]
				}
			},
			"manticoreLair": {
				"index": 32,
				"creatures": [["manticore"]],
				"sounds": {
					"ambient": ["LOOPMANT"]
				}
			},
			"medusaChapel": {
				"index": 33,
				"creatures": [["medusa"]],
				"sounds": {
					"ambient": ["LOOPMEDU"]
				}
			},
			"labyrinth": {
				"index": 34,
				"creatures": [["minotaur"]],
				"sounds": {
					"ambient": ["LOOPANIM"]
				}
			},
			"monastery": {
				"index": 35,
				"creatures": [["monk"]],
				"sounds": {
					"ambient": ["LOOPMONK"]
				}
			},
			"goldenPavilion": {
				"index": 36,
				"creatures": [["naga"]],
				"sounds": {
					"ambient": ["LOOPNAGA"]
				}
			},
			"demonGate": {
				"index": 37,
				"creatures": [["demon"]],
				"sounds": {
					"ambient": ["LOOPCAVE"]
				}
			},
			"ogreFort": {
				"index": 38,
				"creatures": [["ogre"]],
				"sounds": {
					"ambient": ["LOOPOGRE"]
				}
			},
			"orcTower": {
				"index": 39,
				"creatures": [["orc"]],
				"sounds": {
					"ambient": ["LOOPORC"]
				}
			},
			"hellHole": {
				"index": 40,
				"creatures": [["pitFiend"]],
				"sounds": {
					"ambient": ["LOOPFIRE"]
				}
			},
			"dragonCave": {
				"index": 41,
				"creatures": [["redDragon"]],
				"sounds": {
					"ambient": ["LOOPDRAG"]
				}
			},
			"cliffNest": {
				"index": 42,
				"creatures": [["roc"]],
				"sounds": {
					"ambient": ["LOOPBIRD"]
				}
			},
			"workshop": {
				"index": 43,
				"creatures": [["gremlin"]],
				"sounds": {
					"ambient": ["LOOPGREM"]
				}
			},
			"cloudTemple": {
				"index": 44,
				"creatures": [["giant"]],
				"sounds": {
					"ambient": ["LOOPTITA"]
				}
			},
			"dendroidArches": {
				"index": 45,
				"creatures": [["dendroidGuard"]],
				"sounds": {
					"ambient": ["LOOPGARD"]
				}
			},
			"warren": {
				"index": 46,
				"creatures": [["troglodyte"]],
				"sounds": {
					"ambient": ["LOOPCAVE"]
				}
			},
			"waterConflux": {
				"index": 47,
				"creatures": [["waterElemental"]],
				"sounds": {
					"ambient": ["LOOPFOUN"]
				}
			},
			"tombOfSouls": {
				"index": 48,
				"creatures": [["wight"]],
				"sounds": {
					"ambient": ["LOOPDEAD"]
				}
			},
			"wyvernNest": {
				"index": 49,
				"creatures": [["wyvern"]],
				"sounds": {
					"ambient": ["LOOPMONS"]
				}
			},
			"enchantedSpring": {
				"index": 50,
				"creatures": [["pegasus"]],
				"sounds": {
					"ambient": ["LOOPPEGA"]
				}
			},
			"unicornGladeBig": {
				"index": 51,
				"creatures": [["unicorn"]],
				"sounds": {
					"ambient": ["LOOPUNIC"]
				}
			},
			"mausoleum": {
				"index": 52,
				"creatures": [["lich"]],
				"sounds": {
					"ambient": ["LOOPDEAD"]
				}
			},
			"estate": {
				"index": 53,
				"creatures": [["vampire"]],
				"sounds": {
					"ambient": ["LOOPDEAD"]
				}
			},
			"cursedTemple": {
				"index": 54,
				"creatures": [["skeleton"]],
				"sounds": {
					"ambient": ["LOOPSKEL"]
				}
			},
			"graveyard": {
				"index": 55,
				"creatures": [["walkingDead"]],
				"sounds": {
					"ambient": ["LOOPDEAD"]
				}
			},
			"guardhouse": {
				"index": 56,
				"creatures": [["pikeman"]],
				"sounds": {
					"ambient": ["LOOPPIKE"]
				}
			},
			"archersTower": {
				"index": 57,
				"creatures": [["archer"]],
				"sounds": {
					"ambient": ["LOOPARCH"]
				}
			},
			"barracks": {
				"index": 58,
				"creatures": [["swordsman"]]
			},
			"magicLantern": {
				"index": 59,
				"creatures": [["pixie"]]
			},
			"altarOfThought": {
				"index": 60,
				"creatures": [["psychicElemental"]]
			},
			"pyre": {
				"index": 61,
				"creatures": [["firebird"]]
			},
			"frozenCliffs": {
				"index": 62,
				"creatures": [["azureDragon"]]
			},
			"crystalCavern": {
				"index": 63,
				"creatures": [["crystalDragon"]]
			},
			"magicForest": {
				"index": 64,
				"creatures": [["fairieDragon"]]
			},
			"sulfurousLair": {
				"index": 65,
				"creatures": [["rustDragon"]]
			},
			"enchantersHollow": {
				"index": 66,
				"creatures": [["enchanter"]]
			},
			"treetopTower": {
				"index": 67,
				"creatures": [["sharpshooter"]]
			},
			"unicornGlade": {
				"index": 68,
				"creatures": [["unicorn"]],
				"sounds": {
					"ambient": ["LOOPUNIC"]
				}
			},
			"altarOfAir": {
				"index": 69,
				"creatures": [["airElemental"]],
				"sounds": {
					"ambient": ["LOOPAIR"]
				}
			},
			"altarOfEarth": {
				"index": 70,
				"creatures": [["earthElemental"]],
				"sounds": {
					"ambient": ["LOOPEART"]
				}
			},
			"altarOfFire": {
				"index": 71,
				"creatures": [["fireElemental"]],
				"sounds": {
					"ambient": ["LOOPFIRE"]
				}
			},
			"altarOfWater": {
				"index": 72,
				"creatures": [["waterElemental"]],
				"sounds": {
					"ambient": ["LOOPFOUN"]
				}
			},
			"thatchedHut": {
				"index": 73,
				"creatures": [["halfling"]]
			},
			"hovel": {
				"index": 74,
				"creatures": [["peasant"]]
			},
			"boarGlen": {
				"index": 75,
				"creatures": [["boar"]]
			},
			"tombOfCurses": {
				"index": 76,
				"creatures": [["mummy"]]
			},
			"nomadTent": {
				"index": 77,
				"creatures": [["nomad"]]
			},
			"rogueCavern": {
				"index": 78,
				"creatures": [["rogue"]]
			},
			"trollBridge": {
				"index": 79,
				"creatures": [["troll"]]
			}
		}
	},

	"creatureGeneratorSpecial" : {
		"index" :20,
		"handler": "dwelling",
		"types" : {
			"elementalConflux" : {
				"index" : 0,
				"creatures" : [
					[ "airElemental" ],
					[ "waterElemental" ],
					[ "fireElemental" ],
					[ "earthElemental" ]
				],
				"guards" : [
					{ "amount" : 12, "type" : "earthElemental" }
				],
				"sounds" : {
					"ambient" : ["LOOPTITA"]
				}
			},
			"golemFactory" : {
				"index" : 1,
				"creatures" : [
					[ "ironGolem" ],
					[ "stoneGolem" ],
					[ "goldGolem" ],
					[ "diamondGolem" ]
				],
				"guards" : [
					{ "amount" : 9, "type" : "goldGolem" },
					{ "amount" : 6, "type" : "diamondGolem" }
				],
				"sounds" : {
					"ambient" : ["LOOPFACT"]
				}
			}
		}
	},
	"prison" : {
		"index" :62,
		"handler": "prison",
		"base" : {
			"sounds" : {
				"visit" : ["ROGUE"]
			}
		},
		"types" : {
			"prison" : { "index" : 0, "aiValue" : 5000 }
		}
	},

	"altarOfSacrifice" : {
		"index" :2,
		"handler" : "market",
		"base" : {
			"sounds" : {
				"visit" : ["MYSTERY"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 100,
				"rmg" : {
					"zoneLimit"	: 1,
					"value"		: 100,
					"rarity"	: 20
				}
			}
		}
	},
	"tradingPost" : {
		"index" :221,
		"handler" : "market",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPMARK"],
				"visit" : ["STORE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 100,
				"rmg" : {
					"zoneLimit"	: 1,
					"value"		: 100,
					"rarity"	: 100
				}
			}
		}
	},
	"tradingPostDUPLICATE"		: {
		"index" :99,
		"handler" : "market",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPMARK"],
				"visit" : ["STORE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 100,
				"rmg" : {
					"zoneLimit"	: 1,
					"value"		: 100,
					"rarity"	: 100
				}
			}
		}
	},
	"freelancersGuild" : {
		"index" :213,
		"handler" : "market",
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 100,
				"rmg" : {
					"zoneLimit"	: 1,
					"value"		: 100,
					"rarity"	: 100
				}
			}
		}
	},

	"blackMarket" : {
		"index" :7,
		"handler" : "blackMarket",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPMARK"],
				"visit" : ["MYSTERY"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 8000,
				"rmg" : {
					"value"		: 8000,
					"rarity"	: 20
				}
			}
		}
	},

	"pandoraBox" : {
		"index" :6,
		"handler" : "pandora",
		"base" : {
			"sounds" : {
				"visit" : ["MYSTERY"],
				"removal" : [ "PICKUP01", "PICKUP02", "PICKUP03", "PICKUP04", "PICKUP05", "PICKUP06", "PICKUP07" ]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 10000,
				"templates" : {
					"normal" : { "animation" : "ava0128.def", "visitableFrom" : [ "+++", "+-+", "+++" ], "mask" : [ "VV", "VA"] }
				},
				"rmg" : {
				}
			}
		}
	},
	"event" : {
		"index" :26,
		"handler" : "event",
		"types" : {
			"object" : {
				"index" : 0,
				"rmg" : {
				}
			}
		}
	},

	"redwoodObservatory" : {
		"index" :58,
		"handler" : "observatory",
		"base" : {
			"sounds" : {
				"visit" : ["LIGHTHOUSE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 750,
				"templates" :
				{
					"base" : { "animation" : "avxredw.def", "visitableFrom" : [ "---", "+++", "+++" ], "mask" : [ "VV", "VV", "VA"], "allowedTerrains":["grass", "swamp", "dirt", "sand", "lava", "rough"] },
					"snow" : { "animation" : "avxreds0.def", "visitableFrom" : [ "---", "+++", "+++" ], "mask" : [ "VV", "VV", "VA"], "allowedTerrains":["snow"] }
				},
				"rmg" : {
					"zoneLimit"	: 1,
					"value"		: 750,
					"rarity"	: 100
				}
			}
		}
	},
	"pillarOfFire" : {
		"index" :60,
		"handler" : "observatory",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPFIRE"],
				"visit" : ["LIGHTHOUSE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 750,
				"rmg" : {
					"zoneLimit"	: 1,
					"value"		: 750,
					"rarity"	: 100
				}
			}
		}
	},
	"coverOfDarkness" : {
		"index" :15,
		"handler" : "observatory",
		"base" : {
			"sounds" : {
				"visit" : ["LIGHTHOUSE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 100,
				"rmg" : {
				}
			}
		}
	},

	"whirlpool" : {
		"index" :111,
		"handler" : "whirlpool",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPWHIRL"],
				"visit" : ["DANGER"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"rmg" : {
				}
			}
		}
	},
	"subterraneanGate" : {
		"index" :103,
		"handler" : "subterraneanGate",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPGATE"],
				"visit" : ["CAVEHEAD"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0 },
			"objectWoG" : { "index" : 1 }
		}
	},

	"refugeeCamp" : {
		"index" :78,
		"handler" : "dwelling",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPMERC"],
				"visit" : ["MILITARY"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 2000,
				"rmg" : {
					"value"		: 5000,
					"rarity"	: 20
				}
			}
		}
	},
	"warMachineFactory" : {
		"index" :106,
		"handler" : "dwelling",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPFACT"],
				"visit" : ["MILITARY"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 1500,
				"rmg" : {
					"zoneLimit"	: 1,
					"value"		: 1500,
					"rarity"	: 50
				}
			}
		}
	},
	"shrineOfMagicLevel1" : {
		"index" :88,
		"handler" : "shrine",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPSHRIN"],
				"visit" : ["TEMPLE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 500,
				"rmg" : {
					"value"		: 500,
					"rarity"	: 100
				}
			}
		}
	},
	"shrineOfMagicLevel2" : {
		"index" :89,
		"handler" : "shrine",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPSHRIN"],
				"visit" : ["TEMPLE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 2000,
				"rmg" : {
					"value"		: 2000,
					"rarity"	: 100
				}
			}
		}
	},
	"shrineOfMagicLevel3" : {
		"index" :90,
		"handler" : "shrine",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPSHRIN"],
				"visit" : ["TEMPLE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 3000,
				"rmg" : {
					"value"		: 3000,
					"rarity"	: 100
				}
			},
			"object1":{
				"index" :1
			}
		}
	},
	"eyeOfTheMagi" : {
		"index" :27,
		"handler" : "magi",
		"base" : {
			"sounds" : {
				"visit" : ["LIGHTHOUSE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 0,
				"rmg" : {
				}
			}
		}
	},
	"hutOfTheMagi" : {
		"index" :37,
		"handler" : "magi",
		"base" : {
			"sounds" : {
				"visit" : ["LIGHTHOUSE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 750,
				"rmg" : {
				}
			}
		}
	},
	"lighthouse" : {
		"index" :42,
		"handler" : "lighthouse",
		"base" : {
			"sounds" : {
				"visit" : ["LIGHTHOUSE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 500,
				"rmg" : {
				}
			}
		}
	},
	"obelisk" : {
		"index" :57,
		"handler" : "obelisk",
		"base" : {
			"sounds" : {
				"visit" : ["MYSTERY"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 350,
				"rmg" : {
					"mapLimit"	: 48,
					"value"		: 3500,
					"rarity"	: 200
				}
			}
		}
	},
	"oceanBottle" : {
		"index" :59,
		"handler" : "sign",
		"base" : {
			"sounds" : {
				"visit" : ["STORE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 0,
				"rmg" : {
				}
			}
		}
	},
	"scholar" : {
		"index" :81,
		"handler" : "scholar",
		"base" : {
			"sounds" : {
				"visit" : ["GAZEBO"],
				"removal" : [ "PICKUP01", "PICKUP02", "PICKUP03", "PICKUP04", "PICKUP05", "PICKUP06", "PICKUP07" ]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 1500,
				"rmg" : {
					"value"		: 1500,
					"rarity"	: 100
				}
			}
		}
	},
	"shipyard" : {
		"index" :87,
		"handler" : "shipyard",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPLUMB"],
				"visit" : ["STORE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 1000,
				"rmg" : {
				}
			}
		}
	},
	"sign" : {
		"index" :91,
		"handler" : "sign",
		"base" : {
			"sounds" : {
				"visit" : ["STORE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 0,
				"rmg" : {
				}
			}
		}
	},
	"sirens" : {
		"index" :92,
		"handler" : "siren",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPSIRE"],
				"visit" : ["DANGER"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 100,
				"rmg" : {
					"mapLimit"	: 32,
					"value"		: 100,
					"rarity"	: 20
				}
			}
		}
	},
	"denOfThieves" : {
		"index" :97,
		"handler" : "denOfThieves",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPDEN"],
				"visit" : ["MYSTERY"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 100,
				"templates" :
				{
					"green" : { "animation" : "avxdent.def", "visitableFrom" : [ "---", "+++", "+++" ], "mask" : [ "VV", "BA"], "allowedTerrains":["grass", "swamp", "dirt"] },
					"brown" : { "animation" : "avxdend0.def", "visitableFrom" : [ "---", "+++", "+++" ], "mask" : [ "VV", "BA"], "allowedTerrains":["sand", "lava", "rough", "snow", "subterra"] }
				},
				"rmg" : {
					"value"		: 100,
					"rarity"	: 100,
					"zoneLimit"	: 1
				}
			}
		}
	},
	"university" : {
		"index" :104,
		"handler" : "university",
		"base" : {
			"sounds" : {
				"visit" : ["GAZEBO"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 2500,
				"rmg" : {
					"value"		: 2500,
					"rarity"	: 20
				}
			}
		}
	},
	"witchHut" : {
		"index" :113,
		"handler" : "witch",
		"base" : {
			"sounds" : {
				"visit" : ["GAZEBO"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 1500,
				"rmg" : {
					"zoneLimit"	: 3,
					"value"		: 1500,
					"rarity"	: 80
				}
			},
			"object1" : {
				"index" : 1
			}
		}
	},
	"questGuard" : {
		"index" :215,
		"handler" : "questGuard",
		"base" : {
			"sounds" : {
				"visit" : ["CAVEHEAD"],
				"removal" : [ "PICKUP01", "PICKUP02", "PICKUP03", "PICKUP04", "PICKUP05", "PICKUP06", "PICKUP07" ]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 10000,
				"rmg" : {
				}
			}
		}
	},
	"magicWell" : {
		"index" :49,
		"handler" : "magicWell",
		"base" : {
			"sounds" : {
				"visit" : ["FAERIE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 250,
				"rmg" : {
					"zoneLimit" : 1,
					"value"		: 250,
					"rarity"	: 100
				}
			},
			"objectWoG" : { "index" : 1}
		}
	},


	"randomTown"					: { "index" :77,  "handler": "randomTown", "types" : { "object" : { "index" : 0} }  },
	"randomHero" : {
		"index" :70,
		"handler": "randomHero",
		"types" : {
			"object" : {
				"index" : 0,
				"templates" : {
					"normal" : {
						"animation" : "AHRANDOM",
						"editorAnimation" : "AHRANDOM",
						"visitableFrom" : [
							"+++",
							"+-+",
							"+++"
						],
						"mask" : [
							"VVV",
							"VAV"
						]
					}
				}
			}
		}
	},
	"randomDwelling"				: { "index" :216, "handler": "randomDwelling", "types" : { "object" : { "index" : 0} }  },

	"randomResource" : {
		"index" :76,
		"handler": "randomResource",
		"types" : {
			"object" : {
				"index" : 0,
				"templates" : {
					"normal" : { "animation" : "AVTrndm0", "visitableFrom" : [ "+++", "+-+", "+++" ], "mask" : [ "VV", "VA"] }
				}
			}
		}
	},

	"randomArtifact" : {
		"index" :65,
		"handler": "randomArtifact",
		"types" : {
			"object" : {
				"index" : 0,
				"templates" : {
					"normal" : { "animation" : "AVArand", "visitableFrom" : [ "+++", "+-+", "+++" ], "mask" : [ "VV", "VA"] }
				}
			}
		}
	},
	"randomArtifactTreasure" : {
		"index" :66,
		"handler": "randomArtifact",
		"types" : {
			"object" : {
				"index" : 0,
				"rmg" : {
					"value"		: 2000,
					"rarity"	: 150
				},
				"templates" : {
					"normal" : { "animation" : "AVArnd1", "visitableFrom" : [ "+++", "+-+", "+++" ], "mask" : [ "VV", "VA"] }
				}
			}
		}
	},
	"randomArtifactMinor" : {
		"index" :67,
		"handler": "randomArtifact",
		"types" : {
			"object" : {
				"index" : 0,
				"rmg" : {
					"value"		: 5000,
					"rarity"	: 150
				},
				"templates" : {
					"normal" : { "animation" : "AVArnd2", "visitableFrom" : [ "+++", "+-+", "+++" ], "mask" : [ "VV", "VA"] }
				}
			}
		}
	},
	"randomArtifactMajor" : {
		"index" :68,
		"handler": "randomArtifact",
		"types" : {
			"object" : {
				"index" : 0,
				"rmg" : {
					"value"		: 10000,
					"rarity"	: 150
				},
				"templates" : {
					"normal" : { "animation" : "AVArnd3", "visitableFrom" : [ "+++", "+-+", "+++" ], "mask" : [ "VV", "VA"] }
				}
			}
		}
	},
	"randomArtifactRelic" : {
		"index" :69,
		"handler": "randomArtifact",
		"types" : {
			"object" : {
				"index" : 0,
				"rmg" : {
					"value"		: 20000,
					"rarity"	: 150
				},
				"templates" : {
					"normal" : { "animation" : "AVArnd4", "visitableFrom" : [ "+++", "+-+", "+++" ], "mask" : [ "VV", "VA"] }
				}
			}
		}
	},

	"randomMonster" : {
		"index" :71,
		"handler": "randomMonster",
		"types" : {
			"object" : {
				"index" : 0,
				"templates" : {
					"normal" : { "animation" : "AVWmrnd0", "visitableFrom" : [ "+++", "+-+", "+++" ], "mask" : [ "VV", "VA"] }
				}
			}
		}
	},
	"randomMonsterLevel1" : {
		"index" :72,
		"handler": "randomMonster",
		"types" : {
			"object" : {
				"index" : 0,
				"templates" : {
					"normal" : { "animation" : "AVWmon1", "visitableFrom" : [ "+++", "+-+", "+++" ], "mask" : [ "VV", "VA"] }
				}
			}
		}
	},
	"randomMonsterLevel2" : {
		"index" :73,
		"handler": "randomMonster",
		"types" : {
			"object" : {
				"index" : 0,
				"templates" : {
					"normal" : { "animation" : "AVWmon2", "visitableFrom" : [ "+++", "+-+", "+++" ], "mask" : [ "VV", "VA"] }
				}
			}
		}
	},
	"randomMonsterLevel3" : {
		"index" :74,
		"handler": "randomMonster",
		"types" : {
			"object" : {
				"index" : 0,
				"templates" : {
					"normal" : { "animation" : "AVWmon3", "visitableFrom" : [ "+++", "+-+", "+++" ], "mask" : [ "VV", "VA"] }
				}
			}
		}
	},
	"randomMonsterLevel4" : {
		"index" :75,
		"handler": "randomMonster",
		"types" : {
			"object" : {
				"index" : 0,
				"templates" : {
					"normal" : { "animation" : "AVWmon4", "visitableFrom" : [ "+++", "+-+", "+++" ], "mask" : [ "VV", "VA"] }
				}
			}
		}
	},
	"randomMonsterLevel5" : {
		"index" :162,
		"handler": "randomMonster",
		"types" : {
			"object" : {
				"index" : 0,
				"templates" : {
					"normal" : { "animation" : "AVWmon5", "visitableFrom" : [ "+++", "+-+", "+++" ], "mask" : [ "VV", "VA"] }
				}
			}
		}
	},
	"randomMonsterLevel6" : {
		"index" :163,
		"handler": "randomMonster",
		"types" : {
			"object" : {
				"index" : 0,
				"templates" : {
					"normal" : { "animation" : "AVWmon6", "visitableFrom" : [ "+++", "+-+", "+++" ], "mask" : [ "VV", "VA"] }
				}
			}
		}
	},
	"randomMonsterLevel7" : {
		"index" :164,
		"handler": "randomMonster",
		"types" : {
			"object" : {
				"index" : 0,
				"templates" : {
					"normal" : { "animation" : "AVWmon7", "visitableFrom" : [ "+++", "+-+", "+++" ], "mask" : [ "VV", "VA"] }
				}
			}
		}
	},


	"hillFort" : {
		"index" :35,
		"handler": "generic",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPSWAR"],
				"visit" : ["MILITARY"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 7000,
				"rmg" : {
					"zoneLimit"	: 1,
					"value"		: 7000,
					"rarity"	: 20
				}
			}
		}
	},
	"grail" : {
		"index" :36,
		"handler": "generic",
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 0,
				"rmg" : {
				}
			}
		}
	},
	"tavern" : {
		"index" :95,
		"handler": "generic",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPTAV"],
				"visit" : ["STORE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 100,
				"rmg" : {
					"zoneLimit"	: 1,
					"value"		: 100,
					"rarity"	: 20
				}
			}
		}
	},
	"sanctuary" : {
		"index" :80,
		"handler": "generic",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPSANC"],
				"visit" : ["GETPROTECTION"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 100,
				"rmg" : {
					"zoneLimit"	: 1,
					"value"		: 100,
					"rarity"	: 50
				}
			}
		}
	},


	"cursedGround" : {
		"index" : 21,
		"handler": "generic",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPCURS"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0
			}
		}
	},
	"magicPlains"	: {
		"index" : 46,
		"handler" : "generic",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPMAGI"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0
			}
		}
	},
	"swampFoliage" : { "index" :211, "handler": "generic", "types" : { "object" : { "index" : 0} } },
	"cloverField"	: { "index" :222, "handler": "generic", "types" : { "object" : { "index" : 0} } },
	"cursedGroundDUPLICATE"	: {
		"index" : 223,
		"handler" : "generic",
		"types" : {
			"object" : {
				"index" : 0
			}
		},
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPCURS"]
			}
		}
	},
	"evilFog"	: { "index" :224, "handler": "generic", "types" : { "object" : { "index" : 0} } },
	"favorableWinds" : { "index" :225, "handler": "generic", "types" : { "object" : { "index" : 0} } },
	"fieryFields"	: { "index" :226, "handler": "generic", "types" : { "object" : { "index" : 0} } },
	"holyGround" : { "index" :227, "handler": "generic", "types" : { "object" : { "index" : 0} } },
	"lucidPools" : { "index" :228, "handler": "generic", "types" : { "object" : { "index" : 0} } },
	"magicClouds"	: { "index" :229, "handler": "generic", "types" : { "object" : { "index" : 0} } },
	"magicPlainsDUPLICATE" : {
		"index" : 230,
		"handler": "generic",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPMAGI"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0
			}
		}
	},
	"rocklands"	: { "index" :231, "handler": "generic", "types" : { "object" : { "index" : 0} } },


	"cactus"						: { "index" :116, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"canyon"						: { "index" :117, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"crater"						: { "index" :118, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"deadVegetation"				: { "index" :119, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"flowers"						: { "index" :120, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"frozenLake"					: { "index" :121, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"hole"							: { "index" :124, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"kelp"							: { "index" :125, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"lake"							: { "index" :126, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"lavaFlow"						: { "index" :127, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"lavaLake"						: { "index" :128, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"mushrooms"						: { "index" :129, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"log"							: { "index" :130, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"mandrake"						: { "index" :131, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"moss"							: { "index" :132, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"mound"							: { "index" :133, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"mountain"						: { "index" :134, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"oakTrees"						: { "index" :135, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"outcropping"					: { "index" :136, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"pineTrees"						: { "index" :137, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"riverDelta"					: { "index" :143, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"rock"							: { "index" :147, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"sandDune"						: { "index" :148, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"sandPit"						: { "index" :149, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"shrub"							: { "index" :150, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"skull"							: { "index" :151, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"stump"							: { "index" :153, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"trees"							: { "index" :155, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"volcano"	: {
		"index" : 158,
		"handler": "static",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPVOLC"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0
			}
		}
	},
	"reef"							: { "index" :161, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"lakeDUPLICATE"					: { "index" :177, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"treesDUPLICATE"				: { "index" :199, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"desertHills"					: { "index" :206, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"dirtHills"						: { "index" :207, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"grassHills"					: { "index" :208, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"roughHills"					: { "index" :209, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"subterraneanRocks"				: { "index" :210, "handler": "static", "types" : { "object" : { "index" : 0} } },


	"frozenLakeDUPLICATE"			: { "index" :172, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"oakTreesDUPLICATE"				: { "index" :186, "handler": "static", "types" : { "object" : { "index" : 0} } },
	"plant"							: { "index" :189, "handler": "static", "types" : { "object" : { "index" : 0} } },
  	"artifact" : {
		"index" :5,
		"handler": "artifact",
		"base" : {
			"base" : {
				"visitableFrom" : [ "+++", "+-+", "+++" ],
				"mask" : [ "VV", "VA"]
			},
			"sounds" : {
				"visit" : ["TREASURE"],
				"removal" : [ "PICKUP01", "PICKUP02", "PICKUP03", "PICKUP04", "PICKUP05", "PICKUP06", "PICKUP07" ]
			}
		}
	},


	"hero" : {
		"index" :34,
		"handler": "hero",
		"defaultAiValue" : 7500,
		"base" : {
			"base" : {
				"visitableFrom" : [ "+++", "+-+", "+++" ],
				"mask" : [ "VV", "AV"]
			},
			"sounds" : {
				"removal" : ["KILLFADE"]
			}
		}
	},


	"monster" : {
		"index" :54,
		"handler": "monster",
		"base" : {
			"base" : {
				"visitableFrom" : [ "+++", "+-+", "+++" ],
				"mask" : [ "VV", "VA"]
			},
			"sounds" : {
				"removal" : ["KILLFADE"]
			}
		}
	},


	"resource" : {
		"index" :79,
		"handler": "resource",
		"base" : {
			"base" : {
				"visitableFrom" : [ "+++", "+-+", "+++" ],
				"mask" : [ "VA" ]
			}
		},
		"types" : {
			"wood" :    { "index" : 0, "aiValue" : 1400, "rmg" : { "value" : 1400, "rarity" : 300 }, "templates" : { "res" : { "animation" : "AVTwood0.def" } } },
			"mercury" : { "index" : 1, "aiValue" : 2000, "rmg" : { "value" : 2000, "rarity" : 300 }, "templates" : { "res" : { "animation" : "AVTmerc0.def" } } },
			"ore" :     { "index" : 2, "aiValue" : 1400, "rmg" : { "value" : 1400, "rarity" : 300 }, "templates" : { "res" : { "animation" : "AVTore0.def"  } } },
			"sulfur" :  { "index" : 3, "aiValue" : 2000, "rmg" : { "value" : 2000, "rarity" : 300 }, "templates" : { "res" : { "animation" : "AVTsulf0.def" } } },
			"crystal" : { "index" : 4, "aiValue" : 2000, "rmg" : { "value" : 2000, "rarity" : 300 }, "templates" : { "res" : { "animation" : "AVTcrys0.def" } } },
			"gems" :    { "index" : 5, "aiValue" : 2000, "rmg" : { "value" : 2000, "rarity" : 300 }, "templates" : { "res" : { "animation" : "AVTgems0.def" } } },
			"gold" :    { "index" : 6, "aiValue" : 750, "rmg" : { "value" : 750,  "rarity" : 300 }, "templates" : { "res" : { "animation" : "AVTgold0.def" } } },
			"mithril" : { "index" : 7, "aiValue" : 3500 }
		}
	},


	"town" : {
		"index" :98,
		"handler": "town",
		"defaultAiValue" : 20000,
		"base" : {
			"filters" : {

				"village" : [ "noneOf", [ "fort" ] ],

				"fort" : [ "allOf", [ "fort" ], [ "noneOf", ["capitol" ] ] ],

				"capitol" : [ "capitol" ]
			},


			"base" : {
				"visitableFrom" : [ "---", "+++", "+++" ],
				"mask" : [
					"VVVVVV",
					"VVVVVV",
					"VVVVVV",
					"VVBBBV",
					"VBBBBB",
					"VBBABB"
				]
			}
		}
	},


	"boat" : {
		"index" :8,
		"handler": "boat",
		"defaultAiValue" : 0,
		"base" : {
			"base" : {
				"visitableFrom" : [ "+++", "+-+", "+++" ],
				"mask" : [ "VVV", "VAV" ]
			}
		},
		"types" : {
			"evil" : { "index" : 0,	"rmg" : { "mapLimit" : 64 } },
			"good" : { "index" : 1, "rmg" : { "mapLimit" : 64 } },
			"neutral" : { "index" : 2, "rmg" : { "mapLimit" : 64 } }
		}
	},


	"borderGuard" : {
		"index" :9,
		"handler": "borderGuard",
		"defaultAiValue" : 0,
		"base" : {
			"sounds" : {
				"visit" : ["CAVEHEAD"],
				"removal" : [ "PICKUP01", "PICKUP02", "PICKUP03", "PICKUP04", "PICKUP05", "PICKUP06", "PICKUP07" ]
			}
		},
		"types" : {
			"lblue" :  { "index" : 0 },
			"green" :  { "index" : 1 },
			"red" :    { "index" : 2 },
			"dblue" :  { "index" : 3 },
			"brown" :  { "index" : 4 },
			"purple" : { "index" : 5 },
			"white" :  { "index" : 6 },
			"black" :  { "index" : 7 }
		}
	},
	"borderGate" : {
		"index" :212,
		"handler": "borderGate",
		"defaultAiValue" : 0,
		"base" : {
			"sounds" : {
				"visit" : ["CAVEHEAD"]
			}
		},
		"types" : {
			"lblue" :  { "index" : 0 },
			"green" :  { "index" : 1 },
			"red" :    { "index" : 2 },
			"dblue" :  { "index" : 3 },
			"brown" :  { "index" : 4 },
			"purple" : { "index" : 5 },
			"white" :  { "index" : 6 },
			"black" :  { "index" : 7 }
		}
	},
	"keymasterTent" : {
		"index" :10,
		"handler": "keymaster",
		"defaultAiValue" : 10000,
		"base" : {
			"sounds" : {
				"visit" : ["CAVEHEAD"]
			}
		},
		"types" : {
			"lblue" :  { "index" : 0 },
			"green" :  { "index" : 1 },
			"red" :    { "index" : 2 },
			"dblue" :  { "index" : 3 },
			"brown" :  { "index" : 4 },
			"purple" : { "index" : 5 },
			"white" :  { "index" : 6 },
			"black" :  { "index" : 7 }
		}
	},

	"seerHut" : {
		"index" :83,
		"handler": "seerHut",
		"defaultAiValue" : 10000,
		"base" : {
			"base" : {
				"visitableFrom" : [ "---", "+++", "+++" ],
				"mask" : [ "VVV", "VVV", "VAV" ]
			},
			"sounds" : {
				"visit" : ["QUEST"]
			}
		},
		"types" : {
			"0" :	{ "index" : 0 },
			"1" :	{ "index" : 1 },
			"2" :	{ "index" : 2 }
		}
	},


	"cartographer" : {
		"index" :13,
		"handler": "cartographer",
		"base" : {
			"sounds" : {
				"visit" : ["LIGHTHOUSE"]
			}
		},
		"types" : {
			"water" : { "index" : 0, "aiValue" : 5000, "rmg" : { "zoneLimit" : 1,  "value" : 5000, "rarity" : 20 } },
			"land" : { "index" : 1, "aiValue": 10000, "rmg" : { "zoneLimit" : 1,  "value" : 10000, "rarity" : 20 } },
			"subterra" : { "index" : 2, "aiValue" : 7500, "rmg" : { "zoneLimit" : 1,  "value" : 7500, "rarity" : 20 } }
		}
	},


	"mine" : {
		"index" :53,
		"handler": "mine",
		"base" : {
			"sounds" : {
				"visit" : ["FLAGMINE"]
			}
		},
		"types" : {
			"sawmill" : {
				"index" : 0,
				"aiValue" : 1500,
				"rmg" : {
					"value" : 1500
				},
				"sounds" : {
					"ambient" : ["LOOPLUMB"]
				}
			},
			"alchemistLab" : {
				"index" : 1,
				"aiValue" : 3500,
				"rmg" : {
					"value" : 3500
				},
				"sounds" : {
					"ambient" : ["LOOPSTAR"]
				}
			},
			"orePit" : {
				"index" : 2,
				"aiValue" : 1500,
				"rmg" : {
					"value" : 1500
				},
				"sounds" : {
					"ambient" : ["LOOPSULF"]
				}
			},
			"sulfurDune" : {
				"index" : 3,
				"aiValue" : 3500,
				"rmg" : {
					"value" : 3500
				},
				"sounds" : {
					"ambient" : ["LOOPSULF"]
				}
			},
			"crystalCavern" : {
				"index" : 4,
				"aiValue" : 3500,
				"rmg" : {
					"value" : 3500
				},
				"sounds" : {
					"ambient" : ["LOOPCRYS"]
				}
			},
			"gemPond" : {
				"index" : 5,
				"aiValue" : 3500,
				"rmg" : {
					"value" : 3500
				},
				"sounds" : {
					"ambient" : ["LOOPGEMP"]
				}
			},
			"goldMine" : {
				"index" : 6,
				"aiValue" : 7000,
				"rmg" : {
					"value" : 7000
				},
				"sounds" : {
					"ambient" : ["LOOPMINE"]
				}
			},
			"abandoned" :	{
				"index" : 7,
				"aiValue" : 3500,
				"sounds" : {
					"ambient" : ["LOOPCAVE"],
					"visit" : ["MYSTERY"]
				}
			}
		}
	},
	"abandonedMine" : {
		"index" :220,
		"handler": "mine",
		"defaultAiValue" : 3500,
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPCAVE"]
			}
		},
		"types" : {
			"mine" : { "index" : 7 }
		}
	},

	"garrisonHorizontal": {
		"index" :33,
		"handler": "garrison",
		"defaultAiValue" : 0,
		"base" : {
			"sounds" : {
				"visit" : ["MILITARY"]
			}
		},
		"types": {
			"normal": {
				"index": 0,
				"sounds" : {
					"ambient" : ["LOOPSWAR"]
				}
			},
			"antiMagic": {
				"index": 1,
				"sounds" : {
					"ambient" : ["LOOPMAGI"]
				}
			}
		}
	},
	"garrisonVertical" : {
		"index" :219,
		"handler": "garrison",
		"defaultAiValue" : 0,
		"base" : {
			"sounds" : {
				"visit" : ["MILITARY"]
			}
		},
		"types": {
			"normal": {
				"index": 0,
				"sounds" : {
					"ambient" : ["LOOPSWAR"]
				}
			},
			"antiMagic": {
				"index": 1,
				"sounds" : {
					"ambient" : ["LOOPMAGI"]
				}
			}
		}
	},


	"monolithOneWayEntrance" : {
		"index" :43,
		"handler": "monolith",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPMON1"],
				"visit" : ["TELPTOUT"]
			}
		},
		"types" : {
			"monolith1" : { "index" : 0 },
			"monolith2" : { "index" : 1 },
			"monolith3" : { "index" : 2 },
			"monolith4" : { "index" : 3 },
			"monolith5" : { "index" : 4 },
			"monolith6" : { "index" : 5 },
			"monolith7" : { "index" : 6 },
			"monolith8" : { "index" : 7 }
		}
	},
	"monolithOneWayExit" : {
		"index" :44,
		"handler": "monolith",
		"base" : {
			"sounds" : { "ambient" : ["LOOPMON1"] }
		},
		"types" : {
			"monolith1" : { "index" : 0 },
			"monolith2" : { "index" : 1 },
			"monolith3" : { "index" : 2 },
			"monolith4" : { "index" : 3 },
			"monolith5" : { "index" : 4 },
			"monolith6" : { "index" : 5 },
			"monolith7" : { "index" : 6 },
			"monolith8" : { "index" : 7 }
		}
	},
	"monolithTwoWay" : {
		"index" :45,
		"handler": "monolith",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPMON2"],
				"visit" : ["TELPTOUT"]
			}
		},
		"types" : {
			"monolith1" : { "index" : 0 },
			"monolith2" : { "index" : 1 },
			"monolith3" : { "index" : 2 },
			"monolith4" : { "index" : 3 },
			"monolith5" : { "index" : 4 },
			"monolith6" : { "index" : 5 },
			"monolith7" : { "index" : 6 },
			"monolith8" : { "index" : 7 }
		}
	},


	"randomDwellingLvl" : {
		"index" :217, "handler": "randomDwelling",
			"types" : {
				"objectLvl1" : { "index" : 0},
				"objectLvl2" : { "index" : 1},
				"objectLvl3" : { "index" : 2},
				"objectLvl4" : { "index" : 3},
				"objectLvl5" : { "index" : 4},
				"objectLvl6" : { "index" : 5},
				"objectLvl7" : { "index" : 6}
			}
	},


	"randomDwellingFaction" : {
		"index" :218,
		"handler": "randomDwelling",
			"types" : {
				"objectCastle"     : { "index" : 0},
				"objectRampart"    : { "index" : 1},
				"objectTower"      : { "index" : 2},
				"objectInferno"    : { "index" : 3},
				"objectNecropolis" : { "index" : 4},
				"objectDungeon"    : { "index" : 5},
				"objectStronghold" : { "index" : 6},
				"objectFortress"   : { "index" : 7},
				"objectConflux"     : { "index" : 8}
			}
	},


	"spellScroll" : {
		"index" :93,
		"handler": "artifact",
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 500,
				"templates" : {
					"normal" : {
						"visitableFrom" : [ "+++", "+-+", "+++" ],
						"mask" : [ "VA" ],
						"animation" : "AVA0001.def"
					}
				}
			}
		}
	},
	"heroPlaceholder"	: {
		"index" : 214,
		"handler": "heroPlaceholder",
		"types" : { "object" : { "index" : 0 } }
	},
	"magicSpring" : {
		"index" : 48,
		"handler": "magicSpring",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPFOUN"],
				"visit" : ["FAERIE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 500






			}
		}
	},

	"mysticalGarden" : {
		"index" : 55,
		"handler": "oncePerWeek",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPLEPR"],
				"visit" : ["EXPERNCE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 500,
				"rmg" : {
					"value"		: 500,
					"rarity"	: 50
				}
			}
		}
	},
	"windmill" :{
		"index" : 112,
		"handler": "oncePerWeek",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPWIND"],
				"visit" : ["GENIE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 1500,
				"rmg" : {
					"value"		: 1500,
					"rarity"	: 80
				}
			}
		}
	},
	"waterWheel" : {
		"index" : 109,
		"handler": "oncePerWeek",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPMILL"],
				"visit" : ["GENIE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 750,
				"rmg" : {
					"value"		: 750,
					"rarity"	: 50
				}
			}
		}
	},

	"leanTo" :{
		"index" : 39,
		"handler": "onceVisitable",
		"base" : {
			"sounds" : {
				"visit" : ["GENIE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 500,
				"rmg" : {
					"value"		: 500,
					"rarity"	: 100
				}
			}
		}
	},
	"corpse" :{
		"index" : 22,
		"handler": "onceVisitable",
		"base" : {
			"sounds" : {
				"visit" : ["MYSTERY"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 500,
				"rmg" : {
					"value"		: 500,
					"rarity"	: 100
				}
			}
		}
	},
	"wagon" :{
		"index" : 105,
		"handler": "onceVisitable",
		"base" : {
			"sounds" : {
				"visit" : ["GENIE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 500,
				"rmg" : {
					"value"		: 500,
					"rarity"	: 50
				}
			}
		}
	},
	"warriorTomb" : {
		"index" : 108,
		"handler": "onceVisitable",
		"base" : {
			"sounds" : {
				"visit" : ["GRAVEYARD"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 6000,
				"rmg" : {
					"value"		: 6000,
					"rarity"	: 20
				}
			}
		}
	},

	"campfire" :{
		"index" : 12,
		"handler": "pickable",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPCAMP"],
				"visit" : ["EXPERNCE"],
				"removal" : [ "PICKUP01", "PICKUP02", "PICKUP03", "PICKUP04", "PICKUP05", "PICKUP06", "PICKUP07" ]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 2000,
				"rmg" : {
					"value"		: 2000,
					"rarity"	: 500
				}
			}
		}
	},
	"flotsam" :{
		"index" : 29,
		"handler": "pickable",
		"base" : {
			"sounds" : {
				"visit" : ["GENIE"],
				"removal" : [ "PICKUP01", "PICKUP02", "PICKUP03", "PICKUP04", "PICKUP05", "PICKUP06", "PICKUP07" ]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 2000,
				"rmg" : {
					"value"		: 2000,
					"rarity"	: 100
				}
			}
		}
	},
	"seaChest" :{
		"index" : 82,
		"handler": "pickable",
		"base" : {
			"sounds" : {
				"visit" : ["CHEST"],
				"removal" : [ "PICKUP01", "PICKUP02", "PICKUP03", "PICKUP04", "PICKUP05", "PICKUP06", "PICKUP07" ]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 1500,
				"rmg" : {
					"value"		: 1500,
					"rarity"	: 500
				}
			}
		}
	},
	"shipwreckSurvivor" : {
		"index" : 86,
		"handler": "pickable",
		"base" : {
			"sounds" : {
				"visit" : ["TREASURE"],
				"removal" : [ "PICKUP01", "PICKUP02", "PICKUP03", "PICKUP04", "PICKUP05", "PICKUP06", "PICKUP07" ]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 1500,
				"rmg" : {
					"value"		: 1500,
					"rarity"	: 50
				}
			}
		}
	},
	"treasureChest" : {
		"index" : 101,
		"handler": "pickable",
		"base" : {
			"sounds" : {
				"visit" : ["CHEST"],
				"removal" : [ "PICKUP01", "PICKUP02", "PICKUP03", "PICKUP04", "PICKUP05", "PICKUP06", "PICKUP07" ]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 1500,
				"rmg" : {
					"value"		: 1500,
					"rarity"	: 1000
				}
			}
		}
	},

	"arena" : {
		"index" : 4,
		"handler": "oncePerHero",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPAREN"],
				"visit" : ["NOMAD"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 3000,
				"rmg" : {
					"value"		: 3000,
					"rarity"	: 50
				}
			}
		}
	},
	"marlettoTower" : {
		"index" : 23,
		"handler": "oncePerHero",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPSWAR"],
				"visit" : ["NOMAD"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 1500,
				"rmg" : {
					"value"		: 1500,
					"rarity"	: 100
				}
			}
		}
	},
	"gardenOfRevelation" : {
		"index" : 32,
		"handler": "oncePerHero",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPGARD"],
				"visit" : ["GETPROTECTION"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 1500,
				"rmg" : {
					"value"		: 1500,
					"rarity"	: 100
				}
			}
		}
	},
	"libraryOfEnlightenment" : {
		"index" : 41,
		"handler": "oncePerHero",
		"base" : {
			"sounds" : {
				"visit" : ["GAZEBO"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 12000,
				"rmg" : {
					"value"		: 12000,
					"rarity"	: 20
				}
			}
		}
	},
	"mercenaryCamp" : {
		"index" : 51,
		"handler": "oncePerHero",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPMERC"],
				"visit" : ["NOMAD"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 1500,
				"rmg" : {
					"value"		: 1500,
					"rarity"	: 100
				}
			}
		}
	},
	"starAxis" :{
		"index" : 61,
		"handler": "oncePerHero",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPSTAR"],
				"visit" : ["GAZEBO"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 1500,
				"rmg" : {
					"value"		: 1500,
					"rarity"	: 100
				}
			}
		}
	},
	"treeOfKnowledge" : {
		"index" : 102,
		"handler": "oncePerHero",
		"base" : {
			"sounds" : {
				"visit" : ["GAZEBO"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 2500,
				"rmg" : {
					"mapLimit"	: 100,
					"value"		: 2500,
					"rarity"	: 50
				}
			}
		}
	},
	"schoolOfMagic" : {
		"index" : 47,
		"handler": "oncePerHero",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPMAGI"],
				"visit" : ["FAERIE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 1000,
				"rmg" : {
					"value"		: 1000,
					"rarity"	: 50
				}
			}
		}
	},
	"schoolOfWar" : {
		"index" : 107,
		"handler": "oncePerHero",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPSWAR"],
				"visit" : ["MILITARY"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 1000,
				"rmg" : {
					"value"		: 1000,
					"rarity"	: 50
				}
			}
		}
	},
	"learningStone" : {
		"index" : 100,
		"handler": "oncePerHero",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPLEAR"],
				"visit" : ["GAZEBO"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 1500,
				"rmg" : {
					"value"		: 1500,
					"rarity"	: 200
				}
			},
			"objectWoG" : { "index" : 1 }
		}
	},

	"buoy" : {
		"index" : 11,
		"handler": "bonusingObject",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPBUOY"],
				"visit" : ["MORALE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 100,
				"rmg" : {
					"value"		: 100,
					"rarity"	: 100
				}
			}
		}
	},
	"swanPond" : {
		"index" : 14,
		"handler": "bonusingObject",
		"base" : {
			"sounds" : {
				"visit" : ["LUCK"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 100,
				"rmg" : {
					"zoneLimit"	: 1,
					"value"		: 100,
					"rarity"	: 100
				}
			}
		}
	},
	"faerieRing" : {
		"index" : 28,
		"handler": "bonusingObject",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPFAER"],
				"visit" : ["LUCK"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 100,
				"rmg" : {
					"zoneLimit"	: 1,
					"value"		: 100,
					"rarity"	: 100
				}
			}
		}
	},
	"fountainOfFortune" : {
		"index" : 30,
		"handler": "bonusingObject",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPFOUN"],
				"visit" : ["LUCK"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 100,
				"rmg" : {
					"zoneLimit"	: 1,
					"value"		: 100,
					"rarity"	: 100
				}
			}
		}
	},
	"fountainOfYouth" : {
		"index" : 31,
		"handler": "bonusingObject",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPFALL"],
				"visit" : ["MORALE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 100,
				"rmg" : {
					"zoneLimit"	: 1,
					"value"		: 100,
					"rarity"	: 50
				}
			}
		}
	},
	"idolOfFortune" : {
		"index" : 38,
		"handler": "bonusingObject",
		"base" : {
			"sounds" : {
				"visit" : ["LUCK"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 100,
				"rmg" : {
					"zoneLimit"	: 1,
					"value"		: 100,
					"rarity"	: 100
				}
			},
			"object1" : {
				"index" : 1
			}
		}
	},
	"mermaids" : {
		"index" : 52,
		"handler": "bonusingObject",
		"base" : {
			"sounds" : {
				"visit" : ["LUCK"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 100,
				"rmg" : {
					"value"		: 100,
					"rarity"	: 20
				}
			}
		}
	},
	"oasis" : {
		"index" : 56,
		"handler": "bonusingObject",
		"base" : {
			"sounds" : {
				"visit" : ["MORALE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 100,
				"rmg" : {
					"zoneLimit"	: 1,
					"value"		: 100,
					"rarity"	: 50
				}
			}
		}
	},
	"stables" : {
		"index" : 94,
		"handler": "bonusingObject",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPHORS"],
				"visit" : ["STORE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 200,
				"rmg" : {
					"zoneLimit"	: 1,
					"value"		: 200,
					"rarity"	: 40
				}
			}
		}
	},
	"temple" : {
		"index" : 96,
		"handler": "bonusingObject",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPSANC"],
				"visit" : ["TEMPLE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 100,
				"rmg" : {
					"zoneLimit"	: 1,
					"value"		: 100,
					"rarity"	: 100
				}
			}
		}
	},
	"rallyFlag" : {
		"index" : 64,
		"handler": "bonusingObject",
		"base" : {
			"sounds" : {
				"ambient" : ["LOOPFLAG"],
				"visit" : ["MORALE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 100,
				"rmg" : {
					"zoneLimit"	: 1,
					"value"		: 100,
					"rarity"	: 100
				}
			}
		}
	},
	"wateringHole" : {
		"index" : 110,
		"handler": "bonusingObject",
		"base" : {
			"sounds" : {
				"visit" : ["MORALE"]
			}
		},
		"types" : {
			"object" : {
				"index" : 0,
				"aiValue" : 500,
				"rmg" : {
					"zoneLimit"	: 1,
					"value"		: 500,
					"rarity"	: 50
				}
			}
		}
	}
}
',
        "skills" => '{
	"pathfinding" : {
		"index" : 0,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.pathfinding",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 25 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 50 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 75 }
			}
		}
	},
	"archery" : {
		"index" : 1,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.archery",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 10 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 25 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 50 }
			}
		}
	},
	"logistics" : {
		"index" : 2,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.logistics",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 10 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 20 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 30 }
			}
		}
	},
	"scouting" : {
		"index" : 3,
		"base" : {
			"effects" : {
				"main" : {
					"type" : "SIGHT_RADIOUS",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 1 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 2 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 3 }
			}
		}
	},
	"diplomacy" : {
		"index" : 4,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.diplomacy",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				},
				"surr" : {
					"type" : "SURRENDER_DISCOUNT",
					"val" : 20,
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 1 },
				"surr" : { "val" : 20 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val": 2 },
				"surr" : { "val" : 40 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val": 3 },
				"surr" : { "val" : 60 }
			}
		}
	},
	"navigation" : {
		"index" : 5,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.navigation",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 50 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 100 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 150 }
			}
		}
	},
	"leadership" : {
		"index" : 6,
		"base" : {
			"effects" : {
				"main" : {
					"type" : "MORALE",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 1 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 2 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 3 }
			}
		}
	},
	"wisdom" : {
		"index" : 7,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.wisdom",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 1 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 2 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 3 }
			}
		}
	},
	"mysticism" : {
		"index" : 8,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.mysticism",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 1 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 2 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 3 }
			}
		}
	},
	"luck" : {
		"index" : 9,
		"base" : {
			"effects" : {
				"main" : {
					"type" : "LUCK",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 1 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 2 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 3 }
			}
		}
	},
	"ballistics" : {
		"index" : 10,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.ballistics",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				},
				"ctrl" : {
					"subtype" : "creature.catapult",
					"type" : "MANUAL_CONTROL",
					"val" : 100,
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 1 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 2 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 3 }
			}
		}
	},
	"eagleEye" : {
		"index" : 11,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.eagleEye",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				},
				"val2" : {
					"subtype" : "skill.eagleEye",
					"type" : "SECONDARY_SKILL_VAL2",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 40 },
				"val2" : { "val" : 2 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 50 },
				"val2" : { "val" : 3 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 60 },
				"val2" : { "val" : 4 }
			}
		}
	},
	"necromancy" : {
		"index" : 12,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.necromancy",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 10 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 20 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 30 }
			}
		}
	},
	"estates" : {
		"index" : 13,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.estates",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"description" : "{Basic Estates}\\n\\nYour hero contributes 125 gold per day to your cause.",
			"effects" : {
				"main" : { "val" : 125 }
			}
		},
		"advanced" : {
			"description" : "{Advanced Estates}\\n\\nYour hero contributes 250 gold per day to your cause.",
			"effects" : {
				"main" : { "val" : 250 }
			}
		},
		"expert" : {
			"description" : "{Expert Estates}\\n\\nYour hero contributes 500 gold per day to your cause.",
			"effects" : {
				"main" : { "val" : 500 }
			}
		}
	},
	"fireMagic" : {
		"index" : 14,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.fireMagic",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 1 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 2 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 3 }
			}
		}
	},
	"airMagic" : {
		"index" : 15,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.airMagic",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 1 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 2 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 3 }
			}
		}
	},
	"waterMagic" : {
		"index" : 16,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.waterMagic",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 1 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 2 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 3 }
			}
		}
	},
	"earthMagic" : {
		"index" : 17,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.earthMagic",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 1 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 2 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 3 }
			}
		}
	},
	"scholar" : {
		"index" : 18,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.scholar",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 2 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 3 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 4 }
			}
		}
	},
	"tactics" : {
		"index" : 19,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.tactics",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 2 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 4 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 6 }
			}
		}
	},
	"artillery" : {
		"index" : 20,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.artillery",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				},
				"val2" : {
					"subtype" : "skill.artillery",
					"type" : "SECONDARY_SKILL_VAL2",
					"valueType" : "BASE_NUMBER"
				},
				"ctrl" : {
					"subtype" : "creature.ballista",
					"type" : "MANUAL_CONTROL",
					"val" : 100,
					"valueType" : "BASE_NUMBER"
				},
				"ctrl2" : {
					"subtype" : "creature.arrowTower",
					"type" : "MANUAL_CONTROL",
					"val" : 100,
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 50 },
				"val2" : { "val" : 0 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 75 },
				"val2" : { "val" : 1 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 100 },
				"val2" : { "val" : 1 }
			}
		}
	},
	"learning" : {
		"index" : 21,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.learning",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 5 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 10 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 15 }
			}
		}
	},
	"offence" : {
		"index" : 22,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.offence",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 10 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 20 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 30 }
			}
		}
	},
	"armorer" : {
		"index" : 23,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.armorer",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 5 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 10 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 15 }
			}
		}
	},
	"intelligence" : {
		"index" : 24,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.intelligence",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 25 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 50 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 100 }
			}
		}
	},
	"sorcery" : {
		"index" : 25,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.sorcery",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 5 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 10 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 15 }
			}
		}
	},
	"resistance" : {
		"index" : 26,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.resistance",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 5 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 10 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 20 }
			}
		}
	},
	"firstAid" : {
		"index" : 27,
		"base" : {
			"effects" : {
				"main" : {
					"subtype" : "skill.firstAid",
					"type" : "SECONDARY_SKILL_PREMY",
					"valueType" : "BASE_NUMBER"
				},
				"ctrl" : {
					"subtype" : "creature.firstAidTent",
					"type" : "MANUAL_CONTROL",
					"val" : 100,
					"valueType" : "BASE_NUMBER"
				}
			}
		},
		"basic" : {
			"effects" : {
				"main" : { "val" : 50 }
			}
		},
		"advanced" : {
			"effects" : {
				"main" : { "val" : 75 }
			}
		},
		"expert" : {
			"effects" : {
				"main" : { "val" : 100 }
			}
		}
	}
}
',
        "spells" => '{
	"stoneGaze" : {
		"index" : 70,
		"targetType": "NO_TARGET",
		"animation":{

		},
		"sounds": {
			"cast": "PARALYZE"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"notActive" : {
						"val" : 0,
						"type" : "NOT_ACTIVE",
						"subtype" : "spell.stoneGaze",
						"duration" : [
							"UNTIL_BEING_ATTACKED",
							"N_TURNS"
						]
					},
					"noRetaliation" : {
						"val" : 0,
						"type" : "NO_RETALIATION",
						"duration" : [
							"UNTIL_BEING_ATTACKED",
							"N_TURNS"
						]
					},
					"defenceBoost" : {
						"type" : "PRIMARY_SKILL",
						"subtype" : "primSkill.defence",
						"val" : 50,
						"valueType" : "PERCENT_TO_ALL",
						"duration" : [
						    "UNTIL_BEING_ATTACKED",
						    "N_TURNS"
						]
					}
				}
			}
		},
		"flags" : {
			"indifferent": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.SIEGE_WEAPON" : "absolute"
			}
		}
	},
	"poison" : {
		"index" : 71,
		"targetType": "NO_TARGET",

		"animation":{
			"affect":["SP11_"]
		},
		"sounds": {
			"cast": "POISON"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"poison" : {
						"val" : 30,
						"type" : "POISON",
						"valueType" : "INDEPENDENT_MAX",
						"duration" : "N_TURNS"
					},
					"stackHealth" : {
						"val" : -10,
						"type" : "STACK_HEALTH",
						"valueType" : "PERCENT_TO_ALL",
						"duration" : "N_TURNS"
					}
				}
			}
		},
		"flags" : {
			"negative": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.NON_LIVING" : "normal",
				"bonus.SIEGE_WEAPON" : "absolute",
				"bonus.UNDEAD" : "normal"
			}
		}
	},
	"bind" : {
		"index" : 72,
		"targetType": "NO_TARGET",

		"animation":{
			"affect":["SP02_"]
		},
		"sounds": {
			"cast": "BIND"
		},
		"levels" : {
			"base":{
				"range" : "0",

				"effects" : {
					"bindEffect" : {
						"val" : 0,
						"type" : "BIND_EFFECT",
						"duration" : "PERMANENT",
						"addInfo" : -1
					}
				}
			}
		},
		"flags" : {
			"indifferent": true
		}
	},
	"disease" : {
		"index" : 73,
		"targetType": "NO_TARGET",

		"animation":{
			"affect":["SP05_"]
		},
		"sounds": {
			"cast": "DISEASE"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"attack" : {
						"val" : -2,
						"type" : "PRIMARY_SKILL",
						"subtype" : "primSkill.attack",
						"duration" : "N_TURNS"
					},
					"defence" : {
						"val" : -2,
						"type" : "PRIMARY_SKILL",
						"subtype" : "primSkill.defence",
						"duration" : "N_TURNS"
					}
				}
			}
		},
		"flags" : {
			"negative": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.NON_LIVING" : "normal",
				"bonus.SIEGE_WEAPON" : "absolute",
				"bonus.UNDEAD" : "normal"
			}
		}
	},
	"paralyze" : {
		"index" : 74,
		"targetType": "NO_TARGET",

		"animation":{

		},
		"sounds": {
			"cast": "PARALYZE"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"notActive" : {
						"val" : 0,
						"type" : "NOT_ACTIVE",
						"subtype" : "spell.paralyze",
						"duration" : [
							"UNTIL_BEING_ATTACKED",
							"N_TURNS"
						]
					},
					"noRetaliation" : {
						"val" : 0,
						"type" : "NO_RETALIATION",
						"duration" : [
							"UNTIL_BEING_ATTACKED",
							"N_TURNS"
						]
					}
				}
			}
		},
		"flags" : {
			"negative": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.SIEGE_WEAPON" : "absolute"
			}
		}
	},
	"age" : {
		"index" : 75,
		"targetType": "NO_TARGET",

		"animation":{
			"affect":["SP01_"]
		},
		"sounds": {
			"cast": "AGE"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"stackHealth" : {
						"val" : -50,
						"type" : "STACK_HEALTH",
						"valueType" : "PERCENT_TO_ALL",
						"duration" : "N_TURNS"
					}
				}
			}
		},
		"flags" : {
			"negative": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.NON_LIVING" : "normal",
				"bonus.SIEGE_WEAPON" : "absolute",
				"bonus.UNDEAD" : "normal"
			}
		}
	},
	"deathCloud" : {
		"index" : 76,
		"targetType": "NO_TARGET",

		"animation":{
			"hit":["SP04_"]
		},
		"sounds": {
			"cast": "DEATHCLD"
		},
		"levels" : {
			"base":{
				"range" : "0-1",
				"battleEffects":{
					"damage":{
						"type":"core:damage"
					}
				}
			}
		},
		"flags" : {
			"indifferent": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.NON_LIVING" : "normal",
				"bonus.SIEGE_WEAPON" : "absolute",
				"bonus.UNDEAD" : "normal"
			}
		}
	},
	"thunderbolt" : {
		"index" : 77,
		"targetType": "NO_TARGET",

		"animation":{
			"affect":[{"defName":"C03SPA0", "verticalPosition":"bottom"}, "C11SPA1"]
		},
		"sounds": {
			"cast": "LIGHTBLT"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"battleEffects":{
					"damage":{
						"type":"core:damage"
					}
				}
			}
		},
		"flags" : {
			"damage": true,
			"negative": true
		}
	},
	"dispelHelpful" : {
		"index" : 78,
		"targetType": "NO_TARGET",

		"animation":{
			"affect":["C05SPW"]
		},
		"sounds": {
			"cast": "DISPELL"
		},
		"levels" : {
			"base":{
				"battleEffects":{
					"dispel":{
						"type":"core:dispel",
						"ignoreImmunity" : true,
						"dispelNegative":false,
						"dispelNeutral":false,
						"dispelPositive":true
					}
				},
				"range" : "0"
			}
		},

		"flags" : {
			"negative": true
		}
	},
	"deathStare" : {
		"index" : 79,
		"targetType": "NO_TARGET",

		"animation":{
			"affect":["C07SPE0"]
		},
		"sounds": {
			"cast": "DEATHSTR"
		},
		"levels" : {
			"base":{
				"battleEffects":{
					"destruction":{
						"type":"core:damage",
						"killByCount": true
					}
				},
				"range" : "0"
			}
		},
		"flags" : {
			"indifferent": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.NON_LIVING" : "absolute",
				"bonus.SIEGE_WEAPON" : "absolute",
				"bonus.UNDEAD" : "absolute"
			}
		}
	},
	"acidBreath" : {
		"index" : 80,
		"targetType": "NO_TARGET",

		"levels" : {
			"base":{
				"battleEffects":{
					"timed":{
						"type":"core:timed",
						"cumulative":true,
						"ignoreImmunity" : true,
						"bonus" :{
							"primarySkill" : {
								"val" : -3,
								"type" : "PRIMARY_SKILL",
								"subtype" : "primSkill.defence",
								"duration" : "PERMANENT",
								"valueType" : "ADDITIVE_VALUE"
							}
						}
					}
				},
				"range" : "0",
				"targetModifier":{"smart":true}
			}
		},
		"flags" : {
			"indifferent": true
		}
	},
	"acidBreathDamage" : {
		"index" : 81,
		"targetType": "NO_TARGET",

		"animation":{
			"affect":["C17SPW0"]
		},
		"sounds": {
			"cast": "ACID"
		},
		"levels" : {
			"base":{
				"battleEffects":{
					"damage":{
						"type":"core:damage",
						"ignoreImmunity" : true
					}
				},
				"range" : "0"
			}
		},
		"flags" : {
			"damage": true,
			"indifferent": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.DIRECT_DAMAGE_IMMUNITY" : "normal"
			}
		}
	},
	"summonBoat" : {
		"index" : 0,

		"targetType": "NO_TARGET",
		"sounds": {
			"cast": "SUMMBOAT"
		},
		"levels" :{
			"base":{
				"range" : "X"
			}
		},
		"flags" : {
			"indifferent": true
		}
	},
	"scuttleBoat" : {
		"index" : 1,
		"targetType": "LOCATION",

		"sounds": {
			"cast": "SCUTBOAT"
		},
		"levels" : {
			"base":{
				"range" : "X"
			}
		},
		"flags" : {
			"indifferent": true
		}
	},
	"visions" : {
		"index" : 2,
		"targetType": "NO_TARGET",

		"sounds": {
			"cast": "VISIONS"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"effects" : {
					"visionsMonsters" : {
						"type" : "VISIONS",
						"subtype" : 0,
						"duration" : "ONE_DAY",
						"val" : 1,
						"valueType" : "INDEPENDENT_MAX"
					}
				}
			},
			"advanced":{
				"effects" : {
					"visionsMonsters" : {
						"val" : 2
					},
					"visionsHeroes" :{
						"type" : "VISIONS",
						"subtype" : 1,
						"duration" : "ONE_DAY",
						"val" : 2,
						"valueType" : "INDEPENDENT_MAX"
					}

				}
			},
			"expert":{
				"effects" : {
					"visionsMonsters" : {
						"val" : 3
					},
					"visionsHeroes" :{
						"type" : "VISIONS",
						"subtype" : 1,
						"duration" : "ONE_DAY",
						"val" : 3,
						"valueType" : "INDEPENDENT_MAX"
					},
					"visionsTowns" :{
						"type" : "VISIONS",
						"subtype" : 2,
						"duration" : "ONE_DAY",
						"val" : 3,
						"valueType" : "INDEPENDENT_MAX"
					}
				}
			}
		},
		"flags" : {
			"indifferent": true
		}
	},
	"viewEarth" : {
		"index" : 3,
		"targetType": "NO_TARGET",

		"sounds": {
			"cast": "VIEW"
		},
		"levels" : {
			"base":{
				"range" : "X"
			}
		},
		"flags" : {
			"indifferent": true
		}
	},
	"disguise" : {
		"index" : 4,
		"targetType": "NO_TARGET",

		"sounds": {
			"cast": "DISGUISE"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"effects" : {
					"stealth" : {
						"type" : "DISGUISED",
						"subtype" : 0,
						"duration" : "ONE_DAY",
						"val" : 1,
						"valueType" : "INDEPENDENT_MAX"
					}
				}
			},
			"advanced":{
				"effects" : {
					"stealth" : {
						"val" : 2
					}
				}
			},
			"expert":{
				"effects" : {
					"stealth" : {
						"val" : 3
					}
				}
			}
		},
		"flags" : {
			"indifferent": true
		}
	},
	"viewAir" : {
		"index" : 5,
		"targetType": "NO_TARGET",

		"sounds": {
			"cast": "VIEW"
		},
		"levels" : {
			"base":{
				"range" : "X"
			}
		},
		"flags" : {
			"indifferent": true
		}
	},
	"fly" : {
		"index" : 6,
		"targetType": "NO_TARGET",

		"sounds": {
			"cast": "FLYSPELL"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"effects" : {
					"fly" : {
						"type" : "FLYING_MOVEMENT",
						"duration" : "ONE_DAY",
						"val" : 40,
						"valueType" : "INDEPENDENT_MIN"
					}
				}
			},
			"advanced":{
				"effects" : {
					"fly" : {
						"val" : 20
					}
				}
			},
			"expert":{
				"effects" : {
					"fly" : {
						"val" : 0
					}
				}
			}
		},
		"flags" : {
			"indifferent": true
		}
	},
	"waterWalk" : {
		"index" : 7,
		"targetType": "NO_TARGET",

		"sounds": {
			"cast": "WATRWALK"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"effects" : {
					"waterWalk" : {
						"type" : "WATER_WALKING",
						"duration" : "ONE_DAY",
						"val" : 40,
						"valueType" : "INDEPENDENT_MIN"
					}
				}
			},
			"advanced":{
				"effects" : {
					"waterWalk" : {
						"val" : 20
					}
				}
			},
			"expert":{
				"effects" : {
					"waterWalk" : {
						"val" : 0
					}
				}
			}
		},
		"flags" : {
			"indifferent": true
		}
	},
	"dimensionDoor" : {
		"index" : 8,
		"targetType": "LOCATION",

		"sounds": {
			"cast": "TELPTOUT"
		},
		"levels" : {
			"base":{
				"range" : "X"
			}
		},
		"flags" : {
			"indifferent": true
		}
	},
	"townPortal" : {
		"index" : 9,
		"targetType": "NO_TARGET",

		"sounds": {
			"cast": "TELPTOUT"
		},
		"levels" : {
			"base":{
				"range" : "X"
			}
		},
		"flags" : {
			"indifferent": true
		}
	},
	"magicArrow" : {
		"index" : 15,
		"targetType": "CREATURE",

		"animation":{
			"projectile": [
				{"minimumAngle": 0 ,"defName":"C20SPX4"},
				{"minimumAngle": 0.60 ,"defName":"C20SPX3"},
				{"minimumAngle": 0.90 ,"defName":"C20SPX2"},
				{"minimumAngle": 1.20 ,"defName":"C20SPX1"},
				{"minimumAngle": 1.50 ,"defName":"C20SPX0"}
			],
			"hit":["C20SPX"]
		},
		"sounds": {
			"cast": "MAGICBLT"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"battleEffects" : {
					"directDamage" : {"type":"core:damage"}
				},
				"targetModifier":{"smart":true}
			}
		},
		"flags" : {
			"damage": true,
			"negative": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.DIRECT_DAMAGE_IMMUNITY" : "normal"
			}
		}
	},
	"iceBolt" : {
		"index" : 16,
		"targetType": "CREATURE",

		"animation":{
			"projectile": [
				{"minimumAngle": 0 ,"defName":"C08SPW4"},
				{"minimumAngle": 0.60 ,"defName":"C08SPW3"},
				{"minimumAngle": 0.90 ,"defName":"C08SPW2"},
				{"minimumAngle": 1.20 ,"defName":"C08SPW1"},
				{"minimumAngle": 1.50 ,"defName":"C08SPW0"}
			],
			"hit":["C08SPW5"]
		},
		"sounds": {
			"cast": "ICERAY"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"battleEffects" : {
					"directDamage" : {"type":"core:damage"}
				},
				"targetModifier":{"smart":true}
			}
		},
		"flags" : {
			"damage": true,
			"negative": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.DIRECT_DAMAGE_IMMUNITY" : "normal"
			}
		}
	},
	"lightningBolt" : {
		"index" : 17,
		"targetType": "CREATURE",

		"animation":{
			"affect":[{"defName":"C03SPA0", "verticalPosition":"bottom"}, "C11SPA1"]
		},
		"sounds": {
			"cast": "LIGHTBLT"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"battleEffects" : {
					"directDamage" : {"type":"core:damage"}
				},
				"targetModifier":{"smart":true}
			}
		},
		"flags" : {
			"damage": true,
			"negative": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.DIRECT_DAMAGE_IMMUNITY" : "normal"
			}
		}
	},
	"implosion" : {
		"index" : 18,
		"targetType": "CREATURE",

		"animation":{
			"affect":["C05SPE0"]
		},
		"sounds": {
			"cast": "DECAY"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"battleEffects" : {
					"directDamage" : {"type":"core:damage"}
				},
				"targetModifier":{"smart":true}
			}
		},
		"flags" : {
			"damage": true,
			"negative": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.DIRECT_DAMAGE_IMMUNITY" : "normal",
				"bonus.SIEGE_WEAPON" : "absolute"
			}
		}
	},
	"chainLightning" : {
		"index" : 19,
		"targetType": "CREATURE",

		"animation":{
			"affect":[{"defName":"C03SPA0", "verticalPosition":"bottom"}, "C11SPA1"]
		},
		"sounds": {
			"cast": "CHAINLTE"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"battleEffects" : {
					"directDamage" : {
						"type" : "core:damage",
						"chainFactor" : 0.5,
						"chainLength" : 4
					}
				},
				"targetModifier":{"smart":true}
			},
			"advanced" : {
				"battleEffects" : {
					"directDamage" : {
						"chainLength" : 5
					}
				}
			},
			"expert" : {
				"battleEffects" : {
					"directDamage" : {
						"chainLength" : 5
					}
				}
			}
		},
		"flags" : {
			"damage": true,
			"negative": true
		}
	},
	"frostRing" : {
		"index" : 20,
		"targetType": "LOCATION",

		"animation":{
			"hit":["C07SPW"]
		},
		"sounds": {
			"cast": "FROSTING"
		},
		"levels" : {
			"base":{
				"range" : "1",
				"battleEffects" : {
					"directDamage" : {"type":"core:damage"}
				},
				"targetModifier":{"smart":false}
			}
		},
		"flags" : {
			"damage": true,
			"negative": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.DIRECT_DAMAGE_IMMUNITY" : "normal"
			}
		}
	},
	"fireball" : {
		"index" : 21,
		"targetType": "LOCATION",

		"animation":{
			"hit":["C13SPF"]
		},
		"sounds": {
			"cast": "SPONTCOMB"
		},
		"levels" : {
			"base":{
				"range" : "0,1",
				"battleEffects" : {
					"directDamage" : {"type":"core:damage"}
				},
				"targetModifier":{"smart":false}
			}
		},
		"flags" : {
			"damage": true,
			"negative": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.DIRECT_DAMAGE_IMMUNITY" : "normal"
			}
		}
	},
	"inferno" : {
		"index" : 22,
		"targetType": "LOCATION",

		"animation":{
			"hit":["C04SPF0"]
		},
		"sounds": {
			"cast": "FIREBLST"
		},
		"levels" : {
			"base":{
				"range" : "0-2",
				"battleEffects" : {
					"directDamage" : {"type":"core:damage"}
				},
				"targetModifier":{"smart":false}
			}
		},
		"flags" : {
			"damage": true,
			"negative": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.DIRECT_DAMAGE_IMMUNITY" : "normal"
			}
		}
	},
	"meteorShower" : {
		"index" : 23,
		"targetType": "LOCATION",

		"animation":{
			"hit":["C08SPE0"]
		},
		"sounds": {
			"cast": "METEOR"
		},
		"levels" : {
			"base":{
				"range" : "0,1",
				"battleEffects" : {
					"directDamage" : {"type":"core:damage"}
				},
				"targetModifier":{"smart":false}
			}
		},
		"flags" : {
			"damage": true,
			"negative": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.DIRECT_DAMAGE_IMMUNITY" : "normal"
			}
		}
	},
	"deathRipple" : {
		"index" : 24,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C04SPE0"]
		},
		"sounds": {
			"cast": "DEATHRIP"
		},
		"levels" : {
			"base":{
				"range" : "X",
				"battleEffects" : {
					"directDamage" : {"type":"core:damage"}
				},
				"targetModifier":{"smart":false}
			}
		},
		"flags" : {
			"damage": true,
			"negative": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.DIRECT_DAMAGE_IMMUNITY" : "normal",
				"bonus.SIEGE_WEAPON" : "absolute",
				"bonus.UNDEAD" : "absolute"
			}
		}
	},
	"destroyUndead" : {
		"index" : 25,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C14SPA0"]
		},
		"sounds": {
			"cast": "SACBRETH"
		},
		"levels" : {
			"base":{
				"range" : "X",
				"battleEffects" : {
					"directDamage" : {"type":"core:damage"}
				},
				"targetModifier":{"smart":false}
			}
		},
		"flags" : {
			"damage": true,
			"negative": true
		},
		"targetCondition" : {
			"allOf" : {
				"bonus.UNDEAD" : "absolute"
			},
			"noneOf" : {
				"bonus.DIRECT_DAMAGE_IMMUNITY" : "normal"
			}
		}
	},
	"armageddon" : {
		"index" : 26,
		"targetType" : "CREATURE",

		"animation":{
			"hit":["C06SPF0"]
		},
		"sounds": {
			"cast": "ARMGEDN"
		},
		"levels" : {
			"base":{
				"range" : "X",
				"battleEffects" : {
					"directDamage" : {"type":"core:damage"}
				},
				"targetModifier":{"smart":false}
			}
		},
		"flags" : {
			"damage": true,
			"negative": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.DIRECT_DAMAGE_IMMUNITY" : "normal"
			}
		}
	},
	"titanBolt" : {
		"index" : 57,
		"targetType" : "CREATURE",

		"animation":{
			"hit":[{"defName":"C03SPA0", "verticalPosition":"bottom"}, "C11SPA1"]
		},
		"sounds": {
			"cast": "LIGHTBLT"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"battleEffects" : {
					"directDamage" : {"type":"core:damage"}
				},
				"targetModifier":{"smart":true}
			}
		},
		"flags" : {
			"damage": true,
			"negative": true,
			"special": true
		}
	},
	"quicksand" : {
		"index" : 10,
		"targetType" : "NO_TARGET",

		"sounds": {
			"cast": "QUIKSAND"
		},
		"levels" : {
			"base":{
				"range" : "X",
				"battleEffects" : {
					"obstacle" : {
						"type":"core:obstacle",
						"hidden" : true,
						"passable" : true,
						"trap" : true,
						"trigger" : false,
						"patchCount" : 4,
						"turnsRemaining" : -1,
						"attacker" :{
							"animation" : "C17SPE1",
							"appearAnimation" : "C17SPE0",
							"offsetY" : -42
						},
						"defender" :{
							"animation" : "C17SPE1",
							"appearAnimation" : "C17SPE0",
							"offsetY" : -42
						}
					}
				}
			},
			"advanced":{
				"battleEffects":{
					"obstacle":{
						"patchCount" : 6
					}
				}
			},
			"expert":{
				"battleEffects":{
					"obstacle":{
						"patchCount" : 8
					}
				}
			}
		},
		"flags" : {
			"indifferent": true
		}
	},
	"landMine" : {
		"index" : 11,
		"targetType" : "NO_TARGET",

		"sounds": {
			"cast": ""
		},
		"levels" : {
			"base":{
				"range" : "X",
				"battleEffects" : {
					"obstacle" : {
						"type":"core:obstacle",
						"hidden" : true,
						"passable" : true,
						"trap" : false,
						"trigger" : true,
						"removeOnTrigger" : true,
						"patchCount" : 4,
						"turnsRemaining" : -1,
						"attacker" :{
							"animation" : "C09SPF1",
							"appearAnimation" : "C09SPF0"
						},
						"defender" :{
							"animation" : "C09SPF1",
							"appearAnimation" : "C09SPF0"
						}
					},
					"damage":{
						"type":"core:damage",
						"optional":false,
						"indirect":true,
						"customEffectId" : 82
					}
				}
			},
			"advanced":{
				"battleEffects":{
					"obstacle":{
						"patchCount" : 6
					}
				}
			},
			"expert":{
				"battleEffects":{
					"obstacle":{
						"patchCount" : 8
					}
				}
			}
		},
		"flags" : {
			"damage": true,
			"indifferent": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.DIRECT_DAMAGE_IMMUNITY" : "normal"
			}
		}
	},
	"forceField" : {
		"index" : 12,
		"targetType" : "LOCATION",

		"sounds": {
			"cast": "FORCEFLD"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{
					"clearAffected": true
				},
				"battleEffects":{
					"obstacle":{
						"type":"core:obstacle",
						"hidden" : false,
						"passable" : false,
						"trap" : false,
						"trigger" : false,
						"patchCount" : 1,
						"turnsRemaining" : 2,
						"attacker" :{
							"range" : [[""]],
							"shape" : [[""], ["TR"]],
							"animation" : "C15SPE1",
							"appearAnimation" : "C15SPE0"
						},
						"defender" :{
							"range" : [[""]],
							"shape" : [[""], ["TL"]],
							"animation" : "C15SPE4",
							"appearAnimation" : "C15SPE0"
						}
					}
				}
			},
			"advanced":{
				"battleEffects":{
					"obstacle":{
						"attacker" :{
							"shape" : [[""], ["TR"], ["TR", "TL"]],
							"animation" : "C15SPE10",
							"appearAnimation" : "C15SPE9"
						},
						"defender" :{
							"shape" : [[""], ["TL"], ["TL", "TR"]],
							"animation" : "C15SPE7",
							"appearAnimation" : "C15SPE6"
						}
					}
				}
			},
			"expert":{
				"battleEffects":{
					"obstacle":{
						"attacker" :{
							"shape" : [[""], ["TR"], ["TR", "TL"]],
							"animation" : "C15SPE10",
							"appearAnimation" : "C15SPE9"
						},
						"defender" :{
							"shape" : [[""], ["TL"], ["TL", "TR"]],
							"animation" : "C15SPE7",
							"appearAnimation" : "C15SPE6"
						}
					}
				}
			}
		},
		"flags" : {
			"indifferent": true
		}
	},
	"fireWall" : {
		"index" : 13,
		"targetType" : "LOCATION",

		"sounds": {
			"cast": "FIREWALL"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{
					"clearAffected": true
				},
				"battleEffects":{
					"obstacle":{
						"type":"core:obstacle",
						"hidden" : false,
						"passable" : true,
						"trap" : false,
						"trigger" : true,
						"patchCount" : 1,
						"turnsRemaining" : 2,
						"attacker" :{
							"shape" : [[""]],
							"range" : [[""], ["TR"]],
							"animation" : "C07SPF61",
							"appearAnimation" : "C07SPF60"
						},
						"defender" :{
							"shape" : [[""]],
							"range" : [[""], ["TL"]],
							"animation" : "C07SPF61",
							"appearAnimation" : "C07SPF60"
						}
					},
					"damage":{
						"type":"core:damage",
						"optional":false,
						"indirect":true
					}
				}
			},
			"advanced":{
				"battleEffects":{
					"obstacle":{
						"attacker" :{
							"range" : [[""], ["TR"], ["TR", "TL"]]
						},
						"defender" :{
							"range" : [[""], ["TL"], ["TL", "TR"]]
						}
					}
				}
			},
			"expert":{
				"battleEffects":{
					"obstacle":{
						"attacker" :{
							"range" : [[""], ["TR"], ["TR", "TL"]]
						},
						"defender" :{
							"range" : [[""], ["TL"], ["TL", "TR"]]
						}
					}
				}
			}
		},
		"flags" : {
			"damage": true,
			"indifferent": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.DIRECT_DAMAGE_IMMUNITY" : "normal"
			}
		}
	},
	"earthquake" : {
		"index" : 14,
		"targetType" : "NO_TARGET",

		"sounds": {
			"cast": "ERTHQUAK"
		},
		"levels" : {
			"base":{
				"targetModifier":{"smart":true},
				"battleEffects":{
					"catapult":{
						"type":"core:catapult",
						"targetsToAttack": 2
					}
				},
				"range" : "X"
			},
			"advanced":{
				"battleEffects":{
					"catapult":{
						"targetsToAttack": 3
					}
				}
			},
			"expert":{
				"battleEffects":{
					"catapult":{
						"targetsToAttack": 4
					}
				}
			}
		},
		"flags" : {
			"indifferent": true
		}
	},

	"dispel" : {
		"index" : 35,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C05SPW"]
		},
		"sounds": {
			"cast": "DISPELL"
		},
		"levels" : {
 			"base":{
				"targetModifier":{
					"smart":true
				},
				"battleEffects":{
					"dispel":{
						"type":"core:dispel",
						"optional":false,
						"ignoreImmunity" : true,
						"dispelNegative":true,
						"dispelNeutral":true,
						"dispelPositive":true
					}
				},
 				"range" : "0"
 			},
			"advanced":{
				"targetModifier":{"smart":false}
			},
 			"expert":{
				"targetModifier":{"smart":false},
				"battleEffects":{
					"dispel":{
						"optional":true
					},
					"removeObstacle":{
						"optional":true,
						"type":"core:removeObstacle",
						"removeAllSpells" : true
					}
				},
 				"range" : "X"
 			}
		},
		"flags" : {
			"positive": true
		}
	},
	"cure" : {
		"index" : 37,
		"targetType" : "CREATURE",
		"animation":{
			"affect":["C03SPW"]
		},

		"sounds": {
			"cast": "CURE"
		},
		"levels" : {
			"base":{
				"targetModifier":{"smart":true},
				"battleEffects":{
					"heal":{
						"type":"core:heal",
						"healLevel":"heal",
						"healPower":"permanent",
						"optional":true
					},
					"cure":{
						"type":"core:dispel",
						"optional":true,
						"dispelNegative":true,
						"dispelNeutral":false,
						"dispelPositive":false
					}
				},
				"range" : "0"
			},
			"expert":{
				"range" : "X"
			}
		},
		"flags" : {
			"positive": true
		}
	},
	"resurrection" : {
		"index" : 38,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C01SPE0"]
		},
		"sounds": {
			"cast": "RESURECT"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"battleEffects":{
					"heal":{
						"type":"core:heal",
						"healLevel":"resurrect",
						"healPower":"oneBattle",
						"minFullUnits" : 1
					},
					"cure":{
						"type":"core:dispel",
						"indirect": true,
						"optional":true,
						"dispelNegative":true,
						"dispelNeutral":false,
						"dispelPositive":false
					}
				},
				"targetModifier":{"smart":true}
			},
			"advanced":{
				"battleEffects":{
					"heal":{
						"healPower":"permanent"
					}
				}
			},
			"expert":{
				"battleEffects":{
					"heal":{
						"healPower":"permanent"
					}
				}
			}
		},
		"flags" : {
			"rising": true,
			"positive": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.NON_LIVING" : "absolute",
				"bonus.SIEGE_WEAPON" : "absolute",
				"bonus.UNDEAD" : "absolute"
			}
		}
	},
	"animateDead" : {
		"index" : 39,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C01SPE0"]
		},
		"sounds": {
			"cast": "ANIMDEAD"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"battleEffects":{
					"heal":{
						"type":"core:heal",
						"healLevel":"resurrect",
						"healPower":"permanent",
						"minFullUnits" : 1
					}
				},
				"targetModifier":{"smart":true}
			}
		},
		"flags" : {
			"rising": true,
			"positive": true
		},
		"targetCondition" : {
			"allOf" : {
				"bonus.UNDEAD" : "absolute"
			}
		}
	},
	"sacrifice" : {
		"index" : 40,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C01SPE0"]
		},
		"sounds": {
			"cast": "SACRIF1"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"battleEffects":{
					"sacrifice":{
						"type":"core:sacrifice",
						"healLevel":"resurrect",
						"healPower":"permanent",
						"minFullUnits" : 0
					}
				},
				"targetModifier":{"smart":true}
			}
		},
		"flags" : {
			"rising": true,
			"positive": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.NON_LIVING" : "absolute",
				"bonus.SIEGE_WEAPON" : "absolute",
				"bonus.UNDEAD" : "absolute"
			}
		}
	},
	"teleport" : {
		"index" : 63,
		"targetType" : "CREATURE",

		"sounds": {
			"cast": "TELPTOUT"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"battleEffects":{
					"teleport":{
						"type":"core:teleport"
					}
				},
				"targetModifier":{"smart":true}
			}
		},
		"flags" : {
			"positive": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.SIEGE_WEAPON" : "absolute"
			}
		}
	},
	"removeObstacle" : {
		"index" : 64,
		"targetType" : "OBSTACLE",
		"animation":{
			"cast":[2]
		},
		"sounds": {
			"cast": "REMOVEOB"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"battleEffects": {
					"removeObstacle" : {
						"optional":false,
						"type":"core:removeObstacle",
						"removeUsual" : true
					}
				}
			},
			"advanced" : {
				"battleEffects": {
					"removeObstacle" : {
						"removeSpells" : ["fireWall"]
					}
				}
			},
			"expert" : {
				"battleEffects": {
					"removeObstacle" : {
						"removeAllSpells" : true
					}
				}
			}
		},
		"flags" : {
			"indifferent": true
		}
	},
	"clone" : {
		"index" : 65,
		"targetType" : "CREATURE",
		"animation":{
			"cast":[2]
		},
		"sounds": {
			"cast": "CLONE"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"battleEffects":{
					"clone":{
						"maxTier":5,
						"type":"core:clone"
					}
				},
				"targetModifier":{"smart":true}
			},
			"advanced":{
				"battleEffects":{
					"clone":{
						"maxTier":6
					}
				}
			},
			"expert":{
				"battleEffects":{
					"clone":{
						"maxTier":1000
					}
				}
			}
		},
		"flags" : {
			"positive": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.SIEGE_WEAPON" : "absolute"
			}
		}
	},
	"fireElemental" : {
		"index" : 66,
		"targetType" : "NO_TARGET",
		"animation":{
			"cast":[2]
		},
		"sounds": {
			"cast": "SUMNELM"
		},
		"levels" : {
			"base":{
				"range" : "X",
				"battleEffects":{
					"summon":{
						"exclusive":true,
						"id":"fireElemental",
						"permanent":false,
						"type":"core:summon"
					}
				}
			}
		},
		"flags" : {
			"indifferent": true
		}
	},
	"earthElemental" : {
		"index" : 67,
		"targetType" : "NO_TARGET",
		"animation":{
			"cast":[2]
		},
		"sounds": {
			"cast": "SUMNELM"
		},
		"levels" : {
			"base":{
				"range" : "X",
				"battleEffects":{
					"summon":{
						"exclusive":true,
						"id":"earthElemental",
						"permanent":false,
						"type":"core:summon"
					}
				}
			}
		},
		"flags" : {
			"indifferent": true
		}
	},
	"waterElemental" : {
		"index" : 68,
		"targetType" : "NO_TARGET",
		"animation":{
			"cast":[2]
		},
		"sounds": {
			"cast": "SUMNELM"
		},
		"levels" : {
			"base":{
				"range" : "X",
				"battleEffects":{
					"summon":{
						"exclusive":true,
						"id":"waterElemental",
						"permanent":false,
						"type":"core:summon"
					}
				}
			}
		},
		"flags" : {
			"indifferent": true
		}
	},
	"airElemental" : {
		"index" : 69,
		"targetType" : "NO_TARGET",
		"animation":{
			"cast":[2]
		},
		"sounds": {
			"cast": "SUMNELM"
		},
		"levels" : {
			"base":{
				"range" : "X",
				"battleEffects":{
					"summon":{
						"exclusive":true,
						"id":"airElemental",
						"permanent":false,
						"type":"core:summon"
					}
				}
			}
		},
		"flags" : {
			"indifferent": true
		}
	},
	"shield" : {
		"index" : 27,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C13SPE0"]
		},
		"sounds": {
			"cast": "SHIELD"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},

				"effects" : {
					"generalDamageReduction" : {
						"type" : "GENERAL_DAMAGE_REDUCTION",
						"subtype" : 0,
						"duration" : "N_TURNS"
					}
				}
			},
			"expert":{
				"range" : "X"
			}
		},
		"flags" : {
			"positive": true
		}
	},
	"airShield" : {
		"index" : 28,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C01SPA0"]
		},
		"sounds": {
			"cast": "AIRSHELD"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},

				"effects" : {
					"generalDamageReduction" : {
						"type" : "GENERAL_DAMAGE_REDUCTION",
						"subtype" : 1,
						"duration" : "N_TURNS"
					}
				}
			},
			"expert":{
				"range" : "X"
			}
		},
		"flags" : {
			"positive": true
		}
	},
	"fireShield" : {
		"index" : 29,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C05SPF0"]
		},
		"sounds": {
			"cast": "FIRESHIE"
		},



		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"fireShield" : {
						"type" : "FIRE_SHIELD",
						"duration" : "N_TURNS"
					}
				}
			}
		},
		"flags" : {
			"positive": true
		}
	},
	"protectAir" : {
		"index" : 30,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C11SPE0"]
		},
		"sounds": {
			"cast": "PROTECTA"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"spellDamageReduction" : {
						"type" : "SPELL_DAMAGE_REDUCTION",
						"subtype" : 0,
						"duration" : "N_TURNS",
						"val" : 30
					}
				}
			},
			"advanced" : {
				"effects" : {
					"spellDamageReduction" : {
						"val" : 50
					}
				}
			},
			"expert":{
				"effects" : {
					"spellDamageReduction" : {
						"val" : 50
					}
				},
				"range" : "X"
			}
		},
		"flags" : {
			"positive": true
		}
	},
	"protectFire" : {
		"index" : 31,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C11SPW0"]
		},
		"sounds": {
			"cast": "PROTECTF"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"spellDamageReduction" : {
						"type" : "SPELL_DAMAGE_REDUCTION",
						"subtype" : 1,
						"duration" : "N_TURNS",
						"val" : 30
					}
				}
			},
			"advanced" : {
				"effects" : {
					"spellDamageReduction" : {
						"val" : 50
					}
				}
			},
			"expert":{
				"effects" : {
					"spellDamageReduction" : {
						"val" : 50
					}
				},
				"range" : "X"
			}
		},
		"flags" : {
			"positive": true
		}
	},
	"protectWater" : {
		"index" : 32,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C11SPF0"]
		},
		"sounds": {
			"cast": "PROTECTW"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"spellDamageReduction" : {
						"type" : "SPELL_DAMAGE_REDUCTION",
						"subtype" : 2,
						"duration" : "N_TURNS",
						"val" : 30
					}
				}
			},
			"advanced" : {
				"effects" : {
					"spellDamageReduction" : {
						"val" : 50
					}
				}
			},
			"expert":{
				"effects" : {
					"spellDamageReduction" : {
						"val" : 50
					}
				},
				"range" : "X"
			}
		},
		"flags" : {
			"positive": true
		}
	},
	"protectEarth" : {
		"index" : 33,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C13SPA0"]
		},
		"sounds": {
			"cast": "PROTECTE"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"spellDamageReduction" : {
						"type" : "SPELL_DAMAGE_REDUCTION",
						"subtype" : 3,
						"duration" : "N_TURNS",
						"val" : 30
					}
				}
			},
			"advanced" : {
				"effects" : {
					"spellDamageReduction" : {
						"val" : 50
					}
				}
			},
			"expert":{
				"effects" : {
					"spellDamageReduction" : {
						"val" : 50
					}
				},
				"range" : "X"
			}
		},
		"flags" : {
			"positive": true
		}
	},
	"antiMagic" : {
		"index" : 34,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C02SPE0"]
		},
		"sounds": {
			"cast": "ANTIMAGK"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"battleEffects":{
					"spellImmunity":{
						"type":"core:timed",
						"bonus":{
							"levelSpellImmunity":{
								"addInfo" : 1,
								"val" : 3,
								"type" : "LEVEL_SPELL_IMMUNITY",
								"valueType" : "INDEPENDENT_MAX",
								"duration" : "N_TURNS"
							}
						}
					},
					"dispel":{
						"type":"core:dispel",
						"optional":true,
						"dispelNegative":true,
						"dispelNeutral":true,
						"dispelPositive":false
					}
				}
			},
			"advanced":{
				"battleEffects":{
					"spellImmunity":{
						"bonus" :{
							"levelSpellImmunity":{
								"val" : 4
							}
						}
					}
				}
			},
			"expert":{
				"battleEffects":{
					"spellImmunity":{
						"bonus":{
							"levelSpellImmunity":{
								"val" : 5
							}
						}
					}
				}
			}
		},
		"flags" : {
			"positive": true
		}
	},
	"magicMirror" : {
		"index" : 36,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C02SPA0"]
		},
		"sounds": {
			"cast": "BACKLASH"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"magicMirror" : {
						"type" : "MAGIC_MIRROR",
						"valueType" : "INDEPENDENT_MAX",
						"duration" : "N_TURNS"
					}
				}
			}
		},
		"flags" : {
			"positive": true
		}
	},
	"bless" : {
		"index" : 41,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C01SPW"]
		},
		"sounds": {
			"cast": "BLESS"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"alwaysMaximumDamage" : {
						"val" : 0,
						"type" : "ALWAYS_MAXIMUM_DAMAGE",
						"subtype" : -1,
						"valueType" : "INDEPENDENT_MAX",
						"duration" : "N_TURNS"
					}
				}
			},
			"expert":{
				"range" : "X"
			}
		},
		"counters" : {
			"spell.curse": true
		},
		"flags" : {
			"positive": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.SIEGE_WEAPON" : "absolute",
				"bonus.UNDEAD" : "absolute"
			}
		}
	},
	"curse" : {
		"index" : 42,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C04SPW"]
		},
		"sounds": {
			"cast": "CURSE"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"alwaysMinimumDamage" : {
						"addInfo" : 0,
						"val" : 0,
						"type" : "ALWAYS_MINIMUM_DAMAGE",
						"subtype" : -1,
						"valueType" : "INDEPENDENT_MAX",
						"duration" : "N_TURNS"
					}
				}
			},
			"expert":{
				"range" : "X"
			}
		},
		"counters" : {
			"spell.bless": true
		},
		"flags" : {
			"negative": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.SIEGE_WEAPON" : "absolute",
				"bonus.UNDEAD" : "absolute"
			}
		}
	},
	"bloodlust" : {
		"index" : 43,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["SP12_"]
		},
		"sounds": {
			"cast": "BLOODLUS"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"primarySkill" : {
						"val" : 3,
						"type" : "PRIMARY_SKILL",
						"subtype" : "primSkill.attack",
						"effectRange" : "ONLY_MELEE_FIGHT",
						"duration" : "N_TURNS"
					}
				}
			},
			"advanced":{
				"effects" : {
					"primarySkill" : {
						"val" : 6
					}
				}
			},
			"expert":{
				"range" : "X",
				"effects" : {
					"primarySkill" : {
						"val" : 6
					}
				}
			}
		},
		"counters" : {
			"spell.weakness": true
		},
		"flags" : {
			"positive": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.SIEGE_WEAPON" : "absolute"
			}
		}
	},
	"precision" : {
		"index" : 44,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C12SPA0"]
		},
		"sounds": {
			"cast": "PRECISON"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"primarySkill" : {
						"type" : "PRIMARY_SKILL",
						"subtype" : "primSkill.attack",
						"val" : 3,
						"effectRange" : "ONLY_DISTANCE_FIGHT",
						"duration" : "N_TURNS"
					}
				}
			},
			"advanced":{
				"effects" : {
					"primarySkill" : {
						"val" : 6
					}
				}
			},
			"expert":{
				"range" : "X",
				"effects" : {
					"primarySkill" : {
						"val" : 6
					}
				}
			}
		},
		"flags" : {
			"positive": true
		},
		"targetCondition" : {
			"allOf" : {
				"bonus.SHOOTER" : "absolute"
			}
		}
	},
	"weakness" : {
		"index" : 45,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C0ACID"]
		},
		"sounds": {
			"cast": "WEAKNESS"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"primarySkill" : {
						"type" : "PRIMARY_SKILL",
						"subtype" : "primSkill.attack",
						"val" : -3,
						"duration" : "N_TURNS"
					}
				}
			},

			"advanced":{
				"effects" : {
					"primarySkill" : {
						"val" : -6
					}
				}
			},
			"expert":{
				"range" : "X",
				"effects" : {
					"primarySkill" : {
						"val" : -6
					}
				}
			}
		},
		"counters" : {
			"spell.bloodlust": true
		},
		"flags" : {
			"negative": true
		}
	},
	"stoneSkin" : {
		"index" : 46,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C16SPE"]
		},
		"sounds": {
			"cast": "TUFFSKIN"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"primarySkill" : {
						"type" : "PRIMARY_SKILL",
						"subtype" : "primSkill.defence",
						"val" : 3,
						"duration" : "N_TURNS"
					}
				}
			},
			"advanced":{
				"effects" : {
					"primarySkill" : {
						"val" : 6
					}
				}
			},
			"expert":{
				"range" : "X",
				"effects" : {
					"primarySkill" : {
						"val" : 6
					}
				}
			}
		},
		"flags" : {
			"positive": true
		}
	},
	"disruptingRay" : {
		"index" : 47,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C07SPA1"],
			"projectile":[{"defName":"C07SPA0"}]
		},
		"sounds": {
			"cast": "DISRUPTR"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"cumulativeEffects" : {
					"primarySkill" : {
						"type" : "PRIMARY_SKILL",
						"subtype" : "primSkill.defence",
						"val" : -3,
						"valueType" : "ADDITIVE_VALUE",
						"duration" : "PERMANENT"
					}
				}
			},
			"advanced":{
				"cumulativeEffects" : {
					"primarySkill" : {
						"val" : -4
					}
				}
			},
			"expert":{
				"cumulativeEffects" : {
					"primarySkill" : {
						"val" : -5
					}
				}
			}
		},
		"flags" : {
			"negative": true
		}
	},
	"prayer" : {
		"index" : 48,
		"targetType" : "CREATURE",

		"animation":{
			"affect":[{"defName":"C10SPW", "verticalPosition":"bottom"}]
		},
		"sounds": {
			"cast": "PRAYER"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"attack" : {
						"type" : "PRIMARY_SKILL",
						"subtype" : "primSkill.attack",
						"val" : 2,
						"duration" : "N_TURNS"
					},
					"defence" : {
						"type" : "PRIMARY_SKILL",
						"subtype" : "primSkill.defence",
						"val" : 2,
						"duration" : "N_TURNS"
					},
					"stacksSpeed" : {
						"addInfo" : 0,
						"type" : "STACKS_SPEED",
						"val" : 2,
						"duration" : "N_TURNS"
					}
				}
			},
			"advanced":{
				"effects" : {
					"attack" : {
						"val" : 4
					},
					"defence" : {
						"val" : 4
					},
					"stacksSpeed" : {
						"val" : 4
					}
				}
			},
			"expert":{
				"range" : "X",
				"effects" : {
					"attack" : {
						"val" : 4
					},
					"defence" : {
						"val" : 4
					},
					"stacksSpeed" : {
						"val" : 4
					}
				}
			}
		},
		"flags" : {
			"positive": true
		}
	},
	"mirth" : {
		"index" : 49,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C09SPW0"]
		},
		"sounds": {
			"cast": "MIRTH"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"morale" : {
						"type" : "MORALE",
						"val" : 1,
						"duration" : "N_TURNS"
					}
				}
			},
			"advanced":{
				"effects" : {
					"morale" : {
						"val" : 2
					}
				}
			},
			"expert":{
				"range" : "X",
				"effects" : {
					"morale" : {
						"val" : 2
					}
				}
			}
		},
		"counters" : {
			"spell.sorrow":true
		},
		"flags" : {
			"positive": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.MIND_IMMUNITY" : "normal",
				"bonus.NON_LIVING" : "normal",
				"bonus.SIEGE_WEAPON" : "absolute",
				"bonus.UNDEAD" : "absolute"
			}
		}
	},
	"sorrow" : {
		"index" : 50,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C14SPE0"]
		},
		"sounds": {
			"cast": "SORROW"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"morale" : {
						"type" : "MORALE",
						"val" : -1,
						"duration" : "N_TURNS"
					}
				}
			},
			"advanced":{
				"effects" : {
					"morale" : {
						"val" : -2
					}
				}
			},
			"expert":{
				"range" : "X",
				"effects" : {
					"morale" : {
						"val" : -2
					}
				}
			}
		},
		"counters" : {
			"spell.mirth":true
		},
		"flags" : {
			"negative": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.MIND_IMMUNITY" : "normal",
				"bonus.NON_LIVING" : "normal",
				"bonus.SIEGE_WEAPON" : "absolute",
				"bonus.UNDEAD" : "absolute"
			}
		}
	},
	"fortune" : {
		"index" : 51,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C09SPA0"]
		},
		"sounds": {
			"cast": "FORTUNE"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"luck" : {
						"type" : "LUCK",
						"val" : 1,
						"duration" : "N_TURNS"
					}
				}
			},
			"advanced":{
				"effects" : {
					"luck" : {
						"val" : 2
					}
				}
			},
			"expert":{
				"range" : "X",
				"effects" : {
					"luck" : {
						"val" : 2
					}
				}
			}
		},
		"counters" : {
			"spell.misfortune": true
		},
		"flags" : {
			"positive": true
		}
	},
	"misfortune" : {
		"index" : 52,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C10SPF0"]
		},
		"sounds": {
			"cast": "MISFORT"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"luck" : {
						"type" : "LUCK",
						"val" : -1,
						"duration" : "N_TURNS"
					}
				}
			},
			"advanced":{
				"effects" : {
					"luck" : {
						"val" : -2
					}
				}
			},
			"expert":{
				"range" : "X",
				"effects" : {
					"luck" : {
						"val" : -2
					}
				}
			}
		},
		"counters" : {
			"spell.fortune":true
		},
		"flags" : {
			"negative": true
		}
	},
	"haste" : {
		"index" : 53,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C15SPA0"]
		},
		"sounds": {
			"cast": "TAILWIND"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"stacksSpeed" : {
						"addInfo" : 0,
						"type" : "STACKS_SPEED",
						"val" : 3,
						"duration" : "N_TURNS"
					}
				}
			},
			"advanced":{
				"effects" : {
					"stacksSpeed" : {
						"val" : 5
					}
				}
			},
			"expert":{
				"range" : "X",
				"effects" : {
					"stacksSpeed" : {
						"val" : 5
					}
				}
			}
		},
		"counters" : {
			"spell.slow": true
		},
		"flags" : {
			"positive": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.SIEGE_WEAPON" : "absolute"
			}
		}
	},
	"slow" : {
		"index" : 54,
		"targetType" : "CREATURE",

		"animation":{
			"affect":[{"defName":"C09SPE0", "verticalPosition":"bottom"}]
		},
		"sounds": {
			"cast": "MUCKMIRE"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"stacksSpeed" : {
						"addInfo" : 0,
						"type" : "STACKS_SPEED",
						"val" : -25,
						"valueType" : "PERCENT_TO_ALL",
						"duration" : "N_TURNS"
					}
				}
			},
			"advanced":{
				"effects" : {
					"stacksSpeed" : {
						"val" : -50
					}
				}
			},
			"expert":{
				"range" : "X",
				"effects" : {
					"stacksSpeed" : {
						"val" : -50
					}
				}
			}
		},
		"counters" : {
			"spell.haste":true
		},
		"flags" : {
			"negative": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.SIEGE_WEAPON" : "absolute"
			}
		}
	},
	"slayer" : {
		"index" : 55,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C13SPW0"]
		},
		"sounds": {
			"cast": "SLAYER"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"slayer" : {
						"type" : "SLAYER",
						"duration" : "N_TURNS"
					}
				}
			},
			"none":{
				"effects" : {
					"slayer" : {
						"val" : 0
					}
				}
			},
			"basic":{
				"effects" : {
					"slayer" : {
						"val" : 1
					}
				}
			},
			"advanced":{
				"effects" : {
					"slayer" : {
						"val" : 2
					}
				}
			},
			"expert":{
				"effects" : {
					"slayer" : {
						"val" : 3
					}
				}
			}
		},
		"flags" : {
			"positive": true
		}
	},
	"frenzy" : {
		"index" : 56,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C08SPF0"]
		},
		"sounds": {
			"cast": "FRENZY"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"inFrenzy" : {
						"type" : "IN_FRENZY",
						"val" : 100,
						"duration" : "UNTIL_ATTACK"
					}
				}
			},
			"advanced":{
				"effects" : {
					"inFrenzy" : {
						"val" : 150
					}
				}
			},
			"expert":{
				"effects" : {
					"inFrenzy" : {
						"val" : 200
					}
				}
			}
		},
		"flags" : {
			"positive": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.SIEGE_WEAPON" : "absolute"
			}
		}
	},
	"counterstrike" : {
		"index" : 58,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C04SPA0"]
		},
		"sounds": {
			"cast": "CNTRSTRK"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"additionalRetaliation" : {
						"type" : "ADDITIONAL_RETALIATION",
						"val" : 1,
						"duration" : "N_TURNS"
					}
				}
			},
			"advanced":{
				"effects" : {
					"additionalRetaliation" : {
						"val" : 2
					}
				}
			},
			"expert":{
				"range" : "X",
				"effects" : {
					"additionalRetaliation" : {
						"val" : 2
					}
				}
			}
		},
		"flags" : {
			"positive": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.SIEGE_WEAPON" : "absolute"
			}
		}
	},
	"berserk" : {
		"index" : 59,
		"targetType" : "LOCATION",

		"animation":{
			"affect":["C01SPF"]
		},
		"sounds": {
			"cast": "BERSERK"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":false},
				"effects" : {
					"attacksNearestCreature" : {
						"type" : "ATTACKS_NEAREST_CREATURE",
						"duration" : "STACK_GETS_TURN"
					}
				}
			},
			"advanced":{
				"range" : "0-1"
			},
			"expert":{
				"range" : "0-2"
			}
		},
		"counters" : {
			"spell.hypnotize": true
		},
		"flags" : {
			"negative": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.MIND_IMMUNITY" : "normal",
				"bonus.NON_LIVING" : "normal",
				"bonus.SIEGE_WEAPON" : "absolute",
				"bonus.UNDEAD" : "normal"
			}
		}
	},
	"hypnotize" : {
		"index" : 60,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C10SPA0"]
		},
		"sounds": {
			"cast": "HYPNOTIZ"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"hypnotized" : {
						"type" : "HYPNOTIZED",
						"duration" : "N_TURNS"
					}
				}
			},
			"none":{
				"effects" : {
					"hypnotized" : {
						"val" : 0
					}
				}
			},
			"basic":{
				"effects" : {
					"hypnotized" : {
						"val" : 1
					}
				}
			},
			"advanced":{
				"effects" : {
					"hypnotized" : {
						"val" : 2
					}
				}
			},
			"expert":{
				"effects" : {
					"hypnotized" : {
						"val" : 3
					}
				}
			}
		},
		"counters" : {
			"spell.berserk": true
		},
		"targetCondition" : {
			"allOf" : {
				"healthValueSpecial" : "absolute"
			},
			"noneOf" : {
				"bonus.SIEGE_WEAPON":"absolute",
				"bonus.MIND_IMMUNITY":"normal",
				"bonus.UNDEAD":"normal",
				"bonus.NON_LIVING":"normal"
			}
		},
		"flags" : {
			"negative": true
		}
	},
	"forgetfulness" : {
		"index" : 61,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C06SPW"]
		},
		"sounds": {
			"cast": "FORGET"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"forgetful" : {
						"type" : "FORGETFULL",
						"duration" : "N_TURNS"
					}
				}
			},
			"none":{
				"effects" : {
					"forgetful" : {
						"val" : 0
					}
				}
			},
			"basic":{
				"effects" : {
					"forgetful" : {
						"val" : 1
					}
				}
			},
			"advanced":{
				"effects" : {
					"forgetful" : {
						"val" : 2
					}
				}
			},
			"expert":{
				"range" : "X",
				"effects" : {
					"forgetful" : {
						"val" : 3
					}
				}
			}
		},
		"flags" : {
			"negative": true
		},
		"targetCondition" : {
			"allOf" : {
				"bonus.SHOOTER" : "absolute"
			},
			"noneOf" : {
				"bonus.MIND_IMMUNITY" : "normal",
				"bonus.NON_LIVING" : "normal",
				"bonus.SIEGE_WEAPON" : "absolute",
				"bonus.UNDEAD" : "normal"
			}
		}
	},
	"blind" : {
		"index" : 62,
		"targetType" : "CREATURE",

		"animation":{
			"affect":["C02SPF0"]
		},
		"sounds": {
			"cast": "BLIND"
		},
		"levels" : {
			"base":{
				"range" : "0",
				"targetModifier":{"smart":true},
				"effects" : {
					"notActive" : {
						"val" : 0,
						"type" : "NOT_ACTIVE",
						"subtype" : 62,
						"duration" : [
							"UNTIL_BEING_ATTACKED",
							"N_TURNS"
						]
					},
					"generalAttackReduction" : {
						"type" : "GENERAL_ATTACK_REDUCTION",
						"duration" : [
							"UNTIL_BEING_ATTACKED",
							"N_TURNS"
						]
					}
				}
			},
			"expert":{
				"effects" : {
					"noRetaliation" : {
						"val" : 0,
						"type" : "NO_RETALIATION",
						"duration" : [
							"UNTIL_BEING_ATTACKED",
							"N_TURNS"
						]
					}
				}
			}
		},
		"flags" : {
			"negative": true
		},
		"targetCondition" : {
			"noneOf" : {
				"bonus.MIND_IMMUNITY" : "normal",
				"bonus.NON_LIVING" : "normal",
				"bonus.SIEGE_WEAPON" : "absolute",
				"bonus.UNDEAD" : "absolute"
			}
		}

	}
}
'
    ];
}
