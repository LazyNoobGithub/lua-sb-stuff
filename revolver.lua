if game:GetService("RunService"):IsClient() then error("Script must be server-side in order to work; use h/ and not hl/") end
local Player,game,owner = owner,game
local RealPlayer = Player
do
    print("FE Compatibility code by Mokiros")
    local rp = RealPlayer
    script.Parent = rp.Character
   
    --RemoteEvent for communicating
    local Event = Instance.new("RemoteEvent")
    Event.Name = "UserInput_Event"
 
    --Fake event to make stuff like Mouse.KeyDown work
    local function fakeEvent()
        local t = {_fakeEvent=true,Functions={},Connect=function(self,f)table.insert(self.Functions,f) end}
        t.connect = t.Connect
        return t
    end
 
    --Creating fake input objects with fake variables
    local m = {Target=nil,Hit=CFrame.new(),KeyUp=fakeEvent(),KeyDown=fakeEvent(),Button1Up=fakeEvent(),Button1Down=fakeEvent()}
    local UIS = {InputBegan=fakeEvent(),InputEnded=fakeEvent()}
    local CAS = {Actions={},BindAction=function(self,name,fun,touch,...)
        CAS.Actions[name] = fun and {Name=name,Function=fun,Keys={...}} or nil
    end}
    --Merged 2 functions into one by checking amount of arguments
    CAS.UnbindAction = CAS.BindAction
 
    --This function will trigger the events that have been :Connect()'ed
    local function te(self,ev,...)
        local t = m[ev]
        if t and t._fakeEvent then
            for _,f in pairs(t.Functions) do
                f(...)
            end
        end
    end
    m.TrigEvent = te
    UIS.TrigEvent = te
 
    Event.OnServerEvent:Connect(function(plr,io)
        if plr~=rp then return end
        m.Target = io.Target
        m.Hit = io.Hit
        if not io.isMouse then
            local b = io.UserInputState == Enum.UserInputState.Begin
            if io.UserInputType == Enum.UserInputType.MouseButton1 then
                return m:TrigEvent(b and "Button1Down" or "Button1Up")
            end
            for _,t in pairs(CAS.Actions) do
                for _,k in pairs(t.Keys) do
                    if k==io.KeyCode then
                        t.Function(t.Name,io.UserInputState,io)
                    end
                end
            end
            m:TrigEvent(b and "KeyDown" or "KeyUp",io.KeyCode.Name:lower())
            UIS:TrigEvent(b and "InputBegan" or "InputEnded",io,false)
        end
    end)
    Event.Parent = NLS([==[
    local Player = game:GetService("Players").LocalPlayer
    local Event = script:WaitForChild("UserInput_Event")
 
    local Mouse = Player:GetMouse()
    local UIS = game:GetService("UserInputService")
    local input = function(io,a)
        if a then return end
        --Since InputObject is a client-side instance, we create and pass table instead
        Event:FireServer({KeyCode=io.KeyCode,UserInputType=io.UserInputType,UserInputState=io.UserInputState,Hit=Mouse.Hit,Target=Mouse.Target})
    end
    UIS.InputBegan:Connect(input)
    UIS.InputEnded:Connect(input)
 
    local h,t
    --Give the server mouse data 30 times every second, but only if the values changed
    --If player is not moving their mouse, client won't fire events
    while wait(1/30) do
        if h~=Mouse.Hit or t~=Mouse.Target then
            h,t=Mouse.Hit,Mouse.Target
            Event:FireServer({isMouse=true,Target=t,Hit=h})
        end
    end]==],Player.Character)
 
    ----Sandboxed game object that allows the usage of client-side methods and services
    --Real game object
    local _rg = game
 
    --Metatable for fake service
    local fsmt = {
        __index = function(self,k)
            local s = rawget(self,"_RealService")
            if s then return s[k] end
        end,
        __newindex = function(self,k,v)
            local s = rawget(self,"_RealService")
            if s then s[k]=v end
        end,
        __call = function(self,...)
            local s = rawget(self,"_RealService")
            if s then return s(...) end
        end
    }
    local function FakeService(t,RealService)
        t._RealService = typeof(RealService)=="string" and _rg:GetService(RealService) or RealService
        return setmetatable(t,fsmt)
    end
 
    --Fake game object
    local g = {
        GetService = function(self,s)
            return self[s]
        end,
        Players = FakeService({
            LocalPlayer = FakeService({GetMouse=function(self)return m end},Player)
        },"Players"),
        UserInputService = FakeService(UIS,"UserInputService"),
        ContextActionService = FakeService(CAS,"ContextActionService"),
    }
    rawset(g.Players,"localPlayer",g.Players.LocalPlayer)
    g.service = g.GetService
   
    g.RunService = FakeService({
        RenderStepped = _rg:GetService("RunService").Heartbeat,
        BindToRenderStep = function(self,name,_,fun)
            self._btrs[name] = self.Heartbeat:Connect(fun)
        end,
        UnbindFromRenderStep = function(self,name)
            self._btrs[name]:Disconnect()
        end,
    },"RunService")
 
    setmetatable(g,{
        __index=function(self,s)
            return _rg:GetService(s) or typeof(_rg[s])=="function"
            and function(_,...)return _rg[s](_rg,...)end or _rg[s]
        end,
        __newindex = fsmt.__newindex,
        __call = fsmt.__call
    })
    --Changing owner to fake player object to support owner:GetMouse()
    game,owner = g,g.Players.LocalPlayer
end--// Vortex Gauntlets created by SavageMunkey

local function ragdoll(humanoid)
	for index,joint in pairs(humanoid.Parent:GetDescendants()) do
		if joint:IsA("Motor6D") then
			local socket = Instance.new("BallSocketConstraint")
			local a1 = Instance.new("Attachment")
			local a2 = Instance.new("Attachment")
			a1.Parent = joint.Part0
			a2.Parent = joint.Part1
			socket.Parent = joint.Parent
			socket.Attachment0 = a1
			socket.Attachment1 = a2
			a1.CFrame = joint.C0
			a2.CFrame = joint.C1
			socket.LimitsEnabled = true
			socket.TwistLimitsEnabled = true
			joint:Destroy()
		end
	end
end
printf("Ragdoll Function Loaded - By LazyNoob")

-- h.BreakJointsOnDeath = false
--                         if h.Health == 0 then
--                                 ragdoll(v)
--                         end

-- Revolver by Ietahuoy
local plrr = game:GetService("Players").LocalPlayer
local plname = plrr.Name
wait()
script.Parent        = nil
local requirething   = game:GetObjects("rbxassetid://12780287270")[1]
local add            = require(requirething.Addons)
local MistBackup     = requirething.Mist:Clone() 
local BloodBackup    = requirething.Blood:Clone()
local RevolverBackup = requirething.Revolver:Clone()
script:Destroy()
local charr = plrr.Character
local MainPosition=CFrame.new(0,0,0)
if charr and charr:FindFirstChildOfClass("Part") then
    MainPosition = charr:FindFirstChildOfClass("Part").CFrame
elseif workspace:FindFirstChildOfClass("Part") and charr==nil then
    MainPosition = workspace:FindFirstChildOfClass("Part").CFrame*CFrame.new(0,2,0)
else
    MainPosition = CFrame.new(0,4,0)
end
local accs = {} local f = nil local face = nil local name = ""
local names = {}
if charr then
    name = charr.Name.."."
    for _, acc in pairs(charr:GetDescendants()) do
        if acc:IsA'Accessory' or acc:IsA'Hat' or acc:IsA'BodyColors' or acc:IsA'Shirt' or acc:IsA'Pants' or acc:IsA'ShirtGraphic' or acc:IsA'CharacterMesh' then 
            table.insert(accs,acc:Clone()) 
        elseif acc:IsA'BasePart' and acc.Name == "Head" and acc:FindFirstChildOfClass'Decal' then
            f = acc:FindFirstChildOfClass'Decal'.Texture
        end 
    end
end
local sn = 0
local attacking = false
local repeatkey = false
local repeatmouse = false
local Neck=CFrame.new(0,0,0)
local Torso=CFrame.new(0,0,0)
local LeftArm=CFrame.new(0,0,0)
local RightArm=CFrame.new(0,0,0)
local LeftLeg=CFrame.new(0,0,0)
local RightLeg=CFrame.new(0,0,0)
function InstanceNW(typp,anth)
    local part = Instance.new(typp)
    if anth ~= nil then for i,v in next, anth do pcall(function() part[i] = v end) end end
    return part
end
function alerp(tble,animspeed)
    Torso=Torso:Lerp(tble[1],animspeed)
    Neck=Neck:Lerp(tble[2],animspeed)
    LeftArm=LeftArm:Lerp(tble[3],animspeed)
    RightArm=RightArm:Lerp(tble[4],animspeed)
    LeftLeg=LeftLeg:Lerp(tble[5],animspeed)
    RightLeg=RightLeg:Lerp(tble[6],animspeed)
end
local flymode = false
local running = false
local stoped = false
local W,A,S,D=false,false,false,false
local fallingspeed = 0
local falling = true
local stopeffects = false
local Ignores = {}
local walkspeed = 0.2 local smoke=0 local ammo=8 local CCF=nil
local goreSounds = {3739362156,4459576935,3739364168,4459571224,4459570664,4459572763,4459571342,4459571443,4459573960,3847883680,3929462189,3739335394,3929462677}
local acidburnSounds = {3755119951,3755119738,3755119108}
local swooshSounds = {3932508290,3755637386,3755637186,3755636992,3932507990,3755636825,3755636638,3755636438}
local knifestaSounds = {4307103510,4307102878,4307103239,4307102517}
local MainModel = Instance.new("Model",workspace) MainModel.Name = name MainModel.Archivable=true
local EffectModel = Instance.new("Model",MainModel) EffectModel.Name = "EffectModel" MainModel.Archivable=true
local h=Instance.new("Part",MainModel)h.Size=Vector3.new(2,1,1)h.Color=Color3.new() h.Transparency=0 h.Anchored=true h.CanCollide=true h.Name="Head"
local m=Instance.new("SpecialMesh",h)m.MeshType="Head"m.Scale=Vector3.new(1.25,1.25,1.25)
local t=Instance.new("Part",MainModel)t.Material="Plastic"t.Size=Vector3.new(2,2,1)t.Color=Color3.new() t.Transparency=0 t.Anchored=true t.CanCollide=true t.Name="Torso"
local ll=Instance.new("Part",MainModel)ll.Material="Plastic"ll.Size=Vector3.new(1,2,1)ll.Color=Color3.new() ll.Transparency=0 ll.Anchored=true ll.CanCollide=true ll.Name="Left Leg"
local rl=Instance.new("Part",MainModel)rl.Material="Plastic"rl.Size=Vector3.new(1,2,1)rl.Color=Color3.new() rl.Transparency=0 rl.Anchored=true rl.CanCollide=true rl.Name="Right Leg"
local la=Instance.new("Part",MainModel)la.Material="Plastic"la.Size=Vector3.new(1,2,1)la.Color=Color3.new() la.Transparency=0 la.Anchored=true la.CanCollide=true la.Name="Left Arm"
local ra=Instance.new("Part",MainModel)ra.Material="Plastic"ra.Size=Vector3.new(1,2,1)ra.Color=Color3.new() ra.Transparency=0 ra.Anchored=true ra.CanCollide=true ra.Name="Right Arm"
local hum=Instance.new("Humanoid",MainModel) hum.Name = "" hum.HealthDisplayType = "AlwaysOff"
local hairat = Instance.new("Attachment") hairat.Parent = h hairat.Position = Vector3.new(0,0.6,0) hairat.Name = "HairAttachment"
local hatat = Instance.new("Attachment") hatat.Parent = h hatat.Position = Vector3.new(0,0.6,0) hatat.Name = "HatAttachment"
local ffat = Instance.new("Attachment") ffat.Parent = h ffat.Position = Vector3.new(0,0,-0.6) ffat.Name = "FaceFrontAttachment"
local fcat = Instance.new("Attachment") fcat.Parent = h fcat.Position = Vector3.new(0,0,0) fcat.Name = "FaceCenterAttachment"
local bbat = Instance.new("Attachment") bbat.Parent = t bbat.Position = Vector3.new(0,0,0.5) bbat.Name = "BodyBackAttachment"
local bfat = Instance.new("Attachment") bfat.Parent = t bfat.Position = Vector3.new(0,0,-0.5) bfat.Name = "BodyFrontAttachment"
local lcat = Instance.new("Attachment") lcat.Parent = t lcat.Position = Vector3.new(-1,1,0) lcat.Name = "LeftCollarAttachment"
local necat = Instance.new("Attachment") necat.Parent = t necat.Position = Vector3.new(0,1,0) necat.Name = "NeckAttachment"
local rcat = Instance.new("Attachment") rcat.Parent = t rcat.Position = Vector3.new(1,1,0) rcat.Name = "RightCollarAttachment"
local wbat = Instance.new("Attachment") wbat.Parent = t wbat.Position = Vector3.new(0,-1,0.5) wbat.Name = "WaistBackAttachment"
local wcat = Instance.new("Attachment") wcat.Parent = t wcat.Position = Vector3.new(0,-1,0) wcat.Name = "WaistCenterAttachment"
local wfat = Instance.new("Attachment") wfat.Parent = t wfat.Position = Vector3.new(0,-1,-0.5) wfat.Name = "WaistFrontAttachment"
local wfat = Instance.new("Attachment") wfat.Parent = ll wfat.Position = Vector3.new(0,-1,0) wfat.Name = "LeftFootAttachment"
local wfat = Instance.new("Attachment") wfat.Parent = rl wfat.Position = Vector3.new(0,-1,0) wfat.Name = "RightFootAttachment"
local wfat = Instance.new("Attachment") wfat.Parent = ra wfat.Position = Vector3.new(0,1,0) wfat.Name = "RightShoulderAttachment"
local wfat = Instance.new("Attachment") wfat.Parent = ra wfat.Position = Vector3.new(0,-1,0) wfat.Name = "RightGripAttachment"
local wfat = Instance.new("Attachment") wfat.Parent = la wfat.Position = Vector3.new(0,1,0) wfat.Name = "LeftShoulderAttachment"
local wfat = Instance.new("Attachment") wfat.Parent = la wfat.Position = Vector3.new(0,-1,0) wfat.Name = "LeftGripAttachment"
local cam = Instance.new("Part",game:GetService("Lighting")) cam.Name = "<["..plrr.Name.."]>" cam.Anchored=true cam.CanCollide=false cam.Transparency=1 cam.Size=Vector3.new()
local playmus = true local musid="https://audio.jukehost.co.uk/JRQQBzcMbeTse1L4WhqohMXoAv2GKHLs" local mus = Instance.new("Sound") mus.Volume = 6 mus.Pitch = 1 mus.EmitterSize = 100 mus.SoundId = "rbxassetid://"..musid mus.Parent = t mus.Playing = playmus mus.Looped = true
local muspos = nil muspos = mus.TimePosition local fixmus = false
local gun = RevolverBackup:Clone() gun.Parent=MainModel
local EventBackup = Instance.new("RemoteEvent")
EventBackup.Name = "InputEventFrom"..plrr.Name
local CamBackup = Instance.new("RemoteEvent")
CamBackup.Name = "CamEventFrom"..plrr.Name
local EventBackupC = EventBackup:Clone()
local CamBackupC = CamBackup:Clone()
local InputEvent = Instance.new("RemoteEvent")
InputEvent.Name = "InputEventFrom"..plrr.Name
InputEvent.Parent = game:GetService("JointsService")
local CamEvent = Instance.new("RemoteEvent")
CamEvent.Name = "CamEventFrom"..plrr.Name
CamEvent.Parent = game:GetService("JointsService")
local CAS = {Actions={}}
local fakeEvent = function()
    local t = {_fakeEvent=true}
    t.Connect = function(self,f)self.Function=f end
    t.connect = t.Connect
    return t
