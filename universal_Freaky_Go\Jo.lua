local uis = game:GetService("UserInputService")
local rs = game.ReplicatedStorage
local script_rs_folder = Instance.new("Folder", rs)
local char = game.Players.LocalPlayer.Character
local hum = char.Humanoid
hum.MaxHealt = 1000
hum.Health = hum.MaxHealth
script_rs_folder.Name = "Go/Jo_Freak_Script"
local redF = Instance.new("Folder", script_rs_folder)
local blueF = Instance.new("Folder", script_rs_folder)

local humanoidRP = char.HumanoidRootPart
local redM = Instance.new("Part", redF)
local redE = Instance.new("Particle", redF)
local blueM = Instance.new("Part", blueF)
local blueE = Instance.new("Particle", blueF)
hum.DisplayName = "Go/Jo"
redM.Name = "RedModel"
redE.Name = "RedVFX"



uis.InputBegan:Connect(function(Key, gpe) 
  if gpe then end
  if Key.KeyCode == Enum.KeyCode.E then 
      
  end
end)
