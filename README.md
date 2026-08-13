# Love2D Lua Starter

A very simple love2d project starter because i wrote 
```lua 
function love.update(dt)
  ... 
end
```
so many times its crazy...

## Features

* Organized project structure, s eparates game logic, utilities, and assets
* OOP-style foundation, uses Lua tables and metatables for reusable modules
* Custom color palette, predefined RGB constants for consistent visuals
* Seeded RNG, random generator initialized using system time
* Virtual resolution, configurable resolution independent of screen size using https://github.com/Ulydev/push
* Automatic scaling, handles resizing, offsets, and different displays
* Canvas rendering, consistent rendering using virtual resolution
* Coordinate conversion,  utilities for game-space and screen-space mapping
* Basic input, includes Escape to close the game 
* Minimal boilerplate, only essential systems included

## Structure

```text
myLoveProject/
├── assets/
├── src/
│   ├── game.lua
│   └── push.lua
├── .luarc.json <- this is only good if you use nvim, you can delete it if u dont
└── main.lua
```

## Requirements

* Lua
* Love2D
* Git

## Quick Start

```bash
git clone https://github.com/baccinrafael/starterLuaProject myLoveProject && cd myLoveProject && love .
```

## Configuration

Virtual resolution is defined in `src/game.lua`:

```lua
local GameData = {
    width = 500,
    height = 500,
}
```

This defines the internal coordinate system used by the game.

## Random System

A seeded random generator is initialized using system time:

```lua
local rng = love.math.newRandomGenerator(GameData.seed)
```

## Colors

Defined in `src/game.lua`:

```lua
local Colors = {
    inkBlack = CH(13, 19, 33),
    linen = CH(255, 237, 223),
    -- and more... CH is a simple function i made beacuse love2d uses 0~1 values instead of 0~255 for colors
}
```

## Resolution System

The project uses a virtual resolution system handled by `push.lua`.

## Architecture

```text
main.lua 
   ↓ calls
src/game.lua
   ↓ calls
src/push.lua
   ↓ help render
Love2D
```

## Utilities (push module)

* setupScreen
* resize
* start
* finish
* toGame
* toReal
* switchFullscreen
* getDimensions

## Assets

The assets folder is prepared for:

* images
* fonts
* sounds
* music
* shaders
* maps
