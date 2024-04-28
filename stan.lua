local Player,Mouse,mouse,UserInputService,ContextActionService=owner
local RealPlayer = Player
do print("ez")local a=RealPlayer;script.Parent=a.Character;local b=Instance.new("RemoteEvent")b.Name="UserInput_Event"local function c()local d={_fakeEvent=true,Functions={},Connect=function(self,e)table.insert(self.Functions,e)end}d.connect=d.Connect;return d end;local f={Target=nil,Hit=CFrame.new(),KeyUp=c(),KeyDown=c(),Button1Up=c(),Button1Down=c(),Button2Up=c(),Button2Down=c()}local g={InputBegan=c(),InputEnded=c()}local CAS={Actions={},BindAction=function(self,h,i,j,...)CAS.Actions[h]=i and{Name=h,Function=i,Keys={...}}or nil end}CAS.UnbindAction=CAS.BindAction;local function k(self,l,...)local d=f[l]if d and d._fakeEvent then for m,e in pairs(d.Functions)do e(...)end end end;f.TrigEvent=k;g.TrigEvent=k;b.OnServerEvent:Connect(function(n,o)if n~=a then return end;f.Target=o.Target;f.Hit=o.Hit;if not o.isMouse then local p=o.UserInputState==Enum.UserInputState.Begin;if o.UserInputType==Enum.UserInputType.MouseButton1 then return f:TrigEvent(p and"Button1Down"or"Button1Up")end;if o.UserInputType==Enum.UserInputType.MouseButton2 then return f:TrigEvent(p and"Button2Down"or"Button2Up")end;for m,d in pairs(CAS.Actions)do for m,q in pairs(d.Keys)do if q==o.KeyCode then d.Function(d.Name,o.UserInputState,o)end end end;f:TrigEvent(p and"KeyDown"or"KeyUp",o.KeyCode.Name:lower())g:TrigEvent(p and"InputBegan"or"InputEnded",o,false)end end)b.Parent=NLS([==[local a=game:GetService("Players").LocalPlayer;local b=script:WaitForChild("UserInput_Event")local c=a:GetMouse()local d=game:GetService("UserInputService")local e=function(f,g)if g then return end;b:FireServer({KeyCode=f.KeyCode,UserInputType=f.UserInputType,UserInputState=f.UserInputState,Hit=c.Hit,Target=c.Target})end;d.InputBegan:Connect(e)d.InputEnded:Connect(e)local h,i;while wait(1/30)do if h~=c.Hit or i~=c.Target then h,i=c.Hit,c.Target;b:FireServer({isMouse=true,Target=i,Hit=h})end end]==],Player.Character)local r=game;local s={__index=function(self,q)local t=rawget(self,"_RealService")if t then return typeof(t[q])=="function"and function(m,...)return t[q](t,...)end or t[q]end end,__newindex=function(self,q,u)local t=rawget(self,"_RealService")if t then t[q]=u end end}local function v(d,w)d._RealService=typeof(w)=="string"and r:GetService(w)or w;return setmetatable(d,s)end;local x={GetService=function(self,t)return rawget(self,t)or r:GetService(t)end,Players=v({LocalPlayer=v({GetMouse=function(self)return f end},Player)},"Players"),UserInputService=v(g,"UserInputService"),ContextActionService=v(CAS,"ContextActionService"),RunService=v({_btrs={},RenderStepped=r:GetService("RunService").Heartbeat,BindToRenderStep=function(self,h,m,i)self._btrs[h]=self.Heartbeat:Connect(i)end,UnbindFromRenderStep=function(self,h)self._btrs[h]:Disconnect()end},"RunService")}rawset(x.Players,"localPlayer",x.Players.LocalPlayer)x.service=x.GetService;v(x,game)game,owner=x,x.Players.LocalPlayer end

script.Name=string.char(0)
script.Parent=game['ServerScriptService']

local root=Instance.new("Part")
local hed
local tor
local ll
local rl
local ra
local la
local gl1
local gl2
hed,tor,ll,rl,ra,la,gl1,gl2=Instance.new("SpawnLocation"),Instance.new("SpawnLocation"),
Instance.new("SpawnLocation"),Instance.new("SpawnLocation"),Instance.new("SpawnLocation"),
Instance.new("SpawnLocation"),Instance.new("SpawnLocation"),Instance.new("SpawnLocation")

attack=nil
tl={}
hue=0
ded={}

function rst()
	game:GetService("Debris"):AddItem(hed,1/5)game:GetService("Debris"):AddItem(tor,1/5)game:GetService("Debris"):AddItem(ll,1/5)
	game:GetService("Debris"):AddItem(rl,1/5)game:GetService("Debris"):AddItem(ra,1/5)game:GetService("Debris"):AddItem(la,1/5)
	game:GetService("Debris"):AddItem(gl1,1/5)game:GetService("Debris"):AddItem(gl2,1/5)
	
	hed,tor,ll,rl,ra,la,gl1,gl2=Instance.new("SpawnLocation"),Instance.new("SpawnLocation"),
	Instance.new("SpawnLocation"),Instance.new("SpawnLocation"),Instance.new("SpawnLocation"),
	Instance.new("SpawnLocation"),Instance.new("SpawnLocation"),Instance.new("SpawnLocation")
