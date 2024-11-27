task.wait(10)
local uis = game:GetService("UserInputService")
local rs = game.ReplicatedStorage
local hash_folder = Instance.new("Folder", game.Workspace)
local script_rs_folder = Instance.new("Folder", rs)
local Player = game.Players.LocalPlayer
local char = game.Players.LocalPlayer.Character
local hum = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
local humRP = char.HumanoidRootPart
local redF = Instance.new("Folder", script_rs_folder)
local redM = Instance.new("Part", redF)
local blueF = Instance.new("Folder", script_rs_folder)
local blueM = Instance.new("Part", blueF)
local currentHealth = hum.Health
hum.MaxHealth = 1000
hum.Health = hum.MaxHealth
hash_folder.Name = "Go/Kuna_hash..By.C_I_T."
script_rs_folder.Name = "Go/Kuna_script..By.C_I_T."
redF.Name = "RedBallsFolder"
blueF.Name = "BlueSniperFolder"
hum.DisplayName = "Go/Jo"
redM.Name = "RedModel"
redM.Anchored = true
redM.Shape = Enum.PartType.Ball
redM.BrickColor = BrickColor.new("Persimmon")
redM.Size = Vector3.new(1, 1, 1)
blueM.Name = "BlueModel"
blueM.Anchored = true
blueM.Shape = Enum.PartType.Block
blueM.BrickColor = BrickColor.new("Cyan")
blueM.Size = Vector3.new(15, 7, 5)
	
uis.InputBegan:Connect(function(Key, gpe) 
	if gpe then end
	if Key.KeyCode == Enum.KeyCode.P then
		for i=0, hum.MaxHealth do
			hum.Health += i
			task.wait(0.01)
		end
	end
	if Key.KeyCode == Enum.KeyCode.Z or Key.KeyCode == Enum.KeyCode.One then
		local redC = redM:Clone()
		redC.Parent = hash_folder
		redC.Position = humRP.Position + Vector3.new(3, 5, 1)
		for i=0, 300 do
			redC.Position += Vector3.new(0.1, 0.1, 0.1)
			if i == 300 then
				redC.Size += Vector3.new(10, 10, 10)
				wait(1)
				redC:Destroy()
			end
		end
	end
	if Key.KeyCode == Enum.KeyCode.X or Key.KeyCode == Enum.KeyCode.Two then 
		task.wait(1)
		humRP.Position += Vector3.new(0, 100, 0)
		local blueC = blueM:Clone()
	end
	if Key.KeyCode == Enum.KeyCode.C or Key.KeyCode == Enum.KeyCode.Three then end
	if Key.KeyCode == Enum.KeyCode.B or Key.KeyCode == Enum.KeyCode.Four then end
end)
hum.StateChanged:Connect(function(_oldState, newState)
	if newState == Enum.HumanoidStateType.Dead then
		hum.Health = hum.MaxHealth
		hum:ChangeState(Enum.HumanoidStateType.None)
		hum.Health = hum.MaxHealth
		hum:ChangeState(Enum.HumanoidStateType.None)
	end
end)	
game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):GetPropertyChangedSignal("Health"):Connect(function()
	if hum.Health < currentHealth then
		local found
		local last = math.huge
		for _,plyr in pairs(game.Players:GetPlayers()) do
			local distance = plyr:DistanceFromCharacter(char.CFrame)
			if distance < last then
				found = plyr
				last = distance
			end
		end
		humRP.Position = found.HumanoidRootPart.Position + Vector3.new(1,1,1)
		humRP.Rotation = humRP.Rotation + Vector3.new(0, 180, 0)
		currentHealth = hum.Health
	end
end)
