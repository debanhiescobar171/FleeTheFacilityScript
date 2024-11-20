local player = game.Players.LocalPlayer
local humanoid = player.Character:WaitForChild("Humanoid")

local function multiJump()
    humanoid.JumpPower = 50
end

local function esp()
    for _, v in pairs(game.Workspace:GetChildren()) do
        if v:IsA("Model") and v:FindFirstChild("Humanoid") then
            local espBox = Instance.new("BoxHandleAdornment")
            espBox.Size = v.HumanoidRootPart.Size
            espBox.Adornee = v.HumanoidRootPart
            espBox.Color3 = Color3.new(0, 1, 0)
            espBox.AlwaysOnTop = true
            espBox.Transparency = 0.5
            espBox.Parent = v
        end
    end
end

local function changeSpeed(newSpeed)
    humanoid.WalkSpeed = newSpeed
end

local function teleportToComputer(computer)
    if computer and computer:IsA("Model") then
        player.Character.HumanoidRootPart.CFrame = computer.PrimaryPart.CFrame
    end
end

-- Example usage
multiJump()
esp()
changeSpeed(20)
