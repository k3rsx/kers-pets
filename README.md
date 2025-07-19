# Kers Pets

Forked from [ErdemGoren's ggdev-pets](https://github.com/ErdemGoren) 

Original Creator: **ErdemGoren** - [Discord](https://discord.com/users/405469149419274241)

## What's This?

A pet system for FiveM where pets sit on your shoulder. Has some nice effects and a clean menu.


##Images
<img width="587" height="566" alt="image" src="https://github.com/user-attachments/assets/d5414f77-2109-44c0-9603-2903e2442259" />
<img width="456" height="551" alt="image" src="https://github.com/user-attachments/assets/a1864e82-ad7f-420c-9039-9d6e3fe8574b" />
<img width="387" height="494" alt="image" src="https://github.com/user-attachments/assets/abf38f95-c7e4-40d6-bc6e-64fdd7560f4c" />
<img width="340" height="514" alt="image" src="https://github.com/user-attachments/assets/36923ff1-b603-42b7-a622-a51d7e45befe" />



## Video
https://streamable.com/hiylz1

## Pets Available

- shark_boi
- monkey_punk  
- monky
- fox
- questing_mouse
- armored_cat
- hollow_knight
- knight_cat
- dino
- dino_student
- pig_angel
- mickey_mouse
- blossom
- buttercup
- bubbles

## Installation

1. Drop the folder in your resources
2. Add `ensure kers-pets` to server.cfg
3. Add items to your inventory system:

**For QB-Core (qb-core/shared/items.lua):**
```lua
['shark_boi'] = {
    ['name'] = 'shark_boi',
    ['label'] = 'Shark Boy Pet',
    ['weight'] = 100,
    ['type'] = 'item',
    ['image'] = 'shark_boi.png',
    ['unique'] = false,
    ['useable'] = true,
    ['shouldClose'] = true,
    ['description'] = 'A cute shark companion'
},
-- Add other pets similarly...
```

**For ox_inventory (ox_inventory/data/items.lua):**
```lua
["shark_boi"] = {
    label = "Köpekbalığı Çocuk",
    weight = 0,
    stack = true,
    close = true,
    description = "Bana pahalı görünüyor o.o",
    client = {
        image = "shark_boi.png",
    }
},
["monkey_punk"] = {
    label = "Maymun Punk",
    weight = 0,
    stack = true,
    close = true,
    description = "Bana pahalı görünüyor o.o",
    client = {
        image = "monkey_punk.png",
    }
},
["monky"] = {
    label = "Maymun",
    weight = 0,
    stack = true,
    close = true,
    description = "Bana pahalı görünüyor o.o",
    client = {
        image = "monky.png",
    }
},
["fox"] = {
    label = "Tilki",
    weight = 0,
    stack = true,
    close = true,
    description = "Bana pahalı görünüyor o.o",
    client = {
        image = "fox.png",
    }
},
["questing_mouse"] = {
    label = "Macera Fare",
    weight = 0,
    stack = true,
    close = true,
    description = "Bana pahalı görünüyor o.o",
    client = {
        image = "questing_mouse.png",
    }
},
["armored_cat"] = {
    label = "Zırhlı Kedi",
    weight = 0,
    stack = true,
    close = true,
    description = "Bana pahalı görünüyor o.o",
    client = {
        image = "armored_cat.png",
    }
},
["hollow_knight"] = {
    label = "Hollow Şövalye",
    weight = 0,
    stack = true,
    close = true,
    description = "Bana pahalı görünüyor o.o",
    client = {
        image = "hollow_knight.png",
    }
},
["knight_cat"] = {
    label = "Şövalye Kedi",
    weight = 0,
    stack = true,
    close = true,
    description = "Bana pahalı görünüyor o.o",
    client = {
        image = "knight_cat.png",
    }
},
["dino"] = {
    label = "Dinozor",
    weight = 0,
    stack = true,
    close = true,
    description = "Bana pahalı görünüyor o.o",
    client = {
        image = "dino.png",
    }
},
["dino_student"] = {
    label = "Öğrenci Dinozor",
    weight = 0,
    stack = true,
    close = true,
    description = "Bana pahalı görünüyor o.o",
    client = {
        image = "dino_student.png",
    }
},
["pig_angel"] = {
    label = "Melek Domuz",
    weight = 0,
    stack = true,
    close = true,
    description = "Bana pahalı görünüyor o.o",
    client = {
        image = "pig_angel.png",
    }
},
["mickey_mouse"] = {
    label = "Mickey Mouse",
    weight = 0,
    stack = true,
    close = true,
    description = "Bana pahalı görünüyor o.o",
    client = {
        image = "mickey_mouse.png",
    }
},
["blossom"] = {
    label = "Blossom",
    weight = 0,
    stack = true,
    close = true,
    description = "Bana pahalı görünüyor o.o",
    client = {
        image = "blossom.png",
    }
},
["buttercup"] = {
    label = "Buttercup",
    weight = 0,
    stack = true,
    close = true,
    description = "Bana pahalı görünüyor o.o",
    client = {
        image = "buttercup.png",
    }
},
["bubbles"] = {
    label = "Bubbles",
    weight = 0,
    stack = true,
    close = true,
    description = "Omuzlarının üstünde sana güç veren yoldaşın.",
    client = {
        image = "bubbles.png",
    }
},
```

4. Put pet images in `html/img/` folder

## How to Use

- **QB-Core**: Use the items in your inventory
- **Standalone**: Use `/spawnpet petname` command
- **Menu**: Use `/petsmenu` command when you have a pet

## Configuration

Check `config.lua` - everything's pretty self explanatory.

Framework can be 'QB' or 'STANDALONE'.

Menu alignment can be 'left', 'center', or 'right'.

Language is 'en' or 'tr'.

## Adding Pets

Copy the format in config.lua, change the positions and particle effects as needed.

Don't forget to add the item to QB-Core if you're using that framework.

## Commands

- `/petsmenu` - Opens pet manager
- `/spawnpet [petname]` - Spawns pet (standalone only)

## Requirements

- FiveM Server
- QB-Core or ox_inventory (optional - supports standalone)

## Credits

Original script by ErdemGoren. This is just a fork with some tweaks.
