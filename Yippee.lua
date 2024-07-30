--[[
Game: Rate My Avatar
Description: Puts a short portion of RickAstley never gonna give you up as your booth image.
Instuctions: Join game, Claim booth, Run script, Wait for frames to load.
]]

Frames = {}

Frames[2] = "16973289759"
Frames[3] = "9834224367"
Frames[4] = "9834224378"
Frames[5] = "9834224390"
Frames[6] = "9834224358"
Frames[7] = "9834224395"
Frames[8] = "9834224420"
Frames[9] = "9834224394"
Frames[10] = "9834224333"
Frames[11] = "9834224348"
Frames[12] = "9834224386"
Frames[13] = "9834224368"
Frames[14] = "9834224407"

Stop = false

--Anti skid measures
__=Instance.new("\83\99\114\101\101\110\71\117\105",game:GetService("\80\108\97\121\101\114\115").LocalPlayer.PlayerGui)
___=Instance.new("\70\114\97\109\101",__)
___.BackgroundColor3=Color3.fromRGB(139,139,139)
___.Size=UDim2.new(0.277,0,0.143,0)
___.Position=UDim2.new(.5,0,.75,0)
___.AnchorPoint=Vector2.new(.5,.5)
___.Draggable=true
___.Active=true
___.Selectable=true
Instance.new("\85\73\67\111\114\110\101\114",___)
_=Instance.new("\85\73\83\116\114\111\107\101",___)
_.Thickness=6
_=Instance.new("\85\73\65\115\112\101\99\116\82\97\116\105\111\67\111\110\115\116\114\97\105\110\116",___)
_.AspectRatio=3.85
_=Instance.new("\84\101\120\116\76\97\98\101\108",___)
_.BackgroundTransparency=1
_.Text="\56\48\48\48\50\48"
_.Size=UDim2.new(0.265,0,0.35,0)
_.Position=UDim2.new(0,0,1,0)
_.TextScaled=true
_.TextColor3=Color3.fromRGB(128,0,32)
_.Font=Enum.Font.SourceSans
_.TextSize=14
_=Instance.new("\84\101\120\116\66\117\116\116\111\110",___)
_.BackgroundColor3=Color3.fromRGB(255,56,76)
_.Text="\88"
_.Position=UDim2.new(0.902,0,0.086,0)
_.Size=UDim2.new(0.093,0,0.304,0)
_.TextScaled=true
_.Font=Enum.Font.SourceSans
_.TextSize=14
_.TextColor3=Color3.new()
_.MouseButton1Up:Connect(function()
	Stop=true
	__:Destroy()
end)
Instance.new("\85\73\65\115\112\101\99\116\82\97\116\105\111\67\111\110\115\116\114\97\105\110\116",_)
_=Instance.new("\85\73\67\111\114\110\101\114",_)
_.CornerRadius=UDim.new(1,0)
_=Instance.new("\84\101\120\116\66\111\120",___)
_.BackgroundColor3=Color3.fromRGB(93,93,93)
_.ClearTextOnFocus=false
_.TextScaled=true
_.TextColor3=Color3.new(1,1,1)
_.Size=UDim2.new(0.835,0,0.822,0)
_.Position=UDim2.new(0.036,0,0.086,0)
_.BorderSizePixel=0
_.Text="\73\110\115\101\114\116\32\109\101\115\115\97\103\101\32\104\101\114\101"

while not Stop do
	for i,v in Frames do
		if Stop then break end
		game:GetService("ReplicatedStorage"):WaitForChild("CustomiseBooth"):FireServer("Update",{["DescriptionText"] = _.Text,["ImageId"] = tonumber(v)})
		task.wait(0.0833333333)--12 FPS
	end
end
