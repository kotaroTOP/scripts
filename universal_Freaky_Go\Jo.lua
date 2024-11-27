local uis = game:GetService("UserInputService")
local rs = game.ReplicatedStorage
local script_rs_folder = Instance.new("Folder", rs)
local char = game.Players.LocalPlayer.Character
local hum = char:WaitForChild("Humanoid")
hum.MaxHealt = 1000
hum.Health = hum.MaxHealth
script_rs_folder.Name = "Go/Kuna"
local redF = Instance.new("Folder", script_rs_folder)
local blueF = Instance.new("Folder", script_rs_folder)
local humanoidRP = char.HumanoidRootPart
local redM = Instance.new("Part", redF)
local redE = Instance.new("Particle", redF)
local blueM = Instance.new("Part", blueF)
local blueE = Instance.new("Particle", blueF)
hum.DisplayName = "Go/Jo"
redM.Name = "RedModel"
redM.Anchored = true
redM.Shape = Enum.PartType.Ball
redM.BrickColor = BrickColor.new("Persimmon")
redM.Size = Vector3.new(1, 1, 1)
redE.Name = "RedVFX"
blueM.Name = "BlueModel"
blueE.Name = "BlueVFX"


uis.InputBegan:Connect(function(Key, gpe) 
  if gpe then end
  if Key.KeyCode == Enum.KeyCode.P then 
    hum.Health = hum.MaxHealth
  end
  if Key.KeyCode == Enum.KeyCode.E then
    local redC = redM:Clone()
    for 0, 300:
    redC.CFrame = redC.CFrame + Vector3.new(0.1, 0.1, 0.1)
  end
end)

hum.StateChanged:Connect(function(_oldState, newState)
	if newState == Enum.HumanoidStateType.Dead then
    hum:ChangeState(Enum.HumanoidStateType.None)
  end
end)
