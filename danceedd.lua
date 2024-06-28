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

    
local function ragdoll(humanoid,value)
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
			joint:SetAttribute("oldOwner",joint.Parent)
			joint.Parent = owner.Backpack
		end
	end
end
printf("Ragdoll Function Loaded - By LazyNoob")


    
me = owner

char = me.Character

selected = false

attacking = false

hurt = false

grabbed = nil

mode = "drop"

bloodcolors = {"Really red", "Bright red"}



function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)

part.Parent = parent

part.formFactor = form

part.CanCollide = collide

part.Transparency = tran

part.Reflectance = ref

part.Size = Vector3.new(x,y,z)

part.BrickColor = BrickColor.new(color)

part.TopSurface = 0

part.BottomSurface = 0

part.Anchored = anchor

part.Locked = true

part:BreakJoints()

end


function weld(w, p, p1, a, b, c, x, y, z)

w.Parent = p

w.Part0 = p

w.Part1 = p1

w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)

end


function mesh(mesh, parent, x, y, z, type)

mesh.Parent = parent

mesh.Scale = Vector3.new(x, y, z)

mesh.MeshType = type

end


function remgui()

for _,v in pairs(me.PlayerGui:GetChildren()) do

if v.Name == "Modeshow" then

v:remove()

end

end

end


function inform(text,delay)

remgui()

local sc = Instance.new("ScreenGui")

sc.Parent = me.PlayerGui

sc.Name = "Modeshow"

local bak = Instance.new("Frame",sc)

bak.BackgroundColor3 = Color3.new(1,1,1)

bak.Size = UDim2.new(0.94,0,0.1,0)

bak.Position = UDim2.new(0.03,0,0.037,0)

bak.BorderSizePixel = 0

local gi = Instance.new("TextLabel",sc)

gi.Size = UDim2.new(0.92,0,0.09,0)

gi.BackgroundColor3 = Color3.new(0,0,0)

gi.Position = UDim2.new(0.04,0,0.042,0)

gi.TextColor3 = Color3.new(1,1,1)

gi.FontSize = "Size12"

gi.Text = text

coroutine.resume(coroutine.create(function()

wait(delay)

sc:remove()

end))

end


if char:findFirstChild("Bricks",true) then

char:findFirstChild("Bricks",true):remove()

end


bricks = Instance.new("Model",me.Character)

bricks.Name = "Bricks"


--Parts-------------------------Parts-------------------------Parts-------------------------Parts----------------------


rarm = char:findFirstChild("Right Arm")

larm = char:findFirstChild("Left Arm")

lleg = char:findFirstChild("Left Leg")

torso = char:findFirstChild("Torso")

hum = char:findFirstChild("Humanoid")


righthold = Instance.new("Part")

