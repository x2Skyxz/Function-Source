_G.Key = "G" -- ตั้งปุ่มกดคีย์ลัด // Keybind Settings
_G.ButtonI = "X" -- ตั้งป่มมาโครปุ่ม 1 // Macro Button Settings
_G.ButtonII = "Z" -- ตั้งป่มมาโครปุ่ม 2 // Macro Button  Settings
_G.Delay = "0" -- ตั้งดีย์เลย์ // Delay Settings

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")


local IsHolding = false

UserInputService.InputBegan:Connect(function(Input, IsChatting)
	if not IsChatting and Input.KeyCode == Enum.KeyCode[_G.Key] then
		if not _G.AutoSelectWeapon then
		IsHolding = true
		while IsHolding do
		wait()
		game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode[_G.ButtonI],false,game) -- Press E key.

        game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode[_G.ButtonI],false,game) -- Press E key.

		game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode[_G.ButtonII],false,game)

		game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode[_G.ButtonII],false,game)

		
		
		end
		end
	end
end)

UserInputService.InputEnded:Connect(function(Input)


	if Input.KeyCode == Enum.KeyCode[_G.Key] then
		IsHolding = false
	end
end)
