
if not LPH_OBFUSCATED then
    LPH_JIT_MAX = function(...) return(...) end;
    LPH_NO_VIRTUALIZE = function(...) return(...) end;
end

LPH_NO_VIRTUALIZE(function()
    local library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)()
    local Wait = library.subs.Wait -- Only returns if the GUI has not been terminated. For 'while Wait() do' loops
    local GramxProjectFloat = tostring(math.random(0, 100000))
    local TweenFloatVelocity = Vector3.new(0,0,0)

    local function notify(title, text, duration)
        game.StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = text; 
        Icon = "rbxassetid://13677269062"; 
        Duration = duration; 
        })
    end




    local BossessTable = {"Sabito", "Susamaru", "Zanegutsu Kuuchie", "Yahaba", "Bandit Kaden", "Bandit Zoku", "Shiron", "Nezuko", "Giyu", "Sanemi", "Slasher", "Nomay Bandit Boss", "Rengoku", "Inosuke","Renpeke","Muichiro Tokito","Enme","Swampy","Akeza", "Enmu", "Flesh Monster", "Akaza", "Douma", "Snow_Trainee", "Sound_Trainee", "Tengen"}



    local TrainersCF = {
        ["Flame Trainer"] = CFrame.new(-330, 602, -545),
        ["Mist Trainer"] = CFrame.new(4323, 677, -724),
        ["Beast Trainer"] = CFrame.new(1621, 300, -415),
        ["Water Trainer"] = CFrame.new(705.209229, 261.426819, -2409.51587, -0.566798735, -5.48522401e-08, -0.641887605, -7.38932258e-08, 1, 2.8182352e-09, 0.641887605, 4.95921633e-08, -0.566798735),
        ["Insect Trainer"] = CFrame.new(2873.81177, 316.95871, -3917.9397, 0.40715313, 4.81208531e-08, 0.91335988, -8.85969982e-08, 1, -1.31911939e-08, -0.91335988, -7.55501048e-08, 0.40715313),
        ["Thunder Trainer"] = CFrame.new(-322.369507, 426.857788, -2384.4021, 0.361198723, -4.49157973e-08, -0.932488859, 1.14233451e-07, 1, -3.91942434e-09, 0.932488859, -1.05105727e-07, 0.361198723),
        ["Wind Trainer"] = CFrame.new(1792.31458, 334.338989, -3521.31104, 0.862527311, -5.19402583e-08, -0.506010473, 8.30083167e-08, 1, 3.88463874e-08, 0.506010473, -7.55091492e-08, 0.862527311)
    }

    local Villages = {
        ["Frozen Lake"] = CFrame.new(2703, 675, -701),
        ["Nomway Village"] = CFrame.new(3562, 673, -2109),
        ["Wop City"] = CFrame.new(-31, 601, -431),
        ["Dungeon"] = CFrame.new(-146, 611, -498),
        ["Demon Cave 1"] = CFrame.new(4222, 674, 582),
        ["Tsune Village"] = CFrame.new(1214, 569, 77),
        ["Akaza Cave"] = CFrame.new(1933, 556, -142),
        ["Wop Training Grounds"] = CFrame.new(224, 597, 483),
        ["Mugan Train"] = CFrame.new(733, 500, 1056),
        ["Demon Cave 2"] = CFrame.new(1183, 487, -1192),
        ["Zapiwara Mountain"] = CFrame.new(-365.617981, 425.857422, -2303.92285, -0.351566792, -6.70503529e-13, 0.93616277, 9.77098068e-13, 1, 1.08316502e-12, -0.93616277, 1.2955277e-12, -0.351566792),
        ["Waroru Cave"] = CFrame.new(683.164062, 261.426819, -2401.41797, 0.137014925, -3.46316149e-08, 0.990568995, 6.38769482e-09, 1, 3.4077793e-08, -0.990568995, 1.65828595e-09, 0.137014925),
        ["Slasher Demon"] = CFrame.new(-485.866608, 274.511871, -3314.98169, -0.79503566, -1.09233929e-08, -0.606562674, 1.19430055e-09, 1, -1.95740775e-08, 0.606562674, -1.62865081e-08, -0.79503566),
        ["Ushumaru Village"] = CFrame.new(-90.0373688, 354.723511, -3170.00439, 0.817297578, -1.0121405e-08, 0.576215804, 3.12666586e-08, 1, -2.6782951e-08, -0.576215804, 3.99059843e-08, 0.817297578),
        ["Ouwbayashi Home"] = CFrame.new(1593.49072, 315.983917, -4618.15088, -0.795035839, -1.09234e-08, -0.606562734, 1.19429622e-09, 1, -1.95740828e-08, 0.606562734, -1.62865081e-08, -0.795035839),
        ["Kabiwaru Village"] = CFrame.new(2037.20203, 315.908813, -2956.77539, -0.795035839, -1.09234e-08, -0.606562734, 1.19429622e-09, 1, -1.95740828e-08, 0.606562734, -1.62865081e-08, -0.795035839),
        ["Zapiwara Cave"] = CFrame.new(-8.2838707, 275.944641, -2414.72607, -0.795035779, -1.09233964e-08, -0.606562555, 1.19429289e-09, 1, -1.95740775e-08, 0.606562555, -1.62865046e-08, -0.795035779),
        ["Dangerous Woods"] = CFrame.new(4061.43677, 342.289581, -3928.90332, -0.795035839, -1.09233973e-08, -0.606562614, 1.19429444e-09, 1, -1.95740775e-08, 0.606562614, -1.62865064e-08, -0.795035839),
        ["Final Selection"] = CFrame.new(5200.76709, 365.949982, -2425.61646, -0.795035779, -1.09233964e-08, -0.606562555, 1.19429289e-09, 1, -1.95740775e-08, 0.606562555, -1.62865046e-08, -0.795035779),
        ["Kiribating Village"] = CFrame.new(-40.3280869, 282.282745, -1623.75159, -0.795035839, -1.09233991e-08, -0.606562614, 1.19429266e-09, 1, -1.95740792e-08, 0.606562614, -1.62865046e-08, -0.795035839),
        ["Butterfly Mansion"] = CFrame.new(3022.90869, 316.075623, -3928.17261, -0.795035779, -1.09233982e-08, -0.606562555, 1.19429144e-09, 1, -1.95740775e-08, 0.606562555, -1.62865046e-08, -0.795035779),
        ["Abubu Cave"] = CFrame.new(1044.44873, 276.190704, -3483.0647, -0.795035839, -1.09233991e-08, -0.606562614, 1.19429266e-09, 1, -1.95740792e-08, 0.606562614, -1.62865046e-08, -0.795035839),
    }



    local Aegeus =
        library:CreateWindow(
        {
            Name = ".gg/losthub",
            Themeable = {
                Info = "discord.gg/losthub (UI by Pepsi)",
                Image = "rbxassetid://13666061205",
                Credit = false,
                Background = "rbxassetid://13666061205"
            }
        }
    )

    local GeneralTab =
        Aegeus:CreateTab(
        {
            Name = "General"
        }
    )

    local Skills =
        Aegeus:CreateTab(
            {
                Name = "Auto-Skills"
            }
        )

    local Configuration =
        Skills:CreateSection(
            {
                Name = "Configuration",
                Side = "Left"
            }
        )

    local AutoSkills =
        Skills:CreateSection(
            {
                Name = "Auto-Skill",
                Side = "Right"
            }
        )

    AutoSkills:CreateToggle(
        {
            Name = "Auto-Skill",
            Flag = "ASK",
            Keybind = false,
            Callback = function(v)
                getgenv().AutoUseSkills = v
                print(getgenv().AutoUseSkills)
            end
        }
    )

    AutoSkills:CreateToggle(
        {
            Name = "Move 1",
            Flag = "M1",
            Keybind = false,
            Callback = function(v)
                getgenv().AutoOne = v
                print(getgenv().AutoOne)
            end
        }
    )

    AutoSkills:CreateToggle(
        {
            Name = "Move 2",
            Flag = "M2",
            Keybind = false,
            Callback = function(v)
                getgenv().AutoTwo = v
                print(getgenv().AutoTwo)
            end
        }
    )
    AutoSkills:CreateToggle(
        {
            Name = "Move 3",
            Flag = "M3",
            Keybind = false,
            Callback = function(v)
                getgenv().AutoThree = v
                print(getgenv().AutoThree)
            end
        }
    )
    AutoSkills:CreateToggle(
        {
            Name = "Move 4",
            Flag = "M4",
            Keybind = false,
            Callback = function(v)
                getgenv().AutoFour = v
                print(getgenv().AutoFour)
            end
        }
    )
    AutoSkills:CreateToggle(
        {
            Name = "Move 5",
            Flag = "M5",
            Keybind = false,
            Callback = function(v)
                getgenv().AutoFive = v
                print(getgenv().AutoFive)
            end
        }
    )
    AutoSkills:CreateToggle(
        {
            Name = "Move 6",
            Flag = "M6",
            Keybind = false,
            Callback = function(v)
                getgenv().AutoSix = v
                print(getgenv().AutoSix)
            end
        }
    )

    Configuration:AddDropdown(
        {
            Name = "Key 1",
            Flag = "K1",
            List = {"Z", "X", "C", "V", "B", "E", "Q", "K", "J", "R", "T", "Y"},
            Callback = function(v)
                getgenv().KeyOne = v
                print(getgenv().KeyOne)
            end
        }
    )

    Configuration:AddDropdown(
        {
            Name = "Key 2",
            Flag = "K2",
            List = {"Z", "X", "C", "V", "B", "E", "Q", "K", "J", "R", "T", "Y"},
            Callback = function(v)
                getgenv().KeyTwo = v
                print(getgenv().KeyTwo)
            end
        }
    )
    Configuration:AddDropdown(
        {
            Name = "Key 3",
            Flag = "K3",
            List = {"Z", "X", "C", "V", "B", "E", "Q", "K", "J", "R", "T", "Y"},
            Callback = function(v)
                getgenv().KeyThree = v
            end
        }
    )
    Configuration:AddDropdown(
        {
            Name = "Key 4",
            Flag = "K4",
            List = {"Z", "X", "C", "V", "B", "E", "Q", "K", "J", "R", "T", "Y"},
            Callback = function(v)
                getgenv().KeyFour = v
            end
        }
    )
    Configuration:AddDropdown(
        {
            Name = "Key 5",
            Flag = "K5",
            List = {"Z", "X", "C", "V", "B", "E", "Q", "K", "J", "R", "T", "Y"},
            Callback = function(v)
                getgenv().KeyFive = v
                print(getgenv().KeyFive)
            end
        }
    )
    Configuration:AddDropdown(
        {
            Name = "Key 6",
            Flag = "K6",
            List = {"Z", "X", "C", "V", "B", "E", "Q", "K", "J", "R", "T", "Y"},
            Callback = function(v)
                getgenv().KeySix = v
                print(getgenv().KeySix)
            end
        }
    )


    local MugenSection =
        GeneralTab:CreateSection(
        {
            Name = "Mugen"
        }
    )

    local FarmingSection =
        GeneralTab:CreateSection(
        {
            Name = "Farming"
        }
    )


    local Teleportation =
        Aegeus:CreateTab(
        {
            Name = "Teleportation"
        }
    )
    local SecondMap =
        Teleportation:CreateSection(
            {
                Name = "Map 1 *Must Own Location"
            }
        )

    SecondMap:AddButton(
        {
            Name = "Kiribating Village",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Kiribating Village"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )



    local FarmAllBosses = false
    local FarmAll =
        FarmingSection:AddToggle(
        {
            Name = "Farm",
            Flag = "FARMBOSSES",
            Keybind = false,
            Callback = function()
            if FarmAllBosses then
                    FarmAllBosses = false
                    print(FarmAllBosses)
            else
                    FarmAllBosses = true
                    print(FarmAllBosses)
            end
            end
        }
    )

    FarmingSection:AddDropdown(
        {
            Name = "Target",
            Flag = "Target",
            List = {" ", "All Bosses", "All Mobs", "Mugen Mode"},
            Callback = function(v)
                getgenv().TargetOfFarm = v
            end
        }
    )

    FarmingSection:AddSlider(
        {
            Name = "Tween Speed",
            Flag = "TSP",
            Min = 1,
            Max = 700,
            Callback = function(v)
                getgenv().tweenspeed = v
            end
        }
    )

    FarmingSection:AddSlider(
        {
            Name = "Farming Distance",
            Flag = "FD",
            Min = 5,
            Max = 20,
            Callback = function(v)
                getgenv().Distance = v
            end
        }
    )

    getgenv().FarmMethod = ""
    FarmingSection:AddDropdown(
        {
            Name = "Method (behind recommended)",
            Flag = "Method",
            List = {" ", "Above", "Below", "Behind"},
            Callback = function(Value)
                getgenv().FarmMethod = Value
                print(getgenv().FarmMethod)
            end
        }
    )

    local killaura = false
    FarmingSection:AddToggle(
        {
            Name = "Kill Aura",
            Flag = "KA",
            Keybind = false,
            Callback = function()
            if killaura then
                    killaura = false
            else
                    killaura = true
            end
            end
        }
    )


    getgenv().KAMethod = ""
    FarmingSection:AddDropdown(
        {
            Name = "Method",
            Flag = "KAM",
            List = {"Fists", "Claw", "Scythe", "Fans", "Sword"},
            Callback = function(Value)
                getgenv().KAMethod = Value
                print(getgenv().KAMethod)
            end
        }
    )



    getgenv().amongus = false
    local autoblock = false
    FarmingSection:AddToggle(
        {
            Name = "Auto-Block",
            Flag = "AB",
            Callback = function(v)
                autoblock = v
                getgenv().amongus = true

            end
        }
    )


    getgenv().AutoOne = false
    getgenv().AutoTwo = false
    getgenv().AutoThree = false
    getgenv().AutoFour = false
    getgenv().AutoFive = false
    getgenv().AutoSix = false
    local VIM = game:GetService('VirtualInputManager')
    local function SkillBind(bind)
        pcall(function()
            VIM:SendKeyEvent(true,bind,false,game)
            task.wait()
            VIM:SendKeyEvent(false,bind,false,game)
            wait(.2)
        end)
    end

    local UsingSkill = false



    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                pcall(function()
                    if AutoUseSkills and getgenv().AutoOne and not UsingSkill then
                        for i = 1, 7 do
                            UsingSkill = true
                            SkillBind(getgenv().KeyOne)
                        end              
                        UsingSkill = false
                    end
                end)
            end
        end)
    end)()


    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                pcall(function()
                    if AutoUseSkills and getgenv().AutoTwo and not UsingSkill then
                        for i = 1,7 do
                            UsingSkill = true
                            SkillBind(getgenv().KeyTwo)
                        end              
                        UsingSkill = false
                    end
                end)
            end
        end)
    end)()


    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                pcall(function()
                    if AutoUseSkills and getgenv().AutoThree and not UsingSkill then
                        for i = 1,7 do
                            UsingSkill = true
                            SkillBind(getgenv().KeyThree)
                        end              
                        UsingSkill = false
                    end
                end)
            end
        end)
    end)()



    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                pcall(function()
                    if AutoUseSkills and getgenv().AutoFour and not UsingSkill then
                        for i = 1,7 do
                            UsingSkill = true
                            SkillBind(getgenv().KeyFour)
                        end              
                        UsingSkill = false
                    end
                end)
            end
        end)
    end)()




    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                pcall(function()
                    if AutoUseSkills and getgenv().AutoFive and not UsingSkill then
                        for i = 1,7 do
                            UsingSkill = true
                            SkillBind(getgenv().KeyFive)
                        end              
                        UsingSkill = false
                    end
                end)
            end
        end)
    end)()


    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                pcall(function()
                    if AutoUseSkills and getgenv().AutoSix and not UsingSkill then
                        for i = 1,7 do
                            UsingSkill = true
                            SkillBind(getgenv().KeySix)
                        end              
                        UsingSkill = false
                    end
                end)
            end
        end)
    end)()



    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                if getgenv().amongus then
                    if autoblock then
                        local args = {
                            [1] = "add_blocking",
                            [2] = "Players.LocalPlayer.PlayerScripts.Skills_Modules.Combat.Combat//Block",
                            [3] = 31621.2309201,
                            [4] = game:GetService("ReplicatedStorage"):WaitForChild("PlayerValues"):WaitForChild(game:GetService("Players").LocalPlayer.Name),
                            [5] = 1
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                        getgenv().amongus = false
                    elseif not autoblock then
                        local args = {
                            [1] = "remove_blocking",
                            [2] = game:GetService("ReplicatedStorage"):WaitForChild("PlayerValues"):WaitForChild(game:GetService("Players").LocalPlayer.Name)
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S_"):InvokeServer(unpack(args))      
                        getgenv().amongus = false      
                    end
                end
            end
        end)
    end)()


    SecondMap:AddButton(
        {
            Name = "Zapiwara Cave",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Zapiwara Cave"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    SecondMap:AddButton(
        {
            Name = "Butterfly Mansion",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Butterfly Mension"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    SecondMap:AddButton(
        {
            Name = "Zapiwara Mountain",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Zapiwara Mountain"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    SecondMap:AddButton(
        {
            Name = "Ushumaru Village",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Ushumaru Village"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    SecondMap:AddButton(
        {
            Name = "Waroru Cave",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Waroru Cave"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    SecondMap:AddButton(
        {
            Name = "Kabiwaru Village",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Kabiwaru Village"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    SecondMap:AddButton(
        {
            Name = "Abubu Cave",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Abubu Cave"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    SecondMap:AddButton(
        {
            Name = "Final Selection",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Final Selection"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    SecondMap:AddButton(
        {
            Name = "Ouwbayashi Home",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Ouwbayashi Home"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    SecondMap:AddButton(
        {
            Name = "Wind Trainer",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Wind Trainer"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    SecondMap:AddButton(
        {
            Name = "Dangerous Woods",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Dangerous Woods"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    SecondMap:AddButton(
        {
            Name = "Slasher Demon",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Slasher Demon"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    SecondMap:AddButton(
        {
            Name = "Dungeon",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Dungeon"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    local FirstMap =
        Teleportation:CreateSection(
        {
            Name = "Map 2 **Must Own Location",
            Side = "Right"
        }
    )

    FirstMap:AddButton(
        {
            Name = "Nomay Village",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Nomay Village"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    FirstMap:AddButton(
        {
            Name = "Cave 1",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Cave 1"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    FirstMap:AddButton(
        {
            Name = "Frozen Lake",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Frozen Lake"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    FirstMap:AddButton(
        {
            Name = "Village 2",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Village 2"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    FirstMap:AddButton(
        {
            Name = "Mist Trainer",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Mist trainer location"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    FirstMap:AddButton(
        {
            Name = "Wop's Training Grounds",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Wop's training grounds"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )

    FirstMap:AddButton(
        {
            Name = "Beast Cave",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Beast Cave"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    FirstMap:AddButton(
        {
            Name = "Wop City",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Wop City"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    FirstMap:AddButton(
        {
            Name = "Mugen Train Station",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Mugen Train Station"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )

    FirstMap:AddButton(
        {
            Name = "Akaza Cave",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Akeza Cave"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )

    FirstMap:AddButton(
        {
            Name = "Cave 2",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Cave 2"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )

    FirstMap:AddButton(
        {
            Name = "Sound Cave",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Sound Cave"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    FirstMap:AddButton(
        {
            Name = "Snowy Place",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Snowy Place"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )
    FirstMap:AddButton(
        {
            Name = "Devourers Jaw",
            Callback = function()
                local args = {
                    [1] = "Players.mibkewjr62974.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript",
                    [2] = 200874.60807299937,
                    [3] = "Devourers Jaw"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("teleport_player_to_location_for_map_tang"):InvokeServer(unpack(args))
            end
        }
    )




    local Economy = 
        GeneralTab:CreateSection(
        {
            Name = "Economy",
            Side = "Right"
        }
    )

    local DungeonSection = 
        GeneralTab:CreateSection(
        {
            Name = "Dungeon Section",
            Side = "Right"
        }
    )
    local GodModes = 
        GeneralTab:CreateSection(
        {
            Name = "Modes",
            Side = "Right"
        }
    )

    DungeonSection:AddLabel(
        {
            Text = "Set Kill Aura to All Mobs"
        }
    )

    DungeonSection:AddButton(
        {
            Name = "No Block Mobs",
            Callback = function()
                game.Workspace.Mobs.DescendantAdded:Connect(function(c)
                    if c.Name == "Blocking" then 
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer("remove_blocking",c.Parent)
                    end
                end)
            end
        }
    )

    DungeonSection:AddButton(
        {
            Name = "No Stun",
            Callback = function()
                local function nostun()
                    local a = {"KnockedOut", "Stun", "FakeStun", "carry_ting_asdasd", "RagDoll", "novelocity"}
                    for _,o in pairs(getconnections(game:GetService("ReplicatedStorage").PlayerValues[game.Players.LocalPlayer.Name].ChildAdded)) do 
                        o:Disable()
                    end
                    game:GetService("ReplicatedStorage").PlayerValues[game.Players.LocalPlayer.Name].ChildAdded:Connect(function(child)
                        if table.find(a, child.Name) then 
                            child.Name = "FakeStun"
                            child:Destroy()
                        end
                    end)
                end
            end
        }
    )

    getgenv().AmountOf = 16
    Economy:AddSlider(
        {
            Name = "Amount",
            Flag = "ATS",
            Keybind = false,
            Min = 1,
            Max = 600,
            Callback = function(Value)
                getgenv().AmountOf = Value
            end
        }
    )

    getgenv().ITB = ""
    Economy:AddDropdown(
        {
            Name = "Item to Buy",
            Flag = "ItB",
            List = {" ", "Bamboo Fishing Rod", "Fishing Rod", "Feminine Uniform", "Purple Uniform", "Claws", "Lantern"},
            Callback = function(Value)
                getgenv().ITB = Value
            end
        }
    )


    Economy:AddButton(
        {
            Name = "Buy Item",
            Callback = function()
                if getgenv().ITB == "Bamboo Fishing Rod" then
                    local args = {
                        [1] = "buysomething",
                        [2] = game:GetService("Players").LocalPlayer,
                        [3] = "Bamboo Fishing Rod",
                        [4] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(game:GetService("Players").LocalPlayer.Name):WaitForChild("Yen"),
                        [5] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(game:GetService("Players").LocalPlayer.Name):WaitForChild("Inventory")
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                elseif getgenv().ITB == "Fishing Rod" then
                    local args = {
                        [1] = "buysomething",
                        [2] = game:GetService("Players").LocalPlayer,
                        [3] = "Fishing Rod",
                        [4] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(game:GetService("Players").LocalPlayer.Name):WaitForChild("Yen"),
                        [5] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(game:GetService("Players").LocalPlayer.Name):WaitForChild("Inventory")
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                elseif getgenv().ITB == "Feminine Uniform" then
                    local args = {
                        [1] = "buysomething",
                        [2] = game:GetService("Players").LocalPlayer,
                        [3] = "Feminine Uniform",
                        [4] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(game:GetService("Players").LocalPlayer.Name):WaitForChild("Yen"),
                        [5] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(game:GetService("Players").LocalPlayer.Name):WaitForChild("Inventory")
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                elseif getgenv().ITB == "Purple Uniform" then
                    local args = {
                        [1] = "buysomething",
                        [2] = game:GetService("Players").LocalPlayer,
                        [3] = "Purple Uniform",
                        [4] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(game:GetService("Players").LocalPlayer.Name):WaitForChild("Yen"),
                        [5] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(game:GetService("Players").LocalPlayer.Name):WaitForChild("Inventory")
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                elseif getgenv().ITB == "Claws" then
                    local args = {
                        [1] = "buysomething",
                        [2] = game:GetService("Players").LocalPlayer,
                        [3] = "Claws",
                        [4] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(game:GetService("Players").LocalPlayer.Name):WaitForChild("Yen"),
                        [5] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(game:GetService("Players").LocalPlayer.Name):WaitForChild("Inventory")
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                elseif getgenv().ITB == "Lantern" then
                    local args = {
                        [1] = "buysomething",
                        [2] = game:GetService("Players").LocalPlayer,
                        [3] = "Lantern",
                        [4] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(game:GetService("Players").LocalPlayer.Name):WaitForChild("Yen"),
                        [5] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(game:GetService("Players").LocalPlayer.Name):WaitForChild("Inventory")
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))                
                end
            end
        }
    )



    getgenv().TypeOfPot = ""
    Economy:AddDropdown(
        {
            Name = "Type of Pot",
            Flag = "ToP",
            List = {"", "Stamina", "Health", "Regen"},
            Callback = function(Value)
                getgenv().TypeOfPot = Value
            end
        }
    )


    Economy:AddButton(
        {
            Name = "Buy Pots",
            Callback = function()
                if getgenv().TypeOfPot == "Stamina" then
                    local args = {
                        [1] = 0,
                        [2] = getgenv().AmountOf,
                        [3] = 0
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("purchase_elixirs"):FireServer(unpack(args))
                elseif getgenv().TypeOfPot == "Health" then
                    local args = {
                        [1] = getgenv().AmountOf,
                        [2] = 0,
                        [3] = 0
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("purchase_elixirs"):FireServer(unpack(args))
                elseif getgenv().TypeOfPot == "Regen" then
                    local args = {
                        [1] = 0,
                        [2] = 0,
                        [3] = getgenv().AmountOf
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("purchase_elixirs"):FireServer(unpack(args))
                end
            end
        }
    )


    DungeonSection:AddButton(
        {
            Name = "Anti-AFK",
            Callback = function()
                wait(0.5)local ba=Instance.new("ScreenGui")
                local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
                local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
                ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
                ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
                ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,370,0,52)
                ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti AFK Script"ca.TextColor3=Color3.new(0,1,1)
                ca.TextSize=22;da.Parent=ca
                da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
                da.Size=UDim2.new(0,370,0,107)_b.Parent=da
                _b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
                _b.Size=UDim2.new(0,370,0,21)_b.Font=Enum.Font.Arial;_b.Text="made by ur mom "
                _b.TextColor3=Color3.new(0,1,1)_b.TextSize=20;ab.Parent=da
                ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377,0)
                ab.Size=UDim2.new(0,370,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Active"
                ab.TextColor3=Color3.new(0,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
                game:service'Players'.LocalPlayer.Idled:connect(function()
                bb:CaptureController()bb:ClickButton2(Vector2.new())
                ab.Text="Roblox tried to kick u but i kicked him instead"wait(2)ab.Text="Status : Active"end)
            end
        }
    )


    local Miscellaneous = 
        Aegeus:CreateTab(
        {
            Name = "Miscellaneous"
        }
    )

    Progress =
        Miscellaneous:CreateSection(
            {
                Name = "Progress"
            }
        )


    local Misc =
        Miscellaneous:CreateSection(
        {
            Name = "Miscellaneous"
        }
    )

    local Cosmetic =
        Miscellaneous:CreateSection(
            {
                Name = "Cosmetics",
                Side = "Right"
            }
        )

    Misc:AddButton(
    {
        Name = "Reset",
        Callback = function()
            local args = {
                [1] = "Add_Knockedout"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("water_damage"):FireServer()
            wait()
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("water_damage"):FireServer()
            wait()
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("water_damage"):FireServer()
        end
    }
    )


    Misc:AddToggle(
        {
            Name = "No Cooldown Moves",
            Flag = "NCM",
            Callback = function(v)
                getgenv().NoCdMoves = v
            end
        }
    )

    oldindex = hookmetamethod(game, "__index", function(index, value)
        if tostring(index) == "LastUsed" and getgenv().NoCdMoves then
            return 0
        end
        return oldindex(index, value)
    end)

    local ln = game:GetService("Players").LocalPlayer.Name

    Cosmetic:AddButton(
        {
            Name = "White Skin",
            Callback = function()
                local args = {
                    [1] = "Change_Value",
                    [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(ln):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("R"),
                    [3] = 1
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                local args = {
                    [1] = "Change_Value",
                    [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(ln):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("G"),
                    [3] = 1
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                local args = {
                    [1] = "Change_Value",
                    [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(ln):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("B"),
                    [3] = 1
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
            end
        }
    )


    Cosmetic:AddButton(
        {
            Name = "Black Skin",
            Callback = function()
                local args = {
                    [1] = "Change_Value",
                    [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(ln):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("R"),
                    [3] = 0
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                local args = {
                    [1] = "Change_Value",
                    [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(ln):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("G"),
                    [3] = 0
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                local args = {
                    [1] = "Change_Value",
                    [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(ln):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("B"),
                    [3] = 0
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
            end
        }
    )

    Cosmetic:AddButton(
        {
            Name = "Call Crow (removes bird-ui)",
            Callback = function()
                local args = {
                    [1] = "Crow_Spawner",
                    [2] = game:GetService("Players").LocalPlayer,
                    [3] = true
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                notify("Lost Hub", "Dont click on him until this message disappears", 6)
                wait(5)
                game:GetService("Players").LocalPlayer.PlayerGui["universal_client_scripts"]["Chest_Uis"]:FindFirstChild(tostring(game:GetService("Players").LocalPlayer.Name.." 's crow")):Destroy()
                game:GetService("Players").LocalPlayer.PlayerGui["universal_client_scripts"]["Bird_Ui"]:Destroy()
            end
        }
    )

    Cosmetic:AddButton(
        {
            Name = "Send Away Crow",
            Callback = function()
                local args = {
                    [1] = "Crow_Spawner",
                    [2] = game:GetService("Players").LocalPlayer,
                    [3] = false
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
            end
        }
    )


    Misc:AddButton(
        {
            Name = "Rejoin",
            Callback = function()
                local ts = game:GetService("TeleportService")
                ts:Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
            end
        }
    )

    Progress:AddButton(
        {
            Name = "Breathing Progress",
            Callback = function()
                notify("Lost Hub", "Breathing Progress : ".. math.floor((game:GetService("ReplicatedStorage")["Player_Data"][game.Players.LocalPlayer.Name].BreathingProgress[1].Value / game:GetService("ReplicatedStorage")["Player_Data"][game.Players.LocalPlayer.Name].BreathingProgress[2].Value) * 100) .. '%', 3)
            end
        }
    )

    Progress:AddButton(
        {
            Name = "Demon Progress",
            Callback = function()
                notify("Lost Hub", "Demon Progress : ".. math.floor((game:GetService("ReplicatedStorage")["Player_Data"][game.Players.LocalPlayer.Name].DemonProgress[1].Value / game:GetService("ReplicatedStorage")["Player_Data"][game.Players.LocalPlayer.Name].DemonProgress[2].Value) * 100) .. '%', 3)
            end
        }
    )


    Misc:AddButton(
        {
            Name = "Unlock All Title Buffs",
            Callback = function()
                for _, Child in ipairs(game:GetService("Players").LocalPlayer["Player_Titles_List"]:GetChildren()) do
                    if Child.Name ~= "Equipped_Title" then
                        Child.Value = 99999999999
                    end
                end
            end
        }
    )


    Cosmetic:AddButton(
        {
            Name = "Randomize Avatar",
            Callback = function()
                player = game.Players.LocalPlayer.Name
                function numgen(start, stop)
                    local num = math.random(start, stop)
                    return num
                end
                
                function colorgen()
                    local num = math.random()
                    local args = {
                        [1] = "Change_Value",
                        [3] = num
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                    local num = math.random()
                    local args = {
                        [1] = "Change_Value",
                        [3] = num
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                    local num = math.random()
                    local args = {
                        [1] = "Change_Value",
                        [3] = num
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                
                end
                
                
                
                
                local number = numgen(1, 34)
                local args = {
                    [1] = "Change_Value",
                    [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(player):WaitForChild("Customization"):WaitForChild("Clothes"):WaitForChild("Shirt"):WaitForChild("Index"),
                    [3] = number
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                colorgen()
                
                local number = numgen(1, 22)
                local args = {
                    [1] = "Change_Value",
                    [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(player):WaitForChild("Customization"):WaitForChild("Clothes"):WaitForChild("Pants"):WaitForChild("Index"),
                    [3] = number
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                
                local number = numgen(1, 9)
                local args = {
                    [1] = "Change_Value",
                    [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(player):WaitForChild("Customization"):WaitForChild("Shoes"):WaitForChild("Index"),
                    [3] = number
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                
                local number = numgen(1, 4)
                local args = {
                    [1] = "Change_Value",
                    [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(player):WaitForChild("Customization"):WaitForChild("Horns"),
                    [3] = number
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                
                local number = numgen(1, 9)
                local args = {
                    [1] = "Change_Value",
                    [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(player):WaitForChild("Customization"):WaitForChild("Face"):WaitForChild("Eyes"),
                    [3] = number
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                
                local number = numgen(1, 31)
                local args = {
                    [1] = "Change_Value",
                    [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(player):WaitForChild("Customization"):WaitForChild("Face"):WaitForChild("Nose"),
                    [3] = number
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                
                local number = numgen(1,11)
                local args = {
                    [1] = "Change_Value",
                    [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(player):WaitForChild("Customization"):WaitForChild("Face"):WaitForChild("Mouth"),
                    [3] = number
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                
                local number = numgen(1,16)
                local args = {
                    [1] = "Change_Value",
                    [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(player):WaitForChild("Customization"):WaitForChild("Face"):WaitForChild("Extra"),
                    [3] = number
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                
                local number = numgen(1,70)
                local args = {
                    [1] = "Change_Value",
                    [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(player):WaitForChild("Customization"):WaitForChild("Hairs"):WaitForChild("Hair1"):WaitForChild("Index"),
                    [3] = number
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                
                local number = numgen(1,70)
                local args = {
                    [1] = "Change_Value",
                    [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(player):WaitForChild("Customization"):WaitForChild("Hairs"):WaitForChild("Hair2"):WaitForChild("Index"),
                    [3] = number
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                
                local number = numgen(1,20)
                local args = {
                    [1] = "Change_Value",
                    [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(player):WaitForChild("Customization"):WaitForChild("Hairs"):WaitForChild("Beard"):WaitForChild("Index"),
                    [3] = number
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                
                
                
                
                local number = numgen(1,10)
                local args = {
                    [1] = "Change_Value",
                    [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(player):WaitForChild("Customization"):WaitForChild("Body_Scaling"):WaitForChild("Width"),
                    [3] = number
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                
                local number = numgen(1,10)
                local args = {
                    [1] = "Change_Value",
                    [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(player):WaitForChild("Customization"):WaitForChild("Body_Scaling"):WaitForChild("Height"),
                    [3] = number
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                
                local number = numgen(1,10)
                local args = {
                    [1] = "Change_Value",
                    [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild(player):WaitForChild("Customization"):WaitForChild("Body_Scaling"):WaitForChild("Depth"),
                    [3] = number
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                
                if getgenv().randomskin == true then
                    local skin = math.random(1,5)
                    if skin == 1 then
                        local args = {
                            [1] = "Change_Value",
                            [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild("clr_erin"):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("R"),
                            [3] = 0.5843137502670288
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                        local args = {
                            [1] = "Change_Value",
                            [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild("clr_erin"):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("G"),
                            [3] = 0.5372549295425415
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                        local args = {
                            [1] = "Change_Value",
                            [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild("clr_erin"):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("B"),
                            [3] = 0.5333333611488342
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                    elseif skin == 2 then
                        local args = {
                            [1] = "Change_Value",
                            [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild("clr_erin"):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("R"),
                            [3] = 0.9960784316062927
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                        local args = {
                            [1] = "Change_Value",
                            [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild("clr_erin"):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("G"),
                            [3] = 0.9529411792755127
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                        local args = {
                            [1] = "Change_Value",
                            [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild("clr_erin"):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("B"),
                            [3] = 0.7333333492279053
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                    elseif skin == 3 then
                        local args = {
                            [1] = "Change_Value",
                            [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild("clr_erin"):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("R"),
                            [3] = 0.6235294342041016
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                        local args = {
                            [1] = "Change_Value",
                            [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild("clr_erin"):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("G"),
                            [3] = 0.6784313917160034
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                        local args = {
                            [1] = "Change_Value",
                            [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild("clr_erin"):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("B"),
                            [3] = 0.7529411911964417
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                    elseif skin == 4 then
                        local args = {
                            [1] = "Change_Value",
                            [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild("clr_erin"):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("R"),
                            [3] = 0.6274510025978088
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                        local args = {
                            [1] = "Change_Value",
                            [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild("clr_erin"):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("G"),
                            [3] = 0.5176470875740051
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                        local args = {
                            [1] = "Change_Value",
                            [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild("clr_erin"):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("B"),
                            [3] = 0.30980393290519714
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                    elseif skin == 5 then
                        local args = {
                            [1] = "Change_Value",
                            [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild("clr_erin"):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("R"),
                            [3] = 0.843137264251709
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                        local args = {
                            [1] = "Change_Value",
                            [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild("clr_erin"):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("G"),
                            [3] = 0.772549033164978
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                        local args = {
                            [1] = "Change_Value",
                            [2] = game:GetService("ReplicatedStorage"):WaitForChild("Player_Data"):WaitForChild("clr_erin"):WaitForChild("Customization"):WaitForChild("Skin_Color"):WaitForChild("B"),
                            [3] = 0.6039215922355652
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                    
                    end
                end
            end
        }
    )



    Misc:AddButton(
        {
            Name = "Spin BDA (TAKES A SPIN)",
            Callback = function()
                local args = {
                    [1] = "check_can_spin_demon_art"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S_"):InvokeServer(unpack(args))
            end
        }
    )
    Misc:AddButton(
        {
            Name = "Infinite Stamina + Breathing",
            Callback = function()
                getgenv().InfiniteStuff = true
                    
                local Client = game:GetService("Players").LocalPlayer
                local PlayerValues = game:GetService("ReplicatedStorage").PlayerValues[Client.Name]
                local Stamina, Breath = PlayerValues.Stamina, PlayerValues.Breath
                
                OldNewIndex = hookmetamethod(game, "__newindex", function(self, index, value)
                    if InfiniteStuff and checkcaller() == false then
                        if (self == Stamina or self == Breath) and index == "Value" then
                            value = 100
                        end
                    end
                    return OldNewIndex(self, index, value)
                end)
            end
        }
    )

    local Demon = 
        Miscellaneous:CreateSection(
            {
                Name = "Demon"
            }
        )

    Demon:AddButton(
        {
            Name = "Lily Farm",
            Callback = function()
                getgenv().TP = true
                getgenv().speed = 250
                getgenv().delay = 0.5 --increase this if u get suck




                local RunService = game:GetService("RunService");
                local Players = game:GetService("Players");
                local Player = Players.LocalPlayer;
                local chr = Player.Character
                local root = chr.HumanoidRootPart

                local TeleportSpeed = speed or 250;
                local NextFrame = RunService.Heartbeat;

                local function fireproximityprompt(ProximityPrompt, Amount, Skip)
                    assert(ProximityPrompt, "Argument #1 Missing or nil")
                    assert(typeof(ProximityPrompt) == "Instance" and ProximityPrompt:IsA("ProximityPrompt"), "Attempted to fire a Value that is not a ProximityPrompt")
                    local HoldDuration = ProximityPrompt.HoldDuration
                    if Skip then
                        ProximityPrompt.HoldDuration = 0
                    end
                    for i = 1, Amount or 1 do
                        ProximityPrompt:InputHoldBegin()
                        if Skip then
                            local RunService = game:GetService("RunService")
                            local Start = time()
                            repeat
                                RunService.Heartbeat:Wait(0.1)
                            until time() - Start > HoldDuration
                        end
                        ProximityPrompt:InputHoldEnd()
                    end
                    ProximityPrompt.HoldDuration = HoldDuration
                end

                local function ImprovedTeleport(Target)
                    if (typeof(Target) == "Instance" and Target:IsA("BasePart")) then
                        Target = Target.Position;
                    end;
                    if (typeof(Target) == "CFrame") then
                        Target = Target.p
                    end;
                    local HRP = (Player.Character and Player.Character:FindFirstChild("HumanoidRootPart"));
                    if (not HRP) then
                        return;
                    end;
                    local StartingPosition = HRP.Position;
                    local PositionDelta = (Target - StartingPosition);--Calculating the difference between the start and end positions.
                    local StartTime = tick();
                    local TotalDuration = (StartingPosition - Target).magnitude / TeleportSpeed;
                    repeat
                        NextFrame:Wait();
                        local Delta = tick() - StartTime;
                        local Progress = math.min(Delta / TotalDuration, 1);--Getting the percentage of completion of the teleport (between 0-1, not 0-100)
                        --We also use math.min in order to maximize it at 1, in case the player gets an FPS drop, so it doesn't go past the target.
                        local MappedPosition = StartingPosition + (PositionDelta * Progress);
                        HRP.Velocity = Vector3.new();--Resetting the effect of gravity so it doesn't get too much and drag the player below the ground.
                        HRP.CFrame = CFrame.new(MappedPosition);
                    until (HRP.Position - Target).magnitude <= TeleportSpeed / 2;
                    HRP.Anchored = false;
                    HRP.CFrame = CFrame.new(Target);
                end;


                local flowers = game:GetService("Workspace").Demon_Flowers_Spawn
                local function getFlower()
                    local dist, flower = math.huge
                    for i, v in next, flowers:GetChildren() do
                        if v:IsA('Model') then
                            local mag = (root.Position - v.WorldPivot.Position).magnitude
                            if mag < dist then
                                dist = mag
                                flower = v
                            end
                        end
                    end
                    return flower
                end


                spawn(function()
                    while task.wait() do
                        pcall(function()
                            if TP then
                                repeat
                                    task.wait()
                                    ImprovedTeleport(getFlower().WorldPivot.Position)
                                    task.wait(delay)
                                    for i, v in next, getFlower():GetDescendants() do
                                        if v:IsA("ProximityPrompt") then
                                            fireproximityprompt(v, 1, true)
                                        end
                                    end
                                until not getFlower() or not TP
                            end
                        end)
                    end
                end)


            end
        }
    )



    Misc:AddButton(
        {
            Name = "No Sun Damage",
            Callback = function()
                game:GetService("ReplicatedStorage").Remotes["To_Server"]["Sun_Damage"]:Destroy()
            end
        }
    )


    Misc:AddButton(
        {
            Name = "Unlock All Ultimates",
            Callback = function()
                local ult = Instance.new("StringValue")
                ult.Name = "Arrow Spikes"
                ult.Value = "Skill"
                ult.Parent = game:GetService("ReplicatedStorage")["Player_Data"]:FindFirstChild(game:GetService("Players").LocalPlayer.Name)["unlocked_skills"]
                local ult2 = ult:Clone()
                local ult3 = ult:Clone()
                local ult4 = ult:Clone()
                local ult5 = ult:Clone()
                local ult6 = ult:Clone()
                local ult7 = ult:Clone()
                local ult8 = ult:Clone()
                local ult9 = ult:Clone()
                local ult10 = ult:Clone()
                local ult11 = ult:Clone()
                local ult12 = ult:Clone()
                local ult13 = ult:Clone()
                local ult14 = ult:Clone()
                local ult15 = ult:Clone()
                local ult16 = ult:Clone()
                local ult17 = ult:Clone()


                ult2.Name = "Flesh Monster"
                ult3.Name = "Blood Burst"
                ult4.Name = "Thunder clap and flash six fold"
                ult5.Name = "Constant Flux"
                ult6.Name = "Caprice"
                ult7.Name = "Idaten Typhoon"
                ult8.Name = "Speed Rush"
                ult9.Name = "Tamari Meteor"
                ult10.Name = "Purgatory"
                ult11.Name = "Devouring Rush"
                ult12.Name = "Annihilation Type"
                ult13.Name = "String Performance"
                ult14.Name = "Swamp Domain"
                ult15.Name = "Obscuring Clouds"
                ult16.Name = "Snowtide Vortex"
                ult17.Name = "Bodhisattva"
                ult2.Parent = game:GetService("ReplicatedStorage")["Player_Data"]:FindFirstChild(game:GetService("Players").LocalPlayer.Name)["unlocked_skills"]
                ult3.Parent = game:GetService("ReplicatedStorage")["Player_Data"]:FindFirstChild(game:GetService("Players").LocalPlayer.Name)["unlocked_skills"]
                ult4.Parent = game:GetService("ReplicatedStorage")["Player_Data"]:FindFirstChild(game:GetService("Players").LocalPlayer.Name)["unlocked_skills"]
                ult5.Parent = game:GetService("ReplicatedStorage")["Player_Data"]:FindFirstChild(game:GetService("Players").LocalPlayer.Name)["unlocked_skills"]
                ult6.Parent = game:GetService("ReplicatedStorage")["Player_Data"]:FindFirstChild(game:GetService("Players").LocalPlayer.Name)["unlocked_skills"]
                ult7.Parent = game:GetService("ReplicatedStorage")["Player_Data"]:FindFirstChild(game:GetService("Players").LocalPlayer.Name)["unlocked_skills"]
                ult8.Parent = game:GetService("ReplicatedStorage")["Player_Data"]:FindFirstChild(game:GetService("Players").LocalPlayer.Name)["unlocked_skills"]
                ult9.Parent = game:GetService("ReplicatedStorage")["Player_Data"]:FindFirstChild(game:GetService("Players").LocalPlayer.Name)["unlocked_skills"]
                ult10.Parent = game:GetService("ReplicatedStorage")["Player_Data"]:FindFirstChild(game:GetService("Players").LocalPlayer.Name)["unlocked_skills"]
                ult11.Parent = game:GetService("ReplicatedStorage")["Player_Data"]:FindFirstChild(game:GetService("Players").LocalPlayer.Name)["unlocked_skills"]
                ult12.Parent = game:GetService("ReplicatedStorage")["Player_Data"]:FindFirstChild(game:GetService("Players").LocalPlayer.Name)["unlocked_skills"]
                ult13.Parent = game:GetService("ReplicatedStorage")["Player_Data"]:FindFirstChild(game:GetService("Players").LocalPlayer.Name)["unlocked_skills"]
                ult14.Parent = game:GetService("ReplicatedStorage")["Player_Data"]:FindFirstChild(game:GetService("Players").LocalPlayer.Name)["unlocked_skills"]
                ult15.Parent = game:GetService("ReplicatedStorage")["Player_Data"]:FindFirstChild(game:GetService("Players").LocalPlayer.Name)["unlocked_skills"]
                ult16.Parent = game:GetService("ReplicatedStorage")["Player_Data"]:FindFirstChild(game:GetService("Players").LocalPlayer.Name)["unlocked_skills"]
                ult17.Parent = game:GetService("ReplicatedStorage")["Player_Data"]:FindFirstChild(game:GetService("Players").LocalPlayer.Name)["unlocked_skills"]
                
            end
        }
    )

    Demon:AddButton(
        {
            Name = "Go-To Muzan",
            Callback = function()
                pcall(function()
                    Tween(CFrame.new(game:GetService("Workspace").Muzan.SpawnPos.Value))
                end)
            end
        }
    )

    local KillMobsV = false
    --[[local KillMobs =
        DungeonSection:AddToggle(
        {
            Name = "Kill Mobs",
            Flag = "KillMobs",
            Keybind = false,
            Callback = function()
            if KillMobsV then
                    KillMobsV = false
            else
                    KillMobsV = true
            end
            end
        }
    )--]]

    local AutoCollectChest = false
    local AutoPickup =
        DungeonSection:AddToggle(
        {
            Name = "Auto Pickup",
            Flag = "AutoPick",
            Keybind = false,
            Callback = function()
            if AutoCollectChest then
                    AutoCollectChest = false
            else
                    AutoCollectChest = true
            end
            end
        }
    )

    local ShockGod = false
    local ShockwaveGodMode =
        GodModes:AddToggle(
        {
            Name = "Shockwave God-Mode",
            Flag = "ShockGodMod",
            Keybind = false,
            Callback = function()
            if ShockGod then
                    ShockGod = false
            else
                    ShockGod = true
            end
            end
        }
    )

    local DreamGod = false
    local DreamGodMode =
        GodModes:AddToggle(
        {
            Name = "Dream God-Mode",
            Flag = "DGM",
            Keybind = false,
            Callback = function(v)
                DreamGod = v
            end
        }
    )

    local SwampGod = false
    local SwampGodMode =
        GodModes:AddToggle(
        {
            Name = "Swamp God-Mode",
            Flag = "SGM",
            Keybind = false,
            Callback = function(v)
                SwampGod = v
            end
        }
    )


    local IceGod = false
    local IceGodMode =
        GodModes:AddToggle(
        {
            Name = "Ice God-Mode",
            Flag = "IceGodMod",
            Keybind = false,
            Callback = function()
            if IceGod then
                    IceGod = false
            else
                    IceGod = true
            end
            end
        }
    )

    local drums = false
    GodModes:AddToggle(
        {
            Name = "War Drums (all races)",
            Flag = "WD",
            Keybind = false,
            Callback = function()
                if drums then
                    drums = false
                else
                    drums = true
                end
                warmode = true
            end
        }
    )

    local thunder = false
    GodModes:AddToggle(
        {
            Name = "Godspeed (Human Only)",
            Flag = "GS",
            Keybind = false,
            Callback = function()
                if thunder then
                    thunder = false
                else
                    thunder = true
                end
                godspeed = true
            end
        }
    )

    local ren = false
    GodModes:AddToggle(
        {
            Name = "Heart Ablaze (Human Only)",
            Flag = "HA",
            Keybind = false,
            Callback = function()
                if ren then
                    ren = false
                else
                    ren = true
                end
                renskill = true
            end
        }
    )

    local kgm = false
    GodModes:AddToggle(
        {
            Name = "Kamado God Mode (Kamado Only)",
            Flag = "KGM",
            Keybind = false,
            Callback = function()
                if kgm then
                    kgm = false
                else
                    kgm = true
                end
                kamadogm = true
            end
        }
    )

    kamadogm = false

    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                if kamadogm then
                    if kgm then
                        game:GetService("ReplicatedStorage").Remotes.heal_tang123asd:FireServer(true)
                        kamadogm = false
                    else
                        game:GetService("ReplicatedStorage").Remotes.heal_tang123asd:FireServer(false)
                        kamadogm = false
                    end
                end
            end      
        end)
    end)()


    warmode = false

    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                if warmode then
                    if drums then
                        local args = {
                            [1] = true
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("war_Drums_remote"):FireServer(unpack(args))
                        warmode = false
                    else
                        local args = {
                            [1] = false
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("war_Drums_remote"):FireServer(unpack(args))
                        warmode = false
                    end
                end
            end        
        end) 
    end)()


    renskill = false

    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                if renskill then
                    if drums then
                        game:GetService("ReplicatedStorage").Remotes.heart_ablaze_mode_remote:FireServer(true)
                        renskill = false
                    else
                        game:GetService("ReplicatedStorage").Remotes.heart_ablaze_mode_remote:FireServer(false)
                        renskill = false
                    end
                end
            end        
        end) 
    end)()


    godspeed = false

    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                if godspeed then
                    if thunder then
                        game:GetService("ReplicatedStorage").Remotes.thundertang123:FireServer(true)
                        godspeed = false
                    else
                        game:GetService("ReplicatedStorage").Remotes.thundertang123:FireServer(false)
                        godspeed = false
                    end
                end
            end      
        end)   
    end)()


    getgenv().AutoMed = false
    FarmingSection:AddToggle(
        {
            Name = "Auto-Meditate",
            Flag = "AM",
            Keybind = false,
            Callback = function(v)
                getgenv().AutoMed = v
                print(getgenv().AutoMed)
            end
        }
    )



    getgenv().AutoSplit = false
    FarmingSection:AddToggle(
        {
            Name = "Auto-Split",
            Flag = "AS",
            Keybind = false,
            Callback = function(v)
                getgenv().AutoSplit = v
                print(getgenv().AutoSplit)
            end
        }
    )

    getgenv().AutoPush = false
    FarmingSection:AddToggle(
        {
            Name = "Auto-Pushups",
            Flag = "AP",
            Keybind = false,
            Callback = function(v)
                getgenv().AutoPush = v
            end
        }
    )



    getgenv().AutoCup = false
    FarmingSection:AddToggle(
        {
            Name = "Auto-Cup Game",
            Flag = "ACG",
            Keybind = false,
            Callback = function(v)
                getgenv().AutoCup = v
            end
        }
    )


    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                if getgenv().AutoMed then
                    pcall(function()
                        game:GetService("Players").LocalPlayer.PlayerGui.ExcessGuis["Meditate_gui"].Holder.LocalScript.Value.Value = 100
                    end)
                end
            end
        end)
    end)()


    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                if getgenv().AutoSplit then
                    pcall(function()
                        game:GetService("Players").LocalPlayer.PlayerGui.ExcessGuis["boulder_split_ui"].Holder.LocalScript.Value.Value = 10000
                    end)
                end
            end
        end)
    end)()



    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                if getgenv().AutoCup then
                    pcall(function()
                        game:GetService("Players").LocalPlayer.PlayerGui.ExcessGuis["cup_game_gui"].Holder.cup_game_script123.Value.Value = 10000
                    end)
                end
            end
        end)
    end)()



    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                if getgenv().AutoPush then
                    pcall(function()
                        game:GetService("Players").LocalPlayer.PlayerGui.ExcessGuis["Push_Up_Gui"].Holder.push_up_mat_local_script.Value.Value = 10000
                    end)
                end
            end
        end)
    end)()


    local autosouls = false
    local as =
        FarmingSection:AddToggle(
        {
            Name = "Auto Collect Souls",
            Flag = "ACS",
            Keybind = false,
            Callback = function()
            if autosouls then
                    autosouls = false
                    print(autosouls)
            else
                    autosouls = true
                    print(autosouls)
            end
            end
        }
    )

    getgenv().WalksSpeedEnabled = false
    local as =
        FarmingSection:AddToggle(
        {
            Name = "Change Walkspeed",
            Flag = "CWS",
            Keybind = false,
            Callback = function()
            if getgenv().WalksSpeedEnabled then
                    getgenv().WalksSpeedEnabled = false
                    print(getgenv().WalksSpeedEnabled)
            else
                    getgenv().WalksSpeedEnabled = true
                    print(getgenv().WalksSpeedEnabled)
            end
            end
        }
    )

    getgenv().JumpPowerEnabled = false
    local as =
        FarmingSection:AddToggle(
        {
            Name = "Change JumpPower",
            Flag = "CJP",
            Keybind = false,
            Callback = function()
            if getgenv().JumpPowerEnabled then
                    getgenv().JumpPowerEnabled = false
                    print(getgenv().JumpPowerEnabled)
            else
                    getgenv().JumpPowerEnabled = true
                    print(getgenv().JumpPowerEnabled)
            end
            end
        }
    )


    getgenv().WalkSpeedValue = 16
    FarmingSection:AddSlider(
        {
            Name = "Walkspeed Amount",
            Flag = "WSA",
            Keybind = false,
            Min = 16,
            Max = 200,
            Callback = function(Value)
                getgenv().WalkSpeedValue = Value
                print(getgenv().WalkSpeedValue)
            end
        }
    )


    getgenv().JumpPowerValue = 50
    FarmingSection:AddSlider(
        {
            Name = "JumpPower Amount",
            Flag = "JPA",
            Keybind = false,
            Min = 50,
            Max = 500,
            Callback = function(Value)
                getgenv().JumpPowerValue = Value
            end
        }
    )




    local LP = game:GetService("Players").LocalPlayer



    local function GetHuman()
        local h = LP.Character
        h = h and (h:FindFirstChild("Humanoid") or h:FindFirstChildWhichIsA("Humanoid"))
        return h or workspace.CurrentCamera.CameraSubject
    end

    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                if getgenv().WalksSpeedEnabled then
                    local h = GetHuman()
                    local oldws = h and h.WalkSpeed
                    if oldws then
                        pcall(function()
                            h.WalkSpeed = getgenv().WalkSpeedValue or oldws or 16
                            while task.wait() and getgenv().WalksSpeedEnabled do
                                h.WalkSpeed = getgenv().WalkSpeedValue or oldws or 16
                            end
                        end)
                        h.WalkSpeed = oldws or 16
                    end
                end
            end
        end)
    end)()

    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                if getgenv().JumpPowerEnabled then
                    local h = GetHuman()
                    local oldjp = h and h.JumpPower
                    if oldjp then
                        pcall(function()
                            h.JumpPower = getgenv().JumpPowerValue or oldjp or 50
                            while task.wait() and getgenv().JumpPowerEnabled do
                                h.JumpPower = getgenv().JumpPowerValue or oldjp or 50
                            end
                        end)
                        h.JumpPower = oldjp or 50
                    end
                end
            end
        end)
    end)()


    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                if autosouls then
                    for i,v in pairs(game:GetService("Workspace").Debree:GetChildren()) do
                        if v.Name == "Soul" then
                            pcall(function()
                                workspace.Debree.Soul.Handle.Eatthedamnsoul:FireServer()
                            end)
                        end
                    end
                end
            end
        end)
    end)()






    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while wait() do
                pcall(function()
                    SkillActive = AutoUseSkills and (FarmAllBosses and NearestMobs)
                    if getgenv().FarmMethod == "Above" then
                        FarmModes = CFrame.new(0,getgenv().Distance,0) * CFrame.Angles(math.rad(-90),0,0) 
                    elseif getgenv().FarmMethod == "Below" then
                        FarmModes = CFrame.new(0,-getgenv().Distance,0) * CFrame.Angles(math.rad(90),0,0)
                    elseif getgenv().FarmMethod == "Behind" then
                        FarmModes = CFrame.new(0,0,getgenv().Distance)
                    end
                    for i,v in pairs(LP.PlayerGui.MainGuis.Items.Scroll:GetChildren()) do
                        Insert = true
                        if v.ClassName == "Frame" and v.Name ~= "Health Elixir" and v.Name ~= "Health Regen Elixir" and v.Name ~= "Stamina Elixir" and v.Name ~= "Bandage" then
                            for i,v2 in pairs(invTable) do if v2 == v.Name then Insert = false end end
                            if Insert == true then table.insert(invTable, v.Name) end
                        end
                    end
                end)
            end
        end)
    end)()



    local function GetDistance(Endpoint)
        if typeof(Endpoint) == "Instance" then
        Endpoint = Vector3.new(Endpoint.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, Endpoint.Position.Z)
        elseif typeof(Endpoint) == "CFrame" then
        Endpoint = Vector3.new(Endpoint.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, Endpoint.Position.Z)
        end
        local Magnitude = (Endpoint - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        return Magnitude
    end


    local function GetNearestBoss()
        if getgenv().TargetOfFarm == "All Bosses" or getgenv().TargetOfFarm == " " then
                print("bosses only")
                local Bosses = game:GetService("Workspace").Mobs:GetDescendants()
                local BossesTable = {}
            
                for i,v in pairs(Bosses) do
                    if table.find(BossessTable, v.Name) and v:IsA("Model") and v:FindFirstChild("Humanoid") then
                        if v.Humanoid.Health > 0 then
                            table.insert(BossesTable, v)
                        end
                    end
                end
            
                local NearestBoss = nil
                local NearestBossDistance = math.huge
            
                for i,v in pairs(BossesTable) do
                    local Distance = GetDistance(v:GetModelCFrame() * FarmModes)
                    if Distance < NearestBossDistance then
                        NearestBoss = v
                        NearestBossDistance = Distance
                    end
                end
            
                return NearestBoss
            elseif getgenv().TargetOfFarm == "Mugen Mode" then
                local Bosses = game:GetService("Workspace").Mobs:GetDescendants()
                local BossesTable = {}
            
                for i,v in pairs(Bosses) do
                    if table.find(BossessTable, v.Name) and v:IsA("Model") and v:FindFirstChild("Humanoid") then
                        if v.Humanoid.Health > 99 then
                            table.insert(BossesTable, v)
                        end
                    end
                end
            
                local NearestBoss = nil
                local NearestBossDistance = math.huge
            
                for i,v in pairs(BossesTable) do
                    local Distance = GetDistance(v:GetModelCFrame() * FarmModes)
                    if Distance < NearestBossDistance then
                        NearestBoss = v
                        NearestBossDistance = Distance
                    end
                end
            
                return NearestBoss
            else
                print("all mobs")
                local Bosses = game:GetService("Workspace").Mobs:GetDescendants()
                local BossesTable = {}

                for i,v in pairs(Bosses) do
                    if v:IsA("Model") and v:FindFirstChild("Humanoid") then
                        if v.Humanoid.Health > 0 then
                            table.insert(BossesTable, v)
                        end
                    end
                end

                local NearestBoss = nil
                local NearestBossDistance = math.huge

                for i,v in pairs(BossesTable) do
                    local Distance = GetDistance(v:GetModelCFrame() * FarmModes)
                    if Distance < NearestBossDistance then
                        NearestBoss = v
                        NearestBossDistance = Distance
                    end
                end

                return NearestBoss
            end
    end

    function CreateTweenFloat()
        local BV = game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild(GramxProjectFloat) or Instance.new("BodyVelocity")
        BV.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        BV.Name = GramxProjectFloat
        BV.MaxForce = Vector3.new(100000, 100000, 100000)
        BV.Velocity = TweenFloatVelocity
    end
    function Tween(Endpoint)
        if typeof(Endpoint) == "Instance" then
        Endpoint = Endpoint.CFrame
        end
        local TweenFunc = {}
        local Distance = GetDistance(Endpoint)
        local TweenInfo = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance/getgenv().tweenspeed, Enum.EasingStyle.Linear), {CFrame = Endpoint * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(0))})
        TweenInfo:Play()
        function TweenFunc:Cancel()
        TweenInfo:Cancel()
        return false
        end
        if Distance <= 100 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Endpoint
        TweenInfo:Cancel()
        return false
        end
        return TweenFunc
    end



    local LP = game:GetService("Players").LocalPlayer
    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                pcall(function()
                    if FarmAllBosses then
                        if getgenv().TargetOfFarm == "Mugen Mode" then
                            if not LP.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                antifall3 = Instance.new("BodyVelocity", LP.Character.HumanoidRootPart)
                                antifall3.Velocity = Vector3.new(0, 0, 0)
                                antifall3.MaxForce = Vector3.new(9e9, 9e9, 9e9)
                            elseif LP.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                local v = GetNearestBoss()
                                if v then 
                                    repeat task.wait()                           
                                        if GetDistance(v:GetModelCFrame() * FarmModes) < 25 and GetDistance(v:GetModelCFrame() * FarmModes) < 150 then
                                            if TweenFa then
                                            TweenFa:Cancel()
                                            wait(.1)
                                            end
                                            LP.Character.HumanoidRootPart.CFrame = v:GetModelCFrame() * FarmModes
                                        else
                                            TweenFa = Tween(v:GetModelCFrame() * FarmModes)
                                        end
                                        if v.Humanoid.Health > 99 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and GetDistance(v:GetModelCFrame() * FarmModes) < 10 then
                                            NearestMobs = true
                                        elseif v.Humanoid.Health <= 99 or not v:FindFirstChild("Humanoid") and GetDistance(v:GetModelCFrame() * FarmModes) > 10 then
                                            NearestMobs = false
                                        end
                                    until not FarmAllBosses or not v.Parent or v.Humanoid.Health <= 0 or not v:IsDescendantOf(workspace)
                                    NearestMobs = false
                                end
                            end
                        else
                            if not LP.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                antifall3 = Instance.new("BodyVelocity", LP.Character.HumanoidRootPart)
                                antifall3.Velocity = Vector3.new(0, 0, 0)
                                antifall3.MaxForce = Vector3.new(9e9, 9e9, 9e9)
                            elseif LP.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                local v = GetNearestBoss()
                                if v then 
                                    repeat task.wait()                           
                                        if GetDistance(v:GetModelCFrame() * FarmModes) < 25 and GetDistance(v:GetModelCFrame() * FarmModes) < 150 then
                                            if TweenFa then
                                            TweenFa:Cancel()
                                            wait(.1)
                                            end
                                            LP.Character.HumanoidRootPart.CFrame = v:GetModelCFrame() * FarmModes
                                        else
                                            TweenFa = Tween(v:GetModelCFrame() * FarmModes)
                                        end
                                        if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and GetDistance(v:GetModelCFrame() * FarmModes) < 10 then
                                            NearestMobs = true
                                        elseif v.Humanoid.Health <= 0 or not v:FindFirstChild("Humanoid") and GetDistance(v:GetModelCFrame() * FarmModes) > 10 then
                                            NearestMobs = false
                                        end
                                    until not FarmAllBosses or not v.Parent or v.Humanoid.Health <= 0 or not v:IsDescendantOf(workspace)
                                    NearestMobs = false
                                end
                            end
                        end
                    else
                        antifall3:Destroy()
                    end
                    if FarmAllBosses == false then
                        TweenFa:Cancel()
                    end
                end)
            end
        end)
    end)()






    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                if AutoCollectChest then
                    print('collecting')
                    for _, v in pairs(game:GetService("Workspace").Debree:GetChildren()) do
                        if v.Name == "Loot_Chest" then
                            for i,c in pairs(v:FindFirstChild("Drops"):GetChildren()) do
                                    v["Add_To_Inventory"]:InvokeServer(c.Name)
                                    delay(0.5, function()
                                    c:Destroy()
                                end)
                            end
                        end
                    end
                end
            end
        end)
    end)()


    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            game:GetService("RunService").Stepped:Connect(function()
                if FarmAllBosses then
                    for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false    
                        end
                        if v:IsA("Humanoid") then
                            v:ChangeState(11)
                        end
                    end
                end
            end)
        end)
    end)()


    local client = game:GetService("Players").LocalPlayer
    local function attack(method)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
    end

    local attackMethods = {
        ["Fists"] = 'fist_combat',
        ["Sword"] = 'Sword_Combat_Slash',
        ["Scythe"] = 'Scythe_Combat_Slash',
        ["Claw"] = 'claw_Combat_Slash',
        ["Fans"] = 'fans_combat_slash'
    }

    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                pcall(function()
                    if killaura then
                        if getgenv().KAMethod == "Sword" then
                            attack("Sword_Combat_Slash")
                            wait(1.5)
                        elseif getgenv().KAMethod == "Scythe" then
                            attack("Scythe_Combat_Slash")
                            wait(1.5)
                        elseif getgenv().KAMethod == "Claw" then
                            attack("claw_Combat_Slash")
                            wait(1.5)
                        elseif getgenv().KAMethod == "Fans" then
                            attack("fans_combat_slash")
                            wait(1.5)
                        else
                            attack("fist_combat")
                            wait(1.5)
                        end
                    end
                end)
            end
        end)
    end)()
    local VIM = game:GetService('VirtualInputManager')

    local uis = game:GetService('UserInputService')
    local client = game:GetService('Players').LocalPlayer
    local rs = game:GetService('RunService')

    local function pressKey(key)
        VIM:SendKeyEvent(true, key, false, game)
        wait()
        VIM:SendKeyEvent(false, key, false, game)
    end


    local clash = false
    local autoClash = MugenSection:CreateToggle({
        Name = "Auto Clash",
        CurrentValue = false,
        Flag = "autoClash",
        Callback = function()
            if clash then
                clash = false
            else
                clash = true
            end
        end
    })


    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                if clash then
                    pressKey(Enum.KeyCode[game.Players.LocalPlayer.PlayerGui["universal_client_scripts"].Clashing2["Clash_Ui2"].Holder:WaitForChild('Front').Text])
                end
            end
        end)
    end)()



    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                if ShockGod then
                    local args = {
                        [1] = "skil_ting_asd",
                        [2] = game:GetService("Players").LocalPlayer,
                        [3] = "akaza_bda_compass_needle",
                        [4] = 1
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                    wait(2)
                end
            end
        end)
    end)()



    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                if SwampGod then
                    local args = {
                        [1] = "skil_ting_asd",
                        [2] = game:GetService("Players").LocalPlayer,
                        [3] = "swamp_bda_swamp_domain",
                        [4] = 1
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                    
                    wait(2)
                end
            end
        end)
    end)()


    LPH_NO_VIRTUALIZE(function()
        task.spawn(function()
            while task.wait() do
                if DreamGod then
                    local args = {
                        [1] = "skil_ting_asd",
                        [2] = game:GetService("Players").LocalPlayer,
                        [3] = "dream_bda_flesh_monster",
                        [4] = 1
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                    wait(3)
                end
            end
        end)
    end)()
end)()


