        ---@diagnostic disable: undefined-global

        repeat wait() until game:IsLoaded() 
        local lib = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)()
        local subs = lib.subs 
        local libclose = subs.Wait

        local window = lib:CreateWindow({
            Name = "Zyrc Hub",
            Themeable = {
                Info = {"Ez Crabcage scriptlol"},
                Credit = false, 
                Background = "",
                Visible = true
            }
        })

        local main1 = window:CreateTab({
            Name = "Crab cage section"
        })

        local section1 = main1:CreateSection({
            Name = "Crab"
        })

        local section2 = main1:CreateSection({
            Name = "Teleports"
        })

        local section3= main1:CreateSection({
            Name = "Miscs"
        })


        local savedtick = tick()
        local curtarget = nil 
        section1:AddToggle({
            Name = "Auto Claim", 
            Value = false, 
            Flag = "XV", 
            Callback = function(state)
                a = state 
                while a do 
                  for i,v in pairs(game.Workspace.active:GetChildren()) do
                    if v:IsA("Model") then
                        if v.Name == game.Players.LocalPlayer.Name then
                            if v:FindFirstChild("Prompt") then
                                fireproximityprompt(v.Prompt, 10000)
                            end
                        end
                    end
                end
                task.wait(2.5)
                end 
            end 
        })

        section1:AddToggle({
          Name = "Auto Place", 
          Value = false, 
          Flag = "AF", 
          Callback = function(state)
              a = state 
              while a do 
                  local args = {
                    [1] = {
                        ["CFrame"] = CFrame.new(-1591.14599609375, -240, -2906.738037109375, 0.9783931374549866, -2.5829992367221166e-08, 0.2067532241344452, 4.2567123159642506e-08, 1, -7.650371003364853e-08, -0.2067532241344452, 8.36515923197112e-08, 0.9783931374549866)
                    }
                }
                
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Crab Cage").Deploy:FireServer(unpack(args))
                wait(0.05)
              end
          end 
      })

      section3:AddButton({
        Name = "Buy Luck",
        Flag = "niggerhitam",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-928.032837, 223.700027, -998.744995, -0.86823225, 0, 0.496157885, 0, 1, 0, -0.496157885, 0, -0.86823225)
            workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Merlin"):WaitForChild("Merlin"):WaitForChild("luck"):InvokeServer()

        end
      })

      section3:AddButton({
        Name = "Buy Relics",
        Flag = "asdasd",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-928.032837, 223.700027, -998.744995, -0.86823225, 0, 0.496157885, 0, 1, 0, -0.496157885, 0, -0.86823225)
            workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Merlin"):WaitForChild("Merlin"):WaitForChild("power"):InvokeServer()

        end
      })

      section3:AddButton({
        Name = "Buy Sundial Totem",
        Flag = "asd",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1149.45581, 134.532166, -1077.27539, -0.945118904, 0, -0.326726705, 0, 1, 0, 0.326726705, 0, -0.945118904)
        end
      })

      section3:AddButton({
        Name = "Buy Aurora Totem",
        Flag = "baba",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.20496, -139.332184, -3280.39941, 0.671925902, -0.222812086, -0.70630753, 0.0369239748, 0.962564886, -0.268524557, 0.739697337, 0.154348925, 0.654999435)
        end
      })
    
    
      for i,v in pairs(game:GetService("Workspace").world.spawns.TpSpots:GetDescendants()) do
        section2:AddButton({
            Name = v.Name,
   
            Callback = function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            end
          })
      end


        for i,v in pairs(getconnections(Player.Idled)) do 
            v:Disable()
        end
