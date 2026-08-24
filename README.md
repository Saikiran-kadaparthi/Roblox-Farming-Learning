# Roblox Farming System 🌱

A small farming mechanic built while learning **Luau** and **Roblox Studio**.

## Current Features

- Click a farm plot to plant crops
- Generates a **5×5 grid containing 25 crops**
- Crops grow progressively through multiple growth stages
- Crops increase in size as they grow
- Crop colors change during different growth stages
- Randomly corrupts crops during the growth process
- Tracks corrupted crops separately
- Harvest crops once the growth cycle is complete
- Clicking the fully grown farm plot removes all crops
- Replant crops after harvesting
- Prevents multiple planting inputs while crops are growing

## How It Works

1. Click the farm plot to begin planting.
2. The script creates **25 crop parts**.
3. The crops are positioned in a **5×5 grid** above the farm plot.
4. Each crop gradually grows over multiple iterations.
5. Crop colors change as they progress through different growth stages.
6. At a random point during growth, **two crops are randomly selected and corrupted**.
7. Corrupted crops are removed from the normal crop collection and stored separately.
8. Once all growth stages are complete, the crops are ready to harvest.
9. Click the farm plot again to remove the crops.
10. The farm plot is then ready for another planting cycle.

## Setup

1. Open Roblox Studio.
2. Create a **Part** to use as the farm plot.
3. Add a **ClickDetector** inside the Part.
4. Add a **Script** inside the Part.
5. Copy the code from `FarmPlot.lua` into the Script.
6. Press **Play**.
7. Click the farm plot to plant crops.

## Learning Goals

This project is being built while learning **Luau** and experimenting with:

- Variables and state management
- Tables
- Loops and nested loops
- Random numbers
- Events
- Creating Instances
- Destroying Instances
- Basic gameplay systems
- Managing collections of objects

## Project Status

🚧 **Learning Project — Work in Progress**

This project is being developed incrementally while learning Luau and Roblox Studio.
