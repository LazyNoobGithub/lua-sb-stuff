
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
function ragdoll(plr)
	for index,joint in pairs(plr.Character:GetDescendants()) do
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
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Tool0 = Instance.new("Tool")
Part1 = Instance.new("Part")
SpecialMesh2 = Instance.new("SpecialMesh")
Sound3 = Instance.new("Sound")
Sound4 = Instance.new("Sound")
Sound5 = Instance.new("Sound")
Script6 = Instance.new("Script")
LocalScript7 = Instance.new("LocalScript")
Camera8 = Instance.new("Camera")
Tool0.Name = "ClassicSword"
Tool0.Parent = mas
Tool0.TextureId = "rbxasset://Textures/Sword128.png"
Tool0.Grip = CFrame.new(0, 0, -1.5, 0, 0, 1, 1, 0, 0, 0, 1, 0)
Tool0.GripForward = Vector3.new(-1, -0, -0)
Tool0.GripPos = Vector3.new(0, 0, -1.5)
Tool0.GripRight = Vector3.new(0, 1, 0)
Tool0.GripUp = Vector3.new(0, 0, 1)
Part1.Name = "Handle"
Part1.Parent = Tool0
Part1.CFrame = CFrame.new(54.6266136, 3.37695026, -152.578461, 0.0910440385, -0.881099463, 0.464084357, 0.537011683, 0.435894847, 0.722229123, -0.838648558, 0.183463722, 0.512845576)
Part1.Orientation = Vector3.new(-46.23899841308594, 42.143001556396484, 50.933998107910156)
Part1.Position = Vector3.new(54.62661361694336, 3.376950263977051, -152.57846069335938)
Part1.Rotation = Vector3.new(-54.62200164794922, 27.650999069213867, 84.10099792480469)
Part1.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part1.Size = Vector3.new(1, 0.800000011920929, 4)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.BrickColor = BrickColor.new("Dark stone grey")
Part1.Locked = true
Part1.Reflectance = 0.4000000059604645
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.brickColor = BrickColor.new("Dark stone grey")
Part1.FormFactor = Enum.FormFactor.Plate
Part1.formFactor = Enum.FormFactor.Plate
SpecialMesh2.Parent = Part1
SpecialMesh2.MeshId = "rbxasset://fonts/sword.mesh"
SpecialMesh2.TextureId = "rbxasset://textures/SwordTexture.png"
SpecialMesh2.MeshType = Enum.MeshType.FileMesh
Sound3.Name = "SwordSlash"
Sound3.Parent = Part1
Sound3.SoundId = "http://www.roblox.com/asset/?id=12222216"
Sound3.Volume = 0.699999988079071
Sound4.Name = "SwordLunge"
Sound4.Parent = Part1
Sound4.SoundId = "http://www.roblox.com/asset/?id=12222208"
Sound4.Volume = 0.6000000238418579
Sound5.Name = "Unsheath"
Sound5.Parent = Part1
Sound5.SoundId = "http://www.roblox.com/asset/?id=12222225"
Sound5.Volume = 1
Script6.Name = "SwordScript"
Script6.Parent = Tool0
table.insert(cors,sandbox(Script6,function()
--Rescripted by Luckymaxer
--EUROCOW WAS HERE BECAUSE I MADE THE PARTICLES AND THEREFORE THIS ENTIRE SWORD PRETTY AND LOOK PRETTY WORDS AND I'D LIKE TO DEDICATE THIS TO MY FRIENDS AND HI LUCKYMAXER PLS FIX SFOTH SWORDS TY LOVE Y'ALl
--Updated for R15 avatars by StarWars
--Re-updated by TakeoHonorable

Tool = script.Parent
Handle = Tool:WaitForChild("Handle")

function Create(ty)
	return function(data)
		local obj = Instance.new(ty)
		for k, v in pairs(data) do
			if type(k) == 'number' then
				v.Parent = obj
			else
				obj[k] = v
			end
		end
		return obj
	end
end

local BaseUrl = "rbxassetid://"

Players = game:GetService("Players")
Debris = game:GetService("Debris")
RunService = game:GetService("RunService")

DamageValues = {
	BaseDamage = 5,
	SlashDamage = 10,
	LungeDamage = 30
}

--For R15 avatars
Animations = {
	R15Slash = 522635514,
	R15Lunge = 522638767
}

Damage = DamageValues.BaseDamage

Grips = {
	Up = CFrame.new(0, 0, -1.70000005, 0, 0, 1, 1, 0, 0, 0, 1, 0),
	Out = CFrame.new(0, 0, -1.70000005, 0, 1, 0, 1, -0, 0, 0, 0, -1)
}

Sounds = {
	Slash = Handle:WaitForChild("SwordSlash"),
	Lunge = Handle:WaitForChild("SwordLunge"),
	Unsheath = Handle:WaitForChild("Unsheath")
}

ToolEquipped = false

--For Omega Rainbow Katana thumbnail to display a lot of particles.
for i, v in pairs(Handle:GetChildren()) do
	if v:IsA("ParticleEmitter") then
		v.Rate = 20
	end
end

Tool.Grip = Grips.Up
Tool.Enabled = true

function IsTeamMate(Player1, Player2)
	return (Player1 and Player2 and not Player1.Neutral and not Player2.Neutral and Player1.TeamColor == Player2.TeamColor)
end

function TagHumanoid(humanoid, player)
	local Creator_Tag = Instance.new("ObjectValue")
	Creator_Tag.Name = "creator"
	Creator_Tag.Value = player
	Debris:AddItem(Creator_Tag, 2)
	Creator_Tag.Parent = humanoid
end

function UntagHumanoid(humanoid)
	for i, v in pairs(humanoid:GetChildren()) do
		if v:IsA("ObjectValue") and v.Name == "creator" then
			v:Destroy()
		end
	end
end

function Blow(Hit)
	if not Hit or not Hit.Parent or not CheckIfAlive() or not ToolEquipped then
		return
	end
	local RightArm = Character:FindFirstChild("Right Arm") or Character:FindFirstChild("RightHand")
	if not RightArm then
		return
	end
	local RightGrip = RightArm:FindFirstChild("RightGrip")
	if not RightGrip or (RightGrip.Part0 ~= Handle and RightGrip.Part1 ~= Handle) then
		return
	end
	local character = Hit.Parent
	if character == Character then
		return
	end
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid or humanoid.Health == 0 then
					ragdoll(game:GetService("Players"):GetPlayerFromCharacter(humanoid.Parent))
		return
	end
	local player = Players:GetPlayerFromCharacter(character)
	if player and (player == Player or IsTeamMate(Player, player)) then
		return
	end
	UntagHumanoid(humanoid)
	TagHumanoid(humanoid, Player)
humanoid.BreakJointsOnDeath = false
	humanoid:TakeDamage(Damage)
				
				if humanoid.Health == 0 then
					ragdoll(game:GetService("Players"):GetPlayerFromCharacter(humanoid.Parent))
				end
end


function Attack()
	Damage = DamageValues.SlashDamage
	Sounds.Slash:Play()

	if Humanoid then
		if Humanoid.RigType == Enum.HumanoidRigType.R6 then
			local Anim = Instance.new("StringValue")
			Anim.Name = "toolanim"
			Anim.Value = "Slash"
			Anim.Parent = Tool
		elseif Humanoid.RigType == Enum.HumanoidRigType.R15 then
			local Anim = Tool:FindFirstChild("R15Slash")
			if Anim then
				local Track = Humanoid:LoadAnimation(Anim)
				Track:Play(0)
			end
		end
	end	
end

function Lunge()
	Damage = DamageValues.LungeDamage

	Sounds.Lunge:Play()
	
	if Humanoid then
		if Humanoid.RigType == Enum.HumanoidRigType.R6 then
			local Anim = Instance.new("StringValue")
			Anim.Name = "toolanim"
			Anim.Value = "Lunge"
			Anim.Parent = Tool
		elseif Humanoid.RigType == Enum.HumanoidRigType.R15 then
			local Anim = Tool:FindFirstChild("R15Lunge")
			if Anim then
				local Track = Humanoid:LoadAnimation(Anim)
				Track:Play(0)
			end
		end
	end	
	--[[
	if CheckIfAlive() then
		local Force = Instance.new("BodyVelocity")
		Force.velocity = Vector3.new(0, 10, 0) 
		Force.maxForce = Vector3.new(0, 4000, 0)
		Debris:AddItem(Force, 0.4)
		Force.Parent = Torso
	end
	]]
	
	wait(0.2)
	Tool.Grip = Grips.Out
	wait(0.6)
	Tool.Grip = Grips.Up

	Damage = DamageValues.SlashDamage
end

Tool.Enabled = true
LastAttack = 0

function Activated()
	if not Tool.Enabled or not ToolEquipped or not CheckIfAlive() then
		return
	end
	Tool.Enabled = false
	local Tick = RunService.Stepped:wait()
	if (Tick - LastAttack < 0.2) then
		Lunge()
	else
		Attack()
	end
	LastAttack = Tick
	--wait(0.5)
	Damage = DamageValues.BaseDamage
	local SlashAnim = (Tool:FindFirstChild("R15Slash") or Create("Animation"){
		Name = "R15Slash",
		AnimationId = BaseUrl .. Animations.R15Slash,
		Parent = Tool
	})
	
	local LungeAnim = (Tool:FindFirstChild("R15Lunge") or Create("Animation"){
		Name = "R15Lunge",
		AnimationId = BaseUrl .. Animations.R15Lunge,
		Parent = Tool
	})
	Tool.Enabled = true
end

function CheckIfAlive()
	return (((Player and Player.Parent and Character and Character.Parent and Humanoid and Humanoid.Parent and Humanoid.Health > 0 and Torso and Torso.Parent) and true) or false)
end

function Equipped()
	Character = Tool.Parent
	Player = Players:GetPlayerFromCharacter(Character)
	Humanoid = Character:FindFirstChildOfClass("Humanoid")
	Torso = Character:FindFirstChild("Torso") or Character:FindFirstChild("HumanoidRootPart")
	if not CheckIfAlive() then
		return
	end
	ToolEquipped = true
	Sounds.Unsheath:Play()
end

function Unequipped()
	Tool.Grip = Grips.Up
	ToolEquipped = false
end

Tool.Activated:Connect(Activated)
Tool.Equipped:Connect(Equipped)
Tool.Unequipped:Connect(Unequipped)

Connection = Handle.Touched:Connect(Blow)
end))
LocalScript7.Name = "MouseIcon"
LocalScript7.Parent = Tool0
table.insert(cors,sandbox(LocalScript7,function()
--Made by Luckymaxer

Mouse_Icon = "rbxasset://textures/GunCursor.png"
Reloading_Icon = "rbxasset://textures/GunWaitCursor.png"

Tool = script.Parent

Mouse = nil

function UpdateIcon()
	if Mouse then
		Mouse.Icon = Tool.Enabled and Mouse_Icon or Reloading_Icon
	end
end

function OnEquipped(ToolMouse)
	Mouse = ToolMouse
	UpdateIcon()
end

function OnChanged(Property)
	if Property == "Enabled" then
		UpdateIcon()
	end
end

Tool.Equipped:Connect(OnEquipped)
Tool.Changed:Connect(OnChanged)

end))
Camera8.Name = "ThumbnailCamera"
Camera8.Parent = Tool0
Camera8.CFrame = CFrame.new(-5.67428207, 2.83736515, 3.79184556, 0.289030313, 0.416664183, -0.861888885, -0, 0.900314331, 0.435240269, 0.957319915, -0.125797629, 0.260218143)
Camera8.CoordinateFrame = CFrame.new(-5.67428207, 2.83736515, 3.79184556, 0.289030313, 0.416664183, -0.861888885, -0, 0.900314331, 0.435240269, 0.957319915, -0.125797629, 0.260218143)
Camera8.Focus = CFrame.new(-3.9505043, 1.96688461, 3.27140927, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Camera8.focus = CFrame.new(-3.9505043, 1.96688461, 3.27140927, 1, 0, 0, 0, 1, 0, 0, 0, 1)
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
