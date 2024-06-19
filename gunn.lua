
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
MeshPart1 = Instance.new("MeshPart")
Sound2 = Instance.new("Sound")
Sound3 = Instance.new("Sound")
RemoteEvent4 = Instance.new("RemoteEvent")
RemoteEvent5 = Instance.new("RemoteEvent")
RemoteEvent6 = Instance.new("RemoteEvent")
LocalScript7 = Instance.new("LocalScript")
LocalScript8 = Instance.new("LocalScript")
LocalScript9 = Instance.new("LocalScript")
LocalScript10 = Instance.new("LocalScript")
Script11 = Instance.new("Script")
Script12 = Instance.new("Script")
Script13 = Instance.new("Script")
Part14 = Instance.new("Part")
CylinderMesh15 = Instance.new("CylinderMesh")
BillboardGui16 = Instance.new("BillboardGui")
ImageLabel17 = Instance.new("ImageLabel")
Script18 = Instance.new("Script")
Configuration19 = Instance.new("Configuration")
NumberValue20 = Instance.new("NumberValue")
NumberValue21 = Instance.new("NumberValue")
NumberValue22 = Instance.new("NumberValue")
NumberValue23 = Instance.new("NumberValue")
NumberValue24 = Instance.new("NumberValue")
NumberValue25 = Instance.new("NumberValue")
NumberValue26 = Instance.new("NumberValue")
Tool0.Name = "Ak"
Tool0.Parent = mas
Tool0.TextureId = "http://www.roblox.com/asset/?id=72012711"
Tool0.CanBeDropped = false
Tool0.Grip = CFrame.new(-5.64735529e-08, -0.0920510814, -0.260935485, -1, -1.15427767e-09, -8.74151524e-08, -2.2965585e-10, 0.999944031, -0.0105766281, 8.7422471e-08, -0.0105766281, -0.999944031)
Tool0.GripForward = Vector3.new(8.741515244992115e-08, 0.010576628148555756, 0.9999440312385559)
Tool0.GripPos = Vector3.new(-5.647355294513545e-08, -0.09205108135938644, -0.2609354853630066)
Tool0.GripRight = Vector3.new(-1, -2.2965584989265153e-10, 8.742247104009948e-08)
Tool0.GripUp = Vector3.new(-1.154277673443005e-09, 0.9999440312385559, -0.010576628148555756)
MeshPart1.Name = "Handle"
MeshPart1.Parent = Tool0
MeshPart1.CFrame = CFrame.new(28.5754528, 265.276764, 5.74503279, 0, 0, 1, 0, 1, -0, -1, 0, 0)
MeshPart1.Orientation = Vector3.new(0, 90, 0)
MeshPart1.Position = Vector3.new(28.57545280456543, 265.2767639160156, 5.745032787322998)
MeshPart1.Rotation = Vector3.new(0, 90, 0)
MeshPart1.Size = Vector3.new(0.39999693632125854, 1.4399927854537964, 4.560501575469971)
MeshPart1.CanCollide = false
MeshPart1.TextureID = "http://www.roblox.com/asset/?id=4861980224"
Sound2.Name = "Hitmark"
Sound2.Parent = MeshPart1
Sound2.SoundId = "rbxassetid://160432334"
Sound3.Name = "Fire"
Sound3.Parent = MeshPart1
Sound3.SoundId = "rbxassetid://2476570846"
RemoteEvent4.Name = "Hit"
RemoteEvent4.Parent = Tool0
RemoteEvent5.Name = "Fire"
RemoteEvent5.Parent = Tool0
RemoteEvent6.Name = "ActivateSpecial"
RemoteEvent6.Parent = Tool0
LocalScript7.Name = "Prone"
LocalScript7.Parent = Tool0
table.insert(cors,sandbox(LocalScript7,function()
on = 0
Tool = script.Parent
welds = {}
sh = {}
arms = nil
torso = nil
f = nil
function Crouch(ison)
if arms == nil and torso == nil then
arms = {Tool.Parent:FindFirstChild("Left Leg"), Tool.Parent:FindFirstChild("Right Leg")}
torso = Tool.Parent:FindFirstChild("Torso")
end
if arms ~= nil and torso ~= nil then
sh = {torso:FindFirstChild("Left Hip"), torso:FindFirstChild("Right Hip")}
if sh ~= nil then
local yes = true
if yes then
yes = false
if ison == 1 then
sh[1].Part1 = nil
sh[2].Part1 = nil
local weld1 = Instance.new("Weld")
weld1.Part0 = torso
weld1.Parent = torso
weld1.Part1 = arms[1]
weld1.C1 = CFrame.new(0.4, 1.25, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(90),0.25,0) --Left leg
arms[1].Name = "LDave"
arms[1].CanCollide = true
welds[1] = weld1
Tool.Parent.Humanoid.WalkSpeed = 5
-------------------------------------------
local weld2 = Instance.new("Weld")
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = arms[2]
weld2.C1 = CFrame.new(-0.4, 1.25, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(90),-0.25,0) --Right leg
arms[2].Name = "RDave"
arms[2].CanCollide = true
welds[2] = weld2
---------------------------------
local force = Instance.new("BodyForce")
force.Parent = torso
f = force
wait(0.01)
elseif ison == 0 then
if arms then
sh[1].Part1 = arms[1]
sh[2].Part1 = arms[2]
f.Parent = nil
arms[2].Name = "Right Leg"
arms[1].Name = "Left Leg"
welds[1].Parent = nil
welds[2].Parent = nil
Tool.Parent.Humanoid.WalkSpeed = 16
end
end
--
end
else
print("sh")
end
else
print("arms")
end
end
function Key(key)
if key then
key = string.lower(key)
if (key=="x") then
if on == 1 then
on = 0
elseif on == 0 then
on = 1
end
Crouch(on)
end
end
end
function Equip(mouse)
mouse.KeyDown:connect(Key)
end
script.Parent.Equipped:connect(Equip)


end))
LocalScript8.Name = "Crouch"
LocalScript8.Parent = Tool0
table.insert(cors,sandbox(LocalScript8,function()
on = 0
Tool = script.Parent
welds = {}
sh = {}
arms = nil
torso = nil
f = nil
function Crouch(ison)
if arms == nil and torso == nil then
arms = {Tool.Parent:FindFirstChild("Left Leg"), Tool.Parent:FindFirstChild("Right Leg")}
torso = Tool.Parent:FindFirstChild("Torso")
end
if arms ~= nil and torso ~= nil then
sh = {torso:FindFirstChild("Left Hip"), torso:FindFirstChild("Right Hip")}
if sh ~= nil then
local yes = true
if yes then
yes = false
if ison == 1 then
sh[1].Part1 = nil
sh[2].Part1 = nil
local weld1 = Instance.new("Weld")
weld1.Part0 = torso
weld1.Parent = torso
weld1.Part1 = arms[1]
weld1.C1 = CFrame.new(-0.5, 0.75, 1)
arms[1].Name = "LDave"
arms[1].CanCollide = true
welds[1] = weld1
Tool.Parent.Humanoid.WalkSpeed = 10
-------------------------------------------
local weld2 = Instance.new("Weld")
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = arms[2]
weld2.C1 = CFrame.new(0.5,0.495,1.25) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
arms[2].Name = "RDave"
arms[2].CanCollide = true
welds[2] = weld2
---------------------------------
local force = Instance.new("BodyForce")
force.Parent = torso
f = force
wait(0.01)
elseif ison == 0 then
if arms then
sh[1].Part1 = arms[1]
sh[2].Part1 = arms[2]
f.Parent = nil
arms[2].Name = "Right Leg"
arms[1].Name = "Left Leg"
welds[1].Parent = nil
welds[2].Parent = nil
Tool.Parent.Humanoid.WalkSpeed = 16
end
end
--
end
else
print("sh")
end
else
print("arms")
end
end
function Key(key)
if key then
key = string.lower(key)
if (key=="c") then
if on == 1 then
on = 0
elseif on == 0 then
on = 1
end
Crouch(on)
end
end
end
function Equip(mouse)
mouse.KeyDown:connect(Key)
end
script.Parent.Equipped:connect(Equip)


end))
LocalScript9.Name = "Client"
LocalScript9.Parent = Tool0
table.insert(cors,sandbox(LocalScript9,function()
--//Variables\\--
local tool = script.Parent
	local handle = tool:WaitForChild("Handle")

local contextActionService = game:GetService("ContextActionService")
	
local player = game.Players.LocalPlayer
	local mouse = player:GetMouse()
	local character = player.Character or player.CharacterAdded:Wait()	
	
local enabled = true
local specialDB = true

local cursorId = "http://www.roblox.com/asset/?id=251497633"
local hitId = "http://www.roblox.com/asset/?id=70785856"

local configs = tool:WaitForChild("Configurations")
	local fireRate = configs:FindFirstChild("FireRate")
	local specialRechargeTime = configs:FindFirstChild("SpecialRechargeTime")

local fire = tool:WaitForChild("Fire")
local activateSpecial = tool:WaitForChild("ActivateSpecial")
local hit = tool:WaitForChild("Hit")

--//Custom Functions\\--
function activate()
	if specialDB then
		specialDB = false
		activateSpecial:FireServer()
	else
	end
end

--//Tool Function\\--
tool.Equipped:Connect(function()
	contextActionService:BindAction("ActivateSpecial", activate, true, Enum.KeyCode.E)
	contextActionService:SetImage("ActivateSpecial", tool.TextureId)
	contextActionService:SetPosition("ActivateSpecial", UDim2.new(0.72, -25, 0.20, -25))
	mouse.Icon = cursorId
end)

tool.Unequipped:Connect(function()
	contextActionService:UnbindAction("ActivateSpecial")
	mouse.Icon = ""
end)

tool.Activated:Connect(function()
	if not enabled then return end
	
	enabled = false
	fire:FireServer(mouse.Hit)
	wait(fireRate.Value)
	enabled = true
end)

hit.OnClientEvent:Connect(function()
	mouse.Icon = hitId
	handle.Hitmark:Play()
	wait(0.075)
	mouse.Icon = cursorId
end)

activateSpecial.OnClientEvent:Connect(function()
	
	for i = specialRechargeTime.Value, 0, -1 do
		wait(1)
		specialDB = false
		print("Recharging: "..i)
	end
	
	specialDB = true
end)
end))
LocalScript10.Name = "BackupWeld"
LocalScript10.Parent = Tool0
table.insert(cors,sandbox(LocalScript10,function()
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
Script11.Name = "Welding"
Script11.Parent = Tool0
table.insert(cors,sandbox(Script11,function()
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
	if A.className == "MeshPart" then
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
Script12.Name = "WeldArm"
Script12.Parent = Tool0
table.insert(cors,sandbox(Script12,function()
Tool = script.Parent;
local arms = nil
local torso = nil
local welds = {}

function Equip(mouse)
wait(0.01)
arms = {Tool.Parent:FindFirstChild("Left Arm"), Tool.Parent:FindFirstChild("Right Arm")}
torso = Tool.Parent:FindFirstChild("Torso")
if arms ~= nil and torso ~= nil then
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
if sh ~= nil then
local yes = true
if yes then
yes = false
sh[1].Part1 = nil
sh[2].Part1 = nil
local weld1 = Instance.new("Weld")
weld1.Part0 = torso
weld1.Parent = torso
weld1.Part1 = arms[1]
weld1.C1 = CFrame.new(0.7, 0.9, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(28), math.rad(-1)) ---The first set of numbers changes where the arms move to the second set changes their angles
welds[1] = weld1
weld1.Name = "weld1"
local weld2 = Instance.new("Weld")
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = arms[2]
weld2.C1 = CFrame.new(-0.6, 0, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-0.01), 0) --- Same as top
welds[2] = weld2
weld2.Name = "weld2"
end
else
print("sh")
end
else
print("arms")
end
end

function Unequip(mouse)
if arms ~= nil and torso ~= nil then
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
if sh ~= nil then
local yes = true
if yes then
yes = false
sh[1].Part1 = arms[1]
sh[2].Part1 = arms[2]
welds[1].Parent = nil
welds[2].Parent = nil
end
else
print("sh")
end
else
print("arms")
end
end
Tool.Equipped:connect(Equip)
Tool.Unequipped:connect(Unequip)

end))
Script13.Name = "Server"
Script13.Parent = Tool0
table.insert(cors,sandbox(Script13,function()
--//Variables\\--
local tool = script.Parent
local handle = tool:WaitForChild("Handle")
local muzzle = tool:WaitForChild("Muzzle")
	local muzzleFlash = muzzle:WaitForChild("MuzzleFlash")
		local muzzleEffect = muzzleFlash:WaitForChild("MuzzleEffect")

local configs = tool:WaitForChild("Configurations")
	local fireRate = configs:FindFirstChild("FireRate")
	local maxDamage = configs:FindFirstChild("MaxDamage")
	local minDamage = configs:FindFirstChild("MinDamage")
	local velocity = configs:FindFirstChild("Velocity")
	local accuracy = configs:FindFirstChild("Accuracy")
	local specialDuration = configs:FindFirstChild("SpecialDuration")
	local specialRechargeTime = configs:FindFirstChild("SpecialRechargeTime")

local showDamageText = true

local debris = game:GetService("Debris")

local fire = tool:WaitForChild("Fire")
local activateSpecial = tool:WaitForChild("ActivateSpecial")
local hit = tool:WaitForChild("Hit")

--//Custom Functions\\--
function TagHumanoid(humanoid, player)
	local Creator_Tag = Instance.new("ObjectValue")
	Creator_Tag.Name = "creator"
	Creator_Tag.Value = player
	debris:AddItem(Creator_Tag, 0.3)
	Creator_Tag.Parent = humanoid
end

function UntagHumanoid(humanoid)
	for i, v in pairs(humanoid:GetChildren()) do
		if v:IsA("ObjectValue") and v.Name == "creator" then
			v:Destroy()
		end
	end
end

function TextEffects(element, floatAmount, direction, style, duration)
	element:TweenPosition(UDim2.new(0, math.random(-40, 40), 0, -floatAmount), direction, style, duration)
	wait(0.5)

	for i = 1, 60 do
		element.TextTransparency = element.TextTransparency + 1/60
		element.TextStrokeTransparency = element.TextStrokeTransparency + 1/60
		wait(1/60)
	end

	element.TextTransparency = element.TextTransparency + 1
	element.TextStrokeTransparency = element.TextStrokeTransparency + 1
	element.Parent:Destroy()
end

function DynamicText(damage, criticalPoint, humanoid)
	local bill = Instance.new("BillboardGui", humanoid.Parent.Head)
	bill.Size = UDim2.new(0, 50, 0, 100) 
	local part = Instance.new("TextLabel", bill) 
	bill.AlwaysOnTop = true
	part.TextColor3 = Color3.fromRGB(255, 0, 0)
	part.Text = damage
	part.Font = Enum.Font.SourceSans
	part.TextStrokeTransparency = 0
	part.Size = UDim2.new(1, 0, 1, 0) 
	part.Position = UDim2.new(0, 0, 0, 0) 
	part.BackgroundTransparency = 1
	bill.Adornee = bill.Parent
			
	if damage < criticalPoint then
		part.TextSize = 28
		part.TextColor3 = Color3.new(1, 0, 0)
	elseif damage >= criticalPoint then
		part.TextSize = 32
		part.TextColor3 = Color3.new(1, 1, 0)
	end 
	
	spawn(function()
		TextEffects(part, 85, Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.75)
	end)
end

function DamageAndTagHumanoid(player, humanoid, damage)
	hit:FireClient(player)
	UntagHumanoid(handle)
	humanoid:TakeDamage(damage) TagHumanoid(humanoid, player)
end

--//Remote Functions\\--
fire.OnServerEvent:Connect(function(player, mouseHit)
	local character = player.Character
	local humanoid = character:FindFirstChild("Humanoid")
	local weaponAccuracy = Vector3.new(math.random(-accuracy.Value * 2, accuracy.Value * 2), math.random(-accuracy.Value * 2, accuracy.Value * 2), math.random(-accuracy.Value * 2, accuracy.Value * 2))
	
	if humanoid and humanoid ~= 0 then
		local projectile = Instance.new("Part", workspace)
		
			local trail = Instance.new("Trail", projectile)
			trail.FaceCamera = true
			trail.Lifetime = 0.3
			trail.MinLength = 0.15	
			trail.LightEmission = 0.25
						
			local attachment0 = Instance.new("Attachment", projectile)
			attachment0.Position = Vector3.new(0.35, 0, 0)
			attachment0.Name = "Attachment1"
			local attachment1 = Instance.new("Attachment", projectile)
			attachment1.Position = Vector3.new(-0.35, 0, 0)
			attachment1.Name = "Attachment1"
			
			trail.Attachment0 = attachment0
			trail.Attachment1 = attachment1
			
		projectile.Name = "Bullet"
		projectile.BrickColor = BrickColor.new("Smoky gray")
		projectile.Shape = "Ball"
		projectile.Material = Enum.Material.Metal
		projectile.TopSurface = 0
		projectile.BottomSurface = 0
		projectile.Size = Vector3.new(1, 1, 1)	
		projectile.Transparency = 1
		projectile.CFrame = CFrame.new(muzzle.CFrame.p, mouseHit.p)
		projectile.CanCollide = false

			local transparencyPoints = {}
			local startColor = Color3.new(255, 255, 0)
			local endColor = Color3.new(213, 115, 61)
			
			table.insert(transparencyPoints, NumberSequenceKeypoint.new(0, 1))
			table.insert(transparencyPoints, NumberSequenceKeypoint.new(0.25, 0))
			table.insert(transparencyPoints, NumberSequenceKeypoint.new(1, 1))
			
			local determinedTransparency = NumberSequence.new(transparencyPoints)
			local determinedColors = ColorSequence.new(startColor, endColor)
			
			trail.Transparency = determinedTransparency
			trail.Color = determinedColors
		
			local bodyVelocity = Instance.new("BodyVelocity", projectile)
			bodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
			bodyVelocity.Velocity = (mouseHit.lookVector * velocity.Value) + weaponAccuracy
			
		debris:AddItem(projectile, 20)
		
		projectile.Touched:Connect(function(hit)
			local eHumanoid = hit.Parent:FindFirstChild("Humanoid") or hit.Parent.Parent:FindFirstChild("Humanoid")
			local damage = math.random(minDamage.Value, maxDamage.Value)
			if not eHumanoid and not hit.Anchored and not hit:IsDescendantOf(character) then
				
				projectile:Destroy()
			elseif eHumanoid and eHumanoid ~= humanoid and eHumanoid.Health > 0 and hit ~= projectile then
				
				if hit.Name == "Head" or hit:IsA("Hat") then
					damage = damage * 10.5
				end
				
				local criticalPoint = maxDamage.Value
				DamageAndTagHumanoid(player, eHumanoid, damage) 
				
				if showDamageText then
					DynamicText(damage, criticalPoint, eHumanoid)
				else
				end
				
				projectile:Destroy()
			elseif hit.CanCollide == true and not hit:IsDescendantOf(player.Character) and hit.Anchored == true then
		
				projectile:Destroy()
			end
		end)
		
		handle.Fire:Play()
		muzzleEffect.Visible = true
		muzzleEffect.Rotation = math.random(-360, 360)
		
		delay(0.1, function()
			muzzleEffect.Visible = false
		end)
		
	end
end)

activateSpecial.OnServerEvent:Connect(function(player)
	accuracy.Value, fireRate.Value = accuracy.Value / 2, fireRate.Value / 2
	minDamage.Value, maxDamage.Value = minDamage.Value / 2, maxDamage.Value / 2
	
	spawn(function()
		local chargeSound = Instance.new("Sound", player.PlayerGui)
		chargeSound.Name = "ChargeSound"
		chargeSound.SoundId = "rbxassetid://163619849"
		chargeSound:Play()
		
		chargeSound.Ended:Connect(function() chargeSound:Destroy() end)
		
		local sparkles = Instance.new("Sparkles", handle)
		sparkles.SparkleColor = Color3.fromRGB(255, 236, 21)
		
		local activatedGui = Instance.new("ScreenGui", player.PlayerGui)
		activatedGui.Name = "SpecialActivated"
			local textLabel = Instance.new("TextLabel", activatedGui) 
			textLabel.TextColor3 = Color3.fromRGB(0, 180, 30)
			textLabel.Text = "Trigger Happy activated!"
			textLabel.Font = Enum.Font.SourceSans
			textLabel.TextScaled = true
			textLabel.TextStrokeTransparency = 0
			textLabel.Size = UDim2.new(0, 300, 0, 50) 
			textLabel.Position = UDim2.new(2.5, 0, 0.15, -10) 
			textLabel.BackgroundTransparency = 1
			textLabel:TweenPosition(UDim2.new(0.5, -(textLabel.Size.X.Offset / 2),  0.1, -10), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 1)
		
		debris:AddItem(sparkles, specialDuration.Value)
		debris:AddItem(chargeSound, 3)
		
		wait(3)
		TextEffects(textLabel, 200, Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 1)
	end)
	
	for i = specialDuration.Value, 0, -1 do
		wait(1)
		print("Special activated: "..i)
	end
	
	accuracy.Value, fireRate.Value = accuracy.Value * 5, fireRate.Value * 10
	minDamage.Value, maxDamage.Value = minDamage.Value * 4, maxDamage.Value * 8
	activateSpecial:FireClient(player)
end)
end))
Part14.Name = "Muzzle"
Part14.Parent = Tool0
Part14.CFrame = CFrame.new(30.7709198, 265.719147, 5.68344593, -0.99755609, -9.09865776e-05, 0.0698710084, 0.0698710084, 3.19990577e-05, 0.99755609, -9.30000169e-05, 1, -2.55635314e-05)
Part14.Orientation = Vector3.new(-85.99299621582031, 90.02100372314453, 89.9739990234375)
Part14.Position = Vector3.new(30.770919799804688, 265.7191467285156, 5.683445930480957)
Part14.Rotation = Vector3.new(-90.0009994506836, 4.006999969482422, 179.9949951171875)
Part14.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part14.Transparency = 1
Part14.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806)
Part14.Anchored = true
Part14.BrickColor = BrickColor.new("Black")
Part14.Material = Enum.Material.SmoothPlastic
Part14.brickColor = BrickColor.new("Black")
Part14.FormFactor = Enum.FormFactor.Plate
Part14.formFactor = Enum.FormFactor.Plate
CylinderMesh15.Parent = Part14
CylinderMesh15.Scale = Vector3.new(1, 1.149999976158142, 0.10000000149011612)
BillboardGui16.Name = "MuzzleFlash"
BillboardGui16.Parent = Part14
BillboardGui16.Size = UDim2.new(0, 150, 0, 150)
BillboardGui16.Active = true
BillboardGui16.MaxDistance = 150
ImageLabel17.Name = "MuzzleEffect"
ImageLabel17.Parent = BillboardGui16
ImageLabel17.Visible = false
ImageLabel17.Size = UDim2.new(1, 0, 1, 0)
ImageLabel17.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel17.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel17.BackgroundTransparency = 1
ImageLabel17.Image = "rbxassetid://192664810"
Script18.Name = "qPerfectionWeld"
Script18.Parent = Part14
table.insert(cors,sandbox(Script18,function()
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
Configuration19.Name = "Configurations"
Configuration19.Parent = Tool0
NumberValue20.Name = "FireRate"
NumberValue20.Parent = Configuration19
NumberValue20.Value = 0.10009999999999998
NumberValue21.Name = "MinDamage"
NumberValue21.Parent = Configuration19
NumberValue21.Value = 42
NumberValue22.Name = "MaxDamage"
NumberValue22.Parent = Configuration19
NumberValue22.Value = 110
NumberValue23.Name = "Velocity"
NumberValue23.Parent = Configuration19
NumberValue23.Value = 625
NumberValue24.Name = "Accuracy"
NumberValue24.Parent = Configuration19
NumberValue24.Value = 7
NumberValue25.Name = "SpecialDuration"
NumberValue25.Parent = Configuration19
NumberValue25.Value = 15
NumberValue26.Name = "SpecialRechargeTime"
NumberValue26.Parent = Configuration19
NumberValue26.Value = 60
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