prop(righthold, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")

w11 = Instance.new("Weld")

weld(w11, rarm, righthold, 0, 0, 0, 0, 1, 0)


lefthold = Instance.new("Part")

prop(lefthold, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")

w12 = Instance.new("Weld")

weld(w12, larm, lefthold, 0, 0, 0, 0, 1, 0)


hold = Instance.new("Part")

prop(hold, bricks, false, 0, 0, 0.2, 0.4, 0.7, "Really red", false, "Custom")

oh = Instance.new("Weld")

weld(oh, lleg, hold, -math.pi/1.4, 0, math.rad(35), 0.55, -0.9, 0.3)


knife = Instance.new("Part")

prop(knife, bricks, false, 0, 0, 0.35, 1.1, 0.5, "Really black", false, "Custom")

orr = Instance.new("Weld")

weld(orr, hold, knife, 0, 0, 0, 0, 0.7, 0)

ar = Instance.new("Weld")

weld(ar, lefthold, nil, math.pi/2, 0, math.pi, 0, 0, 0)



blade = Instance.new("Part")

prop(blade, bricks, false, 0, 0, 0.1, 1.5, 0.4, "Medium grey", false, "Custom")

Instance.new("BlockMesh",blade).Scale = Vector3.new(0.3,1,1)

w2 = Instance.new("Weld")

weld(w2, knife, blade, 0, 0, 0, 0, -1.2, 0)


blade2 = Instance.new("Part")

prop(blade2, bricks, false, 0, 0, 0.1, 0.5, 0.4, "Medium grey", false, "Custom")

local mew = Instance.new("SpecialMesh",blade2)

mew.MeshType = "Wedge"

mew.Scale = Vector3.new(0.3,1,1)

w3 = Instance.new("Weld")

weld(w3, blade, blade2, 0, 0, 0, 0, -1, 0)





rb = Instance.new("Part")

prop(rb, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")

w13 = Instance.new("Weld")

weld(w13, torso, rb, 0, 0, 0, -1.5, -0.5, 0)


lb = Instance.new("Part")

prop(lb, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")

w14 = Instance.new("Weld")

weld(w14, torso, lb, 0, 0, 0, 1.5, -0.5, 0)


rw = Instance.new("Weld")

weld(rw, rb, nil, 0, 0, 0, 0, 0.5, 0)


lw = Instance.new("Weld")

weld(lw, lb, nil, 0, 0, 0, 0, 0.5, 0)


grabweld = nil

platlol = nil

lolhum = nil


function touch(h)

if hurt then

if grabbed == nil then

local hu = h.Parent:findFirstChild("Humanoid")

local head = h.Parent:findFirstChild("Head")

local torz = h.Parent:findFirstChild("Torso")

if hu ~= nil and head ~= nil and torz ~= nil and h.Parent.Name ~= name then

if hu.Health > 0 then

grabbed = torz

hu.PlatformStand = true

local w = Instance.new("Weld")

weld(w,righthold,grabbed,math.pi/2,0.2,0,0.7,-0.9,-0.6)

grabweld = w

lolhum = hu

local lolxd = true

platlol = lolxd

hu.Changed:connect(function(prop)

if prop == "PlatformStand" and platlol then

hu.PlatformStand = true

end

end)

end

end

end

end

end


righthold.Touched:connect(touch)

lefthold.Touched:connect(touch)


function bleed(part,po)

local lol1 = math.random(5,30)/100

local lol2 = math.random(5,30)/100

local lol3 =math.random(5,30)/100

local lol4 = math.random(1,#bloodcolors)

local p = Instance.new("Part")

prop(p,part.Parent,false,0,0,lol1,lol2,lol3,bloodcolors[lol4],false,"Custom")

p.CFrame = part.CFrame * CFrame.new(math.random(-5,5)/10,po,math.random(-5,5)/10)

p.Velocity = Vector3.new(math.random(-190,190)/10,math.random(-190,190)/10,math.random(-190,190)/10)

p.RotVelocity = Vector3.new(math.random(-400,400)/10,math.random(-400,400)/10,math.random(-400,400)/10)

coroutine.resume(coroutine.create(function()

wait(3)

p:remove()

end))

end


h = Instance.new("HopperBin",me.Backpack)

h.Name = "Grab"


bin = h


local function select(mouse)

orr.Part1 = nil

ar.Part1 = knife

mouse.Button1Down:connect(function()

if attacking == false then

attacking = true

lw.Part1 = larm

rw.Part1 = rarm

hurt = true

for i=1, 8 do

rw.C0 = rw.C0 * CFrame.new(-0.03,0,-0.08) * CFrame.fromEulerAnglesXYZ(0.18,0.04,0)

lw.C0 = lw.C0 * CFrame.new(0.06,0,-0.06) * CFrame.fromEulerAnglesXYZ(0.15,-0.11,-0.05)

wait(0.1)

end

wait(1)

hurt = false

if grabbed == nil then

for i=1, 4 do

rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)

lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)

wait(0.1)

end

lw.C0 = CFrame.new(0,0,0)

rw.C0 = CFrame.new(0,0,0)

lw.Part1 = nil

rw.Part1 = nil

attacking = false

end

elseif hurt == false and grabbed ~= nil and mode == "drop" then

grabweld:remove()

grabweld = nil

platlol = false

grabbed = nil

lolhum.PlatformStand = false

lolhum = nil

for i=1, 4 do

rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)

lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.3,0.2,0)

wait(0.1)

end

lw.C0 = CFrame.new(0,0,0)

rw.C0 = CFrame.new(0,0,0)

lw.Part1 = nil

rw.Part1 = nil

attacking = false

platlol = nil

elseif hurt == false and grabbed ~= nil and grabweld ~= nil and mode == "throw" then

grabweld:remove()

grabweld = nil

local bf = Instance.new("BodyForce",grabbed)

bf.force = torso.CFrame.lookVector * 8500

bf.force = bf.force + Vector3.new(0,7400,0)

coroutine.resume(coroutine.create(function()

wait(0.12)

bf:remove()

end))

for i=1, 6 do

rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.35,0,0)

lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.18,0,0)

