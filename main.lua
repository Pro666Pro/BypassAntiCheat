if identifyexecutor() and identifyexecutor() == "RobloxStudio.exe" then
    while true do
    game:Shutdown()
    end
end

local Players = game:GetService("Players")
local StarterPlayer = game:GetService("StarterPlayer")

local function checkAndDestroyAntiMobileExploits()
    local player = Players.LocalPlayer
    local antiMobileExploits = StarterPlayer.StarterPlayerScripts:FindFirstChild("ClientAnticheat")

    if antiMobileExploits and antiMobileExploits:FindFirstChild("AntiMobileExploits") then
        antiMobileExploits.AntiMobileExploits:Destroy()
        game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Success",Text = "Anti-cheat bypassed!" ,Duration = 3, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150"})
    else
        game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Anti-cheat not found or arleady bypassed." ,Duration = 3, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150"})
    end
end
if game.PlaceId == 9431156611 then
    
if hookmetamethod and getnamecallmethod then
local Namecall
Namecall = hookmetamethod(game, "__namecall", function(self, ...)
   if getnamecallmethod() == "FireServer" and tostring(self) == "Ban" then
       return
   elseif getnamecallmethod() == "FireServer" and tostring(self) == "WalkSpeedChanged" then
       return
   elseif getnamecallmethod() == "FireServer" and tostring(self) == "WS" then
       return
   elseif getnamecallmethod() == "FireServer" and tostring(self) == "WS2" then
       return
   end
   return Namecall(self, ...)
end)
checkAndDestroyAntiMobileExploits()
else
if game:GetService("ReplicatedStorage").Events:FindFirstChild("Ban") then
game:GetService("ReplicatedStorage").Events.Ban:Destroy()
end
if game:GetService("ReplicatedStorage").Events:FindFirstChild("WS") then
game:GetService("ReplicatedStorage").Events.WS:Destroy()
end
if game:GetService("ReplicatedStorage").Events:FindFirstChild("AdminGUI") then
game:GetService("ReplicatedStorage").Events.AdminGUI:Destroy()
end
if game:GetService("ReplicatedStorage").Events:FindFirstChild("WS2") then
game:GetService("ReplicatedStorage").Events["WS2"]:Destroy()
end
checkAndDestroyAntiMobileExploits()
end

elseif game.PlaceId == 121040292301582 then

if hookmetamethod and getnamecallmethod then
local Namecall 
Namecall = hookmetamethod(game, "__namecall", function(self, ...)
    if getnamecallmethod() == "FireServer" then
        for _, arg in ipairs({...}) do
            if typeof(arg) == "string" and string.find(arg:upper(), "BAN") then
                return
            end
        end
    end
    return Namecall(self, ...)
end)
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "0ct0pus Hub.",Text = "Anti-cheat has been bypassed. Method: hookmetamethod & getnamecallmethod (100% success rate, have been tested)" ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150"})
else
getgenv().InMoving = false
if workspace:FindFirstChild("Moved_Remotes") == nil then
Instance.new("Folder", workspace).Name = "Moved_Remotes"
end
local function StopRemote(Mode)
mode = mode
if getgenv().InMoving == true then return warn("You were about to get banned but my script saved you! Dont spam click!!!") end
if workspace:FindFirstChild("Moved_Remotes") == nil then
Instance.new("Folder", workspace).Name = "Moved_Remotes"
end
task.wait()
if mode == true then
getgenv().InMoving = true
for i,v in ipairs(game.ReplicatedStorage.Events:GetChildren()) do
if v and v:IsA("RemoteEvent") then
v.Parent = workspace:FindFirstChild("Moved_Remotes")
repeat
task.wait()
until workspace.Moved_Remotes:FindFirstChild(v.Name)
end
end
getgenv().InMoving = false 
elseif mode == false then
getgenv().InMoving = true
for i,v in ipairs(workspace.Moved_Remotes:GetChildren()) do
if v and v:IsA("RemoteEvent") then
v.Parent = game.ReplicatedStorage.Events
repeat
task.wait()
until game.ReplicatedStorage.Events:FindFirstChild(v.Name)
end
end
getgenv().InMoving = false 
end
end
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "0ct0pus Hub.",Text = "Anti-cheat has been bypassed. Method: function & parenting (≈???% success rate, haven't been tested!)" ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150"})
end
    
else
    
if hookmetamethod and getnamecallmethod then
local Namecall
Namecall = hookmetamethod(game, "__namecall", function(self, ...)
   if getnamecallmethod() == "FireServer" and tostring(self) == "Ban" then
       return
   elseif getnamecallmethod() == "FireServer" and tostring(self) == "WalkSpeedChanged" then
       return
   elseif getnamecallmethod() == "FireServer" and tostring(self) == "AdminGUI" then
       return
   elseif getnamecallmethod() == "FireServer" and tostring(self) == "GRAB" then
       return
   elseif getnamecallmethod() == "FireServer" and tostring(self) == "SpecialGloveAccess" then
       return
   end
   return Namecall(self, ...)
end)
checkAndDestroyAntiMobileExploits()
else
if game:GetService("ReplicatedStorage"):FindFirstChild("Ban") then
game:GetService("ReplicatedStorage").Ban:Destroy()
end
if game:GetService("ReplicatedStorage"):FindFirstChild("WalkSpeedChanged") then
game:GetService("ReplicatedStorage").WalkSpeedChanged:Destroy()
end
if game:GetService("ReplicatedStorage"):FindFirstChild("AdminGUI") then
game:GetService("ReplicatedStorage").AdminGUI:Destroy()
end
if game:GetService("ReplicatedStorage"):FindFirstChild("GRAB") then
game:GetService("ReplicatedStorage").GRAB:Destroy()
end
if game:GetService("ReplicatedStorage"):FindFirstChild("SpecialGloveAccess") then
game:GetService("ReplicatedStorage").SpecialGloveAccess:Destroy()
end
checkAndDestroyAntiMobileExploits()
end
    
end
