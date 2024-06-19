
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
Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
Weld2 = Instance.new("Weld")
Weld3 = Instance.new("Weld")
UnionOperation4 = Instance.new("UnionOperation")
Weld5 = Instance.new("Weld")
Sound6 = Instance.new("Sound")
Part7 = Instance.new("Part")
Weld8 = Instance.new("Weld")
Part9 = Instance.new("Part")
Weld10 = Instance.new("Weld")
Weld11 = Instance.new("Weld")
UnionOperation12 = Instance.new("UnionOperation")
Weld13 = Instance.new("Weld")
ManualWeld14 = Instance.new("ManualWeld")
Part15 = Instance.new("Part")
Weld16 = Instance.new("Weld")
Weld17 = Instance.new("Weld")
Part18 = Instance.new("Part")
ManualWeld19 = Instance.new("ManualWeld")
BodyPosition20 = Instance.new("BodyPosition")
BodyGyro21 = Instance.new("BodyGyro")
ManualWeld22 = Instance.new("ManualWeld")
Part23 = Instance.new("Part")
Weld24 = Instance.new("Weld")
ManualWeld25 = Instance.new("ManualWeld")
UnionOperation26 = Instance.new("UnionOperation")
Weld27 = Instance.new("Weld")
UnionOperation28 = Instance.new("UnionOperation")
Weld29 = Instance.new("Weld")
Part30 = Instance.new("Part")
Weld31 = Instance.new("Weld")
Weld32 = Instance.new("Weld")
UnionOperation33 = Instance.new("UnionOperation")
Weld34 = Instance.new("Weld")
ManualWeld35 = Instance.new("ManualWeld")
Part36 = Instance.new("Part")
Part37 = Instance.new("Part")
Weld38 = Instance.new("Weld")
ManualWeld39 = Instance.new("ManualWeld")
UnionOperation40 = Instance.new("UnionOperation")
Weld41 = Instance.new("Weld")
UnionOperation42 = Instance.new("UnionOperation")
Texture43 = Instance.new("Texture")
Texture44 = Instance.new("Texture")
Texture45 = Instance.new("Texture")
Texture46 = Instance.new("Texture")
ParticleEmitter47 = Instance.new("ParticleEmitter")
ManualWeld48 = Instance.new("ManualWeld")
Part49 = Instance.new("Part")
SurfaceGui50 = Instance.new("SurfaceGui")
Frame51 = Instance.new("Frame")
SurfaceLight52 = Instance.new("SurfaceLight")
Weld53 = Instance.new("Weld")
Part54 = Instance.new("Part")
SurfaceGui55 = Instance.new("SurfaceGui")
Frame56 = Instance.new("Frame")
SurfaceLight57 = Instance.new("SurfaceLight")
Weld58 = Instance.new("Weld")
Configuration59 = Instance.new("Configuration")
NumberValue60 = Instance.new("NumberValue")
NumberValue61 = Instance.new("NumberValue")
NumberValue62 = Instance.new("NumberValue")
NumberValue63 = Instance.new("NumberValue")
NumberValue64 = Instance.new("NumberValue")
Script65 = Instance.new("Script")
LocalScript66 = Instance.new("LocalScript")
ObjectValue67 = Instance.new("ObjectValue")
ModuleScript68 = Instance.new("ModuleScript")
UnionOperation69 = Instance.new("UnionOperation")
Texture70 = Instance.new("Texture")
Texture71 = Instance.new("Texture")
Texture72 = Instance.new("Texture")
Texture73 = Instance.new("Texture")
ParticleEmitter74 = Instance.new("ParticleEmitter")
UnionOperation75 = Instance.new("UnionOperation")
Texture76 = Instance.new("Texture")
Texture77 = Instance.new("Texture")
Texture78 = Instance.new("Texture")
Texture79 = Instance.new("Texture")
ParticleEmitter80 = Instance.new("ParticleEmitter")
ManualWeld81 = Instance.new("ManualWeld")
UnionOperation82 = Instance.new("UnionOperation")
Texture83 = Instance.new("Texture")
Texture84 = Instance.new("Texture")
Texture85 = Instance.new("Texture")
Texture86 = Instance.new("Texture")
ParticleEmitter87 = Instance.new("ParticleEmitter")
VehicleSeat88 = Instance.new("VehicleSeat")
Model0.Name = "Jeep"
Model0.Parent = mas
Part1.Name = "Thruster"
Part1.Parent = Model0
Part1.CFrame = CFrame.new(6.45530605, 0.50076282, -29.8437347, 1, 0.000128672531, -6.30665227e-08, -0.000128672531, 1, 7.736923e-05, 7.30218161e-08, -7.73692227e-05, 1)
Part1.Orientation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
Part1.Position = Vector3.new(6.455306053161621, 0.5007628202438354, -29.843734741210938)
Part1.Rotation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
Part1.Transparency = 1
Part1.Size = Vector3.new(1, 1, 2)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.CanCollide = false
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.FormFactor = Enum.FormFactor.Custom
Part1.formFactor = Enum.FormFactor.Custom
Weld2.Parent = Part1
Weld2.C0 = CFrame.new(-2.5, 0, -4, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld2.Part0 = Part18
Weld2.Part1 = Part1
Weld2.part1 = Part1
Weld3.Name = "WheelWeld"
Weld3.Parent = Part1
Weld3.C0 = CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld3.Part0 = Part1
Weld3.Part1 = UnionOperation82
Weld3.part1 = UnionOperation82
UnionOperation4.Name = "EngineBlock"
UnionOperation4.Parent = Model0
UnionOperation4.CFrame = CFrame.new(8.95546722, 1.7504797, -29.343832, 1, 0.000128672531, -6.30665227e-08, -0.000128672531, 1, 7.736923e-05, 7.30218161e-08, -7.73692227e-05, 1)
UnionOperation4.Orientation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
UnionOperation4.Position = Vector3.new(8.955467224121094, 1.7504796981811523, -29.34383201599121)
UnionOperation4.Rotation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
UnionOperation4.Color = Color3.new(0.972549, 0.972549, 0.972549)
UnionOperation4.Size = Vector3.new(5.000001907348633, 2.5000014305114746, 4.000000476837158)
UnionOperation4.UsePartColor = true
Weld5.Parent = UnionOperation4
Weld5.C0 = CFrame.new(0, 1.25, -3.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld5.Part0 = Part18
Weld5.Part1 = UnionOperation4
Weld5.part1 = UnionOperation4
Sound6.Name = "Running"
Sound6.Parent = UnionOperation4
Sound6.Looped = true
Sound6.SoundId = "http://www.roblox.com/asset/?id=391824568"
Sound6.Volume = 1
Part7.Parent = Model0
Part7.CFrame = CFrame.new(8.95527458, 0.250344425, -31.0937157, 1, 0.000128672531, -6.30665227e-08, -0.000128672531, 1, 7.736923e-05, 7.30218161e-08, -7.73692227e-05, 1)
Part7.Orientation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
Part7.Position = Vector3.new(8.95527458190918, 0.2503444254398346, -31.09371566772461)
Part7.Rotation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
Part7.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part7.Size = Vector3.new(5, 0.5, 0.5)
Part7.BottomSurface = Enum.SurfaceType.Smooth
Part7.BrickColor = BrickColor.new("Really black")
Part7.TopSurface = Enum.SurfaceType.Smooth
Part7.brickColor = BrickColor.new("Really black")
Part7.FormFactor = Enum.FormFactor.Custom
Part7.formFactor = Enum.FormFactor.Custom
Weld8.Parent = Part7
Weld8.C0 = CFrame.new(0, -0.25, -5.25, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld8.Part0 = Part18
Weld8.Part1 = Part7
Weld8.part1 = Part7
Part9.Name = "Thruster"
Part9.Parent = Model0
Part9.CFrame = CFrame.new(11.4553061, 0.500119448, -29.8437347, 1, 0.000128672531, -6.30665227e-08, -0.000128672531, 1, 7.736923e-05, 7.30218161e-08, -7.73692227e-05, 1)
Part9.Orientation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
Part9.Position = Vector3.new(11.455306053161621, 0.5001194477081299, -29.843734741210938)
Part9.Rotation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
Part9.Transparency = 1
Part9.Size = Vector3.new(1, 1, 2)
Part9.BottomSurface = Enum.SurfaceType.Smooth
Part9.CanCollide = false
Part9.TopSurface = Enum.SurfaceType.Smooth
Part9.FormFactor = Enum.FormFactor.Custom
Part9.formFactor = Enum.FormFactor.Custom
Weld10.Parent = Part9
Weld10.C0 = CFrame.new(2.5, 0, -4, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld10.Part0 = Part18
Weld10.Part1 = Part9
Weld10.part1 = Part9
Weld11.Name = "WheelWeld"
Weld11.Parent = Part9
Weld11.C0 = CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld11.Part0 = Part9
Weld11.Part1 = UnionOperation69
Weld11.part1 = UnionOperation69
UnionOperation12.Parent = Model0
UnionOperation12.CFrame = CFrame.new(11.2054672, 1.75075173, -22.093832, 1, 0.000128672531, -6.30665227e-08, -0.000128672531, 1, 7.736923e-05, 7.30218161e-08, -7.73692227e-05, 1)
UnionOperation12.Orientation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
UnionOperation12.Position = Vector3.new(11.205467224121094, 1.7507517337799072, -22.09383201599121)
UnionOperation12.Rotation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
UnionOperation12.Color = Color3.new(0.972549, 0.972549, 0.972549)
UnionOperation12.Size = Vector3.new(0.5000008344650269, 2.5000009536743164, 3.500000238418579)
UnionOperation12.UsePartColor = true
Weld13.Parent = UnionOperation12
Weld13.C0 = CFrame.new(2.25, 1.25000048, 3.75, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld13.Part0 = Part18
Weld13.Part1 = UnionOperation12
Weld13.part1 = UnionOperation12
ManualWeld14.Name = "Union-to-Part Strong Joint"
ManualWeld14.Parent = UnionOperation12
ManualWeld14.C0 = CFrame.new(-0.250000417, -1.25000048, -1.75000012, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld14.C1 = CFrame.new(2.00003052, -1.24999809, -3.25, 1.99786854e-11, 4.10487968e-13, -1, -3.67035682e-08, 1, -4.09731737e-13, 1, -3.67035682e-08, -1.99786854e-11)
ManualWeld14.Part0 = UnionOperation12
ManualWeld14.Part1 = Part36
ManualWeld14.part1 = Part36
Part15.Name = "Thruster"
Part15.Parent = Model0
Part15.CFrame = CFrame.new(11.4553061, 0.500699699, -22.3437347, 1, 0.000128672531, -6.30665227e-08, -0.000128672531, 1, 7.736923e-05, 7.30218161e-08, -7.73692227e-05, 1)
Part15.Orientation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
Part15.Position = Vector3.new(11.455306053161621, 0.5006996989250183, -22.343734741210938)
Part15.Rotation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
Part15.Transparency = 1
Part15.Size = Vector3.new(1, 1, 2)
Part15.BottomSurface = Enum.SurfaceType.Smooth
Part15.CanCollide = false
Part15.TopSurface = Enum.SurfaceType.Smooth
Part15.FormFactor = Enum.FormFactor.Custom
Part15.formFactor = Enum.FormFactor.Custom
Weld16.Parent = Part15
Weld16.C0 = CFrame.new(2.5, 0, 3.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld16.Part0 = Part18
Weld16.Part1 = Part15
Weld16.part1 = Part15
Weld17.Name = "WheelWeld"
Weld17.Parent = Part15
Weld17.C0 = CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld17.Part0 = Part15
Weld17.Part1 = UnionOperation75
Weld17.part1 = UnionOperation75
Part18.Name = "Chassis"
Part18.Parent = Model0
Part18.CFrame = CFrame.new(8.95530605, 0.500750601, -25.8437347, 1, 0.000128672531, -6.30665227e-08, -0.000128672531, 1, 7.736923e-05, 7.30218161e-08, -7.73692227e-05, 1)
Part18.Orientation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
Part18.Position = Vector3.new(8.955306053161621, 0.5007506012916565, -25.843734741210938)
Part18.Rotation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
Part18.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part18.Size = Vector3.new(4, 1, 10)
Part18.BottomSurface = Enum.SurfaceType.Smooth
Part18.BrickColor = BrickColor.new("Really black")
Part18.TopSurface = Enum.SurfaceType.Smooth
Part18.brickColor = BrickColor.new("Really black")
Part18.FormFactor = Enum.FormFactor.Custom
Part18.formFactor = Enum.FormFactor.Custom
ManualWeld19.Name = "Chassis-to-DriveSeat Strong Joint"
ManualWeld19.Parent = Part18
ManualWeld19.C0 = CFrame.new(-2, 0.5, 5, -1, 0, 0, 0, 0, 1, 0, 1, -0)
ManualWeld19.C1 = CFrame.new(-2, -0.0999660492, 4.6000061, -1, -1.142093e-08, -1.2423443e-06, -1.2423443e-06, 1.00420866e-05, 1, -1.14084546e-08, 1, -1.00420866e-05)
ManualWeld19.Part0 = Part18
ManualWeld19.Part1 = VehicleSeat88
ManualWeld19.part1 = VehicleSeat88
BodyPosition20.Parent = Part18
BodyPosition20.MaxForce = Vector3.new(0, 0, 0)
BodyPosition20.maxForce = Vector3.new(0, 0, 0)
BodyGyro21.Parent = Part18
BodyGyro21.MaxTorque = Vector3.new(0, 0, 0)
BodyGyro21.maxTorque = Vector3.new(0, 0, 0)
ManualWeld22.Name = "Chassis-to-Part Strong Joint"
ManualWeld22.Parent = Part18
ManualWeld22.C0 = CFrame.new(-2, -0.5, 5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld22.C1 = CFrame.new(-1.99993896, -1.74999809, -0.25, 1, 4.10487968e-13, 1.99786854e-11, 4.09731737e-13, 1, -3.67035682e-08, 1.99786854e-11, -3.67035682e-08, 1)
ManualWeld22.Part0 = Part18
ManualWeld22.Part1 = Part36
ManualWeld22.part1 = Part36
Part23.Parent = Model0
Part23.CFrame = CFrame.new(8.95546627, 1.75102139, -22.343832, 1, 0.000128672531, -6.30665227e-08, -0.000128672531, 1, 7.736923e-05, 7.30218161e-08, -7.73692227e-05, 1)
Part23.Orientation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
Part23.Position = Vector3.new(8.955466270446777, 1.751021385192871, -22.34383201599121)
Part23.Rotation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
Part23.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part23.Size = Vector3.new(4, 1.5, 3)
Part23.BottomSurface = Enum.SurfaceType.Smooth
Part23.BrickColor = BrickColor.new("Institutional white")
Part23.TopSurface = Enum.SurfaceType.Smooth
Part23.brickColor = BrickColor.new("Institutional white")
Part23.FormFactor = Enum.FormFactor.Custom
Part23.formFactor = Enum.FormFactor.Custom
Weld24.Parent = Part23
Weld24.C0 = CFrame.new(0, 1.25, 3.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld24.Part0 = Part18
Weld24.Part1 = Part23
Weld24.part1 = Part23
ManualWeld25.Name = "Part-to-Part Strong Joint"
ManualWeld25.Parent = Part23
ManualWeld25.C0 = CFrame.new(-2, -0.75, 1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld25.C1 = CFrame.new(-1.99996948, -0.749999046, -0.25, 1, 4.10347076e-13, 1.33191236e-11, 4.09968961e-13, 1, -2.44690455e-08, 1.33191236e-11, -2.44690455e-08, 1)
ManualWeld25.Part0 = Part23
ManualWeld25.Part1 = Part36
ManualWeld25.part1 = Part36
UnionOperation26.Parent = Model0
UnionOperation26.CFrame = CFrame.new(6.7054348, 1.50104022, -25.8438129, 1, 0.000128672531, -6.30665227e-08, -0.000128672531, 1, 7.736923e-05, 7.30218161e-08, -7.73692227e-05, 1)
UnionOperation26.Orientation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
UnionOperation26.Position = Vector3.new(6.705434799194336, 1.5010402202606201, -25.843812942504883)
UnionOperation26.Rotation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
UnionOperation26.Color = Color3.new(0.972549, 0.972549, 0.972549)
UnionOperation26.Size = Vector3.new(0.5000008344650269, 3.000000476837158, 4.000000476837158)
UnionOperation26.UsePartColor = true
Weld27.Parent = UnionOperation26
Weld27.C0 = CFrame.new(-2.25, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld27.Part0 = Part18
Weld27.Part1 = UnionOperation26
Weld27.part1 = UnionOperation26
UnionOperation28.Parent = Model0
UnionOperation28.CFrame = CFrame.new(11.2054348, 1.5004611, -25.843811, 1, 0.000128672531, -6.30665227e-08, -0.000128672531, 1, 7.736923e-05, 7.30218161e-08, -7.73692227e-05, 1)
UnionOperation28.Orientation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
UnionOperation28.Position = Vector3.new(11.205434799194336, 1.5004611015319824, -25.84381103515625)
UnionOperation28.Rotation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
UnionOperation28.Color = Color3.new(0.972549, 0.972549, 0.972549)
UnionOperation28.Size = Vector3.new(0.5000008344650269, 3.000000476837158, 4.000000476837158)
UnionOperation28.UsePartColor = true
Weld29.Parent = UnionOperation28
Weld29.C0 = CFrame.new(2.25, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld29.Part0 = Part18
Weld29.Part1 = UnionOperation28
Weld29.part1 = UnionOperation28
Part30.Name = "Thruster"
Part30.Parent = Model0
Part30.CFrame = CFrame.new(6.45530605, 0.501343071, -22.3437347, 1, 0.000128672531, -6.30665227e-08, -0.000128672531, 1, 7.736923e-05, 7.30218161e-08, -7.73692227e-05, 1)
Part30.Orientation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
Part30.Position = Vector3.new(6.455306053161621, 0.5013430714607239, -22.343734741210938)
Part30.Rotation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
Part30.Transparency = 1
Part30.Size = Vector3.new(1, 1, 2)
Part30.BottomSurface = Enum.SurfaceType.Smooth
Part30.CanCollide = false
Part30.TopSurface = Enum.SurfaceType.Smooth
Part30.FormFactor = Enum.FormFactor.Custom
Part30.formFactor = Enum.FormFactor.Custom
Weld31.Parent = Part30
Weld31.C0 = CFrame.new(-2.5, 0, 3.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld31.Part0 = Part18
Weld31.Part1 = Part30
Weld31.part1 = Part30
Weld32.Name = "WheelWeld"
Weld32.Parent = Part30
Weld32.C0 = CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld32.Part0 = Part30
Weld32.Part1 = UnionOperation42
Weld32.part1 = UnionOperation42
UnionOperation33.Parent = Model0
UnionOperation33.CFrame = CFrame.new(6.70546675, 1.75133085, -22.093832, 1, 0.000128672531, -6.30665227e-08, -0.000128672531, 1, 7.736923e-05, 7.30218161e-08, -7.73692227e-05, 1)
UnionOperation33.Orientation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
UnionOperation33.Position = Vector3.new(6.7054667472839355, 1.751330852508545, -22.09383201599121)
UnionOperation33.Rotation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
UnionOperation33.Color = Color3.new(0.972549, 0.972549, 0.972549)
UnionOperation33.Size = Vector3.new(0.5000008344650269, 2.5000009536743164, 3.500000238418579)
UnionOperation33.UsePartColor = true
Weld34.Parent = UnionOperation33
Weld34.C0 = CFrame.new(-2.25, 1.25000048, 3.75, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld34.Part0 = Part18
Weld34.Part1 = UnionOperation33
Weld34.part1 = UnionOperation33
ManualWeld35.Name = "Union-to-Part Strong Joint"
ManualWeld35.Parent = UnionOperation33
ManualWeld35.C0 = CFrame.new(0.250000417, -1.25000048, 1.75000012, 0, 0, 1, 0, 1, -0, -1, 0, 0)
ManualWeld35.C1 = CFrame.new(-1.99993896, -1.24999714, 0.25, -2.66382472e-11, 4.10628833e-13, 1, 4.89380909e-08, 1, 4.09494487e-13, -1, -4.89380909e-08, 2.66382472e-11)
ManualWeld35.Part0 = UnionOperation33
ManualWeld35.Part1 = Part36
ManualWeld35.part1 = Part36
Part36.Parent = Model0
Part36.CFrame = CFrame.new(8.95540524, 1.7511549, -20.593832, 1, 0.000128672531, -6.30512673e-08, -0.000128672531, 1, 7.73325228e-05, 7.30417966e-08, -7.74059299e-05, 1)
Part36.Orientation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
Part36.Position = Vector3.new(8.955405235290527, 1.751154899597168, -20.59383201599121)
Part36.Rotation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
Part36.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part36.Size = Vector3.new(4, 2.5, 0.5)
Part36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part36.BottomSurface = Enum.SurfaceType.Smooth
Part36.BrickColor = BrickColor.new("Institutional white")
Part36.TopSurface = Enum.SurfaceType.Smooth
Part36.brickColor = BrickColor.new("Institutional white")
Part36.FormFactor = Enum.FormFactor.Custom
Part36.formFactor = Enum.FormFactor.Custom
Part37.Parent = Model0
Part37.CFrame = CFrame.new(8.95527363, 0.251156807, -20.5937157, 1, 0.000128672531, -6.30665227e-08, -0.000128672531, 1, 7.736923e-05, 7.30218161e-08, -7.73692227e-05, 1)
Part37.Orientation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
Part37.Position = Vector3.new(8.955273628234863, 0.2511568069458008, -20.59371566772461)
Part37.Rotation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
Part37.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part37.Size = Vector3.new(5, 0.5, 0.5)
Part37.BottomSurface = Enum.SurfaceType.Smooth
Part37.BrickColor = BrickColor.new("Really black")
Part37.TopSurface = Enum.SurfaceType.Smooth
Part37.brickColor = BrickColor.new("Really black")
Part37.FormFactor = Enum.FormFactor.Custom
Part37.formFactor = Enum.FormFactor.Custom
Weld38.Parent = Part37
Weld38.C0 = CFrame.new(0, -0.25, 5.25, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld38.Part0 = Part18
Weld38.Part1 = Part37
Weld38.part1 = Part37
ManualWeld39.Name = "Part-to-Part Strong Joint"
ManualWeld39.Parent = Part37
ManualWeld39.C0 = CFrame.new(-2.5, 0.25, 0.25, -1, 0, 0, 0, 0, 1, 0, 1, -0)
ManualWeld39.C1 = CFrame.new(-2.49996948, -1.24999809, 0.25, -1, 1.99786854e-11, 4.10487968e-13, -4.09731737e-13, -3.67035682e-08, 1, -1.99786854e-11, 1, -3.67035682e-08)
ManualWeld39.Part0 = Part37
ManualWeld39.Part1 = Part36
ManualWeld39.part1 = Part36
UnionOperation40.Parent = Model0
UnionOperation40.CFrame = CFrame.new(8.95577145, 4.12843752, -27.2012959, -1, 0.0001248154, 3.12688317e-05, 0.000128672531, 0.970161319, 0.242460385, -7.30218161e-08, 0.242460385, -0.970161319)
UnionOperation40.Orientation = Vector3.new(-14.031999588012695, 179.9980010986328, 0.00800000037997961)
UnionOperation40.Position = Vector3.new(8.955771446228027, 4.128437519073486, -27.201295852661133)
UnionOperation40.Rotation = Vector3.new(-165.96800231933594, 0.0020000000949949026, -179.9929962158203)
UnionOperation40.Color = Color3.new(0.972549, 0.972549, 0.972549)
UnionOperation40.Size = Vector3.new(5.000003814697266, 2.500000476837158, 0.30000150203704834)
UnionOperation40.CanCollide = false
UnionOperation40.UsePartColor = true
Weld41.Parent = UnionOperation40
Weld41.C0 = CFrame.new(-1.90734863e-06, 3.62779188, -1.35728073, -1, 0, 0, 0, 0.970142543, 0.242535442, 0, 0.242535442, -0.970142543)
Weld41.Part0 = Part18
Weld41.Part1 = UnionOperation40
Weld41.part1 = UnionOperation40
UnionOperation42.Name = "BackLeftWheel"
UnionOperation42.Parent = Model0
UnionOperation42.CFrame = CFrame.new(6.45520735, -0.498655081, -22.3436584, 1, 0.000128672531, -6.30309245e-08, -0.000128672531, 1, 7.72835847e-05, 7.30684349e-08, -7.7454868e-05, 1)
UnionOperation42.Orientation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
UnionOperation42.Position = Vector3.new(6.455207347869873, -0.4986550807952881, -22.343658447265625)
UnionOperation42.Rotation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
UnionOperation42.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation42.Size = Vector3.new(1.5, 3, 3)
UnionOperation42.BrickColor = BrickColor.new("Black")
UnionOperation42.CanCollide = false
UnionOperation42.brickColor = BrickColor.new("Black")
Texture43.Parent = UnionOperation42
Texture43.Texture = "http://www.roblox.com/asset/?id=259149256"
Texture43.Transparency = 0.5
Texture43.Face = Enum.NormalId.Top
Texture43.StudsPerTileU = 3
Texture43.StudsPerTileV = 3
Texture44.Parent = UnionOperation42
Texture44.Texture = "http://www.roblox.com/asset/?id=259149256"
Texture44.Transparency = 0.5
Texture44.StudsPerTileU = 3
Texture44.StudsPerTileV = 3
Texture45.Parent = UnionOperation42
Texture45.Texture = "http://www.roblox.com/asset/?id=259149256"
Texture45.Transparency = 0.5
Texture45.Face = Enum.NormalId.Back
Texture45.StudsPerTileU = 3
Texture45.StudsPerTileV = 3
Texture46.Parent = UnionOperation42
Texture46.Texture = "http://www.roblox.com/asset/?id=259149256"
Texture46.Transparency = 0.5
Texture46.Face = Enum.NormalId.Bottom
Texture46.StudsPerTileU = 3
Texture46.StudsPerTileV = 3
ParticleEmitter47.Parent = UnionOperation42
ParticleEmitter47.Speed = NumberRange.new(0, 0)
ParticleEmitter47.Rotation = NumberRange.new(0, 360)
ParticleEmitter47.Color = ColorSequence.new(Color3.new(0.121569, 0.121569, 0.121569),Color3.new(0.121569, 0.121569, 0.121569))
ParticleEmitter47.Enabled = false
ParticleEmitter47.LightEmission = 0.20000000298023224
ParticleEmitter47.Texture = "rbxassetid://287259619"
ParticleEmitter47.Transparency = NumberSequence.new(1,0.800000011920929,0.668749988079071,0.675000011920929,0.8125,1)
ParticleEmitter47.Size = NumberSequence.new(0,0.537634015083313,0.8064510226249695,0.9139779806137085)
ParticleEmitter47.Acceleration = Vector3.new(0, -5, 0)
ParticleEmitter47.Lifetime = NumberRange.new(0.800000011920929, 1.2000000476837158)
ParticleEmitter47.Rate = 50
ParticleEmitter47.RotSpeed = NumberRange.new(-200, 200)
ParticleEmitter47.SpreadAngle = Vector2.new(40, 40)
ParticleEmitter47.VelocitySpread = 40
ManualWeld48.Name = "BackLeftWheel-to-Part Strong Joint"
ManualWeld48.Parent = UnionOperation42
ManualWeld48.C0 = CFrame.new(-0.75, -1.5, 1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld48.C1 = CFrame.new(-3.24990845, -3.74999619, -0.25, 1, 4.10628833e-13, 2.66382472e-11, 4.09494487e-13, 1, -4.89380909e-08, 2.66382472e-11, -4.89380909e-08, 1)
ManualWeld48.Part0 = UnionOperation42
ManualWeld48.Part1 = Part36
ManualWeld48.part1 = Part36
Part49.Name = "Light"
Part49.Parent = Model0
Part49.CFrame = CFrame.new(10.4554996, 2.00014377, -31.1938515, 0.707197726, -0.707015812, -3.83823675e-08, 0.707015812, 0.707197726, 7.73096181e-05, -5.46319752e-05, -5.47003219e-05, 1)
Part49.Orientation = Vector3.new(-0.004000000189989805, 0, 44.99300003051758)
Part49.Position = Vector3.new(10.455499649047852, 2.0001437664031982, -31.193851470947266)
Part49.Rotation = Vector3.new(-0.004000000189989805, 0, 44.99300003051758)
Part49.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part49.Size = Vector3.new(1, 1, 0.5)
Part49.BottomSurface = Enum.SurfaceType.Smooth
Part49.BrickColor = BrickColor.new("Really black")
Part49.TopSurface = Enum.SurfaceType.Smooth
Part49.brickColor = BrickColor.new("Really black")
Part49.FormFactor = Enum.FormFactor.Custom
Part49.formFactor = Enum.FormFactor.Custom
SurfaceGui50.Parent = Part49
SurfaceGui50.CanvasSize = Vector2.new(100, 100)
Frame51.Parent = SurfaceGui50
Frame51.Position = UDim2.new(0.100000001, 0, 0.100000001, 0)
Frame51.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
Frame51.BackgroundColor = BrickColor.new("Institutional white")
Frame51.BackgroundColor3 = Color3.new(1, 1, 1)
Frame51.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Frame51.BorderSizePixel = 0
SurfaceLight52.Parent = Part49
SurfaceLight52.Range = 32
SurfaceLight52.Brightness = 0.5
SurfaceLight52.Angle = 60
Weld53.Parent = Part49
Weld53.C0 = CFrame.new(1.5, 1.5, -5.35000038, 0.707106769, -0.707106769, 2.46918255e-08, 0.707106769, 0.707106769, -5.96113381e-08, 2.46918255e-08, 5.96113381e-08, 1)
Weld53.Part0 = Part18
Weld53.Part1 = Part49
Weld53.part1 = Part49
Part54.Name = "Light"
Part54.Parent = Model0
Part54.CFrame = CFrame.new(7.45549965, 2.00052977, -31.1938515, 0.707197726, -0.707015812, -9.13941705e-08, 0.707015812, 0.707197726, 7.74376458e-05, -5.46850024e-05, -5.48283424e-05, 1)
Part54.Orientation = Vector3.new(-0.004000000189989805, 0, 44.99300003051758)
Part54.Position = Vector3.new(7.455499649047852, 2.0005297660827637, -31.193851470947266)
Part54.Rotation = Vector3.new(-0.004000000189989805, 0, 44.99300003051758)
Part54.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part54.Size = Vector3.new(1, 1, 0.5)
Part54.BottomSurface = Enum.SurfaceType.Smooth
Part54.BrickColor = BrickColor.new("Really black")
Part54.TopSurface = Enum.SurfaceType.Smooth
Part54.brickColor = BrickColor.new("Really black")
Part54.FormFactor = Enum.FormFactor.Custom
Part54.formFactor = Enum.FormFactor.Custom
SurfaceGui55.Parent = Part54
SurfaceGui55.CanvasSize = Vector2.new(100, 100)
Frame56.Parent = SurfaceGui55
Frame56.Position = UDim2.new(0.100000001, 0, 0.100000001, 0)
Frame56.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
Frame56.BackgroundColor = BrickColor.new("Institutional white")
Frame56.BackgroundColor3 = Color3.new(1, 1, 1)
Frame56.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Frame56.BorderSizePixel = 0
SurfaceLight57.Parent = Part54
SurfaceLight57.Range = 32
SurfaceLight57.Brightness = 0.5
SurfaceLight57.Angle = 60
Weld58.Parent = Part54
Weld58.C0 = CFrame.new(-1.5, 1.5, -5.35000038, 0.707106769, -0.707106769, -2.83364479e-08, 0.707106769, 0.707106769, 6.84102304e-08, -2.83364479e-08, -6.84102304e-08, 1)
Weld58.Part0 = Part18
Weld58.Part1 = Part54
Weld58.part1 = Part54
Configuration59.Name = "Configurations"
Configuration59.Parent = Model0
NumberValue60.Name = "Bounce"
NumberValue60.Parent = Configuration59
NumberValue60.Value = 100
NumberValue61.Name = "Height"
NumberValue61.Parent = Configuration59
NumberValue61.Value = 3
NumberValue62.Name = "Speed"
NumberValue62.Parent = Configuration59
NumberValue62.Value = 80
NumberValue63.Name = "Suspension"
NumberValue63.Parent = Configuration59
NumberValue63.Value = 4
NumberValue64.Name = "TurnSpeed"
NumberValue64.Parent = Configuration59
NumberValue64.Value = 2
Script65.Name = "CarScript"
Script65.Parent = Model0
table.insert(cors,sandbox(Script65,function()
--Scripted by DermonDarble

local car = script.Parent
local stats = car.Configurations
local Raycast = require(script.RaycastModule)

local mass = 0

for i, v in pairs(car:GetChildren()) do
	if v:IsA("BasePart") then
		mass = mass + (v:GetMass() * 196.2)
	end
end

local bodyPosition = car.Chassis.BodyPosition
local bodyGyro = car.Chassis.BodyGyro

--local bodyPosition = Instance.new("BodyPosition", car.Chassis)
--bodyPosition.MaxForce = Vector3.new()
--local bodyGyro = Instance.new("BodyGyro", car.Chassis)
--bodyGyro.MaxTorque = Vector3.new()

local function UpdateThruster(thruster)
	-- Raycasting
	local hit, position = Raycast.new(thruster.Position, thruster.CFrame:vectorToWorldSpace(Vector3.new(0, -1, 0)) * stats.Height.Value) --game.Workspace:FindPartOnRay(ray, car)
	local thrusterHeight = (position - thruster.Position).magnitude
	
	-- Wheel
	local wheelWeld = thruster:FindFirstChild("WheelWeld")
	wheelWeld.C0 = CFrame.new(0, -math.min(thrusterHeight, stats.Height.Value * 0.8) + (wheelWeld.Part1.Size.Y / 2), 0)
	-- Wheel turning
	local offset = car.Chassis.CFrame:inverse() * thruster.CFrame
	local speed = car.Chassis.CFrame:vectorToObjectSpace(car.Chassis.Velocity)
	if offset.Z < 0 then
		local direction = 1
		if speed.Z > 0 then
			direction = -1
		end
		wheelWeld.C0 = wheelWeld.C0 * CFrame.Angles(0, (car.Chassis.RotVelocity.Y / 2) * direction, 0)
	end
	
	-- Particles
	if hit and thruster.Velocity.magnitude >= 5 then
		wheelWeld.Part1.ParticleEmitter.Enabled = true
	else
		wheelWeld.Part1.ParticleEmitter.Enabled = false
	end
end

car.DriveSeat.Changed:connect(function(property)
	if property == "Occupant" then
		if car.DriveSeat.Occupant then
			car.EngineBlock.Running.Pitch = 1
			car.EngineBlock.Running:Play()
			local player = game.Players:GetPlayerFromCharacter(car.DriveSeat.Occupant.Parent)
			if player then
				car.DriveSeat:SetNetworkOwner(player)
				local localCarScript = script.LocalCarScript:Clone()
				localCarScript.Parent = player.PlayerGui
				localCarScript.Car.Value = car
				localCarScript.Disabled = false
			end
		else
			car.EngineBlock.Running:Stop()
		end
	end
end)

--spawn(function()
	while true do
		game:GetService("RunService").Stepped:wait()
		for i, part in pairs(car:GetChildren()) do
			if part.Name == "Thruster" then
				UpdateThruster(part)
			end
		end
		if car.DriveSeat.Occupant then
			local ratio = car.DriveSeat.Velocity.magnitude / stats.Speed.Value
			car.EngineBlock.Running.Pitch = 1 + ratio / 4
			bodyPosition.MaxForce = Vector3.new()
			bodyGyro.MaxTorque = Vector3.new()
		else
			local hit, position, normal = Raycast.new(car.Chassis.Position, car.Chassis.CFrame:vectorToWorldSpace(Vector3.new(0, -1, 0)) * stats.Height.Value)
			if hit and hit.CanCollide then
				bodyPosition.MaxForce = Vector3.new(mass / 5, math.huge, mass / 5)
				bodyPosition.Position = (CFrame.new(position, position + normal) * CFrame.new(0, 0, -stats.Height.Value + 0.5)).p
				bodyGyro.MaxTorque = Vector3.new(math.huge, 0, math.huge)
				bodyGyro.CFrame = CFrame.new(position, position + normal) * CFrame.Angles(-math.pi/2, 0, 0)
			else
				bodyPosition.MaxForce = Vector3.new()
				bodyGyro.MaxTorque = Vector3.new()
			end
		end
	end
--end)
end))
LocalScript66.Name = "LocalCarScript"
LocalScript66.Parent = Script65
LocalScript66.Enabled = false
table.insert(cors,sandbox(LocalScript66,function()
--local camera = game.Workspace.CurrentCamera
local player = game.Players.LocalPlayer
local character = player.Character
local humanoidRootPart = character.HumanoidRootPart
local car = script:WaitForChild("Car").Value
local stats = car:WaitForChild("Configurations")
local Raycast = require(car.CarScript.RaycastModule)

--local cameraType = Enum.CameraType.Follow

local movement = Vector2.new()
local gamepadDeadzone = 0.14

car.DriveSeat.Changed:connect(function(property)
	if property == "Steer" then
		movement = Vector2.new(car.DriveSeat.Steer, movement.Y)
	elseif property == "Throttle" then
		movement = Vector2.new(movement.X, car.DriveSeat.Throttle)
	end
end)

-- Input begin
--game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
--	if not gameProcessedEvent then
--		if inputObject.KeyCode == Enum.KeyCode.W then
--			movement = Vector2.new(movement.X, 1)
--		elseif inputObject.KeyCode == Enum.KeyCode.A then
--			movement = Vector2.new(-1, movement.Y)
--		elseif inputObject.KeyCode == Enum.KeyCode.S then
--			movement = Vector2.new(movement.X, -1)
--		elseif inputObject.KeyCode == Enum.KeyCode.D then
--			movement = Vector2.new(1, movement.Y)
--		end
--	end
--end)
--
--game:GetService("UserInputService").InputChanged:connect(function(inputObject, gameProcessedEvent)
--	--if not gameProcessedEvent then
--		if inputObject.KeyCode == Enum.KeyCode.Thumbstick1 then
--			--Gamepad support because yay
--			if inputObject.Position.magnitude >= gamepadDeadzone then
--				movement = Vector2.new(movement.X, inputObject.Position.Y)
--			else
--				movement = Vector2.new(movement.X, 0)
--			end
--		elseif inputObject.KeyCode == Enum.KeyCode.Thumbstick2 then
--			if inputObject.Position.magnitude >= gamepadDeadzone then
--				movement = Vector2.new(inputObject.Position.X, movement.Y)
--			else
--				movement = Vector2.new(0, movement.Y)
--			end
--		end
--	--end
--end)
--
---- Input end
--game:GetService("UserInputService").InputEnded:connect(function(inputObject, gameProcessedEvent)
--	if inputObject.KeyCode == Enum.KeyCode.W then
--		if movement.Y == 1 then
--			movement = Vector2.new(movement.X, 0)
--		end
--	elseif inputObject.KeyCode == Enum.KeyCode.A then
--		if movement.X == -1 then
--			movement = Vector2.new(0, movement.Y)
--		end
--	elseif inputObject.KeyCode == Enum.KeyCode.S then
--		if movement.Y == -1 then
--			movement = Vector2.new(movement.X, 0)
--		end
--	elseif inputObject.KeyCode == Enum.KeyCode.D then
--		if movement.X == 1 then
--			movement = Vector2.new(0, movement.Y)
--		end
--	end
--end)

local force = 0
local damping = 0

local mass = 0

for i, v in pairs(car:GetChildren()) do
	if v:IsA("BasePart") then
		mass = mass + (v:GetMass() * 196.2)
	end
end

force = mass * stats.Suspension.Value
damping = force / stats.Bounce.Value

local bodyVelocity = Instance.new("BodyVelocity", car.Chassis)
bodyVelocity.velocity = Vector3.new(0, 0, 0)
bodyVelocity.maxForce = Vector3.new(0, 0, 0)

local bodyAngularVelocity = Instance.new("BodyAngularVelocity", car.Chassis)
bodyAngularVelocity.angularvelocity = Vector3.new(0, 0, 0)
bodyAngularVelocity.maxTorque = Vector3.new(0, 0, 0)

local rotation = 0

local function UpdateThruster(thruster)
	--Make sure we have a bodythrust to move the wheel
	local bodyThrust = thruster:FindFirstChild("BodyThrust")
	if not bodyThrust then
		bodyThrust = Instance.new("BodyThrust", thruster)
	end
	--Do some raycasting to get the height of the wheel
	local hit, position = Raycast.new(thruster.Position, thruster.CFrame:vectorToWorldSpace(Vector3.new(0, -1, 0)) * stats.Height.Value)
	local thrusterHeight = (position - thruster.Position).magnitude
	if hit and hit.CanCollide then
		--If we're on the ground, apply some forces to push the wheel up
		bodyThrust.force = Vector3.new(0, ((stats.Height.Value - thrusterHeight)^2) * (force / stats.Height.Value^2), 0)
		local thrusterDamping = thruster.CFrame:toObjectSpace(CFrame.new(thruster.Velocity + thruster.Position)).p * damping
		bodyThrust.force = bodyThrust.force - Vector3.new(0, thrusterDamping.Y, 0)
	else
		bodyThrust.force = Vector3.new(0, 0, 0)
	end
	
	--Wheels
	local wheelWeld = thruster:FindFirstChild("WheelWeld")
	if wheelWeld then
		wheelWeld.C0 = CFrame.new(0, -math.min(thrusterHeight, stats.Height.Value * 0.8) + (wheelWeld.Part1.Size.Y / 2), 0)
		-- Wheel turning
		local offset = car.Chassis.CFrame:inverse() * thruster.CFrame
		local speed = car.Chassis.CFrame:vectorToObjectSpace(car.Chassis.Velocity)
		if offset.Z < 0 then
			local direction = 1
			if speed.Z > 0 then
				direction = -1
			end
			wheelWeld.C0 = wheelWeld.C0 * CFrame.Angles(0, (car.Chassis.RotVelocity.Y / 2) * direction, 0)
		end
		wheelWeld.C0 = wheelWeld.C0 * CFrame.Angles(rotation, 0, 0)
	end
end

--A simple function to check if the car is grounded
local function IsGrounded()
	local hit, position = Raycast.new((car.Chassis.CFrame * CFrame.new(0, 0, (car.Chassis.Size.Z / 2) - 1)).p, car.Chassis.CFrame:vectorToWorldSpace(Vector3.new(0, -1, 0)) * (stats.Height.Value + 0.2))
	if hit and hit.CanCollide then
		return(true)
	end
	return(false)
end

--local oldCameraType = camera.CameraType
--camera.CameraType = cameraType

--spawn(function()
	while game:GetService("RunService").Heartbeat:wait() and car:FindFirstChild("DriveSeat") and character.Humanoid.SeatPart == car.DriveSeat do
		--game:GetService("RunService").RenderStepped:wait()
		if IsGrounded() then
			if movement.Y ~= 0 then
				local velocity = humanoidRootPart.CFrame.lookVector * movement.Y * stats.Speed.Value
				humanoidRootPart.Velocity = humanoidRootPart.Velocity:Lerp(velocity, 0.1)
				bodyVelocity.maxForce = Vector3.new(0, 0, 0)
			else
				bodyVelocity.maxForce = Vector3.new(mass / 2, mass / 4, mass / 2)
			end
			local rotVelocity = humanoidRootPart.CFrame:vectorToWorldSpace(Vector3.new(movement.Y * stats.Speed.Value / 50, 0, -humanoidRootPart.RotVelocity.Y * 5 * movement.Y))
			local speed = -humanoidRootPart.CFrame:vectorToObjectSpace(humanoidRootPart.Velocity).unit.Z
			rotation = rotation + math.rad((-stats.Speed.Value / 5) * movement.Y)
			if math.abs(speed) > 0.1 then
				rotVelocity = rotVelocity + humanoidRootPart.CFrame:vectorToWorldSpace((Vector3.new(0, -movement.X * speed * stats.TurnSpeed.Value, 0)))
				bodyAngularVelocity.maxTorque = Vector3.new(0, 0, 0)
			else
				bodyAngularVelocity.maxTorque = Vector3.new(mass / 4, mass / 2, mass / 4)
			end
			humanoidRootPart.RotVelocity = humanoidRootPart.RotVelocity:Lerp(rotVelocity, 0.1)
			
			--bodyVelocity.maxForce = Vector3.new(mass / 3, mass / 6, mass / 3)
			--bodyAngularVelocity.maxTorque = Vector3.new(mass / 6, mass / 3, mass / 6)
		else
			bodyVelocity.maxForce = Vector3.new(0, 0, 0)
			bodyAngularVelocity.maxTorque = Vector3.new(0, 0, 0)
		end
		
		for i, part in pairs(car:GetChildren()) do
			if part.Name == "Thruster" then
				UpdateThruster(part)
			end
		end
	end
	for i, v in pairs(car:GetChildren()) do
		if v:FindFirstChild("BodyThrust") then
			v.BodyThrust:Destroy()
		end
	end
	bodyVelocity:Destroy()
	bodyAngularVelocity:Destroy()
	--camera.CameraType = oldCameraType
	script:Destroy()
--end)
end))
LocalScript66.Disabled = true
ObjectValue67.Name = "Car"
ObjectValue67.Parent = LocalScript66
ModuleScript68.Name = "RaycastModule"
ModuleScript68.Parent = Script65
table.insert(cors,sandbox(ModuleScript68,function()
local module = {}

function module.new(startPosition, startDirection)
	local maxDistance = startDirection.magnitude
	local direction = startDirection.unit
	local lastPosition = startPosition
	local distance = 0
	local ignore = {}
	
	local hit, position, normal
	
	repeat
		local ray = Ray.new(lastPosition, direction * (maxDistance - distance))
		hit, position, normal = game.Workspace:FindPartOnRayWithIgnoreList(ray, ignore, false, true)
		if hit then
			if not hit.CanCollide then
				table.insert(ignore, hit)
			end
		end
		distance = (startPosition - position).magnitude
		lastPosition = position
	until distance >= maxDistance - 0.1 or (hit and hit.CanCollide)
	return hit, position, normal
end

return module

end))
UnionOperation69.Name = "FrontRightWheel"
UnionOperation69.Parent = Model0
UnionOperation69.CFrame = CFrame.new(11.4551773, -0.499880552, -29.8436565, 1, 0.000128672531, -6.30665227e-08, -0.000128672531, 1, 7.736923e-05, 7.30218161e-08, -7.73692227e-05, 1)
UnionOperation69.Orientation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
UnionOperation69.Position = Vector3.new(11.455177307128906, -0.4998805522918701, -29.843656539916992)
UnionOperation69.Rotation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
UnionOperation69.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation69.Size = Vector3.new(1.5, 3, 3)
UnionOperation69.BrickColor = BrickColor.new("Black")
UnionOperation69.CanCollide = false
UnionOperation69.brickColor = BrickColor.new("Black")
Texture70.Parent = UnionOperation69
Texture70.Texture = "http://www.roblox.com/asset/?id=259149256"
Texture70.Transparency = 0.5
Texture70.Face = Enum.NormalId.Top
Texture70.StudsPerTileU = 3
Texture70.StudsPerTileV = 3
Texture71.Parent = UnionOperation69
Texture71.Texture = "http://www.roblox.com/asset/?id=259149256"
Texture71.Transparency = 0.5
Texture71.StudsPerTileU = 3
Texture71.StudsPerTileV = 3
Texture72.Parent = UnionOperation69
Texture72.Texture = "http://www.roblox.com/asset/?id=259149256"
Texture72.Transparency = 0.5
Texture72.Face = Enum.NormalId.Back
Texture72.StudsPerTileU = 3
Texture72.StudsPerTileV = 3
Texture73.Parent = UnionOperation69
Texture73.Texture = "http://www.roblox.com/asset/?id=259149256"
Texture73.Transparency = 0.5
Texture73.Face = Enum.NormalId.Bottom
Texture73.StudsPerTileU = 3
Texture73.StudsPerTileV = 3
ParticleEmitter74.Parent = UnionOperation69
ParticleEmitter74.Speed = NumberRange.new(0, 0)
ParticleEmitter74.Rotation = NumberRange.new(0, 360)
ParticleEmitter74.Color = ColorSequence.new(Color3.new(0.121569, 0.121569, 0.121569),Color3.new(0.121569, 0.121569, 0.121569))
ParticleEmitter74.Enabled = false
ParticleEmitter74.LightEmission = 0.20000000298023224
ParticleEmitter74.Texture = "rbxassetid://287259619"
ParticleEmitter74.Transparency = NumberSequence.new(1,0.800000011920929,0.668749988079071,0.675000011920929,0.8125,1)
ParticleEmitter74.Size = NumberSequence.new(0,0.537634015083313,0.8064510226249695,0.9139779806137085)
ParticleEmitter74.Acceleration = Vector3.new(0, -5, 0)
ParticleEmitter74.Lifetime = NumberRange.new(0.800000011920929, 1.2000000476837158)
ParticleEmitter74.Rate = 50
ParticleEmitter74.RotSpeed = NumberRange.new(-200, 200)
ParticleEmitter74.SpreadAngle = Vector2.new(40, 40)
ParticleEmitter74.VelocitySpread = 40
UnionOperation75.Name = "BackRightWheel"
UnionOperation75.Parent = Model0
UnionOperation75.CFrame = CFrame.new(11.4551468, -0.499302149, -22.3436584, 1, 0.000128672531, -6.30461798e-08, -0.000128672531, 1, 7.73202846e-05, 7.30484544e-08, -7.74181681e-05, 1)
UnionOperation75.Orientation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
UnionOperation75.Position = Vector3.new(11.455146789550781, -0.4993021488189697, -22.343658447265625)
UnionOperation75.Rotation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
UnionOperation75.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation75.Size = Vector3.new(1.5, 3, 3)
UnionOperation75.BrickColor = BrickColor.new("Black")
UnionOperation75.CanCollide = false
UnionOperation75.brickColor = BrickColor.new("Black")
Texture76.Parent = UnionOperation75
Texture76.Texture = "http://www.roblox.com/asset/?id=259149256"
Texture76.Transparency = 0.5
Texture76.Face = Enum.NormalId.Top
Texture76.StudsPerTileU = 3
Texture76.StudsPerTileV = 3
Texture77.Parent = UnionOperation75
Texture77.Texture = "http://www.roblox.com/asset/?id=259149256"
Texture77.Transparency = 0.5
Texture77.StudsPerTileU = 3
Texture77.StudsPerTileV = 3
Texture78.Parent = UnionOperation75
Texture78.Texture = "http://www.roblox.com/asset/?id=259149256"
Texture78.Transparency = 0.5
Texture78.Face = Enum.NormalId.Back
Texture78.StudsPerTileU = 3
Texture78.StudsPerTileV = 3
Texture79.Parent = UnionOperation75
Texture79.Texture = "http://www.roblox.com/asset/?id=259149256"
Texture79.Transparency = 0.5
Texture79.Face = Enum.NormalId.Bottom
Texture79.StudsPerTileU = 3
Texture79.StudsPerTileV = 3
ParticleEmitter80.Parent = UnionOperation75
ParticleEmitter80.Speed = NumberRange.new(0, 0)
ParticleEmitter80.Rotation = NumberRange.new(0, 360)
ParticleEmitter80.Color = ColorSequence.new(Color3.new(0.121569, 0.121569, 0.121569),Color3.new(0.121569, 0.121569, 0.121569))
ParticleEmitter80.Enabled = false
ParticleEmitter80.LightEmission = 0.20000000298023224
ParticleEmitter80.Texture = "rbxassetid://287259619"
ParticleEmitter80.Transparency = NumberSequence.new(1,0.800000011920929,0.668749988079071,0.675000011920929,0.8125,1)
ParticleEmitter80.Size = NumberSequence.new(0,0.537634015083313,0.8064510226249695,0.9139779806137085)
ParticleEmitter80.Acceleration = Vector3.new(0, -5, 0)
ParticleEmitter80.Lifetime = NumberRange.new(0.800000011920929, 1.2000000476837158)
ParticleEmitter80.Rate = 50
ParticleEmitter80.RotSpeed = NumberRange.new(-200, 200)
ParticleEmitter80.SpreadAngle = Vector2.new(40, 40)
ParticleEmitter80.VelocitySpread = 40
ManualWeld81.Name = "BackRightWheel-to-Part Strong Joint"
ManualWeld81.Parent = UnionOperation75
ManualWeld81.C0 = CFrame.new(-0.75, -1.5, 1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld81.C1 = CFrame.new(1.75003052, -3.75, -0.25, 1, 4.10206211e-13, 6.65956179e-12, 4.10206211e-13, 1, -1.22345227e-08, 6.65956179e-12, -1.22345227e-08, 1)
ManualWeld81.Part0 = UnionOperation75
ManualWeld81.Part1 = Part36
ManualWeld81.part1 = Part36
UnionOperation82.Name = "FrontLeftWheel"
UnionOperation82.Parent = Model0
UnionOperation82.CFrame = CFrame.new(6.45517731, -0.49923718, -29.8436565, 1, 0.000128672531, -6.30665227e-08, -0.000128672531, 1, 7.736923e-05, 7.30218161e-08, -7.73692227e-05, 1)
UnionOperation82.Orientation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
UnionOperation82.Position = Vector3.new(6.455177307128906, -0.49923717975616455, -29.843656539916992)
UnionOperation82.Rotation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
UnionOperation82.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation82.Size = Vector3.new(1.5, 3, 3)
UnionOperation82.BrickColor = BrickColor.new("Black")
UnionOperation82.CanCollide = false
UnionOperation82.brickColor = BrickColor.new("Black")
Texture83.Parent = UnionOperation82
Texture83.Texture = "http://www.roblox.com/asset/?id=259149256"
Texture83.Transparency = 0.5
Texture83.Face = Enum.NormalId.Top
Texture83.StudsPerTileU = 3
Texture83.StudsPerTileV = 3
Texture84.Parent = UnionOperation82
Texture84.Texture = "http://www.roblox.com/asset/?id=259149256"
Texture84.Transparency = 0.5
Texture84.StudsPerTileU = 3
Texture84.StudsPerTileV = 3
Texture85.Parent = UnionOperation82
Texture85.Texture = "http://www.roblox.com/asset/?id=259149256"
Texture85.Transparency = 0.5
Texture85.Face = Enum.NormalId.Back
Texture85.StudsPerTileU = 3
Texture85.StudsPerTileV = 3
Texture86.Parent = UnionOperation82
Texture86.Texture = "http://www.roblox.com/asset/?id=259149256"
Texture86.Transparency = 0.5
Texture86.Face = Enum.NormalId.Bottom
Texture86.StudsPerTileU = 3
Texture86.StudsPerTileV = 3
ParticleEmitter87.Parent = UnionOperation82
ParticleEmitter87.Speed = NumberRange.new(0, 0)
ParticleEmitter87.Rotation = NumberRange.new(0, 360)
ParticleEmitter87.Color = ColorSequence.new(Color3.new(0.121569, 0.121569, 0.121569),Color3.new(0.121569, 0.121569, 0.121569))
ParticleEmitter87.Enabled = false
ParticleEmitter87.LightEmission = 0.20000000298023224
ParticleEmitter87.Texture = "rbxassetid://287259619"
ParticleEmitter87.Transparency = NumberSequence.new(1,0.800000011920929,0.668749988079071,0.675000011920929,0.8125,1)
ParticleEmitter87.Size = NumberSequence.new(0,0.537634015083313,0.8064510226249695,0.9139779806137085)
ParticleEmitter87.Acceleration = Vector3.new(0, -5, 0)
ParticleEmitter87.Lifetime = NumberRange.new(0.800000011920929, 1.2000000476837158)
ParticleEmitter87.Rate = 50
ParticleEmitter87.RotSpeed = NumberRange.new(-200, 200)
ParticleEmitter87.SpreadAngle = Vector2.new(40, 40)
ParticleEmitter87.VelocitySpread = 40
VehicleSeat88.Name = "DriveSeat"
VehicleSeat88.Parent = Model0
VehicleSeat88.CFrame = CFrame.new(8.9553833, 1.10079134, -25.4437866, 1, 0.000129914872, -5.29502131e-08, -0.000129914872, 1, 6.73271425e-05, 6.16970084e-08, -6.73271352e-05, 1)
VehicleSeat88.Orientation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
VehicleSeat88.Position = Vector3.new(8.95538330078125, 1.100791335105896, -25.44378662109375)
VehicleSeat88.Rotation = Vector3.new(-0.004000000189989805, 0, -0.007000000216066837)
VehicleSeat88.Color = Color3.new(0.105882, 0.164706, 0.207843)
VehicleSeat88.Size = Vector3.new(2, 0.20000000298023224, 2)
VehicleSeat88.BrickColor = BrickColor.new("Black")
VehicleSeat88.TopSurface = Enum.SurfaceType.Smooth
VehicleSeat88.brickColor = BrickColor.new("Black")
mas:PivotTo(owner.Character)
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
