local collectionServer = game:GetService("CollectionService")
local player_in = game:GetService("Players")

for _, partCurrent in ipairs(collectionServer:GetTagged("plantGrowth On Land")) do


	--local farmPlot = script.Parent
	local clickDetector = partCurrent.ClickDetector

	local hasCrop = false
	local crops = {}
	local corrutepCrops = {}
	local grown = false
	local fertilized = false

	clickDetector.MouseClick:Connect(function(player)

		print("Succesfully detected plot")
		--print("CLICKED")
		--print("hasCrop:", hasCrop)
		--print("grown:", grown)

		if grown then
			for i, crop in ipairs(crops) do
				crop:Destroy()
			end
			for i, crop in ipairs(corrutepCrops) do
				crop:Destroy()
			end
			hasCrop = false	
			grown = false
			crops = {}
			corrutepCrops= {}
			fertilized = false
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

			crop.Size = Vector3.new(0.5, 1.2, 0.5)
			crop.Color = Color3.new(0.403922, 0.729412, 0.027451)
			crop.Material = Enum.Material.Grass
			crop.Anchored = true
			crop.Parent = workspace
		end

		local cropNumber = 1

		for i = -2, 2 do
			for j = -2, 2 do

				crops[cropNumber].Position = partCurrent.Position + Vector3.new(i, 1.5, j)
				cropNumber = cropNumber+1

			end
		end

		hasCrop = true

		--task.wait (3)

		--for i, crop in ipairs(crops) do

		--	crop.Size = Vector3.new(0.5, 3.5, 0.5)
		--	crop.Color = Color3.new(0.666667, 0.721569, 0.180392)
		--end

		--task.wait (3)

		--for i, crop in ipairs(crops) do

		--	crop.Size = Vector3.new(0.5, 6.5, 0.5)
		--	crop.Color = Color3.new(0.776471, 0.74902, 0)
		--end

		local randomIteration = math.random(1,10)
		local chooseBug = math.random(1,5)

		for j = 1,10 do
			for i, crop in ipairs(crops) do


				crop.Size += Vector3.new(0,0.3, 0)
				task.wait(0.001)

				if j>3 and j<5  then
					crop.Color = Color3.new(0.870588, 1, 0.4)
				end

				if j>5 then
					crop.Color = Color3.new(0.87451, 0.886275, 0.0823529)
				end

			end

			if j==randomIteration and not fertilized then
				if chooseBug == 1 or chooseBug == 2 then 
					for i = 1,2 do
						local randomNumber = math.random(1,#crops)
						crops[randomNumber].Color = Color3.new(0.54902, 0.235294, 0.0235294)
						table.insert(corrutepCrops, crops[randomNumber])
						table.remove(crops, randomNumber)	
					end

				end

			end
		end


		grown = true

	end)


end
