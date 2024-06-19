
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
ModuleScript1 = Instance.new("ModuleScript")
Script2 = Instance.new("Script")
RemoteEvent3 = Instance.new("RemoteEvent")
RemoteEvent4 = Instance.new("RemoteEvent")
Script5 = Instance.new("Script")
NumberValue6 = Instance.new("NumberValue")
ObjectValue7 = Instance.new("ObjectValue")
Script8 = Instance.new("Script")
RemoteEvent9 = Instance.new("RemoteEvent")
Script10 = Instance.new("Script")
LocalScript11 = Instance.new("LocalScript")
BindableEvent12 = Instance.new("BindableEvent")
LocalScript13 = Instance.new("LocalScript")
Model14 = Instance.new("Model")
RemoteEvent15 = Instance.new("RemoteEvent")
RemoteEvent16 = Instance.new("RemoteEvent")
Script17 = Instance.new("Script")
Script18 = Instance.new("Script")
Script19 = Instance.new("Script")
LocalScript20 = Instance.new("LocalScript")
LocalScript21 = Instance.new("LocalScript")
ScreenGui22 = Instance.new("ScreenGui")
Frame23 = Instance.new("Frame")
Frame24 = Instance.new("Frame")
TextLabel25 = Instance.new("TextLabel")
Frame26 = Instance.new("Frame")
TextLabel27 = Instance.new("TextLabel")
TextLabel28 = Instance.new("TextLabel")
Frame29 = Instance.new("Frame")
TextLabel30 = Instance.new("TextLabel")
Frame31 = Instance.new("Frame")
TextLabel32 = Instance.new("TextLabel")
TextLabel33 = Instance.new("TextLabel")
TextLabel34 = Instance.new("TextLabel")
Frame35 = Instance.new("Frame")
Frame36 = Instance.new("Frame")
TextLabel37 = Instance.new("TextLabel")
ImageLabel38 = Instance.new("ImageLabel")
Frame39 = Instance.new("Frame")
Frame40 = Instance.new("Frame")
Frame41 = Instance.new("Frame")
ParticleEmitter42 = Instance.new("ParticleEmitter")
ParticleEmitter43 = Instance.new("ParticleEmitter")
Script44 = Instance.new("Script")
MeshPart45 = Instance.new("MeshPart")
MeshPart46 = Instance.new("MeshPart")
UnionOperation47 = Instance.new("UnionOperation")
BillboardGui48 = Instance.new("BillboardGui")
Script49 = Instance.new("Script")
PointLight50 = Instance.new("PointLight")
MeshPart51 = Instance.new("MeshPart")
Part52 = Instance.new("Part")
Sound53 = Instance.new("Sound")
Sound54 = Instance.new("Sound")
Sound55 = Instance.new("Sound")
Sound56 = Instance.new("Sound")
Sound57 = Instance.new("Sound")
Sound58 = Instance.new("Sound")
Sound59 = Instance.new("Sound")
Sound60 = Instance.new("Sound")
Sound61 = Instance.new("Sound")
Part62 = Instance.new("Part")
SpecialMesh63 = Instance.new("SpecialMesh")
Part64 = Instance.new("Part")
SpecialMesh65 = Instance.new("SpecialMesh")
Script66 = Instance.new("Script")
Script67 = Instance.new("Script")
Tool0.Name = "tommy gun"
Tool0.Parent = mas
Tool0.TextureId = "http://www.roblox.com/asset/?id=116747513"
Tool0.CanBeDropped = false
Tool0.Grip = CFrame.new(-0.189049453, -0.164531708, -0.0645178556, -0.93081367, 0, -0.365494102, 0, 1, 0, 0.365494102, 0, -0.93081367)
Tool0.GripForward = Vector3.new(0.36549410223960876, -0, 0.9308136701583862)
Tool0.GripPos = Vector3.new(-0.18904945254325867, -0.16453170776367188, -0.06451785564422607)
Tool0.GripRight = Vector3.new(-0.9308136701583862, 0, 0.36549410223960876)
Tool0.ToolTip = "tommy gun"
ModuleScript1.Name = "Setting"
ModuleScript1.Parent = Tool0
table.insert(cors,sandbox(ModuleScript1,function()
--[[ Version v1.0.7
====================================================================================================
Weapons and Tools Pack 2016's Gun by SuperEvilAzmil

Features:
- FilteringEnabled support
- Easy to edit with a bunch of settings
- No delays between Mouse Click and Gun Fire
====================================================================================================
]]

local Module = {
--	====================
--	BASIC
--	A basic settings for the gun
--	====================

		Auto = false;
		MuzzleOffset = Vector3.new(0, 0.625, 1.25);
		BaseDamage = 26;
		FireRate = 0.10 ; --In second
		ReloadTime = 2; --In second
		AmmoPerClip = 30; --Put "math.huge" to make this gun has infinite ammo and never reload
		Spread = 1.25; --In degree
		HeadshotEnabled = true; --Enable the gun to do extra damage on headshot
		HeadshotDamageMultiplier = 4;
		MouseIconID = "316279304";
		HitSoundIDs = {186809061,186809249,186809250,186809252};
		IdleAnimationID = 94242777; --Set to "nil" if you don't want to animate
		IdleAnimationSpeed = 1;
		FireAnimationID = 94332152; --Set to "nil" if you don't want to animate
		FireAnimationSpeed = 6;
		ReloadAnimationID = 95384819; 
		ReloadAnimationSpeed = 3;
		
--	====================
--	LIMITED CLIP
--	Make a gun has a limit clip
--	====================

		LimitedClipEnabled = false;
		Clips = 10;
		MaxClip = 10; --Put "math.huge" to allow user to carry unlimited clip
		
--	====================
--	SHOTGUN
--	Enable the gun to fire multiple bullet in one shot
--	====================

		ShotgunEnabled = false;
		BulletPerShot = 8;
		
		ShotgunReload = false; --Make user reloading like Shotgun, which user clipin shell one by one
		ShotgunClipinAnimationID = nil; --Set to "nil" if you don't want to animate
		ShotgunClipinAnimationSpeed = 1;
		ShellClipinSpeed = 0.5; --In second
		
--		How "ShotgunEnabled" work [Example]:

--		Play "ShotgunClipinAnimation" + Play "ShotgunClipin" Audio
--		>>>
--		Wait "ShellClipinSpeed" second
--		>>>
--		Repeat "AmmoPerClip" - "Current Ammo" times
--		>>>
--		Play "ReloadAnimation" + Play "ReloadSound"
--		Wait "ReloadTime"
		
--	====================
--	BURST FIRE
--	Enable the gun to do burst firing like Assault Rifle
--	====================

		BurstFireEnabled = true;
		BulletPerBurst = 3;
		BurstRate = 0.075; --In second
		
--	====================
--	SNIPER
--	Enable user to use scope
--	====================

		SniperEnabled = false;
		FieldOfView = 12.5;
		MouseSensitive = 0.05; --In percent
		SpreadRedution = 1; --In percent.
		
--	====================
--	CAMERA SHAKING
--	Make user's camera shaking when shooting
--	====================

		CameraShakingEnabled = true;
		Intensity = 0.5; --In degree
		
--	====================
--	EXPLOSIVE
--	Make a bullet explosive so user can deal a damage to multiple enemy in single shot. NOTE: Explosion won't break joints
--	====================

		ExplosiveEnabled = false;
		Radius = 8;
		
--	====================
--	BULLET VISUALIZER
--	Enabled the gun to display a fake travelling bullet
--	====================

		VisualizerEnabled = true;
		BulletSpeed = 25;
		BulletSize = Vector3.new(0.25,0.25,100);
		BulletColor = BrickColor.new("Bright yellow");
		BulletTransparency = 0.25;
		BulletMaterial = Enum.Material.SmoothPlastic;
		FadeTime = 0.25; --Only work when bullet travel instantly. For this, you have to set BulletSpeed to "math.huge"
		
--	====================
--	CHARGED SHOT
--	Make a gun charging before firing. Useful for a gun like "Railgun" or "Laser Cannon"
--	====================
		
		ChargedShotEnabled = false;
		ChargingTime = 1;
		
--	====================
--	MINIGUN
--	Make a gun delay before/after firing
--	====================

		MinigunEnabled = false;
		DelayBeforeFiring = 1;
		DelayAfterFiring = 1;
		
--	====================
--	MISCELLANEOUS
--	Etc. settings for the gun
--	====================

		Knockback = 0; --Setting above 0 will enabling the gun to push enemy back. NOTE: If "ExplosiveEnabled" is enabled, this setting is not work
		Lifesteal = 0; --In percent - Setting above 0 will allow user to steal enemy's health by dealing a damage to them.
		FlamingBullet = false; --Enable the bullet to set enemy on fire. Its DPS and Duration can be edited inside "IgniteScript"
		DualEnabled = false; --Enable the user to hold two guns instead one. In order to make this setting work, you must clone its Handle and name it to "Handle2". Enabling this setting will override Idle Animation ID.
		Piercing = 0; --Setting above 0 will enabling the gun to penetrate up to XX victim(s). Cannot penetrate wall. NOTE: It doesn't work with "ExplosiveEnabled"
		
--	====================
--	END OF SETTING
--	====================
}

return Module

end))
Script2.Name = "GunScript_Server"
Script2.Parent = Tool0
table.insert(cors,sandbox(Script2,function()
local Tool = script.Parent
local Handle = Tool:WaitForChild("Handle")
local Player
local Character
local Humanoid
--local TEAM
local VisualizeBullet = script.Parent:WaitForChild("VisualizeBullet")
local Module = require(Tool:WaitForChild("Setting"))
local ChangeAmmoAndClip = script:WaitForChild("ChangeAmmoAndClip")
local InflictTarget = script:WaitForChild("InflictTarget")
local Grip2
local Handle2

if Module.DualEnabled then
	Handle2 = Tool:WaitForChild("Handle2",1)
	if Handle2 == nil and Module.DualEnabled then error("\"Dual\" setting is enabled but \"Handle2\" is missing!") end
end

local AmmoValue = script:FindFirstChild("Ammo") or Instance.new("NumberValue",script)
AmmoValue.Name = "Ammo"
AmmoValue.Value = Module.AmmoPerClip
local ClipsValue = script:FindFirstChild("Clips") or Instance.new("NumberValue",script)
ClipsValue.Name = "Clips"
ClipsValue.Value = Module.LimitedClipEnabled and Module.Clips or 0

if Module.IdleAnimationID ~= nil or Module.DualEnabled then
	local IdleAnim = Instance.new("Animation",Tool)
	IdleAnim.Name = "IdleAnim"
	IdleAnim.AnimationId = "rbxassetid://"..(Module.DualEnabled and 53610688 or Module.IdleAnimationID)
end
if Module.FireAnimationID ~= nil then
	local FireAnim = Instance.new("Animation",Tool)
	FireAnim.Name = "FireAnim"
	FireAnim.AnimationId = "rbxassetid://"..Module.FireAnimationID
end
if Module.ReloadAnimationID ~= nil then
	local ReloadAnim = Instance.new("Animation",Tool)
	ReloadAnim.Name = "ReloadAnim"
	ReloadAnim.AnimationId = "rbxassetid://"..Module.ReloadAnimationID
end
if Module.ShotgunClipinAnimationID ~= nil then
	local ShotgunClipinAnim = Instance.new("Animation",Tool)
	ShotgunClipinAnim.Name = "ShotgunClipinAnim"
	ShotgunClipinAnim.AnimationId = "rbxassetid://"..Module.ShotgunClipinAnimationID
end

ChangeAmmoAndClip.OnServerEvent:connect(function(Player,Ammo,Clips)
	AmmoValue.Value = Ammo
	ClipsValue.Value = Clips
end)
InflictTarget.OnServerEvent:connect(function(Player,TargetHumanoid,TargetTorso,Damage,Direction,Knockback,Lifesteal,FlamingBullet)
	if Player and TargetHumanoid and TargetHumanoid.Health ~= 0 and TargetTorso then
		while TargetHumanoid:FindFirstChild("creator") do
			TargetHumanoid.creator:Destroy()
		end
		local creator = Instance.new("ObjectValue",TargetHumanoid)
		creator.Name = "creator"
		creator.Value = Player
		game.Debris:AddItem(creator,5)
		TargetHumanoid:TakeDamage(Damage)
		if Knockback > 0 then
			TargetTorso.Velocity = Direction * Knockback
		end
		if Lifesteal > 0 and Humanoid and Humanoid.Health ~= 0 then
			Humanoid.Health = Humanoid.Health + (Damage*Lifesteal)
		end
		if FlamingBullet then
			local Debuff = TargetHumanoid.Parent:FindFirstChild("IgniteScript") or script.IgniteScript:Clone()
			Debuff.creator.Value = Player
			Debuff.Disabled = false
			Debuff.Parent = TargetHumanoid.Parent
		end
	end
end)

Tool.Equipped:connect(function()
	Player = game.Players:GetPlayerFromCharacter(Tool.Parent)
	Character = Tool.Parent
	Humanoid = Character:FindFirstChild("Humanoid")
	--TEAM = Character:FindFirstChild("TEAM")
	if Module.DualEnabled and Workspace.FilteringEnabled then
		Handle2.CanCollide = false
		local LeftArm = Tool.Parent:FindFirstChild("Left Arm")
		local RightArm = Tool.Parent:FindFirstChild("Right Arm")
		if RightArm then
			local Grip = RightArm:WaitForChild("RightGrip",0.01)
			if Grip then
				Grip2 = Grip:Clone()
				Grip2.Name = "LeftGrip"
				Grip2.Part0 = LeftArm
				Grip2.Part1 = Handle2
				--Grip2.C1 = Grip2.C1:inverse()
				Grip2.Parent = LeftArm
			end
		end
	end
end)

Tool.Unequipped:connect(function()
	if Module.DualEnabled and Workspace.FilteringEnabled then
		Handle2.CanCollide = true
		if Grip2 then Grip2:Destroy() end
	end
end)
end))
RemoteEvent3.Name = "InflictTarget"
RemoteEvent3.Parent = Script2
RemoteEvent4.Name = "ChangeAmmoAndClip"
RemoteEvent4.Parent = Script2
Script5.Name = "IgniteScript"
Script5.Parent = Script2
Script5.Enabled = false
table.insert(cors,sandbox(Script5,function()
local Humanoid = script.Parent:FindFirstChild("Humanoid")
local Torso = script.Parent:FindFirstChild("Torso")
local Fires = {}
local FireDamagePerSecond = 5

function wait(TimeToWait)
	if TimeToWait ~= nil then
		local TotalTime = 0
		TotalTime = TotalTime + game:GetService("RunService").Heartbeat:wait()
		while TotalTime < TimeToWait do
			TotalTime = TotalTime + game:GetService("RunService").Heartbeat:wait()
		end
	else
		game:GetService("RunService").Heartbeat:wait()
	end
end

if Humanoid and Torso then
	BurnSound = Instance.new("Sound")
	BurnSound.Name = "BurnSound"
	BurnSound.SoundId = "http://www.roblox.com/asset/?id=32791565"
	BurnSound.Parent = Torso
	BurnSound.Volume = 1
	game.Debris:AddItem(BurnSound,10)
	Delay(0,function()
		BurnSound:Play()
	end)
	for _,parts in pairs(script.Parent:GetChildren()) do
		if parts.className == "Part" or parts.className == "WedgePart" or parts.className == "CornerWedgePart" then
			local firer = Instance.new("Fire")
			table.insert(Fires,firer)
			firer.Size = 5 + (parts.Size.magnitude*1.5)
			firer.Parent = parts
		end
	end
	while script.Duration.Value > 0 do
		wait(0.1)
		script.Duration.Value = script.Duration.Value - 0.1
		while Humanoid:FindFirstChild("creator") do
			Humanoid.creator:Destroy()
		end
		local Tag = script.creator:clone()
		Tag.Parent = Humanoid
		game.Debris:AddItem(Tag,5)
		Humanoid:TakeDamage(FireDamagePerSecond*0.1)
	end
	for _, Fire in pairs(Fires) do
		Fire.Enabled = false
	end
	wait(5)
	for _, Fire in pairs(Fires) do
		Fire:Destroy()
	end
end
wait()
script:remove()

end))
Script5.Disabled = true
NumberValue6.Name = "Duration"
NumberValue6.Parent = Script5
NumberValue6.Value = 10
ObjectValue7.Name = "creator"
ObjectValue7.Parent = Script5
Script8.Name = "CHANGE LOG"
Script8.Parent = Tool0
Script8.Enabled = false
table.insert(cors,sandbox(Script8,function()
--[[
	
v1.0.7
==================================================
-Fixed a bug which gun shooting automatically even "Auto" setting is disabled
==================================================
	
v1.0.6
==================================================
-Fixed a glitch which player can shooting even after died
-Added "ChargedShot" setting
-Added "Minigun" setting
-Added "Piercing" setting
-Added "FadeTime" setting
-Updated "BulletVisualizerScript". Replace an older one now!
==================================================
	
v1.0.5
==================================================
-Fixed a gun that shoot slower even you set "FireRate" to lower
-Added "ShotgunReload" setting
==================================================
	
v1.0.4
==================================================
-Fixed VisualizeBulletScript and BulletVisualizerScript. Previously, it's a bug that doesn't show bullet for other player.
-Fixed a bug which scope still in use even unequipped
==================================================
	
v1.0.3
==================================================
-Fixed a bug that you can reload a gun even unequip
-Ray start position is now at Player's Head instead Gun Muzzle
-Added "DualEnabled" setting
-Added Ammo Box for the gun
-User can no longer use Scope while reloading
==================================================
	
v1.0.2
==================================================
-Fixed Bullet Visualizer that doesn't display fake bullet to other player
-Fixed fake bullet still displayed even "VisualizerEnabled" is disabled
==================================================
	
v1.0.1
==================================================
-Fixed reload
-Ammo GUI will not show if AmmoPerClip is "math.huge"
-Added Animation setting
==================================================
	
v1.0
==================================================
-First release
==================================================
	
--]]
end))
Script8.Disabled = true
RemoteEvent9.Name = "VisualizeBullet"
RemoteEvent9.Parent = Tool0
Script10.Name = "VisualizeBulletScript"
Script10.Parent = Tool0
table.insert(cors,sandbox(Script10,function()
local RE = script.Parent.VisualizeBullet
RE.OnServerEvent:connect(function(Player,Handle,MuzzleOffset,EndPos,MuzzleEffect,HitEffect,HitSound,ExplosiveData,BulletData,VisualizeExplosion,VisualizeEnabled)
	for _, TruePlayer in pairs(game.Players:GetPlayers()) do
		RE:FireClient(TruePlayer,Player,Handle,MuzzleOffset,EndPos,MuzzleEffect,HitEffect,HitSound,ExplosiveData,BulletData,VisualizeExplosion,VisualizeEnabled)
	end
end)
end))
LocalScript11.Name = "BulletVisualizerScript"
LocalScript11.Parent = Tool0
table.insert(cors,sandbox(LocalScript11,function()
local BE = script:WaitForChild("Visualize")
local RE = script.Parent:WaitForChild("VisualizeBullet")

function VisualizeBullet(Player,Handle,MuzzleOffset,EndPos,MuzzleEffect,HitEffect,HitSound,ExplosiveData,BulletData,VisualizeExplosion,VisualizeEnabled)
	if Player ~= game.Players.LocalPlayer then
		if Handle then
			local MuzzlePos = (Handle.CFrame * CFrame.new(MuzzleOffset.X,MuzzleOffset.Y,MuzzleOffset.Z)).p
			local Distance = (MuzzlePos-EndPos).magnitude/2
		
			local Muzzle = Instance.new("Part")
			Muzzle.Name = "Bullet"
			Muzzle.Size = Vector3.new(0.01,0.01,0.01)
			Muzzle.Transparency = 1
			Muzzle.Anchored = false
			Muzzle.CanCollide = false
			Muzzle.TopSurface = Enum.SurfaceType.SmoothNoOutlines
			Muzzle.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
			local Particle = MuzzleEffect:Clone()
			Particle.Parent = Muzzle
			local Weld = Instance.new("Weld",Muzzle)
			Weld.Part0 = Handle
			Weld.Part1 = Muzzle
			Weld.C0 = CFrame.new(MuzzleOffset.X,MuzzleOffset.Y,MuzzleOffset.Z)
			Muzzle.Position = MuzzlePos
			Muzzle.Parent = Workspace.CurrentCamera
			Spawn(function() Particle:Emit(5) end)
			game.Debris:AddItem(Muzzle,10)	
		
			local HitPart = Instance.new("Part")
			HitPart.Name = "Bullet"
			HitPart.Size = Vector3.new(0.01,0.01,0.01)
			HitPart.Transparency = 1
			HitPart.Anchored = true
			HitPart.CanCollide = false
			HitPart.TopSurface = Enum.SurfaceType.SmoothNoOutlines
			HitPart.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
			local Particle = HitEffect:Clone()
			Particle.Parent = HitPart
			local Sound = Instance.new("Sound",HitPart)
			Sound.SoundId = "rbxassetid://"..HitSound
			Sound.Volume = 1
			HitPart.Position = EndPos
			HitPart.Parent = Workspace.CurrentCamera
			Spawn(function() Particle:Emit(2) Sound:Play() end)
			game.Debris:AddItem(HitPart,10)	
			
			if ExplosiveData[1] and VisualizeExplosion then
				local Explosion = Instance.new("Explosion")
				Explosion.BlastRadius = ExplosiveData[2]
				Explosion.BlastPressure = 0
				Explosion.Position = EndPos
				Explosion.Parent = Workspace.CurrentCamera
			end
			if VisualizeEnabled then
				local Bullet = Instance.new("Part")
				Bullet.Name = "Bullet"
				Bullet.Size = Vector3.new(0.2,0.2,0.2)
				Bullet.BrickColor = BulletData[3]
				Bullet.Transparency = BulletData[4]
				Bullet.Material = BulletData[5]
				Bullet.Anchored = true
				Bullet.CanCollide = false
				Bullet.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				Bullet.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				local Mesh = Instance.new("SpecialMesh",Bullet)
				Mesh.MeshType = Enum.MeshType.Brick
				Mesh.Scale = BulletData[2] * 5
				Mesh.Offset =  Vector3.new(0,0,-Mesh.Scale.Z/10)
				Bullet.CFrame = CFrame.new(MuzzlePos,EndPos)
				Bullet.Parent = Workspace.CurrentCamera
				game.Debris:AddItem(Bullet,10)
				if BulletData[1] ~= math.huge then
					for i = 0,Distance,BulletData[1] do
						if i ~= 0 then Bullet.CFrame = Bullet.CFrame * CFrame.new(0,0,-BulletData[1]) end
						if (Bullet.Position - EndPos).magnitude < BulletData[2].Z then
							Mesh.Scale = Vector3.new(BulletData[2].X,BulletData[2].Y,(Bullet.Position - EndPos).magnitude) * 5
							Mesh.Offset =  Vector3.new(0,0,-Mesh.Scale.Z/10)
						end
						game:GetService("RunService").Stepped:wait()
					end
				else
					Mesh.Scale = Vector3.new(BulletData[2].X,BulletData[2].Y,(Bullet.Position - EndPos).magnitude) * 5
					Mesh.Offset =  Vector3.new(0,0,-Mesh.Scale.Z/10)
					local Time = game:GetService("RunService").Heartbeat:wait()
					while Bullet.Transparency < 1 do
						Bullet.Transparency = Bullet.Transparency + (Time/BulletData[6])
						Time = game:GetService("RunService").Heartbeat:wait()
					end
				end
				if Bullet then Bullet:Destroy() end
			end
		end
	end
end

BE.Event:connect(VisualizeBullet)
RE.OnClientEvent:connect(VisualizeBullet)
--BE.Event:connect(function() print("Bindable Firing") end)
--RE.OnClientEvent:connect(function() print("Remote Firing") end)
end))
BindableEvent12.Name = "Visualize"
BindableEvent12.Parent = LocalScript11
LocalScript13.Name = "nothing"
LocalScript13.Parent = Tool0
table.insert(cors,sandbox(LocalScript13,function()
--None of this is mine...
script.Parent.Equipped:Connect(function()
	script.Parent.WAP.act:FireServer()
end)

script.Parent.Unequipped:Connect(function()
	script.Parent.WAP.dct:FireServer()
end)


end))
Model14.Parent = Tool0
RemoteEvent15.Name = "casing"
RemoteEvent15.Parent = Model14
RemoteEvent16.Name = "reload"
RemoteEvent16.Parent = Model14
Script17.Name = "daoler"
Script17.Parent = Model14
table.insert(cors,sandbox(Script17,function()
script.Parent.reload.OnServerEvent:Connect(function()
script.Parent.Parent.Handle.load:Play()
local Mag = script.Parent.Parent.Mag
local maglone = Mag:Clone()
Mag.Transparency = 1
maglone.Parent = workspace
maglone:BreakJoints()
maglone.Position = Mag.Position
wait(0.8)
Mag.Transparency = 0
wait(5)
maglone:Destroy()
	end)
end))
Script18.Name = "gnisac"
Script18.Parent = Model14
table.insert(cors,sandbox(Script18,function()
script.Parent.casing.OnServerEvent:Connect(function()
	script.Parent.Parent.Handle.shoot:Play()
	script.Parent.Parent.Bolt.Transparency = 1
	script.Parent.Parent.BoltBack.Transparency = 0
	local casing = script.Parent.Parent.shell:Clone()
	script.Parent.Parent.Flash.Light.Enabled =true
	script.Parent.Parent.Flash.lite.Enabled =true
	casing.Parent = workspace
	casing.Transparency = 0
	casing:BreakJoints()
	casing.Position = script.Parent.Parent.shell.Position
	wait(0.08)
	script.Parent.Parent.Flash.Light.Enabled =false
	script.Parent.Parent.Flash.lite.Enabled =false
	script.Parent.Parent.Bolt.Transparency = 0
	script.Parent.Parent.BoltBack.Transparency = 1
	wait(2)
	casing:Destroy()
	end)
end))
Script19.Name = "qPerfectionWeld"
Script19.Parent = Tool0
table.insert(cors,sandbox(Script19,function()
-- Created by Quenty (@Quenty, follow me on twitter).
-- Should work with only ONE copy, seamlessly with weapons, trains, et cetera.
-- Parts should be ANCHORED before use. It will, however, store relatives values and so when tools are reparented, it'll fix them.

--[[ INSTRUCTIONS
- Place in the model
- Make sure model is anchored
- That's it. It will weld the model and all children. 

THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 

This script is designed to be used is a regular script. In a local script it will weld, but it will not attempt to handle ancestory changes. 
]]

--[[ DOCUMENTATION
- Will work in tools. If ran more than once it will not create more than one weld.  This is especially useful for tools that are dropped and then picked up again.
- Will work in PBS servers
- Will work as long as it starts out with the part anchored
- Stores the relative CFrame as a CFrame value
- Takes careful measure to reduce lag by not having a joint set off or affected by the parts offset from origin
- Utilizes a recursive algorith to find all parts in the model
- Will reweld on script reparent if the script is initially parented to a tool.
- Welds as fast as possible
]]

-- qPerfectionWeld.lua
-- Created 10/6/2014
-- Author: Quenty
-- Version 1.0.3

-- Updated 10/14/2014 - Updated to 1.0.1
--- Bug fix with existing ROBLOX welds ? Repro by asimo3089

-- Updated 10/14/2014 - Updated to 1.0.2
--- Fixed bug fix. 

-- Updated 10/14/2014 - Updated to 1.0.3
--- Now handles joints semi-acceptably. May be rather hacky with some joints. :/

local NEVER_BREAK_JOINTS = false -- If you set this to true it will never break joints (this can create some welding issues, but can save stuff like hinges).


local function CallOnChildren(Instance, FunctionToCall)
	-- Calls a function on each of the children of a certain object, using recursion.  

	FunctionToCall(Instance)

	for _, Child in next, Instance:GetChildren() do
		CallOnChildren(Child, FunctionToCall)
	end
end

local function GetNearestParent(Instance, ClassName)
	-- Returns the nearest parent of a certain class, or returns nil

	local Ancestor = Instance
	repeat
		Ancestor = Ancestor.Parent
		if Ancestor == nil then
			return nil
		end
	until Ancestor:IsA(ClassName)

	return Ancestor
end

local function GetBricks(StartInstance)
	local List = {}

	-- if StartInstance:IsA("BasePart") then
	-- 	List[#List+1] = StartInstance
	-- end

	CallOnChildren(StartInstance, function(Item)
		if Item:IsA("BasePart") then
			List[#List+1] = Item;
		end
	end)

	return List
end

local function Modify(Instance, Values)
	-- Modifies an Instance by using a table.  

	assert(type(Values) == "table", "Values is not a table");

	for Index, Value in next, Values do
		if type(Index) == "number" then
			Value.Parent = Instance
		else
			Instance[Index] = Value
		end
	end
	return Instance
end

local function Make(ClassType, Properties)
	-- Using a syntax hack to create a nice way to Make new items.  

	return Modify(Instance.new(ClassType), Properties)
end

local Surfaces = {"TopSurface", "BottomSurface", "LeftSurface", "RightSurface", "FrontSurface", "BackSurface"}
local HingSurfaces = {"Hinge", "Motor", "SteppingMotor"}

local function HasWheelJoint(Part)
	for _, SurfaceName in pairs(Surfaces) do
		for _, HingSurfaceName in pairs(HingSurfaces) do
			if Part[SurfaceName].Name == HingSurfaceName then
				return true
			end
		end
	end
	
	return false
end

local function ShouldBreakJoints(Part)
	--- We do not want to break joints of wheels/hinges. This takes the utmost care to not do this. There are
	--  definitely some edge cases. 

	if NEVER_BREAK_JOINTS then
		return false
	end
	
	if HasWheelJoint(Part) then
		return false
	end
	
	local Connected = Part:GetConnectedParts()
	
	if #Connected == 1 then
		return false
	end
	
	for _, Item in pairs(Connected) do
		if HasWheelJoint(Item) then
			return false
		elseif not Item:IsDescendantOf(script.Parent) then
			return false
		end
	end
	
	return true
end

local function WeldTogether(Part0, Part1, JointType, WeldParent)
	--- Weld's 2 parts together
	-- @param Part0 The first part
	-- @param Part1 The second part (Dependent part most of the time).
	-- @param [JointType] The type of joint. Defaults to weld.
	-- @param [WeldParent] Parent of the weld, Defaults to Part0 (so GC is better).
	-- @return The weld created.

	JointType = JointType or "Weld"
	local RelativeValue = Part1:FindFirstChild("qRelativeCFrameWeldValue")
	
	local NewWeld = Part1:FindFirstChild("qCFrameWeldThingy") or Instance.new(JointType)
	Modify(NewWeld, {
		Name = "qCFrameWeldThingy";
		Part0  = Part0;
		Part1  = Part1;
		C0     = CFrame.new();--Part0.CFrame:inverse();
		C1     = RelativeValue and RelativeValue.Value or Part1.CFrame:toObjectSpace(Part0.CFrame); --Part1.CFrame:inverse() * Part0.CFrame;-- Part1.CFrame:inverse();
		Parent = Part1;
	})

	if not RelativeValue then
		RelativeValue = Make("CFrameValue", {
			Parent     = Part1;
			Name       = "qRelativeCFrameWeldValue";
			Archivable = true;
			Value      = NewWeld.C1;
		})
	end

	return NewWeld
end

local function WeldParts(Parts, MainPart, JointType, DoNotUnanchor)
	-- @param Parts The Parts to weld. Should be anchored to prevent really horrible results.
	-- @param MainPart The part to weld the model to (can be in the model).
	-- @param [JointType] The type of joint. Defaults to weld. 
	-- @parm DoNotUnanchor Boolean, if true, will not unachor the model after cmopletion.
	
	for _, Part in pairs(Parts) do
		if ShouldBreakJoints(Part) then
			Part:BreakJoints()
		end
	end
	
	for _, Part in pairs(Parts) do
		if Part ~= MainPart then
			WeldTogether(MainPart, Part, JointType, MainPart)
		end
	end

	if not DoNotUnanchor then
		for _, Part in pairs(Parts) do
			Part.Anchored = false
		end
		MainPart.Anchored = false
	end
end

local function PerfectionWeld()	
	local Tool = GetNearestParent(script, "Tool")

	local Parts = GetBricks(script.Parent)
	local PrimaryPart = Tool and Tool:FindFirstChild("Handle") and Tool.Handle:IsA("BasePart") and Tool.Handle or script.Parent:IsA("Model") and script.Parent.PrimaryPart or Parts[1]

	if PrimaryPart then
		WeldParts(Parts, PrimaryPart, "Weld", false)
	else
		warn("qWeld - Unable to weld part")
	end
	
	return Tool
end

local Tool = PerfectionWeld()


if Tool and script.ClassName == "Script" then
	--- Don't bother with local scripts

	script.Parent.AncestryChanged:connect(function()
		PerfectionWeld()
	end)
end

-- Created by Quenty (@Quenty, follow me on twitter).

end))
LocalScript20.Name = "GunScript_Local"
LocalScript20.Parent = Tool0
table.insert(cors,sandbox(LocalScript20,function()
local Tool = script.Parent
local Handle = Tool:WaitForChild("Handle")
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local Camera = Workspace.CurrentCamera
local Character = Workspace:WaitForChild(Player.Name)
local Humanoid = Character:WaitForChild("Humanoid")
--local TEAM = Character:WaitForChild("TEAM")
local VisualizeBullet = script.Parent:WaitForChild("VisualizeBullet")
local Module = require(Tool:WaitForChild("Setting"))
local GunScript_Server = Tool:WaitForChild("GunScript_Server")
local ChangeAmmoAndClip = GunScript_Server:WaitForChild("ChangeAmmoAndClip")
local InflictTarget = GunScript_Server:WaitForChild("InflictTarget")
local AmmoValue = GunScript_Server:WaitForChild("Ammo")
local ClipsValue = GunScript_Server:WaitForChild("Clips")
local GUI = script:WaitForChild("GunGUI")
local IdleAnim
local FireAnim
local ReloadAnim
local ShotgunClipinAnim
local Grip2
local Handle2
local HandleToFire = Handle

if Module.DualEnabled then
	Handle2 = Tool:WaitForChild("Handle2",2)
	if Handle2 == nil and Module.DualEnabled then error("\"Dual\" setting is enabled but \"Handle2\" is missing!") end
end

local Equipped = false
local Enabled = true
local Down = false
local Reloading = false
local AimDown = false
local Ammo = AmmoValue.Value
local Clips = ClipsValue.Value
local MaxClip = Module.MaxClip
local PiercedHumanoid = {}

if Module.IdleAnimationID ~= nil or Module.DualEnabled then
	IdleAnim = Tool:WaitForChild("IdleAnim")
	IdleAnim = Humanoid:LoadAnimation(IdleAnim)
end
if Module.FireAnimationID ~= nil then
	FireAnim = Tool:WaitForChild("FireAnim")
	FireAnim = Humanoid:LoadAnimation(FireAnim)
end
if Module.ReloadAnimationID ~= nil then
	ReloadAnim = Tool:WaitForChild("ReloadAnim")
	ReloadAnim = Humanoid:LoadAnimation(ReloadAnim)
end
if Module.ShotgunClipinAnimationID ~= nil then
	ShotgunClipinAnim = Tool:WaitForChild("ShotgunClipinAnim")
	ShotgunClipinAnim = Humanoid:LoadAnimation(ShotgunClipinAnim)
end

function wait(TimeToWait)
	if TimeToWait ~= nil then
		local TotalTime = 0
		TotalTime = TotalTime + game:GetService("RunService").Heartbeat:wait()
		while TotalTime < TimeToWait do
			TotalTime = TotalTime + game:GetService("RunService").Heartbeat:wait()
		end
	else
		game:GetService("RunService").Heartbeat:wait()
	end
end

function RayCast(Start,Direction,Range,Ignore)
	local Hit,EndPos = game.Workspace:FindPartOnRay(Ray.new(Start,Direction*Range),Ignore)
	if Hit then
		if (Hit.Transparency > 0.75
			or Hit.Name == "Handle"
			or Hit.Name == "Effect"
			or Hit.Name == "Bullet"
			or Hit.Name == "Laser"
			or string.lower(Hit.Name) == "water"
			or Hit.Name == "Rail"
			or Hit.Name == "Arrow"
			or (Hit.Parent:FindFirstChild("Humanoid") and Hit.Parent.Humanoid.Health == 0)
			or (Hit.Parent:FindFirstChild("Humanoid") and Hit.Parent:FindFirstChild("TEAM") and TEAM and Hit.Parent.TEAM.Value == TEAM.Value))
			or (Hit.Parent:FindFirstChild("Humanoid") and PiercedHumanoid[Hit.Parent.Humanoid]) then
			Hit,EndPos = RayCast(EndPos+(Direction*.01),Direction,Range-((Start-EndPos).magnitude),Ignore)
		end
	end
	return Hit,EndPos
end

function ShakeCamera()
	if Module.CameraShakingEnabled then
		local Intensity = Module.Intensity/(AimDown and Module.MouseSensitive or 1)
		for i = 1, 10 do
			local cam_rot = Camera.CoordinateFrame - Camera.CoordinateFrame.p
			local cam_scroll = (Camera.CoordinateFrame.p - Camera.Focus.p).magnitude
			local ncf = CFrame.new(Camera.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ((-Intensity+(math.random()*(Intensity*2)))/100, (-Intensity+(math.random()*(Intensity*2)))/100, 0)
			Camera.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
			wait()
		end
	end
end

function Fire(ShootingHandle)
	local PierceAvailable = Module.Piercing
	PiercedHumanoid = {}
	if FireAnim then FireAnim:Play(nil,nil,Module.FireAnimationSpeed) end
	if not ShootingHandle.FireSound.Playing or not ShootingHandle.FireSound.Looped then ShootingHandle.FireSound:Play() script.Parent.Model.casing:FireServer() end
	local Start = (Humanoid.Torso.CFrame * CFrame.new(0,1.5,0)).p--(Handle.CFrame * CFrame.new(Module.MuzzleOffset.X,Module.MuzzleOffset.Y,Module.MuzzleOffset.Z)).p
	local Spread = Module.Spread*(AimDown and 1-Module.SpreadRedution or 1)
	local Direction = (CFrame.new(Start,Mouse.Hit.p) * CFrame.Angles(math.rad(-Spread+(math.random()*(Spread*2))),math.rad(-Spread+(math.random()*(Spread*2))),0)).lookVector
	while PierceAvailable >= 0 do
		local Hit,EndPos = RayCast(Start,Direction,5000,Character)
		if not Module.ExplosiveEnabled then
			if Hit and Hit.Parent then
				local TargetHumanoid = Hit.Parent:FindFirstChild("Humanoid")
				local TargetTorso = Hit.Parent:FindFirstChild("HumanoidRootPart")
				--local TargetTEAM = Hit.Parent:FindFirstChild("TEAM")
				if TargetHumanoid and TargetHumanoid.Health > 0 and TargetTorso then
					--if TargetTEAM and TargetTEAM.Value ~= TEAM.Value then
						InflictTarget:FireServer(TargetHumanoid,
												TargetTorso,
												(Hit.Name == "Head" and Module.HeadshotEnabled) and Module.BaseDamage * Module.HeadshotDamageMultiplier or Module.BaseDamage,
												Direction,
												Module.Knockback,
												Module.Lifesteal,
												Module.FlamingBullet)
						PiercedHumanoid[TargetHumanoid] = true
					--end
				else
					PierceAvailable = 0
				end
			end
		else
			local Explosion = Instance.new("Explosion")
			Explosion.BlastRadius = Module.Radius
			Explosion.BlastPressure = 0
			Explosion.Position = EndPos
			Explosion.Parent = Workspace.CurrentCamera
			Explosion.Hit:connect(function(Hit)
				if Hit and Hit.Parent and Hit.Name == "Torso" then
					local TargetHumanoid = Hit.Parent:FindFirstChild("Humanoid")
					local TargetTorso = Hit.Parent:FindFirstChild("Torso")
					--local TargetTEAM = Hit.Parent:FindFirstChild("TEAM")
					if TargetHumanoid and TargetHumanoid.Health > 0 and TargetTorso then
						--if TargetTEAM and TargetTEAM.Value ~= TEAM.Value then
							InflictTarget:FireServer(TargetHumanoid,
													TargetTorso,
													(Hit.Name == "Head" and Module.HeadshotEnabled) and Module.BaseDamage * Module.HeadshotDamageMultiplier or Module.BaseDamage,
													Direction,
													Module.Knockback,
													Module.Lifesteal,
													Module.FlamingBullet)
						--end
					end
				end
			end)
			PierceAvailable = 0
		end
		PierceAvailable = Hit and (PierceAvailable - 1) or -1
		script.Parent.BulletVisualizerScript.Visualize:Fire(nil,ShootingHandle,
																	Module.MuzzleOffset,
																	EndPos,
																	script.MuzzleEffect,
																	script.HitEffect,
																	Module.HitSoundIDs[math.random(1,#Module.HitSoundIDs)],
																	{Module.ExplosiveEnabled,Module.BlastRadius,Module.BlastPressure},
																	{Module.BulletSpeed,Module.BulletSize,Module.BulletColor,Module.BulletTransparency,Module.BulletMaterial,Module.FadeTime},
																	false,
																	PierceAvailable == -1 and Module.VisualizerEnabled or false)
		script.Parent.VisualizeBullet:FireServer(ShootingHandle,
														Module.MuzzleOffset,
														EndPos,
														script.MuzzleEffect,
														script.HitEffect,
														Module.HitSoundIDs[math.random(1,#Module.HitSoundIDs)],
														{Module.ExplosiveEnabled,Module.BlastRadius,Module.BlastPressure},
														{Module.BulletSpeed,Module.BulletSize,Module.BulletColor,Module.BulletTransparency,Module.BulletMaterial,Module.FadeTime},
														true,
														PierceAvailable == -1 and Module.VisualizerEnabled or false)
		Start = EndPos + (Direction*0.01)
	end
end

function Reload()
	if Enabled and not Reloading and (Clips > 0 or not Module.LimitedClipEnabled) and Ammo < Module.AmmoPerClip then
		Reloading = true
		if AimDown then
			Workspace.CurrentCamera.FieldOfView = 70
			--[[local GUI = game.Players.LocalPlayer.PlayerGui:FindFirstChild("ZoomGui")
			if GUI then GUI:Destroy() end]]
			GUI.Scope.Visible = false
			game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic
			script["Mouse Sensitivity"].Disabled = true
			AimDown = false
			Mouse.Icon = "rbxassetid://"..Module.MouseIconID
		end
		UpdateGUI()
		if Module.ShotgunReload then
			for i = 1,(Module.AmmoPerClip - Ammo) do
				if ShotgunClipinAnim then ShotgunClipinAnim:Play(nil,nil,Module.ShotgunClipinAnimationSpeed) end
				Handle.ShotgunClipin:Play()
				wait(Module.ShellClipinSpeed)
			end
		end
		if ReloadAnim then ReloadAnim:Play(nil,nil,Module.ReloadAnimationSpeed) end
		Handle.ReloadSound:Play() script.Parent.Model.reload:FireServer()
		wait(Module.ReloadTime)
		if Module.LimitedClipEnabled then Clips = Clips - 1 end
		Ammo = Module.AmmoPerClip
		ChangeAmmoAndClip:FireServer(Ammo,Clips)
		Reloading = false
		UpdateGUI()
	end
end

function UpdateGUI()
	GUI.Frame.Ammo.Fill:TweenSizeAndPosition(UDim2.new(Ammo/Module.AmmoPerClip,0,1,0), UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.25, true)
	GUI.Frame.Clips.Fill:TweenSizeAndPosition(UDim2.new(Clips/Module.MaxClip,0,1,0), UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.25, true)
	GUI.Frame.Ammo.Current.Text = Ammo
	GUI.Frame.Ammo.Max.Text = Module.AmmoPerClip
	GUI.Frame.Clips.Current.Text = Clips
	GUI.Frame.Clips.Max.Text = Module.MaxClip

	GUI.Frame.Ammo.Current.Visible = not Reloading
	GUI.Frame.Ammo.Max.Visible = not Reloading
	GUI.Frame.Ammo.Frame.Visible = not Reloading
	GUI.Frame.Ammo.Reloading.Visible = Reloading

	GUI.Frame.Clips.Current.Visible = not (Clips <= 0)
	GUI.Frame.Clips.Max.Visible = not (Clips <= 0)
	GUI.Frame.Clips.Frame.Visible = not (Clips <= 0)
	GUI.Frame.Clips.NoMoreClip.Visible = (Clips <= 0)
	
	GUI.Frame.Clips.Visible = Module.LimitedClipEnabled
	GUI.Frame.Size = Module.LimitedClipEnabled and UDim2.new(0,250,0,100) or UDim2.new(0,250,0,55)
	GUI.Frame.Position = Module.LimitedClipEnabled and UDim2.new(1,-260,1,-110)or UDim2.new(1,-260,1,-65)
end

Mouse.Button1Down:connect(function()
	Down = true
	local IsChargedShot = false
	if Equipped and Enabled and Down and not Reloading and Ammo > 0 and Humanoid.Health > 0 then
		Enabled = false
		if Module.ChargedShotEnabled then
			if HandleToFire:FindFirstChild("ChargeSound") then HandleToFire.ChargeSound:Play() end
			wait(Module.ChargingTime)
			IsChargedShot = true
		end
		if Module.MinigunEnabled then
			if HandleToFire:FindFirstChild("WindUp") then HandleToFire.WindUp:Play() end
			wait(Module.DelayBeforeFiring)
		end
		while Equipped and not Reloading and (Down or IsChargedShot) and Ammo > 0 and Humanoid.Health > 0 do
			IsChargedShot = false
			for i = 1,(Module.BurstFireEnabled and Module.BulletPerBurst or 1) do
				Spawn(ShakeCamera)
				for x = 1,(Module.ShotgunEnabled and Module.BulletPerShot or 1) do
					Fire(HandleToFire)
				end
				Ammo = Ammo - 1
				ChangeAmmoAndClip:FireServer(Ammo,Clips)
				UpdateGUI()
				if Module.BurstFireEnabled then wait(Module.BurstRate) end
				if Ammo <= 0 then break end
			end
			HandleToFire = (HandleToFire == Handle and Module.DualEnabled) and Handle2 or Handle
			wait(Module.FireRate)
			if not Module.Auto then break end
		end
		if HandleToFire.FireSound.Playing and HandleToFire.FireSound.Looped then HandleToFire.FireSound:Stop() end
		if Module.MinigunEnabled then
			if HandleToFire:FindFirstChild("WindDown") then HandleToFire.WindDown:Play() end
			wait(Module.DelayAfterFiring)
		end
		Enabled = true
		if Ammo <= 0 then Reload() end
	end
end)
Mouse.Button1Up:connect(function()
	Down = false
end)

ChangeAmmoAndClip.OnClientEvent:connect(function(ChangedAmmo,ChangedClips)
	Ammo = ChangedAmmo
	Clips = ChangedClips
	UpdateGUI()
end)
Tool.Equipped:connect(function(TempMouse)
	Equipped = true
	UpdateGUI()
	if Module.AmmoPerClip ~= math.huge then GUI.Parent = Player.PlayerGui end
	TempMouse.Icon = "rbxassetid://"..Module.MouseIconID
	if IdleAnim then IdleAnim:Play(nil,nil,Module.IdleAnimationSpeed) end
	TempMouse.KeyDown:connect(function(Key)
		if string.lower(Key) == "r" then
			Reload()
		elseif string.lower(Key) == "e" then
			if not Reloading and AimDown == false and Module.SniperEnabled then
				Workspace.CurrentCamera.FieldOfView = Module.FieldOfView
				--[[local GUI = game.Players.LocalPlayer.PlayerGui:FindFirstChild("ZoomGui") or Tool.ZoomGui:Clone()
				GUI.Parent = game.Players.LocalPlayer.PlayerGui]]
				GUI.Scope.Visible = true
				game.Players.LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson
				script["Mouse Sensitivity"].Disabled = false
				AimDown = true
				Mouse.Icon="http://www.roblox.com/asset?id=187746799"
			else
				Workspace.CurrentCamera.FieldOfView = 70
				--[[local GUI = game.Players.LocalPlayer.PlayerGui:FindFirstChild("ZoomGui")
				if GUI then GUI:Destroy() end]]
				GUI.Scope.Visible = false
				game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic
				script["Mouse Sensitivity"].Disabled = true
				AimDown = false
				Mouse.Icon = "rbxassetid://"..Module.MouseIconID
			end
		end
	end)
	if Module.DualEnabled and not Workspace.FilteringEnabled then
		Handle2.CanCollide = false
		local LeftArm = Tool.Parent:FindFirstChild("Left Arm")
		local RightArm = Tool.Parent:FindFirstChild("Right Arm")
		if RightArm then
			local Grip = RightArm:WaitForChild("RightGrip",0.01)
			if Grip then
				Grip2 = Grip:Clone()
				Grip2.Name = "LeftGrip"
				Grip2.Part0 = LeftArm
				Grip2.Part1 = Handle2
				--Grip2.C1 = Grip2.C1:inverse()
				Grip2.Parent = LeftArm
			end
		end
	end
end)
Tool.Unequipped:connect(function()
	Equipped = false
	GUI.Parent = script
	if IdleAnim then IdleAnim:Stop() end
		if AimDown then
			Workspace.CurrentCamera.FieldOfView = 70
			--[[local GUI = game.Players.LocalPlayer.PlayerGui:FindFirstChild("ZoomGui")
			if GUI then GUI:Destroy() end]]
			GUI.Scope.Visible = false
			game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic
			script["Mouse Sensitivity"].Disabled = true
			AimDown = false
			Mouse.Icon = "rbxassetid://"..Module.MouseIconID
		end
	if Module.DualEnabled and not Workspace.FilteringEnabled then
		Handle2.CanCollide = true
		if Grip2 then Grip2:Destroy() end
	end
end)
Humanoid.Died:connect(function()
	Equipped = false
	GUI.Parent = script
	if IdleAnim then IdleAnim:Stop() end
		if AimDown then
			Workspace.CurrentCamera.FieldOfView = 70
			--[[local GUI = game.Players.LocalPlayer.PlayerGui:FindFirstChild("ZoomGui")
			if GUI then GUI:Destroy() end]]
			GUI.Scope.Visible = false
			game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic
			script["Mouse Sensitivity"].Disabled = true
			AimDown = false
			Mouse.Icon = "rbxassetid://"..Module.MouseIconID
		end
	if Module.DualEnabled and not Workspace.FilteringEnabled then
		Handle2.CanCollide = true
		if Grip2 then Grip2:Destroy() end
	end
end)
end))
LocalScript21.Name = "Mouse Sensitivity"
LocalScript21.Parent = LocalScript20
LocalScript21.Enabled = false
table.insert(cors,sandbox(LocalScript21,function()
local Module = require(script.Parent.Parent:WaitForChild("Setting"))
local t=Module.MouseSensitive--MouseSpeed. 1 is regular mouse speed.

local atan2=math.atan2
local asin=math.asin
local abs=math.abs
local floor=math.floor
local cf=CFrame.new
local components=cf().components
local Angles=CFrame.Angles
local tau=2*math.pi
local RenderStepped=game:GetService("RunService").RenderStepped

local Player=game.Players.LocalPlayer
local Camera=workspace.CurrentCamera
local Character=Player.Character
local Head=Character:WaitForChild("Head")

local function EulerAnglesYX(c)--No z, I don't care about z.
	local _,_,_,m00,m01,m02,m10,m11,m12,m20,m21,m22=components(c)
	return abs(m12)>0.99999 and -atan2(-m20,m00) or -atan2(-m02,m22),-asin(m12)
end

local ly,lx=EulerAnglesYX(Camera.CoordinateFrame)
function Update()
	local cy,cx=EulerAnglesYX(Camera.CoordinateFrame)
	ly,lx=ly*(1-t)+(cy+tau*floor((ly-cy)/tau+0.5))*t,lx*(1-t)+(cx+tau*floor((lx-cx)/tau+0.5))*t
	--print(ly,lx)
	Camera.CoordinateFrame=Angles(0,ly,0)*Angles(lx,0,0)*cf(0,0,0.5)+Camera.Focus.p--Head.Position	
end
RenderStepped:connect(Update)

m=Player:GetMouse()
m.Button1Down:connect(function()
	zoom=true
	out=false
end)
m.Button1Up:connect(function()
	zoom=false
end)
m.Button2Down:connect(function()
	out=true
	zoom=false
end)
m.Button2Up:connect(function()
	out=false
end)
end))
LocalScript21.Disabled = true
ScreenGui22.Name = "GunGUI"
ScreenGui22.Parent = LocalScript20
Frame23.Parent = ScreenGui22
Frame23.Position = UDim2.new(1, -260, 1, -110)
Frame23.Size = UDim2.new(0, 250, 0, 100)
Frame23.BackgroundColor = BrickColor.new("Really black")
Frame23.BackgroundColor3 = Color3.new(0, 0, 0)
Frame23.BackgroundTransparency = 1
Frame23.BorderColor = BrickColor.new("Dark stone grey")
Frame23.BorderColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Frame23.BorderSizePixel = 0
Frame23.ClipsDescendants = true
Frame23.ZIndex = 2
Frame24.Name = "Clips"
Frame24.Parent = Frame23
Frame24.Position = UDim2.new(1, -160, 0, 55)
Frame24.Size = UDim2.new(0, 150, 0, 35)
Frame24.BackgroundColor = BrickColor.new("Really black")
Frame24.BackgroundColor3 = Color3.new(0, 0, 0)
Frame24.BackgroundTransparency = 0.5
Frame24.BorderColor = BrickColor.new("Sand violet metallic")
Frame24.BorderColor3 = Color3.new(0.588235, 0.588235, 0.588235)
Frame24.BorderSizePixel = 3
Frame24.ZIndex = 2
TextLabel25.Name = "Label"
TextLabel25.Parent = Frame24
TextLabel25.Position = UDim2.new(0, -85, 0, 0)
TextLabel25.Size = UDim2.new(0, 75, 0, 35)
TextLabel25.BackgroundColor = BrickColor.new("Institutional white")
TextLabel25.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel25.BackgroundTransparency = 1
TextLabel25.ZIndex = 3
TextLabel25.Font = Enum.Font.ArialBold
TextLabel25.FontSize = Enum.FontSize.Size24
TextLabel25.Text = "CLIP"
TextLabel25.TextColor = BrickColor.new("Institutional white")
TextLabel25.TextColor3 = Color3.new(1, 1, 1)
TextLabel25.TextSize = 24
Frame26.Parent = Frame24
Frame26.Position = UDim2.new(0.5, -1, 0.5, -10)
Frame26.Size = UDim2.new(0, 2, 0, 20)
Frame26.BackgroundColor = BrickColor.new("Institutional white")
Frame26.BackgroundColor3 = Color3.new(1, 1, 1)
Frame26.BorderColor = BrickColor.new("Really black")
Frame26.BorderColor3 = Color3.new(0, 0, 0)
Frame26.ZIndex = 3
TextLabel27.Name = "Current"
TextLabel27.Parent = Frame24
TextLabel27.Position = UDim2.new(0.5, -5, 0.5, 0)
TextLabel27.BackgroundColor = BrickColor.new("Institutional white")
TextLabel27.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel27.BackgroundTransparency = 1
TextLabel27.ZIndex = 3
TextLabel27.Font = Enum.Font.ArialBold
TextLabel27.FontSize = Enum.FontSize.Size18
TextLabel27.Text = "0"
TextLabel27.TextColor = BrickColor.new("Institutional white")
TextLabel27.TextColor3 = Color3.new(1, 1, 1)
TextLabel27.TextSize = 18
TextLabel27.TextStrokeTransparency = 0
TextLabel27.TextXAlignment = Enum.TextXAlignment.Right
TextLabel28.Name = "Max"
TextLabel28.Parent = Frame24
TextLabel28.Position = UDim2.new(0.5, 5, 0.5, 0)
TextLabel28.BackgroundColor = BrickColor.new("Institutional white")
TextLabel28.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel28.BackgroundTransparency = 1
TextLabel28.ZIndex = 3
TextLabel28.Font = Enum.Font.ArialBold
TextLabel28.FontSize = Enum.FontSize.Size18
TextLabel28.Text = "0"
TextLabel28.TextColor = BrickColor.new("Institutional white")
TextLabel28.TextColor3 = Color3.new(1, 1, 1)
TextLabel28.TextSize = 18
TextLabel28.TextStrokeTransparency = 0
TextLabel28.TextXAlignment = Enum.TextXAlignment.Left
Frame29.Name = "Fill"
Frame29.Parent = Frame24
Frame29.Size = UDim2.new(1, 0, 1, 0)
Frame29.BackgroundColor = BrickColor.new("Institutional white")
Frame29.BackgroundColor3 = Color3.new(1, 1, 1)
Frame29.BorderColor = BrickColor.new("Dark stone grey")
Frame29.BorderColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Frame29.BorderSizePixel = 0
Frame29.ZIndex = 2
TextLabel30.Name = "NoMoreClip"
TextLabel30.Parent = Frame24
TextLabel30.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel30.Visible = false
TextLabel30.BackgroundColor = BrickColor.new("Institutional white")
TextLabel30.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel30.BackgroundTransparency = 1
TextLabel30.ZIndex = 3
TextLabel30.Font = Enum.Font.ArialBold
TextLabel30.FontSize = Enum.FontSize.Size18
TextLabel30.Text = "No more clip!"
TextLabel30.TextColor = BrickColor.new("Really red")
TextLabel30.TextColor3 = Color3.new(1, 0, 0)
TextLabel30.TextSize = 18
TextLabel30.TextStrokeTransparency = 0
Frame31.Name = "Ammo"
Frame31.Parent = Frame23
Frame31.Position = UDim2.new(1, -160, 0, 10)
Frame31.Size = UDim2.new(0, 150, 0, 35)
Frame31.BackgroundColor = BrickColor.new("Really black")
Frame31.BackgroundColor3 = Color3.new(0, 0, 0)
Frame31.BackgroundTransparency = 1
Frame31.BorderColor = BrickColor.new("Sand violet metallic")
Frame31.BorderColor3 = Color3.new(0.588235, 0.588235, 0.588235)
Frame31.BorderSizePixel = 0
Frame31.ZIndex = 2
TextLabel32.Name = "Label"
TextLabel32.Parent = Frame31
TextLabel32.Position = UDim2.new(0, -85, 0, 0)
TextLabel32.Size = UDim2.new(0, 75, 0, 35)
TextLabel32.BackgroundColor = BrickColor.new("Institutional white")
TextLabel32.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel32.BackgroundTransparency = 1
TextLabel32.ZIndex = 3
TextLabel32.Font = Enum.Font.ArialBold
TextLabel32.FontSize = Enum.FontSize.Size24
TextLabel32.Text = "AMMO"
TextLabel32.TextColor = BrickColor.new("Really black")
TextLabel32.TextColor3 = Color3.new(0, 0, 0)
TextLabel32.TextSize = 24
TextLabel32.TextTransparency = 1
TextLabel33.Name = "Current"
TextLabel33.Parent = Frame31
TextLabel33.Position = UDim2.new(0.5, -5, 0.5, 0)
TextLabel33.BackgroundColor = BrickColor.new("Institutional white")
TextLabel33.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel33.BackgroundTransparency = 1
TextLabel33.ZIndex = 3
TextLabel33.Font = Enum.Font.ArialBold
TextLabel33.FontSize = Enum.FontSize.Size18
TextLabel33.Text = "0"
TextLabel33.TextColor = BrickColor.new("Institutional white")
TextLabel33.TextColor3 = Color3.new(1, 1, 1)
TextLabel33.TextSize = 18
TextLabel33.TextStrokeTransparency = 0
TextLabel33.TextXAlignment = Enum.TextXAlignment.Right
TextLabel34.Name = "Max"
TextLabel34.Parent = Frame31
TextLabel34.Position = UDim2.new(0.5, 5, 0.5, 0)
TextLabel34.BackgroundColor = BrickColor.new("Institutional white")
TextLabel34.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel34.BackgroundTransparency = 1
TextLabel34.ZIndex = 3
TextLabel34.Font = Enum.Font.ArialBold
TextLabel34.FontSize = Enum.FontSize.Size18
TextLabel34.Text = "0"
TextLabel34.TextColor = BrickColor.new("Institutional white")
TextLabel34.TextColor3 = Color3.new(1, 1, 1)
TextLabel34.TextSize = 18
TextLabel34.TextStrokeTransparency = 0
TextLabel34.TextXAlignment = Enum.TextXAlignment.Left
Frame35.Name = "Fill"
Frame35.Parent = Frame31
Frame35.Size = UDim2.new(1, 0, 1, 0)
Frame35.BackgroundColor = BrickColor.new("Lime green")
Frame35.BackgroundColor3 = Color3.new(0.0666667, 1, 0.0980392)
Frame35.BackgroundTransparency = 1
Frame35.BorderColor = BrickColor.new("Dark stone grey")
Frame35.BorderColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Frame35.BorderSizePixel = 0
Frame35.ZIndex = 2
Frame36.Parent = Frame31
Frame36.Position = UDim2.new(0.5, -1, 0.5, -10)
Frame36.Size = UDim2.new(0, 2, 0, 20)
Frame36.BackgroundColor = BrickColor.new("Institutional white")
Frame36.BackgroundColor3 = Color3.new(1, 1, 1)
Frame36.BackgroundTransparency = 1
Frame36.BorderColor = BrickColor.new("Really black")
Frame36.BorderColor3 = Color3.new(0, 0, 0)
Frame36.ZIndex = 3
TextLabel37.Name = "Reloading"
TextLabel37.Parent = Frame31
TextLabel37.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel37.Visible = false
TextLabel37.BackgroundColor = BrickColor.new("Institutional white")
TextLabel37.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel37.BackgroundTransparency = 1
TextLabel37.ZIndex = 3
TextLabel37.Font = Enum.Font.ArialBold
TextLabel37.FontSize = Enum.FontSize.Size18
TextLabel37.Text = "Reloading..."
TextLabel37.TextColor = BrickColor.new("Really red")
TextLabel37.TextColor3 = Color3.new(1, 0.129412, 0.129412)
TextLabel37.TextSize = 18
TextLabel37.TextStrokeTransparency = 0
ImageLabel38.Name = "Scope"
ImageLabel38.Parent = ScreenGui22
ImageLabel38.Position = UDim2.new(0.5, -375, 0.5, -390)
ImageLabel38.Visible = false
ImageLabel38.Size = UDim2.new(0, 750, 0, 750)
ImageLabel38.BackgroundColor = BrickColor.new("Really black")
ImageLabel38.BackgroundColor3 = Color3.new(0, 0, 0)
ImageLabel38.BackgroundTransparency = 1
ImageLabel38.BorderColor = BrickColor.new("Really black")
ImageLabel38.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel38.Image = "http://www.roblox.com/asset/?id=72002022"
ImageLabel38.ImageColor3 = Color3.new(255, 255, 255)
Frame39.Name = "Crosshair"
Frame39.Parent = ImageLabel38
Frame39.Position = UDim2.new(0.5, -1, 0, 0)
Frame39.Size = UDim2.new(0, 2, 1, 0)
Frame39.BackgroundColor = BrickColor.new("Really black")
Frame39.BackgroundColor3 = Color3.new(0, 0, 0)
Frame39.BorderColor = BrickColor.new("Really black")
Frame39.BorderColor3 = Color3.new(0, 0, 0)
Frame39.BorderSizePixel = 0
Frame40.Name = "Crosshair"
Frame40.Parent = ImageLabel38
Frame40.Position = UDim2.new(0, 0, 0.5, -4)
Frame40.Size = UDim2.new(1, 0, 0, 2)
Frame40.BackgroundColor = BrickColor.new("Really black")
Frame40.BackgroundColor3 = Color3.new(0, 0, 0)
Frame40.BorderColor = BrickColor.new("Really black")
Frame40.BorderColor3 = Color3.new(0, 0, 0)
Frame40.BorderSizePixel = 0
Frame41.Name = "Crosshair"
Frame41.Parent = ImageLabel38
Frame41.Position = UDim2.new(0.5, -1, 0.5, -4)
Frame41.Size = UDim2.new(0, 2, 0, 2)
Frame41.BackgroundColor = BrickColor.new("Really red")
Frame41.BackgroundColor3 = Color3.new(1, 0, 0)
Frame41.BorderColor = BrickColor.new("Really black")
Frame41.BorderColor3 = Color3.new(0, 0, 0)
Frame41.BorderSizePixel = 0
ParticleEmitter42.Name = "HitEffect"
ParticleEmitter42.Parent = LocalScript20
ParticleEmitter42.Speed = NumberRange.new(0, 0)
ParticleEmitter42.Rotation = NumberRange.new(-15, 50)
ParticleEmitter42.Enabled = false
ParticleEmitter42.LightInfluence = 1
ParticleEmitter42.Texture = "rbxassetid://2586918100"
ParticleEmitter42.Transparency = NumberSequence.new(0.3333333730697632,0.06010931730270386,1)
ParticleEmitter42.ZOffset = 0.5
ParticleEmitter42.Size = NumberSequence.new(0,0,4.690000057220459,0.2499997615814209,0.06249964237213135,0,5.812499523162842)
ParticleEmitter42.Acceleration = Vector3.new(0, -10, -2)
ParticleEmitter42.Drag = 20
ParticleEmitter42.Lifetime = NumberRange.new(0, 0)
ParticleEmitter42.LockedToPart = true
ParticleEmitter42.Rate = 10
ParticleEmitter43.Name = "MuzzleEffect"
ParticleEmitter43.Parent = LocalScript20
ParticleEmitter43.Speed = NumberRange.new(48, 48)
ParticleEmitter43.Rotation = NumberRange.new(-360, 360)
ParticleEmitter43.Color = ColorSequence.new(Color3.new(1, 1, 0.196078),Color3.new(1, 0.876283, 0.17144),Color3.new(1, 0.897133, 0.175592),Color3.new(1, 0.857612, 0.167721),Color3.new(1, 0.865657, 0.169324),Color3.new(1, 1, 0.196078),Color3.new(1, 0.509566, 0.0984073),Color3.new(1, 0.0745098, 0.0117647),Color3.new(1, 0.0745098, 0.0117647),Color3.new(1, 0.0745098, 0.0117647),Color3.new(1, 0.580281, 0.11249),Color3.new(1, 0.0745098, 0.0117647),Color3.new(1, 0.0745098, 0.0117647),Color3.new(1, 0.0745098, 0.0117647),Color3.new(1, 0.0745098, 0.0117647),Color3.new(1, 0.588683, 0.114164),Color3.new(1, 0.0745098, 0.0117647),Color3.new(1, 0.0745098, 0.0117647))
ParticleEmitter43.Enabled = false
ParticleEmitter43.LightEmission = 1
ParticleEmitter43.Texture = "http://www.roblox.com/asset/?id=1465232374"
ParticleEmitter43.Size = NumberSequence.new(0.8125001192092896,0.3125,2.3125,1.4375001192092896)
ParticleEmitter43.EmissionDirection = Enum.NormalId.Back
ParticleEmitter43.Lifetime = NumberRange.new(0.05000000074505806, 0.05000000074505806)
ParticleEmitter43.Rate = 23
ParticleEmitter43.RotSpeed = NumberRange.new(-360, -360)
ParticleEmitter43.SpreadAngle = Vector2.new(11, 19)
ParticleEmitter43.VelocitySpread = 11
Script44.Parent = ParticleEmitter43
table.insert(cors,sandbox(Script44,function()
while true do --Loop
script.Parent.Texture = "http://www.roblox.com/asset/?id=1465231221" --Insert decal's first texture 
wait(0.005)
script.Parent.Texture = "http://www.roblox.com/asset/?id=1465232374" --second texture
wait(0.005) --wait 1 second, you can change this and make it different for every one
script.Parent.Texture = "http://www.roblox.com/asset/?id=1465231914" 
wait(0.005)
script.Parent.Texture = "http://www.roblox.com/asset/?id=1465238174" 
wait(0.005)
end
end))
MeshPart45.Name = "Bolt"
MeshPart45.Parent = Tool0
MeshPart45.CFrame = CFrame.new(13.8832359, 1.96505511, 9.23165321, -0.0198339913, 0.00608800491, 0.999784768, -0.0394289829, 0.999198854, -0.00686663855, -0.999025524, -0.0395566896, -0.0195780564)
MeshPart45.Orientation = Vector3.new(0.3930000066757202, 91.12200164794922, -2.259999990463257)
MeshPart45.Position = Vector3.new(13.883235931396484, 1.9650551080703735, 9.231653213500977)
MeshPart45.Rotation = Vector3.new(160.67300415039062, 88.81099700927734, -162.93600463867188)
MeshPart45.Color = Color3.new(0.972549, 0.972549, 0.972549)
MeshPart45.Transparency = 1
MeshPart45.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.06000000238418579)
MeshPart45.BrickColor = BrickColor.new("Institutional white")
MeshPart45.CanCollide = false
MeshPart45.Material = Enum.Material.Glass
MeshPart45.brickColor = BrickColor.new("Institutional white")
MeshPart45.TextureID = "rbxassetid://436655930"
MeshPart46.Name = "BoltBack"
MeshPart46.Parent = Tool0
MeshPart46.CFrame = CFrame.new(13.8297997, 1.96125567, 9.16565895, -0.0282209925, 0.000468993123, 0.999601662, 0, 0.999999881, -0.000469180028, -0.999601781, -1.32407249e-05, -0.0282209888)
MeshPart46.Orientation = Vector3.new(0.027000000700354576, 91.61699676513672, 0)
MeshPart46.Position = Vector3.new(13.82979965209961, 1.961255669593811, 9.165658950805664)
MeshPart46.Rotation = Vector3.new(179.04800415039062, 88.38300323486328, -179.04800415039062)
MeshPart46.Color = Color3.new(0.388235, 0.372549, 0.384314)
MeshPart46.Transparency = 1
MeshPart46.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806)
MeshPart46.BrickColor = BrickColor.new("Dark stone grey")
MeshPart46.Material = Enum.Material.Glass
MeshPart46.brickColor = BrickColor.new("Dark stone grey")
MeshPart46.TextureID = "rbxassetid://436655930"
UnionOperation47.Name = "Flash"
UnionOperation47.Parent = Tool0
UnionOperation47.CFrame = CFrame.new(16.624897, 1.98726046, 9.19001198, 0, 0.998946667, -0.0458879769, 1, 4.22169478e-06, 9.19030863e-05, 9.2000002e-05, -0.0458879843, -0.998946548)
UnionOperation47.Orientation = Vector3.new(-0.004999999888241291, -177.3699951171875, 90)
UnionOperation47.Position = Vector3.new(16.624897003173828, 1.9872604608535767, 9.190011978149414)
UnionOperation47.Rotation = Vector3.new(-179.9949951171875, -2.630000114440918, -90)
UnionOperation47.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation47.Transparency = 1
UnionOperation47.Size = Vector3.new(0.13327310979366302, 0.05000000074505806, 0.09727802127599716)
UnionOperation47.BrickColor = BrickColor.new("Black")
UnionOperation47.CanCollide = false
UnionOperation47.brickColor = BrickColor.new("Black")
BillboardGui48.Name = "Light"
BillboardGui48.Parent = UnionOperation47
BillboardGui48.Enabled = false
BillboardGui48.Size = UDim2.new(1, 0, 1, 0)
BillboardGui48.Active = true
Script49.Parent = BillboardGui48
table.insert(cors,sandbox(Script49,function()
script.Parent.Adornee = script.Parent.Parent
end))
PointLight50.Name = "lite"
PointLight50.Parent = UnionOperation47
PointLight50.Color = Color3.new(1, 0.639216, 0.0196078)
PointLight50.Enabled = false
PointLight50.Range = 6
PointLight50.Brightness = 8
PointLight50.Shadows = true
MeshPart51.Name = "shell"
MeshPart51.Parent = Tool0
MeshPart51.CFrame = CFrame.new(14.5640678, 1.98299944, 9.21415138, -0.999529123, 0, -0.0306840036, 0, 1, 0, 0.0306840036, 0, -0.999529123)
MeshPart51.Orientation = Vector3.new(0, -178.24200439453125, 0)
MeshPart51.Position = Vector3.new(14.564067840576172, 1.9829994440078735, 9.214151382446289)
MeshPart51.Rotation = Vector3.new(180, -1.7580000162124634, 180)
MeshPart51.Color = Color3.new(0.960784, 0.803922, 0.188235)
MeshPart51.Size = Vector3.new(0.18012699484825134, 0.0762629508972168, 0.0762639045715332)
MeshPart51.BrickColor = BrickColor.new("Bright yellow")
MeshPart51.Material = Enum.Material.Metal
MeshPart51.brickColor = BrickColor.new("Bright yellow")
Part52.Name = "Handle"
Part52.Parent = Tool0
Part52.CFrame = CFrame.new(14.0283699, 1.68339694, 9.22165871, -0.0263490006, -0.000740012096, 0.999652624, -0.00277999998, 0.999996006, 0.000666990643, -0.999648988, -0.00276145944, -0.0263509508)
Part52.Orientation = Vector3.new(-0.03799999877810478, 91.51000213623047, -0.1589999943971634)
Part52.Position = Vector3.new(14.028369903564453, 1.6833969354629517, 9.221658706665039)
Part52.Rotation = Vector3.new(-178.5500030517578, 88.48999786376953, 178.39100646972656)
Part52.Color = Color3.new(0, 0.560784, 0.611765)
Part52.Transparency = 1
Part52.Size = Vector3.new(0.2200004905462265, 0.8600024580955505, 0.7199968099594116)
Part52.BrickColor = BrickColor.new("Bright bluish green")
Part52.brickColor = BrickColor.new("Bright bluish green")
Part52.FormFactor = Enum.FormFactor.Custom
Part52.formFactor = Enum.FormFactor.Custom
Sound53.Name = "ReloadSound"
Sound53.Parent = Part52
Sound53.SoundId = "rbxassetid://90"
Sound53.Volume = 1
Sound54.Name = "ShotgunClipin"
Sound54.Parent = Part52
Sound54.SoundId = "rbxassetid://189446768"
Sound54.Volume = 1
Sound55.Name = "WindDown"
Sound55.Parent = Part52
Sound55.SoundId = "rbxassetid://10209786"
Sound55.Volume = 1
Sound56.Name = "WindUp"
Sound56.Parent = Part52
Sound56.SoundId = "rbxassetid://10209788"
Sound56.Volume = 1
Sound57.Name = "load"
Sound57.Parent = Part52
Sound57.SoundId = "rbxassetid://620716734"
Sound57.Volume = 1
Sound58.Name = "shoot"
Sound58.Parent = Part52
Sound58.MaxDistance = 400
Sound58.SoundId = "http://www.roblox.com/asset/?id=116745227"
Sound58.Volume = 1
Sound59.Name = "ChargeSound"
Sound59.Parent = Part52
Sound59.SoundId = "rbxassetid://298660207"
Sound59.Volume = 2.5
Sound60.Name = "FireSound"
Sound60.Parent = Part52
Sound60.SoundId = "http://www.roblox.com/asset/?id=116745227"
Sound60.Volume = 6
Sound61.Name = "EquipSound"
Sound61.Parent = Part52
Sound61.SoundId = "rbxassetid://4458750270"
Sound61.Volume = 1
Part62.Name = "Mag"
Part62.Parent = Tool0
Part62.CFrame = CFrame.new(14.5933723, 1.49073184, 9.17981911, 0.00776132103, -0.0248855557, -0.999662399, 0.00692126621, 0.999666691, -0.0248318668, 0.999948442, -0.00672530662, 0.00793244969)
Part62.Orientation = Vector3.new(1.4229999780654907, -89.54499816894531, 0.3970000147819519)
Part62.Position = Vector3.new(14.593372344970703, 1.4907318353652954, 9.179819107055664)
Part62.Rotation = Vector3.new(72.28399658203125, -88.51100158691406, 72.6780014038086)
Part62.Size = Vector3.new(0.9382543563842773, 0.9699998497962952, 0.21317355334758759)
Part62.Material = Enum.Material.Metal
Part62.FormFactor = Enum.FormFactor.Custom
Part62.formFactor = Enum.FormFactor.Custom
SpecialMesh63.Parent = Part62
SpecialMesh63.MeshId = "http://www.roblox.com/asset/?id=116740155"
SpecialMesh63.Scale = Vector3.new(0.8999999761581421, 0.8999999761581421, 0.8999999761581421)
SpecialMesh63.TextureId = "http://www.roblox.com/asset/?id=116679995"
SpecialMesh63.MeshType = Enum.MeshType.FileMesh
Part64.Name = "gun"
Part64.Parent = Tool0
Part64.CFrame = CFrame.new(14.3459129, 1.94904482, 9.20916176, 0, -0.00256399927, -0.999996781, 0, 0.999996781, -0.00256399903, 1, 0, 0)
Part64.Orientation = Vector3.new(0.1469999998807907, -90, 0)
Part64.Position = Vector3.new(14.34591293334961, 1.9490448236465454, 9.209161758422852)
Part64.Rotation = Vector3.new(90, -89.8550033569336, 90)
Part64.Size = Vector3.new(0.5400034189224243, 1.260000228881836, 4.109989166259766)
Part64.CanCollide = false
Part64.Material = Enum.Material.Wood
Part64.FormFactor = Enum.FormFactor.Custom
Part64.formFactor = Enum.FormFactor.Custom
SpecialMesh65.Parent = Part64
SpecialMesh65.MeshId = "http://www.roblox.com/asset/?id=116679805"
SpecialMesh65.Scale = Vector3.new(0.8999999761581421, 0.8999999761581421, 0.8999999761581421)
SpecialMesh65.TextureId = "http://www.roblox.com/asset/?id=116679995"
SpecialMesh65.MeshType = Enum.MeshType.FileMesh
Script66.Name = "Unequip Event"
Script66.Parent = Tool0
table.insert(cors,sandbox(Script66,function()
local SoundMaker = script.parent

SoundMaker.Unequipped:Connect(function()
    SoundMaker.Handle.EquipSound:Stop()
end)
end))
Script67.Name = "Equip Event"
Script67.Parent = Tool0
table.insert(cors,sandbox(Script67,function()
local SoundMaker = script.parent

SoundMaker.Equipped:Connect(function()
    SoundMaker.Handle.EquipSound:Play()
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
