# Roblox Farming System 🌱

A small farming mechanic built while learning **Luau** and **Roblox Studio**.

## Current Features

- Multiple farming plots managed by **one centralized script**
- Uses **CollectionService tags** to detect farming plots
- Each farm plot maintains its own independent crop state
- Click a farm plot to plant crops
- Generates a **5×5 grid containing 25 crops**
- Crops grow progressively through multiple growth stages
- Crops increase in size as they grow
- Crop colors change during different growth stages
- Random bug events can corrupt crops during growth
- Corrupted crops are tracked separately from healthy crops
- Harvest crops once the growth cycle is complete
- Clicking a fully grown farm plot removes all crops
- Replant crops after harvesting
- Prevents multiple planting inputs while crops are growing
- Basic fertilizer state added for future gameplay mechanics

## How It Works

1. Farming plots are tagged using **CollectionService**.
2. A centralized script detects all tagged farming plots.
3. Each plot receives its own independent crop state and click interaction.
4. Click an empty farm plot to begin planting.
5. The system creates **25 crop parts**.
6. The crops are positioned in a **5×5 grid** above the selected farm plot.
7. Each crop gradually grows through multiple iterations.
8. Crop size and colors change during different growth stages.
9. A random growth stage is selected for a possible bug event.
10. If the bug event occurs and the plot is not fertilized, two crops are randomly selected and corrupted.
11. Corrupted crops are removed from the healthy crop collection and tracked separately.
12. Once all growth stages are complete, the crops are ready to harvest.
13. Click the fully grown farm plot to remove all crops.
14. The plot is reset and ready for another planting cycle.

## Setup

1. Open Roblox Studio.
2. Create one or more **Parts** to use as farming plots.
3. Add a **ClickDetector** inside each farming plot.
4. Tag each farming plot using the same **CollectionService tag**.
5. Create a single farming management **Script**.
6. Place the script inside **ServerScriptService**.
7. The script automatically detects all tagged farming plots.
8. Press **Play** and click a farm plot to begin planting.

## Learning Goals

This project is being built while learning **Luau** and experimenting with:

- Variables and state management
- Tables
- Loops and nested loops
- Random numbers
- Events
- Creating Instances
- Destroying Instances
- CollectionService
- Object tagging
- Managing multiple objects with a centralized script
- Basic gameplay systems

## Planned Features

- 🎒 Player inventory system
- 🌰 Seed items
- 🌱 Planting crops using seeds
- ✂️ Adding harvested crops to the player's inventory
- 🧪 Interactive fertilizer
- 🐛 Fertilizer effects and crop protection
- 🖼️ Custom crop models and textures
- 💾 Saving player inventory and farming progress

## Project Status

🚧 **Learning Project — Work in Progress**

This project is being developed incrementally while learning Luau and Roblox Studio, with each update adding new mechanics and improving the overall structure of the farming system.