end
local m = {Target=nil,Hit=CFrame.new(),KeyUp=fakeEvent(),KeyDown=fakeEvent(),Button1Up=fakeEvent(),Button1Down=fakeEvent()}
local UIS = {InputBegan=fakeEvent(),InputEnded=fakeEvent()}
function CAS:BindAction(name,fun,touch,...)
    CAS.Actions[name] = {Name=name,Function=fun,Keys={...}}
end
function CAS:UnbindAction(name)
    CAS.Actions[name] = nil
end
local function te(self,ev,...)
    local t = m[ev]
    if t and t._fakeEvent and t.Function then
        t.Function(...)
    end
end
local Mouse,mouse,UserInputService,ContextActionService
do
    m.TrigEvent = te
    UIS.TrigEvent = te
    function ezzzz(plr,io)
        local m2=plrr:GetMouse()
        m.Target=m2.Target
        m.Hit=m2.Hit
        if plr~=plrr then return end
        if io.isMouse then
            m.Target = io.Target
            m.Hit = io.Hit
        elseif io.UserInputType == Enum.UserInputType.MouseButton1 then
            if io.UserInputState == Enum.UserInputState.Begin then
                m:TrigEvent("Button1Down")
            else
                m:TrigEvent("Button1Up")
            end
        else
            for n,t in pairs(CAS.Actions) do
                for _,k in pairs(t.Keys) do
                    if k==io.KeyCode then
                        t.Function(t.Name,io.UserInputState,io)
                    end
                end
            end
            if io.UserInputState == Enum.UserInputState.Begin then
                m:TrigEvent("KeyDown",io.KeyCode.Name:lower())
                UIS:TrigEvent("InputBegan",io,false)
            else
                m:TrigEvent("KeyUp",io.KeyCode.Name:lower())
                UIS:TrigEvent("InputEnded",io,false)
            end
        end
    end
    local input = function(io,a)
        if a then return end
        local io = {KeyCode=io.KeyCode,UserInputType=io.UserInputType,UserInputState=io.UserInputState}
        ezzzz(plrr,io)
    end
    local UIS2 = game:GetService("UserInputService")

    UIS2.InputBegan:Connect(input)
    UIS2.InputEnded:Connect(input)
    Mouse,mouse,UserInputService,ContextActionService,mausee = m,m,UIS,CAS,m
end
function EndScript() script:ClearAllChildren() script.Disabled = true script:Destroy() stoped=true EventBackup:Destroy() CamBackupC:Destroy() inputScript:Destroy() EventBackupC:Destroy() plrr:WaitForChild('PlayerGui'):WaitForChild('Input'):Destroy() pcall(function() game:GetService("JointsService")["InputEventFrom"..plrr.Name]:Destroy() game:GetService("JointsService")["CamEventFrom"..plrr.Name]:Destroy() end) end 
function onChatted(msg) if (msg == ".Stop" or msg == ".stop" or msg == "/e .Stop" or msg == "/e .stop" or msg == "/e get/nog sr" or msg == "get/nog sr") then EndScript() end end 
function onOwnerChatted(msg) if (msg == ".Stopall" or msg == ".stopall" or msg == "/e .Stopall" or msg == "/e .stopall") then EndScript() end end 
plrr.Chatted:connect(onChatted)
for _,p in pairs(game.Players:GetPlayers()) do if p.Name==plname then p.Chatted:connect(onOwnerChatted) end end
game.Players.PlayerAdded:Connect(function(p) if p.Name==plrr.Name then p.Chatted:connect(onChatted) end if p.Name==plname then p.Chatted:connect(onOwnerChatted) end end)
table.insert(Ignores,MainModel)table.insert(Ignores,EffectModel)
function anti()
    if MainModel == nil or MainModel.Parent ~= workspace or MainModel.Parent == nil or not MainModel then
        MainModel = Instance.new("Model",workspace) MainModel.Name = name MainModel.Archivable=true
        EffectModel = Instance.new("Model",MainModel) EffectModel.Name = "EffectModel" MainModel.Archivable=true
        table.insert(Ignores,MainModel)table.insert(Ignores,EffectModel)
    end
    if EffectModel == nil or EffectModel.Parent ~= MainModel or EffectModel.Parent == nil or not EffectModel then
        EffectModel = Instance.new("Model",MainModel) EffectModel.Name = "EffectModel" MainModel.Archivable=true
        table.insert(Ignores,EffectModel)
    end
    if cam == nil or cam.Parent ~= game:GetService("Lighting") or cam.Parent == nil or not cam then
        cam = Instance.new("Part",game:GetService("Lighting")) cam.Name = "<["..plrr.Name.."]>" cam.Anchored=true cam.CanCollide=false cam.Transparency=1 cam.Size=Vector3.new()
    end
    if gun == nil or gun.Parent ~= MainModel or gun.Parent == nil or not gun then
        gun = RevolverBackup:Clone() gun.Parent=MainModel
    end
    if h == nil or h.Parent ~= MainModel or h.Parent == nil or not h then
        h=Instance.new("Part",MainModel)h.Size=Vector3.new(2,1,1)h.Color=Color3.new() h.Transparency=0 h.Anchored=true h.CanCollide=true h.Name="Head"
        local m=Instance.new("SpecialMesh",h)m.MeshType="Head"m.Scale=Vector3.new(1.25,1.25,1.25) 
        local hairat = Instance.new("Attachment") hairat.Parent = h hairat.Position = Vector3.new(0,0.6,0) hairat.Name = "HairAttachment"
        local hatat = Instance.new("Attachment") hatat.Parent = h hatat.Position = Vector3.new(0,0.6,0) hatat.Name = "HatAttachment"
        local ffat = Instance.new("Attachment") ffat.Parent = h ffat.Position = Vector3.new(0,0,-0.6) ffat.Name = "FaceFrontAttachment"
        local fcat = Instance.new("Attachment") fcat.Parent = h fcat.Position = Vector3.new(0,0,0) fcat.Name = "FaceCenterAttachment"       
        if MainModel:FindFirstChildOfClass("BodyColors") then MainModel:FindFirstChildOfClass("BodyColors"):Destroy() end
    end
    if t == nil or t.Parent ~= MainModel or t.Parent == nil or not t then
        t=Instance.new("Part",MainModel)t.Material="Plastic"t.Size=Vector3.new(2,2,1)t.Color=Color3.new() t.Transparency=0 t.Anchored=true t.CanCollide=true t.Name="Torso"
        local bbat = Instance.new("Attachment") bbat.Parent = t bbat.Position = Vector3.new(0,0,0.5) bbat.Name = "BodyBackAttachment"
        local bfat = Instance.new("Attachment") bfat.Parent = t bfat.Position = Vector3.new(0,0,-0.5) bfat.Name = "BodyFrontAttachment"
        local lcat = Instance.new("Attachment") lcat.Parent = t lcat.Position = Vector3.new(-1,1,0) lcat.Name = "LeftCollarAttachment"
        local necat = Instance.new("Attachment") necat.Parent = t necat.Position = Vector3.new(0,1,0) necat.Name = "NeckAttachment"
        local rcat = Instance.new("Attachment") rcat.Parent = t rcat.Position = Vector3.new(1,1,0) rcat.Name = "RightCollarAttachment"
        local wbat = Instance.new("Attachment") wbat.Parent = t wbat.Position = Vector3.new(0,-1,0.5) wbat.Name = "WaistBackAttachment"
        local wcat = Instance.new("Attachment") wcat.Parent = t wcat.Position = Vector3.new(0,-1,0) wcat.Name = "WaistCenterAttachment"
        local wfat = Instance.new("Attachment") wfat.Parent = t wfat.Position = Vector3.new(0,-1,-0.5) wfat.Name = "WaistFrontAttachment"   
        if MainModel:FindFirstChildOfClass("BodyColors") then MainModel:FindFirstChildOfClass("BodyColors"):Destroy() end
    end
    if ll == nil or ll.Parent ~= MainModel or ll.Parent == nil or not ll then
        ll=Instance.new("Part",MainModel)ll.Material="Plastic"ll.Size=Vector3.new(1,2,1)ll.Color=Color3.new() ll.Transparency=0 ll.Anchored=true ll.CanCollide=true ll.Name="Left Leg"
        local wfat = Instance.new("Attachment") wfat.Parent = ll wfat.Position = Vector3.new(0,-1,0) wfat.Name = "LeftFootAttachment"
        if MainModel:FindFirstChildOfClass("BodyColors") then MainModel:FindFirstChildOfClass("BodyColors"):Destroy() end
    end
    if rl == nil or rl.Parent ~= MainModel or rl.Parent == nil or not rl then
        rl=Instance.new("Part",MainModel)rl.Material="Plastic"rl.Size=Vector3.new(1,2,1)rl.Color=Color3.new() rl.Transparency=0 rl.Anchored=true rl.CanCollide=true rl.Name="Right Leg"
        local wfat = Instance.new("Attachment") wfat.Parent = rl wfat.Position = Vector3.new(0,-1,0) wfat.Name = "RightFootAttachment"
        if MainModel:FindFirstChildOfClass("BodyColors") then MainModel:FindFirstChildOfClass("BodyColors"):Destroy() end
    end
    if la == nil or la.Parent ~= MainModel or la.Parent == nil or not la then
        la=Instance.new("Part",MainModel)la.Material="Plastic"la.Size=Vector3.new(1,2,1)la.Color=Color3.new() la.Transparency=0 la.Anchored=true la.CanCollide=true la.Name="Left Arm"
        local wfat = Instance.new("Attachment") wfat.Parent = la wfat.Position = Vector3.new(0,1,0) wfat.Name = "LeftShoulderAttachment"
        local wfat = Instance.new("Attachment") wfat.Parent = la wfat.Position = Vector3.new(0,-1,0) wfat.Name = "LeftGripAttachment"
        if MainModel:FindFirstChildOfClass("BodyColors") then MainModel:FindFirstChildOfClass("BodyColors"):Destroy() end
    end
    if ra == nil or ra.Parent ~= MainModel or ra.Parent == nil or not ra then
        ra=Instance.new("Part",MainModel)ra.Material="Plastic"ra.Size=Vector3.new(1,2,1)ra.Color=Color3.new() ra.Transparency=0 ra.Anchored=true ra.CanCollide=true ra.Name="Right Arm"
        local wfat = Instance.new("Attachment") wfat.Parent = ra wfat.Position = Vector3.new(0,1,0) wfat.Name = "RightShoulderAttachment"
        local wfat = Instance.new("Attachment") wfat.Parent = ra wfat.Position = Vector3.new(0,-1,0) wfat.Name = "RightGripAttachment"      
        if MainModel:FindFirstChildOfClass("BodyColors") then MainModel:FindFirstChildOfClass("BodyColors"):Destroy() end
    end 
    if h:FindFirstChildOfClass("SpecialMesh")==nil then
        local m=Instance.new("SpecialMesh",h)m.MeshType="Head"m.Scale=Vector3.new(1.25,1.25,1.25)
    end
    if hum == nil or hum.Parent ~= MainModel or hum.Parent == nil or not hum then
        hum=Instance.new("Humanoid",MainModel) hum.Name = "" hum.HealthDisplayType = "AlwaysOff"
    end
    if face == nil or face.Parent ~= h or face.Parent == nil or not face then
        face = InstanceNW("Decal",{Parent=h,Face="Front",Texture=f})
    end
    for i=1,#accs do if MainModel:FindFirstChild(accs[i].Name)==nil then accs[i]:Clone().Parent=MainModel end end
