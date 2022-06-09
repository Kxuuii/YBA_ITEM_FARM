getgenv().ItemFarm = true  --change the value to false if you want to turn the item farm to stop or change it to true if you want the item farm to run
getgenv().MobFarm = false --change the value to false if you want to turn the mob farm to stop or change it to true if you want the mob farm to run
getgenv().StandAttach = false
getgenv().ServerHop = false -- The serverhop may take atleast 10 - 20 second to run when enabled

----------------------------------





--MADE BY Kusuki#6517



























repeat task.wait() until game:IsLoaded()
repeat
    wait()
until game.Players.LocalPlayer
task.wait(5)
pcall(function() 
if game:GetService("Players").LocalPlayer.PlayerGui.LoadingScreen1 ~= nil or game:GetService("Players").LocalPlayer.PlayerGui.LoadingScreen1 == true then
wait(5)
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.LoadingScreen1.Frame.LoadingFrame.Skip.TextButton.MouseButton1Click)) do
    v.Function()
end
end
end)
pcall(function() 
if game:GetService("Players").LocalPlayer.PlayerGui.LoadingScreen ~= nil or game:GetService("Players").LocalPlayer.PlayerGui.LoadingScreen == true then
wait(5)

for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.LoadingScreen.Play.MouseButton1Click)) do
    v.Function()
end
wait(5)
end
end)




repeat wait() until game:GetService("Players").LocalPlayer.Character




local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end



local RunService = game:GetService("RunService")

-- TP BYPASS
for times = 1, 3, 1 do
_G.checkItems = true
local old
setreadonly(getrawmetatable(game), false)
old = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "InvokeServer" and args[1] == "idklolbrah2de" then return "  ___XP DE KEY" end return old(self, ...)
end))
setreadonly(getrawmetatable(game), true)




    
--ITEM BYPASS THAT BY FRIEND GAVE ME
setreadonly(Vector3, false)

        local vt3 = Vector3.new()
        local mtvt3 = getrawmetatable(vt3)
        setreadonly(mtvt3, false)
        local old4 = mtvt3.__index
        mtvt3.__index =
            newcclosure(
            function(a, b, c)
                local method = getcallingscript()
                if not checkcaller() and method == game.ReplicatedFirst.ItemSpawn and tostring(b) == "magnitude" then
                    return -math.huge
                end
                return old4(a, b, c)
            end
        ) 
    end
