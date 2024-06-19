
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
StringValue2 = Instance.new("StringValue")
Model3 = Instance.new("Model")
MeshPart4 = Instance.new("MeshPart")
Beam5 = Instance.new("Beam")
WeldConstraint6 = Instance.new("WeldConstraint")
Motor6D7 = Instance.new("Motor6D")
Sound8 = Instance.new("Sound")
Sound9 = Instance.new("Sound")
MeshPart10 = Instance.new("MeshPart")
MeshPart11 = Instance.new("MeshPart")
Configuration12 = Instance.new("Configuration")
StringValue13 = Instance.new("StringValue")
NumberValue14 = Instance.new("NumberValue")
NumberValue15 = Instance.new("NumberValue")
IntValue16 = Instance.new("IntValue")
NumberValue17 = Instance.new("NumberValue")
NumberValue18 = Instance.new("NumberValue")
NumberValue19 = Instance.new("NumberValue")
NumberValue20 = Instance.new("NumberValue")
NumberValue21 = Instance.new("NumberValue")
StringValue22 = Instance.new("StringValue")
NumberValue23 = Instance.new("NumberValue")
NumberValue24 = Instance.new("NumberValue")
NumberValue25 = Instance.new("NumberValue")
Folder26 = Instance.new("Folder")
IntValue27 = Instance.new("IntValue")
RemoteEvent28 = Instance.new("RemoteEvent")
Folder29 = Instance.new("Folder")
ScreenGui30 = Instance.new("ScreenGui")
Frame31 = Instance.new("Frame")
ImageLabel32 = Instance.new("ImageLabel")
UIAspectRatioConstraint33 = Instance.new("UIAspectRatioConstraint")
Frame34 = Instance.new("Frame")
Frame35 = Instance.new("Frame")
Frame36 = Instance.new("Frame")
Frame37 = Instance.new("Frame")
Frame38 = Instance.new("Frame")
ImageButton39 = Instance.new("ImageButton")
ImageButton40 = Instance.new("ImageButton")
Frame41 = Instance.new("Frame")
ImageButton42 = Instance.new("ImageButton")
ImageButton43 = Instance.new("ImageButton")
Folder44 = Instance.new("Folder")
Frame45 = Instance.new("Frame")
ImageLabel46 = Instance.new("ImageLabel")
ImageLabel47 = Instance.new("ImageLabel")
ImageLabel48 = Instance.new("ImageLabel")
ImageLabel49 = Instance.new("ImageLabel")
UIAspectRatioConstraint50 = Instance.new("UIAspectRatioConstraint")
Frame51 = Instance.new("Frame")
UIAspectRatioConstraint52 = Instance.new("UIAspectRatioConstraint")
ImageLabel53 = Instance.new("ImageLabel")
Folder54 = Instance.new("Folder")
Frame55 = Instance.new("Frame")
ImageLabel56 = Instance.new("ImageLabel")
UIAspectRatioConstraint57 = Instance.new("UIAspectRatioConstraint")
Configuration58 = Instance.new("Configuration")
StringValue59 = Instance.new("StringValue")
NumberValue60 = Instance.new("NumberValue")
NumberValue61 = Instance.new("NumberValue")
NumberValue62 = Instance.new("NumberValue")
NumberValue63 = Instance.new("NumberValue")
NumberValue64 = Instance.new("NumberValue")
UIAspectRatioConstraint65 = Instance.new("UIAspectRatioConstraint")
Folder66 = Instance.new("Folder")
Animation67 = Instance.new("Animation")
Animation68 = Instance.new("Animation")
Animation69 = Instance.new("Animation")
Folder70 = Instance.new("Folder")
Folder71 = Instance.new("Folder")
Part72 = Instance.new("Part")
ParticleEmitter73 = Instance.new("ParticleEmitter")
Beam74 = Instance.new("Beam")
Beam75 = Instance.new("Beam")
ParticleEmitter76 = Instance.new("ParticleEmitter")
Sound77 = Instance.new("Sound")
Part78 = Instance.new("Part")
Beam79 = Instance.new("Beam")
Beam80 = Instance.new("Beam")
Sound81 = Instance.new("Sound")
SpecialMesh82 = Instance.new("SpecialMesh")
Sound83 = Instance.new("Sound")
Part84 = Instance.new("Part")
Beam85 = Instance.new("Beam")
Beam86 = Instance.new("Beam")
ParticleEmitter87 = Instance.new("ParticleEmitter")
Sound88 = Instance.new("Sound")
SpecialMesh89 = Instance.new("SpecialMesh")
Part90 = Instance.new("Part")
ParticleEmitter91 = Instance.new("ParticleEmitter")
Beam92 = Instance.new("Beam")
Beam93 = Instance.new("Beam")
ParticleEmitter94 = Instance.new("ParticleEmitter")
Sound95 = Instance.new("Sound")
SpecialMesh96 = Instance.new("SpecialMesh")
Sound97 = Instance.new("Sound")
Part98 = Instance.new("Part")
Beam99 = Instance.new("Beam")
Beam100 = Instance.new("Beam")
Sound101 = Instance.new("Sound")
ParticleEmitter102 = Instance.new("ParticleEmitter")
ParticleEmitter103 = Instance.new("ParticleEmitter")
Part104 = Instance.new("Part")
ParticleEmitter105 = Instance.new("ParticleEmitter")
Beam106 = Instance.new("Beam")
Beam107 = Instance.new("Beam")
ParticleEmitter108 = Instance.new("ParticleEmitter")
Sound109 = Instance.new("Sound")
Part110 = Instance.new("Part")
Beam111 = Instance.new("Beam")
Beam112 = Instance.new("Beam")
Sound113 = Instance.new("Sound")
ParticleEmitter114 = Instance.new("ParticleEmitter")
Folder115 = Instance.new("Folder")
Part116 = Instance.new("Part")
BillboardGui117 = Instance.new("BillboardGui")
ImageLabel118 = Instance.new("ImageLabel")
Decal119 = Instance.new("Decal")
Part120 = Instance.new("Part")
Decal121 = Instance.new("Decal")
Part122 = Instance.new("Part")
SpecialMesh123 = Instance.new("SpecialMesh")
Part124 = Instance.new("Part")
Decal125 = Instance.new("Decal")
Decal126 = Instance.new("Decal")
Part127 = Instance.new("Part")
Decal128 = Instance.new("Decal")
Decal129 = Instance.new("Decal")
Folder130 = Instance.new("Folder")
MeshPart131 = Instance.new("MeshPart")
Sound132 = Instance.new("Sound")
MeshPart133 = Instance.new("MeshPart")
Sound134 = Instance.new("Sound")
LocalScript135 = Instance.new("LocalScript")
ModuleScript136 = Instance.new("ModuleScript")
Folder137 = Instance.new("Folder")
ModuleScript138 = Instance.new("ModuleScript")
ModuleScript139 = Instance.new("ModuleScript")
Script140 = Instance.new("Script")
Folder141 = Instance.new("Folder")
BoolValue142 = Instance.new("BoolValue")
BoolValue143 = Instance.new("BoolValue")
Folder144 = Instance.new("Folder")
ModuleScript145 = Instance.new("ModuleScript")
ModuleScript146 = Instance.new("ModuleScript")
ModuleScript147 = Instance.new("ModuleScript")
ModuleScript148 = Instance.new("ModuleScript")
ModuleScript149 = Instance.new("ModuleScript")
ModuleScript150 = Instance.new("ModuleScript")
ModuleScript151 = Instance.new("ModuleScript")
ModuleScript152 = Instance.new("ModuleScript")
ModuleScript153 = Instance.new("ModuleScript")
ModuleScript154 = Instance.new("ModuleScript")
ModuleScript155 = Instance.new("ModuleScript")
Tool0.Name = "Pistol3"
Tool0.Parent = mas
Part1.Name = "Handle"
Part1.Parent = Tool0
Part1.CFrame = CFrame.new(40.4273071, 3.48463202, -98.0095825, 0, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, 0)
Part1.Orientation = Vector3.new(0, -90, 0)
Part1.Position = Vector3.new(40.42730712890625, 3.4846320152282715, -98.00958251953125)
Part1.Rotation = Vector3.new(0, -90, 0)
Part1.Transparency = 1
Part1.Size = Vector3.new(1, 1, 1)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.CanCollide = false
Part1.TopSurface = Enum.SurfaceType.Smooth
StringValue2.Name = "WeaponType"
StringValue2.Parent = Tool0
StringValue2.Value = "BulletWeapon"
Model3.Name = "Pistol"
Model3.Parent = Tool0
Model3.PrimaryPart = MeshPart4
MeshPart4.Name = "Pistol"
MeshPart4.Parent = Model3
MeshPart4.CFrame = CFrame.new(40.1701317, 3.55894041, -97.9416122, 0, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, 0)
MeshPart4.Orientation = Vector3.new(0, -90, 0)
MeshPart4.Position = Vector3.new(40.17013168334961, 3.5589404106140137, -97.94161224365234)
MeshPart4.Rotation = Vector3.new(0, -90, 0)
MeshPart4.Color = Color3.new(0.356863, 0.364706, 0.411765)
MeshPart4.Size = Vector3.new(0.19254671037197113, 0.916520357131958, 1.3615094423294067)
MeshPart4.BrickColor = BrickColor.new("Smoky grey")
MeshPart4.Material = Enum.Material.Metal
MeshPart4.brickColor = BrickColor.new("Smoky grey")
MeshPart4.TextureID = "rbxassetid://3361055083"
Beam5.Name = "MuzzleFlash"
Beam5.Parent = MeshPart4
Beam5.Attachment0 = nil
Beam5.Attachment1 = nil
Beam5.Color = ColorSequence.new(Color3.new(0.839216, 0.670588, 0),Color3.new(1, 0.917647, 0.435294))
Beam5.Enabled = false
Beam5.LightEmission = 1
Beam5.Segments = 5
Beam5.Texture = "rbxassetid://872910628"
Beam5.TextureSpeed = 0
Beam5.Transparency = NumberSequence.new(0,0)
WeldConstraint6.Parent = MeshPart4
WeldConstraint6.Part0 = MeshPart4
WeldConstraint6.Part1 = MeshPart11
Motor6D7.Name = "BoltMotor"
Motor6D7.Parent = MeshPart4
Motor6D7.C0 = CFrame.new(0, 0.357795715, 0.0619354248, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Motor6D7.Part0 = MeshPart4
Motor6D7.Part1 = MeshPart10
Motor6D7.part1 = MeshPart10
Sound8.Name = "Fired"
Sound8.Parent = MeshPart4
Sound8.SoundId = "rbxassetid://3806566911"
Sound9.Name = "Reload"
Sound9.Parent = MeshPart4
Sound9.SoundId = "rbxassetid://3821789416"
MeshPart10.Name = "Bolt"
MeshPart10.Parent = Model3
MeshPart10.CFrame = CFrame.new(40.1081963, 3.91673613, -97.9416122, 0, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, 0)
MeshPart10.Orientation = Vector3.new(0, -90, 0)
MeshPart10.Position = Vector3.new(40.10819625854492, 3.916736125946045, -97.94161224365234)
MeshPart10.Rotation = Vector3.new(0, -90, 0)
MeshPart10.Color = Color3.new(0.356863, 0.364706, 0.411765)
MeshPart10.Size = Vector3.new(0.15566813945770264, 0.2797887921333313, 1.2121586799621582)
MeshPart10.BrickColor = BrickColor.new("Smoky grey")
MeshPart10.Material = Enum.Material.Metal
MeshPart10.brickColor = BrickColor.new("Smoky grey")
MeshPart10.TextureID = "rbxassetid://3361057436"
MeshPart11.Name = "Magazine"
MeshPart11.Parent = Model3
MeshPart11.CFrame = CFrame.new(40.5370598, 3.486835, -97.9416122, 0, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, 0)
MeshPart11.Orientation = Vector3.new(0, -90, 0)
MeshPart11.Position = Vector3.new(40.53705978393555, 3.48683500289917, -97.94161224365234)
MeshPart11.Rotation = Vector3.new(0, -90, 0)
MeshPart11.Color = Color3.new(0.356863, 0.364706, 0.411765)
MeshPart11.Size = Vector3.new(0.10618136823177338, 0.7854049801826477, 0.5009225010871887)
MeshPart11.BrickColor = BrickColor.new("Smoky grey")
MeshPart11.Material = Enum.Material.Metal
MeshPart11.brickColor = BrickColor.new("Smoky grey")
MeshPart11.TextureID = "rbxassetid://3361057436"
Configuration12.Parent = Tool0
StringValue13.Name = "ShotEffect"
StringValue13.Parent = Configuration12
StringValue13.Value = "Bullet"
NumberValue14.Name = "ShotCooldown"
NumberValue14.Parent = Configuration12
NumberValue14.Value = 0.2
NumberValue15.Name = "GravityFactor"
NumberValue15.Parent = Configuration12
NumberValue15.Value = 0.5
IntValue16.Name = "AmmoCapacity"
IntValue16.Parent = Configuration12
IntValue16.Value = 10
NumberValue17.Name = "RecoilMin"
NumberValue17.Parent = Configuration12
NumberValue17.Value = 1.1
NumberValue18.Name = "RecoilMax"
NumberValue18.Parent = Configuration12
NumberValue18.Value = 1.2
NumberValue19.Name = "RecoilDecay"
NumberValue19.Parent = Configuration12
NumberValue19.Value = 0.8
NumberValue20.Name = "MuzzleFlashSize1"
NumberValue20.Parent = Configuration12
NumberValue20.Value = 0.9
NumberValue21.Name = "MuzzleFlashSize0"
NumberValue21.Parent = Configuration12
NumberValue21.Value = 0.7
StringValue22.Name = "CasingEffect"
StringValue22.Parent = Configuration12
StringValue22.Value = "PistolCasing"
NumberValue23.Name = "HitDamage"
NumberValue23.Parent = Configuration12
NumberValue23.Value = 20
NumberValue24.Name = "TotalRecoilMax"
NumberValue24.Parent = Configuration12
NumberValue24.Value = 1.3
NumberValue25.Name = "MaxSpread"
NumberValue25.Parent = Configuration12
NumberValue25.Value = 2
Folder26.Name = "WeaponsSystem"
Folder26.Parent = Tool0
IntValue27.Name = "Version"
IntValue27.Parent = Folder26
RemoteEvent28.Name = "WeaponData"
RemoteEvent28.Parent = Folder26
Folder29.Name = "Assets"
Folder29.Parent = Folder26
ScreenGui30.Name = "WeaponsSystemGui"
ScreenGui30.Parent = Folder29
ScreenGui30.AutoLocalize = false
ScreenGui30.Localize = false
ScreenGui30.ResetOnSpawn = false
ScreenGui30.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui30.DisplayOrder = 10000
Frame31.Name = "Scope"
Frame31.Parent = ScreenGui30
Frame31.Visible = false
Frame31.Size = UDim2.new(1, 0, 1, 0)
Frame31.BackgroundColor = BrickColor.new("Institutional white")
Frame31.BackgroundColor3 = Color3.new(1, 1, 1)
Frame31.BackgroundTransparency = 1
Frame31.ZIndex = 5
ImageLabel32.Name = "ScopeImage"
ImageLabel32.Parent = Frame31
ImageLabel32.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel32.Size = UDim2.new(1, 0, 0.949999988, 0)
ImageLabel32.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel32.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel32.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel32.BackgroundTransparency = 1
ImageLabel32.ZIndex = 2
ImageLabel32.Image = "rbxassetid://1598134910"
UIAspectRatioConstraint33.Parent = ImageLabel32
Frame34.Name = "LeftBlack"
Frame34.Parent = ImageLabel32
Frame34.Position = UDim2.new(0, 0, 0.5, 0)
Frame34.Size = UDim2.new(1, 0, 1, 0)
Frame34.AnchorPoint = Vector2.new(1, 0.5)
Frame34.BackgroundColor = BrickColor.new("Really black")
Frame34.BackgroundColor3 = Color3.new(0, 0, 0)
Frame34.BorderSizePixel = 0
Frame35.Name = "RightBlack"
Frame35.Parent = ImageLabel32
Frame35.Position = UDim2.new(1, 0, 0.5, 0)
Frame35.Size = UDim2.new(1, 0, 1, 0)
Frame35.AnchorPoint = Vector2.new(0, 0.5)
Frame35.BackgroundColor = BrickColor.new("Really black")
Frame35.BackgroundColor3 = Color3.new(0, 0, 0)
Frame35.BorderSizePixel = 0
Frame36.Name = "BottomBlack"
Frame36.Parent = ImageLabel32
Frame36.Position = UDim2.new(0.5, 0, 1, 0)
Frame36.Size = UDim2.new(5, 0, 1, 0)
Frame36.AnchorPoint = Vector2.new(0.5, 0)
Frame36.BackgroundColor = BrickColor.new("Really black")
Frame36.BackgroundColor3 = Color3.new(0, 0, 0)
Frame36.BorderSizePixel = 0
Frame37.Name = "TopBlack"
Frame37.Parent = ImageLabel32
Frame37.Position = UDim2.new(0.5, 0, 0, 0)
Frame37.Size = UDim2.new(5, 0, 1, 0)
Frame37.AnchorPoint = Vector2.new(0.5, 1)
Frame37.BackgroundColor = BrickColor.new("Really black")
Frame37.BackgroundColor3 = Color3.new(0, 0, 0)
Frame37.BorderSizePixel = 0
Frame38.Name = "SmallTouchscreen"
Frame38.Parent = ScreenGui30
Frame38.Visible = false
Frame38.Size = UDim2.new(1, 0, 1, 0)
Frame38.BackgroundColor = BrickColor.new("Institutional white")
Frame38.BackgroundColor3 = Color3.new(1, 1, 1)
Frame38.BackgroundTransparency = 1
Frame38.ZIndex = 10
ImageButton39.Name = "FireButton"
ImageButton39.Parent = Frame38
ImageButton39.Position = UDim2.new(1, -95, 1, -90)
ImageButton39.Size = UDim2.new(0, 72, 0, 72)
ImageButton39.Active = false
ImageButton39.BackgroundColor = BrickColor.new("Institutional white")
ImageButton39.BackgroundColor3 = Color3.new(1, 1, 1)
ImageButton39.BackgroundTransparency = 1
ImageButton39.ZIndex = 10
ImageButton39.Image = "rbxassetid://2804818047"
ImageButton40.Name = "AimButton"
ImageButton40.Parent = Frame38
ImageButton40.Position = UDim2.new(1, -25, 1, -148)
ImageButton40.Size = UDim2.new(0, 44, 0, 44)
ImageButton40.AnchorPoint = Vector2.new(1, 0)
ImageButton40.BackgroundColor = BrickColor.new("Institutional white")
ImageButton40.BackgroundColor3 = Color3.new(1, 1, 1)
ImageButton40.BackgroundTransparency = 1
ImageButton40.ZIndex = 10
ImageButton40.Image = "rbxassetid://2804583948"
Frame41.Name = "LargeTouchscreen"
Frame41.Parent = ScreenGui30
Frame41.Visible = false
Frame41.Size = UDim2.new(1, 0, 1, 0)
Frame41.BackgroundColor = BrickColor.new("Institutional white")
Frame41.BackgroundColor3 = Color3.new(1, 1, 1)
Frame41.BackgroundTransparency = 1
Frame41.ZIndex = 10
ImageButton42.Name = "FireButton"
ImageButton42.Parent = Frame41
ImageButton42.Position = UDim2.new(1, -170, 1, -210)
ImageButton42.Size = UDim2.new(0, 120, 0, 120)
ImageButton42.Active = false
ImageButton42.BackgroundColor = BrickColor.new("Institutional white")
ImageButton42.BackgroundColor3 = Color3.new(1, 1, 1)
ImageButton42.BackgroundTransparency = 1
ImageButton42.ZIndex = 10
ImageButton42.Image = "rbxassetid://2804818047"
ImageButton43.Name = "AimButton"
ImageButton43.Parent = Frame41
ImageButton43.Position = UDim2.new(1, -50, 1, -296)
ImageButton43.Size = UDim2.new(0, 88, 0, 88)
ImageButton43.AnchorPoint = Vector2.new(1, 0)
ImageButton43.BackgroundColor = BrickColor.new("Institutional white")
ImageButton43.BackgroundColor3 = Color3.new(1, 1, 1)
ImageButton43.BackgroundTransparency = 1
ImageButton43.ZIndex = 10
ImageButton43.Image = "rbxassetid://2804583948"
Folder44.Name = "ScalingElements"
Folder44.Parent = ScreenGui30
Frame45.Name = "Crosshair"
Frame45.Parent = Folder44
Frame45.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame45.Size = UDim2.new(0.0480000004, 0, 0.0480000004, 0)
Frame45.AnchorPoint = Vector2.new(0.5, 0.5)
Frame45.BackgroundColor = BrickColor.new("Institutional white")
Frame45.BackgroundColor3 = Color3.new(1, 1, 1)
Frame45.BackgroundTransparency = 1
ImageLabel46.Name = "Top"
ImageLabel46.Parent = Frame45
ImageLabel46.Position = UDim2.new(0.5, 0, 0, 0)
ImageLabel46.Size = UDim2.new(0.416700006, 0, 0.416999996, 0)
ImageLabel46.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel46.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel46.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel46.BackgroundTransparency = 1
ImageLabel46.Image = "rbxassetid://2755681329"
ImageLabel47.Name = "Bottom"
ImageLabel47.Parent = Frame45
ImageLabel47.Position = UDim2.new(0.5, 0, 1, 0)
ImageLabel47.Rotation = 180
ImageLabel47.Size = UDim2.new(0.416999996, 0, 0.416999996, 0)
ImageLabel47.AnchorPoint = Vector2.new(0.5, 1)
ImageLabel47.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel47.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel47.BackgroundTransparency = 1
ImageLabel47.Image = "rbxassetid://2755681329"
ImageLabel48.Name = "Left"
ImageLabel48.Parent = Frame45
ImageLabel48.Position = UDim2.new(0, 0, 0.5, 0)
ImageLabel48.Rotation = 270
ImageLabel48.Size = UDim2.new(0.416999996, 0, 0.416999996, 0)
ImageLabel48.AnchorPoint = Vector2.new(0, 0.5)
ImageLabel48.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel48.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel48.BackgroundTransparency = 1
ImageLabel48.Image = "rbxassetid://2755681329"
ImageLabel49.Name = "Right"
ImageLabel49.Parent = Frame45
ImageLabel49.Position = UDim2.new(1, 0, 0.5, 0)
ImageLabel49.Rotation = 90
ImageLabel49.Size = UDim2.new(0.416999996, 0, 0.416999996, 0)
ImageLabel49.AnchorPoint = Vector2.new(1, 0.5)
ImageLabel49.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel49.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel49.BackgroundTransparency = 1
ImageLabel49.Image = "rbxassetid://2755681329"
UIAspectRatioConstraint50.Parent = Frame45
Frame51.Name = "HitMarker"
Frame51.Parent = Folder44
Frame51.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame51.Size = UDim2.new(0.0480000004, 0, 0.0480000004, 0)
Frame51.AnchorPoint = Vector2.new(0.5, 0.5)
Frame51.BackgroundColor = BrickColor.new("Institutional white")
Frame51.BackgroundColor3 = Color3.new(1, 1, 1)
Frame51.BackgroundTransparency = 1
UIAspectRatioConstraint52.Parent = Frame51
ImageLabel53.Name = "HitMarkerImage"
ImageLabel53.Parent = Frame51
ImageLabel53.Position = UDim2.new(0.5, 0, 1, 0)
ImageLabel53.Rotation = 180
ImageLabel53.Size = UDim2.new(1, 0, 1, 0)
ImageLabel53.AnchorPoint = Vector2.new(0.5, 1)
ImageLabel53.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel53.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel53.BackgroundTransparency = 1
ImageLabel53.Image = "rbxassetid://285779644"
ImageLabel53.ImageTransparency = 1
Folder54.Name = "DirectionalIndicators"
Folder54.Parent = Folder44
Frame55.Name = "DamageIndicator"
Frame55.Parent = Folder54
Frame55.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame55.Rotation = 180
Frame55.Size = UDim2.new(0.180000007, 0, 0.360000014, 0)
Frame55.AnchorPoint = Vector2.new(0.5, 0.5)
Frame55.BackgroundColor = BrickColor.new("Institutional white")
Frame55.BackgroundColor3 = Color3.new(1, 1, 1)
Frame55.BackgroundTransparency = 1
ImageLabel56.Name = "DamageIndicator"
ImageLabel56.Parent = Frame55
ImageLabel56.Position = UDim2.new(0.5, 0, 1, 0)
ImageLabel56.Rotation = 90
ImageLabel56.Size = UDim2.new(1, 0, 0.5, 0)
ImageLabel56.AnchorPoint = Vector2.new(0.5, 0.620000005)
ImageLabel56.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel56.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel56.BackgroundTransparency = 1
ImageLabel56.Image = "rbxassetid://3498623805"
ImageLabel56.ImageColor3 = Color3.new(0.898039, 0, 0)
ImageLabel56.ImageTransparency = 1
ImageLabel56.ScaleType = Enum.ScaleType.Slice
UIAspectRatioConstraint57.Parent = ImageLabel56
UIAspectRatioConstraint57.AspectRatio = 0.2720000147819519
Configuration58.Parent = Frame55
StringValue59.Name = "Name"
StringValue59.Parent = Configuration58
StringValue59.Value = "DamageIndicator"
NumberValue60.Name = "TimeBeforeFade"
NumberValue60.Parent = Configuration58
NumberValue60.Value = 1.5
NumberValue61.Name = "FadeTime"
NumberValue61.Parent = Configuration58
NumberValue61.Value = 1
NumberValue62.Name = "TransparencyBeforeFade"
NumberValue62.Parent = Configuration58
NumberValue62.Value = 0.25
NumberValue63.Name = "DistanceLevelFromCenter"
NumberValue63.Parent = Configuration58
NumberValue63.Value = 6
NumberValue64.Name = "WidthLevel"
NumberValue64.Parent = Configuration58
NumberValue64.Value = 6
UIAspectRatioConstraint65.Parent = Frame55
Folder66.Name = "Animations"
Folder66.Parent = Folder29
Animation67.Name = "RifleAim"
Animation67.Parent = Folder66
Animation67.AnimationId = "rbxassetid://3972164452"
Animation68.Name = "RifleAimDownSights"
Animation68.Parent = Folder66
Animation68.AnimationId = "rbxassetid://3972157449"
Animation69.Name = "RifleReload"
Animation69.Parent = Folder66
Animation69.AnimationId = "rbxassetid://3972131105"
Folder70.Name = "Effects"
Folder70.Parent = Folder29
Folder71.Name = "Shots"
Folder71.Parent = Folder70
Part72.Name = "Bullet"
Part72.Parent = Folder71
Part72.CFrame = CFrame.new(40.9196777, 3.94201994, -98.0775146, 0.999111474, 0, 0.0421500131, 0, 1, 0, -0.0421500131, 0, 0.999111474)
Part72.Orientation = Vector3.new(0, 2.4159998893737793, 0)
Part72.Position = Vector3.new(40.919677734375, 3.9420199394226074, -98.0775146484375)
Part72.Rotation = Vector3.new(0, 2.4159998893737793, 0)
Part72.Transparency = 1
Part72.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806)
Part72.Anchored = true
Part72.BottomSurface = Enum.SurfaceType.Smooth
Part72.CanCollide = false
Part72.TopSurface = Enum.SurfaceType.Smooth
ParticleEmitter73.Name = "TrailParticles"
ParticleEmitter73.Parent = mas
ParticleEmitter73.Speed = NumberRange.new(0, 2)
ParticleEmitter73.Rotation = NumberRange.new(-180, 180)
ParticleEmitter73.Color = ColorSequence.new(Color3.new(0.423529, 0.329412, 0),Color3.new(0.760784, 0.607843, 0))
ParticleEmitter73.Enabled = false
ParticleEmitter73.Texture = "rbxassetid://3852340006"
ParticleEmitter73.Transparency = NumberSequence.new(0,0.08749997615814209,0.41249996423721313,1)
ParticleEmitter73.Size = NumberSequence.new(0.07000000029802322,0.07000000029802322)
ParticleEmitter73.Lifetime = NumberRange.new(0.25, 0.5)
ParticleEmitter73.Rate = 100
ParticleEmitter73.RotSpeed = NumberRange.new(-50, 50)
ParticleEmitter73.SpreadAngle = Vector2.new(30, 30)
ParticleEmitter73.VelocityInheritance = 0.30000001192092896
ParticleEmitter73.VelocitySpread = 30
Beam74.Name = "Beam0"
Beam74.Parent = Part72
Beam74.Attachment0 = nil
Beam74.Attachment1 = nil
Beam74.Enabled = false
Beam74.FaceCamera = true
Beam74.Segments = 50
Beam74.Texture = "rbxassetid://3867967806"
Beam74.TextureSpeed = 0
Beam74.Transparency = NumberSequence.new(1,0,0,1)
Beam74.Width0 = 0.10000000149011612
Beam74.Width1 = 0.25
Beam75.Name = "Beam1"
Beam75.Parent = Part72
Beam75.Attachment0 = nil
Beam75.Attachment1 = nil
Beam75.Color = ColorSequence.new(Color3.new(1, 0.966445, 0.826612),Color3.new(0.97731, 0.951751, 0.782223))
Beam75.Enabled = false
Beam75.FaceCamera = true
Beam75.LightEmission = 1
Beam75.Segments = 50
Beam75.Texture = "rbxassetid://1287002748"
Beam75.TextureSpeed = 0
Beam75.Transparency = NumberSequence.new(1,1)
Beam75.Width0 = 0.10000000149011612
Beam75.Width1 = 0.10000000149011612
ParticleEmitter76.Name = "HitParticles"
ParticleEmitter76.Parent = mas
ParticleEmitter76.Speed = NumberRange.new(0, 10)
ParticleEmitter76.Rotation = NumberRange.new(-180, 180)
ParticleEmitter76.Color = ColorSequence.new(Color3.new(1, 0, 1),Color3.new(1, 0, 1),Color3.new(0.333333, 0.309804, 0.290196),Color3.new(0.266667, 0.266667, 0.266667))
ParticleEmitter76.LightEmission = 0.10000000149011612
ParticleEmitter76.LightInfluence = 1
ParticleEmitter76.Texture = "rbxasset://textures/particles/smoke_main.dds"
ParticleEmitter76.Transparency = NumberSequence.new(1,0,0,0.6913580298423767,0.8456790447235107,0.9753086566925049,1)
ParticleEmitter76.Size = NumberSequence.new(0,2.0486111640930176,3.159722089767456,4.756944179534912,5.034722328186035)
ParticleEmitter76.Acceleration = Vector3.new(0, 5, 0)
ParticleEmitter76.Drag = 0.5
ParticleEmitter76.EmissionDirection = Enum.NormalId.Front
ParticleEmitter76.Lifetime = NumberRange.new(0.10000000149011612, 2)
ParticleEmitter76.Rate = 0
ParticleEmitter76.RotSpeed = NumberRange.new(-100, 100)
ParticleEmitter76.SpreadAngle = Vector2.new(30, 30)
ParticleEmitter76.VelocityInheritance = -0.0010000000474974513
ParticleEmitter76.VelocitySpread = 30
Sound77.Name = "HitSound"
Sound77.Parent = mas
Sound77.SoundId = "rbxassetid://1489924400"
Sound77.Volume = 0
Part78.Name = "Grenade"
Part78.Parent = Folder71
Part78.CFrame = CFrame.new(40.9196777, 3.94201994, -98.0775146, 0.999111474, 0, 0.0421500131, 0, 1, 0, -0.0421500131, 0, 0.999111474)
Part78.Orientation = Vector3.new(0, 2.4159998893737793, 0)
Part78.Position = Vector3.new(40.919677734375, 3.9420199394226074, -98.0775146484375)
Part78.Rotation = Vector3.new(0, 2.4159998893737793, 0)
Part78.Transparency = 1
Part78.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806)
Part78.Anchored = true
Part78.BottomSurface = Enum.SurfaceType.Smooth
Part78.CanCollide = false
Part78.TopSurface = Enum.SurfaceType.Smooth
Beam79.Name = "Beam0"
Beam79.Parent = Part78
Beam79.Attachment0 = nil
Beam79.Attachment1 = nil
Beam79.Color = ColorSequence.new(Color3.new(1, 0.796078, 0.270588),Color3.new(1, 0.798884, 0.280833),Color3.new(1, 0.964706, 0.886275))
Beam79.Enabled = false
Beam79.FaceCamera = true
Beam79.LightEmission = 1
Beam79.Segments = 50
Beam79.Texture = "rbxassetid://2463944225"
Beam79.TextureSpeed = 0
Beam79.Transparency = NumberSequence.new(1,0.9071038365364075,0,1)
Beam79.Width0 = 0.10000000149011612
Beam79.Width1 = 0.25
Beam80.Name = "Beam1"
Beam80.Parent = Part78
Beam80.Attachment0 = nil
Beam80.Attachment1 = nil
Beam80.Color = ColorSequence.new(Color3.new(1, 0.966445, 0.826612),Color3.new(0.97731, 0.951751, 0.782223))
Beam80.Enabled = false
Beam80.FaceCamera = true
Beam80.LightEmission = 1
Beam80.Segments = 50
Beam80.Texture = "rbxassetid://1287002748"
Beam80.TextureSpeed = 0
Beam80.Transparency = NumberSequence.new(1,0.9508196711540222,0.7650273442268372,0.43169403076171875,0,1)
Beam80.Width0 = 0.10000000149011612
Beam80.Width1 = 0.10000000149011612
Sound81.Name = "HitSound"
Sound81.Parent = mas
Sound81.SoundId = "rbxassetid://3963013256"
Sound81.Volume = 5
SpecialMesh82.Parent = Part78
SpecialMesh82.MeshId = "http://www.roblox.com/asset/?id=232379763"
SpecialMesh82.Scale = Vector3.new(1.5, 1.5, 1.5)
SpecialMesh82.TextureId = "http://www.roblox.com/asset/?id=232379808"
SpecialMesh82.MeshType = Enum.MeshType.FileMesh
Sound83.Name = "Flying"
Sound83.Parent = Part78
Sound83.Looped = true
Sound83.EmitterSize = 5
Sound83.MinDistance = 5
Sound83.SoundId = "rbxassetid://3963014042"
Part84.Name = "Arrow"
Part84.Parent = Folder71
Part84.CFrame = CFrame.new(40.9196777, 3.94201994, -98.0775146, 0.999111474, 0, 0.0421500131, 0, 1, 0, -0.0421500131, 0, 0.999111474)
Part84.Orientation = Vector3.new(0, 2.4159998893737793, 0)
Part84.Position = Vector3.new(40.919677734375, 3.9420199394226074, -98.0775146484375)
Part84.Rotation = Vector3.new(0, 2.4159998893737793, 0)
Part84.Transparency = 1
Part84.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806)
Part84.Anchored = true
Part84.BottomSurface = Enum.SurfaceType.Smooth
Part84.CanCollide = false
Part84.TopSurface = Enum.SurfaceType.Smooth
Beam85.Name = "Beam0"
Beam85.Parent = Part84
Beam85.Attachment0 = nil
Beam85.Attachment1 = nil
Beam85.Color = ColorSequence.new(Color3.new(1, 1, 1),Color3.new(1, 0.964706, 0.886275))
Beam85.Enabled = false
Beam85.FaceCamera = true
Beam85.LightEmission = 1
Beam85.Segments = 50
Beam85.Texture = "rbxassetid://2463944225"
Beam85.TextureLength = 0.5
Beam85.TextureSpeed = 0
Beam85.Transparency = NumberSequence.new(1,0.748633861541748,1,0.44262295961380005,1,0.25136613845825195,1,0.14754098653793335,0.8579235076904297,0,1,0,1,0,1)
Beam85.Width0 = 0.25
Beam85.Width1 = 0.25
Beam86.Name = "Beam1"
Beam86.Parent = Part84
Beam86.Attachment0 = nil
Beam86.Attachment1 = nil
Beam86.Color = ColorSequence.new(Color3.new(1, 1, 1),Color3.new(0.862745, 0.862745, 0.862745))
Beam86.Enabled = false
Beam86.FaceCamera = true
Beam86.LightEmission = 1
Beam86.Segments = 50
Beam86.Texture = "rbxassetid://1287002748"
Beam86.TextureSpeed = 0
Beam86.Transparency = NumberSequence.new(1,0.7540983557701111,0.5519125461578369,0.43169403076171875,0.43169403076171875,0.2841530442237854,1)
Beam86.Width0 = 0.25
Beam86.Width1 = 0.25
ParticleEmitter87.Name = "HitParticles"
ParticleEmitter87.Parent = mas
ParticleEmitter87.Speed = NumberRange.new(0, 10)
ParticleEmitter87.Rotation = NumberRange.new(-180, 180)
ParticleEmitter87.Color = ColorSequence.new(Color3.new(1, 0, 1),Color3.new(1, 0, 1),Color3.new(0.333333, 0.309804, 0.290196),Color3.new(0.266667, 0.266667, 0.266667))
ParticleEmitter87.LightEmission = 0.10000000149011612
ParticleEmitter87.LightInfluence = 1
ParticleEmitter87.Texture = "rbxasset://textures/particles/smoke_main.dds"
ParticleEmitter87.Transparency = NumberSequence.new(1,0,0,0.6913580298423767,0.8456790447235107,0.9753086566925049,1)
ParticleEmitter87.Size = NumberSequence.new(0,2.0486111640930176,3.159722089767456,4.756944179534912,5.034722328186035)
ParticleEmitter87.Acceleration = Vector3.new(0, 5, 0)
ParticleEmitter87.Drag = 0.5
ParticleEmitter87.EmissionDirection = Enum.NormalId.Front
ParticleEmitter87.Lifetime = NumberRange.new(0.10000000149011612, 2)
ParticleEmitter87.Rate = 0
ParticleEmitter87.RotSpeed = NumberRange.new(-100, 100)
ParticleEmitter87.SpreadAngle = Vector2.new(30, 30)
ParticleEmitter87.VelocityInheritance = -0.0010000000474974513
ParticleEmitter87.VelocitySpread = 30
Sound88.Name = "HitSound"
Sound88.Parent = mas
Sound88.SoundId = "rbxassetid://3963012401"
Sound88.Volume = 0.25
SpecialMesh89.Parent = Part84
SpecialMesh89.MeshId = "rbxassetid://2493118549"
SpecialMesh89.Offset = Vector3.new(0, 0, -0.8999999761581421)
SpecialMesh89.Scale = Vector3.new(0.43178001046180725, 0.43178001046180725, 0.43178001046180725)
SpecialMesh89.TextureId = "rbxassetid://2493025364"
SpecialMesh89.MeshType = Enum.MeshType.FileMesh
Part90.Name = "Rocket"
Part90.Parent = Folder71
Part90.CFrame = CFrame.new(40.9196777, 3.94201994, -98.0775146, 0.999111474, 0, 0.0421500131, 0, 1, 0, -0.0421500131, 0, 0.999111474)
Part90.Orientation = Vector3.new(0, 2.4159998893737793, 0)
Part90.Position = Vector3.new(40.919677734375, 3.9420199394226074, -98.0775146484375)
Part90.Rotation = Vector3.new(0, 2.4159998893737793, 0)
Part90.Transparency = 1
Part90.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806)
Part90.Anchored = true
Part90.BottomSurface = Enum.SurfaceType.Smooth
Part90.CanCollide = false
Part90.TopSurface = Enum.SurfaceType.Smooth
ParticleEmitter91.Name = "LeadingParticles"
ParticleEmitter91.Parent = mas
ParticleEmitter91.Speed = NumberRange.new(-5, -5)
ParticleEmitter91.Rotation = NumberRange.new(-180, 180)
ParticleEmitter91.Color = ColorSequence.new(Color3.new(1, 0.470588, 0.117647),Color3.new(1, 0.352941, 0.156863),Color3.new(0.815686, 0.490196, 0))
ParticleEmitter91.Enabled = false
ParticleEmitter91.LightEmission = 1
ParticleEmitter91.Texture = "rbxasset://textures/particles/fire_main.dds"
ParticleEmitter91.Transparency = NumberSequence.new(1,0.07407408952713013,0,0,0.09876543283462524,0.2530863881111145,1)
ParticleEmitter91.Size = NumberSequence.new(0.3125,0.34722208976745605,0.7291668653488159,1.5625,2.881944179534912)
ParticleEmitter91.Drag = 5
ParticleEmitter91.EmissionDirection = Enum.NormalId.Left
ParticleEmitter91.Lifetime = NumberRange.new(0.10000000149011612, 0.25)
ParticleEmitter91.Rate = 500
ParticleEmitter91.RotSpeed = NumberRange.new(-100, 100)
ParticleEmitter91.SpreadAngle = Vector2.new(10, 10)
ParticleEmitter91.VelocityInheritance = -0.10000000149011612
ParticleEmitter91.VelocitySpread = 10
Beam92.Name = "Beam0"
Beam92.Parent = Part90
Beam92.Attachment0 = nil
Beam92.Attachment1 = nil
Beam92.Color = ColorSequence.new(Color3.new(1, 0.796078, 0.270588),Color3.new(1, 0.798884, 0.280833),Color3.new(1, 0.964706, 0.886275))
Beam92.Enabled = false
Beam92.FaceCamera = true
Beam92.LightEmission = 1
Beam92.Segments = 50
Beam92.Texture = "rbxassetid://2463944225"
Beam92.TextureSpeed = 0
Beam92.Transparency = NumberSequence.new(1,0.9071038365364075,0,1)
Beam92.Width0 = 0.10000000149011612
Beam92.Width1 = 0.25
Beam93.Name = "Beam1"
Beam93.Parent = Part90
Beam93.Attachment0 = nil
Beam93.Attachment1 = nil
Beam93.Color = ColorSequence.new(Color3.new(1, 0.966445, 0.826612),Color3.new(0.97731, 0.951751, 0.782223))
Beam93.Enabled = false
Beam93.FaceCamera = true
Beam93.LightEmission = 1
Beam93.Segments = 50
Beam93.Texture = "rbxassetid://1287002748"
Beam93.TextureSpeed = 0
Beam93.Transparency = NumberSequence.new(1,0.9508196711540222,0.7650273442268372,0.43169403076171875,0,1)
Beam93.Width0 = 0.10000000149011612
Beam93.Width1 = 0.10000000149011612
ParticleEmitter94.Name = "HitParticles"
ParticleEmitter94.Parent = mas
ParticleEmitter94.Speed = NumberRange.new(0, 10)
ParticleEmitter94.Rotation = NumberRange.new(-180, 180)
ParticleEmitter94.Color = ColorSequence.new(Color3.new(1, 0.988235, 0.929412),Color3.new(0.97466, 0.925769, 0.797998),Color3.new(1, 0.803922, 0.0941176),Color3.new(1, 0.705882, 0.109804),Color3.new(0.196078, 0.133333, 0.0117647))
ParticleEmitter94.LightEmission = 1
ParticleEmitter94.Texture = "rbxasset://textures/particles/smoke_main.dds"
ParticleEmitter94.Transparency = NumberSequence.new(1,0,0.7654321193695068,0.9753086566925049,0.9876543283462524,1)
ParticleEmitter94.Size = NumberSequence.new(0,2.9166669845581055,2.3611111640930176,5.520833969116211,8.125)
ParticleEmitter94.Drag = 10
ParticleEmitter94.EmissionDirection = Enum.NormalId.Front
ParticleEmitter94.Lifetime = NumberRange.new(0.10000000149011612, 2)
ParticleEmitter94.Rate = 0
ParticleEmitter94.RotSpeed = NumberRange.new(-100, 100)
ParticleEmitter94.SpreadAngle = Vector2.new(15, 15)
ParticleEmitter94.VelocitySpread = 15
Sound95.Name = "HitSound"
Sound95.Parent = mas
Sound95.SoundId = "rbxassetid://3963015379"
Sound95.Volume = 5
SpecialMesh96.Parent = Part90
SpecialMesh96.MeshId = "rbxassetid://94690081"
SpecialMesh96.Offset = Vector3.new(0, 0, -2)
SpecialMesh96.Scale = Vector3.new(2, 2, 2)
SpecialMesh96.TextureId = "rbxassetid://94689966"
SpecialMesh96.MeshType = Enum.MeshType.FileMesh
Sound97.Name = "Flying"
Sound97.Parent = Part90
Sound97.Looped = true
Sound97.EmitterSize = 5
Sound97.MinDistance = 5
Sound97.SoundId = "rbxassetid://3963016451"
Sound97.Volume = 2
Part98.Name = "Railgun"
Part98.Parent = Folder71
Part98.CFrame = CFrame.new(40.9196777, 3.94201994, -98.0775146, 0.999111474, 0, 0.0421500131, 0, 1, 0, -0.0421500131, 0, 0.999111474)
Part98.Orientation = Vector3.new(0, 2.4159998893737793, 0)
Part98.Position = Vector3.new(40.919677734375, 3.9420199394226074, -98.0775146484375)
Part98.Rotation = Vector3.new(0, 2.4159998893737793, 0)
Part98.Transparency = 1
Part98.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806)
Part98.Anchored = true
Part98.BottomSurface = Enum.SurfaceType.Smooth
Part98.CanCollide = false
Part98.TopSurface = Enum.SurfaceType.Smooth
Beam99.Name = "Beam0"
Beam99.Parent = Part98
Beam99.Attachment0 = nil
Beam99.Attachment1 = nil
Beam99.Color = ColorSequence.new(Color3.new(1, 0.921569, 0.560784),Color3.new(1, 0.921569, 0.560784))
Beam99.Enabled = false
Beam99.FaceCamera = true
Beam99.LightEmission = 1
Beam99.Segments = 50
Beam99.Texture = "rbxassetid://1286995910"
Beam99.TextureSpeed = 0
Beam99.Transparency = NumberSequence.new(1,0,0,1)
Beam99.Width0 = 0.10000000149011612
Beam99.Width1 = 0.25
Beam100.Name = "Beam1"
Beam100.Parent = Part98
Beam100.Attachment0 = nil
Beam100.Attachment1 = nil
Beam100.Color = ColorSequence.new(Color3.new(1, 0.966445, 0.826612),Color3.new(0.97731, 0.951751, 0.782223))
Beam100.Enabled = false
Beam100.FaceCamera = true
Beam100.LightEmission = 1
Beam100.Segments = 50
Beam100.Texture = "rbxassetid://1287002748"
Beam100.TextureSpeed = 0
Beam100.Transparency = NumberSequence.new(1,0,0,1)
Beam100.Width0 = 0.10000000149011612
Beam100.Width1 = 0.10000000149011612
Sound101.Name = "HitSound"
Sound101.Parent = mas
Sound101.Pitch = 0.25
Sound101.PlaybackSpeed = 0.25
Sound101.SoundId = "rbxassetid://1489924400"
Sound101.Volume = 2
ParticleEmitter102.Name = "HitParticles"
ParticleEmitter102.Parent = mas
ParticleEmitter102.Speed = NumberRange.new(0, 2)
ParticleEmitter102.Rotation = NumberRange.new(-180, 180)
ParticleEmitter102.Color = ColorSequence.new(Color3.new(1, 1, 1),Color3.new(1, 0.976659, 0.943567),Color3.new(1, 0.690196, 0.25098),Color3.new(1, 0.588235, 0.172549),Color3.new(0.4, 0.0352941, 0.0352941),Color3.new(0.14902, 0.121569, 0.121569),Color3.new(0.14902, 0.14902, 0.14902))
ParticleEmitter102.Enabled = false
ParticleEmitter102.LightEmission = 1
ParticleEmitter102.Texture = "rbxassetid://552389687"
ParticleEmitter102.Transparency = NumberSequence.new(1,0,0,0.6913580298423767,0.8456790447235107,0.9753086566925049,1)
ParticleEmitter102.Size = NumberSequence.new(0,2.0486111640930176,3.159722089767456,4.756944179534912,5.034722328186035)
ParticleEmitter102.Acceleration = Vector3.new(0, 5, 0)
ParticleEmitter102.Drag = 0.5
ParticleEmitter102.EmissionDirection = Enum.NormalId.Front
ParticleEmitter102.Lifetime = NumberRange.new(0.10000000149011612, 1)
ParticleEmitter102.Rate = 0
ParticleEmitter102.RotSpeed = NumberRange.new(-100, 100)
ParticleEmitter102.SpreadAngle = Vector2.new(30, 30)
ParticleEmitter102.VelocityInheritance = -0.0010000000474974513
ParticleEmitter102.VelocitySpread = 30
ParticleEmitter103.Name = "MuzzleParticles"
ParticleEmitter103.Parent = Part98
ParticleEmitter103.Speed = NumberRange.new(5, 25)
ParticleEmitter103.Rotation = NumberRange.new(-180, 180)
ParticleEmitter103.Color = ColorSequence.new(Color3.new(1, 1, 1),Color3.new(1, 0.580392, 0.580392),Color3.new(0.188235, 0.0352941, 0.0352941))
ParticleEmitter103.Enabled = false
ParticleEmitter103.LightEmission = 0.5
ParticleEmitter103.LightInfluence = 0.5
ParticleEmitter103.Texture = "rbxassetid://552389687"
ParticleEmitter103.Transparency = NumberSequence.new(1,0.8395061492919922,0.9012345671653748,0.7037037014961243,0.8024691343307495,0.6728395223617554,0.9320987462997437,0.5617283582687378,0.895061731338501,0.6851851940155029,0.9259259104728699,1)
ParticleEmitter103.Size = NumberSequence.new(0,0.8333331346511841,3.194444179534912,0.625,0.7291668653488159,0,0.4166668653488159,0)
ParticleEmitter103.Drag = 8
ParticleEmitter103.EmissionDirection = Enum.NormalId.Front
ParticleEmitter103.Lifetime = NumberRange.new(0.5, 1)
ParticleEmitter103.Rate = 0
ParticleEmitter103.RotSpeed = NumberRange.new(-100, 100)
ParticleEmitter103.SpreadAngle = Vector2.new(30, 30)
ParticleEmitter103.VelocitySpread = 30
Part104.Name = "Plasma"
Part104.Parent = Folder71
Part104.CFrame = CFrame.new(40.9196777, 3.94201994, -98.0775146, 0.999111474, 0, 0.0421500131, 0, 1, 0, -0.0421500131, 0, 0.999111474)
Part104.Orientation = Vector3.new(0, 2.4159998893737793, 0)
Part104.Position = Vector3.new(40.919677734375, 3.9420199394226074, -98.0775146484375)
Part104.Rotation = Vector3.new(0, 2.4159998893737793, 0)
Part104.Transparency = 1
Part104.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806)
Part104.Anchored = true
Part104.BottomSurface = Enum.SurfaceType.Smooth
Part104.CanCollide = false
Part104.TopSurface = Enum.SurfaceType.Smooth
ParticleEmitter105.Name = "LeadingParticles"
ParticleEmitter105.Parent = mas
ParticleEmitter105.Speed = NumberRange.new(5, 10)
ParticleEmitter105.Rotation = NumberRange.new(-180, 180)
ParticleEmitter105.Color = ColorSequence.new(Color3.new(0.498039, 0.917647, 1),Color3.new(1, 1, 1))
ParticleEmitter105.Enabled = false
ParticleEmitter105.LightEmission = 1
ParticleEmitter105.Texture = "rbxasset://textures/particles/smoke_main.dds"
ParticleEmitter105.Transparency = NumberSequence.new(1,0,0,0.7407407760620117,0.9567901492118835,1)
ParticleEmitter105.Size = NumberSequence.new(0.3125,0.590277910232544,1.319444179534912,0.4166668653488159,0.20833313465118408,0)
ParticleEmitter105.Drag = 0.5
ParticleEmitter105.Lifetime = NumberRange.new(0.10000000149011612, 0.25)
ParticleEmitter105.LockedToPart = true
ParticleEmitter105.Rate = 100
ParticleEmitter105.RotSpeed = NumberRange.new(-100, 100)
ParticleEmitter105.SpreadAngle = Vector2.new(180, 180)
ParticleEmitter105.VelocitySpread = 180
Beam106.Name = "Beam0"
Beam106.Parent = Part104
Beam106.Attachment0 = nil
Beam106.Attachment1 = nil
Beam106.Color = ColorSequence.new(Color3.new(0.498039, 0.917647, 1),Color3.new(0.498039, 0.917647, 1))
Beam106.Enabled = false
Beam106.FaceCamera = true
Beam106.LightEmission = 1
Beam106.Segments = 50
Beam106.Texture = "rbxassetid://2463944225"
Beam106.TextureSpeed = 0
Beam106.Transparency = NumberSequence.new(1,0,0,1)
Beam106.Width0 = 0.10000000149011612
Beam106.Width1 = 0.25
Beam107.Name = "Beam1"
Beam107.Parent = Part104
Beam107.Attachment0 = nil
Beam107.Attachment1 = nil
Beam107.Color = ColorSequence.new(Color3.new(1, 0.966445, 0.826612),Color3.new(0.97731, 0.951751, 0.782223))
Beam107.Enabled = false
Beam107.FaceCamera = true
Beam107.LightEmission = 1
Beam107.Segments = 50
Beam107.Texture = "rbxassetid://1287002748"
Beam107.TextureSpeed = 0
Beam107.Transparency = NumberSequence.new(1,0,0,1)
Beam107.Width0 = 0.10000000149011612
Beam107.Width1 = 0.10000000149011612
ParticleEmitter108.Name = "HitParticles"
ParticleEmitter108.Parent = mas
ParticleEmitter108.Speed = NumberRange.new(0, 10)
ParticleEmitter108.Rotation = NumberRange.new(-180, 180)
ParticleEmitter108.Color = ColorSequence.new(Color3.new(0.607843, 0.937255, 1),Color3.new(0, 0.392157, 0.470588))
ParticleEmitter108.LightEmission = 1
ParticleEmitter108.Texture = "rbxasset://textures/particles/smoke_main.dds"
ParticleEmitter108.Transparency = NumberSequence.new(1,0,0.7654321193695068,0.9753086566925049,0.9876543283462524,1)
ParticleEmitter108.Size = NumberSequence.new(0,1.25,0.972222089767456,2.1180553436279297,3.506944179534912)
ParticleEmitter108.Drag = 10
ParticleEmitter108.EmissionDirection = Enum.NormalId.Front
ParticleEmitter108.Lifetime = NumberRange.new(0.5, 2)
ParticleEmitter108.Rate = 0
ParticleEmitter108.RotSpeed = NumberRange.new(-100, 100)
ParticleEmitter108.SpreadAngle = Vector2.new(15, 15)
ParticleEmitter108.VelocitySpread = 15
Sound109.Name = "HitSound"
Sound109.Parent = mas
Sound109.Pitch = 2
Sound109.PlaybackSpeed = 2
Sound109.SoundId = "rbxassetid://878000314"
Sound109.Volume = 0.25
Part110.Name = "CannonBall"
Part110.Parent = Folder71
Part110.CFrame = CFrame.new(40.1713524, 3.94201994, -98.0459442, 0.999111474, 0, 0.0421500131, 0, 1, 0, -0.0421500131, 0, 0.999111474)
Part110.Orientation = Vector3.new(0, 2.4159998893737793, 0)
Part110.Position = Vector3.new(40.17135238647461, 3.9420199394226074, -98.04594421386719)
Part110.Rotation = Vector3.new(0, 2.4159998893737793, 0)
Part110.Color = Color3.new(0.160784, 0.164706, 0.188235)
Part110.Transparency = 1
Part110.Size = Vector3.new(2, 2, 2)
Part110.BottomSurface = Enum.SurfaceType.Smooth
Part110.BrickColor = BrickColor.new("Black")
Part110.CustomPhysicalProperties = 13, 0.800000012, 0.0500000007, 10, 100
Part110.Material = Enum.Material.Metal
Part110.TopSurface = Enum.SurfaceType.Smooth
Part110.brickColor = BrickColor.new("Black")
Part110.Shape = Enum.PartType.Ball
Beam111.Name = "Beam0"
Beam111.Parent = Part110
Beam111.Attachment0 = nil
Beam111.Attachment1 = nil
Beam111.Color = ColorSequence.new(Color3.new(0.639216, 0.639216, 0.639216),Color3.new(0.34902, 0.34902, 0.34902))
Beam111.Enabled = false
Beam111.FaceCamera = true
Beam111.LightEmission = 1
Beam111.LightInfluence = 1
Beam111.Segments = 50
Beam111.Texture = "rbxassetid://2463944225"
Beam111.TextureSpeed = 0
Beam111.Transparency = NumberSequence.new(1,0,0,1)
Beam111.Width0 = 0.10000000149011612
Beam111.Width1 = 2
Beam112.Name = "Beam1"
Beam112.Parent = Part110
Beam112.Attachment0 = nil
Beam112.Attachment1 = nil
Beam112.Color = ColorSequence.new(Color3.new(1, 0.966445, 0.826612),Color3.new(0.97731, 0.951751, 0.782223))
Beam112.Enabled = false
Beam112.FaceCamera = true
Beam112.LightEmission = 1
Beam112.Segments = 50
Beam112.Texture = "rbxassetid://2463944225"
Beam112.TextureSpeed = 0
Beam112.Transparency = NumberSequence.new(1,0,0,1)
Beam112.Width0 = 0.10000000149011612
Beam112.Width1 = 3
Sound113.Name = "HitSound"
Sound113.Parent = mas
Sound113.SoundId = "rbxassetid://1489924400"
Sound113.Volume = 0.25
ParticleEmitter114.Name = "HitParticles"
ParticleEmitter114.Parent = mas
ParticleEmitter114.Speed = NumberRange.new(0, 10)
ParticleEmitter114.Rotation = NumberRange.new(-180, 180)
ParticleEmitter114.Color = ColorSequence.new(Color3.new(1, 0, 1),Color3.new(1, 0, 1),Color3.new(0.333333, 0.309804, 0.290196),Color3.new(0.266667, 0.266667, 0.266667))
ParticleEmitter114.Enabled = false
ParticleEmitter114.LightEmission = 0.10000000149011612
ParticleEmitter114.LightInfluence = 1
ParticleEmitter114.Texture = "rbxasset://textures/particles/smoke_main.dds"
ParticleEmitter114.Transparency = NumberSequence.new(1,0,0,0.6913580298423767,0.8456790447235107,0.9753086566925049,1)
ParticleEmitter114.Size = NumberSequence.new(0,2.0486111640930176,3.159722089767456,4.756944179534912,5.034722328186035)
ParticleEmitter114.Acceleration = Vector3.new(0, 5, 0)
ParticleEmitter114.Drag = 0.5
ParticleEmitter114.EmissionDirection = Enum.NormalId.Front
ParticleEmitter114.Lifetime = NumberRange.new(0.10000000149011612, 2)
ParticleEmitter114.Rate = 0
ParticleEmitter114.RotSpeed = NumberRange.new(-100, 100)
ParticleEmitter114.SpreadAngle = Vector2.new(30, 30)
ParticleEmitter114.VelocityInheritance = -0.0010000000474974513
ParticleEmitter114.VelocitySpread = 30
Folder115.Name = "HitMarks"
Folder115.Parent = Folder70
Part116.Name = "BulletHole"
Part116.Parent = Folder115
Part116.CFrame = CFrame.new(40.9196777, 3.94201994, -98.0775146, 0.999111474, 0, 0.0421500131, 0, 1, 0, -0.0421500131, 0, 0.999111474)
Part116.Orientation = Vector3.new(0, 2.4159998893737793, 0)
Part116.Position = Vector3.new(40.919677734375, 3.9420199394226074, -98.0775146484375)
Part116.Rotation = Vector3.new(0, 2.4159998893737793, 0)
Part116.Transparency = 1
Part116.Size = Vector3.new(0.5, 0.5, 0.05000000074505806)
Part116.BottomSurface = Enum.SurfaceType.Smooth
Part116.CanCollide = false
Part116.TopSurface = Enum.SurfaceType.Smooth
BillboardGui117.Name = "ImpactBillboard"
BillboardGui117.Parent = Part116
BillboardGui117.LightInfluence = 1
BillboardGui117.Size = UDim2.new(5, 0, 5, 0)
BillboardGui117.ResetOnSpawn = false
BillboardGui117.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BillboardGui117.Adornee = Part116
BillboardGui117.ExtentsOffset = Vector3.new(0, 0, 0.25)
ImageLabel118.Name = "Impact"
ImageLabel118.Parent = BillboardGui117
ImageLabel118.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel118.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel118.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel118.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel118.BackgroundTransparency = 1
ImageLabel118.BorderSizePixel = 0
ImageLabel118.Image = "rbxassetid://3918596245"
ImageLabel118.ImageTransparency = 1
Decal119.Name = "BulletHole"
Decal119.Parent = Part116
Decal119.Texture = "http://www.roblox.com/asset/?id=2078626"
Decal119.Transparency = 1
Decal119.Face = Enum.NormalId.Back
Decal119.Color3 = Color3.new(1, 0.831373, 0.435294)
Part120.Name = "Pellet"
Part120.Parent = Folder115
Part120.CFrame = CFrame.new(40.9196777, 3.94201994, -98.0775146, 0.999111474, 0, 0.0421500131, 0, 1, 0, -0.0421500131, 0, 0.999111474)
Part120.Orientation = Vector3.new(0, 2.4159998893737793, 0)
Part120.Position = Vector3.new(40.919677734375, 3.9420199394226074, -98.0775146484375)
Part120.Rotation = Vector3.new(0, 2.4159998893737793, 0)
Part120.Transparency = 1
Part120.Size = Vector3.new(0.20000000298023224, 0.20000000298023224, 0.05000000074505806)
Part120.BottomSurface = Enum.SurfaceType.Smooth
Part120.CanCollide = false
Part120.TopSurface = Enum.SurfaceType.Smooth
Decal121.Name = "BulletHole"
Decal121.Parent = Part120
Decal121.Texture = "http://www.roblox.com/asset/?id=2078626"
Decal121.Transparency = 1
Decal121.Face = Enum.NormalId.Back
Decal121.Color3 = Color3.new(1, 0.831373, 0.435294)
Part122.Name = "Arrow"
Part122.Parent = Folder115
Part122.CFrame = CFrame.new(40.9196777, 3.94201994, -98.0775146, 0.999111474, 0, 0.0421500131, 0, 1, 0, -0.0421500131, 0, 0.999111474)
Part122.Orientation = Vector3.new(0, 2.4159998893737793, 0)
Part122.Position = Vector3.new(40.919677734375, 3.9420199394226074, -98.0775146484375)
Part122.Rotation = Vector3.new(0, 2.4159998893737793, 0)
Part122.Transparency = 1
Part122.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806)
Part122.BottomSurface = Enum.SurfaceType.Smooth
Part122.CanCollide = false
Part122.TopSurface = Enum.SurfaceType.Smooth
SpecialMesh123.Parent = Part122
SpecialMesh123.MeshId = "rbxassetid://2493118549"
SpecialMesh123.Offset = Vector3.new(0, 0, 0.75)
SpecialMesh123.Scale = Vector3.new(0.43178001046180725, 0.43178001046180725, 0.43178001046180725)
SpecialMesh123.TextureId = "rbxassetid://2493025364"
SpecialMesh123.MeshType = Enum.MeshType.FileMesh
Part124.Name = "Scorch"
Part124.Parent = Folder115
Part124.CFrame = CFrame.new(40.1713524, 3.94201994, -98.0459442, 0.999111474, 0, 0.0421500131, 0, 1, 0, -0.0421500131, 0, 0.999111474)
Part124.Orientation = Vector3.new(0, 2.4159998893737793, 0)
Part124.Position = Vector3.new(40.17135238647461, 3.9420199394226074, -98.04594421386719)
Part124.Rotation = Vector3.new(0, 2.4159998893737793, 0)
Part124.Transparency = 1
Part124.Size = Vector3.new(2, 2, 0.05000000074505806)
Part124.BottomSurface = Enum.SurfaceType.Smooth
Part124.CanCollide = false
Part124.TopSurface = Enum.SurfaceType.Smooth
Decal125.Name = "ScorchMark"
Decal125.Parent = Part124
Decal125.Texture = "rbxassetid://53875997"
Decal125.Transparency = 1
Decal125.Face = Enum.NormalId.Back
Decal126.Name = "Glow"
Decal126.Parent = Part124
Decal126.Texture = "http://www.roblox.com/asset/?id=246689799"
Decal126.Transparency = 1
Decal126.Face = Enum.NormalId.Back
Decal126.Color3 = Color3.new(1, 0.258824, 0.113725)
Part127.Name = "Explosion"
Part127.Parent = Folder115
Part127.CFrame = CFrame.new(40.1713524, 3.94201994, -98.0459442, 0.999111474, 0, 0.0421500131, 0, 1, 0, -0.0421500131, 0, 0.999111474)
Part127.Orientation = Vector3.new(0, 2.4159998893737793, 0)
Part127.Position = Vector3.new(40.17135238647461, 3.9420199394226074, -98.04594421386719)
Part127.Rotation = Vector3.new(0, 2.4159998893737793, 0)
Part127.Transparency = 1
Part127.Size = Vector3.new(2.5, 2.5, 0.05000000074505806)
Part127.BottomSurface = Enum.SurfaceType.Smooth
Part127.CanCollide = false
Part127.TopSurface = Enum.SurfaceType.Smooth
Decal128.Name = "ScorchMark"
Decal128.Parent = Part127
Decal128.Texture = "rbxassetid://53875997"
Decal128.Transparency = 1
Decal128.Face = Enum.NormalId.Back
Decal129.Name = "Glow"
Decal129.Parent = Part127
Decal129.Texture = "http://www.roblox.com/asset/?id=246689799"
Decal129.Transparency = 1
Decal129.Face = Enum.NormalId.Back
Decal129.Color3 = Color3.new(1, 0.258824, 0.113725)
Folder130.Name = "Casings"
Folder130.Parent = Folder70
MeshPart131.Name = "RifleCasing"
MeshPart131.Parent = Folder130
MeshPart131.CFrame = CFrame.new(40.9196777, 3.94201994, -98.0775146, 0, 0.999111474, 0.0421500131, -1, 0, 0, 0, -0.0421500131, 0.999111474)
MeshPart131.Orientation = Vector3.new(0, 2.4159998893737793, -90)
MeshPart131.Position = Vector3.new(40.919677734375, 3.9420199394226074, -98.0775146484375)
MeshPart131.Rotation = Vector3.new(0, 2.4159998893737793, -90)
MeshPart131.Color = Color3.new(1, 0.690196, 0)
MeshPart131.Transparency = 1
MeshPart131.Size = Vector3.new(0.10599999874830246, 0.33000001311302185, 0.10599999874830246)
MeshPart131.BrickColor = BrickColor.new("Deep orange")
MeshPart131.Material = Enum.Material.Metal
MeshPart131.brickColor = BrickColor.new("Deep orange")
MeshPart131.TextureID = "rbxassetid://2794275376"
Sound132.Name = "CasingHitSound"
Sound132.Parent = MeshPart131
Sound132.EmitterSize = 1
Sound132.MinDistance = 1
Sound132.SoundId = "rbxassetid://3909012115"
Sound132.Volume = 1
MeshPart133.Name = "PistolCasing"
MeshPart133.Parent = Folder130
MeshPart133.CFrame = CFrame.new(40.9196777, 3.94201994, -98.0775146, 0, 0.999111474, 0.0421500131, -1, 0, 0, 0, -0.0421500131, 0.999111474)
MeshPart133.Orientation = Vector3.new(0, 2.4159998893737793, -90)
MeshPart133.Position = Vector3.new(40.919677734375, 3.9420199394226074, -98.0775146484375)
MeshPart133.Rotation = Vector3.new(0, 2.4159998893737793, -90)
MeshPart133.Color = Color3.new(1, 0.690196, 0)
MeshPart133.Transparency = 1
MeshPart133.Size = Vector3.new(0.08299999684095383, 0.10700000077486038, 0.08299999684095383)
MeshPart133.BrickColor = BrickColor.new("Deep orange")
MeshPart133.Material = Enum.Material.Metal
MeshPart133.brickColor = BrickColor.new("Deep orange")
MeshPart133.TextureID = "rbxassetid://2794275376"
Sound134.Name = "CasingHitSound"
Sound134.Parent = MeshPart133
Sound134.EmitterSize = 1
Sound134.MinDistance = 1
Sound134.SoundId = "rbxassetid://3909012115"
Sound134.Volume = 1
LocalScript135.Name = "ClientWeaponsScript"
LocalScript135.Parent = Folder26
table.insert(cors,sandbox(LocalScript135,function()
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local playerChildAddedConnection
local replicatedStorageChildAddedConnection
local clientWeaponsScript
local weaponsSystemFolder

local function setupWeaponsSystem()
	local WeaponsSystem = require(weaponsSystemFolder.WeaponsSystem)
	if not WeaponsSystem.doingSetup and not WeaponsSystem.didSetup then
		WeaponsSystem.setup()
	end
end

local function onReplicatedStorageChildAdded(child)
	if child.Name == "WeaponsSystem" then
		setupWeaponsSystem()
		replicatedStorageChildAddedConnection:Disconnect()
	end
end

local function onPlayerChildAdded(child)
	if child.Name == "PlayerScripts" then
		clientWeaponsScript.Parent = child
		playerChildAddedConnection:Disconnect()
	end
end

if script.Parent.Name ~= "PlayerScripts" then
	clientWeaponsScript = script:Clone()
	local PlayerScripts = script.Parent.Parent:FindFirstChild("PlayerScripts")
	
	if PlayerScripts ~= nil then
		clientWeaponsScript.Parent = PlayerScripts
	else
		playerChildAddedConnection = script.Parent.Parent.ChildAdded:Connect(onPlayerChildAdded)
	end
else
	weaponsSystemFolder = ReplicatedStorage:FindFirstChild("WeaponsSystem")
	if weaponsSystemFolder ~= nil then
		setupWeaponsSystem()
	else
		replicatedStorageChildAddedConnection = ReplicatedStorage.ChildAdded:Connect(onReplicatedStorageChildAdded)
	end
end
end))
ModuleScript136.Name = "NetworkingCallbacks"
ModuleScript136.Parent = Folder26
table.insert(cors,sandbox(ModuleScript136,function()
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local IsServer = RunService:IsServer()
local LocalPlayer = (not IsServer) and Players.LocalPlayer or nil

local NetworkingCallbacks = {}
NetworkingCallbacks.WeaponsSystem = nil

function NetworkingCallbacks.WeaponFired(player, instance, fireInfo)
	local WeaponsSystem = NetworkingCallbacks.WeaponsSystem
	if not WeaponsSystem then
		return
	end

	local weapon = WeaponsSystem.getWeaponForInstance(instance)
	local weaponType = getmetatable(weapon)

	if weapon and weaponType then
		if weapon.instance == instance and weaponType.CanBeFired and weapon.player == player then
			weapon:onFired(player, fireInfo, true)
		end
	end
end

function NetworkingCallbacks.WeaponReloadRequest(player, instance)
	local WeaponsSystem = NetworkingCallbacks.WeaponsSystem
	if not WeaponsSystem then
		return
	end

	local weapon = WeaponsSystem.getWeaponForInstance(instance)
	local weaponType = getmetatable(weapon)
	if weapon then
		if weapon.instance == instance and weaponType.CanBeReloaded then
			weapon:reload(player, true)
		end
	end
end

function NetworkingCallbacks.WeaponReloaded(player, instance)
	local WeaponsSystem = NetworkingCallbacks.WeaponsSystem
	if not WeaponsSystem then
		return
	end

	local weapon = WeaponsSystem.getWeaponForInstance(instance)
	local weaponType = getmetatable(weapon)
	if weapon then
		if weapon.instance == instance and weaponType.CanBeReloaded and player ~= nil and player ~= LocalPlayer then
			weapon:onReloaded(player, true)
		end
	end
end

function NetworkingCallbacks.WeaponReloadCanceled(player, instance)
	local WeaponsSystem = NetworkingCallbacks.WeaponsSystem
	if not WeaponsSystem then
		return
	end

	local weapon = WeaponsSystem.getWeaponForInstance(instance)
	local weaponType = getmetatable(weapon)
	if weapon then
		if weapon.instance == instance and weaponType.CanBeReloaded and player ~= LocalPlayer then
			weapon:cancelReload(player, true)
		end
	end
end

function NetworkingCallbacks.WeaponHit(player, instance, hitInfo)
	local WeaponsSystem = NetworkingCallbacks.WeaponsSystem
	if not WeaponsSystem then
		return
	end

	local weapon = WeaponsSystem.getWeaponForInstance(instance)
	local weaponType = getmetatable(weapon)
	if weapon then
		if weapon.instance == instance and weaponType.CanHit then
			if IsServer then
				weapon:onHit(hitInfo)
			end
		end
	end
end

function NetworkingCallbacks.WeaponActivated(player, instance, activated)
	local WeaponsSystem = NetworkingCallbacks.WeaponsSystem
	if not WeaponsSystem then
		return
	end

	local weapon = WeaponsSystem.getWeaponForInstance(instance)
	local weaponType = getmetatable(weapon)

	if weapon and weaponType then
		if weapon.instance == instance and weapon.player == player then
			weapon:setActivated(activated, true)
		end
	end
end

return NetworkingCallbacks

end))
Folder137.Name = "WeaponTypes"
Folder137.Parent = Folder26
ModuleScript138.Name = "BowWeapon"
ModuleScript138.Parent = Folder137
table.insert(cors,sandbox(ModuleScript138,function()
local RunService = game:GetService("RunService")

local IsServer = RunService:IsServer()

local WeaponsSystemFolder = script.Parent.Parent

local WeaponTypes = WeaponsSystemFolder:WaitForChild("WeaponTypes")
local BulletWeapon = require(WeaponTypes:WaitForChild("BulletWeapon"))

local BowWeapon = {}
BowWeapon.__index = BowWeapon
setmetatable(BowWeapon, BulletWeapon)

BowWeapon.CanAimDownSights = true
BowWeapon.CanBeFired = true
BowWeapon.CanBeReloaded = true
BowWeapon.CanHit = true

function BowWeapon.new(weaponsSystem, instance)
	local self = BulletWeapon.new(weaponsSystem, instance)
	setmetatable(self, BowWeapon)

	self.hasArrow = true

	self.arrowPart = self.instance:FindFirstChild("Arrow", true)
	self.armsPart = self.instance:FindFirstChild("Arms", true)
	if self.armsPart then
		self.armsMesh = self.armsPart:FindFirstChildOfClass("SpecialMesh")

		self.tightOffsetValue = self.armsPart:FindFirstChild("TightOffset")
		self.tightScaleValue = self.armsPart:FindFirstChild("TightScale")

		self.looseOffsetValue = self.armsPart:FindFirstChild("LooseOffset")
		self.looseScaleValue = self.armsPart:FindFirstChild("LooseScale")

		self.leftLooseAttach = self.armsPart:FindFirstChild("LeftLoose")
		self.rightLooseAttach = self.armsPart:FindFirstChild("RightLoose")

		self.leftTightAttach = self.armsPart:FindFirstChild("LeftTight")
		self.rightTightAttach = self.armsPart:FindFirstChild("RightTight")

		self.leftString0 = self.armsPart:FindFirstChild("LeftString0")
		self.rightString0 = self.armsPart:FindFirstChild("RightString0")
	end

	self.string1 = self.instance:FindFirstChild("String1", true)
	self.stringLooseAttach = self.instance:FindFirstChild("StringLoose", true)
	self.stringTightAttach = self.instance:FindFirstChild("StringTight", true)

	self:setHasArrow(false)

	return self
end

function BowWeapon:renderCharge()
	if self.armsMesh and self.looseOffsetValue and self.looseScaleValue and self.tightOffsetValue and self.tightScaleValue then
		local looseOffset, tightOffset = self.looseOffsetValue.Value, self.tightOffsetValue.Value
		local looseScale, tightScale = self.looseScaleValue.Value, self.tightScaleValue.Value

		self.armsMesh.Offset = looseOffset:Lerp(tightOffset, self.charge)
		self.armsMesh.Scale = looseScale:Lerp(tightScale, self.charge)
	end

	if self.leftString0 and self.leftLooseAttach and self.leftTightAttach then
		self.leftString0.CFrame = self.leftLooseAttach.CFrame:lerp(self.leftTightAttach.CFrame, self.charge)
	end
	if self.rightString0 and self.rightLooseAttach and self.rightTightAttach then
		self.rightString0.CFrame = self.rightLooseAttach.CFrame:lerp(self.rightTightAttach.CFrame, self.charge)
	end

	if self.string1 and self.stringLooseAttach and self.stringTightAttach then
		self.string1.CFrame = self.stringLooseAttach.CFrame:lerp(self.stringTightAttach.CFrame, self.charge)
	end
end

function BowWeapon:handleCharging(dt)
	if self.hasArrow then return end
	BulletWeapon.handleCharging(self, dt)

	if self.charge >= 1 then
		self:setHasArrow(true)
	end
end

function BowWeapon:onActivatedChanged()
	if not IsServer then
		if not self.activated then
			if self.didFire then
				self.didFire = false
			end
		end
	end
	BulletWeapon.onActivatedChanged(self)
end

function BowWeapon:isCharged()
	return self.hasArrow and self.charge >= 1
end

function BowWeapon:doLocalFire()
	BulletWeapon.doLocalFire(self)
	self:setHasArrow(false)
	self.didFire = true
end

function BowWeapon:setHasArrow(hasArrow)
	if self.hasArrow == hasArrow then
		return
	end

	self.hasArrow = hasArrow
	if self.arrowPart then
		self.arrowPart.Transparency = self.hasArrow and 0 or 1
	end
end

return BowWeapon
end))
ModuleScript139.Name = "BulletWeapon"
ModuleScript139.Parent = Folder137
table.insert(cors,sandbox(ModuleScript139,function()
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Debris = game:GetService("Debris")
local ContextActionService = game:GetService("ContextActionService")
local CollectionService = game:GetService("CollectionService")
local ContentProvider = game:GetService("ContentProvider")

local IsServer = RunService:IsServer()

local WeaponsSystemFolder = script.Parent.Parent
local Libraries = WeaponsSystemFolder:WaitForChild("Libraries")
local BaseWeapon = require(Libraries:WaitForChild("BaseWeapon"))
local Parabola = require(Libraries:WaitForChild("Parabola"))
local Roblox = require(Libraries:WaitForChild("Roblox"))

local Effects = WeaponsSystemFolder:WaitForChild("Assets"):WaitForChild("Effects")
local ShotsFolder = Effects:WaitForChild("Shots")
local HitMarksFolder = Effects:WaitForChild("HitMarks")
local CasingsFolder = Effects:WaitForChild("Casings")

local NO_BULLET_DECALS = false
local NO_BULLET_CASINGS = false

--The ignore list will fill up over time. This is how many seconds it will go before
--being refreshed in order to keep it from filling up with instances that aren't in
--the datamodel anymore.
local IGNORE_LIST_LIFETIME = 5

local MAX_BULLET_TIME = 10

local localRandom = Random.new()
local localPlayer = not IsServer and Players.LocalPlayer

local BulletWeapon = {}
BulletWeapon.__index = BulletWeapon
setmetatable(BulletWeapon, BaseWeapon)

BulletWeapon.CanAimDownSights = true
BulletWeapon.CanBeFired = true
BulletWeapon.CanBeReloaded = true
BulletWeapon.CanHit = true

function BulletWeapon.new(weaponsSystem, instance)
	local self = BaseWeapon.new(weaponsSystem, instance)
	setmetatable(self, BulletWeapon)

	self.usesCharging = false
	self.charge = 0
	self.chargeSoundPitchMin = 0.5
	self.chargeSoundPitchMax = 1

	self.triggerDisconnected = false
	self.startupFinished = false -- TODO: make startup time use a configuration value
	self.burstFiring = false
	self.burstIdx = 0
	self.nextFireTime = 0

	self.recoilIntensity = 0
	self.aimPoint = Vector3.new()

	self:addOptionalDescendant("tipAttach", "TipAttachment")

	self:addOptionalDescendant("boltMotor", "BoltMotor")
	self:addOptionalDescendant("boltMotorStart", "BoltMotorStart")
	self:addOptionalDescendant("boltMotorTarget", "BoltMotorTarget")

	self:addOptionalDescendant("chargeGlowPart", "ChargeGlow")
	self:addOptionalDescendant("chargeCompleteParticles", "ChargeCompleteParticles")
	self:addOptionalDescendant("dischargeCompleteParticles", "DischargeCompleteParticles")

	self:addOptionalDescendant("muzzleFlash0", "MuzzleFlash0")
	self:addOptionalDescendant("muzzleFlash1", "MuzzleFlash1")
	self:addOptionalDescendant("muzzleFlashBeam", "MuzzleFlash")

	self.hitMarkTemplate = HitMarksFolder:FindFirstChild(self:getConfigValue("HitMarkEffect", "BulletHole"))

	self.casingTemplate = CasingsFolder:FindFirstChild(self:getConfigValue("CasingEffect", ""))
	self:addOptionalDescendant("casingEjectPoint", "CasingEjectPoint")

	self.ignoreList = {}
	self.ignoreListRefreshTime = 0

	self:addOptionalDescendant("handAttach", "LeftHandAttachment")
	self.handAlignPos = nil
	self.handAlignRot = nil

	self.chargingParticles = {}
	self.instance.DescendantAdded:Connect(function(descendant)
		if descendant.Name == "ChargingParticles" and descendant:IsA("ParticleEmitter") then
			table.insert(self.chargingParticles, descendant)
		end
	end)
	for _, v in pairs(self.instance:GetDescendants()) do
		if v.Name == "ChargingParticles" and v:IsA("ParticleEmitter") then
			table.insert(self.chargingParticles, v)
		end
	end

	self:doInitialSetup()

	return self
end

function BulletWeapon:onEquippedChanged()
	BaseWeapon.onEquippedChanged(self)

	if not IsServer then
		if self.weaponsSystem.camera then
			if self.equipped then
				self.startupFinished = false
			end
		end

		if self.equipped then
			ContextActionService:BindAction("ReloadWeapon", function(...) self:onReloadAction(...) end, false, Enum.KeyCode.R, Enum.KeyCode.ButtonX)
		else
			ContextActionService:UnbindAction("ReloadWeapon")

			-- Stop charging/discharging sounds
			local chargingSound = self:getSound("Charging")
			local dischargingSound = self:getSound("Discharging")
			if chargingSound and chargingSound.Playing then
				chargingSound:Stop()
			end
			if dischargingSound and dischargingSound.Playing then
				dischargingSound:Stop()
			end
		end

		self.triggerDisconnected = false
	end
end

function BulletWeapon:onReloadAction(actionName, inputState, inputObj)
	if inputState == Enum.UserInputState.Begin and not self.reloading then
		self:reload()
	end
end

function BulletWeapon:animateBoltAction(isOpen)
	if not self.boltMotor or not self.boltMotorStart or not self.boltMotorTarget then
		return
	end

	if isOpen then
		self:tryPlaySound("BoltOpenSound")
	else
		self:tryPlaySound("BoltCloseSound")
	end

	local actionMoveTime = isOpen and self:getConfigValue("ActionOpenTime", 0.025) or self:getConfigValue("ActionCloseTime", 0.075)
	local targetCFrame = isOpen and self.boltMotorTarget.CFrame or self.boltMotorStart.CFrame

	local boltTween = TweenService:Create(self.boltMotor, TweenInfo.new(actionMoveTime, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), { C0 = targetCFrame })
	boltTween:Play()
	boltTween.Completed:Wait()
end

function BulletWeapon:getRandomSeedForId(id)
	return id
end

-- This function is only called on clients
function BulletWeapon:simulateFire(firingPlayer, fireInfo)
	BaseWeapon.simulateFire(self, fireInfo)

	-- Play "Fired" sound
	if self.lastFireSound then
		self.lastFireSound:Stop()
	end
	self.lastFireSound = self:tryPlaySound("Fired", self:getConfigValue("FiredPlaybackSpeedRange", 0.1))

	-- Simulate each projectile/bullet fired from current weapon
	local numProjectiles = self:getConfigValue("NumProjectiles", 1)
	local randomGenerator = Random.new(self:getRandomSeedForId(fireInfo.id))
	for i = 1, numProjectiles do
		self:simulateProjectile(firingPlayer, fireInfo, i, randomGenerator)
	end

	-- Animate the bolt if the current gun has one
	local actionOpenTime = self:getConfigValue("ActionOpenTime", 0.025)
	if self.boltMotor then
		coroutine.wrap(function()
			self:animateBoltAction(true)
			wait(actionOpenTime)
			self:animateBoltAction(false)
		end)()
	end

	-- Eject bullet casings and play "CasingHitSound" (child of casing) sound if applicable for current weapon
	if not NO_BULLET_CASINGS and self.casingTemplate and self.casingEjectPoint then
		local casing = self.casingTemplate:Clone()
		casing.Anchored = false
		casing.Archivable = false
		casing.CFrame = self.casingEjectPoint.WorldCFrame
		casing.Velocity = self.casingEjectPoint.Parent.Velocity + (self.casingEjectPoint.WorldAxis * localRandom:NextNumber(self:getConfigValue("CasingEjectSpeedMin", 15), self:getConfigValue("CasingEjectSpeedMax", 18)))
		casing.Parent = workspace.CurrentCamera
		CollectionService:AddTag(casing, "WeaponsSystemIgnore")

		local casingHitSound = casing:FindFirstChild("CasingHitSound")
		if casingHitSound then
			local touchedConn = nil
			touchedConn = casing.Touched:Connect(function(hitPart)
				if not hitPart:IsDescendantOf(self.instance) then
					casingHitSound:Play()
					touchedConn:Disconnect()
					touchedConn = nil
				end
			end)
		end

		Debris:AddItem(casing, 2)
	end

	if self.player == Players.LocalPlayer then
		coroutine.wrap(function()
			-- Wait for "RecoilDelayTime" before adding recoil
			local startTime = tick()
			local recoilDelayTime = self:getConfigValue("RecoilDelayTime", 0.07)
			while tick() < startTime + recoilDelayTime do
				RunService.RenderStepped:Wait()
			end
			RunService.RenderStepped:Wait()

			-- Add recoil to camera
			local recoilMin, recoilMax = self:getConfigValue("RecoilMin", 0.05), self:getConfigValue("RecoilMax", 0.5)
			local intensityToAdd = randomGenerator:NextNumber(recoilMin, recoilMax)
			local xIntensity = math.sin(tick() * 2) * intensityToAdd * math.rad(0.05)
			local yIntensity = intensityToAdd * 0.025
			self.weaponsSystem.camera:addRecoil(Vector2.new(xIntensity, yIntensity))

			if not (self.weaponsSystem.camera:isZoomed() and self:getConfigValue("HasScope", false)) then
				self.recoilIntensity = math.clamp(self.recoilIntensity * 1 + (intensityToAdd / 10), 0.005, 1)
			end

			-- Make crosshair reflect recoil/spread amount
			local weaponsGui = self.weaponsSystem.gui
			if weaponsGui then
				weaponsGui:setCrosshairScale(1 + intensityToAdd)
			end
		end)()
	end
end

function BulletWeapon:getIgnoreList(includeLocalPlayer)
	local now = tick()
	local ignoreList = self.ignoreList
	if not ignoreList or now - self.ignoreListRefreshTime > IGNORE_LIST_LIFETIME then
		ignoreList = {
			self.instanceIsTool and self.instance.Parent or self.instance,
			workspace.CurrentCamera
		}
		if not RunService:IsServer() then
			if includeLocalPlayer and Players.LocalPlayer and Players.LocalPlayer.Character then
				table.insert(ignoreList, Players.LocalPlayer.Character)
			end
		end
		self.ignoreList = ignoreList
	end
	return ignoreList
end

-- This function is only called on clients
function BulletWeapon:simulateProjectile(firingPlayer, fireInfo, projectileIdx, randomGenerator)
	local localPlayerInitiatedShot = self.player == Players.LocalPlayer

	-- Retrieve config values
	local bulletSpeed = self:getConfigValue("BulletSpeed", 1000)
	local maxDistance = self:getConfigValue("MaxDistance", 2000)
	local trailLength = self:getConfigValue("TrailLength", nil)
	local trailLengthFactor = self:getConfigValue("TrailLengthFactor", 1)
	local showEntireTrailUntilHit = self:getConfigValue("ShowEntireTrailUntilHit", false)
	local gravityFactor = self:getConfigValue("GravityFactor", 0)
	local minSpread = self:getConfigValue("MinSpread", 0)
	local maxSpread = self:getConfigValue("MaxSpread", 0)
	local shouldMovePart = self:getConfigValue("ShouldMovePart", false)
	local explodeOnImpact = self:getConfigValue("ExplodeOnImpact", false)
	local blastRadius = self:getConfigValue("BlastRadius", 8)

	-- Cheat the origin of the shot back if gun tip in wall/object
	if self.tipAttach ~= nil then
		local tipCFrame = self.tipAttach.WorldCFrame
		local tipPos = tipCFrame.Position
		local tipDir = tipCFrame.LookVector
		local amountToCheatBack = math.abs((self.instance:FindFirstChild("Handle").Position - tipPos):Dot(tipDir)) + 1
		local gunRay = Ray.new(tipPos - tipDir.Unit * amountToCheatBack, tipDir.Unit * amountToCheatBack)
		local hitPart, hitPoint = Roblox.penetrateCast(gunRay, self:getIgnoreList(localPlayerInitiatedShot))
		if hitPart and math.abs((tipPos - hitPoint).Magnitude) > 0 then
			fireInfo.origin = hitPoint - tipDir.Unit * 0.1
			fireInfo.dir = tipDir.Unit
		end
	end

	local origin, dir = fireInfo.origin, fireInfo.dir

	dir = Roblox.applySpread(dir, randomGenerator, math.rad(minSpread), math.rad(maxSpread))

	-- Initialize variables for visuals/particle effects
	local bulletEffect = self.bulletEffectTemplate:Clone()
	bulletEffect.CFrame = CFrame.new(origin, origin + dir)
	bulletEffect.Parent = workspace.CurrentCamera
	CollectionService:AddTag(bulletEffect, "WeaponsSystemIgnore")

	local leadingParticles = bulletEffect:FindFirstChild("LeadingParticles", true)
	local attachment0 = bulletEffect:FindFirstChild("Attachment0")
	local trailParticles = nil
	if attachment0 then
		trailParticles = attachment0:FindFirstChild("TrailParticles")
	end

	local hitAttach = bulletEffect:FindFirstChild("HitEffect")
	local hitParticles = bulletEffect:FindFirstChild("HitParticles", true)
	local numHitParticles = self:getConfigValue("NumHitParticles", 3)
	local hitSound = bulletEffect:FindFirstChild("HitSound", true)
	local flyingSound = bulletEffect:FindFirstChild("Flying", true)

	local muzzleFlashTime = self:getConfigValue("MuzzleFlashTime", 0.03)
	local muzzleFlashShown = false

	local beamThickness0 = self:getConfigValue("BeamWidth0", 1.5)
	local beamThickness1 = self:getConfigValue("BeamWidth1", 1.8)
	local beamFadeTime = self:getConfigValue("BeamFadeTime", nil)

	-- Enable beam trails for projectile
	local beam0 = bulletEffect:FindFirstChild("Beam0")
	if beam0 then
		beam0.Enabled = true
	end
	local beam1 = bulletEffect:FindFirstChild("Beam1")
	if beam1 then
		beam1.Enabled = true
	end

	-- Emit muzzle particles
	local muzzleParticles = bulletEffect:FindFirstChild("MuzzleParticles", true)
	local numMuzzleParticles = self:getConfigValue("NumMuzzleParticles", 50)
	if muzzleParticles then
		muzzleParticles.Parent.CFrame = CFrame.new(origin, origin + dir)
		local numSteps = 5
		for _ = 1, numSteps do
			muzzleParticles.Parent.Velocity = Vector3.new(localRandom:NextNumber(-10, 10), localRandom:NextNumber(-10, 10), localRandom:NextNumber(-10, 10))
			muzzleParticles:Emit(numMuzzleParticles / numSteps)
		end
	end

	-- Show muzzle flash
	if self.tipAttach and self.muzzleFlash0 and self.muzzleFlash1 and self.muzzleFlashBeam and projectileIdx == 1 then
		local minFlashRotation, maxFlashRotation = self:getConfigValue("MuzzleFlashRotation0", -math.pi), self:getConfigValue("MuzzleFlashRotation1", math.pi)
		local minFlashSize, maxFlashSize = self:getConfigValue("MuzzleFlashSize0", 1), self:getConfigValue("MuzzleFlashSize1", 1)
		local flashRotation = localRandom:NextNumber(minFlashRotation, maxFlashRotation)
		local flashSize = localRandom:NextNumber(minFlashSize, maxFlashSize)
		local baseCFrame = self.tipAttach.CFrame * CFrame.Angles(0, 0, flashRotation)
		self.muzzleFlash0.CFrame = baseCFrame * CFrame.new(flashSize * -0.5, 0, 0) * CFrame.Angles(0, math.pi, 0)
		self.muzzleFlash1.CFrame = baseCFrame * CFrame.new(flashSize * 0.5, 0, 0) * CFrame.Angles(0, math.pi, 0)

		self.muzzleFlashBeam.Enabled = true
		self.muzzleFlashBeam.Width0 = flashSize
		self.muzzleFlashBeam.Width1 = flashSize
		muzzleFlashShown = true
	end

	-- Play projectile flying sound
	if flyingSound then
		flyingSound:Play()
	end

	-- Enable trail particles
	if trailParticles then
		trailParticles.Enabled = true
	end

	-- Set up parabola for projectile path
	local parabola = Parabola.new()
	parabola:setPhysicsLaunch(origin, dir * bulletSpeed, nil, 35 * -gravityFactor)
	-- More samples for higher gravity since path will be more curved but raycasts can only be straight lines
	if gravityFactor > 0.66 then
		parabola:setNumSamples(3)
	elseif gravityFactor > 0.33 then
		parabola:setNumSamples(2)
	else
		parabola:setNumSamples(1)
	end

	-- Set up/initialize variables used in steppedCallback
	local stepConn = nil
	local pTravelDistance = 0 -- projected travel distance so far if projectile never stops
	local startTime = tick()
	local didHit = false
	local stoppedMotion = false
	local stoppedMotionAt = 0
	local timeSinceStart = 0
	local flyingVisualEffectsFinished = false -- true if all particle effects shown while projectile is flying are done
	local visualEffectsFinishTime = math.huge
	local visualEffectsLingerTime = 0 -- max time any visual effect needs to finish
	if beamFadeTime then
		visualEffectsLingerTime = beamFadeTime
	end
	local hitInfo = {
		sid = fireInfo.id,
		pid = projectileIdx,
		maxDist = maxDistance,
		part = nil,
		p = nil,
		n = nil,
		m = Enum.Material.Air,
		d = 1e9,
	}

	local steppedCallback = function(dt)
		local now = tick()
		timeSinceStart = now - startTime

		local travelDist = bulletSpeed * dt -- distance projectile has travelled since last frame
		trailLength = trailLength or travelDist * trailLengthFactor

		-- Note: the next three variables are all in terms of distance from starting point (which should be tip of current weapon)
		local projBack = pTravelDistance - trailLength -- furthest back part of projectile (including the trail effect, so will be the start of the trail effect if any)
		local projFront = pTravelDistance -- most forward part of projectile
		local maxDist = hitInfo.maxDist or 0 -- before it collides, this is the max distance the projectile can travel. After it collides, this is the hit point

		-- This will make trailing beams render from tip of gun to wherever projectile is until projectile is destroyed
		if showEntireTrailUntilHit then
			projBack = 0
		end

		-- Validate projBack and projFront
		projBack = math.clamp(projBack, 0, maxDist)
		projFront = math.clamp(projFront, 0, maxDist)

		if not didHit then
			-- Check if bullet hit since last frame
			local castProjBack, castProjFront = projFront, projFront + travelDist
			parabola:setDomain(castProjBack, castProjFront)
			local hitPart, hitPoint, hitNormal, hitMaterial, hitT = parabola:findPart(self.ignoreList)

			if hitPart then
				didHit = true
				projFront = castProjBack + hitT * (castProjFront - castProjBack) -- set projFront to point along projectile arc where an object was hit
				parabola:setDomain(projBack, projFront) -- update parabola domain to match new projFront

				-- Update hitInfo
				hitInfo.part = hitPart
				hitInfo.p = hitPoint
				hitInfo.n = hitNormal
				hitInfo.m = hitMaterial
				hitInfo.d = (hitPoint - origin).Magnitude
				hitInfo.t = hitT
				hitInfo.maxDist = projFront -- since the projectile hit, maxDist is now the hitPoint instead of maxDistance

				-- Register hit on clients
				self:onHit(hitInfo)

				-- Notify the server that this projectile hit something from client that initiated the shot
				-- Show hit indicators on gui of client that shot projectile
				if localPlayerInitiatedShot then
					local hitInfoClone = {}
					for hitInfoKey, value in pairs(hitInfo) do
						hitInfoClone[hitInfoKey] = value
					end
					self.weaponsSystem.getRemoteEvent("WeaponHit"):FireServer(self.instance, hitInfoClone)
				end


				-- Deal with all effects that start/stop/change on hit

				-- Disable trail particles
				if trailParticles then
					trailParticles.Enabled = false
				end

				-- Stop bullet flying sound
				if flyingSound and flyingSound.IsPlaying then
					flyingSound:Stop()
				end

				-- Hide the actual projectile model
				if bulletEffect then
					bulletEffect.Transparency = 1
				end

				-- Stop emitting leading particles
				if leadingParticles then
					leadingParticles.Rate = 0
					visualEffectsLingerTime = math.max(visualEffectsLingerTime, leadingParticles.Lifetime.Max)
				end

				-- Show the explosion on clients for explosive projectiles
				if explodeOnImpact then
					local explosion = Instance.new("Explosion")
					explosion.Position = hitPoint + (hitNormal * 0.5)
					explosion.BlastRadius = blastRadius
					explosion.BlastPressure = 0 -- no blast pressure because the real explosion happens on server
					explosion.ExplosionType = Enum.ExplosionType.NoCraters
					explosion.DestroyJointRadiusPercent = 0
					explosion.Visible = true
					if localPlayerInitiatedShot then
						-- Trigger hit indicators on client that initiated the shot if the explosion hit another player/humanoid
						explosion.Hit:Connect(function(explodedPart, hitDist)
							local humanoid = self.weaponsSystem.getHumanoid(explodedPart)
							if humanoid and
							   explodedPart.Name == "UpperTorso" and
							   humanoid:GetState() ~= Enum.HumanoidStateType.Dead and
							   self.weaponsSystem.gui and
							   explodedPart.Parent ~= self.player.Character and
							   self.weaponsSystem.playersOnDifferentTeams(self.weaponsSystem.getPlayerFromHumanoid(humanoid), self.player)
							then
								self.weaponsSystem.gui:OnHitOtherPlayer(self:calculateDamage(hitInfo.d), humanoid)
							end
						end)
					end
					explosion.Parent = workspace
				end

				-- Make sure hitAttach is in correct position before showing hit effects
				if hitAttach and beam0 and beam0.Attachment1 then
					parabola:renderToBeam(beam0)
					hitAttach.CFrame = beam0.Attachment1.CFrame * CFrame.Angles(0, math.rad(90), 0)
				end

				-- Show hit particle effect
				local hitPartColor = hitPart and hitPart.Color or Color3.fromRGB(255, 255, 255)
				if hitPart and hitPart:IsA("Terrain") then
					hitPartColor = workspace.Terrain:GetMaterialColor(hitMaterial or Enum.Material.Sand)
				end
				if hitInfo.h and hitInfo.h:IsA("Humanoid") and hitParticles and numHitParticles > 0 and hitPart then
					-- Show particle effect for hitting a player/humanoid
					hitParticles.Color = ColorSequence.new(Color3.fromRGB(255, 255, 255))
					hitParticles:Emit(numHitParticles)
					visualEffectsLingerTime = math.max(visualEffectsLingerTime, hitParticles.Lifetime.Max)
				elseif (not hitInfo.h or not hitInfo.h:IsA("Humanoid")) and hitParticles and numHitParticles > 0 then
					-- Show particle effect for hitting anything else
					if hitPart and self:getConfigValue("HitParticlesUsePartColor", true) then
						local existingSeq = hitParticles.Color
						local newKeypoints = {}

						for i, keypoint in pairs(existingSeq.Keypoints) do
							local newColor = keypoint.Value
							if newColor == Color3.fromRGB(255, 0, 255) then
								newColor = hitPartColor
							end
							newKeypoints[i] = ColorSequenceKeypoint.new(keypoint.Time, newColor)
						end

						hitParticles.Color = ColorSequence.new(newKeypoints)
					end

					hitParticles:Emit(numHitParticles)
					visualEffectsLingerTime = math.max(visualEffectsLingerTime, hitParticles.Lifetime.Max)
				end

				-- Play hit sound
				if hitSound then
					hitSound:Play()
					visualEffectsLingerTime = math.max(visualEffectsLingerTime, hitSound.TimeLength)
				end

				-- Manage/show decals, billboards, and models (such as an arrow) that appear where the projectile hit (only if the hit object was not a humanoid/player)
				local hitPointObjectSpace = hitPart.CFrame:pointToObjectSpace(hitPoint)
				local hitNormalObjectSpace = hitPart.CFrame:vectorToObjectSpace(hitNormal)
				if not NO_BULLET_DECALS and
				   hitPart and
				   not hitPart.Parent or not hitPart.Parent:FindFirstChildOfClass("Humanoid") and
				   hitPointObjectSpace and
				   hitNormalObjectSpace and
				   self.hitMarkTemplate
				then
					-- Clone hitMark (this contains all the decals/billboards/models to show on the hit surface)
					local hitMark = self.hitMarkTemplate:Clone()
					hitMark.Parent = hitPart
					CollectionService:AddTag(hitMark, "WeaponsSystemIgnore")

					-- Move/align hitMark to the hit surface
					local incomingVec = parabola:sampleVelocity(1).Unit
					if self:getConfigValue("AlignHitMarkToNormal", true) then
						-- Make hitMark face straight out from surface where projectile hit (good for decals)
						local forward = hitNormalObjectSpace
						local up = incomingVec
						local right = -forward:Cross(up).Unit
						up = forward:Cross(right)
						local orientationCFrame = CFrame.fromMatrix(hitPointObjectSpace + hitNormalObjectSpace * 0.05, right, up, -forward)
						hitMark.CFrame = hitPart.CFrame:toWorldSpace(orientationCFrame)
					else
						-- Make hitmark appear stuck in the hit surface from the direction the projectile came from (good for things like arrows)
						hitMark.CFrame = hitPart.CFrame * CFrame.new(hitPointObjectSpace, hitPointObjectSpace + hitPart.CFrame:vectorToObjectSpace(incomingVec))
					end

					-- Weld hitMark to the hitPart
					local weld = Instance.new("WeldConstraint")
					weld.Part0 = hitMark
					weld.Part1 = hitPart
					weld.Parent = hitMark

					-- Fade glow decal over time
					local glowDecal = hitMark:FindFirstChild("Glow")
					if glowDecal then
						coroutine.wrap(function()
							local heartbeat = RunService.Heartbeat
							for i = 0, 1, 1/60 do
								heartbeat:Wait()
								glowDecal.Transparency = (i ^ 2)
							end
						end)()
					end

					-- Set bullethole decal color and fade over time
					local bulletHole = hitMark:FindFirstChild("BulletHole")
					if bulletHole then
						bulletHole.Color3 = hitPartColor
						TweenService:Create(
							bulletHole,
							TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 4),
							{ Transparency = 1 }
						):Play()
					end

					-- Fade impact billboard's size and transparency over time
					local impactBillboard = hitMark:FindFirstChild("ImpactBillboard")
					if impactBillboard then
						local impact = impactBillboard:FindFirstChild("Impact")
						local impactTween = TweenService:Create(
							impact,
							TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0),
							{ Size = UDim2.new(1, 0, 1, 0) }
						)
						impactTween.Completed:Connect(function()
							TweenService:Create(
								impact,
								TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0),
								{ Size = UDim2.new(0.5, 0, 0.5, 0), ImageTransparency = 1 }
							):Play()
						end)
						impactTween:Play()
					end

					-- Destroy hitMark in 5 seconds
					Debris:AddItem(hitMark, 5)
				end

				flyingVisualEffectsFinished = true
				visualEffectsFinishTime = now + visualEffectsLingerTime
			end
		end

		-- Will enter this if-statement if projectile hit something or maxDistance has been reached
		if projFront >= maxDist then
			if not stoppedMotion then
				stoppedMotion = true
				stoppedMotionAt = now
			end

			-- Stop particle effects if projectile didn't hit anything and projBack has reached the end
			if projBack >= maxDist and not flyingVisualEffectsFinished then
				flyingVisualEffectsFinished = true
				visualEffectsFinishTime = now + visualEffectsLingerTime
			end
		end

		-- Update parabola domain
		parabola:setDomain(projBack, projFront)

		-- Continue updating pTravelDistance until projBack has reached maxDist (this helps with some visual effects)
		if projBack < maxDist then
			pTravelDistance = math.max(0, timeSinceStart * bulletSpeed)
		end


		-- Update visual effects each frame

		-- Update CFrame/velocity of projectile if the projectile uses a model (such as rocket or grenade)
		if shouldMovePart then
			local bulletPos = parabola:samplePoint(1)
			local bulletVelocity = parabola:sampleVelocity(1)
			bulletEffect.CFrame = CFrame.new(bulletPos, bulletPos + bulletVelocity)
			bulletEffect.Velocity = bulletVelocity.Unit * bulletSpeed
		end

		-- Update thickness and render trailing beams
		local thickness0 = beamThickness0
		local thickness1 = beamThickness1
		if beamFadeTime then
			-- Fade out trail beams if projectile is no longer moving (hit something or reached max distance)
			local timeSinceEnd = stoppedMotion and (now - stoppedMotionAt) or 0
			local fadeAlpha = math.clamp(timeSinceEnd / beamFadeTime, 0, 1)
			thickness0 = thickness0 * (1 - fadeAlpha)
			thickness1 = thickness1 * (1 - fadeAlpha)
		end
		if beam0 then
			beam0.Width0 = thickness0
			beam0.Width1 = thickness1
			parabola:renderToBeam(beam0)
		end
		if beam1 then
			beam1.Width0 = thickness0
			beam1.Width1 = thickness1
			parabola:renderToBeam(beam1)
		end

		-- Disable muzzle flash after muzzleFlashTime seconds have passed
		if muzzleFlashShown and timeSinceStart > muzzleFlashTime and self.muzzleFlashBeam then
			self.muzzleFlashBeam.Enabled = false
			muzzleFlashShown = false
		end

		-- Destroy projectile and attached visual effects when visual effects are done showing or max bullet time has been reached
		local timeSinceParticleEffectsFinished = now - visualEffectsFinishTime
		if (flyingVisualEffectsFinished and timeSinceParticleEffectsFinished > 0) or timeSinceStart > MAX_BULLET_TIME then
			if bulletEffect then
				bulletEffect:Destroy()
				bulletEffect = nil
			end

			stepConn:Disconnect()
		end
	end

	stepConn = RunService.Heartbeat:Connect(steppedCallback)

	-- Get rid of charge on chargeable weapons
	if not IsServer and self.usesCharging then
		self.charge = math.clamp(self.charge - self:getConfigValue("FireDischarge", 1), 0, 1)
	end
