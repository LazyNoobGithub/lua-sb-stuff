
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
ScreenGui0 = Instance.new("ScreenGui")
Frame1 = Instance.new("Frame")
LocalScript2 = Instance.new("LocalScript")
TextLabel3 = Instance.new("TextLabel")
TextBox4 = Instance.new("TextBox")
TextButton5 = Instance.new("TextButton")
Script6 = Instance.new("Script")
ScreenGui0.Name = "VanRemakeGui"
ScreenGui0.Parent = mas
ScreenGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame1.Name = "MainFrame"
Frame1.Parent = ScreenGui0
Frame1.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame1.Size = UDim2.new(0, 302, 0, 172)
Frame1.AnchorPoint = Vector2.new(0.5, 0.5)
Frame1.BackgroundColor = BrickColor.new("Really black")
Frame1.BackgroundColor3 = Color3.new(0, 0, 0)
Frame1.BackgroundTransparency = 0.5
Frame1.BorderColor = BrickColor.new("Really blue")
Frame1.BorderColor3 = Color3.new(0.333333, 0, 1)
Frame1.BorderSizePixel = 2
LocalScript2.Name = "SmoothDrag"
LocalScript2.Parent = Frame1
table.insert(cors,sandbox(LocalScript2,function()
-- Need help? Check me out on the devforum!
-- Link: https://devforum.roblox.com/t/smooth-dragging-easily-drag-your-frames/2508276

local Drag = script.Parent
gsCoreGui = game:GetService("CoreGui")
gsTween = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
	local dragging
	local dragInput
	local dragStart
	local startPos
	local function update(input)
		local delta = input.Position - dragStart
		local dragTime = 0.04
		local SmoothDrag = {}
		SmoothDrag.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		local dragSmoothFunction = gsTween:Create(Drag, TweenInfo.new(dragTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), SmoothDrag)
		dragSmoothFunction:Play()
	end
	Drag.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = Drag.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	Drag.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging and Drag.Size then
			update(input)
		end
	end)

end))
TextLabel3.Name = "GUIName"
TextLabel3.Parent = Frame1
TextLabel3.Position = UDim2.new(0.498344362, 0, 0.215116277, 0)
TextLabel3.Size = UDim2.new(0, 293, 0, 50)
TextLabel3.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel3.BackgroundColor = BrickColor.new("Institutional white")
TextLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel3.BackgroundTransparency = 1
TextLabel3.BorderColor = BrickColor.new("Really black")
TextLabel3.BorderColor3 = Color3.new(0, 0, 0)
TextLabel3.BorderSizePixel = 0
TextLabel3.Font = Enum.Font.RobotoMono
TextLabel3.FontSize = Enum.FontSize.Size14
TextLabel3.Text = "LazyNoob's Van Gui Remake"
TextLabel3.TextColor = BrickColor.new("Really blue")
TextLabel3.TextColor3 = Color3.new(0.333333, 0, 1)
TextLabel3.TextScaled = true
TextLabel3.TextSize = 14
TextLabel3.TextWrap = true
TextLabel3.TextWrapped = true
TextBox4.Name = "NameLabel"
TextBox4.Parent = Frame1
TextBox4.Position = UDim2.new(0.5, 0, 0.5, 0)
TextBox4.Size = UDim2.new(0, 200, 0, 50)
TextBox4.AnchorPoint = Vector2.new(0.5, 0.5)
TextBox4.BackgroundColor = BrickColor.new("Really black")
TextBox4.BackgroundColor3 = Color3.new(0, 0, 0)
TextBox4.BackgroundTransparency = 0.5
TextBox4.BorderColor = BrickColor.new("Really blue")
TextBox4.BorderColor3 = Color3.new(0.333333, 0, 1)
TextBox4.BorderSizePixel = 2
TextBox4.Font = Enum.Font.SourceSans
TextBox4.FontSize = Enum.FontSize.Size14
TextBox4.Text = ""
TextBox4.TextColor = BrickColor.new("Really black")
TextBox4.TextColor3 = Color3.new(0, 0, 0)
TextBox4.TextSize = 14
TextButton5.Name = "GetEm"
TextButton5.Parent = Frame1
TextButton5.Position = UDim2.new(0.5, 0, 0.825581372, 0)
TextButton5.Size = UDim2.new(0, 178, 0, 31)
TextButton5.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton5.BackgroundColor = BrickColor.new("Really black")
TextButton5.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton5.BackgroundTransparency = 0.5
TextButton5.BorderColor = BrickColor.new("Really blue")
TextButton5.BorderColor3 = Color3.new(0.333333, 0, 1)
TextButton5.BorderSizePixel = 2
TextButton5.Font = Enum.Font.SourceSans
TextButton5.FontSize = Enum.FontSize.Size14
TextButton5.TextColor = BrickColor.new("Really blue")
TextButton5.TextColor3 = Color3.new(0.333333, 0, 1)
TextButton5.TextSize = 14
Script6.Name = "GUIManager"
Script6.Parent = Frame1
table.insert(cors,sandbox(Script6,function()
function kidnap(name)
	Victim = name
	o1 = Instance.new("Model")
	o2 = Instance.new("Part")
	o3 = Instance.new("CylinderMesh")
	o4 = Instance.new("Part")
	o5 = Instance.new("SpecialMesh")
	o6 = Instance.new("Part")
	o7 = Instance.new("SpecialMesh")
	o8 = Instance.new("Part")
	o9 = Instance.new("BlockMesh")
	o10 = Instance.new("Part")
	o11 = Instance.new("BlockMesh")
	o12 = Instance.new("Part")
	o13 = Instance.new("Part")
	o14 = Instance.new("BlockMesh")
	o15 = Instance.new("Part")
	o16 = Instance.new("SpecialMesh")
	o17 = Instance.new("Part")
	o18 = Instance.new("SpecialMesh")
	o19 = Instance.new("Part")
	o20 = Instance.new("SpecialMesh")
	o21 = Instance.new("Sound")
	o22 = Instance.new("Part")
	o23 = Instance.new("BlockMesh")
	o24 = Instance.new("Part")
	o25 = Instance.new("SpecialMesh")
	o26 = Instance.new("Part")
	o27 = Instance.new("BlockMesh")
	o28 = Instance.new("Part")
	o29 = Instance.new("SpecialMesh")
	o30 = Instance.new("Part")
	o31 = Instance.new("BlockMesh")
	o32 = Instance.new("Part")
	o33 = Instance.new("BlockMesh")
	o34 = Instance.new("Part")
	o35 = Instance.new("BlockMesh")
	o36 = Instance.new("Part")
	o37 = Instance.new("BlockMesh")
	o38 = Instance.new("Part")
	o39 = Instance.new("Part")
	o40 = Instance.new("BlockMesh")
	o41 = Instance.new("Part")
	o42 = Instance.new("BlockMesh")
	o43 = Instance.new("Part")
	o44 = Instance.new("BlockMesh")
	o45 = Instance.new("Part")
	o46 = Instance.new("SpecialMesh")
	o47 = Instance.new("Part")
	o48 = Instance.new("BlockMesh")
	o49 = Instance.new("Part")
	o50 = Instance.new("BlockMesh")
	o51 = Instance.new("Part")
	o52 = Instance.new("BlockMesh")
	o53 = Instance.new("Part")
	o54 = Instance.new("SpecialMesh")
	o55 = Instance.new("Part")
	o56 = Instance.new("SpecialMesh")
	o57 = Instance.new("Part")
	o58 = Instance.new("BlockMesh")
	o59 = Instance.new("Part")
	o60 = Instance.new("BlockMesh")
	o61 = Instance.new("Part")
	o62 = Instance.new("BlockMesh")
	o63 = Instance.new("Part")
	o64 = Instance.new("Part")
	o65 = Instance.new("Part")
	o66 = Instance.new("BlockMesh")
	o67 = Instance.new("Part")
	o68 = Instance.new("BlockMesh")
	o69 = Instance.new("Part")
	o70 = Instance.new("BlockMesh")
	o71 = Instance.new("Part")
	o72 = Instance.new("BlockMesh")
	o73 = Instance.new("Part")
	o74 = Instance.new("SpecialMesh")
	o75 = Instance.new("Decal")
	o76 = Instance.new("Part")
	o77 = Instance.new("Part")
	o78 = Instance.new("BlockMesh")
	o79 = Instance.new("Part")
	o80 = Instance.new("SpecialMesh")
	o81 = Instance.new("Decal")
	o82 = Instance.new("Part")
	o83 = Instance.new("SpecialMesh")
	o84 = Instance.new("Humanoid")
	o85 = Instance.new("Part")
	o86 = Instance.new("Part")
	o87 = Instance.new("Part")
	o88 = Instance.new("Decal")
	o89 = Instance.new("Motor6D")
	o90 = Instance.new("Motor6D")
	o91 = Instance.new("Motor6D")
	o92 = Instance.new("Motor6D")
	o93 = Instance.new("Motor6D")
	o94 = Instance.new("Part")
	o95 = Instance.new("Part")
	o96 = Instance.new("Part")
	o97 = Instance.new("Part")
	o98 = Instance.new("Part")
	o99 = Instance.new("Decal")
	o100 = Instance.new("Motor6D")
	o101 = Instance.new("Motor6D")
	o102 = Instance.new("Motor6D")
	o103 = Instance.new("Part")
	o104 = Instance.new("Part")
	o105 = Instance.new("Part")
	o106 = Instance.new("Part")
	o107 = Instance.new("Part")
	o108 = Instance.new("CylinderMesh")
	o109 = Instance.new("Part")
	o110 = Instance.new("CylinderMesh")
	o111 = Instance.new("Part")
	o112 = Instance.new("CylinderMesh")
	o113 = Instance.new("Part")
	o114 = Instance.new("CylinderMesh")
	o115 = Instance.new("Part")
	o116 = Instance.new("CylinderMesh")
	o117 = Instance.new("Part")
	o118 = Instance.new("CylinderMesh")
	o119 = Instance.new("Part")
	o120 = Instance.new("CylinderMesh")
	o121 = Instance.new("Part")
	o122 = Instance.new("SpecialMesh")
	o123 = Instance.new("Part")
	o124 = Instance.new("Decal")
	o1.Name = " "
	o1.Parent = workspace
	o2.Parent = o1
	o2.Position = Vector3.new(95.3486252, 1.50001001, 18.4564877)
	o2.Rotation = Vector3.new(-90, 1.20620803e-006, -180)
	o2.Anchored = true
	o2.FormFactor = Enum.FormFactor.Symmetric
	o2.Size = Vector3.new(2.39999986, 1.31000006, 2.39999986)
	o2.CFrame = CFrame.new(95.3486252, 1.50001001, 18.4564877, -1, 2.98044895e-008, 2.10523012e-008, 2.10523012e-008, 7.54615499e-008, 1, 2.9804486e-008, 1, -7.54615499e-008)
	o3.Parent = o2
	o4.Parent = o1
	o4.BrickColor = BrickColor.new("Institutional white")
	o4.Position = Vector3.new(96.3181839, 7.00000668, 9.31151104)
	o4.Rotation = Vector3.new(90, 89.9314728, -90)
	o4.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o4.Velocity = Vector3.new(-0.000346515269, 0.00201798417, -0.00195027643)
	o4.Anchored = true
	o4.FormFactor = Enum.FormFactor.Plate
	o4.Size = Vector3.new(1, 2.4000001, 2)
	o4.CFrame = CFrame.new(96.3181839, 7.00000668, 9.31151104, 0, 3.96052044e-008, 0.999999285, 0, 1, -3.97634246e-008, -1, 0, 0)
	o4.BackSurface = Enum.SurfaceType.Weld
	o4.BottomSurface = Enum.SurfaceType.Weld
	o4.LeftSurface = Enum.SurfaceType.Weld
	o4.TopSurface = Enum.SurfaceType.Weld
	o4.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o5.Parent = o4
	o5.MeshType = Enum.MeshType.Wedge
	o6.Parent = o1
	o6.Material = Enum.Material.SmoothPlastic
	o6.BrickColor = BrickColor.new("Really black")
	o6.Transparency = 0.5
	o6.Position = Vector3.new(96.3181839, 7.00000668, 13.8115101)
	o6.Rotation = Vector3.new(90, 89.9440536, -90)
	o6.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o6.Velocity = Vector3.new(0.000965324172, 0.00135755131, -0.00195027643)
	o6.Anchored = true
	o6.FormFactor = Enum.FormFactor.Plate
	o6.Size = Vector3.new(8, 2.4000001, 1.99999976)
	o6.CFrame = CFrame.new(96.3181839, 7.00000668, 13.8115101, 0, 3.96315798e-008, 0.999999523, 0, 1, -3.97370599e-008, -1, 0, 0)
	o6.BackSurface = Enum.SurfaceType.Weld
	o6.BottomSurface = Enum.SurfaceType.Weld
	o6.LeftSurface = Enum.SurfaceType.Weld
	o6.RightSurface = Enum.SurfaceType.Weld
	o6.TopSurface = Enum.SurfaceType.Weld
	o6.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	o7.Parent = o6
	o7.MeshType = Enum.MeshType.Wedge
	o8.Parent = o1
	o8.BrickColor = BrickColor.new("Br. yellowish orange")
	o8.Position = Vector3.new(92.2182083, 4.00000715, 9.61151409)
	o8.Rotation = Vector3.new(-0, 0, -2.26619136e-006)
	o8.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o8.Velocity = Vector3.new(-0.000475873821, 0.00227026758, -0.00119533995)
	o8.Anchored = true
	o8.FormFactor = Enum.FormFactor.Custom
	o8.Size = Vector3.new(0.200000003, 0.800000012, 0.799999714)
	o8.CFrame = CFrame.new(92.2182083, 4.00000715, 9.61151409, 0.999998808, 3.95524538e-008, 0, -3.98161575e-008, 1, 0, 0, 0, 1)
	o8.BackSurface = Enum.SurfaceType.Weld
	o8.BottomSurface = Enum.SurfaceType.Weld
	o8.FrontSurface = Enum.SurfaceType.Weld
	o8.LeftSurface = Enum.SurfaceType.Weld
	o8.RightSurface = Enum.SurfaceType.Weld
	o8.TopSurface = Enum.SurfaceType.Weld
	o8.Color = Color3.new(0.886275, 0.607843, 0.25098)
	o9.Parent = o8
	o10.Parent = o1
	o10.BrickColor = BrickColor.new("Institutional white")
	o10.Position = Vector3.new(105.317894, 8.40004158, 9.31151295)
	o10.Rotation = Vector3.new(-0, 0, -2.21330401e-006)
	o10.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o10.Velocity = Vector3.new(-0.000245332019, 0.00136755884, -0.00436839834)
	o10.Anchored = true
	o10.CanCollide = false
	game.Players[Victim].Character.Humanoid.WalkSpeed = 0
	game.Players[Victim].Character.Humanoid.JumpPower = 0
	o10.FormFactor = Enum.FormFactor.Plate
	o10.Size = Vector3.new(14, 0.400000006, 1)
	o10.CFrame = CFrame.new(105.317894, 8.40004158, 9.31151295, 0.999999762, 3.86294303e-008, 0, -3.86821704e-008, 1, 0, 0, 0, 1)
	o10.BackSurface = Enum.SurfaceType.Weld
	o10.BottomSurface = Enum.SurfaceType.Weld
	o10.FrontSurface = Enum.SurfaceType.Weld
	o10.LeftSurface = Enum.SurfaceType.Weld
	o10.RightSurface = Enum.SurfaceType.Weld
	o10.TopSurface = Enum.SurfaceType.Weld
	o10.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o11.Parent = o10
	o12.Name = "DOOR"
	o12.Parent = o1
	o12.BrickColor = BrickColor.new("Institutional white")
	o12.Position = Vector3.new(103.708466, 5.81500626, 9.31151104)
	o12.Rotation = Vector3.new(-0, 0, -4.43210411e-006)
	o12.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o12.Velocity = Vector3.new(-0.000432157307, 0.00148387556, -0.00427860441)
	o12.Anchored = true
	o12.CanCollide = false
	o12.FormFactor = Enum.FormFactor.Plate
	o12.Size = Vector3.new(5.22000027, 4.82999992, 1)
	o12.CFrame = CFrame.new(103.708466, 5.81500626, 9.31151104, 1, 7.73548052e-008, 0, -7.73548052e-008, 1, 0, 0, 0, 1)
	o12.BottomSurface = Enum.SurfaceType.Weld
	o12.LeftSurface = Enum.SurfaceType.Weld
	o12.RightSurface = Enum.SurfaceType.Weld
	o12.TopSurface = Enum.SurfaceType.Weld
	o12.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o13.Parent = o1
	o13.BrickColor = BrickColor.new("White")
	o13.Position = Vector3.new(109.818169, 5.80000877, 9.31151104)
	o13.Rotation = Vector3.new(-0, 0, -2.25410599e-006)
	o13.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o13.Velocity = Vector3.new(-0.00043324125, 0.00104231632, -0.006061906)
	o13.Anchored = true
	o13.FormFactor = Enum.FormFactor.Plate
	o13.Size = Vector3.new(7, 4.80000019, 1)
	o13.CFrame = CFrame.new(109.818169, 5.80000877, 9.31151104, 0.999996901, 3.9341451e-008, 0, -4.00270856e-008, 1, 0, 0, 0, 1)
	o13.BackSurface = Enum.SurfaceType.Weld
	o13.BottomSurface = Enum.SurfaceType.Weld
	o13.FrontSurface = Enum.SurfaceType.Weld
	o13.LeftSurface = Enum.SurfaceType.Weld
	o13.RightSurface = Enum.SurfaceType.Weld
	o13.TopSurface = Enum.SurfaceType.Weld
	o13.Color = Color3.new(0.94902, 0.952941, 0.952941)
	o14.Parent = o13
	o15.Parent = o1
	o15.BrickColor = BrickColor.new("Institutional white")
	o15.Position = Vector3.new(97.817894, 8.40000725, 13.8115139)
	o15.Rotation = Vector3.new(90, 89.960434, -90)
	o15.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o15.Velocity = Vector3.new(0.00106650498, 0.00124916411, -0.00218200427)
	o15.Anchored = true
	o15.CanCollide = false
	o15.FormFactor = Enum.FormFactor.Plate
	o15.Size = Vector3.new(10, 0.400000006, 1)
	o15.CFrame = CFrame.new(97.817894, 8.40000725, 13.8115139, 0, 3.86294303e-008, 0.999999762, 0, 1, -3.86821704e-008, -1, 0, 0)
	o15.BackSurface = Enum.SurfaceType.Weld
	o15.BottomSurface = Enum.SurfaceType.Weld
	o15.TopSurface = Enum.SurfaceType.Weld
	o15.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o16.Parent = o15
	o16.MeshType = Enum.MeshType.Wedge
	o17.Parent = o1
	o17.BrickColor = BrickColor.new("Institutional white")
	o17.Position = Vector3.new(96.3181839, 7.00000668, 18.3115101)
	o17.Rotation = Vector3.new(90, 89.9314728, -90)
	o17.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o17.Velocity = Vector3.new(0.00227716356, 0.000697118347, -0.00195027643)
	o17.Anchored = true
	o17.FormFactor = Enum.FormFactor.Plate
	o17.Size = Vector3.new(1, 2.4000001, 2)
	o17.CFrame = CFrame.new(96.3181839, 7.00000668, 18.3115101, 0, 3.96052044e-008, 0.999999285, 0, 1, -3.97634246e-008, -1, 0, 0)
	o17.BackSurface = Enum.SurfaceType.Weld
	o17.BottomSurface = Enum.SurfaceType.Weld
	o17.RightSurface = Enum.SurfaceType.Weld
	o17.TopSurface = Enum.SurfaceType.Weld
	o17.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o18.Parent = o17
	o18.MeshType = Enum.MeshType.Wedge
	o19.Parent = o1
	o19.BrickColor = BrickColor.new("Institutional white")
	o19.Position = Vector3.new(93.8181839, 5.20000744, 13.8115101)
	o19.Rotation = Vector3.new(90, 89.8573456, -90)
	o19.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o19.Velocity = Vector3.new(0.000835234998, 0.00153823046, -0.00148565089)
	o19.Anchored = true
	o19.FormFactor = Enum.FormFactor.Plate
	o19.Size = Vector3.new(10, 1.20000005, 3)
	o19.CFrame = CFrame.new(93.8181839, 5.20000744, 13.8115101, 0, 3.77325726e-008, 0.999996901, 0, 1, -3.84182002e-008, -1, 0, 0)
	o19.BackSurface = Enum.SurfaceType.Weld
	o19.BottomSurface = Enum.SurfaceType.Weld
	o19.TopSurface = Enum.SurfaceType.Weld
	o19.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o20.Parent = o19
	o20.MeshType = Enum.MeshType.Wedge
	o21.Parent = o19
	o21.SoundId = "rbxassetid://532147820"
	o21.Looped = true
	o22.Parent = o1
	o22.BrickColor = BrickColor.new("Institutional white")
	o22.Position = Vector3.new(96.3182907, 4.60000753, 9.31151104)
	o22.Rotation = Vector3.new(-0, 0, -2.23446773e-006)
	o22.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o22.Velocity = Vector3.new(-0.000519967522, 0.00201797695, -0.00230253674)
	o22.Anchored = true
	o22.FormFactor = Enum.FormFactor.Plate
	o22.Size = Vector3.new(2, 2.4000001, 1)
	o22.CFrame = CFrame.new(96.3182907, 4.60000753, 9.31151104, 0.999993801, 3.8998575e-008, 0, -4.03698408e-008, 1, 0, 0, 0, 1)
	o22.BackSurface = Enum.SurfaceType.Weld
	o22.BottomSurface = Enum.SurfaceType.Weld
	o22.FrontSurface = Enum.SurfaceType.Weld
	o22.LeftSurface = Enum.SurfaceType.Weld
	o22.RightSurface = Enum.SurfaceType.Weld
	o22.TopSurface = Enum.SurfaceType.Weld
	o22.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o23.Parent = o22
	o24.Parent = o1
	o24.BrickColor = BrickColor.new("Institutional white")
	o24.Position = Vector3.new(113.817245, 6.80000734, 18.3115101)
	o24.Rotation = Vector3.new(-0, -90, 0)
	o24.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o24.Velocity = Vector3.new(0.00226270943, -0.000567569688, -0.00708095264)
	o24.Anchored = true
	o24.FormFactor = Enum.FormFactor.Plate
	o24.Size = Vector3.new(1, 2.79999995, 1)
	o24.CFrame = CFrame.new(113.817245, 6.80000734, 18.3115101, 0, 5.54578605e-008, -1, 0, 1, 5.54578605e-008, 1, 0, 0)
	o24.BackSurface = Enum.SurfaceType.Weld
	o24.BottomSurface = Enum.SurfaceType.Weld
	o24.TopSurface = Enum.SurfaceType.Weld
	o24.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o25.Parent = o24
	o25.MeshType = Enum.MeshType.Wedge
	o26.Parent = o1
	o26.BrickColor = BrickColor.new("Institutional white")
	o26.Position = Vector3.new(93.0181885, 2.60000825, 13.8115101)
	o26.Rotation = Vector3.new(-0, 0, -2.27223404e-006)
	o26.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o26.Velocity = Vector3.new(0.000647328445, 0.00159604801, -0.00163401756)
	o26.Anchored = true
	o26.FormFactor = Enum.FormFactor.Plate
	o26.Size = Vector3.new(1.39999998, 1.60000002, 10)
	o26.CFrame = CFrame.new(93.0181885, 2.60000825, 13.8115101, 0.999999762, 3.96579551e-008, 0, -3.97106952e-008, 1, 0, 0, 0, 1)
	o26.BackSurface = Enum.SurfaceType.Weld
	o26.BottomSurface = Enum.SurfaceType.Weld
	o26.FrontSurface = Enum.SurfaceType.Weld
	o26.LeftSurface = Enum.SurfaceType.Weld
	o26.RightSurface = Enum.SurfaceType.Weld
	o26.TopSurface = Enum.SurfaceType.Weld
	o26.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o27.Parent = o26
	o28.Parent = o1
	o28.BrickColor = BrickColor.new("Institutional white")
	o28.Position = Vector3.new(113.818176, 6.80000877, 9.31151104)
	o28.Rotation = Vector3.new(-90, -89.7982635, -90)
	o28.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o28.Velocity = Vector3.new(-0.000360969483, 0.000753228669, -0.00708122458)
	o28.Anchored = true
	o28.FormFactor = Enum.FormFactor.Plate
	o28.Size = Vector3.new(1, 2.79999995, 1)
	o28.CFrame = CFrame.new(113.818176, 6.80000877, 9.31151104, 0, 3.89985715e-008, -0.999993801, 0, 1, 4.03698408e-008, 1, 0, 0)
	o28.BackSurface = Enum.SurfaceType.Weld
	o28.BottomSurface = Enum.SurfaceType.Weld
	o28.TopSurface = Enum.SurfaceType.Weld
	o28.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o29.Parent = o28
	o29.MeshType = Enum.MeshType.Wedge
	o30.Parent = o1
	o30.BrickColor = BrickColor.new("Institutional white")
	o30.Position = Vector3.new(96.3181992, 4.60000753, 18.3115101)
	o30.Rotation = Vector3.new(-0, 0, -2.26770203e-006)
	o30.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o30.Velocity = Vector3.new(0.00210371148, 0.000697117415, -0.0023025109)
	o30.Anchored = true
	o30.FormFactor = Enum.FormFactor.Plate
	o30.Size = Vector3.new(2, 2.4000001, 1)
	o30.CFrame = CFrame.new(96.3181992, 4.60000753, 18.3115101, 0.999999046, 3.95788291e-008, 0, -3.97897928e-008, 1, 0, 0, 0, 1)
	o30.BackSurface = Enum.SurfaceType.Weld
	o30.BottomSurface = Enum.SurfaceType.Weld
	o30.FrontSurface = Enum.SurfaceType.Weld
	o30.LeftSurface = Enum.SurfaceType.Weld
	o30.RightSurface = Enum.SurfaceType.Weld
	o30.TopSurface = Enum.SurfaceType.Weld
	o30.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o31.Parent = o30
	o32.Parent = o1
	o32.BrickColor = BrickColor.new("Dark stone grey")
	o32.Position = Vector3.new(95.8181839, 4.60000753, 13.8115101)
	o32.Rotation = Vector3.new(90, 89.960434, -90)
	o32.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o32.Velocity = Vector3.new(0.000791871978, 0.00139368721, -0.00215674727)
	o32.Anchored = true
	o32.FormFactor = Enum.FormFactor.Plate
	o32.Size = Vector3.new(8, 2.4000001, 1)
	o32.CFrame = CFrame.new(95.8181839, 4.60000753, 13.8115101, 0, 3.96579551e-008, 0.999999762, 0, 1, -3.97106952e-008, -1, 0, 0)
	o32.BottomSurface = Enum.SurfaceType.Weld
	o32.TopSurface = Enum.SurfaceType.Weld
	o32.Color = Color3.new(0.388235, 0.372549, 0.384314)
	o33.Parent = o32
	o33.Offset = Vector3.new(0, 0, 0.5)
	o33.Scale = Vector3.new(1, 1, 2)
	o34.Parent = o1
	o34.BrickColor = BrickColor.new("Institutional white")
	o34.Position = Vector3.new(93.8181992, 4.00000715, 13.8115101)
	o34.Rotation = Vector3.new(-0, 0, -2.26770203e-006)
	o34.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o34.Velocity = Vector3.new(0.000748508843, 0.00153822941, -0.00166177051)
	o34.Anchored = true
	o34.FormFactor = Enum.FormFactor.Plate
	o34.Size = Vector3.new(3, 1.20000005, 10)
	o34.CFrame = CFrame.new(93.8181992, 4.00000715, 13.8115101, 0.999999046, 3.95788291e-008, 0, -3.97897928e-008, 1, 0, 0, 0, 1)
	o34.BackSurface = Enum.SurfaceType.Weld
	o34.BottomSurface = Enum.SurfaceType.Weld
	o34.FrontSurface = Enum.SurfaceType.Weld
	o34.LeftSurface = Enum.SurfaceType.Weld
	o34.RightSurface = Enum.SurfaceType.Weld
	o34.TopSurface = Enum.SurfaceType.Weld
	o34.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o35.Parent = o34
	o36.Parent = o1
	o36.BrickColor = BrickColor.new("Br. yellowish orange")
	o36.Position = Vector3.new(92.2181854, 4.00000715, 18.211504)
	o36.Rotation = Vector3.new(-0, 0, -2.2601489e-006)
	o36.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o36.Velocity = Vector3.new(0.00203119451, 0.00100810977, -0.00119533355)
	o36.Anchored = true
	o36.FormFactor = Enum.FormFactor.Custom
	o36.Size = Vector3.new(0.200000003, 0.800000012, 0.799999714)
	o36.CFrame = CFrame.new(92.2181854, 4.00000715, 18.211504, 0.999997854, 3.94469524e-008, 0, -3.99216233e-008, 1, 0, 0, 0, 1)
	o36.BackSurface = Enum.SurfaceType.Weld
	o36.BottomSurface = Enum.SurfaceType.Weld
	o36.FrontSurface = Enum.SurfaceType.Weld
	o36.LeftSurface = Enum.SurfaceType.Weld
	o36.RightSurface = Enum.SurfaceType.Weld
	o36.TopSurface = Enum.SurfaceType.Weld
	o36.Color = Color3.new(0.886275, 0.607843, 0.25098)
	o37.Parent = o36
	o38.Parent = o1
	o38.BrickColor = BrickColor.new("Institutional white")
	o38.Position = Vector3.new(99.0602112, 4.60000706, 18.3115101)
	o38.Rotation = Vector3.new(-0, 0, -4.84935117e-006)
	o38.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o38.Velocity = Vector3.new(0.00210371148, 0.000498947338, -0.0031018618)
	o38.Anchored = true
	o38.CanCollide = false
	o38.FormFactor = Enum.FormFactor.Plate
	o38.Size = Vector3.new(3.48000026, 2.4000001, 1)
	o38.CFrame = CFrame.new(99.0602112, 4.60000706, 18.3115101, 1, 8.46371435e-008, 0, -8.46371435e-008, 1, 0, 0, 0, 1)
	o38.BottomSurface = Enum.SurfaceType.Weld
	o38.LeftSurface = Enum.SurfaceType.Weld
	o38.RightSurface = Enum.SurfaceType.Weld
	o38.TopSurface = Enum.SurfaceType.Weld
	o38.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o39.Parent = o1
	o39.BrickColor = BrickColor.new("Really red")
	o39.Position = Vector3.new(113.818176, 4.80000877, 9.31151104)
	o39.Rotation = Vector3.new(-0, 0, -2.2344675e-006)
	o39.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o39.Velocity = Vector3.new(-0.000505513046, 0.000753228669, -0.00737475045)
	o39.Anchored = true
	o39.FormFactor = Enum.FormFactor.Plate
	o39.Size = Vector3.new(1, 1.20000005, 1)
	o39.CFrame = CFrame.new(113.818176, 4.80000877, 9.31151104, 0.999993801, 3.89985715e-008, 0, -4.03698408e-008, 1, 0, 0, 0, 1)
	o39.BackSurface = Enum.SurfaceType.Weld
	o39.BottomSurface = Enum.SurfaceType.Weld
	o39.FrontSurface = Enum.SurfaceType.Weld
	o39.LeftSurface = Enum.SurfaceType.Weld
	o39.RightSurface = Enum.SurfaceType.Weld
	o39.TopSurface = Enum.SurfaceType.Weld
	o39.Color = Color3.new(1, 0, 0)
	o40.Parent = o39
	o41.Parent = o1
	o41.BrickColor = BrickColor.new("Institutional white")
	o41.Position = Vector3.new(113.818054, 3.80000734, 9.31151104)
	o41.Rotation = Vector3.new(-0, 0, -2.23295706e-006)
	o41.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o41.Velocity = Vector3.new(-0.000577784958, 0.000753237749, -0.00752147706)
	o41.Anchored = true
	o41.FormFactor = Enum.FormFactor.Plate
	o41.Size = Vector3.new(1, 0.800000012, 1)
	o41.CFrame = CFrame.new(113.818054, 3.80000734, 9.31151104, 0.999993563, 3.89721997e-008, 0, -4.03962055e-008, 1, 0, 0, 0, 1)
	o41.BackSurface = Enum.SurfaceType.Weld
	o41.BottomSurface = Enum.SurfaceType.Weld
	o41.FrontSurface = Enum.SurfaceType.Weld
	o41.LeftSurface = Enum.SurfaceType.Weld
	o41.RightSurface = Enum.SurfaceType.Weld
	o41.TopSurface = Enum.SurfaceType.Weld
	o41.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o42.Parent = o41
	o43.Parent = o1
	o43.BrickColor = BrickColor.new("Institutional white")
	o43.Position = Vector3.new(105.317894, 8.40000725, 13.8115139)
	o43.Rotation = Vector3.new(-0, 0, -2.21481446e-006)
	o43.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o43.Velocity = Vector3.new(0.00106650498, 0.000707125873, -0.00436840346)
	o43.Anchored = true
	o43.CanCollide = false
	o43.FormFactor = Enum.FormFactor.Plate
	o43.Size = Vector3.new(14, 0.400000006, 8)
	o43.CFrame = CFrame.new(105.317894, 8.40000725, 13.8115139, 1, 3.86558057e-008, 0, -3.86558057e-008, 1, 0, 0, 0, 1)
	o43.BackSurface = Enum.SurfaceType.Weld
	o43.BottomSurface = Enum.SurfaceType.Weld
	o43.FrontSurface = Enum.SurfaceType.Weld
	o43.LeftSurface = Enum.SurfaceType.Weld
	o43.RightSurface = Enum.SurfaceType.Weld
	o43.TopSurface = Enum.SurfaceType.Weld
	o43.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o44.Parent = o43
	o45.Parent = o1
	o45.BrickColor = BrickColor.new("Really black")
	o45.Position = Vector3.new(113.818176, 6.80000782, 11.311511)
	o45.Rotation = Vector3.new(-90, -89.9314728, -90)
	o45.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o45.Velocity = Vector3.new(0.000222070201, 0.000459702482, -0.00708122645)
	o45.Anchored = true
	o45.CanCollide = false
	o45.FormFactor = Enum.FormFactor.Plate
	o45.Size = Vector3.new(3, 2.79999995, 1)
	o45.CFrame = CFrame.new(113.818176, 6.80000782, 11.311511, 0, 3.96052044e-008, -0.999999285, 0, 1, 3.97634281e-008, 1, 0, 0)
	o45.BackSurface = Enum.SurfaceType.Weld
	o45.BottomSurface = Enum.SurfaceType.Weld
	o45.TopSurface = Enum.SurfaceType.Weld
	o45.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	o46.Parent = o45
	o46.MeshType = Enum.MeshType.Wedge
	o47.Parent = o1
	o47.BrickColor = BrickColor.new("Institutional white")
	o47.Position = Vector3.new(103.118179, 2.40000772, 13.8115101)
	o47.Rotation = Vector3.new(-0, 0, -2.27223404e-006)
	o47.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o47.Velocity = Vector3.new(0.000632874086, 0.000866103393, -0.0046077203)
	o47.Anchored = true
	o47.FormFactor = Enum.FormFactor.Plate
	o47.Size = Vector3.new(12.3999996, 1.20000005, 10)
	o47.CFrame = CFrame.new(103.118179, 2.40000772, 13.8115101, 0.999999762, 3.96579551e-008, 0, -3.97106952e-008, 1, 0, 0, 0, 1)
	o47.BackSurface = Enum.SurfaceType.Weld
	o47.BottomSurface = Enum.SurfaceType.Weld
	o47.FrontSurface = Enum.SurfaceType.Weld
	o47.LeftSurface = Enum.SurfaceType.Weld
	o47.RightSurface = Enum.SurfaceType.Weld
	o47.TopSurface = Enum.SurfaceType.Weld
	o47.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o48.Parent = o47
	o49.Parent = o1
	o49.BrickColor = BrickColor.new("White")
	o49.Position = Vector3.new(104.018181, 3.20000815, 13.8115101)
	o49.Rotation = Vector3.new(-0, 0, -2.27374471e-006)
	o49.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o49.Velocity = Vector3.new(0.000690691522, 0.000801058719, -0.00475267787)
	o49.Anchored = true
	o49.FormFactor = Enum.FormFactor.Plate
	o49.Size = Vector3.new(20.6000004, 0.400000006, 10)
	o49.CFrame = CFrame.new(104.018181, 3.20000815, 13.8115101, 1, 3.96843305e-008, 0, -3.96843305e-008, 1, 0, 0, 0, 1)
	o49.BackSurface = Enum.SurfaceType.Weld
	o49.BottomSurface = Enum.SurfaceType.Weld
	o49.FrontSurface = Enum.SurfaceType.Weld
	o49.LeftSurface = Enum.SurfaceType.Weld
	o49.RightSurface = Enum.SurfaceType.Weld
	o49.TopSurface = Enum.SurfaceType.Weld
	o49.Color = Color3.new(0.94902, 0.952941, 0.952941)
	o50.Parent = o49
	o51.Parent = o1
	o51.BrickColor = BrickColor.new("Institutional white")
	o51.Position = Vector3.new(107.167747, 5.80000782, 18.3115101)
	o51.Rotation = Vector3.new(-0, 0, -3.14727777e-006)
	o51.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o51.Velocity = Vector3.new(0.00219043763, -8.69987416e-005, -0.00528925471)
	o51.Anchored = true
	o51.FormFactor = Enum.FormFactor.Plate
	o51.Size = Vector3.new(12.3000002, 4.80000019, 1)
	o51.CFrame = CFrame.new(107.167747, 5.80000782, 18.3115101, 1, 5.49303607e-008, 0, -5.49303607e-008, 1, 0, 0, 0, 1)
	o51.BackSurface = Enum.SurfaceType.Weld
	o51.BottomSurface = Enum.SurfaceType.Weld
	o51.FrontSurface = Enum.SurfaceType.Weld
	o51.LeftSurface = Enum.SurfaceType.Weld
	o51.RightSurface = Enum.SurfaceType.Weld
	o51.TopSurface = Enum.SurfaceType.Weld
	o51.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o52.Parent = o51
	o53.Parent = o1
	o53.BrickColor = BrickColor.new("Institutional white")
	o53.Position = Vector3.new(113.818176, 6.80000782, 13.8115101)
	o53.Rotation = Vector3.new(-90, -89.9314728, -90)
	o53.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o53.Velocity = Vector3.new(0.000950869871, 9.27953006e-005, -0.00708122645)
	o53.Anchored = true
	o53.CanCollide = false
	o53.FormFactor = Enum.FormFactor.Plate
	o53.Size = Vector3.new(2, 2.79999995, 1)
	o53.CFrame = CFrame.new(113.818176, 6.80000782, 13.8115101, 0, 3.96052044e-008, -0.999999285, 0, 1, 3.97634281e-008, 1, 0, 0)
	o53.BackSurface = Enum.SurfaceType.Weld
	o53.BottomSurface = Enum.SurfaceType.Weld
	o53.TopSurface = Enum.SurfaceType.Weld
	o53.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o54.Parent = o53
	o54.MeshType = Enum.MeshType.Wedge
	o55.Parent = o1
	o55.BrickColor = BrickColor.new("Really black")
	o55.Position = Vector3.new(113.818176, 6.80000782, 16.3115101)
	o55.Rotation = Vector3.new(-90, -89.9314728, -90)
	o55.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o55.Velocity = Vector3.new(0.0016796696, -0.000274111895, -0.00708122645)
	o55.Anchored = true
	o55.CanCollide = false
	o55.FormFactor = Enum.FormFactor.Plate
	o55.Size = Vector3.new(3, 2.79999995, 1)
	o55.CFrame = CFrame.new(113.818176, 6.80000782, 16.3115101, 0, 3.96052044e-008, -0.999999285, 0, 1, 3.97634281e-008, 1, 0, 0)
	o55.BackSurface = Enum.SurfaceType.Weld
	o55.BottomSurface = Enum.SurfaceType.Weld
	o55.TopSurface = Enum.SurfaceType.Weld
	o55.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	o56.Parent = o55
	o56.MeshType = Enum.MeshType.Wedge
	o57.Parent = o1
	o57.BrickColor = BrickColor.new("Institutional white")
	o57.Position = Vector3.new(113.818176, 4.40000582, 13.8115101)
	o57.Rotation = Vector3.new(-0, 0, -2.27223404e-006)
	o57.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o57.Velocity = Vector3.new(0.000777417503, 9.27956426e-005, -0.00743345637)
	o57.Anchored = true
	o57.CanCollide = false
	o57.FormFactor = Enum.FormFactor.Plate
	o57.Size = Vector3.new(1, 2, 8)
	o57.CFrame = CFrame.new(113.818176, 4.40000582, 13.8115101, 0.999999762, 3.96579551e-008, 0, -3.97106952e-008, 1, 0, 0, 0, 1)
	o57.BackSurface = Enum.SurfaceType.Weld
	o57.BottomSurface = Enum.SurfaceType.Weld
	o57.FrontSurface = Enum.SurfaceType.Weld
	o57.LeftSurface = Enum.SurfaceType.Weld
	o57.RightSurface = Enum.SurfaceType.Weld
	o57.TopSurface = Enum.SurfaceType.Weld
	o57.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o58.Parent = o57
	o59.Parent = o1
	o59.BrickColor = BrickColor.new("Institutional white")
	o59.Position = Vector3.new(113.818176, 3.80000734, 18.3115101)
	o59.Rotation = Vector3.new(-0, 0, -2.27223404e-006)
	o59.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o59.Velocity = Vector3.new(0.00204589404, -0.000567637384, -0.00752151385)
	o59.Anchored = true
	o59.FormFactor = Enum.FormFactor.Plate
	o59.Size = Vector3.new(1, 0.800000012, 1)
	o59.CFrame = CFrame.new(113.818176, 3.80000734, 18.3115101, 0.999999762, 3.96579551e-008, 0, -3.97106952e-008, 1, 0, 0, 0, 1)
	o59.BackSurface = Enum.SurfaceType.Weld
	o59.BottomSurface = Enum.SurfaceType.Weld
	o59.FrontSurface = Enum.SurfaceType.Weld
	o59.LeftSurface = Enum.SurfaceType.Weld
	o59.RightSurface = Enum.SurfaceType.Weld
	o59.TopSurface = Enum.SurfaceType.Weld
	o59.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o60.Parent = o59
	o61.Parent = o1
	o61.BrickColor = BrickColor.new("Institutional white")
	o61.Position = Vector3.new(105.317894, 8.40000725, 18.3115101)
	o61.Rotation = Vector3.new(-0, 0, -2.21330401e-006)
	o61.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o61.Velocity = Vector3.new(0.00237834454, 4.6692905e-005, -0.00436840346)
	o61.Anchored = true
	o61.CanCollide = false
	o61.FormFactor = Enum.FormFactor.Plate
	o61.Size = Vector3.new(14, 0.400000006, 1)
	o61.CFrame = CFrame.new(105.317894, 8.40000725, 18.3115101, 0.999999762, 3.86294303e-008, 0, -3.86821704e-008, 1, 0, 0, 0, 1)
	o61.BackSurface = Enum.SurfaceType.Weld
	o61.BottomSurface = Enum.SurfaceType.Weld
	o61.FrontSurface = Enum.SurfaceType.Weld
	o61.LeftSurface = Enum.SurfaceType.Weld
	o61.RightSurface = Enum.SurfaceType.Weld
	o61.TopSurface = Enum.SurfaceType.Weld
	o61.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o62.Parent = o61
	o63.Parent = o1
	o63.BrickColor = BrickColor.new("Institutional white")
	o63.Position = Vector3.new(97.8181839, 5.79500866, 9.31151104)
	o63.Rotation = Vector3.new(-0, 0, -2.36894834e-006)
	o63.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o63.Velocity = Vector3.new(-0.000433602603, 0.00190957636, -0.00256440602)
	o63.Anchored = true
	o63.CanCollide = false
	o63.FormFactor = Enum.FormFactor.Plate
	o63.Size = Vector3.new(1, 4.80999994, 1)
	o63.CFrame = CFrame.new(97.8181839, 5.79500866, 9.31151104, 1, 4.13459489e-008, 0, -4.13459489e-008, 1, 0, 0, 0, 1)
	o63.BottomSurface = Enum.SurfaceType.Weld
	o63.LeftSurface = Enum.SurfaceType.Weld
	o63.RightSurface = Enum.SurfaceType.Weld
	o63.TopSurface = Enum.SurfaceType.Weld
	o63.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o64.Parent = o1
	o64.BrickColor = BrickColor.new("Institutional white")
	o64.Position = Vector3.new(97.8178101, 7.00000858, 18.3115101)
	o64.Rotation = Vector3.new(-0, 0, -2.14529973e-006)
	o64.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o64.Velocity = Vector3.new(0.00227716402, 0.00058873737, -0.00238744705)
	o64.Anchored = true
	o64.CanCollide = false
	o64.FormFactor = Enum.FormFactor.Plate
	o64.Size = Vector3.new(1, 2.4000001, 1)
	o64.CFrame = CFrame.new(97.8178101, 7.00000858, 18.3115101, 0.999999762, 3.74425326e-008, 0, -3.74952727e-008, 1, 0, 0, 0, 1)
	o64.BottomSurface = Enum.SurfaceType.Weld
	o64.LeftSurface = Enum.SurfaceType.Weld
	o64.RightSurface = Enum.SurfaceType.Weld
	o64.TopSurface = Enum.SurfaceType.Weld
	o64.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o65.Parent = o1
	o65.BrickColor = BrickColor.new("Institutional white")
	o65.Position = Vector3.new(113.418167, 2.40000749, 13.8115101)
	o65.Rotation = Vector3.new(-0, 0, -2.27223404e-006)
	o65.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o65.Velocity = Vector3.new(0.000632874086, 0.000121704477, -0.0076103732)
	o65.Anchored = true
	o65.FormFactor = Enum.FormFactor.Plate
	o65.Size = Vector3.new(1.80000007, 1.20000005, 10)
	o65.CFrame = CFrame.new(113.418167, 2.40000749, 13.8115101, 0.999999762, 3.96579551e-008, 0, -3.97106952e-008, 1, 0, 0, 0, 1)
	o65.BackSurface = Enum.SurfaceType.Weld
	o65.BottomSurface = Enum.SurfaceType.Weld
	o65.FrontSurface = Enum.SurfaceType.Weld
	o65.LeftSurface = Enum.SurfaceType.Weld
	o65.RightSurface = Enum.SurfaceType.Weld
	o65.TopSurface = Enum.SurfaceType.Weld
	o65.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o66.Parent = o65
	o67.Parent = o1
	o67.BrickColor = BrickColor.new("Really red")
	o67.Position = Vector3.new(113.817245, 4.80000687, 18.3115101)
	o67.Rotation = Vector3.new(-0, 0, -3.17145691e-006)
	o67.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o67.Velocity = Vector3.new(0.00211816584, -0.000567570096, -0.0073744799)
	o67.Anchored = true
	o67.FormFactor = Enum.FormFactor.Plate
	o67.Size = Vector3.new(1, 1.20000005, 1)
	o67.CFrame = CFrame.new(113.817245, 4.80000687, 18.3115101, 1, 5.53523627e-008, 0, -5.53523627e-008, 1, 0, 0, 0, 1)
	o67.BackSurface = Enum.SurfaceType.Weld
	o67.BottomSurface = Enum.SurfaceType.Weld
	o67.FrontSurface = Enum.SurfaceType.Weld
	o67.LeftSurface = Enum.SurfaceType.Weld
	o67.RightSurface = Enum.SurfaceType.Weld
	o67.TopSurface = Enum.SurfaceType.Weld
	o67.Color = Color3.new(1, 0, 0)
	o68.Parent = o67
	o69.Parent = o1
	o69.BrickColor = BrickColor.new("Institutional white")
	o69.Position = Vector3.new(112.817894, 8.40000725, 13.8115139)
	o69.Rotation = Vector3.new(-0, 0, -2.21330401e-006)
	o69.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o69.Velocity = Vector3.new(0.00106650498, 0.000165087578, -0.00655480288)
	o69.Anchored = true
	o69.CanCollide = false
	o69.FormFactor = Enum.FormFactor.Plate
	o69.Size = Vector3.new(1, 0.400000006, 10)
	o69.CFrame = CFrame.new(112.817894, 8.40000725, 13.8115139, 0.999999762, 3.86294303e-008, 0, -3.86821704e-008, 1, 0, 0, 0, 1)
	o69.BackSurface = Enum.SurfaceType.Weld
	o69.BottomSurface = Enum.SurfaceType.Weld
	o69.FrontSurface = Enum.SurfaceType.Weld
	o69.LeftSurface = Enum.SurfaceType.Weld
	o69.RightSurface = Enum.SurfaceType.Weld
	o69.TopSurface = Enum.SurfaceType.Weld
	o69.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o70.Parent = o69
	o71.Parent = o1
	o71.BrickColor = BrickColor.new("Really black")
	o71.Position = Vector3.new(92.2181854, 3.8000083, 13.8115101)
	o71.Rotation = Vector3.new(-0, 0, -2.2601489e-006)
	o71.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o71.Velocity = Vector3.new(0.0007340546, 0.00165386556, -0.00122468593)
	o71.Anchored = true
	o71.FormFactor = Enum.FormFactor.Custom
	o71.Size = Vector3.new(0.200000003, 0.800000012, 6)
	o71.CFrame = CFrame.new(92.2181854, 3.8000083, 13.8115101, 0.999997854, 3.94469524e-008, 0, -3.99216233e-008, 1, 0, 0, 0, 1)
	o71.BackSurface = Enum.SurfaceType.Weld
	o71.BottomSurface = Enum.SurfaceType.Weld
	o71.FrontSurface = Enum.SurfaceType.Weld
	o71.LeftSurface = Enum.SurfaceType.Weld
	o71.RightSurface = Enum.SurfaceType.Weld
	o71.TopSurface = Enum.SurfaceType.Weld
	o71.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	o72.Parent = o71
	o73.Name = "Head"
	o73.Parent = o1
	o73.Material = Enum.Material.SmoothPlastic
	o73.BrickColor = BrickColor.new("Institutional white")
	o73.Position = Vector3.new(99.207077, 7.026577, 15.2047167)
	o73.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
	o73.Anchored = true
	o73.FormFactor = Enum.FormFactor.Symmetric
	o73.Size = Vector3.new(2, 1, 1)
	o73.CFrame = CFrame.new(99.207077, 7.026577, 15.2047167, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
	o73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	o73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	o73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	o73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	o73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	o73.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	o73.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o74.Parent = o73
	o74.Scale = Vector3.new(1.25, 1.25, 1.25)
	o75.Name = "face"
	o75.Parent = o73
	o75.Texture = "rbxasset://textures/face.png"
	o76.Parent = o1
	o76.BrickColor = BrickColor.new("Institutional white")
	o76.Position = Vector3.new(99.6954269, 5.81500673, 9.31151104)
	o76.Rotation = Vector3.new(-0, 0, -8.82515178e-006)
	o76.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o76.Velocity = Vector3.new(-0.000432157307, 0.00177390513, -0.00310872309)
	o76.Anchored = true
	o76.CanCollide = false
	o76.FormFactor = Enum.FormFactor.Plate
	o76.Size = Vector3.new(2.76000023, 4.82999992, 1)
	o76.CFrame = CFrame.new(99.6954269, 5.81500673, 9.31151104, 1, 1.54027958e-007, 0, -1.54027958e-007, 1, 0, 0, 0, 1)
	o76.BottomSurface = Enum.SurfaceType.Weld
	o76.LeftSurface = Enum.SurfaceType.Weld
	o76.RightSurface = Enum.SurfaceType.Weld
	o76.TopSurface = Enum.SurfaceType.Weld
	o76.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o77.Parent = o1
	o77.BrickColor = BrickColor.new("Institutional white")
	o77.Position = Vector3.new(100.909996, 5.80000877, 14.2915134)
	o77.Rotation = Vector3.new(-0, 0, -7.89941078e-006)
	o77.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
	o77.Velocity = Vector3.new(0.0010185279, 0.000955246738, -0.00346499542)
	o77.Anchored = true
	o77.FormFactor = Enum.FormFactor.Plate
	o77.Size = Vector3.new(0.200000003, 4.80000019, 9.0199995)
	o77.CFrame = CFrame.new(100.909996, 5.80000877, 14.2915134, 1, 1.37870728e-007, 0, -1.37870728e-007, 1, 0, 0, 0, 1)
	o77.BackSurface = Enum.SurfaceType.Weld
	o77.BottomSurface = Enum.SurfaceType.Weld
	o77.FrontSurface = Enum.SurfaceType.Weld
	o77.LeftSurface = Enum.SurfaceType.Weld
	o77.RightSurface = Enum.SurfaceType.Weld
	o77.TopSurface = Enum.SurfaceType.Weld
	o77.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o78.Parent = o77
	o79.Name = "Head"
	o79.Parent = o1
	o79.Material = Enum.Material.SmoothPlastic
	o79.BrickColor = BrickColor.new("Institutional white")
	o79.Position = Vector3.new(103.10894, 7.49666739, 15.2047167)
	o79.Rotation = Vector3.new(-1.53054156e-008, -0.95580709, -1.83469444e-006)
	o79.Anchored = true
	o79.FormFactor = Enum.FormFactor.Symmetric
	o79.Size = Vector3.new(2, 1, 1)
	o79.CFrame = CFrame.new(103.10894, 7.49666739, 15.2047167, 0.999860883, 3.20170024e-008, -0.0166812073, -3.20170024e-008, 1, 2.67092765e-010, 0.0166812055, 2.67026595e-010, 0.999860942)
	o79.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	o79.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	o79.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	o79.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	o79.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	o79.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	o79.Color = Color3.new(0.972549, 0.972549, 0.972549)
	o80.Parent = o79
	o80.Scale = Vector3.new(1.25, 1.25, 1.25)
	o81.Name = "face"
	o81.Parent = o79
	o81.Texture = "rbxasset://textures/face.png"
	o82.Name = "Handle"
	o82.Parent = o1
	o82.Material = Enum.Material.SmoothPlastic
	o82.Position = Vector3.new(103.10894, 7.34666729, 15.2047167)
	o82.Rotation = Vector3.new(-1.53054156e-008, -0.95580709, -1.83469444e-006)
	o82.Anchored = true
	o82.CanCollide = false
	o82.FormFactor = Enum.FormFactor.Symmetric
	o82.Size = Vector3.new(2, 2, 2)
	o82.CFrame = CFrame.new(103.10894, 7.34666729, 15.2047167, 0.999860883, 3.20170024e-008, -0.0166812073, -3.20170024e-008, 1, 2.67092765e-010, 0.0166812055, 2.67026595e-010, 0.999860942)
	o82.BottomSurface = Enum.SurfaceType.Smooth
	o82.TopSurface = Enum.SurfaceType.Smooth
	o83.Parent = o82
	o83.MeshId = "http://www.roblox.com/asset/?id=15393031"
	o83.TextureId = "http://www.roblox.com/asset/?id=15393013"
	o83.MeshType = Enum.MeshType.FileMesh
	o84.Parent = o1
	o84.NameOcclusion = Enum.NameOcclusion.NoOcclusion
	o84.RightLeg = o94
	o84.LeftLeg = o96
	o84.Torso = o87
	o84.Health = 0
	o84.MaxHealth = 0
	o85.Name = "TPPART"
	o85.Parent = o1
	o85.Transparency = 1
	o85.Position = Vector3.new(104.155182, 4.24109221, 12.6003485)
	o85.Rotation = Vector3.new(-0, 0, -3.5910773e-006)
	o85.Anchored = true
	o85.CanCollide = false
	o85.Size = Vector3.new(4, 1, 2)
	o85.CFrame = CFrame.new(104.155182, 4.24109221, 12.6003485, 1, 6.26761221e-008, 0, -6.26761221e-008, 1, 0, 0, 0, 1)
	o86.Name = "TPPART2"
	o86.Parent = o1
	o86.Transparency = 1
	o86.Position = Vector3.new(104.155182, 5.40188599, 6.32408237)
	o86.Rotation = Vector3.new(-0, 0, -3.5910773e-006)
	o86.Anchored = true
	o86.CanCollide = false
	o86.Size = Vector3.new(4, 1, 2)
	o86.CFrame = CFrame.new(104.155182, 5.40188599, 6.32408237, 1, 6.26761221e-008, 0, -6.26761221e-008, 1, 0, 0, 0, 1)
	o87.Name = "Torso"
	o87.Parent = o1
	o87.Material = Enum.Material.SmoothPlastic
	o87.BrickColor = BrickColor.new("Navy blue")
	o87.Position = Vector3.new(99.207077, 5.526577, 15.2047167)
	o87.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
	o87.Anchored = true
	o87.FormFactor = Enum.FormFactor.Symmetric
	o87.Size = Vector3.new(2, 2, 1)
	o87.CFrame = CFrame.new(99.207077, 5.526577, 15.2047167, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
	o87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	o87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	o87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	o87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	o87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	o87.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	o87.Color = Color3.new(0, 0.12549, 0.376471)
	o88.Name = "roblox"
	o88.Parent = o87
	o89.Name = "Right Shoulder"
	o89.Parent = o87
	o89.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
	o89.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
	o89.Part0 = o87
	o89.Part1 = o95
	o89.DesiredAngle = -0.062025275081396
	o89.MaxVelocity = 0.15000000596046
	o90.Name = "Left Shoulder"
	o90.Parent = o87
	o90.C0 = CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
	o90.C1 = CFrame.new(0.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
	o90.Part0 = o87
	o90.Part1 = o97
	o90.DesiredAngle = -0.062025275081396
	o90.MaxVelocity = 0.15000000596046
	o91.Name = "Right Hip"
	o91.Parent = o87
	o91.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
	o91.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
	o91.Part0 = o87
	o91.Part1 = o94
	o91.DesiredAngle = 0.062025275081396
	o91.MaxVelocity = 0.10000000149012
	o92.Name = "Left Hip"
	o92.Parent = o87
	o92.C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
	o92.C1 = CFrame.new(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
	o92.Part0 = o87
	o92.Part1 = o96
	o92.DesiredAngle = 0.062025275081396
	o92.MaxVelocity = 0.10000000149012
	o93.Name = "Neck"
	o93.Parent = o87
	o93.C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
	o93.C1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
	o93.Part0 = o87
	o93.Part1 = o73
	o93.MaxVelocity = 0.10000000149012
	o94.Name = "Right Leg"
	o94.Parent = o1
	o94.Material = Enum.Material.SmoothPlastic
	o94.BrickColor = BrickColor.new("Navy blue")
	o94.Position = Vector3.new(99.215416, 3.526577, 14.7047863)
	o94.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
	o94.Anchored = true
	o94.CanCollide = false
	o94.FormFactor = Enum.FormFactor.Symmetric
	o94.Size = Vector3.new(1, 2, 1)
	o94.CFrame = CFrame.new(99.215416, 3.526577, 14.7047863, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
	o94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	o94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	o94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	o94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	o94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	o94.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	o94.Color = Color3.new(0, 0.12549, 0.376471)
	o95.Name = "Right Arm"
	o95.Parent = o1
	o95.Material = Enum.Material.SmoothPlastic
	o95.BrickColor = BrickColor.new("Maroon")
	o95.Position = Vector3.new(99.2321014, 5.526577, 13.7049236)
	o95.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
	o95.Anchored = true
	o95.CanCollide = false
	o95.FormFactor = Enum.FormFactor.Symmetric
	o95.Size = Vector3.new(1, 2, 1)
	o95.CFrame = CFrame.new(99.2321014, 5.526577, 13.7049236, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
	o95.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	o95.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	o95.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	o95.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	o95.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	o95.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	o95.Color = Color3.new(0.458824, 0, 0)
	o96.Name = "Left Leg"
	o96.Parent = o1
	o96.Material = Enum.Material.SmoothPlastic
	o96.BrickColor = BrickColor.new("Navy blue")
	o96.Position = Vector3.new(99.1987381, 3.526577, 15.7046452)
	o96.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
	o96.Anchored = true
	o96.CanCollide = false
	o96.FormFactor = Enum.FormFactor.Symmetric
	o96.Size = Vector3.new(1, 2, 1)
	o96.CFrame = CFrame.new(99.1987381, 3.526577, 15.7046452, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
	o96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	o96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	o96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	o96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	o96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	o96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	o96.Color = Color3.new(0, 0.12549, 0.376471)
	o97.Name = "Left Arm"
	o97.Parent = o1
	o97.Material = Enum.Material.SmoothPlastic
	o97.BrickColor = BrickColor.new("Maroon")
	o97.Position = Vector3.new(99.1820602, 5.526577, 16.7045078)
	o97.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
	o97.Anchored = true
	o97.CanCollide = false
	o97.FormFactor = Enum.FormFactor.Symmetric
	o97.Size = Vector3.new(1, 2, 1)
	o97.CFrame = CFrame.new(99.1820602, 5.526577, 16.7045078, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
	o97.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	o97.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	o97.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	o97.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	o97.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	o97.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	o97.Color = Color3.new(0.458824, 0, 0)
	o98.Name = "Torso"
	o98.Parent = o1
	o98.Material = Enum.Material.SmoothPlastic
	o98.BrickColor = BrickColor.new("Navy blue")
	o98.Position = Vector3.new(103.10894, 5.99666739, 15.2047167)
	o98.Rotation = Vector3.new(-1.53054156e-008, -0.95580709, -1.83469444e-006)
	o98.Anchored = true
	o98.FormFactor = Enum.FormFactor.Symmetric
	o98.Size = Vector3.new(2, 2, 1)
	o98.CFrame = CFrame.new(103.10894, 5.99666739, 15.2047167, 0.999860883, 3.20170024e-008, -0.0166812073, -3.20170024e-008, 1, 2.67092765e-010, 0.0166812055, 2.67026595e-010, 0.999860942)
	o98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	o98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	o98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	o98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	o98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	o98.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	o98.Color = Color3.new(0, 0.12549, 0.376471)
	o99.Name = "roblox"
	o99.Parent = o98
	o100.Name = "Right Hip"
	o100.Parent = o98
	o100.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
	o100.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
	o100.Part0 = o98
	o100.Part1 = o103
	o100.DesiredAngle = 0.062025275081396
	o100.MaxVelocity = 0.10000000149012
	o101.Name = "Left Hip"
	o101.Parent = o98
	o101.C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
	o101.C1 = CFrame.new(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
	o101.Part0 = o98
	o101.Part1 = o105
	o101.DesiredAngle = 0.062025275081396
	o101.MaxVelocity = 0.10000000149012
	o102.Name = "Neck"
	o102.Parent = o98
	o102.C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
	o102.C1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
	o102.Part0 = o98
	o102.Part1 = o79
	o102.MaxVelocity = 0.10000000149012
	o103.Name = "Right Leg"
	o103.Parent = o1
	o103.Material = Enum.Material.SmoothPlastic
	o103.BrickColor = BrickColor.new("Really black")
	o103.Position = Vector3.new(103.608864, 3.99666739, 15.2130556)
	o103.Rotation = Vector3.new(-1.53054156e-008, -0.95580709, -1.83469444e-006)
	o103.Anchored = true
	o103.CanCollide = false
	o103.FormFactor = Enum.FormFactor.Symmetric
	o103.Size = Vector3.new(1, 2, 1)
	o103.CFrame = CFrame.new(103.608864, 3.99666739, 15.2130556, 0.999860883, 3.20170024e-008, -0.0166812073, -3.20170024e-008, 1, 2.67092765e-010, 0.0166812055, 2.67026595e-010, 0.999860942)
	o103.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	o103.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	o103.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	o103.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	o103.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	o103.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	o103.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	o104.Name = "Right Arm"
	o104.Parent = o1
	o104.Material = Enum.Material.SmoothPlastic
	o104.BrickColor = BrickColor.new("Maroon")
	o104.Position = Vector3.new(104.615349, 5.89646101, 14.8330393)
	o104.Rotation = Vector3.new(45.0039597, -0.675833881, 0.675880313)
	o104.Anchored = true
	o104.CanCollide = false
	o104.FormFactor = Enum.FormFactor.Symmetric
	o104.Size = Vector3.new(1, 2, 1)
	o104.CFrame = CFrame.new(104.615349, 5.89646101, 14.8330393, 0.999860883, -0.0117952423, -0.0117952526, 0, 0.707107067, -0.707106411, 0.0166809987, 0.707008064, 0.707008719)
	o104.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	o104.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	o104.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	o104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	o104.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	o104.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	o104.Color = Color3.new(0.458824, 0, 0)
	o105.Name = "Left Leg"
	o105.Parent = o1
	o105.Material = Enum.Material.SmoothPlastic
	o105.BrickColor = BrickColor.new("Really black")
	o105.Position = Vector3.new(102.609009, 3.99666739, 15.1963739)
	o105.Rotation = Vector3.new(-1.53054156e-008, -0.95580709, -1.83469444e-006)
	o105.Anchored = true
	o105.CanCollide = false
	o105.FormFactor = Enum.FormFactor.Symmetric
	o105.Size = Vector3.new(1, 2, 1)
	o105.CFrame = CFrame.new(102.609009, 3.99666739, 15.1963739, 0.999860883, 3.20170024e-008, -0.0166812073, -3.20170024e-008, 1, 2.67092765e-010, 0.0166812055, 2.67026595e-010, 0.999860942)
	o105.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	o105.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	o105.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	o105.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	o105.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	o105.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	o105.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	o106.Name = "Left Arm"
	o106.Parent = o1
	o106.Material = Enum.Material.SmoothPlastic
	o106.BrickColor = BrickColor.new("Maroon")
	o106.Position = Vector3.new(101.617271, 5.96075201, 14.6924496)
	o106.Rotation = Vector3.new(45.0039597, -0.675833881, 0.675880313)
	o106.Anchored = true
	o106.CanCollide = false
	o106.FormFactor = Enum.FormFactor.Symmetric
	o106.Size = Vector3.new(1, 2, 1)
	o106.CFrame = CFrame.new(101.617271, 5.96075201, 14.6924496, 0.999860883, -0.0117952423, -0.0117952526, 0, 0.707107067, -0.707106411, 0.0166809987, 0.707008064, 0.707008719)
	o106.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	o106.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	o106.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	o106.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	o106.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	o106.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	o106.Color = Color3.new(0.458824, 0, 0)
	o107.Parent = o1
	o107.Position = Vector3.new(110.917458, 1.50000954, 18.4564953)
	o107.Rotation = Vector3.new(-90, 1.20620803e-006, -180)
	o107.Anchored = true
	o107.FormFactor = Enum.FormFactor.Symmetric
	o107.Size = Vector3.new(2.39999986, 1.31000006, 2.39999986)
	o107.CFrame = CFrame.new(110.917458, 1.50000954, 18.4564953, -1, 2.98044895e-008, 2.10523012e-008, 2.10523012e-008, 7.54615499e-008, 1, 2.9804486e-008, 1, -7.54615499e-008)
	o108.Parent = o107
	o109.Parent = o1
	o109.BrickColor = BrickColor.new("Really black")
	o109.Position = Vector3.new(110.917442, 1.50002527, 9.1665411)
	o109.Rotation = Vector3.new(-90, 6.45824184e-006, 2.56150702e-006)
	o109.Anchored = true
	o109.FormFactor = Enum.FormFactor.Symmetric
	o109.Size = Vector3.new(3, 1.20000005, 3)
	o109.CFrame = CFrame.new(110.917442, 1.50002527, 9.1665411, 1, -4.47067308e-008, 1.12717586e-007, -1.12717586e-007, -5.51334445e-009, 1, -4.47067308e-008, -1, -5.51334933e-009)
	o109.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	o110.Parent = o109
	o111.Parent = o1
	o111.BrickColor = BrickColor.new("Really black")
	o111.Position = Vector3.new(110.917458, 1.50000954, 18.4564953)
	o111.Rotation = Vector3.new(-90, 1.20620803e-006, -180)
	o111.Anchored = true
	o111.FormFactor = Enum.FormFactor.Symmetric
	o111.Size = Vector3.new(3, 1.20000005, 3)
	o111.CFrame = CFrame.new(110.917458, 1.50000954, 18.4564953, -1, 2.98044895e-008, 2.10523012e-008, 2.10523012e-008, 7.54615499e-008, 1, 2.9804486e-008, 1, -7.54615499e-008)
	o111.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	o112.Parent = o111
	o113.Parent = o1
	o113.Position = Vector3.new(95.3486252, 1.50002623, 9.1665411)
	o113.Rotation = Vector3.new(-90, 6.45824184e-006, 2.56150702e-006)
	o113.Anchored = true
	o113.FormFactor = Enum.FormFactor.Symmetric
	o113.Size = Vector3.new(2.39999986, 1.31000006, 2.39999986)
	o113.CFrame = CFrame.new(95.3486252, 1.50002623, 9.1665411, 1, -4.47067308e-008, 1.12717586e-007, -1.12717586e-007, -5.51334445e-009, 1, -4.47067308e-008, -1, -5.51334933e-009)
	o114.Parent = o113
	o115.Parent = o1
	o115.BrickColor = BrickColor.new("Really black")
	o115.Position = Vector3.new(95.3486252, 1.50002623, 9.1665411)
	o115.Rotation = Vector3.new(-90, 6.45824184e-006, 2.56150702e-006)
	o115.Anchored = true
	o115.FormFactor = Enum.FormFactor.Symmetric
	o115.Size = Vector3.new(3, 1.20000005, 3)
	o115.CFrame = CFrame.new(95.3486252, 1.50002623, 9.1665411, 1, -4.47067308e-008, 1.12717586e-007, -1.12717586e-007, -5.51334445e-009, 1, -4.47067308e-008, -1, -5.51334933e-009)
	o115.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	o116.Parent = o115
	o117.Parent = o1
	o117.BrickColor = BrickColor.new("Really black")
	o117.Position = Vector3.new(95.3486252, 1.50001001, 18.4564877)
	o117.Rotation = Vector3.new(-90, 1.20620803e-006, -180)
	o117.Anchored = true
	o117.FormFactor = Enum.FormFactor.Symmetric
	o117.Size = Vector3.new(3, 1.20000005, 3)
	o117.CFrame = CFrame.new(95.3486252, 1.50001001, 18.4564877, -1, 2.98044895e-008, 2.10523012e-008, 2.10523012e-008, 7.54615499e-008, 1, 2.9804486e-008, 1, -7.54615499e-008)
	o117.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	o118.Parent = o117
	o119.Parent = o1
	o119.Position = Vector3.new(110.917442, 1.50002527, 9.1665411)
	o119.Rotation = Vector3.new(-90, 6.45824184e-006, 2.56150702e-006)
	o119.Anchored = true
	o119.FormFactor = Enum.FormFactor.Symmetric
	o119.Size = Vector3.new(2.39999986, 1.31000006, 2.39999986)
	o119.CFrame = CFrame.new(110.917442, 1.50002527, 9.1665411, 1, -4.47067308e-008, 1.12717586e-007, -1.12717586e-007, -5.51334445e-009, 1, -4.47067308e-008, -1, -5.51334933e-009)
	o120.Parent = o119
	o121.Name = "Handle"
	o121.Parent = o1
	o121.Material = Enum.Material.SmoothPlastic
	o121.Position = Vector3.new(99.207077, 6.8765769, 15.2047167)
	o121.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
	o121.Anchored = true
	o121.CanCollide = false
	o121.FormFactor = Enum.FormFactor.Symmetric
	o121.Size = Vector3.new(2, 2, 2)
	o121.CFrame = CFrame.new(99.207077, 6.8765769, 15.2047167, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
	o121.BottomSurface = Enum.SurfaceType.Smooth
	o121.TopSurface = Enum.SurfaceType.Smooth
	o122.Parent = o121
	o122.MeshId = "http://www.roblox.com/asset/?id=15393031"
	o122.TextureId = "http://www.roblox.com/asset/?id=15393013"
	o122.MeshType = Enum.MeshType.FileMesh
	o123.Name = "RPPART"
	o123.Parent = o1
	o123.Transparency = 1
	o123.Position = Vector3.new(103.454132, 5.33460093, 13.0707426)
	o123.Rotation = Vector3.new(-90, 0, -0)
	o123.Anchored = true
	o123.CanCollide = false
	o123.Size = Vector3.new(4, 1, 2)
	o123.CFrame = CFrame.new(103.454132, 5.33460093, 13.0707426, 1, 0, 0, 0, 0, 1, 0, -1, 0)
	o124.Parent = o12
	o124.Texture = "http://roblox.com/asset/?id=112031763"
	function MoveY(model, Position)
		for _,part in pairs (model:GetChildren()) do
			if part.ClassName == "Part" then
				part.CFrame = part.CFrame + Vector3.new(0,Position,0)
			end
		end
	end
	function MoveX(model, Position)
		for _,part in pairs (model:GetChildren()) do
			if part.ClassName == "Part" then
				part.CFrame = part.CFrame + Vector3.new(Position,0,0)
			end
		end
	end
	function MoveSpawn(model, PLAYERPOS)
		for _,part in pairs (model:GetChildren()) do
			if part.ClassName == "Part" then
				part.CFrame = part.CFrame + PLAYERPOS + Vector3.new(50,-2.7,-5)
			end
		end
	end
	function MoveZ(model, Position)
		for _,part in pairs (model:GetChildren()) do
			if part.ClassName == "Part" then
				part.CFrame = part.CFrame + Vector3.new(0,0,Position)
			end
		end
	end
	function MoveZPart(Part, Position)
		Part.CFrame = Part.CFrame + Vector3.new(0,0,Position)
	end
	function MoveXPart(Part, Position)
		Part.CFrame = Part.CFrame + Vector3.new(Position,0,0)
	end
	game.Players[Victim].Character.HumanoidRootPart.Anchored = true
	OMGCREEPY = Instance.new("Sound")
	OMGCREEPY.Parent = o1
	OMGCREEPY.Volume = 10
	OMGCREEPY.SoundId = "rbxassetid://177775134"
	for i,v in pairs (o1:GetChildren()) do
		if v:IsA("Part") then
			v.Material = "SmoothPlastic"
			v.BackSurface = "SmoothNoOutlines"
			v.FrontSurface = "SmoothNoOutlines"
			v.BottomSurface = "SmoothNoOutlines"
			v.LeftSurface = "SmoothNoOutlines"
			v.RightSurface = "SmoothNoOutlines"
			v.TopSurface = "SmoothNoOutlines"
		end
	end
	OMGCREEPY:Play()
	o21:Play()
	MoveSpawn(o1,game.Players[Victim].Character.HumanoidRootPart.Position)
	for i=1,51 do
		MoveX(o1,-3)
		wait(.05)
	end
	wait(.5)
	MoveZPart(o12,-1)
	wait(.2)
	for i=1,6 do
		MoveXPart(o12,1)
		wait(.1)
	end
	wait(.5)
	game.Players[Victim].Character.HumanoidRootPart.CFrame = o86.CFrame
	wait(.5)
	game.Players[Victim].Character.HumanoidRootPart.CFrame = o85.CFrame
	wait(.5)
	MoveZPart(o12,1)
	wait(.2)

	for i=1,6 do
		MoveXPart(o12,-1)
		wait(.1)
	end
	for i=1,50 do
		MoveX(o1,-3)
		game.Players[Victim].Character.HumanoidRootPart.CFrame = o85.CFrame
		wait(.05)
	end
	game.Players[Victim].Character.Head.face.Texture = "rbxassetid://629925029"
	game.Players[Victim].Character.HumanoidRootPart.CFrame = o123.CFrame
	SCREAM = Instance.new("Sound")
	SCREAM.Parent = game.Players[Victim].Character.Head
	SCREAM.SoundId = "rbxassetid://138167455"
	SCREAM:Play()
	wait(2.5)
	game.Players[Victim].Character.Head.BrickColor = BrickColor.new("Maroon")
	MoveZPart(o12,-1)
	wait(.2)
	for i=1,6 do
		MoveXPart(o12,1)
		wait(.1)
	end
	wait(.5)
	game.Players[Victim].Character.HumanoidRootPart.CFrame = o86.CFrame
	wait(.5)
	MoveZPart(o12,1)
	wait(.2)
	for i=1,6 do
		MoveXPart(o12,-1)
		wait(.1)
	end
	game.Players[Victim].Character.Humanoid.Health = 0
	player = game.Players[Victim]
	char = player.Character
	char.Archivable = true
	local rg = char:Clone()
	rg.HumanoidRootPart:Destroy()
	rg.Name = ""
	rg.Humanoid.MaxHealth = 0
	for i, v in pairs(rg.Torso:GetChildren()) do
		if v:IsA("Motor6D") then
			v:Destroy()
		end
	end

	local n = Instance.new("Glue", rg.Torso)
	n.Name = "Neck"
	n.Part0 = rg.Torso
	n.Part1 = rg.Head
	n.C0 = CFrame.new(0, 1, 0)
	n.C1 = CFrame.new(0, -0.5, 0)

	local rs = Instance.new("Glue", rg.Torso)
	rs.Name = "Right Shoulder"
	rs.Part0 = rg.Torso
	rs.Part1 = rg["Right Arm"]
	rs.C0 = CFrame.new(1.5, 0.5, 0)
	rs.C1 = CFrame.new(0, 0.5, 0)
	local ls = Instance.new("Glue", rg.Torso)
	ls.Name = "Left Shoulder"
	ls.Part0 = rg.Torso
	ls.Part1 = rg["Left Arm"]
	ls.C0 = CFrame.new(-1.5, 0.5, 0)
	ls.C1 = CFrame.new(0, 0.5, 0)

	local rh = Instance.new("Glue", rg.Torso)
	rh.Name = "Right Hip"
	rh.Part0 = rg.Torso
	rh.Part1 = rg["Right Leg"]
	rh.C0 = CFrame.new(0.5, -1, 0)
	rh.C1 = CFrame.new(0, 1, 0)
	local lh = Instance.new("Glue", rg.Torso)
	lh.Name = "Left Hip"
	lh.Part0 = rg.Torso
	lh.Part1 = rg["Left Leg"]
	lh.C0 = CFrame.new(-0.5, -1, 0)
	lh.C1 = CFrame.new(0, 1, 0)
	char.Torso:Destroy()
	char.Head:Destroy()
	char["Left Leg"]:Destroy()
	char["Left Arm"]:Destroy()
	char["Right Leg"]:Destroy()
	char["Right Arm"]:Destroy()
	rg.Parent = game.Workspace
	rg.Head.BrickColor = BrickColor.new("Maroon")
	spawn(function() wait(5) rg:Destroy() end)
	function DEATH ()
		local OHHNELLY = Instance.new("Part")
		OHHNELLY.Parent = rg
		OHHNELLY.Anchored = false
		OHHNELLY.Material = Enum.Material.SmoothPlastic
		OHHNELLY.BrickColor = BrickColor.new("Maroon")
		OHHNELLY.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
		OHHNELLY.Position = rg.Head.Position
		OHHNELLY.Color = Color3.new(0.458824, 0, 0)
		OHHNELLY.BackSurface = Enum.SurfaceType.SmoothNoOutlines
		OHHNELLY.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
		OHHNELLY.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
		OHHNELLY.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
		OHHNELLY.RightSurface = Enum.SurfaceType.SmoothNoOutlines
		OHHNELLY.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	end
	for i=1,20 do
		DEATH()
		MoveX(o1,-3)
		wait(.05)
	end
	o1:Destroy()
end

local MainFrame = script.Parent
local Button = MainFrame.GetEm
local NameLabel = MainFrame.NameLabel

Button.MouseButton1Down:Connect(function()
	local plr
	local yay,nay = pcall(function()
		plr = game.Players:FindFirstChild(NameLabel.Text)
	end)
	if yay then
		if plr then
			if plr.Character then
				if plr.Character:FindFirstChild("Humanoid") then
					if plr.Character.Humanoid.Health > 0 then
						if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
							kidnap(plr)
						else
							NameLabel.Text = "Player isnt in R6!"
							wait(0.5)
							NameLabel.Text = ""
						end
					end
				end
			end
		end
	else
		NameLabel.Text = "Player doesnt exist!"
		wait(0.5)
		NameLabel.Text = ""
	end
end)
end))
for i,v in pairs(mas:GetChildren()) do
	v.Parent = owner.PlayerGui
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
