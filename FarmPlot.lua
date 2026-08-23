local farmPlot = script.Parent
local clickDetector = farmPlot.ClickDetector

local hasCrop = false
local crops = {}
local grown = false


clickDetector.MouseClick:Connect(function(player)
	
	--print("CLICKED")
	--print("hasCrop:", hasCrop)
	--print("grown:", grown)
	
	if grown then
		for i, crop in ipairs(crops) do

			crop:Destroy()
		end
		hasCrop = false	
		grown = false
		crops = {}
		return
	end
	
	if hasCrop then
		return
	end
	
	if not hasCrop then
		
		
		for i = 1,25 do
			local crop = Instance.new("Part")
			table.insert(crops, crop)	
		end
		
	end
	
	
	
	
	for i, crop in ipairs(crops) do
		
		crop.Size = Vector3.new(0.5, 2, 0.5)
		crop.Color = Color3.new(0.403922, 0.729412, 0.027451)
		crop.Material = Enum.Material.Grass
		crop.Anchored = true
		crop.Parent = workspace
	end
	
	local cropNumber = 1
	
	for i = -2, 2 do
		for j = -2, 2 do
			
			crops[cropNumber].Position = farmPlot.Position + Vector3.new(i, 1.5, j)

			
			cropNumber = cropNumber+1
			
		end
	end
	
	hasCrop = true
	
	task.wait (3)
	
	for i, crop in ipairs(crops) do

		crop.Size = Vector3.new(0.5, 6, 0.5)
		crop.Color = Color3.new(0.835294, 0.717647, 0.0470588)
	end
	
	grown = true
	
end)