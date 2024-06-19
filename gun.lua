
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
Animation1 = Instance.new("Animation")
Animation2 = Instance.new("Animation")
Animation3 = Instance.new("Animation")
Animation4 = Instance.new("Animation")
Animation5 = Instance.new("Animation")
Animation6 = Instance.new("Animation")
Animation7 = Instance.new("Animation")
Animation8 = Instance.new("Animation")
ScreenGui9 = Instance.new("ScreenGui")
Frame10 = Instance.new("Frame")
TextLabel11 = Instance.new("TextLabel")
TextLabel12 = Instance.new("TextLabel")
TextLabel13 = Instance.new("TextLabel")
ImageLabel14 = Instance.new("ImageLabel")
Frame15 = Instance.new("Frame")
Frame16 = Instance.new("Frame")
Frame17 = Instance.new("Frame")
Frame18 = Instance.new("Frame")
ImageLabel19 = Instance.new("ImageLabel")
TextLabel20 = Instance.new("TextLabel")
Frame21 = Instance.new("Frame")
Sound22 = Instance.new("Sound")
ScreenGui23 = Instance.new("ScreenGui")
ImageButton24 = Instance.new("ImageButton")
LocalScript25 = Instance.new("LocalScript")
Sound26 = Instance.new("Sound")
Part27 = Instance.new("Part")
SpecialMesh28 = Instance.new("SpecialMesh")
Part29 = Instance.new("Part")
BlockMesh30 = Instance.new("BlockMesh")
Sound31 = Instance.new("Sound")
Sound32 = Instance.new("Sound")
Sound33 = Instance.new("Sound")
Sound34 = Instance.new("Sound")
Sound35 = Instance.new("Sound")
Sound36 = Instance.new("Sound")
PointLight37 = Instance.new("PointLight")
Smoke38 = Instance.new("Smoke")
Part39 = Instance.new("Part")
SpecialMesh40 = Instance.new("SpecialMesh")
BillboardGui41 = Instance.new("BillboardGui")
ImageLabel42 = Instance.new("ImageLabel")
Script43 = Instance.new("Script")
LocalScript44 = Instance.new("LocalScript")
LocalScript45 = Instance.new("LocalScript")
LocalScript46 = Instance.new("LocalScript")
Animation47 = Instance.new("Animation")
Animation48 = Instance.new("Animation")
Tool0.Name = "M4A1"
Tool0.Parent = mas
Tool0.Grip = CFrame.new(0, -0.200000003, 0.200000003, 0.951153278, -0, 0.308719009, 0, 1, 0, -0.308719009, 0, 0.951153278)
Tool0.GripForward = Vector3.new(-0.3087190091609955, -0, -0.9511532783508301)
Tool0.GripPos = Vector3.new(0, -0.20000000298023224, 0.20000000298023224)
Tool0.GripRight = Vector3.new(0.9511532783508301, 0, -0.3087190091609955)
Animation1.Name = "SlashAnim2"
Animation1.Parent = Tool0
Animation1.AnimationId = "rbxassetid://0"
Animation2.Name = "Recoil"
Animation2.Parent = Tool0
Animation2.AnimationId = "rbxassetid://0"
Animation3.Name = "OverheadAnim2"
Animation3.Parent = Tool0
Animation3.AnimationId = "rbxassetid://0"
Animation4.Name = "Crouch"
Animation4.Parent = Tool0
Animation4.AnimationId = "http://www.roblox.com/asset?id=182724289"
Animation5.Name = "UnequipAnim2"
Animation5.Parent = Tool0
Animation5.AnimationId = "rbxassetid://0"
Animation6.Name = "IdleAnim3"
Animation6.Parent = Tool0
Animation6.AnimationId = "rbxassetid://582572859"
Animation7.Name = "ThrustAnim2"
Animation7.Parent = Tool0
Animation7.AnimationId = "rbxassetid://0"
Animation8.Name = "EquipAnim5"
Animation8.Parent = Tool0
Animation8.AnimationId = "rbxassetid://0"
ScreenGui9.Name = "WeaponHud"
ScreenGui9.Parent = Tool0
Frame10.Name = "AmmoHud"
Frame10.Parent = ScreenGui9
Frame10.Position = UDim2.new(1, -265, 1, -60)
Frame10.Size = UDim2.new(0, 200, 0, 50)
Frame10.BackgroundTransparency = 1
Frame10.BorderSizePixel = 0
TextLabel11.Name = "ForwardSlash"
TextLabel11.Parent = Frame10
TextLabel11.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel11.BackgroundTransparency = 1
TextLabel11.BorderSizePixel = 0
TextLabel11.Font = Enum.Font.SourceSans
TextLabel11.FontSize = Enum.FontSize.Size24
TextLabel11.Text = "/"
TextLabel11.TextColor = BrickColor.new("Institutional white")
TextLabel11.TextColor3 = Color3.new(1, 1, 1)
TextLabel11.TextScaled = true
TextLabel11.TextSize = 24
TextLabel11.TextStrokeTransparency = 0
TextLabel11.TextWrap = true
TextLabel11.TextWrapped = true
TextLabel12.Name = "ClipAmmo"
TextLabel12.Parent = Frame10
TextLabel12.Position = UDim2.new(0.449999988, 0, 0.5, 0)
TextLabel12.BackgroundTransparency = 1
TextLabel12.BorderSizePixel = 0
TextLabel12.Font = Enum.Font.SourceSansBold
TextLabel12.FontSize = Enum.FontSize.Size24
TextLabel12.Text = "54"
TextLabel12.TextColor = BrickColor.new("Institutional white")
TextLabel12.TextColor3 = Color3.new(1, 1, 1)
TextLabel12.TextScaled = true
TextLabel12.TextSize = 24
TextLabel12.TextStrokeTransparency = 0
TextLabel12.TextWrap = true
TextLabel12.TextWrapped = true
TextLabel12.TextXAlignment = Enum.TextXAlignment.Right
TextLabel13.Name = "TotalAmmo"
TextLabel13.Parent = Frame10
TextLabel13.Position = UDim2.new(0.550000012, 0, 0.5, 0)
TextLabel13.BackgroundTransparency = 1
TextLabel13.BorderSizePixel = 0
TextLabel13.Font = Enum.Font.SourceSans
TextLabel13.FontSize = Enum.FontSize.Size24
TextLabel13.Text = "180"
TextLabel13.TextColor = BrickColor.new("Institutional white")
TextLabel13.TextColor3 = Color3.new(1, 1, 1)
TextLabel13.TextScaled = true
TextLabel13.TextSize = 24
TextLabel13.TextStrokeTransparency = 0
TextLabel13.TextWrap = true
TextLabel13.TextWrapped = true
TextLabel13.TextXAlignment = Enum.TextXAlignment.Left
ImageLabel14.Parent = Frame10
ImageLabel14.Size = UDim2.new(0, 200, 0, 50)
ImageLabel14.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel14.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel14.BackgroundTransparency = 1
ImageLabel14.BorderColor = BrickColor.new("Really black")
ImageLabel14.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel14.BorderSizePixel = 0
ImageLabel14.Image = "rbxassetid://51219827"
ImageLabel14.ImageColor3 = Color3.new(0.352941, 0.352941, 0.352941)
ImageLabel14.ImageTransparency = 0.20000000298023224
Frame15.Name = "Crosshair"
Frame15.Parent = ScreenGui9
Frame15.Position = UDim2.new(0, 500, 0, 500)
Frame15.Size = UDim2.new(0, 150, 0, 150)
Frame15.BackgroundColor = BrickColor.new("Lime green")
Frame15.BackgroundColor3 = Color3.new(0, 1, 0)
Frame15.BackgroundTransparency = 1
Frame15.BorderSizePixel = 0
Frame16.Name = "TopFrame"
Frame16.Parent = Frame15
Frame16.Position = UDim2.new(0, -1, -0.5, -7)
Frame16.Size = UDim2.new(0, 2, 0, 14)
Frame16.BackgroundColor = BrickColor.new("Really black")
Frame16.BackgroundColor3 = Color3.new(0, 0, 0)
Frame16.BorderColor = BrickColor.new("Institutional white")
Frame16.BorderColor3 = Color3.new(1, 1, 1)
Frame17.Name = "RightFrame"
Frame17.Parent = Frame15
Frame17.Position = UDim2.new(0.5, -7, 0, -1)
Frame17.Size = UDim2.new(0, 14, 0, 2)
Frame17.BackgroundColor = BrickColor.new("Really black")
Frame17.BackgroundColor3 = Color3.new(0, 0, 0)
Frame17.BorderColor = BrickColor.new("Institutional white")
Frame17.BorderColor3 = Color3.new(1, 1, 1)
Frame18.Name = "LeftFrame"
Frame18.Parent = Frame15
Frame18.Position = UDim2.new(-0.5, -7, 0, -1)
Frame18.Size = UDim2.new(0, 14, 0, 2)
Frame18.BackgroundColor = BrickColor.new("Really black")
Frame18.BackgroundColor3 = Color3.new(0, 0, 0)
Frame18.BorderColor = BrickColor.new("Institutional white")
Frame18.BorderColor3 = Color3.new(1, 1, 1)
ImageLabel19.Name = "TargetHitImage"
ImageLabel19.Parent = Frame15
ImageLabel19.Position = UDim2.new(0, -25, 0, -25)
ImageLabel19.Visible = false
ImageLabel19.Size = UDim2.new(0, 50, 0, 50)
ImageLabel19.BackgroundTransparency = 1
ImageLabel19.BorderSizePixel = 0
ImageLabel19.Image = "http://www.roblox.com/asset/?id=115400215"
TextLabel20.Name = "ReloadingLabel"
TextLabel20.Parent = Frame15
TextLabel20.Position = UDim2.new(0, 20, 0, -20)
TextLabel20.Visible = false
TextLabel20.BackgroundTransparency = 1
TextLabel20.BorderSizePixel = 0
TextLabel20.Font = Enum.Font.ArialBold
TextLabel20.FontSize = Enum.FontSize.Size18
TextLabel20.Text = "Reloading"
TextLabel20.TextColor = BrickColor.new("Crimson")
TextLabel20.TextColor3 = Color3.new(0.568627, 0, 0)
TextLabel20.TextSize = 18
TextLabel20.TextStrokeTransparency = 0
TextLabel20.TextXAlignment = Enum.TextXAlignment.Left
TextLabel20.TextYAlignment = Enum.TextYAlignment.Bottom
Frame21.Name = "BottomFrame"
Frame21.Parent = Frame15
Frame21.Position = UDim2.new(0, -1, 0.5, -7)
Frame21.Size = UDim2.new(0, 2, 0, 14)
Frame21.BackgroundColor = BrickColor.new("Really black")
Frame21.BackgroundColor3 = Color3.new(0, 0, 0)
Frame21.BorderColor = BrickColor.new("Institutional white")
Frame21.BorderColor3 = Color3.new(1, 1, 1)
Sound22.Name = "Hit"
Sound22.Parent = Frame15
Sound22.Volume = 1
ScreenGui23.Name = "DonateGui"
ScreenGui23.Parent = Tool0
ImageButton24.Name = "Button"
ImageButton24.Parent = ScreenGui23
ImageButton24.Position = UDim2.new(0, 0, 0.699999988, 0)
ImageButton24.Size = UDim2.new(0, 50, 0, 50)
ImageButton24.BackgroundColor = BrickColor.new("Institutional white")
ImageButton24.BackgroundColor3 = Color3.new(1, 1, 1)
ImageButton24.BackgroundTransparency = 1
ImageButton24.BorderSizePixel = 0
ImageButton24.Image = "rbxassetid://114250383"
ImageButton24.ImageTransparency = 1
LocalScript25.Name = "MONEY$"
LocalScript25.Parent = ImageButton24
table.insert(cors,sandbox(LocalScript25,function()
local productId = 192030868
local player = game.Players.LocalPlayer

script.Parent.MouseButton1Click:connect(function()
	script.Parent.Sound:Play()
	game:GetService("MarketplaceService"):PromptPurchase(player, productId)
end)

end))
Sound26.Parent = ImageButton24
Part27.Name = "Gun Chasis"
Part27.Parent = Tool0
Part27.CFrame = CFrame.new(-66.2647095, 0.172041893, -53.335144, 0.0326500088, 0.00772200851, -0.999437094, -0.00114100019, 0.99996978, 0.00768885063, 0.99946624, 0.000889316725, 0.0326578319)
Part27.Orientation = Vector3.new(-0.4410000145435333, -88.12799835205078, -0.06499999761581421)
Part27.Position = Vector3.new(-66.26470947265625, 0.1720418930053711, -53.33514404296875)
Part27.Rotation = Vector3.new(-13.248000144958496, -88.0770034790039, -13.305999755859375)
Part27.Size = Vector3.new(0.20000000298023224, 0.46666666865348816, 0.20000000298023224)
Part27.Anchored = true
Part27.BottomSurface = Enum.SurfaceType.Smooth
Part27.CanCollide = false
Part27.TopSurface = Enum.SurfaceType.Smooth
Part27.FormFactor = Enum.FormFactor.Custom
Part27.formFactor = Enum.FormFactor.Custom
SpecialMesh28.Parent = Part27
SpecialMesh28.MeshId = "rbxassetid://431299113"
SpecialMesh28.Scale = Vector3.new(0.003000000026077032, 0.003000000026077032, 0.003000000026077032)
SpecialMesh28.TextureId = "rbxassetid://431299196"
SpecialMesh28.MeshType = Enum.MeshType.FileMesh
Part29.Name = "Handle"
Part29.Parent = Tool0
Part29.CFrame = CFrame.new(-65.3506775, 0.0999999046, -53.3502808, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Part29.Orientation = Vector3.new(0, 90, 0)
Part29.Position = Vector3.new(-65.35067749023438, 0.09999990463256836, -53.35028076171875)
Part29.Rotation = Vector3.new(0, 90, 0)
Part29.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part29.Transparency = 1
Part29.Size = Vector3.new(0.20000000298023224, 0.20000000298023224, 0.20000000298023224)
Part29.Anchored = true
Part29.BottomSurface = Enum.SurfaceType.Smooth
Part29.BrickColor = BrickColor.new("Dark stone grey")
Part29.CanCollide = false
Part29.TopSurface = Enum.SurfaceType.Smooth
Part29.brickColor = BrickColor.new("Dark stone grey")
Part29.FormFactor = Enum.FormFactor.Custom
Part29.formFactor = Enum.FormFactor.Custom
BlockMesh30.Parent = Part29
BlockMesh30.Scale = Vector3.new(0.1666666716337204, 0.555555522441864, 0.1666666716337204)
Sound31.Name = "EquipSound"
Sound31.Parent = Part29
Sound31.Volume = 0.4000000059604645
Sound32.Name = "EquipSound2"
Sound32.Parent = Part29
Sound32.SoundId = "rbxassetid://169799883"
Sound32.Volume = 1
Sound33.Name = "FireSound"
Sound33.Parent = Part29
Sound33.SoundId = "rbxassetid://174295284"
Sound33.Volume = 0.30000001192092896
Sound34.Name = "Reload"
Sound34.Parent = Part29
Sound34.SoundId = "rbxassetid://142491708"
Sound34.Volume = 1
Sound35.Name = "Tick"
Sound35.Parent = Part29
Sound35.SoundId = "rbxassetid://154255000"
Sound35.Volume = 1
Sound36.Name = "UnequipSound"
Sound36.Parent = Part29
Sound36.Pitch = 1.5
Sound36.PlaybackSpeed = 1.5
Sound36.SoundId = "http://www.roblox.com/asset/?id=169310310"
Sound36.Volume = 0.30000001192092896
PointLight37.Name = "Flash"
PointLight37.Parent = Part29
PointLight37.Color = Color3.new(1, 0.568627, 0.192157)
PointLight37.Enabled = false
PointLight37.Shadows = true
Smoke38.Parent = Part29
Smoke38.Color = Color3.new(0.392157, 0.392157, 0.392157)
Smoke38.Enabled = false
Smoke38.Size = 0.10000000149011612
Smoke38.Opacity = 0.10000000149011612
Smoke38.RiseVelocity = 4
Part39.Name = "Flare"
Part39.Parent = Tool0
Part39.CFrame = CFrame.new(-68.7608643, 0.542001963, -53.3302917, 0, 1, 0, 0, 0, 1, 1, 0, 0)
Part39.Orientation = Vector3.new(-90, -90, 0)
Part39.Position = Vector3.new(-68.7608642578125, 0.5420019626617432, -53.330291748046875)
Part39.Rotation = Vector3.new(-90, 0, -90)
Part39.Color = Color3.new(0.854902, 0.521569, 0.254902)
Part39.Transparency = 1
Part39.Size = Vector3.new(0.20000000298023224, 0.20000000298023224, 0.20000000298023224)
Part39.Anchored = true
Part39.BottomSurface = Enum.SurfaceType.Smooth
Part39.BrickColor = BrickColor.new("Bright orange")
Part39.CanCollide = false
Part39.TopSurface = Enum.SurfaceType.Smooth
Part39.brickColor = BrickColor.new("Bright orange")
Part39.FormFactor = Enum.FormFactor.Custom
Part39.formFactor = Enum.FormFactor.Custom
SpecialMesh40.Parent = Part39
SpecialMesh40.Scale = Vector3.new(1.5, 2.8333332538604736, 1.5)
SpecialMesh40.MeshType = Enum.MeshType.Sphere
BillboardGui41.Name = "MuzzleFlash"
BillboardGui41.Parent = Part39
BillboardGui41.Enabled = false
BillboardGui41.Size = UDim2.new(2, 0, 2, 0)
ImageLabel42.Name = "Img"
ImageLabel42.Parent = BillboardGui41
ImageLabel42.Size = UDim2.new(1, 0, 1, 0)
ImageLabel42.BackgroundTransparency = 1
ImageLabel42.Image = "http://www.roblox.com/asset/?ID=103804383"
Script43.Parent = ImageLabel42
table.insert(cors,sandbox(Script43,function()
local imgs = {103740493,103804266,103804383}
for _,v in pairs(imgs) do
	game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?ID="..v)
end

script.Parent.Parent.Changed:connect(function ()
	if script.Parent.Parent.Enabled == true then
		wait(0.09)
		script.Parent.Parent.Enabled = false
	end
end)

while true do
	for i = 1,#imgs do
		script.Parent.Image = "http://www.roblox.com/asset/?ID="..imgs[i]
		wait(0.03)
	end
end

end))
LocalScript44.Name = "AnimationScript"
LocalScript44.Parent = Tool0
table.insert(cors,sandbox(LocalScript44,function()
-- Waits for the child of the specified parent
local function WaitForChild(parent, childName)
	while not parent:FindFirstChild(childName) do parent.ChildAdded:wait() end
	return parent[childName]
end

local Tool = script.Parent

local Animations = {}
local MyHumanoid
local MyCharacter


local function PlayAnimation(animationName)
	if Animations[animationName] then
		Animations[animationName]:Play()
	end
end

local function StopAnimation(animationName)
	if Animations[animationName] then
		Animations[animationName]:Stop()
	end
end


function OnEquipped(mouse)
	MyCharacter = Tool.Parent
	MyHumanoid = WaitForChild(MyCharacter, 'Humanoid')
	if MyHumanoid then
		Animations['EquipAnim'] = MyHumanoid:LoadAnimation(WaitForChild(Tool, 'EquipAnim5'))
		Animations['IdleAnim'] = MyHumanoid:LoadAnimation(WaitForChild(Tool, 'IdleAnim3'))
		Animations['OverheadAnim'] = MyHumanoid:LoadAnimation(WaitForChild(Tool, 'OverheadAnim2'))
		Animations['SlashAnim'] = MyHumanoid:LoadAnimation(WaitForChild(Tool, 'SlashAnim2'))
		Animations['ThrustAnim'] = MyHumanoid:LoadAnimation(WaitForChild(Tool, 'ThrustAnim2'))
		Animations['UnequipAnim'] = MyHumanoid:LoadAnimation(WaitForChild(Tool, 'UnequipAnim2'))
	end
	PlayAnimation('EquipAnim')
	PlayAnimation('IdleAnim')
end

function OnUnequipped()
	for animName, _ in pairs(Animations) do
		StopAnimation(animName)
	end
end

Tool.Equipped:connect(OnEquipped)
Tool.Unequipped:connect(OnUnequipped)

WaitForChild(Tool, 'PlaySlash').Changed:connect(
	function (value)
		--if value then
			PlayAnimation('SlashAnim')
		--else
		--	StopAnimation('SlashAnim')
		--end
	end)

WaitForChild(Tool, 'PlayThrust').Changed:connect(
	function (value)
		--if value then
			PlayAnimation('ThrustAnim')
		--else
		--	StopAnimation('ThrustAnim')
		--end
	end)

WaitForChild(Tool, 'PlayOverhead').Changed:connect(
	function (value)
		--if value then
			PlayAnimation('OverheadAnim')
		--else
		--	StopAnimation('OverheadAnim')
		--end
	end)

end))
LocalScript45.Name = "BackupWeld"
LocalScript45.Parent = Tool0
table.insert(cors,sandbox(LocalScript45,function()
function Weld(x,y)
	local W = Instance.new("Weld")
	W.Part0 = x
	W.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse()*CJ
	local C1 = y.CFrame:inverse()*CJ
	W.C0 = C0
	W.C1 = C1
	W.Parent = x
end

function Get(A)
	if A.className == "Part" then
		Weld(script.Parent.Handle, A)
		A.Anchored = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end

function Finale()
	Get(script.Parent)
end

script.Parent.Equipped:connect(Finale)
script.Parent.Unequipped:connect(Finale)
Finale()
end))
LocalScript46.Name = "HandgunScript"
LocalScript46.Parent = Tool0
table.insert(cors,sandbox(LocalScript46,function()
--------------------- TEMPLATE WEAPON ---------------------------
--edited by DestinyHarbinger
-- Waits for the child of the specified parent
local function WaitForChild(parent, childName)
	while not parent:FindFirstChild(childName) do parent.ChildAdded:wait() end
	return parent[childName]
end

----- TOOL DATA -----
-- How much damage a bullet does
local Damage = 14
-- How many times per second the gun can fire
local FireRate = 0.12 / 1
-- The maximum distance the can can shoot, this value should never go above 1000
local Range = 350
-- In radians the minimum accuracy penalty
local MinSpread = 0.008
-- In radian the maximum accuracy penalty
local MaxSpread = 0.06
-- Number of bullets in a clip
local ClipSize = 30
-- DefaultValue for spare ammo
local SpareAmmo = 2100
-- The amount the aim will increase or decrease by
-- decreases this number reduces the speed that recoil takes effect
local AimInaccuracyStepAmount = .15
-- Time it takes to reload weapon
local ReloadTime = 2.04
----------------------------------------

-- Colors
local FriendlyReticleColor = Color3.new(0, 1, 0)
local EnemyReticleColor	= Color3.new(1, 0, 0)
local NeutralReticleColor	= Color3.new(1, 1, 1)

local Spread = MinSpread
local AmmoInClip = ClipSize

local Tool = script.Parent
local Handle = WaitForChild(Tool, 'Handle')
local Barrel = WaitForChild(Tool, 'Flare')
local WeaponGui = nil

local LeftButtonDown
local Reloading = false
local IsShooting = false
local Pitch = script.Parent.Handle.FireSound

-- Player specific convenience variables
local MyPlayer = nil
local MyCharacter = nil
local MyHumanoid = nil
local MyTorso = nil
local MyMouse = nil


local RecoilAnim
local RecoilTrack = nil

local ReloadAnim
local ReloadTrack = nil

local IconURL = Tool.TextureId  
local DebrisService = game:GetService('Debris')
local PlayersService = game:GetService('Players')


local FireSound

local OnFireConnection = nil
local OnReloadConnection = nil

local DecreasedAimLastShot = false
local LastSpreadUpdate = time()

local flare = script.Parent:WaitForChild("Flare")

local FlashHolder = nil


local WorldToCellFunction = Workspace.Terrain.WorldToCellPreferSolid
local GetCellFunction = Workspace.Terrain.GetCell

function RayIgnoreCheck(hit, pos)
	if hit then
		if hit.Transparency >= 1 or string.lower(hit.Name) == "water" or
				hit.Name == "Effect" or hit.Name == "Rocket" or hit.Name == "Bullet" or
				hit.Name == "Handle" or hit:IsDescendantOf(MyCharacter) then
			return true
		elseif hit:IsA('Terrain') and pos then
			local cellPos = WorldToCellFunction(Workspace.Terrain, pos)
			if cellPos then
				local cellMat = GetCellFunction(Workspace.Terrain, cellPos.x, cellPos.y, cellPos.z)
				if cellMat and cellMat == Enum.CellMaterial.Water then
					return true
				end
			end
		end
	end
	return false
end

--vec should be a unit vector, and 0 < rayLength <= 1000
function RayCast(startPos, vec, rayLength)
	local hitObject, hitPos = game.Workspace:FindPartOnRay(Ray.new(startPos + (vec * .01), vec * rayLength), Handle)
	if hitObject and hitPos then
		local distance = rayLength - (hitPos - startPos).magnitude
		if RayIgnoreCheck(hitObject, hitPos) and distance > 0 then
			-- there is a chance here for potential infinite recursion
			return RayCast(hitPos, vec, distance)
		end
	end
	return hitObject, hitPos
end



function TagHumanoid(humanoid, player)
	-- Add more tags here to customize what tags are available.
	while humanoid:FindFirstChild('creator') do
		humanoid:FindFirstChild('creator'):Destroy()
	end 
	local creatorTag = Instance.new("ObjectValue")
	creatorTag.Value = player
	creatorTag.Name = "creator"
	creatorTag.Parent = humanoid
	DebrisService:AddItem(creatorTag, 1.5)

	local weaponIconTag = Instance.new("StringValue")
	weaponIconTag.Value = IconURL
	weaponIconTag.Name = "icon"
	weaponIconTag.Parent = creatorTag
end


local function CreateBullet(bulletPos)
	local bullet = Instance.new('Part', Workspace)
	bullet.FormFactor = Enum.FormFactor.Custom
	bullet.Size = Vector3.new(0.1, 0.1, 0.1)
	bullet.BrickColor = BrickColor.new("Black")
	bullet.Shape = Enum.PartType.Block
	bullet.CanCollide = false
	bullet.CFrame = CFrame.new(bulletPos)
	bullet.Anchored = true
	bullet.TopSurface = Enum.SurfaceType.Smooth
	bullet.BottomSurface = Enum.SurfaceType.Smooth
	bullet.Name = 'Bullet'
	DebrisService:AddItem(bullet, 2.5)
	
	local shell = Instance.new("Part")
	shell.CFrame = Tool.Handle.CFrame * CFrame.fromEulerAnglesXYZ(1.5,0,0)
	shell.Size = Vector3.new(0,0,0)
	shell.BrickColor = BrickColor.new(226)
	shell.Parent = game.Workspace
	shell.CFrame = script.Parent.Handle.CFrame
	shell.CanCollide = false
	shell.Transparency = 0
	shell.BottomSurface = 0
	shell.TopSurface = 0
	shell.Name = "Shell"
	shell.Velocity = Tool.Handle.CFrame.lookVector * 35 + Vector3.new(math.random(-10,10),20,math.random(-10,20))
	shell.RotVelocity = Vector3.new(0,200,0)
	DebrisService:AddItem(shell, 1)

	local shellmesh = Instance.new("SpecialMesh")
	shellmesh.Scale = Vector3.new(0,0,0)
	shellmesh.Parent = shell
	
	return bullet
end

local function Reload()
	if not Reloading then
		Reloading = true
		-- Don't reload if you are already full or have no extra ammo
		if AmmoInClip ~= ClipSize and SpareAmmo > 0 then
			if RecoilTrack then
				RecoilTrack:Stop()
			end
			if WeaponGui and WeaponGui:FindFirstChild('Crosshair') then
				if WeaponGui.Crosshair:FindFirstChild('ReloadingLabel') then
					WeaponGui.Crosshair.ReloadingLabel.Visible = true
				end
			end
			if ReloadTrack then
				ReloadTrack:Play()
			end
			script.Parent.Handle.Reload:Play()
			wait(ReloadTime)
			-- Only use as much ammo as you have
			local ammoToUse = math.min(ClipSize - AmmoInClip, SpareAmmo)
			AmmoInClip = AmmoInClip + ammoToUse
			SpareAmmo = SpareAmmo - ammoToUse
			UpdateAmmo(AmmoInClip)
			--WeaponGui.Reload.Visible = false
			if ReloadTrack then
				ReloadTrack:Stop()
			end
		end
		Reloading = false
	end
end

function OnFire()
	if IsShooting then return end
	if MyHumanoid and MyHumanoid.Health > 0 then
		if RecoilTrack and AmmoInClip > 0 then
			RecoilTrack:Play()
		end
		IsShooting = true
		while LeftButtonDown and AmmoInClip > 0 and not Reloading do
			if Spread and not DecreasedAimLastShot then
				Spread = math.min(MaxSpread, Spread + AimInaccuracyStepAmount)
				UpdateCrosshair(Spread)
			end
			DecreasedAimLastShot = not DecreasedAimLastShot
			if Handle:FindFirstChild('FireSound') then
				Pitch.Pitch = 1
				Handle.FireSound:Play()
				Handle.Flash.Enabled = true
				flare.MuzzleFlash.Enabled = true
				--Handle.Smoke.Enabled=true --This is optional
			end
			if MyMouse then
				local targetPoint = MyMouse.Hit.p
				local shootDirection = (targetPoint - Barrel.Position).unit
				-- Adjust the shoot direction randomly off by a little bit to account for recoil
				shootDirection = CFrame.Angles((0.5 - math.random()) * 2 * Spread,
																(0.5 - math.random()) * 2 * Spread,
																(0.5 - math.random()) * 2 * Spread) * shootDirection
				local hitObject, bulletPos = RayCast(Barrel.Position, shootDirection, Range)
				local bullet
				-- Create a bullet here
				if hitObject then
					bullet = CreateBullet(bulletPos)
				end
				if hitObject and hitObject.Parent then
					local hitHumanoid = hitObject.Parent:FindFirstChild("Humanoid")
					if hitHumanoid then
						local hitPlayer = game.Players:GetPlayerFromCharacter(hitHumanoid.Parent)
						if hitObject then
							TagHumanoid(hitHumanoid, MyPlayer)
							hitHumanoid:TakeDamage(Damage)
							if bullet then
								bullet:Destroy()
								bullet = nil
								WeaponGui.Crosshair.Hit:Play()
								--bullet.Transparency = 1
							end
							Spawn(UpdateTargetHit)
						end
					end
				end
				AmmoInClip = AmmoInClip - 1
				UpdateAmmo(AmmoInClip)
			end
			wait(FireRate)
		end
		Handle.Flash.Enabled = false
		IsShooting = false
		flare.MuzzleFlash.Enabled = false
		--Handle.Smoke.Enabled=false --This is optional
		if AmmoInClip == 0 then
			Handle.Tick:Play()
			--WeaponGui.Reload.Visible = true
			Reload()
		end
		if RecoilTrack then
			RecoilTrack:Stop()
		end
	end
end

local TargetHits = 0
function UpdateTargetHit()
	TargetHits = TargetHits + 1
	if WeaponGui and WeaponGui:FindFirstChild('Crosshair') and WeaponGui.Crosshair:FindFirstChild('TargetHitImage') then
		WeaponGui.Crosshair.TargetHitImage.Visible = true
	end
	wait(0.5)
	TargetHits = TargetHits - 1
	if TargetHits == 0 and WeaponGui and WeaponGui:FindFirstChild('Crosshair') and WeaponGui.Crosshair:FindFirstChild('TargetHitImage') then
		WeaponGui.Crosshair.TargetHitImage.Visible = false
	end
end

function UpdateCrosshair(value, mouse)
	if WeaponGui then
		local absoluteY = 650
		WeaponGui.Crosshair:TweenSize(
			UDim2.new(0, value * absoluteY * 2 + 23, 0, value * absoluteY * 2 + 23),
			Enum.EasingDirection.Out,
			Enum.EasingStyle.Linear,
			0.33)
	end
end

function UpdateAmmo(value)
	if WeaponGui and WeaponGui:FindFirstChild('AmmoHud') and WeaponGui.AmmoHud:FindFirstChild('ClipAmmo') then
		WeaponGui.AmmoHud.ClipAmmo.Text = AmmoInClip
		if value > 0 and WeaponGui:FindFirstChild('Crosshair') and WeaponGui.Crosshair:FindFirstChild('ReloadingLabel') then
			WeaponGui.Crosshair.ReloadingLabel.Visible = false
		end
	end
	if WeaponGui and WeaponGui:FindFirstChild('AmmoHud') and WeaponGui.AmmoHud:FindFirstChild('TotalAmmo') then
		WeaponGui.AmmoHud.TotalAmmo.Text = SpareAmmo
	end
end


function OnMouseDown()
	LeftButtonDown = true
	OnFire()
end

function OnMouseUp()
	LeftButtonDown = false
end

function OnKeyDown(key)
	if string.lower(key) == 'r' then
		Reload()
		if RecoilTrack then
			RecoilTrack:Stop()
		end
	end
end


function OnEquipped(mouse)
	Handle.EquipSound:Play()
	Handle.EquipSound2:Play()
	Handle.UnequipSound:Stop()
	RecoilAnim = WaitForChild(Tool, 'Recoil')
	ReloadAnim = WaitForChild(Tool, 'Reload')
	FireSound  = WaitForChild(Handle, 'FireSound')

	MyCharacter = Tool.Parent
	MyPlayer = game:GetService('Players'):GetPlayerFromCharacter(MyCharacter)
	MyHumanoid = MyCharacter:FindFirstChild('Humanoid')
	MyTorso = MyCharacter:FindFirstChild('Torso')
	MyMouse = mouse
	Tip = WaitForChild(Tool, 'DonateGui'):Clone()
	if Tip and MyPlayer then
		Tip.Parent = MyPlayer.PlayerGui
		end
	WeaponGui = WaitForChild(Tool, 'WeaponHud'):Clone()
	if WeaponGui and MyPlayer then
		WeaponGui.Parent = MyPlayer.PlayerGui
		UpdateAmmo(AmmoInClip)
	end
	
	if RecoilAnim then
		RecoilTrack = MyHumanoid:LoadAnimation(RecoilAnim)
	end
	
	if ReloadAnim then
		ReloadTrack = MyHumanoid:LoadAnimation(ReloadAnim)
	end

	if MyMouse then
		-- Disable mouse icon
		MyMouse.Icon = "http://www.roblox.com/asset/?id=18662154"
		MyMouse.Button1Down:connect(OnMouseDown)
		MyMouse.Button1Up:connect(OnMouseUp)
		MyMouse.KeyDown:connect(OnKeyDown)
	end
end


-- Unequip logic here
function OnUnequipped()
	Handle.UnequipSound:Play()
	Handle.EquipSound:Stop()
	Handle.EquipSound2:Stop()
	LeftButtonDown = false
	flare.MuzzleFlash.Enabled = false
	Reloading = false
	MyCharacter = nil
	MyHumanoid = nil
	MyTorso = nil
	MyPlayer = nil
	MyMouse = nil
	if OnFireConnection then
		OnFireConnection:disconnect()
	end
	if OnReloadConnection then
		OnReloadConnection:disconnect()
	end
	if FlashHolder then
		FlashHolder = nil
	end
	if WeaponGui then
		WeaponGui.Parent = nil
		WeaponGui = nil
	end
	if Tip then
		Tip.Parent = nil
		Tip = nil
	end
	if RecoilTrack then
		RecoilTrack:Stop()
	end
	if ReloadTrack then
		ReloadTrack:Stop()
	end
end

local function SetReticleColor(color)
	if WeaponGui and WeaponGui:FindFirstChild('Crosshair') then
		for _, line in pairs(WeaponGui.Crosshair:GetChildren()) do
			if line:IsA('Frame') then
				line.BorderColor3 = color
			end
		end
	end
end


Tool.Equipped:connect(OnEquipped)
Tool.Unequipped:connect(OnUnequipped)

while true do
	wait(0.033)
	if WeaponGui and WeaponGui:FindFirstChild('Crosshair') and MyMouse then
		WeaponGui.Crosshair.Position = UDim2.new(0, MyMouse.X, 0, MyMouse.Y)
		SetReticleColor(NeutralReticleColor)

		local target = MyMouse.Target
		if target and target.Parent then
			local player = PlayersService:GetPlayerFromCharacter(target.Parent)
			if player then
				if MyPlayer.Neutral or player.TeamColor ~= MyPlayer.TeamColor then
					SetReticleColor(EnemyReticleColor)
				else
					SetReticleColor(FriendlyReticleColor)
				end
			end
		end
	end
	if Spread and not IsShooting then
		local currTime = time()
		if currTime - LastSpreadUpdate > FireRate * 2 then
			LastSpreadUpdate = currTime
			Spread = math.max(MinSpread, Spread - AimInaccuracyStepAmount)
			UpdateCrosshair(Spread, MyMouse)
		end
	end
end

end))
Animation47.Name = "Crawl"
Animation47.Parent = Tool0
Animation47.AnimationId = "http://www.roblox.com/asset?id=182749109"
Animation48.Name = "Reload"
Animation48.Parent = Tool0
Animation48.AnimationId = "rbxassetid://582576744"
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