end

function BulletWeapon:calculateDamage(travelDistance)
	local zeroDamageDistance = self:getConfigValue("ZeroDamageDistance", 10000)
	local fullDamageDistance = self:getConfigValue("FullDamageDistance", 1000)
	local distRange = zeroDamageDistance - fullDamageDistance
	local falloff = math.clamp(1 - (math.max(0, travelDistance - fullDamageDistance) / math.max(1, distRange)), 0, 1)
	return math.max(self:getConfigValue("HitDamage", 10) * falloff, 0)
end

function BulletWeapon:applyDamage(hitInfo)
	local damage = self:calculateDamage(hitInfo.d)

	if damage <= 0 then
		return
	end

	self.weaponsSystem.doDamage(hitInfo.h, damage, nil, self.player)
end

function BulletWeapon:onHit(hitInfo)
	local hitPoint = hitInfo.p
	local hitNormal = hitInfo.n
	local hitPart = hitInfo.part

	if hitPart and hitPart.Parent then
		local humanoid = self.weaponsSystem.getHumanoid(hitPart)
		hitInfo.h = humanoid or hitPart

		if IsServer and
		   (not hitInfo.h:IsA("Humanoid") or
		   self.weaponsSystem.playersOnDifferentTeams(self.weaponsSystem.getPlayerFromHumanoid(hitInfo.h), self.player))
		then
			self:applyDamage(hitInfo)
		elseif hitInfo.h:IsA("Humanoid") and
			hitInfo.h:GetState() ~= Enum.HumanoidStateType.Dead and
			self.weaponsSystem.gui and
			self.player == Players.LocalPlayer and
			self.weaponsSystem.playersOnDifferentTeams(self.weaponsSystem.getPlayerFromHumanoid(hitInfo.h), self.player)
		then
			-- Show hit indicators on gui of client that shot projectile if players are not on same team
			self.weaponsSystem.gui:OnHitOtherPlayer(self:calculateDamage(hitInfo.d), hitInfo.h)
		end
	end

	-- Create invisible explosion on server that deals damage to anything caught in the explosion
	if IsServer and self:getConfigValue("ExplodeOnImpact", false) then
		local blastRadius = self:getConfigValue("BlastRadius", 8)
		local blastPressure = self:getConfigValue("BlastPressure", 10000)
		local blastDamage = self:getConfigValue("BlastDamage", 100)

		local explosion = Instance.new("Explosion")
		explosion.Position = hitPoint + (hitNormal * 0.5)
		explosion.BlastRadius = blastRadius
		explosion.BlastPressure = blastPressure
		explosion.ExplosionType = Enum.ExplosionType.NoCraters
		explosion.DestroyJointRadiusPercent = 0
		explosion.Visible = false

		explosion.Hit:Connect(function(explodedPart, hitDist)
			local damageMultiplier = (1 - math.clamp((hitDist / blastRadius), 0, 1))
			local damageToDeal = blastDamage * damageMultiplier

			local humanoid = self.weaponsSystem.getHumanoid(explodedPart)
			if humanoid then
				if explodedPart.Name == "UpperTorso" and
				   humanoid:GetState() ~= Enum.HumanoidStateType.Dead and
				   self.weaponsSystem.playersOnDifferentTeams(self.weaponsSystem.getPlayerFromHumanoid(humanoid), self.player)
				then
					-- Do damage to players/humanoids
					self.weaponsSystem.doDamage(humanoid, damageToDeal, nil, self.player)
				end
			elseif not CollectionService:HasTag(explodedPart, "WeaponsSystemIgnore") then
				-- Do damage to a part (sends damage to breaking system)
				self.weaponsSystem.doDamage(explodedPart, damageToDeal, nil, self.player)
			end
		end)

		explosion.Parent = workspace
	end