end
function system()
    game:GetService("RunService").Heartbeat:Connect(function() sn=sn+(1/2) 
        CCF=workspace.CurrentCamera.CoordinateFrame
        local m2=plrr:GetMouse()
        ezzzz({isMouse=true,Target=m2.Target,Hit=m2.Hit})
        if game:GetService("Lighting"):FindFirstChild("<["..plname.."]>") then
            workspace.CurrentCamera.CameraSubject = game:GetService("Lighting"):FindFirstChild("<["..plname.."]>")
            workspace.CurrentCamera.CameraType = "Custom"
            workspace.CurrentCamera.HeadLocked = true
            workspace.CurrentCamera.HeadScale = 1
            workspace.CurrentCamera.FieldOfView = 70   
        end
        if stoped == false then
            if game.Players:FindFirstChild(plrr.Name) then plrr=game.Players:FindFirstChild(plrr.Name) end
            if game.Players:FindFirstChild(plrr.Name) and plrr.Character then local ch = plrr.Character plrr.Character=nil ch:Destroy() end
            if MainModel == nil or MainModel.Parent ~= workspace or MainModel.Parent == nil or not MainModel then
                MainModel = Instance.new("Model",workspace) MainModel.Name = name MainModel.Archivable=true
                EffectModel = Instance.new("Model",MainModel) EffectModel.Name = "EffectModel" MainModel.Archivable=true
                table.insert(Ignores,MainModel)table.insert(Ignores,EffectModel)
            end
            if EffectModel == nil or EffectModel.Parent ~= MainModel or EffectModel.Parent == nil or not EffectModel then
                EffectModel = Instance.new("Model",MainModel) EffectModel.Name = "EffectModel" MainModel.Archivable=true
                table.insert(Ignores,EffectModel)
            end
            if cam == nil or cam.Parent ~= game:GetService("Lighting") or cam.Parent == nil or not cam then
                cam = Instance.new("Part",game:GetService("Lighting")) cam.Name = "<["..plrr.Name.."]>" cam.Anchored=true cam.CanCollide=false cam.Transparency=1 cam.Size=Vector3.new()
            end
            if gun == nil or gun.Parent ~= MainModel or gun.Parent == nil or not gun then
                gun = RevolverBackup:Clone() gun.Parent=MainModel
            end
            if h == nil or h.Parent ~= MainModel or h.Parent == nil or not h then
                h=Instance.new("Part",MainModel)h.Size=Vector3.new(2,1,1)h.Color=Color3.new() h.Transparency=0 h.Anchored=true h.CanCollide=true h.Name="Head"
                local m=Instance.new("SpecialMesh",h)m.MeshType="Head"m.Scale=Vector3.new(1.25,1.25,1.25) 
                local hairat = Instance.new("Attachment") hairat.Parent = h hairat.Position = Vector3.new(0,0.6,0) hairat.Name = "HairAttachment"
                local hatat = Instance.new("Attachment") hatat.Parent = h hatat.Position = Vector3.new(0,0.6,0) hatat.Name = "HatAttachment"
                local ffat = Instance.new("Attachment") ffat.Parent = h ffat.Position = Vector3.new(0,0,-0.6) ffat.Name = "FaceFrontAttachment"
                local fcat = Instance.new("Attachment") fcat.Parent = h fcat.Position = Vector3.new(0,0,0) fcat.Name = "FaceCenterAttachment"       
                if MainModel:FindFirstChildOfClass("BodyColors") then MainModel:FindFirstChildOfClass("BodyColors"):Destroy() end
            end
            if t == nil or t.Parent ~= MainModel or t.Parent == nil or not t then
                t=Instance.new("Part",MainModel)t.Material="Plastic"t.Size=Vector3.new(2,2,1)t.Color=Color3.new() t.Transparency=0 t.Anchored=true t.CanCollide=true t.Name="Torso"
                local bbat = Instance.new("Attachment") bbat.Parent = t bbat.Position = Vector3.new(0,0,0.5) bbat.Name = "BodyBackAttachment"
                local bfat = Instance.new("Attachment") bfat.Parent = t bfat.Position = Vector3.new(0,0,-0.5) bfat.Name = "BodyFrontAttachment"
                local lcat = Instance.new("Attachment") lcat.Parent = t lcat.Position = Vector3.new(-1,1,0) lcat.Name = "LeftCollarAttachment"
                local necat = Instance.new("Attachment") necat.Parent = t necat.Position = Vector3.new(0,1,0) necat.Name = "NeckAttachment"
                local rcat = Instance.new("Attachment") rcat.Parent = t rcat.Position = Vector3.new(1,1,0) rcat.Name = "RightCollarAttachment"
                local wbat = Instance.new("Attachment") wbat.Parent = t wbat.Position = Vector3.new(0,-1,0.5) wbat.Name = "WaistBackAttachment"
                local wcat = Instance.new("Attachment") wcat.Parent = t wcat.Position = Vector3.new(0,-1,0) wcat.Name = "WaistCenterAttachment"
                local wfat = Instance.new("Attachment") wfat.Parent = t wfat.Position = Vector3.new(0,-1,-0.5) wfat.Name = "WaistFrontAttachment"   
                if MainModel:FindFirstChildOfClass("BodyColors") then MainModel:FindFirstChildOfClass("BodyColors"):Destroy() end
            end
            if ll == nil or ll.Parent ~= MainModel or ll.Parent == nil or not ll then
                ll=Instance.new("Part",MainModel)ll.Material="Plastic"ll.Size=Vector3.new(1,2,1)ll.Color=Color3.new() ll.Transparency=0 ll.Anchored=true ll.CanCollide=true ll.Name="Left Leg"
                local wfat = Instance.new("Attachment") wfat.Parent = ll wfat.Position = Vector3.new(0,-1,0) wfat.Name = "LeftFootAttachment"
                if MainModel:FindFirstChildOfClass("BodyColors") then MainModel:FindFirstChildOfClass("BodyColors"):Destroy() end
            end
            if rl == nil or rl.Parent ~= MainModel or rl.Parent == nil or not rl then
                rl=Instance.new("Part",MainModel)rl.Material="Plastic"rl.Size=Vector3.new(1,2,1)rl.Color=Color3.new() rl.Transparency=0 rl.Anchored=true rl.CanCollide=true rl.Name="Right Leg"
                local wfat = Instance.new("Attachment") wfat.Parent = rl wfat.Position = Vector3.new(0,-1,0) wfat.Name = "RightFootAttachment"
                if MainModel:FindFirstChildOfClass("BodyColors") then MainModel:FindFirstChildOfClass("BodyColors"):Destroy() end
            end
            if la == nil or la.Parent ~= MainModel or la.Parent == nil or not la then
                la=Instance.new("Part",MainModel)la.Material="Plastic"la.Size=Vector3.new(1,2,1)la.Color=Color3.new() la.Transparency=0 la.Anchored=true la.CanCollide=true la.Name="Left Arm"
                local wfat = Instance.new("Attachment") wfat.Parent = la wfat.Position = Vector3.new(0,1,0) wfat.Name = "LeftShoulderAttachment"
                local wfat = Instance.new("Attachment") wfat.Parent = la wfat.Position = Vector3.new(0,-1,0) wfat.Name = "LeftGripAttachment"
                if MainModel:FindFirstChildOfClass("BodyColors") then MainModel:FindFirstChildOfClass("BodyColors"):Destroy() end
            end
            if ra == nil or ra.Parent ~= MainModel or ra.Parent == nil or not ra then
                ra=Instance.new("Part",MainModel)ra.Material="Plastic"ra.Size=Vector3.new(1,2,1)ra.Color=Color3.new() ra.Transparency=0 ra.Anchored=true ra.CanCollide=true ra.Name="Right Arm"
                local wfat = Instance.new("Attachment") wfat.Parent = ra wfat.Position = Vector3.new(0,1,0) wfat.Name = "RightShoulderAttachment"
                local wfat = Instance.new("Attachment") wfat.Parent = ra wfat.Position = Vector3.new(0,-1,0) wfat.Name = "RightGripAttachment"      
                if MainModel:FindFirstChildOfClass("BodyColors") then MainModel:FindFirstChildOfClass("BodyColors"):Destroy() end
            end 
            if h:FindFirstChildOfClass("SpecialMesh")==nil then
                local m=Instance.new("SpecialMesh",h)m.MeshType="Head"m.Scale=Vector3.new(1.25,1.25,1.25)
            end
            if hum == nil or hum.Parent ~= MainModel or hum.Parent == nil or not hum then
                hum=Instance.new("Humanoid",MainModel) hum.Name = "" hum.HealthDisplayType = "AlwaysOff"
            end
            if face == nil or face.Parent ~= h or face.Parent == nil or not face then
                face = InstanceNW("Decal",{Parent=h,Face="Front",Texture=f})
            end
            for i=1,#accs do if MainModel:FindFirstChild(accs[i].Name)==nil then accs[i]:Clone().Parent=MainModel end end
            anti()
            cam.CFrame=MainPosition*Neck cam.Anchored=true cam.CanCollide=false cam.Transparency=1 cam.Size=Vector3.new()
            local chrrr = MainModel:GetChildren() for i=1,#chrrr do
                if chrrr[i] == EffectModel or chrrr[i] == h or chrrr[i] == t or chrrr[i] == rl or chrrr[i] == hum or chrrr[i] == ll or chrrr[i] == ra or chrrr[i] == la or chrrr[i] == gun or chrrr[i]:IsA'Accessory' or chrrr[i]:IsA'Hat' or chrrr[i]:IsA'Shirt' or chrrr[i]:IsA'Pants' or chrrr[i]:IsA'BodyColors' or chrrr[i]:IsA'ShirtGraphic' or chrrr[i]:IsA'CharacterMesh' or chrrr[i]:IsA'BillboardGui' then else chrrr[i]:Destroy() end
            end
            if game.Players:FindFirstChild(plrr.Name) and plrr:FindFirstChild('Backpack') then plrr:WaitForChild('Backpack'):ClearAllChildren() end
            local rc=Ray.new(MainPosition.p,(CFrame.new(0,-1,0).p).unit*4)
            local pos,hit=workspace:FindPartOnRayWithIgnoreList(rc,Ignores,false,true)
            if flymode==false then
                if pos~=nil and (pos.CanCollide~=false or pos.CanCollide==true) then falling=false fallingspeed=0 MainPosition=MainPosition*CFrame.new(0,hit.Y-MainPosition.Y+3,0)
                elseif pos~=nil and (pos.CanCollide~=true or pos.CanCollide==false) then table.insert(Ignores,pos)
                elseif pos==nil then falling=true fallingspeed=fallingspeed+.06 MainPosition=MainPosition-Vector3.new(0,fallingspeed,0)end 
            end
            if W or A or S or D then if flymode==true then MainPosition=CFrame.new(MainPosition.p,CCF.p) else MainPosition=CFrame.new(MainPosition.p,Vector3.new(CCF.x,MainPosition.y,CCF.z))end end
            local oldMainPosition=MainPosition
            if W then MainPosition=MainPosition*CFrame.new(0,0,walkspeed)end
            if S then MainPosition=MainPosition*CFrame.new(0,0,-walkspeed)end
            if A then MainPosition=MainPosition*CFrame.new(walkspeed,0,0)end
            if D then MainPosition=MainPosition*CFrame.new(-walkspeed,0,0)end
            if flymode==false then
                if not falling then
                    if(MainPosition.X~=oldMainPosition.X or MainPosition.Z~=oldMainPosition.Z)then MainPosition=CFrame.new(MainPosition.p,oldMainPosition.p)
                        if attacking == false then
                            if running == false then
                                alerp({CFrame.new(0,0+0.075*math.sin(sn/8),0)*CFrame.Angles(math.rad(2.5-1*math.cos(sn/8)),math.rad(180-10*math.cos(sn/8)),math.rad(0-2.5*math.cos(sn/8))),CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0+1*math.cos(sn/8)),math.rad(0+10*math.cos(sn/8)),math.rad(0+2.5*math.cos(sn/8))),CFrame.new(-1,0+0.025*math.sin(sn/18),-0.5)*CFrame.Angles(math.rad(60+5*math.cos(sn/18)),math.rad(0-5*math.cos(sn/18)),math.rad(20)),
                                    CFrame.new(0.5,0+0.075*math.sin(sn/18),-0.75)*CFrame.Angles(math.rad(80+5*math.cos(sn/8)),math.rad(40-5*math.cos(sn/18)),math.rad(-60)),CFrame.new(-.5,-2+0.2*math.cos(sn/8),0-1*math.sin(sn/8))*CFrame.Angles(math.rad(-10+40*math.sin(sn/8)),math.rad(10-5*math.cos(sn/36)),math.rad(0-2.5*math.cos(sn/18))),CFrame.new(.5,-2-0.2*math.cos(sn/8),0+1*math.sin(sn/8))*CFrame.Angles(math.rad(-10-40*math.sin(sn/8)),math.rad(0-5*math.cos(sn/18)),math.rad(0-2.5*math.cos(sn/18)))},.2)                    
                            else
                                alerp({CFrame.new(0,0+0.075*math.sin(sn/6),0)*CFrame.Angles(math.rad(12.5-1*math.cos(sn/6)),math.rad(180-10*math.cos(sn/6)),math.rad(0-2.5*math.cos(sn/6))),CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(10+1*math.cos(sn/6)),math.rad(0+10*math.cos(sn/6)),math.rad(0+2.5*math.cos(sn/6))),CFrame.new(-0.5,0.5+0.025*math.sin(sn/18),-0.5)*CFrame.Angles(math.rad(120+5*math.cos(sn/18)),math.rad(0-5*math.cos(sn/18)),math.rad(30)),
                                    CFrame.new(0.5,0+0.075*math.sin(sn/18),-0.75)*CFrame.Angles(math.rad(140+5*math.cos(sn/6)),math.rad(0-5*math.cos(sn/18)),math.rad(-20)),CFrame.new(-.5,-2+0.2*math.cos(sn/6),0-1*math.sin(sn/6))*CFrame.Angles(math.rad(0+40*math.sin(sn/6)),math.rad(10-5*math.cos(sn/36)),math.rad(0-2.5*math.cos(sn/18))),CFrame.new(.5,-2-0.2*math.cos(sn/6),0+1*math.sin(sn/6))*CFrame.Angles(math.rad(0-40*math.sin(sn/6)),math.rad(0-5*math.cos(sn/18)),math.rad(0-2.5*math.cos(sn/18)))},.2)                    
                            end
                        end
                    else
                        if attacking == false then
                            alerp({CFrame.new(0,-0.1+0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(210),math.rad(0)),CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0-1*math.cos(sn/18)),math.rad(-30),math.rad(0)),CFrame.new(-1,0+0.025*math.sin(sn/18),-0.5)*CFrame.Angles(math.rad(40+5*math.cos(sn/18)),math.rad(0-5*math.cos(sn/18)),math.rad(30)),
                                CFrame.new(0.5,0+0.075*math.sin(sn/18),-0.75)*CFrame.Angles(math.rad(40+5*math.cos(sn/18)),math.rad(40-5*math.cos(sn/18)),math.rad(-40)),CFrame.new(-.5,-1.9-0.1*math.sin(sn/18),-0.15)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(10),math.rad(0)),CFrame.new(.5,-2-0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(-5+1*math.cos(sn/18)),math.rad(0),math.rad(0))},.2)
                        end
                    end
                elseif falling then 
                    if(MainPosition.X~=oldMainPosition.X or MainPosition.Z~=oldMainPosition.Z) then MainPosition=CFrame.new(MainPosition.p,oldMainPosition.p)end
                    if attacking == false then
                        if fallingspeed>0 then
                            alerp({CFrame.new(0,0,0)*CFrame.Angles(math.rad(15-10*math.cos(sn/9)),math.rad(180),0),CFrame.new(0,1.5,-0.15)*CFrame.Angles(math.rad(-20-10*math.cos(sn/9)),0,0),CFrame.new(-1.75,0.25,-0.15)*CFrame.Angles(math.rad(15+10*math.sin(sn/9)),0,math.rad(-35-10*math.sin(sn/9))),
                                CFrame.new(1.75,0.25,-0.15)*CFrame.Angles(math.rad(15+10*math.sin(sn/9)),0,math.rad(35+10*math.sin(sn/9))),CFrame.new(-.5,-2,0)*CFrame.Angles(math.rad(-5+2.5*math.cos(sn/9)),math.rad(10),0),CFrame.new(.5,-1,-0.25)*CFrame.Angles(math.rad(-10-5*math.sin(sn/9)),math.rad(-5),0)},.2)
                        else
                            alerp({CFrame.new(0,0,0)*CFrame.Angles(math.rad(-5-5*math.cos(sn/9)),math.rad(180),0),CFrame.new(0,1.5,-0.15)*CFrame.Angles(math.rad(5-10*math.cos(sn/9)),0,0),CFrame.new(-1.5,0.75,-0.75)*CFrame.Angles(math.rad(115+10*math.sin(sn/9)),0,math.rad(-10-5*math.sin(sn/9))),
                                CFrame.new(1.5,0.75,-0.75)*CFrame.Angles(math.rad(115+10*math.sin(sn/9)),0,math.rad(10+5*math.sin(sn/9))),CFrame.new(-.5,-1.5,-0.15)*CFrame.Angles(math.rad(-10+5*math.cos(sn/9)),math.rad(5),0),CFrame.new(.5,-0.5,-0.35)*CFrame.Angles(math.rad(-20-10*math.sin(sn/9)),0,0)},.2)
                        end
                    end
                end
            else
                if attacking == false then
                    if(MainPosition.X~=oldMainPosition.X or MainPosition.Z~=oldMainPosition.Z)then
                        alerp({CFrame.new(0,0+0.5*math.sin(sn/8),0)*CFrame.Angles(math.rad(40-1*math.cos(sn/8)),math.rad(180),math.rad(0)),CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(35-5*math.cos(sn/8)),math.rad(0),math.rad(0)),CFrame.new(-1.5,0.25-0.025*math.sin(sn/8),0.5)*CFrame.Angles(math.rad(-60),math.rad(15-10*math.cos(sn/8)),math.rad(-10+5*math.cos(sn/8))),
                            CFrame.new(1.5,0.25-0.025*math.sin(sn/8),0.5)*CFrame.Angles(math.rad(-60),math.rad(-15+10*math.cos(sn/8)),math.rad(15-5*math.cos(sn/8))),CFrame.new(-.5,-1.75+0.15*math.sin(sn/8),-0.15)*CFrame.Angles(math.rad(5-5*math.cos(sn/8)),math.rad(10),math.rad(0)),CFrame.new(.5,-1.5+0.15*math.sin(sn/8),-.5)*CFrame.Angles(math.rad(-20+15*math.cos(sn/8)),math.rad(-5),math.rad(0))},.2)
                    else
                        alerp({CFrame.new(0,0+0.5*math.sin(sn/8),0)*CFrame.Angles(math.rad(10-1*math.cos(sn/8)),math.rad(180),math.rad(0)),CFrame.new(0,1.5,-0.15)*CFrame.Angles(math.rad(5-5*math.cos(sn/8)),math.rad(0),math.rad(0)),CFrame.new(-1.5,0-0.025*math.sin(sn/8),0)*CFrame.Angles(math.rad(10),math.rad(15-10*math.cos(sn/8)),math.rad(-5+5*math.cos(sn/8))),
                            CFrame.new(1.5,0-0.025*math.sin(sn/8),0)*CFrame.Angles(math.rad(10),math.rad(-15+10*math.cos(sn/8)),math.rad(5-5*math.cos(sn/8))),CFrame.new(-.5,-1.75+0.15*math.sin(sn/8),-0.15)*CFrame.Angles(math.rad(5-5*math.cos(sn/8)),math.rad(10),math.rad(0)),CFrame.new(.5,-1.5+0.15*math.sin(sn/8),-.5)*CFrame.Angles(math.rad(-20+15*math.cos(sn/8)),math.rad(-5),math.rad(0))},.2)
                    end
                end
            end
            if MainPosition.Y<=-200 then fallingspeed=0 MainPosition=MainPosition+Vector3.new(0,250,0)end
            t.CFrame=MainPosition*Torso
            h.CFrame=t.CFrame*Neck
            ll.CFrame=t.CFrame*LeftLeg
            rl.CFrame=t.CFrame*RightLeg
            la.CFrame=t.CFrame*LeftArm
            ra.CFrame=t.CFrame*RightArm
            gun.CFrame=ra.CFrame*CFrame.new(0,-2,-0.25)*CFrame.Angles(math.rad(-90),0,0)
            t.Transparency=0 h.Transparency=0 ll.Transparency=0 rl.Transparency=0 la.Transparency=0 ra.Transparency=0
            t.Material="Plastic" h.Material="Plastic" ll.Material="Plastic" rl.Material="Plastic" la.Material="Plastic" ra.Material="Plastic"
            for i=1,#accs do if accs[i]:IsA'BodyColors' then t.Color=accs[i].TorsoColor3 h.Color=accs[i].HeadColor3 ll.Color=accs[i].LeftLegColor3 rl.Color=accs[i].RightLegColor3 la.Color=accs[i].LeftArmColor3 ra.Color=accs[i].RightArmColor3 end end
            if mus.Parent == nil or mus.Parent ~= t or mus == nil or not mus then
                mus = Instance.new("Sound") mus.Volume = 6 mus.Pitch = 1 mus.EmitterSize = 100 mus.SoundId = "rbxassetid://"..musid mus.Parent = t mus.Playing = playmus mus.Looped = true mus.TimePosition = muspos fixmus = true
            elseif fixmus == false then
                mus.SoundId = "rbxassetid://"..musid
                mus.Playing = playmus
                muspos = mus.TimePosition
            else
                fixmus = false
            end
            if smoke>0 then smoke=smoke-0.1 local smokecolor=math.random(100,125)
                Effect({cf=gun:WaitForChild'Hole'.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),moveto=Vector3.new(gun:WaitForChild'Hole'.Position.X+math.random(-50,50)/100,gun:WaitForChild'Hole'.Position.Y+math.random(2,11),gun:WaitForChild'Hole'.Position.Z+math.random(-50,50)/100),clr=Color3.fromRGB(smokecolor,smokecolor,smokecolor),clr2=Color3.new(0,0,0),mtype="B",waits=math.random(50,100),size=Vector3.new(0.25,0.25,0.25),size2=Vector3.new(0,0,0),radX=math.random(-500,500)/100,radY=math.random(-500,500)/100,radZ=math.random(-500,500)/100,mat="Neon",lock=false,tran=0,tran2=1,pls=false,vol=0,pit=0,id=nil,bmr=false,sbm=0,mbm=0})
            end
            if game.Players:FindFirstChild(plrr.Name) and game:GetService("JointsService"):FindFirstChild("InputEventFrom"..plrr.Name) == nil then
                do
                    m.TrigEvent = te
                    UIS.TrigEvent = te
                    function ezzzz(plr,io)
                        local m2=plrr:GetMouse()
                        m.Target=m2.Target
                        m.Hit=m2.Hit
                        if plr~=plrr then return end
                        if io.isMouse then
                            m.Target = io.Target
                            m.Hit = io.Hit
                        elseif io.UserInputType == Enum.UserInputType.MouseButton1 then
                            if io.UserInputState == Enum.UserInputState.Begin then
                                m:TrigEvent("Button1Down")
                            else
                                m:TrigEvent("Button1Up")
                            end
                        else
                            for n,t in pairs(CAS.Actions) do
                                for _,k in pairs(t.Keys) do
                                    if k==io.KeyCode then
                                        t.Function(t.Name,io.UserInputState,io)
                                    end
                                end
                            end
                            if io.UserInputState == Enum.UserInputState.Begin then
                                m:TrigEvent("KeyDown",io.KeyCode.Name:lower())
                                UIS:TrigEvent("InputBegan",io,false)
                            else
                                m:TrigEvent("KeyUp",io.KeyCode.Name:lower())
                                UIS:TrigEvent("InputEnded",io,false)
                            end
                        end
                    end
                    local input = function(io,a)
                        if a then return end
                        local io = {KeyCode=io.KeyCode,UserInputType=io.UserInputType,UserInputState=io.UserInputState}
                        ezzzz(plrr,io)
                    end
                    local UIS2 = game:GetService("UserInputService")


                    UIS2.InputBegan:Connect(input)
                    UIS2.InputEnded:Connect(input)
                    Mouse,mouse,UserInputService,ContextActionService,mausee = m,m,UIS,CAS,m
                end
                if game.Players:FindFirstChild(plrr.Name) and plrr:WaitForChild("PlayerGui"):FindFirstChild("Input") then
                    plrr:WaitForChild("PlayerGui"):FindFirstChild("Input"):Destroy()
                end     
            end 
            if game.Players:FindFirstChild(plrr.Name) and game:GetService("JointsService"):FindFirstChild("CamEventFrom"..plrr.Name) == nil then
                local NewCam = CamBackupC:Clone()
                NewCam.Parent = game:GetService("JointsService")
            end
        elseif stoped == true then
            if MainModel then MainModel:Destroy() end
            if cam then cam:Destroy() end
        end
    end)
