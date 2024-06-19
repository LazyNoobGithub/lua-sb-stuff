
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
Script1 = Instance.new("Script")
Script2 = Instance.new("Script")
Script3 = Instance.new("Script")
Part4 = Instance.new("Part")
SpecialMesh5 = Instance.new("SpecialMesh")
Sound6 = Instance.new("Sound")
LocalScript7 = Instance.new("LocalScript")
Camera8 = Instance.new("Camera")
Tool0.Name = "ClassicPaintballGun"
Tool0.Parent = mas
Tool0.TextureId = "rbxasset://Textures/PaintballIcon.png"
Tool0.Grip = CFrame.new(0, 0.400000006, 0.5, 1, 0, -0, 0, 0, 1, 0, -1, -0)
Tool0.GripForward = Vector3.new(0, -1, 0)
Tool0.GripPos = Vector3.new(0, 0.4000000059604645, 0.5)
Tool0.GripUp = Vector3.new(0, 0, -1)
Script1.Name = "Paintball"
Script1.Parent = Tool0
Script1.Enabled = false
table.insert(cors,sandbox(Script1,function()
ball = script.Parent
damage = 2

function onTouched(hit)
	local humanoid = hit.Parent:findFirstChild("Humanoid")
	
		
	if hit:getMass() < 1.2 * 200 then
		hit.BrickColor = ball.BrickColor
	end
	-- make a splat
	for i=1,3 do
		local s = Instance.new("Part")
		s.Shape = 1 -- block
		s.formFactor = 2 -- plate
		s.Size = Vector3.new(1,.4,1)
		s.BrickColor = ball.BrickColor
		local v = Vector3.new(math.random(-1,1), math.random(0,1), math.random(-1,1))
		s.Velocity = 15 * v
		s.CFrame = CFrame.new(ball.Position + v, v)
		ball.BrickCleanup:clone().Parent = s
		s.BrickCleanup.Disabled = false
		s.Parent = game.Workspace
		
	end
	

	if humanoid ~= nil then
		tagHumanoid(humanoid)
		humanoid:TakeDamage(damage)
		wait(2)
		untagHumanoid(humanoid)
	end

	connection:disconnect()
	ball.Parent = nil
end

function tagHumanoid(humanoid)
	-- todo: make tag expire
	local tag = ball:findFirstChild("creator")
	if tag ~= nil then
		local new_tag = tag:clone()
		new_tag.Parent = humanoid
	end
end


function untagHumanoid(humanoid)
	if humanoid ~= nil then
		local tag = humanoid:findFirstChild("creator")
		if tag ~= nil then
			tag.Parent = nil
		end
	end
end

connection = ball.Touched:connect(onTouched)

wait(8)
ball.Parent = nil

end))
Script1.Disabled = true
Script2.Name = "PaintballShooter"
Script2.Parent = Tool0
table.insert(cors,sandbox(Script2,function()
Tool = script.Parent

colors = {45, 119, 21, 24, 23, 105, 104}

function fire(v)

	Tool.Handle.Fire:play()
	

	local vCharacter = Tool.Parent
	local vPlayer = game.Players:playerFromCharacter(vCharacter)

	local missile = Instance.new("Part")

        

	local spawnPos = vCharacter.PrimaryPart.Position
	


	spawnPos  = spawnPos + (v * 8)

	missile.Position = spawnPos
	missile.Size = Vector3.new(1,1,1)
	missile.Velocity = v * 100
	missile.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
	missile.Shape = 0
	missile.BottomSurface = 0
	missile.TopSurface = 0
	missile.Name = "Paintball"
	missile.Elasticity = 0
	missile.Reflectance = 0
	missile.Friction = .9

	local force = Instance.new("BodyForce")
	force.force = Vector3.new(0,90 * missile:GetMass(),0)
	force.Parent = missile
	
	Tool.BrickCleanup:clone().Parent = missile

	local new_script = script.Parent.Paintball:clone()
	new_script.Disabled = false
	new_script.Parent = missile

	local creator_tag = Instance.new("ObjectValue")
	creator_tag.Value = vPlayer
	creator_tag.Name = "creator"
	creator_tag.Parent = missile
	


	missile.Parent = game.Workspace

end



Tool.Enabled = true
function onActivated()

	if not Tool.Enabled then
		return
	end

	Tool.Enabled = false

	local character = Tool.Parent;
	local humanoid = character.Humanoid
	if humanoid == nil then
		print("Humanoid not found")
		return 
	end

	local targetPos = humanoid.TargetPoint
	local lookAt = (targetPos - character.Head.Position).unit

	fire(lookAt)

	wait(.5)

	Tool.Enabled = true
end


script.Parent.Activated:connect(onActivated)

end))
Script3.Name = "BrickCleanup"
Script3.Parent = Tool0
Script3.Enabled = false
table.insert(cors,sandbox(Script3,function()
-- this script removes its parent from the workspace after 120 seconds

wait(120)
script.Parent.Parent = nil

end))
Script3.Disabled = true
Part4.Name = "Handle"
Part4.Parent = Tool0
Part4.CFrame = CFrame.new(50.1539993, 4.00002289, -38.37714, -0, 1, -0, -0, 0, -1, -1, 0, -0)
Part4.Orientation = Vector3.new(90, 90, 0)
Part4.Position = Vector3.new(50.15399932861328, 4.000022888183594, -38.377140045166016)
Part4.Rotation = Vector3.new(90, 0, -90)
Part4.Size = Vector3.new(1, 3, 2)
Part4.BottomSurface = Enum.SurfaceType.Smooth
Part4.TopSurface = Enum.SurfaceType.Smooth
Part4.FormFactor = Enum.FormFactor.Symmetric
Part4.formFactor = Enum.FormFactor.Symmetric
SpecialMesh5.Parent = Part4
SpecialMesh5.MeshId = "rbxasset://fonts/PaintballGun.mesh"
SpecialMesh5.TextureId = "rbxasset://textures/PaintballGunTex128.png"
SpecialMesh5.MeshType = Enum.MeshType.FileMesh
Sound6.Name = "Fire"
Sound6.Parent = Part4
Sound6.EmitterSize = 0
Sound6.MinDistance = 0
Sound6.SoundId = "rbxasset://sounds//paintball.wav"
Sound6.Volume = 1
LocalScript7.Name = "MouseIcon"
LocalScript7.Parent = Tool0
table.insert(cors,sandbox(LocalScript7,function()
local MOUSE_ICON = 'rbxasset://textures/GunCursor.png'
local RELOADING_ICON = 'rbxasset://textures/GunWaitCursor.png'

local Tool = script.Parent

local Mouse = nil

local function UpdateIcon()
	if Mouse then
		Mouse.Icon = Tool.Enabled and MOUSE_ICON or RELOADING_ICON
	end
end

local function OnEquipped(mouse)
	Mouse = mouse
	UpdateIcon()
end

local function OnChanged(property)
	if property == 'Enabled' then
		UpdateIcon()
	end
end

Tool.Equipped:connect(OnEquipped)
Tool.Changed:connect(OnChanged)

end))
Camera8.Name = "ThumbnailCamera"
Camera8.Parent = Tool0
Camera8.CFrame = CFrame.new(29.1279793, 1.17312062, -79.6062317, 0.87353611, 0.0752690434, -0.480904609, -0, 0.987972021, 0.154632956, 0.486759394, -0.135077477, 0.863029182)
Camera8.CoordinateFrame = CFrame.new(29.1279793, 1.17312062, -79.6062317, 0.87353611, 0.0752690434, -0.480904609, -0, 0.987972021, 0.154632956, 0.486759394, -0.135077477, 0.863029182)
Camera8.Focus = CFrame.new(30.0897846, 0.863855958, -81.332283, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Camera8.focus = CFrame.new(30.0897846, 0.863855958, -81.332283, 1, 0, 0, 0, 1, 0, 0, 0, 1)
for i,v in pairs(mas:GetChildren()) do
	v.Parent = workspace
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