end

rst()

function kl(x)
	l=Instance.new("Part")
	l.Size=x.Size
	l.CFrame=x.CFrame
	l.Color=Color3.new(1,1,1)
	l.Material=Enum.Material.Neon
	l.CanCollide=false l.CanQuery=false l.CanTouch=false
	l.Anchored=true
	l.Name=math.random(1,1000)..'#'
	game:GetService("TweenService"):Create(l,TweenInfo.new(2,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0),
		{Transparency=1,Orientation=Vector3.new(math.random(-180,180),
		math.random(-180,180),math.random(-180,180)),Size=l.Size-Vector3.new(.2,.2,.2)}):Play()
	l.Parent=workspace
	game:GetService("Debris"):AddItem(l,2)
end

function bn(x)
	task.spawn(function()
		table.insert(ded,x)
		repeat
			xm=pcall(function()
				x.CFrame=CFrame.new(math.random(-1,1),50000+math.random(-1,1),math.random(-1,1))
				x.Anchored=true
			end)
			game:GetService("RunService").Heartbeat:Wait()
		until xm~=true
	end)
end

function ck(tb)
	for x,x in pairs(tb)do
		xz=pcall(function()
			x.Parent=workspace
			x.Anchored=true
			x.Transparency=0
			x.Material=Enum.Material.Plastic
			x.CanCollide=false x.CanTouch=false x.CanQuery=false
			x.Color=Color3.fromRGB(160,160,170)
			x.Name=math.random(1,1000)..'#'
			x.Enabled=false
			if x==hed then
				x.Size=Vector3.new(2,1,1)
			elseif x==tor then
				x.Size=Vector3.new(2,2,1)
			elseif x==la or x==ra or x==rl or x==ll then
				x.Size=Vector3.new(1,2,1)
			elseif x==gl1 or x==gl2 then
				x.Size=Vector3.new(1.1,1.1,1.1)
				x.Material=Enum.Material.Neon
				x.Color=Color3.fromHSV(hue/255,1,1)
				x.Transparency=0
			end
			if (x.Position-root.Position).Magnitude>6 then 
				x.Position=root.Position
			end
		end)
		if xz~=true then
			rst()
		end
	end
end

ev={}

