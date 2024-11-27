local uis = game:GetService("UserInputService")
local rs = game.ReplicatedStorage
local script_rs_folder = Instance.new("Folder", rs)
local Player = game.Players.LocalPlayer
local char = Player.Character
local hum = char:WaitForChild("Humanoid")
local humRP = char.HumanoidRootPart
local redF = Instance.new("Folder", script_rs_folder)
local humanoidRP = char.HumanoidRootPart
local redM = Instance.new("Part", redF)
hum.MaxHealt = 1000
hum.Health = hum.MaxHealth
script_rs_folder.Name = "Go/Kuna"
redF.Name = "RedBallsFolder"
hum.DisplayName = "Go/Jo"
redM.Name = "RedModel"
redM.Anchored = true
redM.Shape = Enum.PartType.Ball
redM.BrickColor = BrickColor.new("Persimmon")
redM.Size = Vector3.new(1, 1, 1)
uis.InputBegan:Connect(function(Key, gpe) 
    if gpe then end
    if Key.KeyCode == Enum.KeyCode.P then 
        hum.Health += 30
    end
    if Key.KeyCode == Enum.KeyCode.E then
        local redC = redM:Clone()
    	for i=0, 300 do
    		redC.CFrame = redC.CFrame + Vector3.new(0.1, 0.1, 0.1)
			if i == 300 then
	    		redC.Size = recC.Size + Vector3.new(10, 10, 10
	    		wait(1)
	    		redC:Destroy()
			end
		end
    end
    if Key.KeyCode == Enum.KeyCode.T then
		local NearestPlr = nil
		local Lenght = nil
		for i,v in pairs(game.Players:GetChildren()) do
			local Name = v.Name
			for k, j in pairs(Name.Character:GetChildren()) do				
				local LenghtX = Player:DistanceFromCharacter(j.CFrame)
				if Lenght == nil or LenghtX < Lenght then
					Lenght = LenghtX
					if j.Name = "HumanoidRootPart" then
						NearestPlr = j
					end
				end
			end
		end
	end
end)
hum.StateChanged:Connect(function(_oldState, newState)
	if newState == Enum.HumanoidStateType.Dead then
		hum:ChangeState(Enum.HumanoidStateType.None)
		hum.Health = hum.MaxHealth
		hum:ChangeState(Enum.HumanoidStateType.None)
    end
end)