end

function BulletWeapon:fire(origin, dir, charge)
	if not self:isCharged() then
		return
	end

	BaseWeapon.fire(self, origin, dir, charge)
end

function BulletWeapon:onFired(firingPlayer, fireInfo, fromNetwork)
	if not IsServer and firingPlayer == Players.LocalPlayer and fromNetwork then
		return
	end

	local cooldownTime = self:getConfigValue("ShotCooldown", 0.1)
	local fireMode = self:getConfigValue("FireMode", "Semiautomatic")
	local isSemiAuto = fireMode == "Semiautomatic"
	local isBurst = fireMode == "Burst"

	if isBurst and not self.burstFiring then
		self.burstIdx = 0
		self.burstFiring = true
	elseif isSemiAuto then
		self.triggerDisconnected = true
	end

	-- Calculate cooldown time for burst firing
	if self.burstFiring then
		self.burstIdx = self.burstIdx + 1
		if self.burstIdx >= self:getConfigValue("NumBurstShots", 3) then
			self.burstFiring = false
			self.triggerDisconnected = true
		else
			cooldownTime = self:getConfigValue("BurstShotCooldown", nil) or cooldownTime
		end
	end

	self.nextFireTime = tick() + cooldownTime

	BaseWeapon.onFired(self, firingPlayer, fireInfo, fromNetwork)
