    function aimlock()


        local Enabled = true -- true / false

        local LocalPlayer = game.Players.LocalPlayer
        local Camera = workspace.CurrentCamera
        local Mouse = LocalPlayer:GetMouse()

            function ClosestPlayer()
            local Target = nil
            local MaxDistance = math.huge
                for i,v in pairs(game.Players:GetPlayers()) do
                    if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild('Humanoid') and v.Character.Humanoid.Health >= 1 then
                        local Magnitude = (Mouse.Hit.p - v.Character.HumanoidRootPart.CFrame.Position).Magnitude
                        if Magnitude < MaxDistance then
                            MaxDistance = Magnitude
                        Target = v
            end
        end
        end
        return Target
        end

            local UserInputService = game:GetService('UserInputService')
            local TweenService = game:GetService('TweenService')
        local RunService = game:GetService('RunService')

            function TweenCamera(Pos)
        local Tween = TweenService:Create(Camera, TweenInfo.new(0.05), {CFrame = Pos})
        Tween:Play()
          end

    


        RunService.RenderStepped:Connect(function()
            if Enabled then
            coroutine.wrap(TweenCamera(CFrame.new(Camera.CoordinateFrame.p, ClosestPlayer().Character.Head.CFrame.p)))()
           end
            end) 


    end

    aimlock()