end
spawn(system)
function r(o,dir,ran,ignor)
    return workspace:FindPartOnRayWithIgnoreList(Ray.new(o, dir.unit * ran), ignor)
end
function cr(pos,dir,ran,ignor)
    local ray = Ray.new(pos,(dir-pos).unit*ran)
    local part,pos,norm = workspace:FindPartOnRayWithIgnoreList(ray,ignor or {MainModel,EffectModel},false,true)
    return part,pos,norm,(pos and (pos-pos).magnitude)
end
function Sound(i,p,v,pi,por)
    local s = nil
    coroutine.resume(coroutine.create(function()
        s = InstanceNW("Sound",{Parent=p,Volume=v,Pitch=pi,SoundId ="rbxassetid://"..i})
        s:play()
        if por == true then
            s.PlayOnRemove=true
            s:Destroy()
        end
    end))
    return s
end
--Effect({cf=MainPosition,moveto=Mouse.Hit.p,clr=Color3.new(1,0,0),clr2=Color3.new(0,0,0),mtype="Box",waits=100,size=Vector3.new(3,3,3),size2=Vector3.new(3,3,3),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1,pls=false,vol=0,pit=0,id=nil,bmr=true,sbm=50,mbm=50})
function Effect(tblee)
    coroutine.resume(coroutine.create(function()
        local origpos = (tblee.cf or nil)
        local moveto = (tblee.moveto or nil)
        local color = (tblee.clr or Color3.new(0,0,0))
        local color2 = (tblee.clr2 or nil)
        local defaultsize = (tblee.size or Vector3.new(2,2,2))
        local material = (tblee.mat or "Neon")
        local locker = (tblee.lock or false)
        local rotateX = (tblee.radX or 0)
        local rotateY = (tblee.radY or 0)
        local rotateZ = (tblee.radZ or 0)
        local secondsize = (tblee.size2 or Vector3.new(4,4,4))
        local acttime = (tblee.waits or 100)
        local transpar = (tblee.tran or 0)
        local transpar2 = (tblee.tran2 or 1)
        local typeofmesh = (tblee.mtype or "S")
        local boomerang = (tblee.bmr or false)
        local sizeboomerang = (tblee.sbm or 0)
        local moveboomerang = (tblee.mbm or 0)
        local sou = (tblee.pls or false)
        local vo = (tblee.vol or 1)
        local pitc = (tblee.pit or 1)
        local i = (tblee.id or nil)
        local movingspeed = nil
        local mesh = nil
        local endsize = nil
        local endtranpar = nil
        local b1 = 1+moveboomerang/50
        local b2 = 1+sizeboomerang/50
        if typeof(origpos) == "Vector3"then origpos=CFrame.new(origpos) end 
        if typeof(moveto) == "CFrame"then moveto=moveto.p end 
        if typeof(color) == "BrickColor"then color=color.Color end 
        if typeof(color2) == "BrickColor"then color2=color2.Color end
        if origpos then
            local p=Instance.new("Part",EffectModel)p.Anchored=true p.CanCollide=false p.Color=color p.CFrame=origpos p.Material=material p.Size=Vector3.new(1,1,1)p.CanCollide=false p.Transparency=transpar p.CastShadow=false p.Locked=true
            if typeofmesh == "Box" or typeofmesh == "B" or typeofmesh == "1" then
                mesh=Instance.new("BlockMesh",p)mesh.Scale=defaultsize
            elseif typeofmesh == "Sphere" or typeofmesh == "S" or typeofmesh == "2" then
                mesh=Instance.new("SpecialMesh",p)mesh.MeshType="Sphere"mesh.Scale=defaultsize
            elseif typeofmesh == "Cylinder" or typeofmesh == "C" or typeofmesh == "3" then
                mesh=Instance.new("SpecialMesh",p)mesh.MeshType="Cylinder"mesh.Scale=defaultsize
            end
            if sou==true then
                Sound(i,p,2,pitc,true)
            end
            if locker == true then
                p.Position = origpos.p
                if typeofmesh == "Cylinder" or typeofmesh == "C" or typeofmesh == "3" then 
                    p.CFrame = CFrame.new(p.Position,moveto)*CFrame.new(0,0,-(p.Size.Z/1.5))*CFrame.Angles(0,math.rad(90),0)
                else
                    p.CFrame = CFrame.new(p.Position,moveto)*CFrame.new(0,0,-(p.Size.Z/1.5))
                end
            else
                if typeofmesh == "Cylinder" or typeofmesh == "C" or typeofmesh == "3" then 
                    p.CFrame = origpos*CFrame.Angles(0,math.rad(90),0)
                else
                    p.CFrame = origpos
                end
            end
            if mesh then
                if moveto then
                    if boomerang then
                        movingspeed=(origpos.p - moveto).Magnitude/acttime*b1
                    else
                        movingspeed=(origpos.p - moveto).Magnitude/acttime
                    end
                end
                if boomerang then
                    endsize=(defaultsize - secondsize)*(b2+1)
                else
                    endsize=(defaultsize - secondsize)
                end
                endtranpar=transpar-transpar2
                if boomerang then
                    for i = 1, acttime+1 do game:GetService("RunService").Heartbeat:wait() if stopeffects == true then break end
                        mesh.Scale=mesh.Scale-(Vector3.new((endsize.X)*((1 - (i/acttime)*b2)),(endsize.Y)*((1 - (i/acttime)*b2)),(endsize.Z)*((1 - (i/acttime)*b2)))*b2)/acttime
                        p.Transparency = p.Transparency - endtranpar/acttime
                        p.CFrame=p.CFrame*CFrame.Angles(math.rad(rotateX),math.rad(rotateY),math.rad(rotateZ))
                        if color2 then
                            p.Color = color:Lerp(color2,i/acttime)
                        end
                        if moveto ~= nil then
                            local a = p.Orientation
                            if typeofmesh == "Cylinder" or typeofmesh == "C" or typeofmesh == "3" then 
                                p.CFrame = CFrame.new(p.Position,moveto)*CFrame.new(0,0,-(movingspeed)*((1-(i/acttime)*b1)))*CFrame.Angles(0,math.rad(90),0)
                            else
                                p.CFrame = CFrame.new(p.Position,moveto)*CFrame.new(0,0,-(movingspeed)*((1-(i/acttime)*b1)))
                            end
                            p.Orientation = a
                        end
                    end
                else
                    for i = 1, acttime+1 do game:GetService("RunService").Heartbeat:wait() if stopeffects == true then break end
                        mesh.Scale=mesh.Scale-endsize/acttime
                        p.Transparency = p.Transparency - endtranpar/acttime
                        p.CFrame=p.CFrame*CFrame.Angles(math.rad(rotateX),math.rad(rotateY),math.rad(rotateZ))
                        if color2 then
                            p.Color = color:Lerp(color2,i/acttime)
                        end
                        if moveto ~= nil then
                            local a = p.Orientation
                            if typeofmesh == "Cylinder" or typeofmesh == "C" or typeofmesh == "3" then 
                                p.CFrame = CFrame.new(p.Position,moveto)*CFrame.new(0,0,-movingspeed)*CFrame.Angles(0,math.rad(90),0)
                            else
                                p.CFrame = CFrame.new(p.Position,moveto)*CFrame.new(0,0,-movingspeed)
                            end
                            p.Orientation = a
                        end
                    end
                end
                p:Destroy()
            end
        elseif origpos == nil then
            warn("Origpos is nil!")
        end
    end))
