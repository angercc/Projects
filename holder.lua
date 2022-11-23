function Invisible()
        if Alive(LocalPlayer) then
            PuppywareModule.Old.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
            print(PuppywareModule.Old.CFrame)
            wait(0.1)
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 96995694596945934234234234, 0)
            wait(0.1)
            LocalPlayer.Character.LowerTorso.Root:Destroy()
            for _, v in pairs(LocalPlayer.Character:GetChildren()) do
                if v:IsA("MeshPart") and not table.find(PuppywareModule.Ignores, v.Name) then
                    v:Destroy()
                end
            end
            wait(0.1)
            LocalPlayer.Character.HumanoidRootPart.CFrame = PuppywareModule.Old.CFrame
        end
    end
