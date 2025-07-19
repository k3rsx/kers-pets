Config = {}

Config.Framework = {
    name = 'QB',
    scriptName = 'qb-core',
    standaloneCommand = 'spawnpet'
}

Config.Timing = {
    effectDelay = 2500,
    refreshDelay = 5000
}

Config.Menu = {
    command = 'petsmenu',
    align = 'left',
    startPosition = 'left'
}

Config.Language = 'tr'

Config.Pets = {
    ['shark_boi'] = {
        objectName = 'shark_boi',
        settings = {
            ['left'] = {
                attachPos = vector3(0.285, 0.0, 0.15),
                attachRot = vector3(18.0, 76.0, 184.0),
            },
            ['right'] = {
                attachPos = vector3(0.28, 0.0, -0.15),
                attachRot = vector3(18.0, 100.0, 174.0),
            },
            ['particle'] = {
                particleDict = 'scr_carwash',
                particleName = 'ent_amb_car_wash_jet_soap',
                particlePos = vector3(0.0, 0.0, -0.05),
                particleRot = vector3(0.0, 0.0, 0.0),
                particleScale = 0.2
            }
        }
    },
    ['monkey_punk'] = {
        objectName = 'monkey_punk',
        settings = {
            ['left'] = {
                attachPos = vector3(0.3, 0.0, 0.15),
                attachRot = vector3(18.0, 76.0, 184.0),
            },
            ['right'] = {
                attachPos = vector3(0.3, 0.0, -0.15),
                attachRot = vector3(18.0, 100.0, 174.0),
            },
            ['particle'] = {
                particleDict = 'scr_sm_counter',
                particleName = 'scr_sm_counter_chaff',
                particlePos = vector3(0.0, 0.0, -0.05),
                particleRot = vector3(0.0, 0.0, 0.0),
                particleScale = 0.5
            }
        }
    },
    ['monky'] = {
        objectName = 'monky',
        settings = {
            ['left'] = {
                attachPos = vector3(0.3, 0.0, 0.15),
                attachRot = vector3(18.0, 76.0, 184.0),
            },
            ['right'] = {
                attachPos = vector3(0.3, 0.0, -0.15),
                attachRot = vector3(18.0, 100.0, 174.0),
            },
            ['particle'] = {
                particleDict = 'scr_armenian3',
                particleName = 'ent_anim_leaf_blower',
                particlePos = vector3(0.0, 0.0, -0.05),
                particleRot = vector3(0.0, 0.0, 0.0),
                particleScale = 0.5
            }
        }
    },
    ['fox'] = {
        objectName = 'fox',
        settings = {
            ['left'] = {
                attachPos = vector3(0.32, 0.0, 0.15),
                attachRot = vector3(18.0, 76.0, 184.0),
            },
            ['right'] = {
                attachPos = vector3(0.32, 0.0, -0.15),
                attachRot = vector3(18.0, 100.0, 174.0),
            },
            ['particle'] = {
                particleDict = 'scr_rcbarry2',
                particleName = 'scr_exp_clown',
                particlePos = vector3(0.0, -0.1, -0.05),
                particleRot = vector3(0.0, 0.0, 0.0),
                particleScale = 0.05
            }
        }
    },
    ['questing_mouse'] = {
        objectName = 'questing_mouse',
        settings = {
            ['left'] = {
                attachPos = vector3(0.32, 0.0, 0.15),
                attachRot = vector3(18.0, 76.0, 184.0),
            },
            ['right'] = {
                attachPos = vector3(0.32, 0.0, -0.15),
                attachRot = vector3(18.0, 100.0, 174.0),
            },
            ['particle'] = {
                particleDict = 'core',
                particleName = 'ent_dst_gen_gobstop',
                particlePos = vector3(0.0, -0.1, -0.05),
                particleRot = vector3(0.0, 0.0, 0.0),
                particleScale = 0.5
            }
        }
    },
    ['armored_cat'] = {
        objectName = 'armored_cat',
        settings = {
            ['left'] = {
                attachPos = vector3(0.30, 0.0, 0.15),
                attachRot = vector3(18.0, 76.0, 184.0),
            },
            ['right'] = {
                attachPos = vector3(0.30, 0.0, -0.15),
                attachRot = vector3(18.0, 100.0, 174.0),
            },
            ['particle'] = {
                particleDict = 'scr_bike_adversary',
                particleName = 'scr_adversary_foot_flames',
                particlePos = vector3(0.0, 0.0, -0.05),
                particleRot = vector3(0.0, 0.0, 0.0),
                particleScale = 0.75
            }
        }
    },
    ['hollow_knight'] = {
        objectName = 'hollow_knight',
        settings = {
            ['left'] = {
                attachPos = vector3(0.30, 0.0, 0.15),
                attachRot = vector3(18.0, 76.0, 184.0),
            },
            ['right'] = {
                attachPos = vector3(0.30, 0.0, -0.15),
                attachRot = vector3(18.0, 100.0, 174.0),
            },
            ['particle'] = {
                particleDict = 'scr_bike_adversary',
                particleName = 'scr_adversary_foot_flames',
                particlePos = vector3(0.0, 0.0, -0.05),
                particleRot = vector3(0.0, 0.0, 0.0),
                particleScale = 0.75
            }
        }
    },
    ['knight_cat'] = {
        objectName = 'knight_cat',
        settings = {
            ['left'] = {
                attachPos = vector3(0.30, 0.0, 0.15),
                attachRot = vector3(18.0, 76.0, 184.0),
            },
            ['right'] = {
                attachPos = vector3(0.30, 0.0, -0.15),
                attachRot = vector3(18.0, 100.0, 174.0),
            },
            ['particle'] = {
                particleDict = 'core',
                particleName = 'sp_foundry_sparks',
                particlePos = vector3(0.0, 0.0, -0.05),
                particleRot = vector3(0.0, 0.0, 0.0),
                particleScale = 0.5
            }
        }
    },
    ['dino'] = {
        objectName = 'dino',
        settings = {
            ['left'] = {
                attachPos = vector3(0.30, 0.0, 0.15),
                attachRot = vector3(18.0, 76.0, 184.0),
            },
            ['right'] = {
                attachPos = vector3(0.30, 0.0, -0.15),
                attachRot = vector3(18.0, 100.0, 174.0),
            },
            ['particle'] = {
                particleDict = 'core',
                particleName = 'ent_dst_concrete_large',
                particlePos = vector3(0.0, 0.0, -0.05),
                particleRot = vector3(0.0, 0.0, 0.0),
                particleScale = 0.5
            }
        }
    },
    ['dino_student'] = {
        objectName = 'dino_student',
        settings = {
            ['left'] = {
                attachPos = vector3(0.31, 0.0, 0.15),
                attachRot = vector3(18.0, 76.0, 184.0),
            },
            ['right'] = {
                attachPos = vector3(0.31, 0.0, -0.15),
                attachRot = vector3(18.0, 100.0, 174.0),
            },
            ['particle'] = {
                particleDict = 'scr_bike_adversary',
                particleName = 'scr_adversary_gunsmith_weap_change',
                particlePos = vector3(0.0, 0.0, -0.05),
                particleRot = vector3(0.0, 0.0, 0.0),
                particleScale = 0.3
            }
        }
    },
    ['pig_angel'] = {
        objectName = 'pig_angel',
        settings = {
            ['left'] = {
                attachPos = vector3(0.31, 0.0, 0.15),
                attachRot = vector3(18.0, 76.0, 154.0),
            },
            ['right'] = {
                attachPos = vector3(0.31, 0.0, -0.15),
                attachRot = vector3(18.0, 100.0, 154.0),
            },
            ['particle'] = {
                particleDict = 'scr_rcbarry2',
                particleName = 'scr_clown_death',
                particlePos = vector3(0.0, 0.0, -0.05),
                particleRot = vector3(0.0, 0.0, 0.0),
                particleScale = 0.2
            }
        }
    },
    ['mickey_mouse'] = {
        objectName = 'mickey_mouse',
        settings = {
            ['left'] = {
                attachPos = vector3(0.30, 0.0, 0.15),
                attachRot = vector3(18.0, 76.0, 184.0),
            },
            ['right'] = {
                attachPos = vector3(0.30, 0.0, -0.15),
                attachRot = vector3(18.0, 100.0, 174.0),
            },
            ['particle'] = {
                particleDict = 'scr_bike_adversary',
                particleName = 'scr_adversary_gunsmith_weap_change',
                particlePos = vector3(0.0, 0.0, -0.05),
                particleRot = vector3(0.0, 0.0, 0.0),
                particleScale = 0.4
            }
        }
    },
    ['blossom'] = {
        objectName = 'blossom',
        settings = {
            ['left'] = {
                attachPos = vector3(0.29, 0.0, 0.15),
                attachRot = vector3(18.0, 76.0, 184.0),
            },
            ['right'] = {
                attachPos = vector3(0.29, 0.0, -0.15),
                attachRot = vector3(18.0, 100.0, 184.0),
            },
            ['particle'] = {
                particleDict = 'scr_rcbarry2',
                particleName = 'scr_clown_bul',
                particlePos = vector3(0.0, 0.0, -0.05),
                particleRot = vector3(0.0, 0.0, 0.0),
                particleScale = 0.5
            }
        }
    },
    ['buttercup'] = {
        objectName = 'buttercup',
        settings = {
            ['left'] = {
                attachPos = vector3(0.29, 0.0, 0.15),
                attachRot = vector3(18.0, 76.0, 184.0),
            },
            ['right'] = {
                attachPos = vector3(0.29, 0.0, -0.15),
                attachRot = vector3(18.0, 100.0, 184.0),
            },
            ['particle'] = {
                particleDict = 'scr_armenian3',
                particleName = 'ent_anim_leaf_blower',
                particlePos = vector3(0.0, 0.0, -0.05),
                particleRot = vector3(0.0, 0.0, 0.0),
                particleScale = 0.5
            }
        }
    },
    ['bubbles'] = {
        objectName = 'bubbles',
        settings = {
            ['left'] = {
                attachPos = vector3(0.29, 0.0, 0.15),
                attachRot = vector3(18.0, 76.0, 184.0),
            },
            ['right'] = {
                attachPos = vector3(0.29, 0.0, -0.15),
                attachRot = vector3(18.0, 100.0, 184.0),
            },
            ['particle'] = {
                particleDict = 'scr_xs_dr',
                particleName = 'scr_xs_dr_emp',
                particlePos = vector3(0.0, 0.0, -0.05),
                particleRot = vector3(0.0, 0.0, 0.0),
                particleScale = 0.3
            }
        }
    }
}