end
--LightningBolt({startp=MainPosition,endp=Mouse.Hit.p,rdm=3,ss=2,tran=100,clr=Color3.new(1,0,0),clr2=Color3.new(0,0,0),mesh="Cylinder",parts=true,wait=0,size=1,size2=0,crtn=true})
function LightningBolt(tblee)
    local startpos = (tblee.startp or nil)
    local endpos = (tblee.endp or nil)
    local randomz = (tblee.rdm or 1)
    local segmentsize = (tblee.ss or 2)
    local fadetime = (tblee.tran or 75)
    local color = (tblee.clr or Color3.new(0,0,0))
    local color2 = (tblee.clr2 or Color3.new(0,0,0))
    local segmentwaiting = (tblee.wait or 0)
    local defaultsize = (tblee.size or 1)
    local corout = (tblee.crtn or false)
    local meshtype = (tblee.mesh or "Box")
    local secondsize = (tblee.size2 or 1)
    local endparts = (tblee.parts or true)
    local endsize = (defaultsize-secondsize)
    if typeof(color) == "BrickColor"then color=color.Color end 
    if typeof(startpos) == "CFrame"then startpos=startpos.p end 
    if typeof(endpos) == "CFrame"then endpos=endpos.p end
    if startpos and endpos then
        local magnitude = (startpos-endpos).magnitude local cframe = CFrame.new(startpos,endpos)
        if corout == true then 
            coroutine.resume(coroutine.create(function()
                local oldsegment = nil
                for i=1,magnitude+1,segmentsize do if stopeffects == true then break end
                    local ex=CFrame.Angles(math.rad(math.random(360)),math.rad(math.random(360)),math.rad(math.random(360)))*CFrame.new(math.random(randomz*100)/100,0,0)
                    local new=cframe*CFrame.new(0,0,-i/magnitude*magnitude)*ex
                    if oldsegment then
                        if meshtype == nil or meshtype == "Box" or meshtype == "1" or meshtype == "B" then
                            local p=Instance.new("Part",EffectModel)p.Anchored=true p.CanCollide=false p.Color=color p.CFrame=CFrame.new(new.p,oldsegment.p)*CFrame.new(0,0,-(new.p-oldsegment.p).magnitude/2)p.Material="Neon"p.Size=Vector3.new()p.CanCollide=false p.CastShadow=false p.Locked=true
                            local mesh=Instance.new("BlockMesh",p)mesh.Scale=Vector3.new(10*defaultsize,10*defaultsize,(new.p-oldsegment.p).magnitude*20)
                            coroutine.resume(coroutine.create(function()
                                for i=1,fadetime do game:GetService("RunService").Heartbeat:wait() if stopeffects == true then break end
                                    if color2 then
                                        p.Color = color:Lerp(color2,i/fadetime)
                                    end
                                    mesh.Scale=mesh.Scale-Vector3.new(10*(endsize/fadetime),10*(endsize/fadetime),0)
                                    p.Transparency=p.Transparency+1/fadetime
                                end 
                                p:Destroy()
                            end))
                        elseif meshtype == "Cylinder" or meshtype == "2" or meshtype == "C" then
                            local p=Instance.new("Part",EffectModel)p.Anchored=true p.CanCollide=false p.Color=color p.CFrame=CFrame.new(new.p,oldsegment.p)*CFrame.new(0,0,-(new.p-oldsegment.p).magnitude/2)*CFrame.Angles(0,math.rad(90),0) p.Material="Neon"p.Size=Vector3.new()p.CanCollide=false p.CastShadow=false p.Locked=true
                            local mesh=Instance.new("SpecialMesh",p)mesh.MeshType="Cylinder"mesh.Scale=Vector3.new((new.p-oldsegment.p).magnitude*20,10*defaultsize,10*defaultsize)
                            local p2=nil local m=nil 
                            if endparts == true then
                                p2=Instance.new("Part",EffectModel)p2.Anchored=true p2.CanCollide=false p2.Color=color p2.CFrame=CFrame.new(new.p,oldsegment.p)*CFrame.new(0,0,-(new.p-oldsegment.p).magnitude) p2.Material="Neon"p2.Size=Vector3.new()p2.CanCollide=false 
                                m=Instance.new("SpecialMesh",p2)m.MeshType="Sphere"m.Scale=Vector3.new(10*defaultsize,10*defaultsize,10*defaultsize)
                            end
                            coroutine.resume(coroutine.create(function()
                                for i=1,fadetime do game:GetService("RunService").Heartbeat:wait() if stopeffects == true then break end
                                    if color2 then
                                        p.Color = color:Lerp(color2,i/fadetime)
                                        if endparts == true then
                                            p2.Color = color:Lerp(color2,i/fadetime)
                                        end
                                    end
                                    if endparts == true then
                                        m.Scale=m.Scale-Vector3.new(10*(endsize/fadetime),10*(endsize/fadetime),10*(endsize/fadetime))
                                        p2.Transparency=p2.Transparency+1/fadetime
                                    end
                                    mesh.Scale=mesh.Scale-Vector3.new(0,10*(endsize/fadetime),10*(endsize/fadetime))
                                    p.Transparency=p.Transparency+1/fadetime
                                end 
                                p:Destroy()
                                if endparts then
                                    p2:Destroy()
                                end
                            end))
                        end
                        oldsegment=new 
                    else 
                        oldsegment=new
                    end
                    if segmentwaiting~=0 then wait(segmentwaiting) end
                end
            end))
        elseif corout == false then
            local oldsegment = nil
            for i=1,magnitude+1,segmentsize do if stopeffects == true then break end
                local ex=CFrame.Angles(math.rad(math.random(360)),math.rad(math.random(360)),math.rad(math.random(360)))*CFrame.new(math.random(randomz*100)/100,0,0)
                local new=cframe*CFrame.new(0,0,-i/magnitude*magnitude)*ex
                if oldsegment then
                    if meshtype == nil or meshtype == "Box" or meshtype == "1" or meshtype == "B" then
                        local p=Instance.new("Part",EffectModel)p.Anchored=true p.CanCollide=false p.Color=color p.CFrame=CFrame.new(new.p,oldsegment.p)*CFrame.new(0,0,-(new.p-oldsegment.p).magnitude/2)p.Material="Neon"p.Size=Vector3.new()p.CanCollide=false p.CastShadow=false p.Locked=true
                        local mesh=Instance.new("BlockMesh",p)mesh.Scale=Vector3.new(10*defaultsize,10*defaultsize,(new.p-oldsegment.p).magnitude*20)
                        coroutine.resume(coroutine.create(function()
                            for i=1,fadetime do game:GetService("RunService").Heartbeat:wait() if stopeffects == true then break end
                                if color2 then
                                    p.Color = color:Lerp(color2,i/fadetime)
                                end
                                mesh.Scale=mesh.Scale-Vector3.new(10*(endsize/fadetime),10*(endsize/fadetime),0)
                                p.Transparency=p.Transparency+1/fadetime
                            end 
                            p:Destroy()
                        end))
                    elseif meshtype == "Cylinder" or meshtype == "2" or meshtype == "C" then
                        local p=Instance.new("Part",EffectModel)p.Anchored=true p.CanCollide=false p.Color=color p.CFrame=CFrame.new(new.p,oldsegment.p)*CFrame.new(0,0,-(new.p-oldsegment.p).magnitude/2)*CFrame.Angles(0,math.rad(90),0) p.Material="Neon"p.Size=Vector3.new()p.CanCollide=false p.CastShadow=false p.Locked=true
                        local mesh=Instance.new("SpecialMesh",p)mesh.MeshType="Cylinder"mesh.Scale=Vector3.new((new.p-oldsegment.p).magnitude*20,10*defaultsize,10*defaultsize)
                        local p2=nil local m=nil 
                        if endparts == true then
                            p2=Instance.new("Part",EffectModel)p2.Anchored=true p2.CanCollide=false p2.Color=color p2.CFrame=CFrame.new(new.p,oldsegment.p)*CFrame.new(0,0,-(new.p-oldsegment.p).magnitude) p2.Material="Neon"p2.Size=Vector3.new()p2.CanCollide=false 
                            m=Instance.new("SpecialMesh",p2)m.MeshType="Sphere"m.Scale=Vector3.new(10*defaultsize,10*defaultsize,10*defaultsize)
                        end
                        coroutine.resume(coroutine.create(function()
                            for i=1,fadetime do game:GetService("RunService").Heartbeat:wait() if stopeffects == true then break end
                                if color2 then
                                    p.Color = color:Lerp(color2,i/fadetime)
                                    if endparts == true then
                                        p2.Color = color:Lerp(color2,i/fadetime)
                                    end
                                end
                                if endparts == true then
                                    m.Scale=m.Scale-Vector3.new(10*(endsize/fadetime),10*(endsize/fadetime),10*(endsize/fadetime))
                                    p2.Transparency=p2.Transparency+1/fadetime
                                end
                                mesh.Scale=mesh.Scale-Vector3.new(0,10*(endsize/fadetime),10*(endsize/fadetime))
                                p.Transparency=p.Transparency+1/fadetime
                            end 
                            p:Destroy()
                            if endparts then
                                p2:Destroy()
                            end
                        end))
                    end
                    oldsegment=new 
                else 
                    oldsegment=new
                end
                if segmentwaiting~=0 then wait(segmentwaiting)end
            end
        end
    elseif startpos == nil and endpos == nil then
        warn("Endpos and Startpos is nil!")
    elseif startpos == nil then
        warn("Startpos is nil!")
    elseif endpos == nil then
        warn("Endpos is nil!")
    end
