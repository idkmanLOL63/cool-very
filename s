local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Skibidi SKSKKKSKSKSKSk",
   Icon = 0,
   LoadingTitle = "LOADING OMGGGGG",
   LoadingSubtitle = "by Sirius",
   Theme = "Ocean",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },
   KeySystem = false,
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"Hello"}
   }
})

local Sense = loadstring(game:HttpGet('https://sirius.menu/sense'))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/Roblox-Lua-Triggerbot/refs/heads/main/Triggerbot.lua"))()

local espTab = Window:CreateTab("Visuals", "eye")
local Section = espTab:CreateSection("Esp Settings")

local Toggle = espTab:CreateToggle({
   Name = "Esp Box",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
       -- 2. Change the configuration based on toggle state
       if Value then
           Sense.teamSettings.enemy.enabled = true
           Sense.teamSettings.enemy.box = true
           Sense.teamSettings.enemy.boxColor[1] = Color3.new(255, 255, 255)

           -- 3. Load the ESP when it's enabled
           Sense.Load()
       else
           -- Disable ESP when toggle is off
           Sense.teamSettings.enemy.enabled = false
           Sense.teamSettings.enemy.box = false

           -- Optionally, you can unload ESP if needed (not required, but it's cleaner)
           Sense.Unload()
       end
   end,
})

local aimbotTab = Window:CreateTab("Main", "crosshair") -- Title, Image

local Toggle = aimbotTab:CreateToggle({
   Name = "Aimbot 2(Arsenal Only!)",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
     loadstring(game:HttpGet("https://raw.githubusercontent.com/idkmanLOL63/sssssssss/refs/heads/main/source"))()
   end,
})

local Toggle = aimbotTab:CreateToggle({
   Name = "TriggerBot",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      loadstring(game:HttpGet('https://raw.githubusercontent.com/VapingCat/Open-Source-TriggerBot/main/script.lua'))()
   end,
})
