local char = owner.Character --it's not really made by me
local type1 = {
	'hell',
	'shut up',
	'get out',
	'out',
	'horrible',
	'horror'
}
local type2 = {
	'cringe',
	'goofy',
	'goofy ahh',
	'bruh',
	'ratio',
	'trolled',
	'tr',
	'trolling',
	'little trolling',
	'tr'
}
local type3 = {
	'crying',
	'cry',
	'cri',
	'i cri',
	'i cry',
	'i crying',
	'sad',
	'sob',
	':sob',
	':sob:'
}
if char:FindFirstChild("Head") then
	owner.Chatted:Connect(function(message)
		local msg = game.Chat:FilterStringAsync(message,owner,owner)
		if char then
			if char then
				if not msg:find('/e ') and not msg:find('/w ') and not msg:find('/clear') then
					spawn(function()
						if string.len(msg) > 20 then
							for i,v in pairs(owner.Character:GetDescendants())do
								if v.Name == "ChatBubble" then
									v:Destroy()
								end
							end
							local bubble = Instance.new("BillboardGui")
							bubble.Parent = owner.Character.Head
							bubble.Enabled = true
bubble.Name = "ChatBubble"
							bubble.Size = UDim2.new(0,0,2,0)
							bubble.StudsOffset = Vector3.new(0,4,0)
							bubble.LightInfluence = 0
							bubble.Brightness = 1.5
							local image = Instance.new("ImageLabel",bubble)
							image.Image = "rbxassetid://2617137597"
							image.ImageColor3 = Color3.new(0,0,0)
							image.ResampleMode = Enum.ResamplerMode.Pixelated
							image.ZIndex = 2
							image.Size = UDim2.new(1,0,1,0)
							image.BackgroundTransparency = 1
							local tec = Instance.new("TextLabel",bubble)
							tec.Name = "Text"
							tec.Position = UDim2.new(0.05,0,0,0)
							tec.Size = UDim2.new(0.9,0,0.8,0)
							tec.ZIndex = 3
							tec.Font = Enum.Font.Arcade
							tec.RichText = true
							tec.BackgroundTransparency = 1
							tec.TextColor3 = Color3.new(1,1,1)
							tec.TextScaled = true
							tec.Text = ""
							tec.TextXAlignment = Enum.TextXAlignment.Left
							tec.TextWrapped = true
							tec.LineHeight = 1
							tec.MaxVisibleGraphemes = -1
							local sfx = Instance.new("Sound",owner.Character.Head)
							sfx.SoundId = "rbxassetid://5416573471"
							sfx.Volume = 0.5
							bubble.Destroying:Connect(function()
								sfx:Destroy()
							end)
							local oldpos = bubble.Text.Position
							---
							local function text(text,dur,sfx_)
								sfx_ = sfx_ or true
								dur = dur or 0.05
								local label = bubble.Text
								for i = 1,string.len(text)do
									if sfx_ == true then
										sfx:Play()
									end
									label.Position = UDim2.new(0,math.random(-0.3,0.3),0,math.random(-0.3,0.3))
									game.TweenService:Create(label,TweenInfo.new(0.2),{Position = oldpos}):Play()
									label.Text = string.sub(text,1,i)
									wait(dur)
								end
							end
							local function text2(text,dur,sfx_)
								sfx_ = sfx_ or true
								dur = dur or 0.05
								local label = bubble.Text
								local oldtext = label.Text
								for i = 1,string.len(text)do
									if sfx_ == true then
										sfx:Play()
									end
									label.Position = UDim2.new(0,math.random(-0.3,0.3),0,math.random(-0.3,0.3))
									game.TweenService:Create(label,TweenInfo.new(0.2),{Position = oldpos}):Play()
									label.Text = oldtext..string.sub(text,1,i)
									wait(dur)
								end
							end
							local function textcolor(text,color,dur,sfx_)
								sfx_ = sfx_ or true
								dur = dur or 0.05
								local label = bubble.Text
								local oldtext = label.Text
								for i = 1,string.len(text)do
									if sfx_ == true then
										sfx:Play()
									end
									label.Position = UDim2.new(0,math.random(-0.3,0.3),0,math.random(-0.3,0.3))
									game.TweenService:Create(label,TweenInfo.new(0.2),{Position = oldpos}):Play()
									label.Text = oldtext..'<font color="'..tostring(color)..'">'..string.sub(text,1,i).."</font>"
									wait(dur)
								end
							end
							local function textbold(text,dur,sfx_)
								sfx_ = sfx_ or true
								dur = dur or 0.05
								local label = bubble.Text
								local oldtext = label.Text
								for i = 1,string.len(text)do
									if sfx_ == true then
										sfx:Play()
									end
									label.Position = UDim2.new(0,math.random(-0.3,0.3),0,math.random(-0.3,0.3))
									game.TweenService:Create(label,TweenInfo.new(0.2),{Position = oldpos}):Play()
									label.Text = oldtext..'<b>'..string.sub(text,1,i).."</b>"
									wait(dur)
								end
							end
							local function textunderline(text,dur,sfx_)
								sfx_ = sfx_ or true
								dur = dur or 0.05
								local label = bubble.Text
								local oldtext = label.Text
								for i = 1,string.len(text)do
									if sfx_ == true then
										sfx:Play()
									end
									label.Position = UDim2.new(0,math.random(-0.3,0.3),0,math.random(-0.3,0.3))
									game.TweenService:Create(label,TweenInfo.new(0.2),{Position = oldpos}):Play()
									label.Text = oldtext..'<u>'..string.sub(text,1,i).."</u>"
									wait(dur)
								end
							end
							local function textunderlineitalic(text,dur,sfx_)
								sfx_ = sfx_ or true
								dur = dur or 0.05
								local label = bubble.Text
								local oldtext = label.Text
								for i = 1,string.len(text)do
									if sfx_ == true then
										sfx:Play()
									end
									label.Position = UDim2.new(0,math.random(-0.3,0.3),0,math.random(-0.3,0.3))
									game.TweenService:Create(label,TweenInfo.new(0.2),{Position = oldpos}):Play()
									label.Text = oldtext..'<u><i>'..string.sub(text,1,i).."</i></u>"
									wait(dur)
								end
							end
							local function textboldcolor(text,color,dur,sfx_)
								sfx_ = sfx_ or true
								dur = dur or 0.05
								local label = bubble.Text
								local oldtext = label.Text
								for i = 1,string.len(text)do
									if sfx_ == true then
										sfx:Play()
									end
									label.Position = UDim2.new(0,math.random(-0.3,0.3),0,math.random(-0.3,0.3))
									game.TweenService:Create(label,TweenInfo.new(0.2),{Position = oldpos}):Play()
									label.Text = oldtext..'<b><font color="'..tostring(color)..'">'..string.sub(text,1,i).."</font></b>"
									wait(dur)
								end
							end
							local function textitalic(text,dur,sfx_)
								sfx_ = sfx_ or true
								dur = dur or 0.05
								local label = bubble.Text
								local oldtext = label.Text
								for i = 1,string.len(text)do
									if sfx_ == true then
										sfx:Play()
									end
									label.Position = UDim2.new(0,math.random(-0.3,0.3),0,math.random(-0.3,0.3))
									game.TweenService:Create(label,TweenInfo.new(0.2),{Position = oldpos}):Play()
									label.Text = oldtext..'<i>'..string.sub(text,1,i).."</i>"
									wait(dur)
								end
							end
							---
							game.TweenService:Create(bubble,TweenInfo.new(0.2),{Size = UDim2.new(20,0,2,0)}):Play()
							wait(.2)
							local done = false
							for i,v in pairs(type1)do
								if msg:lower() == v or msg == msg:upper() then
									if done == false then
										done = true
										text2(msg,0.065)
									end
								else
									for i,c in pairs(type2) do
										if msg:lower() == c then
											if done == false then
												done = true
												textunderlineitalic(msg,0.065)
											end
										else
											for i,x in pairs(type3) do
												if msg:lower() == x then
													if done == false then
														done = true
														textcolor(msg,'#4000ff',0.065)
													end
												else
													if done == false then
														done = true
														text(msg,0.065)
													end
												end
											end
										end
									end
								end
							end
							wait(1.5)
							game.TweenService:Create(bubble.Text,TweenInfo.new(0.5),{TextTransparency = 1}):Play()
							wait(.5)
							game.TweenService:Create(bubble,TweenInfo.new(0.2),{Size = UDim2.new(0,0,2,0)}):Play()
							wait(.2)
							bubble:Destroy()
						else	
							for i,v in pairs(owner.Character:GetDescendants())do
								if v.Name == "ChatBubble" then
									v:Destroy()
								end
							end
							local bubble = Instance.new("BillboardGui")
							bubble.Parent = owner.Character.Head
							bubble.Enabled = true
bubble.Name = "ChatBubble"
							bubble.Size = UDim2.new(0,0,2,0)
							bubble.StudsOffset = Vector3.new(0,4,0)
							bubble.LightInfluence = 0
							bubble.Brightness = 1.5
							local image = Instance.new("ImageLabel",bubble)
							image.Image = "rbxassetid://2617137597"
							image.ImageColor3 = Color3.new(0,0,0)
							image.ResampleMode = Enum.ResamplerMode.Pixelated
							image.ZIndex = 2
							image.Size = UDim2.new(1,0,1,0)
							image.BackgroundTransparency = 1
							local tec = Instance.new("TextLabel",bubble)
							tec.Name = "Text"
							tec.Position = UDim2.new(0.05,0,0,0)
							tec.Size = UDim2.new(0.9,0,0.8,0)
							tec.ZIndex = 3
							tec.Font = Enum.Font.Arcade
							tec.RichText = true
							tec.BackgroundTransparency = 1
							tec.TextColor3 = Color3.new(1,1,1)
							tec.TextScaled = true
							tec.Text = ""
							tec.TextXAlignment = Enum.TextXAlignment.Left
							tec.TextWrapped = true
							tec.LineHeight = 1
							tec.MaxVisibleGraphemes = -1
							local sfx = Instance.new("Sound",owner.Character.Head)
							sfx.SoundId = "rbxassetid://5416573471"
							sfx.Volume = 0.5
							bubble.Destroying:Connect(function()
								sfx:Destroy()
							end)
							local oldpos = bubble.Text.Position
							---
							local function text(text,dur,sfx_)
								sfx_ = sfx_ or true
								dur = dur or 0.05
								local label = bubble.Text
								for i = 1,string.len(text)do
									if sfx_ == true then
										sfx:Play()
									end
									label.Position = UDim2.new(0,math.random(-0.3,0.3),0,math.random(-0.3,0.3))
									game.TweenService:Create(label,TweenInfo.new(0.2),{Position = oldpos}):Play()
									label.Text = string.sub(text,1,i)
									wait(dur)
								end
							end
							local function text2(text,dur,sfx_)
								sfx_ = sfx_ or true
								dur = dur or 0.05
								local label = bubble.Text
								local oldtext = label.Text
								for i = 1,string.len(text)do
									if sfx_ == true then
										sfx:Play()
									end
									label.Position = UDim2.new(0,math.random(-0.3,0.3),0,math.random(-0.3,0.3))
									game.TweenService:Create(label,TweenInfo.new(0.2),{Position = oldpos}):Play()
									label.Text = oldtext..string.sub(text,1,i)
									wait(dur)
								end
							end
							local function textcolor(text,color,dur,sfx_)
								sfx_ = sfx_ or true
								dur = dur or 0.05
								local label = bubble.Text
								local oldtext = label.Text
								for i = 1,string.len(text)do
									if sfx_ == true then
										sfx:Play()
									end
									label.Position = UDim2.new(0,math.random(-0.3,0.3),0,math.random(-0.3,0.3))
									game.TweenService:Create(label,TweenInfo.new(0.2),{Position = oldpos}):Play()
									label.Text = oldtext..'<font color="'..tostring(color)..'">'..string.sub(text,1,i).."</font>"
									wait(dur)
								end
							end
							local function textbold(text,dur,sfx_)
								sfx_ = sfx_ or true
								dur = dur or 0.05
								local label = bubble.Text
								local oldtext = label.Text
								for i = 1,string.len(text)do
									if sfx_ == true then
										sfx:Play()
									end
									label.Position = UDim2.new(0,math.random(-0.3,0.3),0,math.random(-0.3,0.3))
									game.TweenService:Create(label,TweenInfo.new(0.2),{Position = oldpos}):Play()
									label.Text = oldtext..'<b>'..string.sub(text,1,i).."</b>"
									wait(dur)
								end
							end
							local function textunderline(text,dur,sfx_)
								sfx_ = sfx_ or true
								dur = dur or 0.05
								local label = bubble.Text
								local oldtext = label.Text
								for i = 1,string.len(text)do
									if sfx_ == true then
										sfx:Play()
									end
									label.Position = UDim2.new(0,math.random(-0.3,0.3),0,math.random(-0.3,0.3))
									game.TweenService:Create(label,TweenInfo.new(0.2),{Position = oldpos}):Play()
									label.Text = oldtext..'<u>'..string.sub(text,1,i).."</u>"
									wait(dur)
								end
							end
							local function textunderlineitalic(text,dur,sfx_)
								sfx_ = sfx_ or true
								dur = dur or 0.05
								local label = bubble.Text
								local oldtext = label.Text
								for i = 1,string.len(text)do
									if sfx_ == true then
										sfx:Play()
									end
									label.Position = UDim2.new(0,math.random(-0.3,0.3),0,math.random(-0.3,0.3))
									game.TweenService:Create(label,TweenInfo.new(0.2),{Position = oldpos}):Play()
									label.Text = oldtext..'<u><i>'..string.sub(text,1,i).."</i></u>"
									wait(dur)
								end
							end
							local function textboldcolor(text,color,dur,sfx_)
								sfx_ = sfx_ or true
								dur = dur or 0.05
								local label = bubble.Text
								local oldtext = label.Text
								for i = 1,string.len(text)do
									if sfx_ == true then
										sfx:Play()
									end
									label.Position = UDim2.new(0,math.random(-0.3,0.3),0,math.random(-0.3,0.3))
									game.TweenService:Create(label,TweenInfo.new(0.2),{Position = oldpos}):Play()
									label.Text = oldtext..'<b><font color="'..tostring(color)..'">'..string.sub(text,1,i).."</font></b>"
									wait(dur)
								end
							end
							local function textitalic(text,dur,sfx_)
								sfx_ = sfx_ or true
								dur = dur or 0.05
								local label = bubble.Text
								local oldtext = label.Text
								for i = 1,string.len(text)do
									if sfx_ == true then
										sfx:Play()
									end
									label.Position = UDim2.new(0,math.random(-0.3,0.3),0,math.random(-0.3,0.3))
									game.TweenService:Create(label,TweenInfo.new(0.2),{Position = oldpos}):Play()
									label.Text = oldtext..'<i>'..string.sub(text,1,i).."</i>"
									wait(dur)
								end
							end
							---
							game.TweenService:Create(bubble,TweenInfo.new(0.2),{Size = UDim2.new(string.len(msg),0,2,0)}):Play()
							wait(.2)
							local done = false
							for i,v in pairs(type1)do
								if msg:lower() == v or msg == msg:upper() then
									if done == false then
										done = true
										text2(msg,0.065)
									end
								else
									for _,c in pairs(type2) do
										if msg:lower() == c then
											if done == false then
												done = true
												textunderlineitalic(msg,0.065)
											end
										else
											for p,x in pairs(type3) do
												if msg:lower() == x then
													if done == false then
														done = true
														textcolor(msg,'#4000ff',0.065)
													end
												else
													if done == false then
														done = true
														text(msg,0.065)
													end
												end
											end
										end
									end
								end
							end
							wait(1.5)
							game.TweenService:Create(bubble.Text,TweenInfo.new(0.5),{TextTransparency = 1}):Play()
							wait(.5)
							game.TweenService:Create(bubble,TweenInfo.new(0.2),{Size = UDim2.new(0,0,2,0)}):Play()
							wait(.2)
							bubble:Destroy()
						end
					end)
				end
			end
		end
	end)
end
