local Credit = "A RealAxilities#0001"
print(Credit)

_G.Invisible = true

local g_0 = game
local plr_1 = g_0.Players
local Lplr_2 = plr_1.LocalPlayer
local char_3 = Lplr_2.Character
local b_1 = char_3.Head
local b_2 = char_3.LowerTorso
local b_3 = char_3.UpperTorso
local b_4 = char_3.HumanoidRootPart
local b_5 = char_3.Humanoid
local LowT_4 = char_3.LowerTorso
local rootss_5 = LowT_4.Root
local cc = "CanCollide"
local cr = "CharacterReady"
local cf = "CFrame"
local vc = "Vector3"
local pr = "Parent"
local Nm = "Name"
local td = "TakeDamage"
local st_g = "StarterGui"
local Nm_2 = "In/v"
local Sz = "Size"
local Ac = "Anchored"
local pos = "Position"
local ins = "Instance"
local tsp = "Transparency"
local noti_f = "SendNotification"
local dc = "DataCost"
local ws = workspace
local old_pos = nil
local d_1 = 0.97
local d_2 = 0.75
local p_1 = 0	
local p_2 = 99999999
local p_3 = 0 
local k_1 = 999
local ts_p = 1
local datacos_t = 113
local s_g = g_0:GetService(st_g)




if _G.Invisible == true  then
	if b_3[dc] == datacos_t then
		
	    local pt_1 = Instance.new("Part")
        pt_1[Nm] = Nm_2
        pt_1[pr] = ws
        pt_1[pos] = Vector3.new(p_1,k_1,p_3)
        pt_1[Ac] = true
        pt_1[Sz] = Vector3.new(p_2,p_1,p_2)
	    pt_1[tsp] = ts_p
        old_pos = b_4[cf]
    	b_4[cf] = b_4[cf] * CFrame.new(p_1,p_2,p_3)
    	wait(d_2)
        local Nr_6 = rootss_5:Clone()
        rootss_5:Destroy()
        wait(d_1)
        Nr_6.Parent = LowT_4
     	wait(d_2)
    	b_4[cf] = old_pos
        char_3[cr]:Destroy()

			     s_g:SetCore(noti_f, {
			    Title = "Success";
		    Text = "You are Invisible Right now !"
	     })

    	game:GetService('RunService').Stepped:connect(function()
    	b_1[cc] = false
    	b_2[cc] = false
	    b_3[cc] = false
	    b_4[cc] = false
		b_4.CrewBBG:Destroy()
		b_4.MarineBBG:Destroy()

		end)

		elseif b_3[dc] ~= datacos_t then
			b_5:TakeDamage(p_2)
						     s_g:SetCore(noti_f, {
			    Title = "Error";
		    Text = "You Need to wear woman torso !",
			Text = "Please Using Woman Torso // https://roblox.com/avatar"
	     })
		
	

end
end