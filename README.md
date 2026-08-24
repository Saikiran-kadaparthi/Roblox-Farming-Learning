## Roblox Farming System 🌱

A small farming mechanic built while learning Luau and Roblox Studio.

# Current Features
Click a farm plot to plant crops
Generates a 5×5 grid of 25 crops
Crops grow progressively over multiple growth stages
Crops change color as they grow
Randomly corrupts some crops during the growth process
Corrupted crops are removed from the normal crop list
Harvest crops once the growth cycle is complete
Clicking again clears both normal and corrupted crops
Replant crops after harvesting
Prevents planting multiple crop batches while crops are growing

##How It Works

When the farm plot is clicked:

The script creates 25 crop parts.
The crops are placed in a 5×5 grid above the farm plot.
Each crop gradually increases in height through multiple growth iterations.
Crop colors change as they progress through growth stages.
At a random growth iteration, two crops are randomly selected and corrupted.
Corrupted crops are removed from the normal crop collection and tracked separately.
Once the growth cycle finishes, the farm plot can be clicked again to harvest and clear all crops.
After harvesting, the plot is ready for a new planting cycle.


##Setup
Open Roblox Studio.
Create a Part to use as the farm plot.
Add a ClickDetector inside the Part.
Add a Script inside the Part.
Copy the code from FarmPlot.lua into the Script.
Press Play and click the farm plot to plant crops.
Project Status

##This is a learning project built while experimenting with Luau fundamentals, including:

Variables and state management
Tables
Loops
Nested loops
Random numbers
Instances
Events
Object creation and destruction
Basic gameplay logic