wait(0.1)

end

for i=1, 4 do

rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.47,0,0)

lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0)

wait(0.1)

end

wait(0.2)

platlol = false

grabbed = nil

lolhum.PlatformStand = false

lolhum = nil

for i=1, 4 do

rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)

lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.3,0.2,0)

wait(0.1)

end

lw.C0 = CFrame.new(0,0,0)

rw.C0 = CFrame.new(0,0,0)

lw.Part1 = nil

rw.Part1 = nil

attacking = false

platlol = nil

elseif hurt == false and grabbed ~= nil and lolhum ~= nil and grabweld ~= nil and mode == "kill" then

for i=1, 5 do

lw.C0 = lw.C0 * CFrame.new(0.02,0.12,0.1) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)

wait(0.1)

end

local ne = grabbed:findFirstChild("Neck")

coroutine.resume(coroutine.create(function()

local duh = grabbed

local duh2 = grabbed.Parent.Head

local lolas = lolhum

duh.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))

for i=1, 60 do

wait(0.1)

local hm = math.random(1,9)

pcall(function()

if hm == 1 then

duh2.Sound.Pitch = math.random(90,110)/100

duh2.Sound:play()

end

end)

if hm > 0 and hm < 3 then

bleed(duh,1)

bleed(duh2,-0.5)

end

end

lolas.BreakJointsOnDeath = false
                        if lolas.Health == 0 then
                                ragdoll(lolas)
                        end
                  
lolas.Health = 0

for i=1, 85 do

wait(0.1)

local hm = math.random(1,9)

pcall(function()

if hm == 1 then

duh2.Sound.Pitch = math.random(90,110)/100

duh2.Sound:play()

end

end)

if hm > 0 and hm < 3 then

bleed(duh,1)

bleed(duh2,-0.5)

end

end

end))

for i=1, 3 do

lw.C0 = lw.C0 * CFrame.new(0.02,0.12,0.1) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)

if ne ~= nil then

grabbed.Neck.C0 = grabbed.Neck.C0 * CFrame.fromEulerAnglesXYZ(-0.35,0,0)

end

wait(0.1)

end

grabweld:remove()

grabweld = nil

for i=1, 4 do

lw.C0 = lw.C0 * CFrame.new(-0.04,-0.24,-0.2) * CFrame.fromEulerAnglesXYZ(0.1,0,0.06)

wait(0.1)

end

for i=1, 4 do

rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)

lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)

wait(0.1)

end

lw.C0 = CFrame.new(0,0,0)

rw.C0 = CFrame.new(0,0,0)

lw.Part1 = nil

rw.Part1 = nil

platlol = false

grabbed = nil

lolhum = nil

attacking = false

platlol = nil

end

end)

mouse.KeyDown:connect(function(kai)

key = kai:lower()

if key == "q" then

mode = "drop"

inform("Mode: Drop",2)

elseif key == "e" then

mode = "throw"

inform("Mode: Throw",2)

elseif key == "f" then

mode = "kill"

inform("Mode: Kill",2)

end

end)

end


function desel()

repeat wait(0.1) until attacking == false

orr.Part1 = knife

ar.Part1 = nil

end


bin.Selected:connect(select)

bin.Deselected:connect(desel)


char.Humanoid.Died:connect(function()

pcall(function()

grabweld:remove()

grabweld = nil

grabbed = nil

platlol = false

platlol = nil

end)

end)


inform("Grab script loaded succesfully.",2)
