local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/NMEHkVTb"))()

local Window = OrionLib:MakeWindow({Name = "VIP Turtle Hub V3", HidePremium = false, SaveConfig = true, ConfigFolder = "TurtleFi"})

local T1 = Window:MakeTab({
Name = "Main",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local T2 = Window:MakeTab({
Name = "Eggs & Pets",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local T3 = Window:MakeTab({
Name = "Code",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local workspace = game:GetService("Workspace")
local Egglist = {}
OrionLib:AddTable(workspace.Eggs,Egglist)

T1:AddToggle({
  Name = "Auto Click",
  Default = false,
  Callback = function(Value)
      _G.ClickShit = Value
      while wait() do
        if _G.ClickShit == false then break end
           game:GetService("ReplicatedStorage")["Events"]["TrainEvent"]:FireServer("click")
      end
    end
  })

T1:AddToggle({
  Name = "Auto Rebirth",
  Default = false,
  Callback = function(Value)
      _G.R_Shit = Value
      while wait() do
        if _G.R_Shit == false then break end
           game:GetService("ReplicatedStorage")["Events"]["RebirthsEvent"]:FireServer()
      end
    end
  })

T1:AddToggle({
  Name = "Auto Claim Daily Reward",
  Default = false,
  Callback = function(Value)
      _G.ClaimShit = Value
      while wait() do
        if _G.ClaimShit == false then break end
           game:GetService("ReplicatedStorage")["Events"]["TimeRewardsEvent"]:FireServer(1)
           game:GetService("ReplicatedStorage")["Events"]["TimeRewardsEvent"]:FireServer(2)
           game:GetService("ReplicatedStorage")["Events"]["TimeRewardsEvent"]:FireServer(3)
           game:GetService("ReplicatedStorage")["Events"]["TimeRewardsEvent"]:FireServer(4)
           game:GetService("ReplicatedStorage")["Events"]["TimeRewardsEvent"]:FireServer(5)
           game:GetService("ReplicatedStorage")["Events"]["TimeRewardsEvent"]:FireServer(6)
           game:GetService("ReplicatedStorage")["Events"]["TimeRewardsEvent"]:FireServer(7)
           game:GetService("ReplicatedStorage")["Events"]["TimeRewardsEvent"]:FireServer(8)
           game:GetService("ReplicatedStorage")["Events"]["TimeRewardsEvent"]:FireServer(9)
           game:GetService("ReplicatedStorage")["Events"]["TimeRewardsEvent"]:FireServer(10)
           game:GetService("ReplicatedStorage")["Events"]["TimeRewardsEvent"]:FireServer(11)
           game:GetService("ReplicatedStorage")["Events"]["TimeRewardsEvent"]:FireServer(12)
      end
    end
  })

T2:AddDropdown({
   Name = "Select Egg",
   Default = "Basic Egg",
   Options = Egglist,
   Callback = function(Value)
      _G._GetShitName = Value
    end
  })

T2:AddToggle({
  Name = "Auto Hatch",
  Default = false,
  Callback = function(Value)
      _G._Hatch = Value
      while wait() do
        if _G._Hatch == false then break end
           game:GetService("ReplicatedStorage")["Events"]["PetsEvent"]:FireServer("openegg",_G._GetShitName)
      end
    end
  })

T2:AddToggle({
  Name = "Auto Hatch Event Egg",
  Default = false,
  Callback = function(Value)
      _G._Event = Value
      while wait() do
        if _G._Event == false then break end
           game:GetService("ReplicatedStorage")["Events"]["EventEggEvent"]:FireServer()
      end
    end
  })

T2:AddToggle({
  Name = "Auto Claim Free Pet",
  Default = false,
  Callback = function(Value)
      _G._FreeShit = Value
      while wait() do
        if _G._FreeShit == false then break end
           game:GetService("ReplicatedStorage")["Events"]["FreePetQuestEvent"]:FireServer()
      end
    end
  })

T2:AddToggle({
  Name = "Auto Equip best pet",
  Default = false,
  Callback = function(Value)
      _G._BestShit = Value
      while wait() do
        if _G._BestShit == false then break end
           game:GetService("ReplicatedStorage")["Events"]["PetsEvent"]:FireServer("equipbest")
      end
    end
  })

Tab:AddButton({
   Name = "Redeem all codes (1 codes detected)",
   Callback = function()
      game:GetService("ReplicatedStorage")["Events"]["CodeEvent"]:FireServer("RELEASE")
  end    
})