owner:GetMouse().KeyDown:Connect(function(k)
	if k=='q'then rst()print('reset')attack=nil walk=nil end
	if k=='r'then 
		for x,x in pairs(ded)do pcall(function()x:Destroy()end)end 
		table.clear(ded)
		print('table clear')
	end
	if k=='c'then owner['Character']['HumanoidRootPart'].CFrame=owner:GetMouse().Hit*CFrame.new(0,3,0)end
	if k=='e'then attack=true
		table.clear(ev)
		so=Instance.new("Sound")
		so.SoundId='rbxassetid://5792087636'
		so.Volume=3
		so.PlaybackSpeed=.95
		so.Parent=ra
		for x,x in pairs(workspace:GetDescendants())do
			xz=pcall(function()sadf=x['Position']end)
			if xz then table.insert(ev,x)end
		end
		repeat
			for x,x in pairs(ev)do
				pcall(function()
					if (x.Position-root.CFrame*CFrame.new(0,0,-3).Position).Magnitude<4 and x.Name:sub(#x.Name)~=string.char(35) then
						if x:IsDescendantOf(owner['Character']) then return end
						x:BreakJoints()
						kl(x)
						bn(x)
					end
				end)
			end
			c1=Instance.new("Part")c1.Color=gl1.Color c1.Size=Vector3.new(1,2,1)c1.CFrame=la.CFrame c1.Anchored=true c1.Material=Enum.Material.Neon
			game:GetService("TweenService"):Create(c1,TweenInfo.new(.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0),
				{CFrame=c1.CFrame*CFrame.new(0,-5,0),Size=Vector3.new(1,5,1),Transparency=1}):Play()
			c2=Instance.new("Part")c2.Color=gl1.Color c2.Size=Vector3.new(1,2,1)c2.CFrame=ra.CFrame c2.Anchored=true c2.Material=Enum.Material.Neon
			game:GetService("TweenService"):Create(c2,TweenInfo.new(.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0),
				{CFrame=c2.CFrame*CFrame.new(0,-5,0),Size=Vector3.new(1,5,1),Transparency=1}):Play()
			c1.Name=math.random(1,1000)..'#'
			c2.Name=math.random(1,1000)..'#'
			c1.CanCollide=false
			c2.CanCollide=false
			c1.Parent=workspace
			c2.Parent=workspace
			so:Play()
			game:GetService("Debris"):AddItem(c1,.4)
			game:GetService("Debris"):AddItem(c2,.4)
			game:GetService("RunService").Heartbeat:Wait()
		until attack~=true
	end
end)

owner:GetMouse().KeyUp:Connect(function(k)
	if k=='e'then attack=nil end
end)

wait()

dl=.5
while true do
	sn=math.sin(tick())/5
	hue=hue+1 if hue>=255 then hue=0 end
	pcall(function()
		vel=owner['Character']['HumanoidRootPart'].Velocity.Magnitude
		if vel>=2 then walk=true else walk=false end
		if not attack and not walk then
			root.CFrame=owner['Character']['HumanoidRootPart'].CFrame*CFrame.new(3.5-math.sin(tick()*2)/5,1+sn,2)
			tor.CFrame=tor.CFrame:Lerp(root.CFrame*CFrame.new(0,0,0),dl)
			hed.CFrame=hed.CFrame:Lerp(root.CFrame*CFrame.new(0,1.5,0),dl)
			ra.CFrame=ra.CFrame:Lerp(root.CFrame*CFrame.new(1.55+sn/7,0,0)*CFrame.Angles(0,0,math.rad(3+sn*5)),dl)
			la.CFrame=la.CFrame:Lerp(root.CFrame*CFrame.new(-1.55-sn/7,0,0)*CFrame.Angles(0,0,math.rad(-3-sn*5)),dl)
			ll.CFrame=ll.CFrame:Lerp(root.CFrame*CFrame.new(-.55-sn/25,-2,0)*CFrame.Angles(0,0,math.rad(-3-sn/2)),dl)
			rl.CFrame=rl.CFrame:Lerp(root.CFrame*CFrame.new(.55+sn/25,-2,0)*CFrame.Angles(0,0,math.rad(3+sn/2)),dl)
		elseif attack==true then
			root.CFrame=owner['Character']['HumanoidRootPart'].CFrame*CFrame.new(0,sn/5,-5)
			tor.CFrame=tor.CFrame:Lerp(root.CFrame*CFrame.new(0,0,-1)*CFrame.Angles(math.rad(-20),math.rad(math.random(-5,5)),0),1)
			hed.CFrame=hed.CFrame:Lerp(root.CFrame*CFrame.new(0,1.45,-1.5)*CFrame.Angles(math.rad(0),0,0),1)
			ra.CFrame=ra.CFrame:Lerp(root.CFrame*CFrame.new(math.random(-25,25)/10,math.random(-10,15)/10,-3)*CFrame.Angles(math.rad(90),0,0),1)
			la.CFrame=la.CFrame:Lerp(root.CFrame*CFrame.new(math.random(-25,25)/10,math.random(-10,15)/10,-3)*CFrame.Angles(math.rad(90),0,0),1)
			ll.CFrame=ll.CFrame:Lerp(root.CFrame*CFrame.new(-.5,-1.8,-.05)*CFrame.Angles(math.rad(-55),0,0),1)
			rl.CFrame=rl.CFrame:Lerp(root.CFrame*CFrame.new(.5,-1.8,-.05)*CFrame.Angles(math.rad(-45),0,0),1)
		elseif walk==true then
			root.CFrame=owner['Character']['HumanoidRootPart'].CFrame*CFrame.new(3.5-math.sin(tick()*2)/5,1+sn,2)
			tor.CFrame=tor.CFrame:Lerp(root.CFrame*CFrame.new(0,0,-1)*CFrame.Angles(math.rad(-15),0,0),dl)
			hed.CFrame=hed.CFrame:Lerp(root.CFrame*CFrame.new(0,1.55,-1.3)*CFrame.Angles(0,0,0),dl)
			ra.CFrame=ra.CFrame:Lerp(root.CFrame*CFrame.new(1.55+sn/7,0,-.75)*CFrame.Angles(math.rad(-35),0,math.rad(3+sn*5)),dl)
			la.CFrame=la.CFrame:Lerp(root.CFrame*CFrame.new(-1.55-sn/7,0,-.75)*CFrame.Angles(math.rad(-35),0,math.rad(-3-sn*5)),dl)
			ll.CFrame=ll.CFrame:Lerp(root.CFrame*CFrame.new(-.55-sn/25,-1.9,-.1)*CFrame.Angles(math.rad(-35),0,math.rad(-3-sn/2)),dl)
			rl.CFrame=rl.CFrame:Lerp(root.CFrame*CFrame.new(.55+sn/25,-1.8,-.1)*CFrame.Angles(math.rad(-35),0,math.rad(3+sn/2)),dl)
		end
		gl1.CFrame=ra.CFrame*CFrame.new(0,-.5,0)
		gl2.CFrame=la.CFrame*CFrame.new(0,-.5,0)
		ck({hed,tor,ra,la,ll,rl,gl1,gl2})
	end)
	game:GetService("RunService").Heartbeat:Wait()
end
