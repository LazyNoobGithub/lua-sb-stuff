
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
Part2 = Instance.new("Part")
SpecialMesh3 = Instance.new("SpecialMesh")
MeshPart4 = Instance.new("MeshPart")
ManualWeld5 = Instance.new("ManualWeld")
Script6 = Instance.new("Script")
Sound7 = Instance.new("Sound")
Script8 = Instance.new("Script")
Script9 = Instance.new("Script")
Sound10 = Instance.new("Sound")
PitchShiftSoundEffect11 = Instance.new("PitchShiftSoundEffect")
Tool0.Name = "Tazer"
Tool0.Parent = mas
Tool0.Grip = CFrame.new(0, -0.400000155, 0.200000763, 1, 1.65309793e-08, 9.56699891e-16, -1.65309775e-08, 1, 5.96046306e-08, 2.86229837e-17, -5.96046306e-08, 1)
Tool0.GripForward = Vector3.new(-9.566998911220907e-16, -5.960463056453591e-08, -1)
Tool0.GripPos = Vector3.new(0, -0.4000001549720764, 0.20000076293945312)
Tool0.GripRight = Vector3.new(1, -1.6530977475781583e-08, 2.862298367573162e-17)
Tool0.GripUp = Vector3.new(1.6530979252138422e-08, 1, -5.960463056453591e-08)
Script1.Name = "TaserScript"
Script1.Parent = Tool0
table.insert(cors,sandbox(Script1,function()
local tool = script.Parent

function onclick()
	tool.Handle.Taze:Play()
	tool.Handle.TaserEffects.Disabled = false
	tool.Handle.MeshPart.Damage.Disabled = false
end
function ondisclick()
	tool.Handle.Taze:Stop()
	tool.Handle.TaserEffects.Disabled = true
	tool.Handle.MeshPart.Transparency = 1
	tool.Handle.MeshPart.Damage.Disabled = true
end

tool.Activated:Connect(onclick)
tool.Deactivated:Connect(ondisclick)
tool.Unequipped:Connect(ondisclick)
end))
Part2.Name = "Handle"
Part2.Parent = Tool0
Part2.CFrame = CFrame.new(27.0225677, 0.5, -42.3796997, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part2.Position = Vector3.new(27.022567749023438, 0.5, -42.37969970703125)
Part2.Size = Vector3.new(1, 1, 2)
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.TopSurface = Enum.SurfaceType.Smooth
SpecialMesh3.Parent = Part2
SpecialMesh3.MeshId = "http://www.roblox.com/asset/?id=82337638"
SpecialMesh3.TextureId = "http://www.roblox.com/asset/?id=82337709"
SpecialMesh3.MeshType = Enum.MeshType.FileMesh
MeshPart4.Parent = Part2
MeshPart4.CFrame = CFrame.new(27.044548, 0.55684936, -43.2865448, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart4.Position = Vector3.new(27.04454803466797, 0.5568493604660034, -43.28654479980469)
MeshPart4.Color = Color3.new(0, 0.560784, 0.611765)
MeshPart4.Transparency = 1
MeshPart4.Size = Vector3.new(0.2439652532339096, 0.0863012969493866, 0.8136997222900391)
MeshPart4.BrickColor = BrickColor.new("Bright bluish green")
MeshPart4.CanCollide = false
MeshPart4.Material = Enum.Material.Neon
MeshPart4.brickColor = BrickColor.new("Bright bluish green")
ManualWeld5.Name = "Weld"
ManualWeld5.Parent = MeshPart4
ManualWeld5.C1 = CFrame.new(0.0219802856, 0.0568493605, -0.906845093, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld5.Part0 = MeshPart4
ManualWeld5.Part1 = Part2
ManualWeld5.part1 = Part2
Script6.Name = "Damage"
Script6.Parent = MeshPart4
Script6.Enabled = false
table.insert(cors,sandbox(Script6,function()
function onTouched(hit)
        local human = hit.Parent:findFirstChild("Humanoid")
        if (human ~= nil) then
		human.WalkSpeed = human.WalkSpeed == 0
		script.Parent.shock:Play()
		script.Parent.Damage.Disabled = true
		script.Parent.Script.Disabled = false
		script.Parent.Parent.Parent.TaserScript.Disabled = true
		script.Parent.Parent.Taze:Pause()
		script.Parent.MeshPart.Transparency = 1
		script.Parent.Parent.TaserEffects.Disabled = true
        end
end
script.Parent.Touched:connect(onTouched)
end))
Script6.Disabled = true
Sound7.Name = "shock"
Sound7.Parent = MeshPart4
Sound7.Pitch = 2
Sound7.PlaybackSpeed = 2
Sound7.SoundId = "rbxassetid://186130717"
Script8.Parent = MeshPart4
Script8.Enabled = false
table.insert(cors,sandbox(Script8,function()
wait(5)
script.Parent.Parent.Parent.TaserScript.Disabled = false
script.Disabled = true
end))
Script8.Disabled = true
Script9.Name = "TaserEffects"
Script9.Parent = Part2
Script9.Enabled = false
table.insert(cors,sandbox(Script9,function()
while true do
	wait(0.03)
	script.Parent.MeshPart.Transparency = 0
	wait(0.03)
	script.Parent.MeshPart.Transparency = 1
end
end))
Script9.Disabled = true
Sound10.Name = "Taze"
Sound10.Parent = Part2
Sound10.Looped = true
Sound10.Pitch = 6
Sound10.PlaybackSpeed = 6
Sound10.SoundId = "rbxassetid://7149003935"
Sound10.Volume = 1.5
PitchShiftSoundEffect11.Parent = Sound10
PitchShiftSoundEffect11.Octave = 1.190000057220459
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
