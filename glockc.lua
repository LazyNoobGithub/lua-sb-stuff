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

local Scale = game.Players.LocalPlayer.Character.Torso.Size.X/2*(game.Players.LocalPlayer.Character.Torso:FindFirstChild("ScaleInserted") ~= nil and game.Players.LocalPlayer.Character.Torso:FindFirstChild("ScaleInserted").Scale.Z or 1)*0.8
local Speed = 20*Scale
local Gravity = 0.1

local Player = game.Players.LocalPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
local Torso = Character.HumanoidRootPart
local Mouse = game.Players.LocalPlayer:GetMouse()
local RenderStepped = game:GetService("RunService").RenderStepped
local Camera = Workspace.CurrentCamera
Camera:ClearAllChildren()
local Model = Instance.new("Model",Character)
local IgnoreList = {Character,Workspace.Terrain}

local Part0Joint = CFrame.new(Vector3.new(1,0.75,0)*Scale*1.25)
local Part1Joint = CFrame.new(Vector3.new(-0.5,0.75,0)*Scale*1.25)
local RotationOffset = CFrame.Angles(math.rad(90),math.rad(0),0)
local Gangster = false

local Part0JointHead = CFrame.new(Vector3.new(0,1,0)*Scale*1.25)
local Part1JointHead = CFrame.new(Vector3.new(0,-0.5,0)*Scale*1.25)
local RotationOffsetHead = CFrame.Angles(0,0,0)

local Handle = Instance.new("Part",Model)
Handle.CanCollide = false
Handle.Name = "Handle"
Handle.Position = Vector3.new(0,100,0)
Handle:BreakJoints()
Handle.FormFactor = "Custom"
Handle.Size = Vector3.new(0.2,0.2,0.2)
Handle.TopSurface = "SmoothNoOutlines"
Handle.BottomSurface = "SmoothNoOutlines"
Handle.FrontSurface = "SmoothNoOutlines"
Handle.BackSurface = "SmoothNoOutlines"
Handle.RightSurface = "SmoothNoOutlines"
Handle.LeftSurface = "SmoothNoOutlines"
Handle.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("BlockMesh",Handle)
Mesh.Scale = Vector3.new(0.25,1,0.4) / 0.2 * Scale
local HandleWeld = Instance.new("Motor6D")
HandleWeld.Part0 = Character["Right Arm"]
HandleWeld.Part1 = Handle
HandleWeld.C0 = CFrame.new(Vector3.new(0,-1,0)*Scale) * CFrame.Angles(math.rad(-105),0,0)
HandleWeld.Parent = Handle

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("CylinderMesh",Part)
Mesh.Scale = Vector3.new(0.07,0.2,0.07) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(-0.115,-0.475,-0.190)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("CylinderMesh",Part)
Mesh.Scale = Vector3.new(0.07,0.2,0.07) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0.115,-0.475,0.190)*Scale) * CFrame.Angles(0,0,0) 
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("CylinderMesh",Part)
Mesh.Scale = Vector3.new(0.07,0.2,0.07) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(-0.115,-0.475,0.190)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("CylinderMesh",Part)
Mesh.Scale = Vector3.new(0.07,0.2,0.07) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0.115,-0.475,-0.190)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.23,0.2,0.1) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0,-0.475,-0.175)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.23,0.2,0.1) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0,-0.475,0.175)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.1,0.2,0.38) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(-0.1,-0.475,0)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.1,0.2,0.38) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0.1,-0.475,0)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.1,0.3,0.05) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.Angles(math.rad(15),0,0) * CFrame.new(Vector3.new(0,0.25,-0.75)*Scale) * CFrame.Angles(math.rad(-10),0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.1,0.05,0.625) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.Angles(math.rad(15),0,0) * CFrame.new(Vector3.new(0,0.1,-0.435)*Scale)
PartWeld.Parent = Part