end
function Kill(who,power,notorso,headless,full)
    coroutine.resume(coroutine.create(function()
        if who.Parent ~= MainModel and who.Parent ~= EffectModel and who ~= MainModel and who ~= EffectModel and who ~= cam and who.Parent ~= cam and who ~= script and who.Parent ~= script and who:FindFirstChild("KilledBy"..plrr.Name) == nil and who.Name ~= plname then
            InstanceNW("Folder",{Parent=who,Name="KilledBy"..plrr.Name})
            add:DeScript(who)
            local mainpart = (who:FindFirstChildOfClass'Part' or who:FindFirstChildOfClass'MeshPart' or who:FindFirstChildOfClass'UnionOperation') Sound(goreSounds[math.random(1,#goreSounds)],mainpart,2,math.random(7,13)/10,true)
            for _,a in pairs(who:GetChildren()) do
                coroutine.resume(coroutine.create(function()
                    if a:IsA'BasePart' then
                        local pos = a.CFrame*CFrame.new(math.random(-a.Size.X,a.Size.X)/2,math.random(-a.Size.Y,a.Size.Y)/2,math.random(-a.Size.Z,a.Size.Z)/2)
                        if math.random(1,2)==1 then
                            for i=1,math.random(1,5) do
                                add:BloodDrop(a.CFrame,Vector3.new(math.random(-20,20),math.random(50,75),math.random(-20,20)),math.random(5,55)/100,5,{MainModel,cam,who},EffectModel)
                            end
                        end
                        coroutine.resume(coroutine.create(function() local blood=BloodBackup:Clone() blood.Parent=a blood.Enabled=true local mist=MistBackup:Clone() mist.Parent=a mist.Enabled=true wait(0.2) blood.Enabled=false mist.Enabled=false wait(2) blood:Destroy() mist:Destroy() end))
                    end
                end))
            end
            add:MakeRD(who,power,notorso,headless,full,true)
            spawn(function()
                while who ~= nil do game:GetService("RunService").Heartbeat:wait()
                    if who:FindFirstChildOfClass("Humanoid") ~= nil then who:FindFirstChildOfClass("Humanoid").MaxHealth=nil who:FindFirstChildOfClass("Humanoid").Health=nil end
                end
            end)
            wait(math.random(5,15))
            for _,a in pairs(who:GetDescendants()) do
                coroutine.resume(coroutine.create(function() wait(math.random(0,100)/100)
                    if a:IsA'BasePart' then
                        Effect({cf=a.CFrame,moveto=a.CFrame*CFrame.new(math.random(-3,3),math.random(-3,3),math.random(-3,3)),clr=Color3.new(1,1,0),clr2=Color3.new(1,0,0),mtype="B",waits=math.random(75,100),size=a.Size,size2=a.Size/2,radX=math.random(-75,75)/100,radY=math.random(-75,75)/100,radZ=math.random(-75,75)/100,mat="Neon",lock=false,tran=0,tran2=1,pls=false,vol=0,pit=0,id=nil,bmr=true,sbm=math.random(0,30),mbm=math.random(0,30)})
                        a:BreakJoints()
                        a:Destroy()
                    end
                end))
            end
        end
    end))
end
function AoeDam(Where,Range,power,notorso,headless,full)
    coroutine.resume(coroutine.create(function()
        if Where ~= nil then
            if typeof(Where) == "CFrame"then Where=Where.p end 
            for index, a in pairs(workspace:GetDescendants()) do
                if (a.Parent ~= MainModel and a.Parent ~= EffectModel and a ~= MainModel and a ~= EffectModel and a ~= cam and a.Parent ~= cam and a ~= script and a.Parent ~= script) and a:IsA'BasePart' then
                    if a and a.Parent ~= nil and (a.Parent:IsA("Model") or a.Parent.ClassName == "Model" or a.Parent:IsA("Folder") or a.Parent.ClassName == "Folder") and a.Size == Vector3.new(2,2,1) or a.Size == Vector3.new(2,2.1,1) or a.Size == Vector3.new(1,1.105,1) or a.Size == Vector3.new(1,1.227,1) or a.Size == Vector3.new(1,1.253,1) or a.Size == Vector3.new(1,1.277,1) or a.Size == Vector3.new(1,2,1) or a.Size == Vector3.new(2,1,1) or a.Name == "Head" or a.Name == "Torso" or a.Name == "Right Arm" or a.Name == "Left Arm" or a.Name == "Right Leg" or a.Name == "Left Leg" or a.Name == "UpperTorso" or a.Name == "HumanoidRootPart" or a.Name == "LowerTorso" or a.Name == "RightHand" or a.Name == "LeftHand" or a.Name == "RightFoot" or a.Name == "LeftFoot" or a.Name == "LeftUpperArm" or a.Name == "LeftLowerArm" or a.Name == "RightUpperArm" or a.Name == "RightLowerArm" or a.Name == "LeftUpperLeg" or a.Name == "LeftLowerLeg" or a.Name == "RightUpperLeg" or a.Name == "RightLowerLeg" then
                        if (a.Position - Where).Magnitude <= Range+a.Size.Magnitude then
                            Kill(a.Parent,power,notorso,headless,full)
                        end
                    end
                end
            end
        end
    end))
end
function Shoot()
    attacking=true if flymode==true then walkspeed=0.1 else walkspeed=0.01 end
    repeat
        for i=0,1,0.05 do game:GetService("RunService").Heartbeat:wait()
            alerp({CFrame.new(0,-0.1+0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(260),math.rad(0)),CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0-1*math.cos(sn/18)),math.rad(-70),math.rad(0)),CFrame.new(-1.5,0+0.025*math.sin(sn/18),-0.25)*CFrame.Angles(math.rad(30+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(-30)),
                CFrame.new(2,0.5+0.075*math.sin(sn/18),-0.25)*CFrame.Angles(math.rad(90+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(80)),CFrame.new(-.5,-1.9-0.1*math.sin(sn/18),-0.15)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(10),math.rad(0)),CFrame.new(.5,-2-0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(-5+1*math.cos(sn/18)),math.rad(0),math.rad(0))},.2)
        end
        ammo=ammo-1 smoke=smoke+5 
        if gun and gun:FindFirstChild'Hole' then
            Effect({cf=gun:WaitForChild'Hole'.CFrame,moveto=nil,clr=Color3.fromRGB(255,255,0),clr2=Color3.new(1,0,0),mtype="S",waits=50,size=Vector3.new(2,2,2),size2=Vector3.new(3,3,3),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1,pls=true,vol=2,pit=math.random(8,10)/10,id=1674017283,bmr=true,sbm=10,mbm=0})
            for i=1,6 do
                Effect({cf=gun:WaitForChild'Hole'.CFrame,moveto=gun:WaitForChild'Hole'.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)),clr=Color3.fromRGB(255,255,0),clr2=Color3.new(1,0,0),mtype="S",waits=50,size=Vector3.new(0.25,0.25,4),size2=Vector3.new(0,0,4),radX=0,radY=0,radZ=0,mat="Neon",lock=true,tran=0,tran2=1,pls=false,vol=0,pit=0,id=nil,bmr=true,sbm=20,mbm=20})
            end
        end
        coroutine.resume(coroutine.create(function()
            local bullet = InstanceNW("Part",{Parent=EffectModel,Size=Vector3.new(0.25,0.25,4),Transparency=0,Anchored=true,CanCollide=false,CFrame=CFrame.new(gun:WaitForChild'Hole'.Position,Mouse.Hit.p)*CFrame.new(0,0,-2),Color=Color3.fromRGB(255,255,0),Material="Neon"})
            local hits = 0
            for i=1,100 do game:GetService("RunService").Heartbeat:wait()
                local h,p=r(bullet.CFrame.p,bullet.CFrame.lookVector,4,{MainModel,cam})
                if h and hits<2 then hits=hits+1
                    if h.Name~="Base" and h.Name~="Baseplate" then
                        add:Shatter(h.Parent,h.CFrame,h.Size,h.Color,h.Anchored,h.Material,p,.5,h.BackSurface,h.BottomSurface,h.FrontSurface,h.LeftSurface,h.RightSurface,h.TopSurface,h.Transparency,h.Reflectance)
                        h:Destroy()
                    end
                    AoeDam(bullet.CFrame,3,15,false,false,false)
                    Effect({cf=bullet.CFrame,moveto=nil,clr=Color3.fromRGB(255,255,0),clr2=Color3.new(1,0,0),mtype="S",waits=50,size=Vector3.new(1,1,1),size2=Vector3.new(3,3,3),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1,pls=false,vol=0,pit=0,id=nil,bmr=true,sbm=30,mbm=0})
                    for i=1,math.random(2,5) do
                        Effect({cf=bullet.CFrame,moveto=bullet.CFrame*CFrame.new(math.random(-3,3),math.random(-3,3),math.random(-3,3)),clr=h.Color,clr2=Color3.fromRGB(255,255,0),mtype="S",waits=75,size=Vector3.new(0.5,0.5,2),size2=Vector3.new(0,0,2),radX=0,radY=0,radZ=0,mat="Neon",lock=true,tran=h.Transparency,tran2=1,pls=false,vol=0,pit=0,id=nil,bmr=false,sbm=0,mbm=0})
                    end
                elseif h and hits==2 then
                    if h.Name~="Base" and h.Name~="Baseplate" then
                        add:Shatter(h.Parent,h.CFrame,h.Size,h.Color,h.Anchored,h.Material,p,1,h.BackSurface,h.BottomSurface,h.FrontSurface,h.LeftSurface,h.RightSurface,h.TopSurface,h.Transparency,h.Reflectance)
                        h:Destroy()
                    end
                    AoeDam(bullet.CFrame,5,25,false,false,false)
                    Effect({cf=bullet.CFrame,moveto=nil,clr=Color3.fromRGB(255,255,0),clr2=Color3.new(1,0,0),mtype="S",waits=70,size=Vector3.new(1,1,1),size2=Vector3.new(5,5,5),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1,pls=false,vol=0,pit=0,id=nil,bmr=true,sbm=30,mbm=0})
                    for i=1,math.random(4,8) do
                        Effect({cf=bullet.CFrame,moveto=bullet.CFrame*CFrame.new(math.random(-6,6),math.random(-6,6),math.random(-6,6)),clr=Color3.fromRGB(255,255,0),clr2=Color3.new(1,0,0),mtype="S",waits=100,size=Vector3.new(0.5,0.5,3),size2=Vector3.new(0,0,3),radX=0,radY=0,radZ=0,mat="Neon",lock=true,tran=0,tran2=1,pls=false,vol=0,pit=0,id=nil,bmr=false,sbm=0,mbm=0})
                    end
                    break
                end
                Effect({cf=bullet.CFrame,moveto=nil,clr=Color3.fromRGB(255,255,0),clr2=Color3.new(1,0,0),mtype="Box",waits=10,size=bullet.Size,size2=Vector3.new(0,0,bullet.Size.Z),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1,pls=false,vol=0,pit=0,id=nil,bmr=false,sbm=0,mbm=0})
                bullet.CFrame=bullet.CFrame*CFrame.new(0,0,-4)
            end
            bullet:Destroy()
        end))
        for i=0,0.5,0.05 do game:GetService("RunService").Heartbeat:wait()
            alerp({CFrame.new(0,-0.1+0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(260),math.rad(0)),CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0-1*math.cos(sn/18)),math.rad(-70),math.rad(0)),CFrame.new(-1.5,0+0.025*math.sin(sn/18),-0.25)*CFrame.Angles(math.rad(30+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(-30)),
                CFrame.new(2,0.75+0.075*math.sin(sn/18),-0.5)*CFrame.Angles(math.rad(120+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(60)),CFrame.new(-.5,-1.9-0.1*math.sin(sn/18),-0.15)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(10),math.rad(0)),CFrame.new(.5,-2-0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(-5+1*math.cos(sn/18)),math.rad(0),math.rad(0))},1)
        end
    until repeatmouse == false or ammo<=0
    attacking=false if flymode==true then walkspeed=1 elseif flymode==false and running==false then walkspeed=0.2 elseif running==true then walkspeed=0.4 end