----------------------------------------------------
spawn(function() while task.wait() and getgenv().StandAttach == true do
    game:GetService("Workspace").Living.JamesPetersen37.StandMorph.HumanoidRootPart.StandAttach.AlignPosition.Attachment1 = game:GetService("Workspace").Living.AedrAgLObuS.HumanoidRootPart.StandAttach
    game:GetService("Workspace").Living.JamesPetersen37.StandMorph.HumanoidRootPart.StandAttach.AlignOrientation.Attachment1 = game:GetService("Workspace").Living.AedrAgLObuS.HumanoidRootPart.StandAttach
end end)




        spawn(function()
                while task.wait() and getgenv().MobFarm == true do
                --if game:GetService("Players").LocalPlayer.PlayerStats.Level.Value >= 1 and game:GetService("Players").LocalPlayer.PlayerStats.Level.Value < 5 then


                
                for i, v in pairs(game.workspace.Living:GetChildren()) do
                if v.Name == 'Thug' and v:FindFirstChild("Health") and v:FindFirstChild("Health").Value > 0 then
                local mobFarm
                mobFarm = RunService.RenderStepped:Connect(function()
                                        if v:FindFirstChild("Health") and v:FindFirstChild("Health").Value <= 0 then mobFarm:Disconnect() end
                                        if getgenv().MobFarm == false then mobFarm:Disconnect() end
                    if getgenv().MobFarm == true then
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,4)
                    local ohString1 = "Attack"
                    local ohString2 = "m1" 
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("RemoteEvent"):FireServer(ohString1, ohString2)
                    elseif getgenv().MobFarm == false then mobFarm:Disconnect() 
                    end
                                        if getgenv().MobFarm == false then mobFarm:Disconnect() end
                                        if v:FindFirstChild("Health") and v:FindFirstChild("Health").Value <= 0 then mobFarm:Disconnect() end
                    end)
                    repeat
                        task.wait()
                    until mobFarm.Connected == false
                end
            end
        --end
        end
        end)



        spawn(function()


        while getgenv().ItemFarm == true and getgenv().ServerHop == false do
            print('gay')
            local CurrentCFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
            
            

		    for i, v in pairs(game.Workspace.Item_Spawns.Items:GetChildren()) do

			if v:FindFirstChildOfClass("MeshPart") and v:FindFirstChildOfClass("ClickDetector") and v:FindFirstChildOfClass("ClickDetector").MaxActivationDistance ~= 0 then -- this can check or bypass the false or fake item in yba but also teleports to the item that is not fake
                if getgenv().ItemFarm == true then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("MeshPart").CFrame
                task.wait(0.4)
                
                pcall(function()
                fireclickdetector(v:FindFirstChildOfClass("ClickDetector"), 10)
                end)
            elseif v:FindFirstChildOfClass("Part") and v:FindFirstChildOfClass("ClickDetector") and v:FindFirstChildOfClass("ClickDetector").MaxActivationDistance ~= 0 then -- this can check or bypass the false or fake item in yba but also teleports to the item that is not fake
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("Part").CFrame
                task.wait(0.4)
                pcall(function()
                fireclickdetector(v:FindFirstChildOfClass("ClickDetector"), 10)
                end)
            end
			end

            
            task.wait(0.4) 
		    end
            for i, v in pairs(game.Workspace:GetChildren()) do

			if v:FindFirstChildOfClass("MeshPart") and v:FindFirstChildOfClass("ClickDetector") and v:FindFirstChildOfClass("ClickDetector").MaxActivationDistance ~= 0 and v:FindFirstChild("Base") then -- this can check or bypass the false or fake item in yba but also teleports to the item that is not fake
			if getgenv().ItemFarm == true then	
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("MeshPart").CFrame
                task.wait(0.4)
                pcall(function()
                fireclickdetector(v:FindFirstChildOfClass("ClickDetector"), 10)
                end)
                task.wait(0.4)
            elseif v:FindFirstChildOfClass("Part") and v:FindFirstChildOfClass("ClickDetector") and v:FindFirstChildOfClass("ClickDetector").MaxActivationDistance ~= 0 and v:FindFirstChild("Base") then -- this can check or bypass the false or fake item in yba but also teleports to the item that is not fake
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("Part").CFrame
                task.wait(0.4)
                pcall(function()
                fireclickdetector(v:FindFirstChildOfClass("ClickDetector"), 10)
                end)
                task.wait(0.4)
            end
			end

            

		    end
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CurrentCFrame

            while task.wait() and _G.checkItems == true and getgenv().ItemFarm == true do
                print('checking...')
                for i, v in pairs(game.Workspace.Item_Spawns.Items:GetChildren()) do
                    if v and v:FindFirstChildOfClass("ClickDetector").MaxActivationDistance ~= 0 then print('lol1') _G.checkItems = false break end
                end
                for i, v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Item" and v:FindFirstChild("Base") then print('lol2') _G.checkItems = false break end
                end
                if _G.checkItems == false then _G.checkItems = true break end
            end
        end
    end)




































    task.wait(5)

    spawn(function() 
        local CurrentCFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
    while getgenv().ServerHop == true and getgenv().ItemFarm == true do
    local CurrentCFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
    for i, v in pairs(game.Workspace.Item_Spawns.Items:GetChildren()) do

    if v:FindFirstChildOfClass("MeshPart") and v:FindFirstChildOfClass("ClickDetector") and v:FindFirstChildOfClass("ClickDetector").MaxActivationDistance ~= 0 then -- this can check or bypass the false or fake item in yba but also teleports to the item that is not fake
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("MeshPart").CFrame
        task.wait(0.4)
        pcall(function()
        fireclickdetector(v:FindFirstChildOfClass("ClickDetector"), 10)
        end)
    elseif v:FindFirstChildOfClass("Part") and v:FindFirstChildOfClass("ClickDetector") and v:FindFirstChildOfClass("ClickDetector").MaxActivationDistance ~= 0 then -- this can check or bypass the false or fake item in yba but also teleports to the item that is not fake
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("Part").CFrame
        task.wait(0.4)
        pcall(function()
        fireclickdetector(v:FindFirstChildOfClass("ClickDetector"), 10)
        end)
    end

    
    task.wait(0.4) 
    end
    for i, v in pairs(game.Workspace:GetChildren()) do

    if v:FindFirstChildOfClass("MeshPart") and v:FindFirstChildOfClass("ClickDetector") and v:FindFirstChildOfClass("ClickDetector").MaxActivationDistance ~= 0 and v:FindFirstChild("Base") then -- this can check or bypass the false or fake item in yba but also teleports to the item that is not fake
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("MeshPart").CFrame
        task.wait(0.4)
        pcall(function()
        fireclickdetector(v:FindFirstChildOfClass("ClickDetector"), 10)
        end)
        task.wait(0.4)
    elseif v:FindFirstChildOfClass("Part") and v:FindFirstChildOfClass("ClickDetector") and v:FindFirstChildOfClass("ClickDetector").MaxActivationDistance ~= 0 and v:FindFirstChild("Base") then -- this can check or bypass the false or fake item in yba but also teleports to the item that is not fake
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("Part").CFrame
        task.wait(0.4)
        pcall(function()
        fireclickdetector(v:FindFirstChildOfClass("ClickDetector"), 10)
        end)
        task.wait(0.4)
    end

    

    end
    for i, v in pairs(game.Workspace.Item_Spawns.Items:GetChildren()) do

        if v:FindFirstChildOfClass("MeshPart") and v:FindFirstChildOfClass("ClickDetector") and v:FindFirstChildOfClass("ClickDetector").MaxActivationDistance ~= 0 then -- this can check or bypass the false or fake item in yba but also teleports to the item that is not fake
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("MeshPart").CFrame
            task.wait(0.4)
            pcall(function()
            fireclickdetector(v:FindFirstChildOfClass("ClickDetector"), 10)
            end)
        elseif v:FindFirstChildOfClass("Part") and v:FindFirstChildOfClass("ClickDetector") and v:FindFirstChildOfClass("ClickDetector").MaxActivationDistance ~= 0 then -- this can check or bypass the false or fake item in yba but also teleports to the item that is not fake
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("Part").CFrame
            task.wait(0.4)
            pcall(function()
            fireclickdetector(v:FindFirstChildOfClass("ClickDetector"), 10)
            end)
        end
    
        
        task.wait(0.4) 
        end
        for i, v in pairs(game.Workspace:GetChildren()) do
    
        if v:FindFirstChildOfClass("MeshPart") and v:FindFirstChildOfClass("ClickDetector") and v:FindFirstChildOfClass("ClickDetector").MaxActivationDistance ~= 0 and v:FindFirstChild("Base") then -- this can check or bypass the false or fake item in yba but also teleports to the item that is not fake
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("MeshPart").CFrame
            task.wait(0.4)
            pcall(function()
            fireclickdetector(v:FindFirstChildOfClass("ClickDetector"), 10)
            end)
            task.wait(0.4)
        elseif v:FindFirstChildOfClass("Part") and v:FindFirstChildOfClass("ClickDetector") and v:FindFirstChildOfClass("ClickDetector").MaxActivationDistance ~= 0 and v:FindFirstChild("Base") then -- this can check or bypass the false or fake item in yba but also teleports to the item that is not fake
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("Part").CFrame
            task.wait(0.4)
            pcall(function()
            fireclickdetector(v:FindFirstChildOfClass("ClickDetector"), 10)
            end)
            task.wait(0.4)
        end
    
        
    
        end
        for i, v in pairs(game.Workspace.Item_Spawns.Items:GetChildren()) do

            if v:FindFirstChildOfClass("MeshPart") and v:FindFirstChildOfClass("ClickDetector") and v:FindFirstChildOfClass("ClickDetector").MaxActivationDistance ~= 0 then -- this can check or bypass the false or fake item in yba but also teleports to the item that is not fake
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("MeshPart").CFrame
                task.wait(0.4)
                pcall(function()
                fireclickdetector(v:FindFirstChildOfClass("ClickDetector"), 10)
                end)
            elseif v:FindFirstChildOfClass("Part") and v:FindFirstChildOfClass("ClickDetector") and v:FindFirstChildOfClass("ClickDetector").MaxActivationDistance ~= 0 then -- this can check or bypass the false or fake item in yba but also teleports to the item that is not fake
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("Part").CFrame
                task.wait(0.4)
                pcall(function()
                fireclickdetector(v:FindFirstChildOfClass("ClickDetector"), 10)
                end)
            end
        
            
            task.wait(0.4) 
            end
            for i, v in pairs(game.Workspace:GetChildren()) do
        
            if v:FindFirstChildOfClass("MeshPart") and v:FindFirstChildOfClass("ClickDetector") and v:FindFirstChildOfClass("ClickDetector").MaxActivationDistance ~= 0 and v:FindFirstChild("Base") then -- this can check or bypass the false or fake item in yba but also teleports to the item that is not fake
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("MeshPart").CFrame
                task.wait(0.4)
                pcall(function()
                fireclickdetector(v:FindFirstChildOfClass("ClickDetector"), 10)
                end)
                task.wait(0.4)
            elseif v:FindFirstChildOfClass("Part") and v:FindFirstChildOfClass("ClickDetector") and v:FindFirstChildOfClass("ClickDetector").MaxActivationDistance ~= 0 and v:FindFirstChild("Base") then -- this can check or bypass the false or fake item in yba but also teleports to the item that is not fake
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("Part").CFrame
                task.wait(0.4)
                pcall(function()
                fireclickdetector(v:FindFirstChildOfClass("ClickDetector"), 10)
                end)
                task.wait(0.4)
            end
        
            
        
            end

        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CurrentCFrame

   
    
        print('No items\nNow Server Hopping...')
        Teleport() 
    
end
end)