for i = 0,80,10 do
	local Part = Instance.new("Part",Model)
	Part.CanCollide = false
	Part.Position = Vector3.new(0,100,0)
	Part:BreakJoints()
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2,0.2,0.2)
	Part.TopSurface = "SmoothNoOutlines"
	Part.BottomSurface = "SmoothNoOutlines"
	Part.FrontSurface = "SmoothNoOutlines"
	Part.BackSurface = "SmoothNoOutlines"
	Part.RightSurface = "SmoothNoOutlines"
	Part.LeftSurface = "SmoothNoOutlines"
	Part.BrickColor = BrickColor.new("Black")
	local Mesh = Instance.new("BlockMesh",Part)
	Mesh.Scale = Vector3.new(0.25,0.15,0.03555*2) / 0.2 * Scale
	local PartWeld = Instance.new("Motor6D")
	PartWeld.Part0 = Handle
	PartWeld.Part1 = Part
	PartWeld.C0 = CFrame.new(Vector3.new(0,0.15,0.315)*Scale) * CFrame.Angles(math.rad(i-65),0,0) * CFrame.new(Vector3.new(0,0.2,0)*Scale)
	PartWeld.Parent = Part
end

local Barrel = Instance.new("Part",Model)
Barrel.CanCollide = false
Barrel.Position = Vector3.new(0,100,0)
Barrel:BreakJoints()
Barrel.FormFactor = "Custom"
Barrel.Size = Vector3.new(0.2,0.2,0.2)
Barrel.TopSurface = "SmoothNoOutlines"
Barrel.BottomSurface = "SmoothNoOutlines"
Barrel.FrontSurface = "SmoothNoOutlines"
Barrel.BackSurface = "SmoothNoOutlines"
Barrel.RightSurface = "SmoothNoOutlines"
Barrel.LeftSurface = "SmoothNoOutlines"
Barrel.BrickColor = BrickColor.new("Black")
local Mesh = Instance.new("BlockMesh",Barrel)
Mesh.Scale = Vector3.new(0.25,0.2,2) / 0.2 * Scale
local BarrelWeld = Instance.new("Motor6D")
BarrelWeld.Part0 = Handle
BarrelWeld.Part1 = Barrel
BarrelWeld.C0 = CFrame.Angles(math.rad(15),0,0) * CFrame.new(Vector3.new(0,0.5,-0.7)*Scale)
BarrelWeld.Parent = Barrel

local Barrel1 = Barrel

local Barrel2 = Instance.new("Part",Model)
Barrel2.CanCollide = false
Barrel2.Position = Vector3.new(0,100,0)
Barrel2:BreakJoints()
Barrel2.FormFactor = "Custom"
Barrel2.Size = Vector3.new(0.2,0.2,0.2)
Barrel2.TopSurface = "SmoothNoOutlines"
Barrel2.BottomSurface = "SmoothNoOutlines"
Barrel2.FrontSurface = "SmoothNoOutlines"
Barrel2.BackSurface = "SmoothNoOutlines"
Barrel2.RightSurface = "SmoothNoOutlines"
Barrel2.LeftSurface = "SmoothNoOutlines"
Barrel2.BrickColor = BrickColor.new("Really black")
local Mesh = Instance.new("BlockMesh",Barrel2)
Mesh.Scale = Vector3.new(0.25,0.25,2) / 0.2 * Scale
local Barrel2Weld = Instance.new("Motor6D")
Barrel2Weld.Part0 = Barrel
Barrel2Weld.Part1 = Barrel2
Barrel2Weld.C0 = CFrame.new(Vector3.new(0,0.225,0)*Scale)
Barrel2Weld.Parent = Barrel2