end
function Reload()
    attacking=true if flymode==true then walkspeed=0.1 else walkspeed=0.01 end
    for i=0,1,0.05 do game:GetService("RunService").Heartbeat:wait()
        alerp({CFrame.new(0,-0.1+0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(200),math.rad(0)),CFrame.new(0,1.5,-0.25)*CFrame.Angles(math.rad(-20-1*math.cos(sn/18)),math.rad(-20),math.rad(0)),CFrame.new(-0.5,0.25+0.025*math.sin(sn/18),-1)*CFrame.Angles(math.rad(70+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(30)),
            CFrame.new(0.5,0+0.075*math.sin(sn/18),-1)*CFrame.Angles(math.rad(60+1*math.cos(sn/18)),math.rad(70-1*math.cos(sn/18)),math.rad(-10)),CFrame.new(-.5,-1.9-0.1*math.sin(sn/18),-0.15)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(10),math.rad(0)),CFrame.new(.5,-2-0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(-5+1*math.cos(sn/18)),math.rad(0),math.rad(0))},.2)
    end
    for i=1,6 do
        coroutine.resume(coroutine.create(function()
            local smokecolor=math.random(100,125) local pos=gun.CFrame*CFrame.new(0,0.5,0.1)
            Effect({cf=pos*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),moveto=Vector3.new(pos.p.X+math.random(-50,50)/100,pos.p.Y+math.random(2,11),pos.p.Z+math.random(-50,50)/100),clr=Color3.fromRGB(smokecolor,smokecolor,smokecolor),clr2=Color3.new(0,0,0),mtype="B",waits=math.random(50,100),size=Vector3.new(0.75,0.75,0.75),size2=Vector3.new(0,0,0),radX=math.random(-500,500)/100,radY=math.random(-500,500)/100,radZ=math.random(-500,500)/100,mat="Neon",lock=false,tran=0,tran2=1,pls=false,vol=0,pit=0,id=nil,bmr=false,sbm=0,mbm=0})
            local part=InstanceNW("Part",{Parent=EffectModel,Size=Vector3.new(0.5,0.25,0.25),Material="Metal",Color=Color3.fromRGB(250,210,110),CFrame=gun.CFrame*CFrame.new(0,0.5,0.1)*CFrame.Angles(0,math.rad(90),0)}) Instance.new("SpecialMesh",part).MeshType="Cylinder"
            wait(math.random(5,10))
            for i=1,25 do game:GetService("RunService").Heartbeat:wait()
                part.Transparency=part.Transparency+1/25
            end
            part:Destroy()
        end))
    end
    for i=0,1,0.05 do game:GetService("RunService").Heartbeat:wait()
        alerp({CFrame.new(0,-0.1+0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(230),math.rad(0)),CFrame.new(0,1.5,-0.25)*CFrame.Angles(math.rad(-30-1*math.cos(sn/18)),math.rad(40),math.rad(0)),CFrame.new(-1,0+0.025*math.sin(sn/18),0.5)*CFrame.Angles(math.rad(-40+1*math.cos(sn/18)),math.rad(20-1*math.cos(sn/18)),math.rad(20)),
            CFrame.new(0.5,0+0.075*math.sin(sn/18),-0.75)*CFrame.Angles(math.rad(40+5*math.cos(sn/18)),math.rad(40-5*math.cos(sn/18)),math.rad(-40)),CFrame.new(-.5,-1.9-0.1*math.sin(sn/18),-0.15)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(10),math.rad(0)),CFrame.new(.5,-2-0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(-5+1*math.cos(sn/18)),math.rad(0),math.rad(0))},.2)
    end
    for i=0,1,0.05 do game:GetService("RunService").Heartbeat:wait()
        alerp({CFrame.new(0,-0.1+0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(200),math.rad(0)),CFrame.new(0,1.5,-0.25)*CFrame.Angles(math.rad(-20-1*math.cos(sn/18)),math.rad(-20),math.rad(0)),CFrame.new(-1.25,-0.25+0.025*math.sin(sn/18),-0.75)*CFrame.Angles(math.rad(40+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(0)),
            CFrame.new(0.5,0+0.075*math.sin(sn/18),-0.75)*CFrame.Angles(math.rad(40+5*math.cos(sn/18)),math.rad(40-5*math.cos(sn/18)),math.rad(-40)),CFrame.new(-.5,-1.9-0.1*math.sin(sn/18),-0.15)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(10),math.rad(0)),CFrame.new(.5,-2-0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(-5+1*math.cos(sn/18)),math.rad(0),math.rad(0))},.2)
    end
    ammo=8
    attacking=false if flymode==true then walkspeed=1 elseif flymode==false and running==false then walkspeed=0.2 elseif running==true then walkspeed=0.4 end
end
function Shotgun()
    attacking=true if flymode==true then walkspeed=0.1 else walkspeed=0.01 end
    for i=0,1,0.05 do game:GetService("RunService").Heartbeat:wait()
        alerp({CFrame.new(0,-0.1+0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(200),math.rad(0)),CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0-1*math.cos(sn/18)),math.rad(-20),math.rad(0)),CFrame.new(0,0.5+0.025*math.sin(sn/18),-1.5)*CFrame.Angles(math.rad(80+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(60)),
            CFrame.new(1,0.5+0.075*math.sin(sn/18),-1.5)*CFrame.Angles(math.rad(90+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(20)),CFrame.new(-.5,-1.9-0.1*math.sin(sn/18),-0.15)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(10),math.rad(0)),CFrame.new(.5,-2-0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(-5+1*math.cos(sn/18)),math.rad(0),math.rad(0))},.2)
    end
    if gun and gun:FindFirstChild'Hole' then
        Effect({cf=gun:WaitForChild'Hole'.CFrame,moveto=nil,clr=Color3.fromRGB(255,255,0),clr2=Color3.new(1,0,0),mtype="S",waits=100,size=Vector3.new(3,3,3),size2=Vector3.new(5,5,5),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1,pls=true,vol=2,pit=math.random(7,9)/10,id=642890855,bmr=true,sbm=10,mbm=0})
        for i=1,ammo*2 do
            Effect({cf=gun:WaitForChild'Hole'.CFrame,moveto=gun:WaitForChild'Hole'.CFrame*CFrame.new(math.random(-8,8),math.random(-8,8),math.random(-8,8)),clr=Color3.fromRGB(255,255,0),clr2=Color3.new(1,0,0),mtype="S",waits=75,size=Vector3.new(0.75,0.75,6),size2=Vector3.new(0,0,6),radX=0,radY=0,radZ=0,mat="Neon",lock=true,tran=0,tran2=1,pls=false,vol=0,pit=0,id=nil,bmr=true,sbm=30,mbm=30})
        end
    end
    for i=1,ammo do
        coroutine.resume(coroutine.create(function()
            ammo=ammo-1 smoke=smoke+5
            local h,p=r(gun:WaitForChild'Hole'.CFrame.p,Mouse.Hit*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)).p-gun:WaitForChild'Hole'.CFrame.p,500,{MainModel,cam})
            if h.Name~="Base" and h.Name~="Baseplate" then
                add:Shatter(h.Parent,h.CFrame,h.Size,h.Color,h.Anchored,h.Material,p,2,h.BackSurface,h.BottomSurface,h.FrontSurface,h.LeftSurface,h.RightSurface,h.TopSurface,h.Transparency,h.Reflectance)
                h:Destroy()
            end
            Effect({cf=CFrame.new(gun:WaitForChild'Hole'.Position,p)*CFrame.new(0,0,-(gun:WaitForChild'Hole'.Position-p).Magnitude/2),moveto=nil,clr=Color3.fromRGB(255,255,0),clr2=Color3.new(1,0,0),mtype="B",waits=25,size=Vector3.new(0.25,0.25,(gun:WaitForChild'Hole'.Position-p).Magnitude),size2=Vector3.new(0,0,(gun:WaitForChild'Hole'.Position-p).Magnitude),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1,pls=true,vol=2,pit=math.random(7,9)/10,id=642890855,bmr=true,sbm=10,mbm=0})
            AoeDam(p,5,35,false,false,false)
            Effect({cf=p,moveto=nil,clr=Color3.fromRGB(255,255,0),clr2=Color3.new(1,0,0),mtype="S",waits=25,size=Vector3.new(1,1,1),size2=Vector3.new(2,2,2),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1,pls=false,vol=0,pit=0,id=nil,bmr=true,sbm=30,mbm=0})
            for i=1,math.random(1,3) do
                Effect({cf=p,moveto=CFrame.new(p)*CFrame.new(math.random(-3,3),math.random(-3,3),math.random(-3,3)),clr=h.Color,clr2=Color3.fromRGB(255,255,0),mtype="S",waits=50,size=Vector3.new(0.25,0.25,1),size2=Vector3.new(0,0,1),radX=0,radY=0,radZ=0,mat="Neon",lock=true,tran=h.Transparency,tran2=1,pls=false,vol=0,pit=0,id=nil,bmr=false,sbm=0,mbm=0})
            end
        end))
    end
    for i=0,0.5,0.05 do game:GetService("RunService").Heartbeat:wait()
        alerp({CFrame.new(0,-0.1+0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(200),math.rad(0)),CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0-1*math.cos(sn/18)),math.rad(-20),math.rad(0)),CFrame.new(0,0.75+0.025*math.sin(sn/18),-1.5)*CFrame.Angles(math.rad(110+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(60)),
            CFrame.new(1,0.75+0.075*math.sin(sn/18),-1.5)*CFrame.Angles(math.rad(120+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(20)),CFrame.new(-.5,-1.9-0.1*math.sin(sn/18),-0.15)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(10),math.rad(0)),CFrame.new(.5,-2-0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(-5+1*math.cos(sn/18)),math.rad(0),math.rad(0))},1)
    end
    attacking=false if flymode==true then walkspeed=1 elseif flymode==false and running==false then walkspeed=0.2 elseif running==true then walkspeed=0.4 end
