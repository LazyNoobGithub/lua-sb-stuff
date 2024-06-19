
--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Tool0 = Instance.new("Tool")
Part1 = Instance.new("Part")
SpecialMesh2 = Instance.new("SpecialMesh")
LocalScript3 = Instance.new("LocalScript")
Folder4 = Instance.new("Folder")
RemoteEvent5 = Instance.new("RemoteEvent")
Script6 = Instance.new("Script")
Tool0.Name = "Grenade"
Tool0.Parent = mas
Part1.Name = "Handle"
Part1.Parent = Tool0
Part1.CFrame = CFrame.new(17.4197578, 0.391387939, -49.4482269, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Part1.Orientation = Vector3.new(0, 180, 0)
Part1.Position = Vector3.new(17.419757843017578, 0.391387939453125, -49.44822692871094)
Part1.Rotation = Vector3.new(180, 0, 180)
Part1.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part1.Size = Vector3.new(0.8049530386924744, 0.7827564477920532, 0.8049530386924744)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.BrickColor = BrickColor.new("Earth green")
Part1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.brickColor = BrickColor.new("Earth green")
Part1.FormFactor = Enum.FormFactor.Custom
Part1.formFactor = Enum.FormFactor.Custom
SpecialMesh2.Parent = Part1
SpecialMesh2.MeshId = "rbxassetid://431532852"
SpecialMesh2.Scale = Vector3.new(0.0028335859533399343, 0.0023949481546878815, 0.0028335859533399343)
SpecialMesh2.TextureId = "rbxassetid://431532899"
SpecialMesh2.MeshType = Enum.MeshType.FileMesh
LocalScript3.Name = "GrenadeClient"
LocalScript3.Parent = Tool0
table.insert(cors,sandbox(LocalScript3,function()
script.Parent.Activated:Connect(function()
	print("Activation, firing drop!")
	script.Parent.Events.Fire:FireServer()
end)
end))
Folder4.Name = "Events"
Folder4.Parent = Tool0
RemoteEvent5.Name = "Fire"
RemoteEvent5.Parent = Folder4
Script6.Name = "GrenadeServer"
Script6.Parent = Tool0
table.insert(cors,sandbox(Script6,function()
local Events = script.Parent.Events
local MainGrenade = script.Parent.Handle
local Debris = game:GetService("Debris")


Events.Fire.OnServerEvent:Connect(function(plr)
	local GrenadeClone = MainGrenade:Clone()
	GrenadeClone.CanCollide = true
	GrenadeClone.Position = MainGrenade.Position
	GrenadeClone.Parent = workspace
	Debris:AddItem(GrenadeClone,5)
	wait(4.8)
	local Explosion = Instance.new("Explosion",GrenadeClone)
	Explosion.Position = GrenadeClone.Position
end)
end))
for i,v in pairs(mas:GetChildren()) do
	v.Parent = owner.Backpack
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