local RealBarrel = Instance.new("Part",Model)
RealBarrel.CanCollide = false
RealBarrel.Position = Vector3.new(0,100,0)
RealBarrel:BreakJoints()
RealBarrel.FormFactor = "Custom"
RealBarrel.Size = Vector3.new(0.2,0.2,0.2)
RealBarrel.TopSurface = "SmoothNoOutlines"
RealBarrel.BottomSurface = "SmoothNoOutlines"
RealBarrel.FrontSurface = "SmoothNoOutlines"
RealBarrel.BackSurface = "SmoothNoOutlines"
RealBarrel.RightSurface = "SmoothNoOutlines"
RealBarrel.LeftSurface = "SmoothNoOutlines"
RealBarrel.BrickColor = BrickColor.new("Dark grey metallic")
local Mesh = Instance.new("CylinderMesh",RealBarrel)
Mesh.Scale = Vector3.new(0.2,2,0.2) / 0.2 * Scale
local RealBarrelWeld = Instance.new("Motor6D")
RealBarrelWeld.Part0 = Barrel
RealBarrelWeld.Part1 = RealBarrel
RealBarrelWeld.C0 = CFrame.new(Vector3.new(0,0.1,-0.01)*Scale) * CFrame.Angles(math.rad(-90),0,0)
RealBarrelWeld.Parent = RealBarrel

for i = 1,75,15 do
	local Part = Instance.new("Part",Model)
	Part.CanCollide = false
	Part.Position = Vector3.new(0,100,0)
	Part:BreakJoints()
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2,0.2,0.2)
	Part.TopSurface = "SmoothNoOutlines"
	Part.BottomSurface = "SmoothNoOutlines"
	Part.FrontSurface = "SmoothNoOutlines"
	Part.BackSurface = "SmoothNoOutlines"
	Part.RightSurface = "SmoothNoOutlines"
	Part.LeftSurface = "SmoothNoOutlines"
	Part.BrickColor = BrickColor.new("Black")
	local Mesh = Instance.new("BlockMesh",Part)
	Mesh.Scale = Vector3.new(0.05,0.065,0.05) / 0.2 * Scale
	local PartWeld = Instance.new("Motor6D")
	PartWeld.Part0 = Handle
	PartWeld.Part1 = Part
	PartWeld.C0 = CFrame.new(Vector3.new(0,0.525,-0.515)*Scale) * CFrame.Angles(math.rad(i),0,0) * CFrame.new(Vector3.new(0,0,0.2)*Scale)
	PartWeld.Parent = Part
end

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Really black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.05,0.11,0.1) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Barrel2
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0.06,0.135,0.925)*Scale)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Really black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.05,0.11,0.1) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Barrel2
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(-0.06,0.135,0.925)*Scale)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Really black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.025,0.1,0.1) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Barrel2
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0,0.135,-0.925)*Scale)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.Transparency = 1
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Really black")
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.1,0.1,0.1) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Barrel
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0,0,-5)*Scale)
PartWeld.Parent = Part

local Light = Instance.new("PointLight",Part)
Light.Color = BrickColor.new("Gold").Color
Light.Enabled = true
Light.Shadows = true
Light.Brightness = 0
Light.Range = 6

local Part = Instance.new("Part",Model)
Part.Material = "Neon"
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Bright yellow")
Part.Transparency = 0.25
local RecoilMesh = Instance.new("SpecialMesh",Part)
RecoilMesh.MeshType = "FileMesh"
RecoilMesh.MeshId = "http://www.roblox.com/Asset/?id=1323306"
RecoilMesh.TextureId = "http://www.roblox.com/Asset/?id=98896228"
RecoilMesh.Scale = Vector3.new(0.175,0,0.175) * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = RealBarrel
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0,0.95,0)*Scale)
PartWeld.Parent = Part