end

function BulletWeapon:onConfigValueChanged(valueName, newValue, oldValue)
	BaseWeapon.onConfigValueChanged(self, valueName, newValue, oldValue)
	if valueName == "ShotEffect" then
		self.bulletEffectTemplate = ShotsFolder:FindFirstChild(self:getConfigValue("ShotEffect", "Bullet"))
		if self.bulletEffectTemplate then
			local config = self.bulletEffectTemplate:FindFirstChildOfClass("Configuration")
			if config then
				self:importConfiguration(config)
			end

			local beam0 = self.bulletEffectTemplate:FindFirstChild("Beam0")
			if beam0 then
				coroutine.wrap(function()
					ContentProvider:PreloadAsync({ beam0 })
				end)()
			end
		end
	elseif valueName == "HitMarkEffect" then
		self.hitMarkTemplate = HitMarksFolder:FindFirstChild(self:getConfigValue("HitMarkEffect", "BulletHole"))
		if self.hitMarkTemplate then
			local config = self.hitMarkTemplate:FindFirstChildOfClass("Configuration")
			if config then
				self:importConfiguration(config)
			end
		end
	elseif valueName == "CasingEffect" then
		self.casingTemplate = CasingsFolder:FindFirstChild(self:getConfigValue("CasingEffect", ""))
		if self.casingTemplate then
			local config = self.casingTemplate:FindFirstChildOfClass("Configuration")
			if config then
				self:importConfiguration(config)
			end
		end
	elseif valueName == "ChargeRate" then
		self.usesCharging = newValue ~= nil
	end
end

function BulletWeapon:onActivatedChanged()
	BaseWeapon.onActivatedChanged(self)

	if not IsServer then
		-- Reload if no ammo left in clip
		if self.equipped and self:getAmmoInWeapon() <= 0 then
			self:reload()
			return
		end

		-- Fire weapon
		if self.activated and self.player == localPlayer and self:canFire() and tick() > self.nextFireTime then
			self:doLocalFire()
		end

		-- Reenable trigger after activated changes to false
		if not self.activated and self.triggerDisconnected and not self.burstFiring then
			self.triggerDisconnected = false
		end
	end
end

function BulletWeapon:onRenderStepped(dt)
	BaseWeapon.onRenderStepped(self, dt)
	if not self.tipAttach then return end
	if not self.equipped then return end

	local tipCFrame = self.tipAttach.WorldCFrame

	if self.player == Players.LocalPlayer then
		-- Retrieve aim point from camera and update player's aim animation
		local aimTrack = self:getAnimTrack(self:getConfigValue("AimTrack", "RifleAim"))
		local aimZoomTrack = self:getAnimTrack(self:getConfigValue("AimZoomTrack", "RifleAimDownSights"))
		if aimTrack then
			local aimDir = tipCFrame.LookVector

			local gunLookRay = Ray.new(tipCFrame.p, aimDir * 500)

			local _, gunHitPoint = Roblox.penetrateCast(gunLookRay, self.ignoreList)

			if self.weaponsSystem.aimRayCallback then
				local _, hitPoint = Roblox.penetrateCast(self.weaponsSystem.aimRayCallback(), self.ignoreList)
				self.aimPoint = hitPoint
			else
				self.aimPoint = gunHitPoint
			end

			if not aimTrack.IsPlaying and not self.reloading then
				aimTrack:Play(0.15)
				coroutine.wrap(function() -- prevent player from firing until gun is fully out
					wait(self:getConfigValue("StartupTime", 0.2))
					self.startupFinished = true
				end)()
			end

			if aimZoomTrack and not self.reloading then
				if not aimZoomTrack.IsPlaying then
					aimZoomTrack:Play(0.15)
				end
				aimZoomTrack:AdjustSpeed(0.001)
				if self.weaponsSystem.camera:isZoomed() then
					if aimTrack.WeightTarget ~= 0 then
						aimZoomTrack:AdjustWeight(1)
						aimTrack:AdjustWeight(0)
					end
				elseif aimTrack.WeightTarget ~= 1 then
					aimZoomTrack:AdjustWeight(0)
					aimTrack:AdjustWeight(1)
				end
			end

			local MIN_ANGLE = -80
			local MAX_ANGLE = 80
			local aimYAngle = math.deg(self.recoilIntensity)
			if self.weaponsSystem.camera.enabled then
				-- Gets pitch and recoil from camera to figure out how high/low to aim the gun
				aimYAngle = math.deg(self.weaponsSystem.camera:getRelativePitch() + self.weaponsSystem.camera.currentRecoil.Y + self.recoilIntensity)
			end
			local aimTimePos = 2 * ((aimYAngle - MIN_ANGLE) / (MAX_ANGLE - MIN_ANGLE))

			aimTrack:AdjustSpeed(0.001)
			aimTrack.TimePosition = math.clamp(aimTimePos, 0.001, 1.97)

			if aimZoomTrack then
				aimZoomTrack.TimePosition = math.clamp(aimTimePos, 0.001, 1.97)
			end

			-- Update recoil (decay over time)
			local recoilDecay = self:getConfigValue("RecoilDecay", 0.825)
			self.recoilIntensity = math.clamp(self.recoilIntensity * recoilDecay, 0, math.huge)
		else
			warn("no aimTrack")
		end
	end
end

function BulletWeapon:setChargingParticles(charge)
	local ratePerCharge = self:getConfigValue("ChargingParticlesRatePerCharge", 20)
	local rate = ratePerCharge * charge
	for _, v in pairs(self.chargingParticles) do
		v.Rate = rate
	end
end

function BulletWeapon:onStepped(dt)
	if not self.tipAttach then return end
	if not self.equipped then return end

	BaseWeapon.onStepped(self, dt)

	local now = tick()

	local chargingSound = self:getSound("Charging")
	local dischargingSound = self:getSound("Discharging")

	if self.usesCharging then
		-- Update charge amount
		local chargeBefore = self.charge
		self:handleCharging(dt)
		local chargeDelta = self.charge - chargeBefore

		-- Update charge particles
		if chargeDelta > 0 then
			self:setChargingParticles(self.charge)
		else
			self:setChargingParticles(0)
		end

		-- Play charging sounds
		if chargingSound then
			if chargingSound.Looped then
				if chargeDelta < 0 then
					chargingSound:Stop()
				else
					if not chargingSound.Playing and self.charge < 1 and chargeDelta > 0 then
						chargingSound:Play()
					end
					chargingSound.PlaybackSpeed = self.chargeSoundPitchMin + (self.charge * (self.chargeSoundPitchMax - self.chargeSoundPitchMin))
				end
			else
				if chargeDelta > 0 and self.charge <= 1 and not chargingSound.Playing then
					chargingSound.TimePosition = chargingSound.TimeLength * self.charge
					chargingSound:Play()
				elseif chargeDelta <= 0 and chargingSound.Playing then
					chargingSound:Stop()
				end
			end
		end
		if dischargingSound then
			if dischargingSound.Looped then
				if chargeDelta > 0 then
					dischargingSound:Stop()
				else
					if not dischargingSound.Playing and self.charge > 0 then
						dischargingSound:Play()
					end
					dischargingSound.PlaybackSpeed = self.chargeSoundPitchMin + (self.charge * (self.chargeSoundPitchMax - self.chargeSoundPitchMin))
				end
			else
				if chargeDelta < 0 and self.charge >= 0 and not dischargingSound.Playing then
					dischargingSound.TimePosition = dischargingSound.TimeLength * self.charge
					dischargingSound:Play()
				elseif chargeDelta >= 0 and dischargingSound.Playing then
					dischargingSound:Stop()
				end
			end
		end

		-- Play charge/discharge completed sounds and particle effects
		if chargeBefore < 1 and self.charge >= 1 then
			local chargeCompleteSound = self:getSound("ChargeComplete")
			if chargeCompleteSound then
				chargeCompleteSound:Play()
			end
			if chargingSound and chargingSound.Playing then
				chargingSound:Stop()
			end
			if self.chargeCompleteParticles then
				self.chargeCompleteParticles:Emit(self:getConfigValue("NumChargeCompleteParticles", 25))
			end
		end
		if chargeBefore > 0 and self.charge <= 0 then
			local dischargeCompleteSound = self:getSound("DischargeComplete")
			if dischargeCompleteSound then
				dischargeCompleteSound:Play()
			end
			if dischargingSound and dischargingSound.Playing then
				dischargingSound:Stop()
			end
			if self.dischargeCompleteParticles then
				self.dischargeCompleteParticles:Emit(self:getConfigValue("NumDischargeCompleteParticles", 25))
			end
		end

		self:renderCharge()
	else
		if chargingSound then
			chargingSound:Stop()
		end
		if dischargingSound then
			dischargingSound:Stop()
		end
	end

	if self.usesCharging and self.chargeGlowPart then
		self.chargeGlowPart.Transparency = 1 - self.charge
	end

	-- Fire weapon if it is fully charged
	if self:canFire() and now > self.nextFireTime then
		self:doLocalFire()
	end
end

function BulletWeapon:handleCharging(dt)
	local chargeDelta
	local shouldCharge = self.activated or self.burstFiring or self:getConfigValue("ChargePassively", false)
	if self.reloading or self.triggerDisconnected then
		shouldCharge = false
	end

	if shouldCharge then
		chargeDelta = self:getConfigValue("ChargeRate", 0) * dt
	else
		chargeDelta = self:getConfigValue("DischargeRate", 0) * -dt
	end

	self.charge = math.clamp(self.charge + chargeDelta, 0, 1)
end

function BulletWeapon:isCharged()
	return not self.usesCharging or self.charge >= 1
end

function BulletWeapon:canFire()
	return self.player == Players.LocalPlayer and (self.burstFiring or self.activated) and not self.triggerDisconnected and not self.reloading and self:isCharged() and self.startupFinished
end

function BulletWeapon:doLocalFire()
	if self.tipAttach then
		local tipCFrame = self.tipAttach.WorldCFrame
		local tipPos = tipCFrame.Position
		local aimDir = (self.aimPoint - tipPos).Unit

		self:fire(tipPos, aimDir, self.charge)
	end
end

return BulletWeapon

