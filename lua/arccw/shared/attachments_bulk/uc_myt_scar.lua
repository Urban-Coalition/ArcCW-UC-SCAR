-- Call ArcCW.LoadAttachmentType(att, "attachment_name") to define attachments in bulk
-- This reduces loading times by reducing the amount of lua files needed.

local att = {}

att.PrintName = "25-Round 9mm"

att.Icon = Material("entities/att/acwatt_ud_m16_9mm_32.png", "smooth mips")
att.Description = ""
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "uc_myt_scar_mag"

att.Mult_RPM = 1.25 -- 750 rpm

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 25

att.ActivateElements = {"conv_9mm"}

local path = ")weapons/uc_osk/"
local common = ")/arccw_uc/common/"
local tail9 = ")/arccw_uc/common/9x19/"
local fire9dist = {tail9 .. "fire-dist-9x19-pistol-ext-01.ogg", tail9 .. "fire-dist-9x19-pistol-ext-02.ogg", tail9 .. "fire-dist-9x19-pistol-ext-03.ogg", tail9 .. "fire-dist-9x19-pistol-ext-04.ogg", tail9 .. "fire-dist-9x19-pistol-ext-05.ogg", tail9 .. "fire-dist-9x19-pistol-ext-06.ogg"}
local fire9distint = {tail9 .. "fire-dist-9x19-pistol-int-01.ogg", tail9 .. "fire-dist-9x19-pistol-int-02.ogg", tail9 .. "fire-dist-9x19-pistol-int-03.ogg", tail9 .. "fire-dist-9x19-pistol-int-04.ogg", tail9 .. "fire-dist-9x19-pistol-int-05.ogg", tail9 .. "fire-dist-9x19-pistol-int-06.ogg"}
local fire9 = {path .. "fire-9-01.ogg", path .. "fire-9-02.ogg", path .. "fire-9-03.ogg", path .. "fire-9-04.ogg", path .. "fire-9-05.ogg", path .. "fire-9-06.ogg"}
local fire9supp = {path .. "fire-9-sup-01.ogg", path .. "fire-9-sup-02.ogg", path .. "fire-9-sup-03.ogg", path .. "fire-9-sup-04.ogg", path .. "fire-9-sup-05.ogg", path .. "fire-9-sup-06.ogg"}

att.Hook_GetShootSound = function(wep, fsound)
    if wep:GetBuff_Override("Silencer") then
        return fire9supp
    else
        return fire9
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire9dist
    end
end

att.Hook_GetDistantShootSoundIndoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire9distint
    end
end

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_9mm"
end

att.Ignore = true
ArcCW.LoadAttachmentType(att, "uc_myt_scar_cal_9mm")

local att = {}

att.PrintName = "32-Round 7.62"

att.Icon = Material("entities/att/acwatt_ud_m16_9mm_32.png", "smooth mips")
att.Description = ""
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "uc_myt_scar_mag"

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 32

att.ActivateElements = {"conv_ak"}

local tail762 = ")/arccw_uc/common/762x39/"
local fire762dist = {tail762 .. "fire-dist-762x39-rif-ext-01.ogg", tail762 .. "fire-dist-762x39-rif-ext-02.ogg", tail762 .. "fire-dist-762x39-rif-ext-03.ogg", tail762 .. "fire-dist-762x39-rif-ext-04.ogg", tail762 .. "fire-dist-762x39-rif-ext-05.ogg", tail762 .. "fire-dist-762x39-rif-ext-06.ogg"}
local fire762distint = {tail762 .. "fire-dist-762x39-rif-int-01.ogg", tail762 .. "fire-dist-762x39-rif-int-02.ogg", tail762 .. "fire-dist-762x39-rif-int-03.ogg", tail762 .. "fire-dist-762x39-rif-int-04.ogg", tail762 .. "fire-dist-762x39-rif-int-05.ogg", tail762 .. "fire-dist-762x39-rif-int-06.ogg"}
local fire762 = {path .. "fire-762-01.ogg", path .. "fire-762-02.ogg", path .. "fire-762-03.ogg", path .. "fire-762-04.ogg", path .. "fire-762-05.ogg", path .. "fire-762-06.ogg"}
local fire762supp = {path .. "fire-762-sup-01.ogg", path .. "fire-762-sup-02.ogg", path .. "fire-762-sup-03.ogg", path .. "fire-762-sup-04.ogg", path .. "fire-762-sup-05.ogg", path .. "fire-762-sup-06.ogg"}

att.Hook_GetShootSound = function(wep, fsound)
    if wep:GetBuff_Override("Silencer") then
        return fire762supp
    else
        return fire762
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire762dist
    end
end

att.Hook_GetDistantShootSoundIndoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire762distint
    end
end

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_ak"
end

ArcCW.LoadAttachmentType(att, "uc_myt_scar_cal_762")

local att = {}

att.PrintName = "30-Round 5.56"

att.Icon = Material("entities/att/acwatt_ud_m16_9mm_32.png", "smooth mips")
att.Description = ""
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "uc_myt_scar_mag"

att.Mult_RPM = 1.083 -- 650 rpm

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 30

att.ActivateElements = {"conv_556"}

