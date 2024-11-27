task.wait(10)
local uis = game:GetService("UserInputService")
local rs = game.ReplicatedStorage
local script_rs_folder = Instance.new("Folder", rs)
local Player = game.Players.LocalPlayer
local char = game.Players.LocalPlayer.Character
local hum = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
local humRP = char.HumanoidRootPart
local redF = Instance.new("Folder", script_rs_folder)
local redM = Instance.new("Part")
hum.MaxHealth = 1000
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
		for i=0, hum.MaxHealth do
			hum.Health += i
			task.wait(0.01)
		end
	end
	if Key.KeyCode == Enum.KeyCode.E then
		local redC = redM:Clone()
		for i=0, 300 do
			redC.Position = humRP.Position
			redC.Position = redC.Position + Vector3.new(0.1, 0.1, 0.1)
			if i == 300 then
				redC.Size = redC.Size + Vector3.new(10, 10, 10)
				wait(1)
				redC:Destroy()
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
while true do
	local currentHealth = hum.Health
	if hum.Health ~= currentHealth
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
	end