end))
Script140.Name = "ServerWeaponsScript"
Script140.Parent = Folder26
table.insert(cors,sandbox(Script140,function()
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerScriptService = game:GetService("ServerScriptService")

local curWeaponsSystemFolder = script.Parent
local weaponsSystemFolder = ReplicatedStorage:FindFirstChild("WeaponsSystem")
local weaponsSystemInitialized = false

local function initializeWeaponsSystemAssets()
	if not weaponsSystemInitialized then
		-- Enable/make visible all necessary assets
		local effectsFolder = weaponsSystemFolder.Assets.Effects
		local partNonZeroTransparencyValues = {
			["BulletHole"] = 1, ["Explosion"] = 1, ["Pellet"] = 1, ["Scorch"] = 1,
			["Bullet"] = 1, ["Plasma"] = 1, ["Railgun"] = 1,
		}
		local decalNonZeroTransparencyValues = { ["ScorchMark"] = 0.25 }
		local particleEmittersToDisable = { ["Smoke"] = true }
		local imageLabelNonZeroTransparencyValues = { ["Impact"] = 0.25 }
		for _, descendant in pairs(effectsFolder:GetDescendants()) do
			if descendant:IsA("BasePart") then
				if partNonZeroTransparencyValues[descendant.Name] ~= nil then
					descendant.Transparency = partNonZeroTransparencyValues[descendant.Name]
				else
					descendant.Transparency = 0
				end
			elseif descendant:IsA("Decal") then
				descendant.Transparency = 0
				if decalNonZeroTransparencyValues[descendant.Name] ~= nil then
					descendant.Transparency = decalNonZeroTransparencyValues[descendant.Name]
				else
					descendant.Transparency = 0
				end
			elseif descendant:IsA("ParticleEmitter") then
				descendant.Enabled = true
				if particleEmittersToDisable[descendant.Name] ~= nil then
					descendant.Enabled = false
				else
					descendant.Enabled = true
				end
			elseif descendant:IsA("ImageLabel") then
				if imageLabelNonZeroTransparencyValues[descendant.Name] ~= nil then
					descendant.ImageTransparency = imageLabelNonZeroTransparencyValues[descendant.Name]
				else
					descendant.ImageTransparency = 0
				end
			end
		end
		
		weaponsSystemInitialized = true
	end
end

if weaponsSystemFolder == nil then
	weaponsSystemFolder = curWeaponsSystemFolder:Clone()
	initializeWeaponsSystemAssets()
	weaponsSystemFolder.Parent = ReplicatedStorage
end

if ServerScriptService:FindFirstChild("ServerWeaponsScript") == nil then
	script.Parent = ServerScriptService
	initializeWeaponsSystemAssets()

	local WeaponsSystem = require(weaponsSystemFolder.WeaponsSystem)
	if not WeaponsSystem.doingSetup and not WeaponsSystem.didSetup then
		WeaponsSystem.setup()
	end
	
	local function setupClientWeaponsScript(player)
		local clientWeaponsScript = player.PlayerGui:FindFirstChild("ClientWeaponsScript")
		if clientWeaponsScript == nil then
			clientWeaponsScript = weaponsSystemFolder.ClientWeaponsScript:Clone()
			clientWeaponsScript.Parent = player.PlayerGui
		end
	end
	
	Players.PlayerAdded:Connect(function(player)
		setupClientWeaponsScript(player)
	end)
	
	for _, player in ipairs(Players:GetPlayers()) do
		setupClientWeaponsScript(player)
	end
end

if curWeaponsSystemFolder.Name == "WeaponsSystem" then
	curWeaponsSystemFolder:Destroy()
end
end))
Folder141.Name = "Configuration"
Folder141.Parent = Folder26
BoolValue142.Name = "SprintEnabled"
BoolValue142.Parent = Folder141
BoolValue142.Value = true
BoolValue143.Name = "SlowZoomWalkEnabled"
BoolValue143.Parent = Folder141
BoolValue143.Value = true
Folder144.Name = "Libraries"
Folder144.Parent = Folder26
ModuleScript145.Name = "DamageBillboardHandler"
ModuleScript145.Parent = Folder144
table.insert(cors,sandbox(ModuleScript145,function()
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

if RunService:IsServer() then return {} end

local localPlayer = Players.LocalPlayer
while not localPlayer do
	Players.PlayerAdded:Wait()
	localPlayer = Players.LocalPlayer
end

local adorneeToBillboardGui = {}

local DamageBillboardHandler = {}

function DamageBillboardHandler:CreateBillboardForAdornee(adornee)
	local billboard = adorneeToBillboardGui[adornee]
	if billboard then
		return billboard
	end

	billboard = Instance.new("BillboardGui")
	billboard.Name = "DamageBillboardGui"
	billboard.Adornee = adornee
	billboard.AlwaysOnTop = true
	billboard.ExtentsOffsetWorldSpace = Vector3.new(0,18,0)
	billboard.Size = UDim2.new(0.42,20,15,0)
	billboard.ResetOnSpawn = false
	billboard.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	billboard.Parent = localPlayer.PlayerGui
	adorneeToBillboardGui[adornee] = billboard

	local ancestorCon
	ancestorCon = adornee.AncestryChanged:connect(function(child, parent)
		if parent == nil then
			ancestorCon:disconnect()
			ancestorCon = nil

			local adorneeBillboard = adorneeToBillboardGui[adornee]
			adorneeBillboard:Destroy()
			adorneeToBillboardGui[adornee] = nil
		end
	end)

	return billboard
end

function DamageBillboardHandler:ShowDamageBillboard(damageAmount, adornee)
	damageAmount = math.ceil(damageAmount)

	local billboard = self:CreateBillboardForAdornee(adornee)

	local randomXPos = math.random(-10,10)/30

	local damageNumber = Instance.new("TextLabel")
	damageNumber.AnchorPoint = Vector2.new(0.5, 1)
	damageNumber.BackgroundTransparency = 1
	damageNumber.BorderSizePixel = 0
	damageNumber.Position = UDim2.fromScale(0.5 + randomXPos,1)
	damageNumber.Size = UDim2.fromScale(0,0.25)
	damageNumber.Font = Enum.Font.GothamBlack
	damageNumber.Text = tostring(damageAmount)
	damageNumber.TextColor3 = Color3.new(0.7,0.7,0.7)
	damageNumber.TextScaled = true
	damageNumber.TextStrokeTransparency = 0
	damageNumber.TextTransparency = 0
	damageNumber.TextXAlignment = Enum.TextXAlignment.Center
	damageNumber.TextYAlignment = Enum.TextYAlignment.Bottom
	damageNumber.Parent = billboard

	local appearTweenInfo = TweenInfo.new(
		0.5, --time
		Enum.EasingStyle.Elastic,
		Enum.EasingDirection.Out,
		0, --repeatCount
		false, --reverses
		0) --delayTime
	local appearTween = TweenService:Create(
		damageNumber,
		appearTweenInfo, {
			Size = UDim2.fromScale(1, damageNumber.Size.Y.Scale),
			TextColor3 = Color3.new(1,1,1)
		}
	)

	local upTweenInfo = TweenInfo.new(
		0.5, --time
		Enum.EasingStyle.Linear,
		Enum.EasingDirection.Out,
		0, --repeatCount
		false, --reverses
		0.2) --delayTime
	local upTween = TweenService:Create(
		damageNumber,
		upTweenInfo, {
			Position = UDim2.fromScale(damageNumber.Position.X.Scale, 0.25),
			TextTransparency = 1,
			TextStrokeTransparency = 4,
			Rotation = math.random(-5,5)
		}
	)

	local completedCon
	completedCon = upTween.Completed:connect(function()
		completedCon:disconnect()
		completedCon = nil
		damageNumber:Destroy()
	end)

	appearTween:Play()
	upTween:Play()
end

return DamageBillboardHandler
end))
ModuleScript146.Name = "DirectionalIndicatorGuiManager"
ModuleScript146.Parent = Folder144
table.insert(cors,sandbox(ModuleScript146,function()
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local DirectionalIndicatorGuiManager = {}
DirectionalIndicatorGuiManager.__index = DirectionalIndicatorGuiManager

local function GetConfigValue(config, propertyName, default)
	if config then
		local property = config:FindFirstChild(propertyName)
		if property then
			return property.Value
		end
	end
	return default
end

function DirectionalIndicatorGuiManager.new(weaponsGui)
	local self = setmetatable({}, DirectionalIndicatorGuiManager)
	self.weaponsGui = weaponsGui
	self.connections = {}
	self.enabled = false

	-- Note DI is an abbreviation for DirectionalIndicator
	self.DIFolder = self.weaponsGui.scalingElementsFolder:WaitForChild("DirectionalIndicators")
	self.DIInfo = {}

	for _, DIFrame in ipairs(self.DIFolder:GetChildren()) do
		if DIFrame:IsA("Frame") and DIFrame:FindFirstChildOfClass("ImageLabel") then
			local config = DIFrame:FindFirstChildOfClass("Configuration")
			local name = GetConfigValue(config, "Name", DIFrame.Name)
			self.DIInfo[name] = self:GetDIInfoFromFrame(DIFrame)

			DIFrame.Visible = true
			self.DIInfo[name].image.ImageTransparency = 1
		end
	end

	return self
end

function DirectionalIndicatorGuiManager:GetDIInfoFromFrame(frame)
	local diInfo = {}
	diInfo.frame = frame
	diInfo.image = frame:FindFirstChildOfClass("ImageLabel")
	diInfo.config = frame:FindFirstChildOfClass("Configuration")
	diInfo.active = false
	diInfo.dieOnFade = false -- will only be true for copies of original DIs
	return diInfo
end

function DirectionalIndicatorGuiManager:ActivateDirectionalIndicator(DIName, otherPosition)
	-- Use original DI, or make a copy if it's already active
	local diInfo = self.DIInfo[DIName]
	if not diInfo then
		warn("Warning: invalid name given to ActivateDirectionalIndicator")
		return
	end

	if diInfo.active then
		local newFrame = diInfo.frame:Clone()
		newFrame.Parent = diInfo.frame.Parent
		diInfo = self:GetDIInfoFromFrame(newFrame)
		diInfo.dieOnFade = true
	end
	diInfo.active = true

	-- Update distance from center
	local distanceLevel = GetConfigValue(diInfo.config, "DistanceLevelFromCenter", 6)
	local widthLevel = GetConfigValue(diInfo.config, "WidthLevel", distanceLevel)
	local levelMultiplier = 0.03
	self.weaponsGui.originalScaleAmounts[diInfo.frame] = Vector2.new(widthLevel * levelMultiplier, distanceLevel * levelMultiplier * 2)
	self.weaponsGui:updateScale(diInfo.frame, workspace.CurrentCamera.ViewportSize)

	-- Set initial indicator rotation and transparency
	diInfo.frame.Rotation = self:CalculateDIRotation(otherPosition)
	diInfo.image.ImageTransparency = GetConfigValue(diInfo.config, "TransparencyBeforeFade", 0)

	-- Update rotation of indicator as player rotates
	coroutine.wrap(function()
		while diInfo.image.ImageTransparency < 1 do
			diInfo.frame.Rotation = self:CalculateDIRotation(otherPosition)
			RunService.RenderStepped:Wait()
		end

		diInfo.active = false
		if diInfo.dieOnFade then
			diInfo.frame:Destroy()
			diInfo = nil
		end
	end)()

	-- Show indicator for a bit, then fade out
	coroutine.wrap(function()
		wait(GetConfigValue(diInfo.config, "TimeBeforeFade", 1))
		local tweenInfo = TweenInfo.new(GetConfigValue(diInfo.config, "FadeTime", 1))
		local goal = {}
		goal.ImageTransparency = 1
		local tween = TweenService:Create(diInfo.image, tweenInfo, goal)
		tween:Play()
	end)()
end

function DirectionalIndicatorGuiManager:CalculateDIRotation(otherPosition)
	local camera = self.weaponsGui.weaponsSystem.camera
	local localPlayerOffsetPositionXZ = Vector3.new(camera.currentCamera.Focus.X, 0, camera.currentCamera.Focus.Z)
	local otherPlayerPositionXZ = Vector3.new(otherPosition.X, 0, otherPosition.Z)
	local toOtherPlayer = (localPlayerOffsetPositionXZ - otherPlayerPositionXZ).Unit
	local forward = (Vector3.new(camera.currentCFrame.LookVector.X, 0, camera.currentCFrame.LookVector.Z)).Unit
	if toOtherPlayer == Vector3.new() then
		toOtherPlayer = forward
	end
	local dotProduct = forward:Dot(toOtherPlayer)
	local crossProduct = forward:Cross(toOtherPlayer)
	local acosAngle = math.deg(math.acos(dotProduct))
	local asinAngle = math.deg(math.asin(crossProduct.Y))
	if asinAngle >= 0 then
		acosAngle = 360 - acosAngle
	end
	return acosAngle
end

return DirectionalIndicatorGuiManager
end))
ModuleScript147.Name = "Parabola"
ModuleScript147.Parent = Folder144
table.insert(cors,sandbox(ModuleScript147,function()
local RunService = game:GetService("RunService")

local MIN_HORZ_SPEED = 0.01 --The minimum X and Z velocity for a physical-launch parabola to be considered vertical, helps avoid numerical instability
local DEFAULT_NUM_SAMPLES = RunService:IsServer() and 32 or 32
local DEFAULT_NORMAL = Vector3.new(0, 1, 0)
local ROT_OFFSET = {
	[0] = CFrame.Angles(0, math.rad(90), 0) * CFrame.Angles(math.rad(90), 0, 0),
	[1] = CFrame.Angles(0, math.rad(-90), 0) * CFrame.Angles(math.rad(90), 0, 0)
}
local UP_VECTOR = Vector3.new(0, 1, 0)
local ONE_THIRD, TWO_THIRDS = 1/3, 2/3

local Parabola = {}
Parabola.__index = Parabola

function Parabola.new(a, b, c, x0, x1)
	local self = setmetatable({}, Parabola)

	self.referenceFrame = CFrame.new()

	self.a = a or 1
	self.b = b or 1
	self.c = c or 0

	self.x0 = x0 or 0
	self.x1 = x1 or 10

	self.velocity = Vector2.new()
	self.gravity = 0

	self.numSamples = DEFAULT_NUM_SAMPLES

	return self
end

function Parabola:setPhysicsLaunch(startPoint, velocity, endpointY, gravity)
	gravity = gravity or -workspace.Gravity

	local flatVelocity = velocity * Vector3.new(1, 0, 1)
	if flatVelocity.Magnitude > MIN_HORZ_SPEED then
		self.referenceFrame = CFrame.new(startPoint, startPoint + flatVelocity)
	else
		self.referenceFrame = CFrame.new(startPoint)
	end
	local relativeVelocity = self.referenceFrame:vectorToObjectSpace(velocity)
	local xVelocity, yVelocity = math.max(MIN_HORZ_SPEED, -relativeVelocity.Z), relativeVelocity.Y
	self.a = (0.5 * gravity) * (1 / (xVelocity ^ 2))
	self.b = yVelocity / xVelocity
	self.c = 0

	self.velocity = Vector2.new(xVelocity, yVelocity)
	self.gravity = gravity

	if math.abs(gravity) > 1e-3 then
		self.x0 = 0

		if endpointY and startPoint.Y - endpointY > 0 then
			--y = ax^2 + bx + c
			--0 = ax^2 + bx - y
			--x = (-b +- sqrt(b^2 - 4ac)) / 2a

			local a, b, c = self.a, self.b, startPoint.Y - endpointY
			local det = math.sqrt(b^2 - 4 * a * c)
			local s1, s2 = (-b + det) / (2 * a), (-b - det) / (2 * a)

			self.x1 = math.max(s1, s2)
		else
			self.x1 = math.abs(2 * xVelocity * yVelocity) / math.abs(gravity)
		end
	else
		self.x0 = 0
		self.x1 = 100
	end
end

function Parabola:setNumSamples(numSamples)
	self.numSamples = numSamples
end

function Parabola:setDomain(x0, x1)
	self.x0 = x0
	self.x1 = x1
end

function Parabola:samplePoint(t)
	local a, b, c = self.a, self.b, self.c
	local x0, x1 = self.x0, self.x1
	local x = x0 + (t * (x1 - x0))
	local y = (a * x * x) + (b * x) + c
	return self.referenceFrame:pointToWorldSpace(Vector3.new(0, y, -x))
end

function Parabola:sampleSlope(t)
	local a, b = self.a, self.b
	local x0, x1 = self.x0, self.x1
	local x = x0 + (t * (x1 - x0))
	local y = (2 * a * x) + b
	return y
end

function Parabola:sampleVelocity(t)
	local x0, x1 = self.x0, self.x1
	local x = x0 + (t * (x1 - x0))
	local xVelocity = self.velocity.X
	local xT = x / xVelocity
	local yVelocity = self.velocity.Y + (self.gravity * xT)
	return self.referenceFrame:vectorToWorldSpace(Vector3.new(0, yVelocity, -xVelocity))
end

function Parabola:_penetrateCast(ray, ignoreList)
	debug.profilebegin("penetrateCast")
	local tries = 0
	local hitPart, hitPoint, hitNormal, hitMaterial = nil, ray.Origin + ray.Direction, UP_VECTOR, Enum.Material.Air
	while tries < 50 do
		tries = tries + 1
		hitPart, hitPoint, hitNormal, hitMaterial = workspace:FindPartOnRayWithIgnoreList(ray, ignoreList, false, true)
		if hitPart and not hitPart.CanCollide and hitPart.Parent:FindFirstChildOfClass("Humanoid") == nil then
			table.insert(ignoreList, hitPart)
		else
			break
		end
	end
	debug.profileend()
	return hitPart, hitPoint, hitNormal, hitMaterial
end

function Parabola:_findPart(funcName, list)
	list = list or {}

	local numSamples = self.numSamples
	local hitPart, hitPoint, hitNormal, hitMaterial, hitT = nil, self.referenceFrame.p, DEFAULT_NORMAL, Enum.Material.Air, 0

	local func = funcName ~= "penetrateCast" and workspace[funcName] or Parabola._penetrateCast

	for i = 1, numSamples do
		local t0 = (i - 1) / numSamples
		local t1 = i / numSamples

		local p0 = self:samplePoint(t0)
		local p1 = self:samplePoint(t1)
		local ray = Ray.new(p0, p1 - p0)

		hitPart, hitPoint, hitNormal, hitMaterial = func(workspace, ray, list)
		if hitPart then
			local hitX = -self.referenceFrame:pointToObjectSpace(hitPoint).Z

			hitT = ((hitX - self.x0) / (self.x1 - self.x0))
			break
		end
	end
	if not hitPart then
		hitT = 1
	end
	return hitPart, hitPoint, hitNormal, hitMaterial, hitT
end

function Parabola:findPart(ignoreList)
	return self:_findPart("penetrateCast", ignoreList)
end
function Parabola:findPartWithWhitelist(whitelist)
	return self:_findPart("FindPartOnRayWithWhitelist", whitelist)
end

function Parabola:findSpheresHit(sphereTable, radius)

end

function Parabola:_setBeamControlPoint(beam, attachment, idx, pos, refFrame)
	local attachmentPos = attachment.WorldPosition
	local vecFromAttachment = pos - attachmentPos
	local curveSize = vecFromAttachment.Magnitude

	attachment.CFrame = refFrame:toObjectSpace(CFrame.new(attachmentPos, pos) * ROT_OFFSET[idx])
	if idx == 0 then
		beam.CurveSize0 = curveSize
	else
		beam.CurveSize1 = curveSize
	end
end

function Parabola:renderToBeam(beam)
	local att0, att1 = beam.Attachment0, beam.Attachment1
	--assert(att0 and att1 and att0.Parent and att0.Parent:IsA("BasePart") and att1.Parent and att1.Parent:IsA("BasePart"), "Beam must have valid attachments that are in a BasePart")

	if not att0.Parent or not att1.Parent then
		return
	end

	local root0, root1 = att0.Parent.CFrame, att1.Parent.CFrame

	local referenceFrame = self.referenceFrame

	local x0, x1 = self.x0, self.x1
	local domain = x1 - x0
	local halfDomain = domain * 0.5
	local p0 = self:samplePoint(0)
	local p1 = self:samplePoint(1)
	local a, b, c = self.a, self.b, self.c
	local x = x0 + (0 * (x1 - x0))
	local cY = ((a * x * x) + (b * x) + c) + self:sampleSlope(0) * halfDomain
	c = referenceFrame:pointToWorldSpace(Vector3.new(0, cY, -(x0 + x1) / 2))
	local c0 = TWO_THIRDS * c + ONE_THIRD * p0
	local c1 = TWO_THIRDS * c + ONE_THIRD * p1

	att0.Position = root0:pointToObjectSpace(p0)
	att1.Position = root1:pointToObjectSpace(p1)

	self:_setBeamControlPoint(beam, att0, 0, c0, root0)
	self:_setBeamControlPoint(beam, att1, 1, c1, root1)
end

return Parabola

end))
ModuleScript148.Name = "Ragdoll"
ModuleScript148.Parent = Folder144
table.insert(cors,sandbox(ModuleScript148,function()
local RunService = game:GetService("RunService")

local JOINT_INFO = {
	LeftShoulder = {
		Limits = { Cone = 70, Twist = 30 },
		Offset = Vector3.new(0, -0.25, 0),
		Rotation = CFrame.Angles(0, 0, math.rad(45))
	},
	LeftElbow = {
		Limits = { Lower = 0, Upper = 160 }
	},
	LeftWrist = {
		Limits = { Cone = 90, Twist = 90 }
	},
	RightShoulder = {
		Limits = { Cone = 70, Twist = 30 },
		Offset = Vector3.new(0, -0.25, 0),
		Rotation = CFrame.Angles(0, 0, math.rad(-45))
	},
	RightElbow = {
		Limits = { Lower = 0, Upper = 160 }
	},
	RightWrist = {
		Limits = { Cone = 90, Twist = 90 }
	},

	Waist = {
		Limits = { Lower = -45, Upper = 30 }
	},
	Neck = {
		Limits = { Cone = 20, Twist = 20 }
	},

	LeftHip = {
		Limits = { Cone = 40, Twist = 2.5 },
		Rotation = CFrame.Angles(math.rad(-40), 0, math.rad(35)),
	},
	LeftKnee = {
		Limits = { Lower = 0, Upper = 120 }
	},
	LeftAnkle = {
		Limits = { Cone = 10, Twist = 0.5 }
	},
	RightHip = {
		Limits = { Cone = 40, Twist = 2.5 },
		Rotation = CFrame.Angles(math.rad(-40), 0, math.rad(-35))
	},
	RightKnee = {
		Limits = { Lower = 0, Upper = 120 }
	},
	RightAnkle = {
		Limits = { Cone = 10, Twist = 0.5 }
	}
}

local GROUPS = {
	UpperBody = {
		"Waist",
		"Neck",
		"LeftShoulder",
		"RightShoulder",
		"LeftElbow",
		"RightElbow",
		"LeftWrist",
		"RightWrist"
	},
	LowerBody = {
		"LeftHip",
		"RightHip",
		"LeftKnee",
		"RightKnee",
		"LeftAnkle",
		"RightAnkle"
	},
	LeftArm = {
		"LeftShoulder",
		"LeftElbow",
		"LeftWrist",
	},
	RightArm = {
		"RightShoulder",
		"RightElbow",
		"RightWrist"
	},
	LeftLeg = {
		"LeftHip",
		"LeftKnee",
		"LeftAnkle"
	},
	RightLeg = {
		"RightHip",
		"RightKnee",
		"RightAnkle"
	},
}

local Ragdoll = {}
Ragdoll.__index = Ragdoll

function Ragdoll.new(character)
	local self = setmetatable({}, Ragdoll)
	self.character = character
	self.humanoid = character:WaitForChild("Humanoid")

	self.joints = {}
	for jointName, info in pairs(JOINT_INFO) do
		self.joints[jointName] = self:setupJoint(jointName, info)
	end

	return self
end

function Ragdoll:setupJoint(jointName, info)
	if self.joints[jointName] then
		return self.joints[jointName]
	end

	local constraintName = jointName .. "Constraint"
	local rigAttachmentName = jointName .. "RigAttachment"
	local existingConstraint = self.character:FindFirstChild(constraintName, true)
	local existingMotor = self.character:FindFirstChild(jointName, true)
	if not existingMotor then
		return nil
	end

	if existingConstraint or RunService:IsClient() then
		existingConstraint = self.character:WaitForChild(constraintName)
		return {
			constraint = existingConstraint,
			motor = existingMotor,
			ragdolled = existingMotor.Part1 ~= nil
		}
	else
		local constraintType = "HingeConstraint"
		if info.Limits and info.Limits.Cone and info.Limits.Twist then
			constraintType = "BallSocketConstraint"
		end

		local constraint = Instance.new(constraintType)
		constraint.Name = constraintName
		constraint.Enabled = false
		constraint.Attachment0 = existingMotor.Part0:FindFirstChild(rigAttachmentName)
		constraint.Attachment1 = existingMotor.Part1:FindFirstChild(rigAttachmentName)
		constraint.LimitsEnabled = info.Limits ~= nil

		if info.Limits and info.Limits.Cone and info.Limits.Twist then
			constraint.UpperAngle = info.Limits.Cone
			constraint.TwistLimitsEnabled = true
			constraint.TwistLowerAngle = -info.Limits.Twist
			constraint.TwistUpperAngle = info.Limits.Twist
		elseif info.Limits and info.Limits.Lower and info.Limits.Upper then
			constraint.LowerAngle = info.Limits.Lower
			constraint.UpperAngle = info.Limits.Upper
		end

		constraint.Parent = existingMotor.Parent

		return {
			constraint = constraint,
			motor = existingMotor,
			ragdolled = false
		}
	end
end

function Ragdoll:setJointRagdolled(jointName, ragdolled)
	local joint = self.joints[jointName]
	if not joint then return end

	joint.constraint.Enabled = ragdolled
	if joint.motor and joint.motor:IsA("Motor6D") then
		if ragdolled then
			joint.motor.Part1 = nil
		else
			joint.motor.Part1 = joint.motor.Parent
		end
	end
end

function Ragdoll:setGroupRagdolled(groupName, ragdolled)
	local groupJoints = GROUPS[groupName]
	assert(groupJoints, string.format("%s is not a valid ragdoll group", tostring(groupName)))

	for _, jointName in pairs(groupJoints) do
		self:setJointRagdolled(jointName, ragdolled)
	end
end

function Ragdoll:setRagdolled(ragdolled, whitelist)
	for jointName in pairs(self.joints) do
		if not whitelist or whitelist[jointName] then
			self:setJointRagdolled(jointName, ragdolled)
		end
	end
end

function Ragdoll:destroy()
	self:setRagdolled(false)
	for _, joint in pairs(self.joints) do
		if joint.constraint then
			joint.constraint:Destroy()
		end
	end
	self.joints = {}
end

return Ragdoll

end))
ModuleScript149.Name = "Roblox"
ModuleScript149.Parent = Folder144
table.insert(cors,sandbox(ModuleScript149,function()
local TweenService 		= game:GetService("TweenService")
local CollectionService = game:GetService("CollectionService")
local RunService 		= game:GetService("RunService")
local UserInputService	= game:GetService("UserInputService")

local Roblox = {}

Roblox.Random = Random.new()
Roblox.zeroVector2 = Vector2.new()
Roblox.zeroVector3 = Vector3.new()
Roblox.identityCFrame = CFrame.new()
Roblox.upVector2 = Vector2.new(0, 1)
Roblox.upVector3 = Vector3.new(0, 1, 0)

local guidCharsText = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$%^&*()_+./"
local guidChars = {}
for i = 1, #guidCharsText do
	guidChars[i] = guidCharsText:sub(i, i)
end
local guidRandom = Random.new()

function Roblox.newGuid()
	local guid = ""
	for _ = 1, 10 do
		local char = guidRandom:NextInteger(1,#guidChars)
		guid = guid .. guidChars[char]
	end
	return guid
end

function Roblox.isPlaySolo()
	return RunService:IsClient() and RunService:IsServer() and RunService:IsStudio()
end

function Roblox.waitForDescendant(instance, descendantName, timeout)
	timeout = timeout or 60
	local found = instance:FindFirstChild(descendantName, true)
	if found then
		return found
	end

	if timeout < 1e6 and timeout > 0 then
		coroutine.wrap(function()
			wait(timeout)
			if not found then
				warn("Roblox.waitForDescendant(%s, %s) is taking too long")
			end
		end)()
	end

	while not found do
		local newDescendant = instance.DescendantAdded:Wait()
		if newDescendant.Name == descendantName then
			found = newDescendant
			return newDescendant
		end
	end
end

function Roblox.create(className)
	return function(props)
		local instance = Instance.new(className)
		for key, val in pairs(props) do
			if key ~= "Parent" then
				instance[key] = val
			end
		end
		instance.Parent = props.Parent
		return instance
	end
end

function Roblox.weldModel(model)
	local rootPart = model.PrimaryPart
	for _, part in pairs(model:GetDescendants()) do
		if part:IsA("BasePart") and part ~= rootPart then
			local weld = Instance.new("WeldConstraint")
			weld.Part0 = rootPart
			weld.Part1 = part
			weld.Parent = part
		end
	end
end

function Roblox.setNetworkOwner(model, owner)
	if not model then warn("Cannot setNetworkOwner on nil model") return end
	for _, part in pairs(model:GetDescendants()) do
		if part:IsA("BasePart") and not part.Anchored then
			part:SetNetworkOwner(owner)
		end
	end
end

function Roblox.createMotor6D(root, child)
	local motor = Instance.new("Motor6D")
	motor.Part0 = root
	motor.Part1 = child

	motor.C0 = root.CFrame:toObjectSpace(child.CFrame)
	motor.C1 = CFrame.new()

	motor.Parent = root
	return motor
end

function Roblox.getTotalMass(part)
	local allConnected = part:GetConnectedParts(true)
	local total = 0
	for _, v in pairs(allConnected) do
		total = total + v:GetMass()
	end
	return total
end

function Roblox.waitForTween(tweenInstance, tweenInfo, tweenProps)
	local tween = TweenService:Create(tweenInstance, tweenInfo, tweenProps)
	tween:Play()
	tween.Completed:wait()
end

function Roblox.tween(tweenInstance, tweenInfo, tweenProps)
	local tween = TweenService:Create(tweenInstance, tweenInfo, tweenProps)
	tween:Play()
end

function Roblox.fadeAway(gui, duration, level)
	duration = duration or 0.5
	level = level or 0

	local tweenInfo = TweenInfo.new(duration)
	local tweenProps = { BackgroundTransparency = 1 }

	if gui:IsA("TextButton") or gui:IsA("TextLabel") or gui:IsA("TextBox") then
		tweenProps.TextTransparency = 1
		tweenProps.TextStrokeTransparency = 1
	elseif gui:IsA("ImageLabel") or gui:IsA("ImageButton") then
		tweenProps.ImageTransparency = 1
	else
		return
	end

	for _, v in pairs(gui:GetChildren()) do
		Roblox.fadeAway(v, duration, level + 1)
	end


	if level == 0 then
		coroutine.wrap(function()
			Roblox.waitForTween(gui, tweenInfo, tweenProps)
			gui:Destroy()
		end)()
	else
		Roblox.tween(gui, tweenInfo, tweenProps)
	end
end

function Roblox.setModelAnchored(model, anchored)
	for _, part in pairs(model:GetDescendants()) do
		if part:IsA("BasePart") then
			part.Anchored = anchored
		end
	end
end

function Roblox.setModelLocalVisible(model, visible)
	for _, part in pairs(model:GetDescendants()) do
		if part:IsA("BasePart") then
			part.LocalTransparencyModifier = visible and 0 or 1
		elseif part:IsA("SurfaceGui") then
			part.Enabled = visible
		elseif part:IsA("Decal") then
			part.Transparency = visible and 0 or 1
		end
	end
end

function Roblox.forAllTagged(tagName, enterFunc, exitFunc)
	for _, obj in pairs(CollectionService:GetTagged(tagName)) do
		if enterFunc then
			enterFunc(obj, tagName)
		end
	end
	if enterFunc then
		CollectionService:GetInstanceAddedSignal(tagName):Connect(function(obj) enterFunc(obj, tagName) end)
	end
	if exitFunc then
		CollectionService:GetInstanceRemovedSignal(tagName):Connect(function(obj) exitFunc(obj, tagName) end)
	end
end

function Roblox.getHumanoidFromCharacterPart(part)
	local currentNode = part
	while currentNode do
		local humanoid = currentNode:FindFirstChildOfClass("Humanoid")
		if humanoid then return humanoid end
		currentNode = currentNode.Parent
	end
	return nil
end

local addEsEndings = {
	s = true,
	sh = true,
	ch = true,
	x = true,
	z = true
}
local vowels = {
	a = true,
	e = true,
	i = true,
	o = true,
	u = true
}
function Roblox.formatPlural(num, name, wordOnly)
	if num ~= 1 then
		local lastTwo = name:sub(-2):lower()
		local lastOne = name:sub(-1):lower()

		local suffix = "s"
		if addEsEndings[lastTwo] or addEsEndings[lastOne] then
			suffix = "es"
		elseif lastOne == "o" and #lastTwo == 2 then
			local secondToLast = lastTwo:sub(1, 1)
			if not vowels[secondToLast] then
				suffix = "es"
			end
		end
		name = name .. suffix
	end
	if not wordOnly then
		return ("%s %s"):format(Roblox.formatInteger(num), name)
	else
		return name
	end
end

function Roblox.formatNumberTight(number)
	local order = math.log10(number)
	if order >= 3 and order < 6 then
		return ("%.1fK"):format(number / (10^3))
	end
	if order >= 6 and order < 9 then
		return ("%.1fM"):format(number / (10^6))
	end
	if order >= 9 then
		return ("%.1fB"):format(number / (10^9))
	end

	return tostring(math.floor(number + 0.5))
end

function Roblox.formatInteger(amount)
	amount = math.floor(amount + 0.5)
	local formatted = amount
	local numMatches
	repeat
		formatted, numMatches = string.gsub(formatted, "^(-?%d+)(%d%d%d)", "%1,%2")
	until numMatches == 0
	return formatted
end

function Roblox.round(val, decimal)
	if decimal then
		return math.floor((val * 10 ^ decimal) + 0.5) / (10 ^ decimal)
	else
		return math.floor(val + 0.5)
	end
end

function Roblox.formatNumber(number)
	local result, integral, fractional

	integral, fractional = math.modf(number)
	result = Roblox.formatInteger(integral)

	if fractional ~= 0 then
		result = result .. "." .. string.sub(tostring(math.abs(fractional)),3)
	end
	if number < 0 then
		result = "-" .. result
	end

	return result
end

function Roblox.isPointInsidePart(point, part)
	local localPos = part.CFrame:pointToObjectSpace(point)
	return math.abs(localPos.X) <= part.Size.X * 0.5 and math.abs(localPos.Y) <= part.Size.Y * 0.5 and math.abs(localPos.Z) <= part.Size.Z * 0.5
end

function Roblox.rayPlaneIntersect(ray, pointOnPlane, planeNormal)
	local Vd = planeNormal:Dot(ray.Direction)
	if Vd == 0 then -- parallel, no intersection
		return nil
	end

	local V0 = planeNormal:Dot(pointOnPlane - ray.Origin)
	local t = V0 / Vd
	if t < 0 then --plane is behind ray origin, and thus there is no intersection
		return nil
	end

	return ray.Origin + ray.Direction * t
end

function Roblox.debugPrint(t, level)
	level = level or 0
	local tabs = string.rep("\t", level)
	if typeof(t) == "table" then
		for key, val in pairs(t) do
			print(tabs, key, "=", val)
			if typeof(val) == "table" then
				Roblox.debugPrint(val, level + 1)
			end
		end
	end
end

local function findInstanceImpl(root, path, getChildFunc)
	local currentInstance = root

	while true do
		local nextChildName
		local nextSeparator = path:find("%.")
		if not nextSeparator then
			nextChildName = path
		else
			nextChildName = path:sub(1, nextSeparator - 1)
			path = path:sub(nextSeparator + 1)
		end

		local child = getChildFunc(currentInstance, nextChildName)
		if child then
			currentInstance = child
		else
			return nil
		end
	end
end

local function findFirstChildImpl(parent, childName)
	return parent:FindFirstChild(childName)
end
local function waitForChildImpl(parent, childName)
	return parent:WaitForChild(childName)
end

function Roblox.findInstance(root, path)
	return findInstanceImpl(root, path, findFirstChildImpl)
end

function Roblox.waitForInstance(root, path)
	return findInstanceImpl(root, path, waitForChildImpl)
end

function Roblox.penetrateCast(ray, ignoreList)
	debug.profilebegin("penetrateCast")
	local tries = 0
	local hitPart, hitPoint, hitNormal, hitMaterial = nil, ray.Origin + ray.Direction, Vector3.new(0, 1, 0), Enum.Material.Air
	while tries < 50 do
		tries = tries + 1
		hitPart, hitPoint, hitNormal, hitMaterial = workspace:FindPartOnRayWithIgnoreList(ray, ignoreList, false, true)
		if hitPart and (not hitPart.CanCollide or CollectionService:HasTag(hitPart, "DroppedItemPart") or CollectionService:HasTag(hitPart, "Hidden")) and hitPart.Parent:FindFirstChildOfClass("Humanoid") == nil then
			table.insert(ignoreList, hitPart)
		else
			break
		end
	end
	debug.profileend()
	return hitPart, hitPoint, hitNormal, hitMaterial
end

function Roblox.posInGuiObject(pos, guiObject)
	local guiMin = guiObject.AbsolutePosition
	local guiMax = guiMin + guiObject.AbsoluteSize
	return pos.X >= guiMin.X and pos.X <= guiMax.X and pos.Y >= guiMin.Y and pos.Y <= guiMax.Y
end

function Roblox.getUTCTime()
	local dateInfo = os.date("!*t")
	return string.format("%04d-%02d-%02d %02d:%02d:%02d", dateInfo.year, dateInfo.month, dateInfo.day, dateInfo.hour, dateInfo.min, dateInfo.sec)
end

function Roblox.getUTCTimestamp()
	return os.time(os.date("!*t"))
end

local DURATION_TOKENS = {
	{ "years",   "y",  31536000 },
	{ "months",  "mo", 2592000 },
	{ "weeks",   "w",  604800 },
	{ "days",    "d",  86400 },
	{ "hours",   "h",  3600 },
	{ "minutes", "m",  60 },
	{ "seconds", "s",  1 },
}
function Roblox.parseDurationInSeconds(inputStr)
	local tokensFound = {}
	local totalDurationSeconds = 0
	for _, tokenInfo in pairs(DURATION_TOKENS) do
		local numFound = string.match(inputStr, "(%d+)" .. tokenInfo[2])
		if numFound then
			local num = tonumber(numFound) or 0
			if num > 0 then
				table.insert(tokensFound, string.format("%d %s", num, tokenInfo[1]))
			end
			totalDurationSeconds = totalDurationSeconds + (num * tokenInfo[3])
		end
	end

	local outputStr = table.concat(tokensFound, ", ")
	return totalDurationSeconds, outputStr
end

local random = Random.new()
function Roblox.chooseWeighted(choiceTable)
    local sum = 0
    for _, weight in pairs(choiceTable) do
        sum = sum + weight
    end

    local roll = random:NextNumber(0, 1)
    local choiceSum = 0
    for choiceName, weight in pairs(choiceTable) do
        local chance = weight / sum
        if roll >= choiceSum and roll < choiceSum + chance then
            return choiceName
        else
            choiceSum = choiceSum + chance
        end
    end

    return nil
end

function Roblox.hasMatchingTag(instance, tagPattern)
	for _, tagName in pairs(CollectionService:GetTags(instance)) do
		if tagName:match(tagPattern) ~= nil then
			return true
		end
	end
	return false
end

local highlightTweens = setmetatable({}, { __mode = 'k' })
function Roblox.showHighlight(instance, show)
	local highlightInstance = instance:FindFirstChild("Highlight")
	if not highlightInstance or not highlightInstance:IsA("ImageLabel") then
		return
	end

	local existingTween = highlightTweens[instance]
	if existingTween then
		if show then
			return
		else
			existingTween:Cancel()
			highlightTweens[instance] = nil
			highlightInstance.ImageTransparency = 1
		end
	else
		if not show then
			return
		else
			coroutine.wrap(function()
				highlightInstance.ImageTransparency = 1
				local newTween = TweenService:Create(highlightInstance, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut, 0, true), { ImageTransparency = 0 })
				highlightTweens[instance] = newTween
				while highlightTweens[instance] == newTween do
					newTween:Play()
					newTween.Completed:Wait()
				end
			end)()
		end
	end
end

function Roblox.getClickVerb(capitalize)
	local verb = "Click"
	if UserInputService.TouchEnabled then
		verb = "Tap"
	end

	if not capitalize then
		verb = verb:lower()
	end
	return verb
end

function Roblox.computeLaunchAngle(relativePoint, launchVelocity)
	local dx, dy = -relativePoint.Z, relativePoint.Y

	local g = workspace.Gravity
	local invRoot = (launchVelocity ^ 4) - (g * ((g * dx * dx) + (2 * dy * launchVelocity * launchVelocity)))
	if invRoot <= 0 then
		return math.pi / 4
	end

	local root = math.sqrt(invRoot)
	local angle1 = math.atan(((launchVelocity * launchVelocity) + root) / (g * dx))
	local angle2 = math.atan(((launchVelocity * launchVelocity) - root) / (g * dx))

	local chosenAngle = math.min(angle1, angle2)

	return chosenAngle
end

function Roblox.getClosestPointOnLine(line0, line1, point, doClamp)
	local lineVec = line1 - line0
	local pointFromLine0 = point - line0

	local dotProduct = lineVec:Dot(pointFromLine0)
	local t = dotProduct / (lineVec.Magnitude ^ 2)
	if doClamp ~= false then
		t = math.clamp(t, 0, 1)
	end
	local pointOnLine = line0:Lerp(line1, t)
	return pointOnLine, t, (point - pointOnLine).Magnitude
end

function Roblox.getClosestPointOnLines(referencePoint, lines)
	local closestPoint, closestDist, closestLine, closestT = nil, math.huge, nil, 0
	for i = 1, #lines do
		local lineA, lineB = lines[i][1], lines[i][2]

		local point, t, dist = Roblox.getClosestPointOnLine(lineA, lineB, referencePoint)
		if dist < closestDist then
			closestPoint = point
			closestDist = dist
			closestLine = i
			closestT = t
		end
	end

	return closestPoint, closestDist, closestLine, closestT
end

function Roblox.getPointInFrontOnLines(referencePoint, forwardOffset, lines)
	local closestPoint, _, closestLine, closestT = Roblox.getClosestPointOnLines(referencePoint, lines)
	if closestPoint then
		local pointOffset = closestPoint
		local offsetBudget = forwardOffset

		if closestLine == 1 and closestT == 0 then
			local beforeDist = (lines[1][1] - Roblox.getClosestPointOnLine(lines[1][1], lines[1][2], referencePoint, false)).Magnitude
			offsetBudget = offsetBudget - beforeDist
		end

		local lineDir = Vector3.new(0, 0, 0)
		while offsetBudget > 0 and closestLine <= #lines do
			local lineA, lineB = lines[closestLine][1], lines[closestLine][2]
			local lineVec = lineB - lineA
			local lineLength = lineVec.Magnitude
			local pointDistAlongLine = (pointOffset - lineA).Magnitude
			local distLeftOnLine = lineLength - pointDistAlongLine
			lineDir = lineVec.Unit

			if offsetBudget > distLeftOnLine then
				offsetBudget = offsetBudget - distLeftOnLine
				pointOffset = lineB
				closestLine = closestLine + 1
			else
				break
			end
		end
		pointOffset = pointOffset + lineDir * offsetBudget

		return pointOffset
	end
	return closestPoint
end

function Roblox.applySpread(unspreadDir, randomGenerator, minSpread, maxSpread)
	local spreadRotation = randomGenerator:NextNumber(-math.pi, math.pi)
	local spreadOffset = randomGenerator:NextNumber(minSpread, maxSpread)
	local spreadTransform = CFrame.fromAxisAngle(Vector3.new(math.cos(spreadRotation), math.sin(spreadRotation), 0), spreadOffset)
	local unspreadCFrame = CFrame.new(Vector3.new(), unspreadDir)
	return (unspreadCFrame * spreadTransform).LookVector
end

return Roblox

end))
ModuleScript150.Name = "ShoulderCamera"
ModuleScript150.Parent = Folder144
table.insert(cors,sandbox(ModuleScript150,function()
local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")

local UserGameSettings = UserSettings():GetService("UserGameSettings")

local LocalPlayer = Players.LocalPlayer
if RunService:IsClient() then
	while not LocalPlayer do
		Players.PlayerAdded:Wait()
		LocalPlayer = Players.LocalPlayer
	end
end
local Settings = UserSettings()
local GameSettings = Settings.GameSettings

local CAMERA_RENDERSTEP_NAME = "ShoulderCameraUpdate"
local ZOOM_ACTION_NAME = "ShoulderCameraZoom"
local SPRINT_ACTION_NAME = "ShoulderCameraSprint"
local CONTROLLABLE_HUMANOID_STATES = {
	[Enum.HumanoidStateType.Running] = true,
	[Enum.HumanoidStateType.RunningNoPhysics] = true,
	[Enum.HumanoidStateType.Freefall] = true,
	[Enum.HumanoidStateType.Jumping] = true,
	[Enum.HumanoidStateType.Swimming] = false,
	[Enum.HumanoidStateType.Landed] = true
}

-- Gamepad thumbstick utilities
local k = 0.5
local lowerK = 0.9
local function SCurveTransform(t)
	t = math.clamp(t, -1,1)
	if t >= 0 then
		return (k*t) / (k - t + 1)
	end
	return -((lowerK*-t) / (lowerK + t + 1))
end

local DEADZONE = 0.25
local function toSCurveSpace(t)
	return (1 + DEADZONE) * (2*math.abs(t) - 1) - DEADZONE
end

local function fromSCurveSpace(t)
	return t/2 + 0.5
end

-- Applies a nonlinear transform to the thumbstick position to serve as the acceleration for camera rotation.
-- See https://www.desmos.com/calculator/xw2ytjpzco for a visual reference.
local function gamepadLinearToCurve(thumbstickPosition)
	return Vector2.new(
		math.clamp(math.sign(thumbstickPosition.X) * fromSCurveSpace(SCurveTransform(toSCurveSpace(math.abs(thumbstickPosition.X)))), -1, 1),
		math.clamp(math.sign(thumbstickPosition.Y) * fromSCurveSpace(SCurveTransform(toSCurveSpace(math.abs(thumbstickPosition.Y)))), -1, 1))
end


-- Remove back accessories since they frequently block the camera
local function isBackAccessory(instance)
	if instance and instance:IsA("Accessory") then
		local handle = instance:WaitForChild("Handle", 5)
		if handle and handle:IsA("Part") then
			local bodyBackAttachment = handle:WaitForChild("BodyBackAttachment", 5)
			if bodyBackAttachment and bodyBackAttachment:IsA("Attachment") then
				return true
			end

			local waistBackAttachment = handle:WaitForChild("WaistBackAttachment", 5)
			if waistBackAttachment and waistBackAttachment:IsA("Attachment") then
				return true
			end
		end
	end

	return false
end

local function removeBackAccessoriesFromCharacter(character)
	for _, child in ipairs(character:GetChildren()) do
		coroutine.wrap(function()
			if isBackAccessory(child) then
				child:Destroy()
			end
		end)()
	end
end

local descendantAddedConnection = nil
local function onCharacterAdded(character)
	removeBackAccessoriesFromCharacter(character)
	descendantAddedConnection = character.DescendantAdded:Connect(function(descendant)
		coroutine.wrap(function()
			if isBackAccessory(descendant) then
				descendant:Destroy()
			end
		end)()
	end)
end

local function onCharacterRemoving(character)
	if descendantAddedConnection then
		descendantAddedConnection:Disconnect()
		descendantAddedConnection = nil
	end
end

-- Set up the Local Player
if RunService:IsClient() then
	if LocalPlayer.Character then
		onCharacterAdded(LocalPlayer.Character)
	end
	LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
	LocalPlayer.CharacterRemoving:Connect(onCharacterRemoving)
end


local ShoulderCamera = {}
ShoulderCamera.__index = ShoulderCamera
ShoulderCamera.SpringService = nil

function ShoulderCamera.new(weaponsSystem)
	local self = setmetatable({}, ShoulderCamera)
	self.weaponsSystem = weaponsSystem

	-- Configuration parameters (constants)
	self.fieldOfView = 70
	self.minPitch = math.rad(-75) -- min degrees camera can angle down
	self.maxPitch = math.rad(75) -- max degrees camera can cangle up
	self.normalOffset = Vector3.new(2.25, 2.25, 10.5) -- this is the camera's offset from the player
	self.zoomedOffsetDistance = 8 -- number of studs to zoom in from default offset when zooming
	self.normalCrosshairScale = 1
	self.zoomedCrosshairScale = 0.75
	self.defaultZoomFactor = 1
	self.canZoom = true
	self.zoomInputs = { Enum.UserInputType.MouseButton2, Enum.KeyCode.ButtonL2 }
	self.sprintInputs = { Enum.KeyCode.LeftShift }
	self.mouseRadsPerPixel = Vector2.new(1 / 480, 1 / 480)
	self.zoomedMouseRadsPerPixel = Vector2.new(1 / 1200, 1 / 1200)
	self.touchSensitivity = Vector2.new(1 / 100, 1 / 100)
	self.zoomedTouchSensitivity = Vector2.new(1 / 200, 1 / 200)
	self.touchDelayTime = 0.25 -- max time for a touch to count as a tap (to shoot the weapon instead of control camera),
	                           -- also the amount of time players have to start a second touch after releasing the first time to trigger automatic fire
	self.recoilDecay = 2 -- higher number means faster recoil decay rate
	self.rotateCharacterWithCamera = true
	self.gamepadSensitivityModifier = Vector2.new(0.85, 0.65)
	-- Walk speeds
	self.zoomWalkSpeed = 8
	self.normalWalkSpeed = 16
	self.sprintingWalkSpeed = 24

	-- Current state
	self.enabled = false
	self.yaw = 0
	self.pitch = 0
	self.currentCFrame = CFrame.new()
	self.currentOffset = self.normalOffset
	self.currentRecoil = Vector2.new(0, 0)
	self.currentMouseRadsPerPixel = self.mouseRadsPerPixel
	self.currentTouchSensitivity = self.touchSensitivity
	self.mouseLocked = true
	self.touchPanAccumulator = Vector2.new(0, 0) -- used for touch devices, represents amount the player has dragged their finger since starting a touch
	self.currentTool = nil
	self.sprintingInputActivated = false
	self.desiredWalkSpeed = self.normalWalkSpeed
	self.sprintEnabled = false -- true means player will move faster while doing sprint inputs
	self.slowZoomWalkEnabled = false -- true means player will move slower while doing zoom inputs
	self.desiredFieldOfView = self.fieldOfView
	-- Zoom variables
	self.zoomedFromInput = false -- true if player has performed input to zoom
	self.forcedZoomed = false -- ignores zoomedFromInput and canZoom
	self.zoomState = false -- true if player is currently zoomed in
	self.zoomAlpha = 0
	self.hasScope = false
	self.hideToolWhileZoomed = false
	self.currentZoomFactor = self.defaultZoomFactor
	self.zoomedFOV = self.fieldOfView
	-- Gamepad variables
	self.gamepadPan = Vector2.new(0, 0) -- essentially the amount the gamepad has moved from resting position
	self.movementPan = Vector2.new(0, 0) -- this is for movement (gamepadPan is for camera)
	self.lastThumbstickPos = Vector2.new(0, 0)
	self.lastThumbstickTime = nil
	self.currentGamepadSpeed = 0
	self.lastGamepadVelocity = Vector2.new(0, 0)

	-- Occlusion
	self.lastOcclusionDistance = 0
	self.lastOcclusionReachedTime = 0 -- marks the last time camera was at the true occlusion distance
	self.defaultTimeUntilZoomOut = 0
	self.timeUntilZoomOut = self.defaultTimeUntilZoomOut -- time after lastOcclusionReachedTime that camera will zoom out
	self.timeLastPoppedWayIn = 0 -- this holds the last time camera popped nearly into first person
	self.isZoomingOut = false
	self.tweenOutTime = 0.2
	self.curOcclusionTween = nil
	self.occlusionTweenObject = nil

	-- Side correction (when player is against a wall)
	self.sideCorrectionGoalVector = nil
	self.lastSideCorrectionMagnitude = 0
	self.lastSideCorrectionReachedTime = 0 -- marks the last time the camera was at the true correction distance
	self.revertSideCorrectionSpeedMultiplier = 2 -- speed at which camera reverts the side correction (towards 0 correction)
	self.defaultTimeUntilRevertSideCorrection = 0.75
	self.timeUntilRevertSideCorrection = self.defaultTimeUntilRevertSideCorrection -- time after lastSideCorrectionReachedTime that camera will revert the correction
	self.isRevertingSideCorrection = false

	-- Datamodel references
	self.eventConnections = {}
	self.raycastIgnoreList = {}
	self.currentCamera = nil
	self.currentCharacter = nil
	self.currentHumanoid = nil
	self.currentRootPart = nil
	self.controlModule = nil -- used to get player's touch input for moving character
	self.random = Random.new()

	return self
end

function ShoulderCamera:setEnabled(enabled)
	if self.enabled == enabled then
		return
	end
	self.enabled = enabled

	if self.enabled then
		RunService:BindToRenderStep(CAMERA_RENDERSTEP_NAME, Enum.RenderPriority.Camera.Value - 1, function(dt) self:onRenderStep(dt) end)
		ContextActionService:BindAction(ZOOM_ACTION_NAME, function(...) self:onZoomAction(...) end, false, unpack(self.zoomInputs))
		ContextActionService:BindAction(SPRINT_ACTION_NAME, function(...) self:onSprintAction(...) end, false, unpack(self.sprintInputs))

		table.insert(self.eventConnections, LocalPlayer.CharacterAdded:Connect(function(character) self:onCurrentCharacterChanged(character) end))
		table.insert(self.eventConnections, LocalPlayer.CharacterRemoving:Connect(function() self:onCurrentCharacterChanged(nil) end))
		table.insert(self.eventConnections, workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function() self:onCurrentCameraChanged(workspace.CurrentCamera) end))
		table.insert(self.eventConnections, UserInputService.InputBegan:Connect(function(inputObj, wasProcessed) self:onInputBegan(inputObj, wasProcessed) end))
		table.insert(self.eventConnections, UserInputService.InputChanged:Connect(function(inputObj, wasProcessed) self:onInputChanged(inputObj, wasProcessed) end))
		table.insert(self.eventConnections, UserInputService.InputEnded:Connect(function(inputObj, wasProcessed) self:onInputEnded(inputObj, wasProcessed) end))

		self:onCurrentCharacterChanged(LocalPlayer.Character)
		self:onCurrentCameraChanged(workspace.CurrentCamera)

		-- Make transition to shouldercamera smooth by facing in same direction as previous camera
		local cameraLook = self.currentCamera.CFrame.lookVector
		self.yaw = math.atan2(-cameraLook.X, -cameraLook.Z)
		self.pitch = math.asin(cameraLook.Y)

		self.currentCamera.CameraType = Enum.CameraType.Scriptable

		self:setZoomFactor(self.currentZoomFactor) -- this ensures that zoomedFOV reflecs currentZoomFactor

		workspace.CurrentCamera.CameraSubject = self.currentRootPart

		self.occlusionTweenObject = Instance.new("NumberValue")
		self.occlusionTweenObject.Name = "OcclusionTweenObject"
		self.occlusionTweenObject.Parent = script
		self.occlusionTweenObject.Changed:Connect(function(value)
			self.lastOcclusionDistance = value
		end)

		-- Sets up weapon system to use camera for raycast direction instead of gun look vector
		self.weaponsSystem.aimRayCallback = function()
			local cameraCFrame = self.currentCFrame
			return Ray.new(cameraCFrame.p, cameraCFrame.LookVector * 500)
		end
	else
		RunService:UnbindFromRenderStep(CAMERA_RENDERSTEP_NAME)
		ContextActionService:UnbindAction(ZOOM_ACTION_NAME)
		ContextActionService:UnbindAction(SPRINT_ACTION_NAME)

		if self.currentHumanoid then
			self.currentHumanoid.AutoRotate = true
		end

		if self.currentCamera then
			self.currentCamera.CameraType = Enum.CameraType.Custom
		end

		self:updateZoomState()

		self.yaw = 0
		self.pitch = 0

		for _, conn in pairs(self.eventConnections) do
			conn:Disconnect()
		end
		self.eventConnections = {}

		UserInputService.MouseBehavior = Enum.MouseBehavior.Default
		UserInputService.MouseIconEnabled = true
	end
end

function ShoulderCamera:onRenderStep(dt)
	if not self.enabled or
	   not self.currentCamera or
	   not self.currentCharacter or
	   not self.currentHumanoid or
	   not self.currentRootPart
	then
		return
	end

	-- Hide mouse and lock to center if applicable
	if self.mouseLocked and not GuiService:GetEmotesMenuOpen() then
		UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
		UserInputService.MouseIconEnabled = false
	else
		UserInputService.MouseBehavior = Enum.MouseBehavior.Default
		UserInputService.MouseIconEnabled = true
	end

	-- Handle gamepad input
	self:processGamepadInput(dt)

	-- Smoothly zoom to desired values
	if self.hasScope then
		ShoulderCamera.SpringService:Target(self, 0.8, 8, { zoomAlpha = self.zoomState and 1 or 0 })
		ShoulderCamera.SpringService:Target(self.currentCamera, 0.8, 8, { FieldOfView = self.desiredFieldOfView })
	else
		ShoulderCamera.SpringService:Target(self, 0.8, 3, { zoomAlpha = self.zoomState and 1 or 0 })
		ShoulderCamera.SpringService:Target(self.currentCamera, 0.8, 3, { FieldOfView = self.desiredFieldOfView })
	end

	-- Handle walk speed changes
	if self.sprintEnabled or self.slowZoomWalkEnabled then
		self.desiredWalkSpeed = self.normalWalkSpeed
		if self.sprintEnabled and (self.sprintingInputActivated or self:sprintFromTouchInput() or self:sprintFromGamepadInput()) and not self.zoomState then
			self.desiredWalkSpeed = self.sprintingWalkSpeed
		end
		if self.slowZoomWalkEnabled and self.zoomAlpha > 0.1 then
			self.desiredWalkSpeed = self.zoomWalkSpeed
		end

		ShoulderCamera.SpringService:Target(self.currentHumanoid, 0.95, 4, { WalkSpeed = self.desiredWalkSpeed })
	end

	-- Initialize variables used for side correction, occlusion, and calculating camera focus/rotation
	local rootPartPos = self.currentRootPart.CFrame.Position
	local rootPartUnrotatedCFrame = CFrame.new(rootPartPos)
	local yawRotation = CFrame.Angles(0, self.yaw, 0)
	local pitchRotation = CFrame.Angles(self.pitch + self.currentRecoil.Y, 0, 0)
	local xOffset = CFrame.new(self.normalOffset.X, 0, 0)
	local yOffset = CFrame.new(0, self.normalOffset.Y, 0)
	local zOffset = CFrame.new(0, 0, self.normalOffset.Z)
	local collisionRadius = self:getCollisionRadius()
	local cameraYawRotationAndXOffset =
		yawRotation * 		-- First rotate around the Y axis (look left/right)
		xOffset 			-- Then perform the desired offset (so camera is centered to side of player instead of directly on player)
	local cameraFocus = rootPartUnrotatedCFrame * cameraYawRotationAndXOffset

	-- Handle/Calculate side correction when player is adjacent to a wall (so camera doesn't go in the wall)
	local vecToFocus = cameraFocus.p - rootPartPos
	local rayToFocus = Ray.new(rootPartPos, vecToFocus + (vecToFocus.Unit * collisionRadius))
	local hitPart, hitPoint, hitNormal = self:penetrateCast(rayToFocus, self.raycastIgnoreList)
	local currentTime = tick()
	local sideCorrectionGoalVector = Vector3.new() -- if nothing is adjacent to player, goal vector is (0, 0, 0)
	if hitPart then
		hitPoint = hitPoint + (hitNormal * collisionRadius)
		sideCorrectionGoalVector = hitPoint - cameraFocus.p
		if sideCorrectionGoalVector.Magnitude >= self.lastSideCorrectionMagnitude then -- make it easy for camera to pop closer to player (move left)
			if currentTime > self.lastSideCorrectionReachedTime + self.timeUntilRevertSideCorrection and self.lastSideCorrectionMagnitude ~= 0 then
				self.timeUntilRevertSideCorrection = self.defaultTimeUntilRevertSideCorrection * 2 -- double time until revert if popping in repeatedly
			elseif self.lastSideCorrectionMagnitude == 0 and self.timeUntilRevertSideCorrection ~= self.defaultTimeUntilRevertSideCorrection then
				self.timeUntilRevertSideCorrection = self.defaultTimeUntilRevertSideCorrection
			end
			self.lastSideCorrectionMagnitude = sideCorrectionGoalVector.Magnitude
			self.lastSideCorrectionReachedTime = currentTime
			self.isRevertingSideCorrection = false
		else
			self.isRevertingSideCorrection = true
		end
	elseif self.lastSideCorrectionMagnitude ~= 0 then
		self.isRevertingSideCorrection = true
	end
	if self.isRevertingSideCorrection then -- make it hard/slow for camera to revert side correction (move right)
		if sideCorrectionGoalVector.Magnitude > self.lastSideCorrectionMagnitude - 1 and sideCorrectionGoalVector.Magnitude ~= 0 then
			self.lastSideCorrectionReachedTime = currentTime -- reset timer if occlusion significantly increased since last frame
		end
		if currentTime > self.lastSideCorrectionReachedTime + self.timeUntilRevertSideCorrection then
			local sideCorrectionChangeAmount = dt * (vecToFocus.Magnitude) * self.revertSideCorrectionSpeedMultiplier
			self.lastSideCorrectionMagnitude = self.lastSideCorrectionMagnitude - sideCorrectionChangeAmount
			if sideCorrectionGoalVector.Magnitude >= self.lastSideCorrectionMagnitude then
				self.lastSideCorrectionMagnitude = sideCorrectionGoalVector.Magnitude
				self.lastSideCorrectionReachedTime = currentTime
				self.isRevertingSideCorrection = false
			end
		end
	end

	-- Update cameraFocus to reflect side correction
	cameraYawRotationAndXOffset = cameraYawRotationAndXOffset + (-vecToFocus.Unit * self.lastSideCorrectionMagnitude)
	cameraFocus = rootPartUnrotatedCFrame * cameraYawRotationAndXOffset
	self.currentCamera.Focus = cameraFocus

	-- Calculate and apply CFrame for camera
	local cameraCFrameInSubjectSpace =
		cameraYawRotationAndXOffset *
		pitchRotation * 	-- rotate around the X axis (look up/down)
		yOffset *			-- move camera up/vertically
		zOffset				-- move camera back
	self.currentCFrame = rootPartUnrotatedCFrame * cameraCFrameInSubjectSpace

	-- Move camera forward if zoomed in
	if self.zoomAlpha > 0 then
		local trueZoomedOffset = math.max(self.zoomedOffsetDistance - self.lastOcclusionDistance, 0) -- don't zoom too far in if already occluded
		self.currentCFrame = self.currentCFrame:lerp(self.currentCFrame + trueZoomedOffset * self.currentCFrame.LookVector.Unit, self.zoomAlpha)
	end

	self.currentCamera.CFrame = self.currentCFrame

	-- Handle occlusion
	local occlusionDistance = self.currentCamera:GetLargestCutoffDistance(self.raycastIgnoreList)
	if occlusionDistance > 1e-5 then
		occlusionDistance = occlusionDistance + collisionRadius
	end
	if occlusionDistance >= self.lastOcclusionDistance then -- make it easy for the camera to pop in towards the player
		if self.curOcclusionTween ~= nil then
			self.curOcclusionTween:Cancel()
			self.curOcclusionTween = nil
		end
		if currentTime > self.lastOcclusionReachedTime + self.timeUntilZoomOut and self.lastOcclusionDistance ~= 0 then
			self.timeUntilZoomOut = self.defaultTimeUntilZoomOut * 2 -- double time until zoom out if popping in repeatedly
		elseif self.lastOcclusionDistance == 0  and self.timeUntilZoomOut ~= self.defaultTimeUntilZoomOut then
			self.timeUntilZoomOut = self.defaultTimeUntilZoomOut
		end

		if occlusionDistance / self.normalOffset.Z > 0.8 and self.timeLastPoppedWayIn == 0 then
			self.timeLastPoppedWayIn = currentTime
		end

		self.lastOcclusionDistance = occlusionDistance
		self.lastOcclusionReachedTime = currentTime
		self.isZoomingOut = false
	else -- make it hard/slow for camera to zoom out
		self.isZoomingOut = true
		if occlusionDistance > self.lastOcclusionDistance - 2 and occlusionDistance ~= 0 then -- reset timer if occlusion significantly increased since last frame
			self.lastOcclusionReachedTime = currentTime
		end

		-- If occlusion pops camera in to almost first person for a short time, pop out instantly
		if currentTime < self.timeLastPoppedWayIn + self.defaultTimeUntilZoomOut and self.lastOcclusionDistance / self.normalOffset.Z > 0.8 then
			self.lastOcclusionDistance = occlusionDistance
			self.lastOcclusionReachedTime = currentTime
			self.isZoomingOut = false
		elseif currentTime >= self.timeLastPoppedWayIn + self.defaultTimeUntilZoomOut and self.timeLastPoppedWayIn ~= 0 then
			self.timeLastPoppedWayIn = 0
		end
	end

	-- Update occlusion amount if timeout time has passed
	if currentTime >= self.lastOcclusionReachedTime + self.timeUntilZoomOut and not self.zoomState then
		if self.curOcclusionTween == nil then
			self.occlusionTweenObject.Value = self.lastOcclusionDistance
			local tweenInfo = TweenInfo.new(self.tweenOutTime)
			local goal = {}
			goal.Value = self.lastOcclusionDistance - self.normalOffset.Z
			self.curOcclusionTween = TweenService:Create(self.occlusionTweenObject, tweenInfo, goal)
			self.curOcclusionTween:Play()
		end
	end

	-- Apply occlusion to camera CFrame
	local currentOffsetDir = self.currentCFrame.LookVector.Unit
	self.currentCFrame = self.currentCFrame + (currentOffsetDir * self.lastOcclusionDistance)
	self.currentCamera.CFrame = self.currentCFrame

	-- Apply recoil decay
	self.currentRecoil = self.currentRecoil - (self.currentRecoil * self.recoilDecay * dt)

	if self:isHumanoidControllable() and self.rotateCharacterWithCamera then
		self.currentHumanoid.AutoRotate = false
		self.currentRootPart.CFrame = CFrame.Angles(0, self.yaw, 0) + self.currentRootPart.Position -- rotate character to be upright and facing the same direction as camera
		self:applyRootJointFix()
	else
		self.currentHumanoid.AutoRotate = true
	end

	self:handlePartTransparencies()
	self:handleTouchToolFiring()
end

-- This function keeps the held weapon from bouncing up and down too much when you move
function ShoulderCamera:applyRootJointFix()
	if self.rootJoint then
		local translationScale = self.zoomState and Vector3.new(0.25, 0.25, 0.25) or Vector3.new(0.5, 0.5, 0.5)
		local rotationScale = self.zoomState and 0.15 or 0.2
		local rootRotation = self.rootJoint.Part0.CFrame - self.rootJoint.Part0.CFrame.Position
		local rotation = self.rootJoint.Transform - self.rootJoint.Transform.Position
		local yawRotation = CFrame.Angles(0, self.yaw, 0)
		local leadRotation = rootRotation:toObjectSpace(yawRotation)
		local rotationFix = self.rootRigAttach.CFrame
		if self:isHumanoidControllable() then
			rotationFix = self.rootJoint.Transform:inverse() * leadRotation * rotation:Lerp(CFrame.new(), 1 - rotationScale) + (self.rootJoint.Transform.Position * translationScale)
		end

		self.rootJoint.C0 = CFrame.new(self.rootJoint.C0.Position, self.rootJoint.C0.Position + rotationFix.LookVector.Unit)
	end
end

function ShoulderCamera:sprintFromTouchInput()
	local moveVector = nil
	local activeController = nil
	local activeControllerIsTouch = nil
	if self.controlModule then
		moveVector = self.controlModule:GetMoveVector()
		activeController = self.controlModule:GetActiveController()
	end
	if moveVector and activeController then
		activeControllerIsTouch = activeController.thumbstickFrame ~= nil or activeController.thumbpadFrame ~= nil
	end

	if activeControllerIsTouch then
		return (moveVector and moveVector.Magnitude >= 0.9)
	else
		return false
	end
end

function ShoulderCamera:sprintFromGamepadInput()
	return self.movementPan.Magnitude > 0.9
end

function ShoulderCamera:onCurrentCharacterChanged(character)
	self.currentCharacter = character
	if self.currentCharacter then
		self.raycastIgnoreList[1] = self.currentCharacter
		self.currentHumanoid = character:WaitForChild("Humanoid")
		self.currentRootPart = character:WaitForChild("HumanoidRootPart")

		self.rootRigAttach = self.currentRootPart:WaitForChild("RootRigAttachment")
		self.rootJoint = character:WaitForChild("LowerTorso"):WaitForChild("Root")
		self.currentWaist = character:WaitForChild("UpperTorso"):WaitForChild("Waist")
		self.currentWrist = character:WaitForChild("RightHand"):WaitForChild("RightWrist")
		self.wristAttach0 = character:WaitForChild("RightLowerArm"):WaitForChild("RightWristRigAttachment")
		self.wristAttach1 = character:WaitForChild("RightHand"):WaitForChild("RightWristRigAttachment")
		self.rightGripAttachment = character:WaitForChild("RightHand"):WaitForChild("RightGripAttachment")

		self.currentTool = character:FindFirstChildOfClass("Tool")

		self.eventConnections.humanoidDied = self.currentHumanoid.Died:Connect(function()
			self.zoomedFromInput = false
			self:updateZoomState()
		end)
		self.eventConnections.characterChildAdded = character.ChildAdded:Connect(function(child)
			if child:IsA("Tool") then
				self.currentTool = child
				self:updateZoomState()
			end
		end)
		self.eventConnections.characterChildRemoved = character.ChildRemoved:Connect(function(child)
			if child:IsA("Tool") and self.currentTool == child then
				self.currentTool = character:FindFirstChildOfClass("Tool")
				self:updateZoomState()
			end
		end)

		if Players.LocalPlayer then
			local PlayerScripts = Players.LocalPlayer:FindFirstChild("PlayerScripts")
			if PlayerScripts then
				local PlayerModule = PlayerScripts:FindFirstChild("PlayerModule")
				if PlayerModule then
					self.controlModule = require(PlayerModule:FindFirstChild("ControlModule"))
				end
			end
		end
	else
		if self.eventConnections.humanoidDied then
			self.eventConnections.humanoidDied:Disconnect()
			self.eventConnections.humanoidDied = nil
		end
		if self.eventConnections.characterChildAdded then
			self.eventConnections.characterChildAdded:Disconnect()
			self.eventConnections.characterChildAdded = nil
		end
		if self.eventConnections.characterChildRemoved then
			self.eventConnections.characterChildRemoved:Disconnect()
			self.eventConnections.characterChildRemoved = nil
		end

		self.currentTool = nil
		self.currentHumanoid = nil
		self.currentRootPart = nil
		self.controlModule = nil
	end
end

function ShoulderCamera:onCurrentCameraChanged(camera)
	if self.currentCamera == camera then
		return
	end

	self.currentCamera = camera

	if self.currentCamera then
		self.raycastIgnoreList[2] = self.currentCamera

		if self.eventConnections.cameraTypeChanged then
			self.eventConnections.cameraTypeChanged:Disconnect()
			self.eventConnections.cameraTypeChanged = nil
		end
		self.eventConnections.cameraTypeChanged = self.currentCamera:GetPropertyChangedSignal("CameraType"):Connect(function()
			if self.enabled then
				self.currentCamera.CameraType = Enum.CameraType.Scriptable
			end
		end)
	end
end

function ShoulderCamera:isHumanoidControllable()
	if not self.currentHumanoid then
		return false
	end
	local humanoidState = self.currentHumanoid:GetState()
	return CONTROLLABLE_HUMANOID_STATES[humanoidState] == true
end

function ShoulderCamera:getCollisionRadius()
	if not self.currentCamera then
		return 0
	end
	local viewportSize = self.currentCamera.ViewportSize
	local aspectRatio = viewportSize.X / viewportSize.Y
	local fovRads = math.rad(self.fieldOfView)
	local imageHeight = math.tan(fovRads) * math.abs(self.currentCamera.NearPlaneZ)
	local imageWidth = imageHeight * aspectRatio

	local cornerPos = Vector3.new(imageWidth, imageHeight, self.currentCamera.NearPlaneZ)
	return cornerPos.Magnitude
end

function ShoulderCamera:penetrateCast(ray, ignoreList)
	local tries = 0
	local hitPart, hitPoint, hitNormal, hitMaterial = nil, ray.Origin + ray.Direction, Vector3.new(0, 1, 0), Enum.Material.Air
	while tries < 50 do
		tries = tries + 1
		hitPart, hitPoint, hitNormal, hitMaterial = workspace:FindPartOnRayWithIgnoreList(ray, ignoreList, false, true)
		if hitPart and not hitPart.CanCollide then
			table.insert(ignoreList, hitPart)
		else
			break
		end
	end
	return hitPart, hitPoint, hitNormal, hitMaterial
end

function ShoulderCamera:getRelativePitch()
	if self.currentRootPart then
		local pitchRotation = CFrame.Angles(self.pitch, 0, 0)
		local relativeRotation = self.currentRootPart.CFrame:toObjectSpace(pitchRotation)
		local relativeLook = relativeRotation.lookVector

		local angle = math.asin(relativeLook.Y)
		return math.clamp(angle, self.minPitch, self.maxPitch)
	end
	return self.pitch
end

function ShoulderCamera:getCurrentFieldOfView()
	if self.zoomState then
		return self.zoomedFOV
	else
		return self.fieldOfView
	end
end

function ShoulderCamera:handlePartTransparencies()
	local partsLookup = {}
	local accoutrementsLookup = {}

	for _, child in pairs(self.currentCharacter:GetChildren()) do
		local hidden = false
		if child:IsA("BasePart") then
			hidden = partsLookup[child.Name] == true
			child.LocalTransparencyModifier = hidden and 1 or 0
		elseif child:IsA("Accoutrement") then
			local descendants = child:GetDescendants()
			local accoutrementParts = {}
			for _, desc in pairs(descendants) do
				if desc:IsA("Attachment") and accoutrementsLookup[desc.Name] then
					hidden = true
				elseif desc:IsA("BasePart") then
					table.insert(accoutrementParts, desc)
				end
			end
			for _, part in pairs(accoutrementParts) do
				part.LocalTransparencyModifier = hidden and 1 or 0
			end
		elseif child:IsA("Tool") then
			hidden = self.zoomState and (self.hasScope or self.hideToolWhileZoomed)
			for _, part in pairs(child:GetDescendants()) do
				if part:IsA("BasePart") then
					part.LocalTransparencyModifier = hidden and 1 or 0
				end
			end
		end
	end
end

function ShoulderCamera:setSprintEnabled(enabled)
	self.sprintEnabled = enabled
end

function ShoulderCamera:setSlowZoomWalkEnabled(enabled)
	self.slowZoomWalkEnabled = enabled
end

function ShoulderCamera:setHasScope(hasScope)
	if self.hasScope == hasScope then
		return
	end

	self.hasScope = hasScope
	self:updateZoomState()
end

function ShoulderCamera:onSprintAction(actionName, inputState, inputObj)
	self.sprintingInputActivated = inputState == Enum.UserInputState.Begin
end


-- Zoom related functions

function ShoulderCamera:isZoomed()
	return self.zoomState
end

function ShoulderCamera:setHideToolWhileZoomed(hide)
	self.hideToolWhileZoomed = hide
end

function ShoulderCamera:setZoomFactor(zoomFactor)
	self.currentZoomFactor = zoomFactor
	local nominalFOVRadians = math.rad(self.fieldOfView)
	local nominalImageHeight = math.tan(nominalFOVRadians / 2)
	local zoomedImageHeight = nominalImageHeight / self.currentZoomFactor
	self.zoomedFOV = math.deg(math.atan(zoomedImageHeight) * 2)
	self:updateZoomState()
end

function ShoulderCamera:resetZoomFactor()
	self:setZoomFactor(self.defaultZoomFactor)
end

function ShoulderCamera:setForceZoomed(zoomed)
	if self.forcedZoomed == zoomed then return end
	self.forcedZoomed = zoomed
	self:updateZoomState()
end

function ShoulderCamera:setZoomedFromInput(zoomedFromInput)
	if self.zoomedFromInput == zoomedFromInput or (self.currentHumanoid and self.currentHumanoid:GetState() == Enum.HumanoidStateType.Dead) then
		return
	end

	self.zoomedFromInput = zoomedFromInput
	self:updateZoomState()
end

function ShoulderCamera:updateZoomState()
	local isZoomed = self.forcedZoomed
	if self.canZoom and not self.forcedZoomed then
		isZoomed = self.zoomedFromInput
	end

	if not self.enabled or not self.currentTool then
		isZoomed = false
	end

	self.zoomState = isZoomed

	self.currentMouseRadsPerPixel = isZoomed and self.zoomedMouseRadsPerPixel or self.mouseRadsPerPixel
	self.currentTouchSensitivity = isZoomed and self.zoomedTouchSensitivity or self.touchSensitivity

	if self.weaponsSystem and self.weaponsSystem.gui then
		self.weaponsSystem.gui:setCrosshairScaleTarget(self.zoomState and self.zoomedCrosshairScale or self.normalCrosshairScale)
		self.weaponsSystem.gui:setCrosshairEnabled(not self.zoomState or not self.hasScope)
		self.weaponsSystem.gui:setScopeEnabled(self.zoomState and self.hasScope)
		if self.currentTool then
			self.currentTool.ManualActivationOnly = self.zoomState and self.hasScope and UserInputService.TouchEnabled
		end
	end

	if self.currentCamera then
		self.desiredFieldOfView = self:getCurrentFieldOfView()
	end
end

function ShoulderCamera:onZoomAction(actionName, inputState, inputObj)
	if not self.enabled or not self.canZoom or not self.currentCamera or not self.currentCharacter or not self.weaponsSystem.currentWeapon then
		self:setZoomedFromInput(false)
		return Enum.ContextActionResult.Pass
	end

	self:setZoomedFromInput(inputState == Enum.UserInputState.Begin)
	return Enum.ContextActionResult.Sink
end


-- Recoil related functions

function ShoulderCamera:setCurrentRecoilIntensity(x, y)
	self.currentRecoil = Vector2.new(x, y)
end

function ShoulderCamera:addRecoil(recoilAmount)
	self.currentRecoil = self.currentRecoil + recoilAmount
end


-- Input related functions

function ShoulderCamera:applyInput(yaw, pitch)
	local yInvertValue = UserGameSettings:GetCameraYInvertValue()
	self.yaw = self.yaw + yaw
	self.pitch = math.clamp(self.pitch + pitch * yInvertValue, self.minPitch, self.maxPitch)
end

function ShoulderCamera:processGamepadInput(dt)
	local gamepadPan = self.gamepadPan
	if gamepadPan then
		gamepadPan = gamepadLinearToCurve(gamepadPan)
		if gamepadPan.X == 0 and gamepadPan.Y == 0 then
			self.lastThumbstickTime = nil
			if self.lastThumbstickPos.X == 0 and self.lastThumbstickPos.Y == 0 then
				self.currentGamepadSpeed = 0
			end
		end

		local finalConstant = 0
		local currentTime = tick()

		if self.lastThumbstickTime then
			local elapsed = (currentTime - self.lastThumbstickTime) * 10
			self.currentGamepadSpeed = self.currentGamepadSpeed + (6 * ((elapsed ^ 2) / 0.7))

			if self.currentGamepadSpeed > 6 then self.currentGamepadSpeed = 6 end

			if self.lastGamepadVelocity then
				local velocity = (gamepadPan - self.lastThumbstickPos) / (currentTime - self.lastThumbstickTime)
				local velocityDeltaMag = (velocity - self.lastGamepadVelocity).Magnitude

				if velocityDeltaMag > 12 then
					self.currentGamepadSpeed = self.currentGamepadSpeed * (20 / velocityDeltaMag)
					if self.currentGamepadSpeed > 6 then
						self.currentGamepadSpeed = 6
					end
				end
			end

			finalConstant = GameSettings.GamepadCameraSensitivity * self.currentGamepadSpeed * dt
			self.lastGamepadVelocity = (gamepadPan - self.lastThumbstickPos) / (currentTime - self.lastThumbstickTime)
		end
		self.lastThumbstickPos = gamepadPan
		self.lastThumbstickTime = currentTime

		local yawInput = -gamepadPan.X * finalConstant * self.gamepadSensitivityModifier.X
		local pitchInput = finalConstant * gamepadPan.Y * GameSettings:GetCameraYInvertValue() * self.gamepadSensitivityModifier.Y

		self:applyInput(yawInput, pitchInput)
	end
end

function ShoulderCamera:handleTouchToolFiring()
	if self.touchObj then
		if self.lastTapEndTime then -- and not (self.zoomState and self.hasScope) then
			local touchTime = tick() - self.lastTapEndTime
			if touchTime < self.touchDelayTime and self.currentTool and self.touchPanAccumulator.Magnitude < 0.5 and not self.firingTool and not self.applyingTouchPan then
				self.firingTool = true
				self.currentTool:Activate()
			end
		end
	else
		if self.currentTool and self.firingTool then
			self.currentTool:Deactivate()
		end
		self.firingTool = false
	end
end

function ShoulderCamera:isTouchPositionForCamera(pos)
	if LocalPlayer then
		local guiObjects = LocalPlayer.PlayerGui:GetGuiObjectsAtPosition(pos.X, pos.Y)
		for _, guiObject in ipairs(guiObjects) do
			if guiObject.Name == "DynamicThumbstickFrame" then
				return false
			end
		end
		return true
	end
	return false
end

function ShoulderCamera:onInputBegan(inputObj, wasProcessed)
	if self.touchObj then
		self.touchObj = nil
		wasProcessed = false
	end

	if inputObj.KeyCode == Enum.KeyCode.Thumbstick2 then
		self.gamepadPan = Vector2.new(inputObj.Position.X, inputObj.Position.Y)
	elseif inputObj.KeyCode == Enum.KeyCode.Thumbstick1 then
		self.movementPan = Vector2.new(inputObj.Position.X, inputObj.Position.Y)
	elseif inputObj.UserInputType == Enum.UserInputType.Touch then
		local touchStartPos = Vector2.new(inputObj.Position.X, inputObj.Position.Y)
		if not wasProcessed and self:isTouchPositionForCamera(touchStartPos) and not self.touchObj then
			self.touchObj = inputObj
			self.touchStartTime = tick()
			self.eventConnections.touchChanged = inputObj.Changed:Connect(function(prop)
				if prop == "Position" then
					local touchTime = tick() - self.touchStartTime

					local newTouchPos = Vector2.new(inputObj.Position.X, inputObj.Position.Y)
					local delta = (newTouchPos - touchStartPos) * self.currentTouchSensitivity
					local yawInput = -delta.X
					local pitchInput = -delta.Y
					if self.touchPanAccumulator.Magnitude > 0.01 and touchTime > self.touchDelayTime then
						if not self.applyingTouchPan then
							self.applyingTouchPan = true
							self.touchPanAccumulator = Vector2.new(0, 0)
						end
					end
					self:applyInput(yawInput, pitchInput)
					self.touchPanAccumulator = self.touchPanAccumulator + Vector2.new(yawInput, pitchInput)
					touchStartPos = newTouchPos
				end
			end)
		end
	end
end

function ShoulderCamera:onInputChanged(inputObj, wasProcessed)
	if inputObj.UserInputType == Enum.UserInputType.MouseMovement then
		local yawInput = -inputObj.Delta.X * self.currentMouseRadsPerPixel.X
		local pitchInput = -inputObj.Delta.Y * self.currentMouseRadsPerPixel.Y

		self:applyInput(yawInput, pitchInput)
	elseif inputObj.KeyCode == Enum.KeyCode.Thumbstick2 then
		self.gamepadPan = Vector2.new(inputObj.Position.X, inputObj.Position.Y)
	elseif inputObj.KeyCode == Enum.KeyCode.Thumbstick1 then
		self.movementPan = Vector2.new(inputObj.Position.X, inputObj.Position.Y)
	end
end

function ShoulderCamera:onInputEnded(inputObj, wasProcessed)
	if inputObj.KeyCode == Enum.KeyCode.Thumbstick2 then
		self.gamepadPan = Vector2.new(0, 0)
	elseif inputObj.KeyCode == Enum.KeyCode.Thumbstick1 then
		self.movementPan = Vector2.new(0, 0)
	elseif inputObj.UserInputType == Enum.UserInputType.Touch then
		if self.touchObj == inputObj then
			if self.eventConnections and self.eventConnections.touchChanged then
				self.eventConnections.touchChanged:Disconnect()
				self.eventConnections.touchChanged = nil
			end

			local touchTime = tick() - self.touchStartTime
			if self.currentTool and self.firingTool then
				self.currentTool:Deactivate()
			elseif self.zoomState and self.hasScope and touchTime < self.touchDelayTime and not self.applyingTouchPan then
				self.currentTool:Activate() -- this makes sure to shoot the sniper with a single tap when it is zoomed in
				self.currentTool:Deactivate()
			end
			self.firingTool = false

			self.touchPanAccumulator = Vector2.new(0, 0)
			if touchTime < self.touchDelayTime and not self.applyingTouchPan then
				self.lastTapEndTime = tick()
			else
				self.lastTapEndTime = nil
			end
			self.applyingTouchPan = false

			self.gamepadPan = Vector2.new(0, 0)
			self.touchObj = nil
		end
	end
end

return ShoulderCamera

end))
ModuleScript151.Name = "SpringService"
ModuleScript151.Parent = Folder144
table.insert(cors,sandbox(ModuleScript151,function()
-- SpringService.lua
-- Binds properties to spring simulations
-- @author Parker Stebbins <pstebbins@roblox.com>

local RunService = game:GetService('RunService')

local LinearSpring = {} do
	LinearSpring.__index = LinearSpring

	local pi = math.pi
	local exp = math.exp
	local sin = math.sin
	local cos = math.cos
	local sqrt = math.sqrt

	function LinearSpring.new(dampingRatio, frequency, goal)
		assert(
			dampingRatio*frequency >= 0,
			'No steady state solution for the given damping ratio & frequency'
		)

		return setmetatable(
			{
				d = dampingRatio, -- Damping ratio - Dimensionless
				f = frequency, -- Undamped frequency - Hertz
				g = goal, -- Goal position - Vector
				v = goal*0, -- Current velocity - Vector
			},
			LinearSpring
		)
	end

	function LinearSpring:setGoal(goal)
		self.g = goal
	end

	function LinearSpring:canSleep()
		return false -- @todo add sleeping
	end

	function LinearSpring:step(dt, p0)

		-- Problem: Advance the spring simulation by t seconds.
		-- Start by taking the ODE of a damped harmonic oscillator:
		--    f^2*(X[t] - g) + 2*d*f*X'[t] + X''[t] = 0
		-- Where X[t] is position at time t, g is desired position, f is angular frequency, and d is damping ratio.
		-- Apply some constant initial conditions:
		--    X[0] = p0
		--    X'[0] = v0
		-- The IVP can now be solved to obtain analytic expressions for X[t] and X'[t].
		-- The solution takes on one of three forms depending on the value of d.

		local d = self.d
		local f = self.f*pi*2 -- cycle/s -> rad/s
		local g = self.g
		local v0 = self.v

		local o = p0 - g
		local decay = exp(-dt*d*f)

		local p1, v1

		if d == 1 then -- Critically damped

			p1 = (v0*dt + o*(f*dt + 1))*decay + g
			v1 = (v0 - (o*f + v0)*(f*dt))*decay

		elseif d < 1 then -- Underdamped

			local c = sqrt(1 - d*d)

			local i = cos(dt*f*c)
			local j = sin(dt*f*c)

			-- @todo improve stability as d approaches 1

			p1 = (o*i + (v0 + o*(d*f))*j/(f*c))*decay + g
			v1 = (v0*(i*c) - (v0*d + o*f)*j)*(decay/c)

		else -- Overdamped

			local c = sqrt(d*d - 1)

			local r1 = -f*(d - c)
			local r2 = -f*(d + c)

			-- @todo improve stability as d approaches 1

			local co2 = (v0 - o*r1)/(2*f*c)
			local co1 = o - co2

			local e1 = co1*exp(r1*dt)
			local e2 = co2*exp(r2*dt)

			p1 = e1 + e2 + g
			v1 = r1*e1 + r2*e2
		end

		self.v = v1

		return p1
	end
end

local LinearValue = {} do
	LinearValue.__index = LinearValue

	function LinearValue.new(...)
		return setmetatable(
			{
				...
			},
			LinearValue
		)
	end

	function LinearValue:__add(rhs)
		-- vector + vector
		assert(type(rhs) == 'table')

		local out = LinearValue.new(unpack(self))
		for i = 1, #out do
			out[i] = out[i] + rhs[i]
		end

		return out
	end

	function LinearValue:__sub(rhs)
		-- vector - vector
		assert(type(rhs) == 'table')

		local out = LinearValue.new(unpack(self))
		for i = 1, #out do
			out[i] = out[i] - rhs[i]
		end

		return out
	end

	function LinearValue:__mul(rhs)
		-- vector*scalar
		assert(type(rhs) == 'number')

		local out = LinearValue.new(unpack(self))
		for i = 1, #out do
			out[i] = out[i]*rhs
		end

		return out
	end

	function LinearValue:__div(rhs)
		-- vector/scalar
		assert(type(rhs) == 'number')

		local out = LinearValue.new(unpack(self))
		for i = 1, #out do
			out[i] = out[i]/rhs
		end

		return out
	end
end

local springMetadata = {
	-- Defines a spring type with functions for converting to/from values that the spring can digest
	number = {
		springType = LinearSpring,
		toIntermediate = function(value)
			return LinearValue.new(value)
		end,
		fromIntermediate = function(value)
			return value[1]
		end,
	},

	UDim = {
		springType = LinearSpring,
		toIntermediate = function(value)
			return LinearValue.new(value.Scale, value.Offset)
		end,
		fromIntermediate = function(value)
			return UDim.new(value[1], value[2])
		end,
	},

	UDim2 = {
		springType = LinearSpring,
		toIntermediate = function(value)
			local x = value.X
			local y = value.Y
			return LinearValue.new(x.Scale, x.Offset, y.Scale, y.Offset)
		end,
		fromIntermediate = function(value)
			return UDim2.new(value[1], value[2], value[3], value[4])
		end,
	},

	Vector2 = {
		springType = LinearSpring,
		toIntermediate = function(value)
			return LinearValue.new(value.X, value.Y)
		end,
		fromIntermediate = function(value)
			return Vector2.new(value[1], value[2])
		end,
	},

	Vector3 = {
		springType = LinearSpring,
		toIntermediate = function(value)
			return LinearValue.new(value.X, value.Y, value.Z)
		end,
		fromIntermediate = function(value)
			return Vector3.new(value[1], value[2], value[3])
		end,
	},
}

local springStates = {} -- {[object] = {[property] = Spring}

local steppedEvent = RunService:IsClient() and RunService.RenderStepped or RunService.Heartbeat
steppedEvent:Connect(function(dt)
	for object, state in pairs(springStates) do
		for name, spring in pairs(state) do
			local oldValue = object[name]
			local meta = assert(springMetadata[typeof(oldValue)])

			local oldIntermediate = meta.toIntermediate(oldValue)
			local newIntermediate = spring:step(dt, oldIntermediate)

			if spring:canSleep() then
				state[name] = nil
			end

			object[name] = meta.fromIntermediate(newIntermediate)
		end

		if not next(state) then
			springStates[object] = nil
		end
	end
end)

local SpringService = {} do
	function SpringService:Target(object, dampingRatio, frequency, properties)
		local state = springStates[object]

		if not state then
			state = {}
			springStates[object] = state
		end

		for name, goal in pairs(properties) do
			local spring = state[name]

			local meta = assert(
				springMetadata[typeof(goal)],
				'Unsupported type: ' .. typeof(goal)
			)
			local intermediateGoal = meta.toIntermediate(goal)

			if spring then
				spring:setGoal(intermediateGoal)
			else
				spring = meta.springType.new(dampingRatio, frequency, intermediateGoal)
				state[name] = spring
			end
		end
	end

	function SpringService:Stop(object, property)
		if property then
			-- Unbind a property
			local state = springStates[object]
			if state then
				state[property] = nil
			end
		else
			-- Unbind all the properties
			springStates[object] = nil
		end
	end
end

return SpringService

end))
ModuleScript152.Name = "WeaponsGui"
ModuleScript152.Parent = Folder144
table.insert(cors,sandbox(ModuleScript152,function()
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local ContentProvider = game:GetService("ContentProvider")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer

local WeaponsSystemFolder = script.Parent.Parent
local WeaponData = WeaponsSystemFolder:WaitForChild("WeaponData")
local Libraries = WeaponsSystemFolder:WaitForChild("Libraries")
local SpringService = require(Libraries:WaitForChild("SpringService"))

local DirectionalIndicatorGuiManager = require(Libraries:WaitForChild("DirectionalIndicatorGuiManager"))
local DamageBillboardHandler = require(Libraries:WaitForChild("DamageBillboardHandler"))

local WeaponsSystemGuiTemplate = WeaponsSystemFolder:WaitForChild("Assets"):WaitForChild("WeaponsSystemGui")

local AIM_ON_NORMAL = "rbxassetid://2804583948"
local AIM_OFF_NORMAL = "rbxassetid://2804597178"
local AIM_ON_PRESSED = "rbxassetid://2804598866"
local AIM_OFF_PRESSED = "rbxassetid://2804599869"

local FIRE_NORMAL = "rbxassetid://2804818047"
local FIRE_PRESSED = "rbxassetid://2804818076"

local WeaponsGui = {}
WeaponsGui.__index = WeaponsGui

function WeaponsGui.new(weaponsSystem)
	local self = setmetatable({}, WeaponsGui)
	self.weaponsSystem = weaponsSystem
	self.connections = {}
	self.enabled = false

	self.referenceViewportSize = Vector2.new(1000, 1000) -- viewport size that ui elements in scalingElementsFolder were designed on
	self.scaleWeight = 0.75 -- determines weight of scaling (a higher value increases the degree to which elements are scaled)
	self.originalScaleAmounts = {}

	self.crosshairDampingRatio = 0.9
	self.crosshairFrequency = 3
	self.crosshairScaleTarget = 1
	self.crosshairScale = 1
	self.crosshairWeaponScale = 1
	self.crosshairEnabled = true

	self.scopeEnabled = false
	self.isZoomed = false

	self.gui = WeaponsSystemGuiTemplate:Clone()
	self.gui.Enabled = false

	coroutine.wrap(function()
		self.scalingElementsFolder = self.gui:WaitForChild("ScalingElements")

		self.DirectionalIndicatorGuiManager = DirectionalIndicatorGuiManager.new(self)

		self.crosshairFrame = self.scalingElementsFolder:WaitForChild("Crosshair")
		self.crosshairBottom = self.crosshairFrame:WaitForChild("Bottom")
		self.crosshairLeft = self.crosshairFrame:WaitForChild("Left")
		self.crosshairRight = self.crosshairFrame:WaitForChild("Right")
		self.crosshairTop = self.crosshairFrame:WaitForChild("Top")
		self.origCrosshairScales = {} -- these will be used to size crosshair pieces when screen size changes
		self.origCrosshairScales[self.crosshairBottom] = Vector2.new(self.crosshairBottom.Size.X.Scale, self.crosshairBottom.Size.Y.Scale)
		self.origCrosshairScales[self.crosshairLeft] = Vector2.new(self.crosshairLeft.Size.X.Scale, self.crosshairLeft.Size.Y.Scale)
		self.origCrosshairScales[self.crosshairRight] = Vector2.new(self.crosshairRight.Size.X.Scale, self.crosshairRight.Size.Y.Scale)
		self.origCrosshairScales[self.crosshairTop] = Vector2.new(self.crosshairTop.Size.X.Scale, self.crosshairTop.Size.Y.Scale)
		self.crosshairNormalSize = self.crosshairFrame.AbsoluteSize

		self.hitMarker = self.scalingElementsFolder:WaitForChild("HitMarker"):WaitForChild("HitMarkerImage")

		self.scopeFrame = self.gui:WaitForChild("Scope")
		local scopeImage = self.scopeFrame:WaitForChild("ScopeImage")

		self.smallTouchscreen = self.gui:WaitForChild("SmallTouchscreen")
		self.largeTouchscreen = self.gui:WaitForChild("LargeTouchscreen")

		self.smallAimButton = self.smallTouchscreen:WaitForChild("AimButton")
		self.smallAimButton.Activated:Connect(function() self:onTouchAimButtonActivated() end)
		self.largeAimButton = self.largeTouchscreen:WaitForChild("AimButton")
		self.largeAimButton.Activated:Connect(function() self:onTouchAimButtonActivated() end)
		self.smallFireButton = self.smallTouchscreen:WaitForChild("FireButton")
		self.smallFireButton.InputBegan:Connect(function(inputObj) self:onTouchFireButton(inputObj, Enum.UserInputState.Begin) end)
		self.smallFireButton.InputEnded:Connect(function(inputObj) self:onTouchFireButton(inputObj, Enum.UserInputState.End) end)
		self.largeFireButton = self.largeTouchscreen:WaitForChild("FireButton")
		self.largeFireButton.InputBegan:Connect(function(inputObj) self:onTouchFireButton(inputObj, Enum.UserInputState.Begin) end)
		self.largeFireButton.InputEnded:Connect(function(inputObj) self:onTouchFireButton(inputObj, Enum.UserInputState.End) end)

		self.smallFireButton.Visible = false
		self.largeFireButton.Visible = false

		self.gui.Parent = LocalPlayer:WaitForChild("PlayerGui")
		self.gui:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() self:onScreenSizeChanged() end)
		self:onScreenSizeChanged()

		WeaponData.OnClientEvent:Connect(function(cmd, otherPlayerPosition)
			if cmd == "HitByOtherPlayer" then
				self.DirectionalIndicatorGuiManager:ActivateDirectionalIndicator("DamageIndicator", otherPlayerPosition)
			end
		end)

		ContentProvider:PreloadAsync({
			self.crosshairBottom,
			self.crosshairLeft,
			self.crosshairRight,
			self.crosshairTop,
			scopeImage,
			self.smallAimButton,
			self.largeAimButton,
			self.smallFireButton,
			self.largeFireButton,
		})
	end)()

	return self
end

local function getJumpButton()
	if UserInputService.TouchEnabled then
		local touchGui = LocalPlayer.PlayerGui:WaitForChild("TouchGui")
		return touchGui.TouchControlFrame:FindFirstChild("JumpButton")
	end

	return nil
end

function WeaponsGui:onScreenSizeChanged()
	if self.smallTouchscreen and self.largeTouchscreen then
		if UserInputService.TouchEnabled then
			local isSmallScreen
			local jumpButton = getJumpButton()
			if jumpButton then
				isSmallScreen = jumpButton.Size.X.Offset <= 70
			else
				isSmallScreen = self.gui.AbsoluteSize.Y < 600
			end
			self.smallTouchscreen.Visible = isSmallScreen
			self.largeTouchscreen.Visible = not isSmallScreen
		else
			self.smallTouchscreen.Visible = false
			self.largeTouchscreen.Visible = false
		end
	end

	-- Scales all ui elements in scalingElementsFolder based on current screen size relative to self.referenceViewportSize
	local viewportSize = workspace.CurrentCamera.ViewportSize
	for _, child in pairs(self.scalingElementsFolder:GetChildren()) do
		self:updateScale(child, viewportSize)
	end

	self.crosshairNormalSize = self.crosshairFrame.AbsoluteSize

	-- Update crosshair sizes...they must use offset because crosshairFrame changes size frequently
	self.crosshairBottom.Size = UDim2.new(0, self.origCrosshairScales[self.crosshairBottom].X * self.crosshairNormalSize.X, 0, self.origCrosshairScales[self.crosshairBottom].Y * self.crosshairNormalSize.Y)
	self.crosshairLeft.Size = UDim2.new(0, self.origCrosshairScales[self.crosshairLeft].X * self.crosshairNormalSize.X, 0, self.origCrosshairScales[self.crosshairLeft].Y * self.crosshairNormalSize.Y)
	self.crosshairRight.Size = UDim2.new(0, self.origCrosshairScales[self.crosshairRight].X * self.crosshairNormalSize.X, 0, self.origCrosshairScales[self.crosshairRight].Y * self.crosshairNormalSize.Y)
	self.crosshairTop.Size = UDim2.new(0, self.origCrosshairScales[self.crosshairTop].X * self.crosshairNormalSize.X, 0, self.origCrosshairScales[self.crosshairTop].Y * self.crosshairNormalSize.Y)
end

-- This scales the scale amount non-linearly according to scaleWeight
function WeaponsGui:getWeightedScaleAmount(originalScaleAmount, newScreenDim, referenceScreenDim)
	return (1 - self.scaleWeight) * originalScaleAmount * referenceScreenDim / newScreenDim + self.scaleWeight * originalScaleAmount
end

function WeaponsGui:updateScale(guiObject, viewportSize)
	if guiObject:IsA("GuiObject") then
		local xScale = guiObject.Size.X.Scale
		local yScale = guiObject.Size.Y.Scale
		if xScale ~= 0 or yScale ~= 0 or self.originalScaleAmounts[guiObject] ~= nil then
			if self.originalScaleAmounts[guiObject] == nil then
				self.originalScaleAmounts[guiObject] = Vector2.new(xScale, yScale)
			end

			xScale = self:getWeightedScaleAmount(self.originalScaleAmounts[guiObject].X, viewportSize.X, self.referenceViewportSize.X)
			yScale = self:getWeightedScaleAmount(self.originalScaleAmounts[guiObject].Y, viewportSize.Y, self.referenceViewportSize.Y)
			guiObject.Size = UDim2.new(xScale, 0, yScale, 0)
		end
		return -- makes it so only the most outer container will be scaled
	end

	for _, child in ipairs(guiObject:GetChildren()) do
		self:updateScale(child, viewportSize)
	end
end

function WeaponsGui:setEnabled(enabled)
	if self.enabled == enabled then
		return
	end

	self.enabled = enabled
	if self.enabled then
		self.connections.renderStepped = RunService.RenderStepped:Connect(function(dt) self:onRenderStepped(dt) end)
	else
		self:setZoomed(false)

		for _, v in pairs(self.connections) do
			v:Disconnect()
		end
		self.connections = {}
	end

	if self.gui then
		self.gui.Enabled = self.enabled
	end
end

function WeaponsGui:setCrosshairEnabled(crosshairEnabled)
	if self.crosshairEnabled == crosshairEnabled then
		return
	end

	self.crosshairEnabled = crosshairEnabled
	if self.crosshairFrame then
		self.crosshairFrame.Visible = self.crosshairEnabled
	end
	if self.hitMarker then
		self.hitMarker.ImageTransparency = 1
		self.hitMarker.Visible = self.crosshairEnabled
	end
end

function WeaponsGui:setScopeEnabled(scopeEnabled)
	if self.scopeEnabled == scopeEnabled then
		return
	end

	self.scopeEnabled = scopeEnabled
	if self.scopeFrame then
		self.scopeFrame.Visible = self.scopeEnabled
	end

	local jumpButton = getJumpButton()

	if self.scopeEnabled then
		self.smallFireButton.Visible = true
		self.largeFireButton.Visible = true

		if jumpButton then
			jumpButton.Visible = false
		end
	else
		self.smallFireButton.Visible = false
		self.largeFireButton.Visible = false

		if jumpButton then
			jumpButton.Visible = true
		end
	end
end

function WeaponsGui:setCrosshairWeaponScale(scale)
	if self.crosshairWeaponScale == scale then
		return
	end

	self.crosshairWeaponScale = scale
end

function WeaponsGui:setCrosshairScaleTarget(target, dampingRatio, frequency)
	if typeof(dampingRatio) == "number" then
		self.crosshairDampingRatio = dampingRatio
	end
	if typeof(frequency) == "number" then
		self.crosshairFrequency = frequency
	end
	if self.crosshairScaleTarget == target then
		return
	end

	self.crosshairScaleTarget = target
	SpringService:Target(self, self.crosshairDampingRatio, self.crosshairFrequency, { crosshairScale = self.crosshairScaleTarget })
end

function WeaponsGui:setCrosshairScale(scale)
	if self.crosshairScale == scale then
		return
	end

	self.crosshairScale = scale
	SpringService:Target(self, self.crosshairDampingRatio, self.crosshairFrequency, { crosshairScale = self.crosshairScaleTarget })
end

function WeaponsGui:OnHitOtherPlayer(damage, humanoidHit) -- show hit indicator, then fade
	self.hitMarker.ImageTransparency = 0
	local tweenInfo = TweenInfo.new(0.8)
	local goal = {}
	goal.ImageTransparency = 1
	local tween = TweenService:Create(self.hitMarker, tweenInfo, goal)
	tween:Play()

	DamageBillboardHandler:ShowDamageBillboard(damage, humanoidHit.Parent:FindFirstChild("Head"))
end

function WeaponsGui:onRenderStepped(dt)
	if not self.enabled then
		return
	end
	if not self.gui then
		return
	end

	if self.crosshairFrame and self.crosshairEnabled then
		local crosshairSize = self.crosshairNormalSize * self.crosshairScale * self.crosshairWeaponScale
		self.crosshairFrame.Size = UDim2.new(0, crosshairSize.X, 0, crosshairSize.Y)
	end
end

function WeaponsGui:setZoomed(zoomed)
	if zoomed == self.isZoomed then
		return
	end

	self.isZoomed = zoomed
	local normalImage = self.isZoomed and AIM_OFF_NORMAL or AIM_ON_NORMAL
	local pressedImage = self.isZoomed and AIM_OFF_PRESSED or AIM_ON_PRESSED

	if self.smallAimButton then
		self.smallAimButton.Image = normalImage
		self.smallAimButton.PressedImage = pressedImage
	end
	if self.largeAimButton then
		self.largeAimButton.Image = normalImage
		self.largeAimButton.PressedImage = pressedImage
	end

	if self.weaponsSystem.camera then
		self.weaponsSystem.camera:setForceZoomed(self.isZoomed)
	end
end

function WeaponsGui:onTouchAimButtonActivated()
	self:setZoomed(not self.isZoomed)
end

function WeaponsGui:onTouchFireButton(inputObj, inputState)
	local currentWeapon = self.weaponsSystem.currentWeapon
	if currentWeapon and currentWeapon.instance and currentWeapon.instance:IsA("Tool") then
		if inputObj.UserInputState == Enum.UserInputState.Begin then
			currentWeapon.instance:Activate()
			if self.smallFireButton then
				self.smallFireButton.Image = FIRE_PRESSED
			end
			if self.largeFireButton then
				self.largeFireButton.Image = FIRE_PRESSED
			end

			inputObj:GetPropertyChangedSignal("UserInputState"):Connect(function()
				if inputObj.UserInputState == Enum.UserInputState.End then
					currentWeapon.instance:Deactivate()
					if self.smallFireButton then
						self.smallFireButton.Image = FIRE_NORMAL
					end
					if self.largeFireButton then
						self.largeFireButton.Image = FIRE_NORMAL
					end
				end
			end)
		end
	end
end

return WeaponsGui
end))
ModuleScript153.Name = "ancestorHasTag"
ModuleScript153.Parent = Folder144
table.insert(cors,sandbox(ModuleScript153,function()
local CollectionService = game:GetService("CollectionService")

local function ancestorHasTag(instance, tag)
	local currentInstance = instance
	while currentInstance do
		if CollectionService:HasTag(currentInstance, tag) then
			return true
		else
			currentInstance = currentInstance.Parent
		end
	end

	return false
end

return ancestorHasTag
end))
ModuleScript154.Name = "BaseWeapon"
ModuleScript154.Parent = Folder144
table.insert(cors,sandbox(ModuleScript154,function()
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local IsServer = RunService:IsServer()

local WeaponsSystemFolder = script.Parent.Parent
local AnimationsFolder = WeaponsSystemFolder:WaitForChild("Assets"):WaitForChild("Animations")

local localRandom = Random.new()

local BaseWeapon = {}
BaseWeapon.__index = BaseWeapon

BaseWeapon.CanAimDownSights = false
BaseWeapon.CanBeReloaded = false
BaseWeapon.CanBeFired = false
BaseWeapon.CanHit = false

function BaseWeapon.new(weaponsSystem, instance)
	assert(instance, "BaseWeapon.new() requires a valid Instance to be attached to.")

	local self = setmetatable({}, BaseWeapon)
	self.connections = {}
	self.descendants = {}
	self.descendantsRegistered = false
	self.optionalDescendantNames = {}
	self.weaponsSystem = weaponsSystem
	self.instance = instance
	self.animController = nil
	self.player = nil
	self.enabled = false
	self.equipped = false
	self.activated = false
	self.nextShotId = 1
	self.activeRenderStepName = nil
	self.curReloadSound = nil

	self.animTracks = {}
	self.sounds = {}
	self.configValues = {}
	self.trackedConfigurations = {}

	self.ammoInWeaponValue = nil

	self.reloading = false
	self.canReload = true

	self:registerDescendants()
	self.connections.descendantAdded = self.instance.DescendantAdded:Connect(function(descendant)
		self:onDescendantAdded(descendant)
	end)

	return self
end

function BaseWeapon:doInitialSetup()
	local selfClass = getmetatable(self)
	self.instanceIsTool = self.instance:IsA("Tool")

	-- Set up child added/removed
	self.connections.childAdded = self.instance.ChildAdded:Connect(function(child)
		self:onChildAdded(child)
	end)
	self.connections.childRemoved = self.instance.ChildRemoved:Connect(function(child)
		self:onChildRemoved(child)
	end)
	for _, child in pairs(self.instance:GetChildren()) do
		self:onChildAdded(child)
	end

	-- Initialize self.ammoInWeaponValue
	if selfClass.CanBeReloaded then
		if IsServer then
			self.ammoInWeaponValue = self.instance:FindFirstChild("CurrentAmmo")
			if not self.ammoInWeaponValue then
				self.ammoInWeaponValue = Instance.new("IntValue")
				self.ammoInWeaponValue.Name = "CurrentAmmo"
				self.ammoInWeaponValue.Value = 0
				self.ammoInWeaponValue.Parent = self.instance
			end
			self.ammoInWeaponValue.Value = self:getConfigValue("AmmoCapacity", 30)
		else
			self.ammoInWeaponValue = self.instance:WaitForChild("CurrentAmmo")
		end
	end

	self.connections.ancestryChanged = self.instance.AncestryChanged:Connect(function() self:onAncestryChanged() end)
	self:onAncestryChanged()

	-- Set up equipped/unequipped and activated/deactivated
	if self.instanceIsTool then
		self.connections.equipped = self.instance.Equipped:Connect(function()
			if IsServer or (Players.LocalPlayer and (self.instance:IsDescendantOf(Players.LocalPlayer.Backpack) or self.instance:IsDescendantOf(Players.LocalPlayer.Character))) then
				self:setEquipped(true)
				if self:getAmmoInWeapon() <= 0 then
					-- Have to wait a frame, otherwise the reload animation will not play
					coroutine.wrap(function()
						wait()
						self:reload()
					end)()
				end
			end
		end)
		self.connections.unequipped = self.instance.Unequipped:Connect(function()
			if IsServer or (Players.LocalPlayer and (self.instance:IsDescendantOf(Players.LocalPlayer.Backpack) or self.instance:IsDescendantOf(Players.LocalPlayer.Character))) then
				self:setEquipped(false)
				if self.reloading then
					self:cancelReload()
				end
			end
		end)
		if self.instance:IsDescendantOf(workspace) and self.player then
			self:setEquipped(true)
		end

		self.connections.activated = self.instance.Activated:Connect(function()
			self:setActivated(true)
		end)
		self.connections.deactivated = self.instance.Deactivated:Connect(function()
			self:setActivated(false)
		end)

		-- Weld handle to weapon primary part
		if IsServer then
			self.handle = self.instance:FindFirstChild("Handle")

			local model = self.instance:FindFirstChildOfClass("Model")
			local handleAttachment = model:FindFirstChild("HandleAttachment", true)

			if self.handle and handleAttachment then
				local handleOffset = model.PrimaryPart.CFrame:toObjectSpace(handleAttachment.WorldCFrame)

				local weld = Instance.new("Weld")
				weld.Name = "HandleWeld"
				weld.Part0 = self.handle
				weld.Part1 = model.PrimaryPart
				weld.C0 = CFrame.new()
				weld.C1 = handleOffset
				weld.Parent = self.handle

				self.handle.Anchored = false
				model.PrimaryPart.Anchored = false
			end
		end
	end
end

function BaseWeapon:registerDescendants()
	if not self.instance then
		error("No instance set yet!")
	end

	if self.descendantsRegistered then
		warn("Descendants already registered!")
		return
	end

	for _, descendant in ipairs(self.instance:GetDescendants()) do
		if self.descendants[descendant.Name] == nil then
			self.descendants[descendant.Name] = descendant
		else
			self.descendants[descendant.Name] = "Multiple"
		end
	end
	self.descendantsRegistered = true
end

function BaseWeapon:addOptionalDescendant(key, descendantName)
	if self.instance == nil then
		error("No instance set yet!")
	end

	if not self.descendantsRegistered then
		error("Descendants not registered!")
	end

	if self.descendants[descendantName] == "Multiple" then
		error("Weapon \""..self.instance.Name.."\" has multiple descendants named \""..descendantName.."\", so you cannot addOptionalDescendant with that descendant name.")
	end

	local found = self.descendants[descendantName]
	if found then
		self[key] = found
		return
	else
		self.optionalDescendantNames[descendantName] = key
	end
end

function BaseWeapon:onDescendantAdded(descendant)
	if self.descendants[descendant.Name] == nil then
		self.descendants[descendant.Name] = descendant
	else
		self.descendants[descendant.Name] = "Multiple"
	end

	local desiredKey = self.optionalDescendantNames[descendant.Name]
	if desiredKey then
		if self.descendants[descendant.Name] == "Multiple" then
			error("Weapon \""..self.instance.Name.."\" has multiple descendants named \""..descendant.Name.."\", so you cannot addOptionalDependency with that descendant name.")
		end
		self[desiredKey] = descendant
		self.optionalDescendantNames[descendant.Name] = nil
	end
end

function BaseWeapon:cleanupConnection(...)
	local args = { ... }
	for _, name in pairs(args) do
		if typeof(name) == "string" and self.connections[name] then
			self.connections[name]:Disconnect()
			self.connections[name] = nil
		end
	end
end

function BaseWeapon:onAncestryChanged()
	if self.instanceIsTool then
		local player = nil
		if self.instance:IsDescendantOf(Players) then
			local parentPlayer = self.instance.Parent.Parent
			if parentPlayer and parentPlayer:IsA("Player") then
				player = parentPlayer
			end
		elseif self.instance:IsDescendantOf(workspace) then
			local parentPlayer = Players:GetPlayerFromCharacter(self.instance.Parent)
			if parentPlayer and parentPlayer:IsA("Player") then
				player = parentPlayer
			end
		end

		self:setPlayer(player)
	end
end

function BaseWeapon:setPlayer(player)
	if self.player == player then
		return
	end

	self.player = player
end

function BaseWeapon:setEquipped(equipped)
	if self.equipped == equipped then
		return
	end

	self.equipped = equipped
	self:onEquippedChanged()

	if not self.equipped then
		self:stopAnimations()
	end
end

function BaseWeapon:onEquippedChanged()
	if self.activeRenderStepName then
		RunService:UnbindFromRenderStep(self.activeRenderStepName)
		self.activeRenderStepName = nil
	end
	self:cleanupConnection("localStepped")

	if not IsServer and self.weaponsSystem then
		self.weaponsSystem.setWeaponEquipped(self, self.equipped)
		if self.equipped then
			if self.player == Players.LocalPlayer then
				RunService:BindToRenderStep(self.instance:GetFullName(), Enum.RenderPriority.Input.Value, function(dt)
					self:onRenderStepped(dt)
				end)
				self.activeRenderStepName = self.instance:GetFullName()
			end
			self.connections.localStepped = RunService.Heartbeat:Connect(function(dt)
				self:onStepped(dt)
			end)
		end
	end

	if self.instanceIsTool then
		for _, part in pairs(self.instance:GetDescendants()) do
			if part:IsA("BasePart") then
				part.CanCollide = part ~= self.handle and not self.equipped
			end
		end
	end

	self:setActivated(false)
end

function BaseWeapon:setActivated(activated, fromNetwork)
	if not IsServer and fromNetwork and self.player == Players.LocalPlayer then
		return
	end

	if self.activated == activated then
		return
	end

	self.activated = activated
	if IsServer and not fromNetwork then
		self.weaponsSystem.getRemoteEvent("WeaponActivated"):FireAllClients(self.player, self.instance, self.activated)
	end

	self:onActivatedChanged()
end

function BaseWeapon:onActivatedChanged()

end

function BaseWeapon:renderFire(fireInfo)

end

function BaseWeapon:simulateFire(fireInfo)

end

function BaseWeapon:isOwnerAlive()
	if self.instance:IsA("Tool") then
		local humanoid = self.instance.Parent:FindFirstChildOfClass("Humanoid")
		if humanoid then
			return humanoid:GetState() ~= Enum.HumanoidStateType.Dead
		end
	end

	return true
end

function BaseWeapon:fire(origin, dir, charge)
	if not self:isOwnerAlive() or self.reloading then
		return
	end

	if self:useAmmo(1) <= 0 then
		self:reload()
		return
	end

	local fireInfo = {}
	fireInfo.origin = origin
	fireInfo.dir = dir
	fireInfo.charge = math.clamp(charge or 1, 0, 1)
	fireInfo.id = self.nextShotId
	self.nextShotId = self.nextShotId + 1

	if not IsServer then
		self:onFired(self.player, fireInfo, false)
		self.weaponsSystem.getRemoteEvent("WeaponFired"):FireServer(self.instance, fireInfo)
	else
		self:onFired(self.player, fireInfo, false)
	end
end

function BaseWeapon:onFired(firingPlayer, fireInfo, fromNetwork)
	if not IsServer then
		if firingPlayer == Players.LocalPlayer and fromNetwork then
			return
		end

		-- Do not simulate firing the weapon if the streaming is enabled and the local player did not stream in the firing player yet.
		if not firingPlayer or not firingPlayer.character or not firingPlayer.character.Humanoid or not firingPlayer.character:FindFirstChild("HumanoidRootPart") then
			return
		end

		self:simulateFire(firingPlayer, fireInfo)
	else
		if self:useAmmo(1) <= 0 then
			return
		end

		self.weaponsSystem.getRemoteEvent("WeaponFired"):FireAllClients(firingPlayer, self.instance, fireInfo)
	end
end

function BaseWeapon:getConfigValue(valueName, defaultValue)
	if self.configValues[valueName] ~= nil then
		return self.configValues[valueName]
	else
		return defaultValue
	end
end

function BaseWeapon:tryPlaySound(soundName, playbackSpeedRange)
	playbackSpeedRange = playbackSpeedRange or 0

	local soundTemplate = self.sounds[soundName]
	if not soundTemplate then
		soundTemplate = self.instance:FindFirstChild(soundName, true)
		self.sounds[soundName] = soundTemplate
	end

	if not soundTemplate then
		return
	end

	local sound = soundTemplate:Clone()
	sound.PlaybackSpeed = sound.PlaybackSpeed + localRandom:NextNumber(-playbackSpeedRange * 0.5, playbackSpeedRange * 0.5)
	sound.Parent = soundTemplate.Parent
	sound:Play()
	coroutine.wrap(function()
		wait(sound.TimeLength / sound.PlaybackSpeed)
		sound:Destroy()
	end)()

	return sound
end

function BaseWeapon:getSound(soundName)
	local soundTemplate = self.sounds[soundName]
	if not soundTemplate then
		soundTemplate = self.instance:FindFirstChild(soundName, true)
		self.sounds[soundName] = soundTemplate
	end

	return soundTemplate
end

function BaseWeapon:onDestroyed()

end

function BaseWeapon:onConfigValueAdded(valueObj)
	local valueName = valueObj.Name
	local newValue = valueObj.Value
	self.configValues[valueName] = newValue
	self:onConfigValueChanged(valueName, newValue, nil)

	self.connections["valueChanged:" .. valueName] = valueObj.Changed:Connect(function(changedValue)
		local oldValue = self.configValues[valueName]
		self.configValues[valueName] = changedValue

		self:onConfigValueChanged(valueName, changedValue, oldValue)
	end)
	self.connections["valueRenamed:" .. valueName] = valueObj:GetPropertyChangedSignal("Name"):Connect(function()
		self.configValues[valueName] = nil
		self:cleanupConnection("valueChanged:" .. valueName)
		self:cleanupConnection("valueRenamed:" .. valueName)
		self:onConfigValueAdded(valueObj)
	end)
end

function BaseWeapon:onConfigValueRemoved(valueObj)
	local valueName = valueObj.Name
	self.configValues[valueName] = nil

	self:cleanupConnection("valueChanged:" .. valueName)
	self:cleanupConnection("valueRenamed:" .. valueName)
end

-- This function is used to set configuration values from outside configuration objects/folders
function BaseWeapon:importConfiguration(config)
	if not config or not config:IsA("Configuration") then
		for _, child in pairs(config:GetChildren()) do
			if child:IsA("ValueBase") then
				local valueName = child.Name
				local newValue = child.Value
				local oldValue = self.configValues[valueName]
				self.configValues[valueName] = newValue
				self:onConfigValueChanged(valueName, newValue, oldValue)
			end
		end
	end
end

function BaseWeapon:setConfiguration(config)
	self:cleanupConnection("configChildAdded", "configChildRemoved")
	if not config or not config:IsA("Configuration") then
		return
	end

	for _, child in pairs(config:GetChildren()) do
		if child:IsA("ValueBase") then
			self:onConfigValueAdded(child)
		end
	end
	self.connections.configChildAdded = config.ChildAdded:Connect(function(child)
		if child:IsA("ValueBase") then
			self:onConfigValueAdded(child)
		end
	end)
	self.connections.configChildRemoved = config.ChildRemoved:Connect(function(child)
		if child:IsA("ValueBase") then
			self:onConfigValueRemoved(child)
		end
	end)
end

function BaseWeapon:onChildAdded(child)
	if child:IsA("Configuration") then
		self:setConfiguration(child)
	end
end

function BaseWeapon:onChildRemoved(child)
	if child:IsA("Configuration") then
		self:setConfiguration(nil)
	end
end

function BaseWeapon:onConfigValueChanged(valueName, newValue, oldValue)

end

function BaseWeapon:onRenderStepped(dt)

end

function BaseWeapon:onStepped(dt)

end

function BaseWeapon:getAnimationController()
	if self.animController then
		if not self.instanceIsTool or (self.animController.Parent and self.animController.Parent:IsAncestorOf(self.instance)) then
			return self.animController
		end
	end

	self:setAnimationController(nil)

	if self.instanceIsTool then
		local humanoid = IsServer and self.instance.Parent:FindFirstChildOfClass("Humanoid") or self.instance.Parent:WaitForChild("Humanoid", math.huge)
		local animController = nil
		if not humanoid then
			animController = self.instance.Parent:FindFirstChildOfClass("AnimationController")
		end

		self:setAnimationController(humanoid or animController)
		return self.animController
	end
end

function BaseWeapon:setAnimationController(animController)
	if animController == self.animController then
		return
	end
	self:stopAnimations()
	self.animController = animController
end

function BaseWeapon:stopAnimations()
	for _, track in pairs(self.animTracks) do
		if track.IsPlaying then
			track:Stop()
		end
	end
	self.animTracks = {}
end

function BaseWeapon:getAnimTrack(key)
	local track = self.animTracks[key]
	if not track then
		local animController = self:getAnimationController()
		if not animController then
			warn("No animation controller when trying to play ", key)
			return nil
		end

		local animation = AnimationsFolder:FindFirstChild(key)
		if not animation then
			error(string.format("No such animation \"%s\" ", tostring(key)))
		end

		track = animController:LoadAnimation(animation)
		self.animTracks[key] = track
	end

	return track
end

function BaseWeapon:reload(player, fromNetwork)
	if
		not self.equipped or
		self.reloading or
		not self.canReload or
		self:getAmmoInWeapon() == self:getConfigValue("AmmoCapacity", 30)
	then
		return false
	end

	if not IsServer then
		if self.player ~= nil and self.player ~= Players.LocalPlayer then
			return
		end
		self.weaponsSystem.getRemoteEvent("WeaponReloadRequest"):FireServer(self.instance)
		self:onReloaded(self.player)
	else
		self:onReloaded(player, fromNetwork)
		self.weaponsSystem.getRemoteEvent("WeaponReloaded"):FireAllClients(player, self.instance)
	end
end

function BaseWeapon:onReloaded(player, fromNetwork)
	if fromNetwork and player == Players.LocalPlayer then -- make sure localplayer doesn't reload twice
		return
	end

	self.reloading = true
	self.canReload = false

	-- Play reload animation and sound
	if not IsServer then
		local reloadTrackKey = self:getConfigValue("ReloadAnimation", "RifleReload")
		if reloadTrackKey then
			self.reloadTrack = self:getAnimTrack(reloadTrackKey)
			if self.reloadTrack then
				self.reloadTrack:Play()
			end
		end

		self.curReloadSound = self:tryPlaySound("Reload", nil)
		if self.curReloadSound then
			self.curReloadSound.Ended:Connect(function()
				self.curReloadSound = nil
			end)
		end
	end

	local reloadTime = self:getConfigValue("ReloadTime", 2)
	local startTime = tick()

	if self.connections.reload ~= nil then -- this prevents an endless ammo bug
		return
	end
	self.connections.reload = RunService.Heartbeat:Connect(function()
		-- Stop trying to reload if the player unequipped this weapon or reloading was canceled some other way
		if not self.reloading then
			if self.connections.reload then
				self.connections.reload:Disconnect()
				self.connections.reload = nil
			end
		end

		-- Wait until gun finishes reloading
		if tick() < startTime + reloadTime then
			return
		end

		-- Add ammo to weapon
		if self.ammoInWeaponValue then
			self.ammoInWeaponValue.Value = self:getConfigValue("AmmoCapacity", 30)
		end

		if self.connections.reload then
			self.connections.reload:Disconnect()
			self.connections.reload = nil
		end

		self.reloading = false
		self.canReload = false
	end)
end

function BaseWeapon:cancelReload(player, fromNetwork)
	if not self.reloading then
		return
	end
	if fromNetwork and player == Players.LocalPlayer then
		return
	end

	if not IsServer and not fromNetwork and player == Players.LocalPlayer then
		self.weaponsSystem.getRemoteEvent("WeaponReloadCanceled"):FireServer(self.instance)
	elseif IsServer and fromNetwork then
		self.weaponsSystem.getRemoteEvent("WeaponReloadCanceled"):FireAllClients(player, self.instance)
	end

	self.reloading = false
	self.canReload = true

	if not IsServer and self.reloadTrack and self.reloadTrack.IsPlaying then
		warn("Stopping reloadTrack")
		self.reloadTrack:Stop()
	end
	if self.curReloadSound then
		self.curReloadSound:Stop()
		self.curReloadSound:Destroy()
		self.curReloadSound = nil
	end
end

function BaseWeapon:getAmmoInWeapon()
	if self.ammoInWeaponValue then
		return self.ammoInWeaponValue.Value
	end
	return 0
end

function BaseWeapon:useAmmo(amount)
	if self.ammoInWeaponValue then
		local ammoUsed = math.min(amount, self.ammoInWeaponValue.Value)
		self.ammoInWeaponValue.Value = self.ammoInWeaponValue.Value - ammoUsed
		self.canReload = true
		return ammoUsed
	else
		return 0
	end
end

function BaseWeapon:renderCharge()

end

return BaseWeapon

end))
ModuleScript155.Name = "WeaponsSystem"
ModuleScript155.Parent = Folder26
table.insert(cors,sandbox(ModuleScript155,function()
local CollectionService = game:GetService("CollectionService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local IsServer = RunService:IsServer()

-- Dependencies
local WeaponData = script.Parent:WaitForChild("WeaponData")
local WeaponsSystemFolder = script.Parent
local WeaponTypes = WeaponsSystemFolder:WaitForChild("WeaponTypes")
local Libraries = WeaponsSystemFolder:WaitForChild("Libraries")
local ShoulderCamera = require(Libraries:WaitForChild("ShoulderCamera"))
local WeaponsGui = require(Libraries:WaitForChild("WeaponsGui"))
local SpringService = require(Libraries:WaitForChild("SpringService"))
local ancestorHasTag = require(Libraries:WaitForChild("ancestorHasTag"))
ShoulderCamera.SpringService = SpringService

local Configuration = WeaponsSystemFolder:WaitForChild("Configuration")
local ConfigurationValues = {
	SprintEnabled = Configuration:WaitForChild("SprintEnabled"),
	SlowZoomWalkEnabled = Configuration:WaitForChild("SlowZoomWalkEnabled"),
}

local WEAPON_TAG = "WeaponsSystemWeapon"
local WEAPON_TYPES_LOOKUP = {}

local REMOTE_EVENT_NAMES = {
	"WeaponFired",
	"WeaponHit",
	"WeaponReloadRequest",
	"WeaponReloaded",
	"WeaponReloadCanceled",
	"WeaponActivated"
}
local REMOTE_FUNCTION_NAMES = {}

--Set up WeaponTypes lookup table
do
	local function onNewWeaponType(weaponTypeModule)
		if not weaponTypeModule:IsA("ModuleScript") then
			return
		end
		local weaponTypeName = weaponTypeModule.Name
		xpcall(function()
			coroutine.wrap(function()
				local weaponType = require(weaponTypeModule)
				assert(typeof(weaponType) == "table", string.format("WeaponType \"%s\" did not return a valid table", weaponTypeModule:GetFullName()))
				WEAPON_TYPES_LOOKUP[weaponTypeName] = weaponType
			end)()
		end, function(errMsg)
			warn(string.format("Error while loading %s: %s", weaponTypeModule:GetFullName(), errMsg))
			warn(debug.traceback())
		end)
	end
	for _, child in pairs(WeaponTypes:GetChildren()) do
		onNewWeaponType(child)
	end
	WeaponTypes.ChildAdded:Connect(onNewWeaponType)
end

local WeaponsSystem = {}
WeaponsSystem.didSetup = false
WeaponsSystem.knownWeapons = {}
WeaponsSystem.connections = {}
WeaponsSystem.networkFolder = nil
WeaponsSystem.remoteEvents = {}
WeaponsSystem.remoteFunctions = {}
WeaponsSystem.currentWeapon = nil
WeaponsSystem.aimRayCallback = nil

WeaponsSystem.CurrentWeaponChanged = Instance.new("BindableEvent")

local NetworkingCallbacks = require(WeaponsSystemFolder:WaitForChild("NetworkingCallbacks"))
NetworkingCallbacks.WeaponsSystem = WeaponsSystem

local _damageCallback = nil
local _getTeamCallback = nil

function WeaponsSystem.setDamageCallback(cb)
	_damageCallback = cb
end

function WeaponsSystem.setGetTeamCallback(cb)
	_getTeamCallback = cb
end

function WeaponsSystem.setup()
	if WeaponsSystem.didSetup then
		warn("Warning: trying to run WeaponsSystem setup twice on the same module.")
		return
	end
	print(script.Parent:GetFullName(), "is now active.")

	WeaponsSystem.doingSetup = true

	--Setup network routing
	if IsServer then
		local networkFolder = Instance.new("Folder")
		networkFolder.Name = "Network"

		for _, remoteEventName in pairs(REMOTE_EVENT_NAMES) do
			local remoteEvent = Instance.new("RemoteEvent")
			remoteEvent.Name = remoteEventName
			remoteEvent.Parent = networkFolder

			local callback = NetworkingCallbacks[remoteEventName]
			if not callback then
				--Connect a no-op function to ensure the queue doesn't pile up.
				warn("There is no server callback implemented for the WeaponsSystem RemoteEvent \"%s\"!")
				warn("A default no-op function will be implemented so that the queue cannot be abused.")
				callback = function() end
			end
			WeaponsSystem.connections[remoteEventName .. "Remote"] = remoteEvent.OnServerEvent:Connect(function(...)
				callback(...)
			end)
			WeaponsSystem.remoteEvents[remoteEventName] = remoteEvent
		end
		for _, remoteFuncName in pairs(REMOTE_FUNCTION_NAMES) do
			local remoteFunc = Instance.new("RemoteEvent")
			remoteFunc.Name = remoteFuncName
			remoteFunc.Parent = networkFolder

			local callback = NetworkingCallbacks[remoteFuncName]
			if not callback then
				--Connect a no-op function to ensure the queue doesn't pile up.
				warn("There is no server callback implemented for the WeaponsSystem RemoteFunction \"%s\"!")
				warn("A default no-op function will be implemented so that the queue cannot be abused.")
				callback = function() end
			end
			remoteFunc.OnServerInvoke = function(...)
				return callback(...)
			end
			WeaponsSystem.remoteFunctions[remoteFuncName] = remoteFunc
		end

		networkFolder.Parent = WeaponsSystemFolder
		WeaponsSystem.networkFolder = networkFolder
	else
		WeaponsSystem.StarterGui = game:GetService("StarterGui")

		WeaponsSystem.camera = ShoulderCamera.new(WeaponsSystem)
		WeaponsSystem.gui = WeaponsGui.new(WeaponsSystem)

		if ConfigurationValues.SprintEnabled.Value then
			WeaponsSystem.camera:setSprintEnabled(ConfigurationValues.SprintEnabled.Value)
		end
		
		if ConfigurationValues.SlowZoomWalkEnabled.Value then
			WeaponsSystem.camera:setSlowZoomWalkEnabled(ConfigurationValues.SlowZoomWalkEnabled.Value)
		end

		local networkFolder = WeaponsSystemFolder:WaitForChild("Network", math.huge)

		for _, remoteEventName in pairs(REMOTE_EVENT_NAMES) do
			coroutine.wrap(function()
				local remoteEvent = networkFolder:WaitForChild(remoteEventName, math.huge)
				local callback = NetworkingCallbacks[remoteEventName]
				if callback then
					WeaponsSystem.connections[remoteEventName .. "Remote"] = remoteEvent.OnClientEvent:Connect(function(...)
						callback(...)
					end)
				end
				WeaponsSystem.remoteEvents[remoteEventName] = remoteEvent
			end)()
		end
		for _, remoteFuncName in pairs(REMOTE_FUNCTION_NAMES) do
			coroutine.wrap(function()
				local remoteFunc = networkFolder:WaitForChild(remoteFuncName, math.huge)
				local callback = NetworkingCallbacks[remoteFuncName]
				if callback then
					remoteFunc.OnClientInvoke = function(...)
						return callback(...)
					end
				end
				WeaponsSystem.remoteFunctions[remoteFuncName] = remoteFunc
			end)()
		end

		Players.LocalPlayer.CharacterAdded:Connect(WeaponsSystem.onCharacterAdded)
		if Players.LocalPlayer.Character then
			WeaponsSystem.onCharacterAdded(Players.LocalPlayer.Character)
		end

		WeaponsSystem.networkFolder = networkFolder
		WeaponsSystem.camera:setEnabled(true)
	end

	--Setup weapon tools and listening
	WeaponsSystem.connections.weaponAdded = CollectionService:GetInstanceAddedSignal(WEAPON_TAG):Connect(WeaponsSystem.onWeaponAdded)
	WeaponsSystem.connections.weaponRemoved = CollectionService:GetInstanceRemovedSignal(WEAPON_TAG):Connect(WeaponsSystem.onWeaponRemoved)

	for _, instance in pairs(CollectionService:GetTagged(WEAPON_TAG)) do
		WeaponsSystem.onWeaponAdded(instance)
	end

	WeaponsSystem.doingSetup = false
	WeaponsSystem.didSetup = true
end

function WeaponsSystem.onCharacterAdded(character)
	-- Make it so players unequip weapons while seated, then reequip weapons when they become unseated
	local humanoid = character:WaitForChild("Humanoid")
	WeaponsSystem.connections.seated = humanoid.Seated:Connect(function(isSeated)
		if isSeated then
			WeaponsSystem.seatedWeapon = character:FindFirstChildOfClass("Tool")
			humanoid:UnequipTools()
			WeaponsSystem.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
		else
			WeaponsSystem.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
			humanoid:EquipTool(WeaponsSystem.seatedWeapon)
		end
	end)
end

function WeaponsSystem.shutdown()
	if not WeaponsSystem.didSetup then
		return
	end

	for _, weapon in pairs(WeaponsSystem.knownWeapons) do
		weapon:onDestroyed()
	end
	WeaponsSystem.knownWeapons = {}

	if IsServer and WeaponsSystem.networkFolder then
		WeaponsSystem.networkFolder:Destroy()
	end
	WeaponsSystem.networkFolder = nil
	WeaponsSystem.remoteEvents = {}
	WeaponsSystem.remoteFunctions = {}

	for _, connection in pairs(WeaponsSystem.connections) do
		if typeof(connection) == "RBXScriptConnection" then
			connection:Disconnect()
		end
	end
	WeaponsSystem.connections = {}
end

function WeaponsSystem.getWeaponTypeFromTags(instance)
	for _, tag in pairs(CollectionService:GetTags(instance)) do
		local weaponTypeFound = WEAPON_TYPES_LOOKUP[tag]
		if weaponTypeFound then
			return weaponTypeFound
		end
	end

	return nil
end

function WeaponsSystem.createWeaponForInstance(weaponInstance)
	coroutine.wrap(function()
		local weaponType = WeaponsSystem.getWeaponTypeFromTags(weaponInstance)
		if not weaponType then
			local weaponTypeObj = weaponInstance:WaitForChild("WeaponType")

			if weaponTypeObj and weaponTypeObj:IsA("StringValue") then
				local weaponTypeName = weaponTypeObj.Value
				local weaponTypeFound = WEAPON_TYPES_LOOKUP[weaponTypeName]
				if not weaponTypeFound then
					warn(string.format("Cannot find the weapon type \"%s\" for the instance %s!", weaponTypeName, weaponInstance:GetFullName()))
					return
				end

				weaponType = weaponTypeFound
			else
				warn("Could not find a WeaponType tag or StringValue for the instance ", weaponInstance:GetFullName())
				return
			end
		end

		-- Since we might have yielded while trying to get the WeaponType, we need to make sure not to continue
		-- making a new weapon if something else beat this iteration.
		if WeaponsSystem.getWeaponForInstance(weaponInstance) then
			warn("Already got ", weaponInstance:GetFullName())
			warn(debug.traceback())
			return
		end

		-- We should be pretty sure we got a valid weaponType by now
		assert(weaponType, "Got invalid weaponType")

		local weapon = weaponType.new(WeaponsSystem, weaponInstance)
		WeaponsSystem.knownWeapons[weaponInstance] = weapon
	end)()
end

function WeaponsSystem.getWeaponForInstance(weaponInstance)
	if not typeof(weaponInstance) == "Instance" then
		warn("WeaponsSystem.getWeaponForInstance(weaponInstance): 'weaponInstance' was not an instance.")
		return nil
	end

	return WeaponsSystem.knownWeapons[weaponInstance]
end

-- and (IsServer or weaponInstance:IsDescendantOf(Players.LocalPlayer))

function WeaponsSystem.onWeaponAdded(weaponInstance)
	local weapon = WeaponsSystem.getWeaponForInstance(weaponInstance)
	if not weapon then
		WeaponsSystem.createWeaponForInstance(weaponInstance)
	end
end

function WeaponsSystem.onWeaponRemoved(weaponInstance)
	local weapon = WeaponsSystem.getWeaponForInstance(weaponInstance)
	if weapon then
		weapon:onDestroyed()
	end
	WeaponsSystem.knownWeapons[weaponInstance] = nil
end

function WeaponsSystem.getRemoteEvent(name)
	if not WeaponsSystem.networkFolder then
		return
	end

	local remoteEvent = WeaponsSystem.remoteEvents[name]
	if IsServer then
		if not remoteEvent then
			warn("No RemoteEvent named ", name)
			return nil
		end

		return remoteEvent
	else
		if not remoteEvent then
			remoteEvent = WeaponsSystem.networkFolder:WaitForChild(name, math.huge)
		end

		return remoteEvent
	end
end

function WeaponsSystem.getRemoteFunction(name)
	if not WeaponsSystem.networkFolder then
		return
	end

	local remoteFunc = WeaponsSystem.remoteFunctions[name]
	if IsServer then
		if not remoteFunc then
			warn("No RemoteFunction named ", name)
			return nil
		end

		return remoteFunc
	else
		if not remoteFunc then
			remoteFunc = WeaponsSystem.networkFolder:WaitForChild(name, math.huge)
		end

		return remoteFunc
	end
end

function WeaponsSystem.setWeaponEquipped(weapon, equipped)
	assert(not IsServer, "WeaponsSystem.setWeaponEquipped should only be called on the client.")
	if not weapon then
		return
	end

	local lastWeapon = WeaponsSystem.currentWeapon
	local hasWeapon = false
	local weaponChanged = false

	if lastWeapon == weapon then
		if not equipped then
			WeaponsSystem.currentWeapon = nil
			hasWeapon = false
			weaponChanged = true
		else
			weaponChanged = false
		end
	else
		if equipped then
			WeaponsSystem.currentWeapon = weapon
			hasWeapon = true
			weaponChanged = true
		end
	end

	if WeaponsSystem.camera then
		WeaponsSystem.camera:resetZoomFactor()
		WeaponsSystem.camera:setHasScope(false)

		if WeaponsSystem.currentWeapon then
			WeaponsSystem.camera:setZoomFactor(WeaponsSystem.currentWeapon:getConfigValue("ZoomFactor", 1.1))
			WeaponsSystem.camera:setHasScope(WeaponsSystem.currentWeapon:getConfigValue("HasScope", false))
		end
	end

	if WeaponsSystem.gui then
		WeaponsSystem.gui:setEnabled(hasWeapon)

		if WeaponsSystem.currentWeapon then
			WeaponsSystem.gui:setCrosshairWeaponScale(WeaponsSystem.currentWeapon:getConfigValue("CrosshairScale", 1))
		else
			WeaponsSystem.gui:setCrosshairWeaponScale(1)
		end
	end

	if weaponChanged then
		WeaponsSystem.CurrentWeaponChanged:Fire(weapon.instance, lastWeapon and lastWeapon.instance)
	end
end

function WeaponsSystem.getHumanoid(part)
	while part and part ~= workspace do
		if part:IsA("Model") and part.PrimaryPart and part.PrimaryPart.Name == "HumanoidRootPart" then
			return part:FindFirstChildOfClass("Humanoid")
		end

		part = part.Parent
	end
end

function WeaponsSystem.getPlayerFromHumanoid(humanoid)
	for _, player in ipairs(Players:GetPlayers()) do
		if player.Character and humanoid:IsDescendantOf(player.Character) then
			return player
		end
	end
end

local function _defaultDamageCallback(system, target, amount, damageType, dealer, hitInfo, damageData)
	if target:IsA("Humanoid") then
		target:TakeDamage(amount)
	end
end

function WeaponsSystem.doDamage(target, amount, damageType, dealer, hitInfo, damageData)
	if not target or ancestorHasTag(target, "WeaponsSystemIgnore") then
		return
	end
	if IsServer then
		if target:IsA("Humanoid") and dealer:IsA("Player") and dealer.Character then
			local dealerHumanoid = dealer.Character:FindFirstChildOfClass("Humanoid")
			local targetPlayer = Players:GetPlayerFromCharacter(target.Parent)
			if dealerHumanoid and target ~= dealerHumanoid and targetPlayer then
				-- Trigger the damage indicator
				WeaponData:FireClient(targetPlayer, "HitByOtherPlayer", dealer.Character.HumanoidRootPart.CFrame.Position)
			end
		end

		-- NOTE:  damageData is a more or less free-form parameter that can be used for passing information from the code that is dealing damage about the cause.
		-- .The most obvious usage is extracting icons from the various weapon types (in which case a weapon instance would likely be passed in)
		-- ..The default weapons pass in that data
		local handler = _damageCallback or _defaultDamageCallback
		handler(WeaponsSystem, target, amount, damageType, dealer, hitInfo, damageData)
	end
end

local function _defaultGetTeamCallback(player)
	return 0
end

function WeaponsSystem.getTeam(player)
	local handler = _getTeamCallback or _defaultGetTeamCallback
	return handler(player)
end

function WeaponsSystem.playersOnDifferentTeams(player1, player2)
	if player1 == player2 or player1 == nil or player2 == nil then
		-- This allows players to damage themselves and NPC's
		return true
	end

	local player1Team = WeaponsSystem.getTeam(player1)
	local player2Team = WeaponsSystem.getTeam(player2)
	return player1Team == 0 or player1Team ~= player2Team
end

return WeaponsSystem

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