local tail556 = ")/arccw_uc/common/556x45/"
local fire556dist = {tail556 .. "fire-dist-556x45-rif-ext-01.ogg", tail556 .. "fire-dist-556x45-rif-ext-02.ogg", tail556 .. "fire-dist-556x45-rif-ext-03.ogg", tail556 .. "fire-dist-556x45-rif-ext-04.ogg", tail556 .. "fire-dist-556x45-rif-ext-05.ogg", tail556 .. "fire-dist-556x45-rif-ext-06.ogg"}
local fire556distint = {tail556 .. "fire-dist-556x45-rif-int-01.ogg", tail556 .. "fire-dist-556x45-rif-int-02.ogg", tail556 .. "fire-dist-556x45-rif-int-03.ogg", tail556 .. "fire-dist-556x45-rif-int-04.ogg", tail556 .. "fire-dist-556x45-rif-int-05.ogg", tail556 .. "fire-dist-556x45-rif-int-06.ogg"}
local fire556 = {path .. "fire-556-01.ogg", path .. "fire-556-02.ogg", path .. "fire-556-03.ogg", path .. "fire-556-04.ogg", path .. "fire-556-05.ogg", path .. "fire-556-06.ogg"}
local fire556supp = {path .. "fire-556-sup-01.ogg", path .. "fire-556-sup-02.ogg", path .. "fire-556-sup-03.ogg", path .. "fire-556-sup-04.ogg", path .. "fire-556-sup-05.ogg", path .. "fire-556-sup-06.ogg"}

att.Hook_GetShootSound = function(wep, fsound)
    if wep:GetBuff_Override("Silencer") then
        return fire556supp
    else
        return fire556
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire556dist
    end
end

att.Hook_GetDistantShootSoundIndoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire556distint
    end
end

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_556"
end

ArcCW.LoadAttachmentType(att, "uc_myt_scar_cal_556")

local att = {}

att.PrintName = "10-Round .308 SPP"

att.Icon = Material("entities/att/acwatt_ud_m16_9mm_32.png", "smooth mips")
att.Description = ""
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "uc_myt_scar_mag"

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 30

att.ActivateElements = {"conv_ssr"}

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_ssr"
end

ArcCW.LoadAttachmentType(att, "uc_myt_scar_cal_ssr")




local att = {}

att.PrintName = "Marksman Stock"
att.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
att.Description = "Not so compact stock."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_stock"

att.AutoStats = true
att.SortOrder = 4

att.Mult_HipDispersion = 0.65
att.Mult_MoveDispersion = 0.95
att.Mult_SightTime = 1.15
att.Mult_Recoil = 0.85
att.Mult_Sway = 0.75

att.Add_BarrelLength = 0

att.ActivateElements = {"stock_ssr"}

ArcCW.LoadAttachmentType(att, "uc_myt_scar_stock_ssr")

local att = {}

att.PrintName = "PDW Stock"
att.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
att.Description = "Compact stock."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_stock"

att.AutoStats = true
att.SortOrder = 4

att.Mult_HipDispersion = 1.25
att.Mult_MoveDispersion = 1.2
att.Mult_SightTime = 0.75
att.Mult_Recoil = 1.25
att.Mult_Sway = 1.5

att.Add_BarrelLength = 0

att.ActivateElements = {"stock_pdw"}

ArcCW.LoadAttachmentType(att, "uc_myt_scar_stock_pdw")

local att = {}

att.PrintName = "Folding Stock"
att.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
att.Description = "Wrong gun stock."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_stock"

att.AutoStats = true
att.SortOrder = 4

att.Mult_HipDispersion = 0.75
att.Mult_MoveDispersion = 0.85
att.Mult_SightTime = 1.15
att.Mult_Recoil = 1.25
att.Mult_Sway = 1.5

att.Add_BarrelLength = 0

att.ActivateElements = {"stock_fold"}
ArcCW.LoadAttachmentType(att, "uc_myt_scar_stock_fold")




local att = {}

att.PrintName = "Long Handguard"
att.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
att.Description = "Rail."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_hg"

att.AutoStats = true
att.SortOrder = 4

att.Add_BarrelLength = 4

att.ActivateElements = {"hg_l"}
ArcCW.LoadAttachmentType(att, "uc_myt_scar_hg_l")

local att = {}

att.PrintName = "Compact Handguard"
att.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
att.Description = "Guh?"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_hg"

att.AutoStats = true
att.SortOrder = 4

att.Add_BarrelLength = 4

att.ActivateElements = {"hg_s"}
ArcCW.LoadAttachmentType(att, "uc_myt_scar_hg_s")

local att = {}

att.PrintName = "Short Handguard"
att.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
att.Description = "Guh?"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_hg"

att.AutoStats = true
att.SortOrder = 4

att.Add_BarrelLength = 4

att.ActivateElements = {"hg_xs"}
ArcCW.LoadAttachmentType(att, "uc_myt_scar_hg_xs")



local att = {}

att.PrintName = "Whisper Handguard"
att.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
att.Description = "XD"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_hg"

att.AutoStats = true
att.SortOrder = 4

att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"

att.Add_BarrelLength = 4

att.ActivateElements = {"hg_sd"}
att.GivesFlags = {"sd"}
ArcCW.LoadAttachmentType(att, "uc_myt_scar_hg_sd")