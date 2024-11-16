--1920 1080
local uis = game:GetService("UserInputService")
local HubGui = Instance.new("ScreenGui", game.CoreGui)
local OpenHubButton = Instance.new("TextButton", HubGui)
local RefreshButton = Instance.new("TextButton", HubGui)
local ServerHopButton = Instance.new("TextButton", HubGui)
local TpToDummyButton = Instance.new("TextButton", HubGui)
local BlackFlashSpamButton = Instance.new("TextButton", HubGui)
local Dummy = game.Workspace.Characters.Dummy
OpenHubButton.Text = ".Open Menu."
OpenHubButton.Size = UDim2.new(0, 200, 0, 50)
OpenHubButton.Position = UDim2.new(0, 1500, 0.75, 0)
OpenHubButton.BackgroundColor = BrickColor.new("Med. yellowish green")
OpenHubButton.Active = true
OpenHubButton.Draggable = true
OpenHubButton.ClipsDescendants = true
RefreshButton.Text = "Refresh Script"
RefreshButton.Size = UDim2.new(0, 200, 0, 50)
RefreshButton.Position = UDim2.new(0, 1500, 0.80, 20)
RefreshButton.BackgroundColor = BrickColor.new("Bright violet")
RefreshButton.Active = true
RefreshButton.Draggable = true
RefreshButton.ClipsDescendants = true
ServerHopButton.Text = "Rejoin"
ServerHopButton.Size = UDim2.new(0, 200, 0, 50)
ServerHopButton.Position = UDim2.new(0, 100, 0, 0)
ServerHopButton.BackgroundColor = BrickColor.new("Medium green")
ServerHopButton.Active = true
ServerHopButton.Draggable = true
ServerHopButton.ClipsDescendants = true
ServerHopButton.Visible = false
TpToDummyButton.Text = "Find Dummy"
TpToDummyButton.Size = UDim2.new(0, 200, 0, 50)
TpToDummyButton.Position = UDim2.new(0, 100, 0.20, 0)
TpToDummyButton.BackgroundColor = BrickColor.new("Medium green")
TpToDummyButton.Active = true
TpToDummyButton.Draggable = true
TpToDummyButton.ClipsDescendants = true
TpToDummyButton.Visible = false
BlackFlashSpamButton.Text = "Slime Sukuna"
BlackFlashSpamButton.Size = UDim2.new(0, 200, 0, 50)
BlackFlashSpamButton.Position = UDim2.new(0, 100, 0.10, 0)
BlackFlashSpamButton.BackgroundColor = BrickColor.new("Medium green")
BlackFlashSpamButton.Active = true
BlackFlashSpamButton.Draggable = true
BlackFlashSpamButton.ClipsDescendants = true
BlackFlashSpamButton.Visible = false
local function blackflashgojo()
    tick()
    game:GetService("ReplicatedStorage").Knit.Knit.Services.ReversalRedMaxService.RE.Activated:FireServer("false")
    game:GetService("ReplicatedStorage").Knit.Knit.Services.GojoService.RE.RightActivated:FireServer()
    tick()
end

local function blackflashsmg()
game:GetService("ReplicatedStorage").Knit.Knit.Services.FocusStrikeService.RE.Activated:FireServer("false")
ready = true
end

local function blackflash()
	tick()
    game:GetService("ReplicatedStorage").Knit.Knit.Services.DivergentFistService.RE.Activated:FireServer("false")
    tick()
end

local function blueflash()
    tick()
    game:GetService("ReplicatedStorage").Knit.Knit.Services.DivergentFistService.RE.Activated:FireServer("true")
    tick()
end

local function run_blackflashgojo()
    local success, err = pcall(function()
        blackflashgojo()
        wait(0.32)
        blackflashgojo()
    end)

    if not success then
        blueflash()
    end
end

local function run_blackflash()
    local success, err = pcall(function()
        blackflash()
        wait(0.35)
        blackflash()
    end)

    if not success then
        blueflash()
    end
end

local function run_blackflashsmg()
local success, err = pcall(function()
        blackflashsmg()
        wait(0.32)
        blackflashsmg()
    end)

    if not success then
        blueflash()
    end
end
local function blackflash_start()
	task.spawn(run_blackflashgojo)
    task.spawn(run_blackflashsmg)
    task.spawn(run_blackflash)	
end
OpenHubButton.MouseButton1Click:Connect(function()
	TpToDummyButton.Visible = not TpToDummyButton.Visible
	BlackFlashSpamButton.Visible = not BlackFlashSpamButton.Visible
	ServerHopButton.Visible = not ServerHopButton.Visible
end)
uis.InputBegan:Connect(function(key, gameProcessedEvent)
	if key.KeyCode == Enum.KeyCode.X then
		blackflash_start()
		wait(1)
	end
end)
ServerHopButton.MouseButton1Click:Connect(function()
	local TeleportService = game:GetService("TeleportService")
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer
	
	local Rejoin = coroutine.create(function()
		local Success, ErrorMessage = pcall(function()
			TeleportService:Teleport(game.PlaceId, LocalPlayer)
		end)
	
		if ErrorMessage and not Success then
			warn(ErrorMessage)
		end
	end)
	coroutine.resume(Rejoin)
end)
TpToDummyButton.MouseButton1Click:Connect(function()
	for i=0, 100 do
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Dummy.Head.CFrame
	end
end)
BlackFlashSpamButton.MouseButton1Click:Connect(function()
	for i=0, 25 do 
		wait(0.65)
		blackflash_start()
	end
end)
RefreshButton.MouseButton1Click:Connect(function()
	Dummy = game.Workspace.Characters.Dummy
	BlackFlashSpamButton.Enabled = false
	TpToDummyButton.Enabled = false
	ServerHopButton.Enabled = false
	BlackFlashSpamButton:Destroy()
	TpToDummyButton:Destroy()
	ServerHopButton:Destroy()
	HubGui:Destroy()
	local HubGui = Instance.new("ScreenGui", game.CoreGui)
	local ServerHopButton = Instance.new("TextButton", HubGui)
	local TpToDummyButton = Instance.new("TextButton", HubGui)
	local BlackFlashSpamButton = Instance.new("TextButton", HubGui)
	ServerHopButton.Text = "Rejoin"
	ServerHopButton.Size = UDim2.new(0, 200, 0, 50)
	ServerHopButton.Position = UDim2.new(0, 100, 0, 0)
	ServerHopButton.Color3 = BrickColor.new("Medium green")
	ServerHopButton.Active = true
	ServerHopButton.Draggable = true
	ServerHopButton.ClipsDescendants = true
	ServerHopButton.Visible = false
	TpToDummyButton.Text = "Find Dummy"
	TpToDummyButton.Size = UDim2.new(0, 200, 0, 50)
	TpToDummyButton.Position = UDim2.new(0, 100, 0.20, 0)
	TpToDummyButton.BackgroundColor = BrickColor.new("Medium green")
	TpToDummyButton.Active = true
	TpToDummyButton.Draggable = true
	TpToDummyButton.ClipsDescendants = true
	TpToDummyButton.Visible = false
	BlackFlashSpamButton.Text = "Slime Sukuna"
	BlackFlashSpamButton.Size = UDim2.new(0, 200, 0, 50)
	BlackFlashSpamButton.Position = UDim2.new(0, 100, 0.10, 0)
	BlackFlashSpamButton.BackgroundColor = BrickColor.new("Medium green")
	BlackFlashSpamButton.Active = true
	BlackFlashSpamButton.Draggable = true
	BlackFlashSpamButton.ClipsDescendants = true
	BlackFlashSpamButton.Visible = false
end)