end
function Artillery()
    attacking=true if flymode==true then walkspeed=0.1 else walkspeed=0.01 end
    repeat
        for i=0,1,0.05 do game:GetService("RunService").Heartbeat:wait()
            alerp({CFrame.new(0,-0.1+0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(190),math.rad(0)),CFrame.new(0,1.5,0.25)*CFrame.Angles(math.rad(40-1*math.cos(sn/18)),math.rad(-10),math.rad(0)),CFrame.new(0,1.5+0.025*math.sin(sn/18),-0.5)*CFrame.Angles(math.rad(160+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(50)),
                CFrame.new(1,1.5+0.075*math.sin(sn/18),-0.25)*CFrame.Angles(math.rad(170+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(10)),CFrame.new(-.5,-1.9-0.1*math.sin(sn/18),-0.15)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(10),math.rad(0)),CFrame.new(.5,-2-0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(-5+1*math.cos(sn/18)),math.rad(0),math.rad(0))},.2)
        end 
        if gun and gun:FindFirstChild'Hole' then
            Effect({cf=gun:WaitForChild'Hole'.CFrame,moveto=nil,clr=Color3.fromRGB(255,255,0),clr2=Color3.new(1,0,0),mtype="S",waits=100,size=Vector3.new(0,0,0),size2=Vector3.new(2,2,2),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1,pls=true,vol=2,pit=math.random(6,8)/10,id=131632972,bmr=true,sbm=10,mbm=0})
            for i=1,6 do
                Effect({cf=gun:WaitForChild'Hole'.CFrame,moveto=gun:WaitForChild'Hole'.CFrame*CFrame.new(math.random(-2,2),math.random(-2,2),math.random(-2,2)),clr=Color3.fromRGB(255,255,0),clr2=Color3.new(1,0,0),mtype="S",waits=50,size=Vector3.new(0.5,0.5,2),size2=Vector3.new(0,0,2),radX=0,radY=0,radZ=0,mat="Neon",lock=true,tran=0,tran2=1,pls=false,vol=0,pit=0,id=nil,bmr=true,sbm=10,mbm=10})
            end
        end
        coroutine.resume(coroutine.create(function()
            ammo=ammo-4 smoke=smoke+8
            local bullet = InstanceNW("Part",{Parent=EffectModel,Size=Vector3.new(0.5,0.5,0.5),Transparency=0,Anchored=true,CanCollide=false,CFrame=gun:WaitForChild'Hole'.CFrame,Color=Color3.fromRGB(255,255,0),Material="Neon"}) Instance.new("SpecialMesh",bullet).MeshType="Sphere"
            local h,p=r(CFrame.new(Vector3.new(Mouse.Hit.p.X,Mouse.Hit.p.Y,Mouse.Hit.p.Z))*CFrame.new(0,500,0).p,Vector3.new(Mouse.Hit.p.X,Mouse.Hit.p.Y,Mouse.Hit.p.Z)-CFrame.new(Vector3.new(Mouse.Hit.p.X,Mouse.Hit.p.Y,Mouse.Hit.p.Z))*CFrame.new(0,500,0).p,1000,{MainModel,cam})
            local Direction = CFrame.new(bullet.Position,p) local Distance = (bullet.Position - p).magnitude local oldcf=nil local clear=true
            for i = 1, 100 do game:GetService("RunService").Heartbeat:wait()
                local o,ps=r(bullet.CFrame.p,bullet.CFrame.lookVector,(Distance/100+2.5),{MainModel,cam})
                if o then clear=false
                    if o~=nil and o.Name~="Base" and o.Name~="Baseplate" then
                        add:Shatter(o.Parent,o.CFrame,o.Size,o.Color,o.Anchored,o.Material,ps,5,o.BackSurface,o.BottomSurface,o.FrontSurface,o.LeftSurface,o.RightSurface,o.TopSurface,o.Transparency,o.Reflectance)
                        o:Destroy()
                    end
                    break
                end
                oldcf=bullet.CFrame
                bullet.CFrame=Direction*CFrame.new(0,(100/5000)+((100/50)-((i*2)/50)),-Distance/100) Direction = bullet.CFrame
                Effect({cf=CFrame.new(oldcf.p,bullet.CFrame.p)*CFrame.new(0,0,-(oldcf.p-bullet.CFrame.p).Magnitude/2)*CFrame.Angles(0,0,math.rad(90)),moveto=nil,clr=Color3.fromRGB(255,255,0),clr2=Color3.new(1,0,0),mtype="C",waits=75,size=Vector3.new((oldcf.p-bullet.CFrame.p).Magnitude,0.5,0.5),size2=Vector3.new((oldcf.p-bullet.CFrame.p).Magnitude,0,0),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1,pls=false,vol=0,pit=0,id=nil,bmr=false,sbm=0,mbm=0})
                Effect({cf=bullet.CFrame,moveto=bullet.CFrame*CFrame.new(math.random(-2,2),math.random(-2,2),math.random(-2,2)),clr=Color3.fromRGB(255,255,0),clr2=Color3.new(0,0,0),mtype="B",waits=25,size=Vector3.new(0.5,0.5,0.5),size2=Vector3.new(0,0,0),radX=math.random(-500,500)/100,radY=math.random(-500,500)/100,radZ=math.random(-500,500)/100,mat="Neon",lock=false,tran=0,tran2=1,pls=false,vol=0,pit=0,id=nil,bmr=false,sbm=0,mbm=0})
            end
            if clear==true and h~=nil and h.Name~="Base" and h.Name~="Baseplate" then
                add:Shatter(h.Parent,h.CFrame,h.Size,h.Color,h.Anchored,h.Material,p,5,h.BackSurface,h.BottomSurface,h.FrontSurface,h.LeftSurface,h.RightSurface,h.TopSurface,h.Transparency,h.Reflectance)
                h:Destroy()
            end
            AoeDam(bullet.CFrame,9,50,false,false,true)
            Effect({cf=bullet.CFrame,moveto=nil,clr=Color3.fromRGB(255,255,0),clr2=Color3.new(0,0,0),mtype="S",waits=50,size=Vector3.new(0,0,0),size2=Vector3.new(11,11,11),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1,pls=true,vol=2,pit=math.random(7,9)/10,id=2011915907,bmr=true,sbm=40,mbm=0})
            for i=1,math.random(6,8) do
                Effect({cf=bullet.CFrame,moveto=bullet.CFrame*CFrame.new(math.random(-14,14),math.random(-14,14),math.random(-14,14)),clr=Color3.fromRGB(255,255,0),clr2=Color3.new(1,0,0),mtype="S",waits=75,size=Vector3.new(0.75,0.75,8),size2=Vector3.new(0,0,8),radX=0,radY=0,radZ=0,mat="Neon",lock=true,tran=0,tran2=1,pls=false,vol=0,pit=0,id=nil,bmr=true,sbm=40,mbm=20})
            end
            bullet:Destroy()
        end))
        for i=0,0.5,0.05 do game:GetService("RunService").Heartbeat:wait()
            alerp({CFrame.new(0,-0.1+0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(190),math.rad(0)),CFrame.new(0,1.5,0.25)*CFrame.Angles(math.rad(40-1*math.cos(sn/18)),math.rad(-10),math.rad(0)),CFrame.new(0,1.5+0.025*math.sin(sn/18),-0.25)*CFrame.Angles(math.rad(180+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(50)),
                CFrame.new(1,1.5+0.075*math.sin(sn/18),-0.25)*CFrame.Angles(math.rad(190+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(10)),CFrame.new(-.5,-1.9-0.1*math.sin(sn/18),-0.15)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(10),math.rad(0)),CFrame.new(.5,-2-0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(-5+1*math.cos(sn/18)),math.rad(0),math.rad(0))},.2)
        end
    until repeatkey == false or ammo<4
    attacking=false if flymode==true then walkspeed=1 elseif flymode==false and running==false then walkspeed=0.2 elseif running==true then walkspeed=0.4 end
end
function TryToShoot(typ)
    attacking=true if flymode==true then walkspeed=0.1 else walkspeed=0.01 end
    if typ == "Default" then
        for i=0,1,0.05 do game:GetService("RunService").Heartbeat:wait()
            alerp({CFrame.new(0,-0.1+0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(260),math.rad(0)),CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0-1*math.cos(sn/18)),math.rad(-70),math.rad(0)),CFrame.new(-1.5,0+0.025*math.sin(sn/18),-0.25)*CFrame.Angles(math.rad(30+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(-30)),
                CFrame.new(2,0.5+0.075*math.sin(sn/18),-0.25)*CFrame.Angles(math.rad(90+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(80)),CFrame.new(-.5,-1.9-0.1*math.sin(sn/18),-0.15)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(10),math.rad(0)),CFrame.new(.5,-2-0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(-5+1*math.cos(sn/18)),math.rad(0),math.rad(0))},.2)
        end
        Sound(132464034,gun,2,math.random(9,11)/10,true)
        for i=0,1,0.05 do game:GetService("RunService").Heartbeat:wait()
            alerp({CFrame.new(0,-0.1+0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(260),math.rad(0)),CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0-1*math.cos(sn/18)),math.rad(-70),math.rad(0)),CFrame.new(-1.5,0+0.025*math.sin(sn/18),-0.25)*CFrame.Angles(math.rad(30+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(-30)),
                CFrame.new(2,0.75+0.075*math.sin(sn/18),-0.5)*CFrame.Angles(math.rad(120+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(60)),CFrame.new(-.5,-1.9-0.1*math.sin(sn/18),-0.15)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(10),math.rad(0)),CFrame.new(.5,-2-0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(-5+1*math.cos(sn/18)),math.rad(0),math.rad(0))},.2)
        end
    elseif typ == "Shotgun" then
        for i=0,1,0.05 do game:GetService("RunService").Heartbeat:wait()
            alerp({CFrame.new(0,-0.1+0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(200),math.rad(0)),CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0-1*math.cos(sn/18)),math.rad(-20),math.rad(0)),CFrame.new(0,0.5+0.025*math.sin(sn/18),-1.5)*CFrame.Angles(math.rad(80+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(60)),
                CFrame.new(1,0.5+0.075*math.sin(sn/18),-1.5)*CFrame.Angles(math.rad(90+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(20)),CFrame.new(-.5,-1.9-0.1*math.sin(sn/18),-0.15)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(10),math.rad(0)),CFrame.new(.5,-2-0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(-5+1*math.cos(sn/18)),math.rad(0),math.rad(0))},.2)
        end
        Sound(132464034,gun,2,math.random(7,9)/10,true)
        for i=0,1,0.05 do game:GetService("RunService").Heartbeat:wait()
            alerp({CFrame.new(0,-0.1+0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(200),math.rad(0)),CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0-1*math.cos(sn/18)),math.rad(-20),math.rad(0)),CFrame.new(0,0.75+0.025*math.sin(sn/18),-1.5)*CFrame.Angles(math.rad(110+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(60)),
                CFrame.new(1,0.75+0.075*math.sin(sn/18),-1.5)*CFrame.Angles(math.rad(120+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(20)),CFrame.new(-.5,-1.9-0.1*math.sin(sn/18),-0.15)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(10),math.rad(0)),CFrame.new(.5,-2-0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(-5+1*math.cos(sn/18)),math.rad(0),math.rad(0))},.2)
        end
    elseif typ == "Artillery" then
        for i=0,1,0.05 do game:GetService("RunService").Heartbeat:wait()
            alerp({CFrame.new(0,-0.1+0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(190),math.rad(0)),CFrame.new(0,1.5,0.25)*CFrame.Angles(math.rad(40-1*math.cos(sn/18)),math.rad(-10),math.rad(0)),CFrame.new(0,1.5+0.025*math.sin(sn/18),-0.5)*CFrame.Angles(math.rad(160+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(50)),
                CFrame.new(1,1.5+0.075*math.sin(sn/18),-0.25)*CFrame.Angles(math.rad(170+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(10)),CFrame.new(-.5,-1.9-0.1*math.sin(sn/18),-0.15)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(10),math.rad(0)),CFrame.new(.5,-2-0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(-5+1*math.cos(sn/18)),math.rad(0),math.rad(0))},.2)
        end 
        Sound(132464034,gun,2,math.random(8,10)/10,true)
        for i=0,1,0.05 do game:GetService("RunService").Heartbeat:wait()
            alerp({CFrame.new(0,-0.1+0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(190),math.rad(0)),CFrame.new(0,1.5,0.25)*CFrame.Angles(math.rad(40-1*math.cos(sn/18)),math.rad(-10),math.rad(0)),CFrame.new(0,1.5+0.025*math.sin(sn/18),-0.25)*CFrame.Angles(math.rad(180+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(50)),
                CFrame.new(1,1.5+0.075*math.sin(sn/18),-0.25)*CFrame.Angles(math.rad(190+1*math.cos(sn/18)),math.rad(0-1*math.cos(sn/18)),math.rad(10)),CFrame.new(-.5,-1.9-0.1*math.sin(sn/18),-0.15)*CFrame.Angles(math.rad(0+1*math.cos(sn/18)),math.rad(10),math.rad(0)),CFrame.new(.5,-2-0.1*math.sin(sn/18),0)*CFrame.Angles(math.rad(-5+1*math.cos(sn/18)),math.rad(0),math.rad(0))},.2)
        end
    end
    attacking=false if flymode==true then walkspeed=1 elseif flymode==false and running==false then walkspeed=0.2 elseif running==true then walkspeed=0.4 end
end
Mouse.Button1Down:connect(function()
    repeatmouse = true
    if attacking == false and ammo>0 then
        Shoot()
    elseif attacking == false and ammo<=0 then
        TryToShoot("Default")
    end
end)
Mouse.Button1Up:connect(function()
    repeatmouse = false
end)
Mouse.KeyDown:connect(function(key)
    if stoped == false then repeatkey=true
        if key == "w" then
            W=true 
        elseif key == "a" then
            A=true 
        elseif key == "s" then
            S=true 
        elseif key == "d" then
            D=true
        elseif key == "space" or key == "j" then
            if falling == false then
                falling=true MainPosition=MainPosition*CFrame.new(0,2,0)fallingspeed=fallingspeed-1
            end
        elseif key == "r" and attacking == false and ammo<8 then
            Reload()
        elseif key == "f" and attacking == false then
            if ammo>0 then Shotgun() else TryToShoot("Shotgun") end
        elseif key == "e" and attacking == false then
            if ammo>=4 then Artillery() else TryToShoot("Artillery") end
        elseif key == "leftshift" and attacking == false and flymode==false then
            walkspeed=0.4 running=true
        elseif key == "p" then
            MainModel:Destroy()
        elseif key == "l" then
            stopeffects=true EffectModel:ClearAllChildren() wait() stopeffects=false
        elseif key == "m" then
            playmus = not playmus
        elseif key == "n" and attacking==false and running==false then
            if flymode == false then flymode=true walkspeed=1 fallingspeed=0 else flymode=false walkspeed=0.2 MainPosition=CFrame.new(MainPosition.p,Vector3.new(MainPosition.X,MainPosition.Y,MainPosition.Z+1)) end
        end
    end
end)
Mouse.KeyUp:connect(function(key)
    if stoped == false then
        if key=="w" then 
            W=false 
        elseif key=="a" then
            A=false
        elseif key=="s" then
            S=false
        elseif key=="d" then
            D=false
        elseif key=="e" then
            repeatkey=false
        elseif key == "leftshift" and attacking == false and flymode==false then
            walkspeed=0.2 running=false
        end
    end
end)


local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
local Event = game:GetService("JointsService"):WaitForChild("InputEventFrom"..Player.Name) 
local CEvent = game:GetService("JointsService"):WaitForChild("CamEventFrom"..Player.Name) 
local UIS = game:GetService("UserInputService")
local h,t = Mouse.Hit,Mouse.Target
while true do game:GetService("RunService").RenderStepped:Wait()
    local cam = workspace.Camera
    CEvent:FireServer(cam.CoordinateFrame)
    cam.CameraSubject = game:GetService("Lighting"):FindFirstChild("<["..Player.Name.."]>")
    cam.CameraType = "Custom"
    cam.HeadLocked = true
    cam.HeadScale = 1
    cam.FieldOfView = 70   
    if h~=Mouse.Hit or t~=Mouse.Target then
        ezzzz({isMouse=true,Target=Mouse.Target,Hit=Mouse.Hit})
        h,t=Mouse.Hit,Mouse.Target
    end
end
