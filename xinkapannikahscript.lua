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
                wait()
              end
          end 
      })

        for i,v in pairs(getconnections(Player.Idled)) do 
            v:Disable()
        end
