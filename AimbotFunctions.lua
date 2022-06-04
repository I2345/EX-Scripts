local fc = {}

function fc:GetClosest(DontGetTeamMembers)

    local cDist = math.huge
    local cPlayer = nil
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do

        if DontGetTeamMembers then

            if v ~= game:GetService("Players").LocalPlayer then

                if v.Team ~= game:GetService("Players").LocalPlayer.Team then

                    local client = game:GetService("Players").LocalPlayer

                    local distance = (client.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude

                    if distance < cDist then
                        cDist = distance
                        cPlayer = v
                    end

                end

            end

        else

            if v ~= game:GetService("Players").LocalPlayer then
            end

        end

    end

end

return fc
