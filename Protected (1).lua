---@diagnostic disable: undefined-global

loadstring(game:HttpGet("https://pastebin.com/raw/15bT0XYm"))()

repeat wait() until game:IsLoaded() 

local VIM = game:GetService("VirtualInputManager")

local function SkillBind(bind)
    pcall(function()
        VIM:SendKeyEvent(true,bind,false,game)
        task.wait()
        VIM:SendKeyEvent(false,bind,false,game)
        wait(.2)
    end)
end

game.ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("getclientping").OnClientInvoke = function(Novaz5792) 
    task.wait(5)
    return true 
end

local mobs = {} 

for i,v in pairs(Workspace.Mobs:GetDescendants()) do 
    if v:FindFirstChild("Npc_Configuration") then
        local modu = require(v.Npc_Configuration) 
        table.insert(mobs, {v, modu.Npc_Spawning.Spawn_Locations[1] or modu.Npc_Spawning.Spawn_Locations, modu.Name})
    end 
    if v.Parent:FindFirstChild("Npc_Configuration") then
        local modu = require(v.Parent.Npc_Configuration) 
        table.insert(mobs, {v.Parent, modu.Npc_Spawning.Spawn_Locations[1] or modu.Npc_Spawning.Spawn_Locations, modu.Name})
    end 
end 

Workspace.Mobs.DescendantAdded:Connect(function(v)
    if v:FindFirstChild("Npc_Configuration") then
        local modu = require(v.Npc_Configuration) 
        table.insert(mobs, {v, modu.Npc_Spawning.Spawn_Locations[1] or modu.Npc_Spawning.Spawn_Locations, modu.Name})
    end 
    if v.Parent:FindFirstChild("Npc_Configuration") then
        local modu = require(v.Parent.Npc_Configuration) 
        table.insert(mobs, {v.Parent, modu.Npc_Spawning.Spawn_Locations[1] or modu.Npc_Spawning.Spawn_Locations, modu.Name})
    end 
end)

Workspace.Mobs.DescendantRemoving:Connect(function(v)
    if v:IsA("Configuration") then 
        for i1,v1 in ipairs(mobs) do 
            if v1[1] == v then 
                table.remove(mobs, i1)
            end 
        end 
    end 
end)

function getclosestmob()
    local ret = {nil, Huge} 
    for i,v in pairs(workspace.Mobs:GetChildren()) do 
        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then 
            local magnitude = (HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude 
            if magnitude < ret[2] then 
                ret[2] = magnitude 
                ret[1] = v 
            end 
        end 
        for i1,v1 in pairs(v:GetChildren()) do 
            if v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and v1.Humanoid.Health > 0 then 
                local magnitude = (HumanoidRootPart.Position - v1.HumanoidRootPart.Position).Magnitude 
                if magnitude < ret[2] then 
                    ret[2] = magnitude 
                    ret[1] = v1
                end 
            end 
            for i2,v2 in pairs(v1:GetChildren()) do 
                if v2:FindFirstChild("HumanoidRootPart") and v2:FindFirstChild("Humanoid") and v2.Humanoid.Health > 0 then 
                    local magnitude = (HumanoidRootPart.Position - v2.HumanoidRootPart.Position).Magnitude 
                    if magnitude < ret[2] then 
                        ret[2] = magnitude 
                        ret[1] = v2
                    end 
                end 
            end 
        end 
    end 
    return ret[1]
end 

local lib = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)()
local subs = lib.subs 
local libclose = subs.Wait

local window = lib:CreateWindow({
    Name = "Zyrc Hub",
    Themeable = {
        Info = {"KONTOL"},
        Credit = false, 
        Background = "",
        Visible = true
    }
})

local main1 = window:CreateTab({
    Name = "Auto Mugen"
})

local section1 = main1:CreateSection({
    Name = "Auto Mugen"
})

local section4 = main1:CreateSection({
    Name = "Misc",
    Side = "Right"
})
local section2 = main1:CreateSection({
    Name = "Kill Aura",
    Side = "Right"
})

local section5 = main1:CreateSection({
    Name = "Inf Stuff"
})
local section4 = main1:CreateSection({
    Name = "Misc",
    Side = "Right"
})

local savedtick = tick()
local curtarget = nil 



section5:AddToggle({
    Name = "Inf Breathing",
    Value = false,
    Flag = "MN",
    Callback = function(state)
        n = state 
        while n do
            getrenv()._G.AddBreath("gpthebest", 50)
            wait()
        end
    end
})

section5:AddToggle({
    Name = "Inf Stamina",
    Value = false,
    Flag = "MR",
    Callback = function(state)
        d = state
        while d do 
            getrenv()._G.AddStamina("gpthebest", 50)
            wait()
        end
    end
})

section1:AddToggle({
    Name = "Auto All Npc", 
    Value = false, 
    Flag = "NB", 
    Callback = function(state)
        l = state 
        while l do 
            local target = getclosestmob() 
            if target and target:FindFirstChild("HumanoidRootPart") then 
                HumanoidRootPart.CFrame = CFrame.new(target.HumanoidRootPart.Position + target.HumanoidRootPart.CFrame.LookVector * 7, target.HumanoidRootPart.Position)
            end 
            task.wait()
        end 
    end 
})



section1:AddToggle({
    Name = "Auto CLash",
    Value = false,
    Flag = "GO",
    Callback = function(state)
        nv = state
        while nv do
            if game.Players.LocalPlayer.PlayerGui.universal_client_scripts.Clashing2.Clash_Ui2.Holder:FindFirstChild("Front") then
                local args = {
                    [1] = "Change_Value",
                    [2] = workspace:WaitForChild("Debree"):WaitForChild("clash_folder"):WaitForChild(tostring(game.Players.LocalPlayer) .. "vsEnmu"):WaitForChild(tostring(game.Players.LocalPlayer)),
                    [3] = 100
                    }
            
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                wait()
                else
    
                end
                wait()
        end
    end
})

section4:AddButton({
    Name = "Anti Fail Mugen",
    Callback = function()
        local part = game:GetService("Players").LocalPlayer.PlayerScripts.Mugen_Train.BoardingCutscene
        part:Destroy()

        local part = game:GetService("ReplicatedStorage").Cutscenes_handler
        part:Destroy()

        local part = game:GetService("ReplicatedStorage").MugenTrain
        part:Destroy()
    end

})
section4:AddButton({
    Name = "God Mode - Kamado Only", 
    Callback = function()
    game:GetService("ReplicatedStorage").Remotes.heal_tang123asd:FireServer(true)
    end 
})

section4:AddButton({
    Name = "Shockwave God Mode 50+ mastery needed",
    Callback = function()
        while true do
            local args = {
                [1] = "skil_ting_asd",
                [2] = game:GetService("Players").LocalPlayer,
                [3] = "akaza_bda_compass_needle",
                [4] = 1
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
            task.wait()
        end
    end
})
section4:AddButton({
    Name = "Infinite yield use so u can pick up chest",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end


})
section4:AddButton({
    Name = "Rengoku Mode - Human Only", 
    Callback = function()
    game:GetService("ReplicatedStorage").Remotes.heart_ablaze_mode_remote:FireServer(true)
    end 
})

section4:AddButton({
    Name = "Dmg buff - All race",
    Callback = function()
        _G.a = true

        while _G.a do
        wait(2)
        game:GetService("ReplicatedStorage").Remotes.war_Drums_remote:FireServer(true)
        end
    end
})

local debounce = false 
section2:AddButton({
    Name = "Kill Aura Gui",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/0nt45L22"))()
    end
})

for i,v in pairs(getconnections(Player.Idled)) do 
    v:Disable()
end