function ShootBullet(Target,barrel)
	local barrel = barrel or Barrel
	local Bullet = Instance.new("Part",Workspace)
	Barrel.CanCollide = false
	Bullet.FormFactor = "Custom"
	Bullet.Size = Vector3.new(0.2,0.2,5)*Scale
	Bullet.TopSurface = "Smooth"
	Bullet.BottomSurface = "Smooth"
	Bullet.Anchored = true
	Bullet.CanCollide = false
	Bullet.CFrame = CFrame.new((barrel.CFrame*CFrame.new(0,0,-barrel.Size.Z*barrel.Mesh.Scale.Z/2)).p,Target)*CFrame.new(0,0,-Bullet.Size.Z/2)
	Bullet.Transparency = 0.1
	Bullet.BrickColor = BrickColor.new("Gold")
	--[[local Mesh = Instance.new("SpecialMesh",Bullet)
	Mesh.MeshType = "FileMesh"
	Mesh.Scale = Vector3.new(0.5,0.5,0.2)
	Mesh.MeshId = "http://www.roblox.com/asset/?id=2697549"
	--Mesh.TextureId = "http://www.roblox.com/asset/?id=2697544"]]
	local Mesh = Instance.new("BlockMesh",Bullet)
	Mesh.Scale = Vector3.new(0.2,0.2,5)*Scale/Bullet.Size
	IgnoreList[#IgnoreList+1] = Bullet
	RenderStepped:wait()
	for i = Speed,1000,Speed do -- Loop to do the bullet movement and stuff.
		local ray,Hit,Pos,SurfaceNormal;
		ray = Ray.new(Bullet.Position,((Bullet.CFrame*CFrame.Angles(math.rad(-Gravity),0,0)*CFrame.new(0,0,-Speed)).p-Bullet.Position).unit*Speed)
		Hit,Pos,SurfaceNormal = Workspace:FindPartOnRayWithIgnoreList(ray,IgnoreList)
		Bullet.CFrame = Bullet.CFrame*CFrame.Angles(math.rad(-Gravity),0,0)*CFrame.new(0,0,-Speed)
		if Hit ~= nil then
			local Hum = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid") or (Hit.Parent.Parent.Parent ~= nil and Hit.Parent.Parent.Parent:FindFirstChild("Humanoid"))
			if Hum ~= nil then
				owner.Character.Humanoid.BreakJointsOnDeath = false
				ragdoll(owner.Character.Humanoid)
				Hum:TakeDamage((((Gangster and math.random(99999,99999) or math.random(99999,99999))*Scale)/100)*Hum.MaxHealth)
			end
			break
		end
		RenderStepped:wait()
	end
	Bullet:Destroy()
end

Mouse.Button1Down:connect(function()
	if not Down and not DB then
		Down = true
		while Down do
			if Humanoid.Health == 0 then break end
			if not DB then
				DB = true
				local Sound = Instance.new("Sound",Barrel)
				Sound.SoundId = "http://www.roblox.com/Asset/?id=165946426" -- 132373574
				Sound.Volume = 5*Scale
				Sound.Pitch = (math.random(70,110)/100)/((Scale < 0.25 and 0.25) or (Scale > 4 and 4) or Scale)
				Sound:Play()
				Spawn(function()
					ShootBullet(Mouse.Hit.p,Barrel1)
				end)
				RecoilMesh.VertexColor = Vector3.new(1,math.random(160,245)/255,20/255)
				PartWeld.C0 = PartWeld.C0 * CFrame.Angles(0,math.rad(math.random(-40,40)),0)
				local Shell = Instance.new("Part",Workspace)
				Shell.FormFactor = "Custom"
				Shell.BrickColor = BrickColor.new("Bright yellow")
				Shell.Size = Vector3.new(0.2,0.5,0.2)*Scale
				Shell.CFrame = Barrel.CFrame*CFrame.new(0.5,0.5,0)*CFrame.Angles(math.rad(-90),0,0)
				Shell.Velocity = ((Barrel.CFrame*CFrame.new(5,0,math.random(-2,2))).p-Barrel.CFrame.p)*5*Scale
				local Mesh = Instance.new("CylinderMesh",Shell)
				Mesh.Scale = Vector3.new(0.2,0.5,0.2)*Scale/Shell.Size
				Spawn(function()
					wait(5)
					Shell:Destroy()
				end)
				for i = 1,20,7.5 do
					RotationOffset = RotationOffset*CFrame.Angles(math.rad(7.5),0,0)
					Part1Joint = Part1Joint*CFrame.new(Vector3.new(0,-0.15,0)*Scale)
					Barrel2Weld.C0 = Barrel2Weld.C0*CFrame.new(Vector3.new(0,0,0.15)*Scale)
					Light.Brightness = Light.Brightness+38
					RecoilMesh.Scale = RecoilMesh.Scale+(Vector3.new(0,0.375,0)*Scale)
					RenderStepped:wait()
				end
				wait(0.02)
				for i = 1,20,3.75 do
					RotationOffset = RotationOffset*CFrame.Angles(math.rad(-3.75),0,0)
					Part1Joint = Part1Joint*CFrame.new(Vector3.new(0,0.075,0)*Scale)
					Barrel2Weld.C0 = Barrel2Weld.C0*CFrame.new(Vector3.new(0,0,-0.075)*Scale)
					Light.Brightness = Light.Brightness-19
					RecoilMesh.Scale = RecoilMesh.Scale+(Vector3.new(0,-0.1875,0)*Scale)
					RenderStepped:wait()
				end
				wait(0.02)
				DB = false
			end
		end
	end
end)

Mouse.Button1Up:connect(function()
	Down = false
end)

Mouse.KeyDown:connect(function(Key)
	if Key:lower() == "g" and not DB then
		DB = true
		if Gangster == true then
			for i = 1,70,5 do
				RotationOffset = RotationOffset*CFrame.Angles(0,math.rad(-5),0)
				RenderStepped:wait()
			end
			Gangster = false
		else
			for i = 1,70,5 do
				RotationOffset = RotationOffset*CFrame.Angles(0,math.rad(5),0)
				RenderStepped:wait()
			end
			Gangster = true
		end
		DB = false
	end
end)

local Weld = Instance.new("Weld")
Weld.Part0 = Torso
Weld.Part1 = Character["Right Arm"]
Weld.Parent = Torso

local Weld2 = Instance.new("Weld")
Weld2.Part0 = Torso
Weld2.Part1 = Character.Head
Weld2.Parent = Torso

local RA = Character["Right Arm"]

game:GetService("RunService"):BindToRenderStep("Pistol",Enum.RenderPriority.Character.Value,function()
	local Point = Torso.CFrame:vectorToObjectSpace(Mouse.Hit.p-Torso.CFrame.p)
	if Point.Z > 0 then
		if Point.X > 0 then
			Torso.CFrame = CFrame.new(Torso.Position,Vector3.new(Mouse.Hit.X,Torso.Position.Y,Mouse.Hit.Z))*CFrame.Angles(0,math.rad(90),0)
		elseif Point.X < 0 then
			Torso.CFrame = CFrame.new(Torso.Position,Vector3.new(Mouse.Hit.X,Torso.Position.Y,Mouse.Hit.Z))*CFrame.Angles(0,math.rad(-90),0)
		end
	end

	local CFr = (Torso.CFrame*Part0Joint):toObjectSpace(CFrame.new((Torso.CFrame*Part0Joint).p,Mouse.Hit.p))--RayEnd))
	Weld.C0 = Part0Joint * (CFr-CFr.p) * RotationOffset
	Weld.C1 = Part1Joint
	Weld.Part0 = Torso
	Weld.Part1 = RA
	local CFr = (Torso.CFrame*Part0JointHead):toObjectSpace(CFrame.new((Torso.CFrame*Part0JointHead).p,Mouse.Hit.p))--RayEnd))
	Weld2.C0 = Part0JointHead * (CFr-CFr.p) * RotationOffsetHead
	Weld2.C1 = Part1JointHead
	Weld2.Part0 = Torso
	Weld2.Part1 = Character.Head
	local Last = Scale
	Scale = game.Players.LocalPlayer.Character.Torso.Size.X/2*(game.Players.LocalPlayer.Character.Torso:FindFirstChild("ScaleInserted") ~= nil and game.Players.LocalPlayer.Character.Torso:FindFirstChild("ScaleInserted").Scale.Z or 1)*0.8
	Speed = 20*Scale
	if Scale ~= Last then
		Part0Joint = CFrame.new(Vector3.new(1,0.75,0)*Scale*1.25)
		Part1Joint = CFrame.new(Vector3.new(-0.5,0.75,0)*Scale*1.25)
		Part0JointHead = CFrame.new(Vector3.new(0,1,0)*Scale*1.25)
		Part1JointHead = CFrame.new(Vector3.new(0,-0.5,0)*Scale*1.25)
	end
end)
