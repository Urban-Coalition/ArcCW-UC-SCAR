-- Call ArcCW.LoadAttachmentType(att, "attachment_name") to define attachments in bulk
-- This reduces loading times by reducing the amount of lua files needed.

local att = {}


-- Magazines/Caliber Conversions ---------------------------------------------------------
att.PrintName = "SCAR-9 40-Round 9x19mm Mag"
att.AbbrevName = "40-Round 9mm Mag"

att.Icon = Material("entities/att/acwatt_ud_m16_9mm_32.png", "smooth mips")
att.Description = "Evil magazine adaptor. Takes anything that goes in to a Glock, even Vector mags."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "uc_myt_scar_mag"
att.SortOrder = 40 + 9

att.Mult_RPM = 1.25 -- 750 rpm

att.AutoStats = true
att.HideIfBlocked = true

att.Mult_Damage = 30 / 65
att.Mult_DamageMin = 17 / 35

att.Override_ClipSize = 40  -- bof?

att.Mult_Range = 0.4
att.Mult_ShootSpeedMult = 1.1
att.Mult_Recoil = 0.3
att.Mult_HipDispersion = 0.85

att.Mult_SightTime = 0.9
att.Mult_Penetration = 6 / 18

att.ActivateElements = {"conv_9mm"}

att.Override_Ammo = "pistol"
att.Override_Trivia_Calibre = "9x19mm Parabellum"
att.Override_Trivia_Class = "Submachine Gun"
att.Override_ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
att.Override_ShellScale = 0.8
att.Override_ShellSounds = ArcCW.PistolShellSoundsTable

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

att.Hook_SelectReloadAnimation = function(wep, anim)  -- i remember why arccw is rubbish	MinProgress changes doesn't work with TranslateAnimation
    return anim .. "_9mm"
end

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_9mm"
end

ArcCW.LoadAttachmentType(att, "uc_myt_scar_cal_9mm")

local att = {}
---------------------------------------------------------------------------------------------------------------------
att.PrintName = "SCAR-47 30-Round 7.62x39mm Mag"
att.AbbrevName = "30-Round 7.62 Mag"

att.Icon = Material("entities/att/acwatt_ud_m16_9mm_32.png", "smooth mips")
att.Description = "Multi-Calibre configuration specifically adapted for scavenging in Eastern Europe. Conversion retains more stopping power relative to .308 than the more common SCAR-L."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "uc_myt_scar_mag"
att.SortOrder = 30 + 308

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 30
att.Override_Trivia_Calibre = "7.62x39mm Soviet"
att.Override_Trivia_Class = "Assault Rifle"

att.Mult_Recoil = .7
att.Mult_Damage = 50 / 65
att.Mult_DamageMin = 25 / 35

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

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_ak"
end
att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_ak"
end

ArcCW.LoadAttachmentType(att, "uc_myt_scar_cal_762")

---------------------------------------------------------------------------------------------------------------------
local att = {}

att.PrintName = "SCAR-47 70-Round 7.62x39mm Mag"
att.AbbrevName = "70-Round 7.62 Mag"

att.Icon = Material("entities/att/acwatt_ud_m16_9mm_32.png", "smooth mips")
att.Description = "You are not getting a HAMR."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "uc_myt_scar_mag"
att.SortOrder = 70 + 308

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 70
att.Override_Trivia_Calibre = "7.62x39mm Soviet"
att.Override_Trivia_Class = "Assault Rifle"

att.Mult_Recoil = .7
att.Mult_Damage = 50 / 65
att.Mult_DamageMin = 25 / 35

att.ActivateElements = {"conv_ak70"}

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

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_ak_drum"
end

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_ak_drum"
end

ArcCW.LoadAttachmentType(att, "uc_myt_scar_cal_762_70")

---------------------------------------------------------------------------------------------------------------------
local att = {}

att.PrintName = "SCAR-L 30-Round STANAG Mag"
att.AbbrevName = "30-Round 5.56 Mag"

att.Icon = Material("entities/att/acwatt_ud_m16_9mm_32.png", "smooth mips")
att.Description = "Barrel and receiver group that accepts an intermediate cartridge, downgrading the weapon into an assault rifle."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "uc_myt_scar_mag"
att.SortOrder = 30 + 56

att.Override_Ammo = "smg1"
att.Override_Trivia_Calibre = "5.56x45mm NATO"
att.Override_Trivia_Class = "Assault Rifle"

att.Mult_RPM = 1.083 -- 650 rpm
att.Mult_SightedSpeedMult = 1.05
att.Mult_ReloadTime = .95
att.Mult_Recoil = 0.45
att.Mult_HipDispersion = .75

att.Mult_Penetration = 14 / 20
att.Mult_DamageMin = 20 / 35
att.Mult_Damage = 34 / 65
att.ShootPitchVariation = 1
att.Override_ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
att.Override_ShellScale = 1

att.GivesFlags = {"cal_556"}

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

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_556"
end

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_556"
end

ArcCW.LoadAttachmentType(att, "uc_myt_scar_cal_556")

---------------------------------------------------------------------------------------------------------------------
local att = {}

att.PrintName = "SCAR-H 10-Round SPP Mag"
att.AbbrevName = "10-Round .308 Mag"

att.Icon = Material("entities/att/acwatt_ud_m16_9mm_32.png", "smooth mips")
att.Description = "Flush magazine armed with     harder    bullets     what increases    damage    by      making it     sharper?? Text impending."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "uc_myt_scar_mag"
att.SortOrder = 10 + 308

att.Mult_DamageMin = 1.2   --- a fucking reason to use it, lol it reloads slower than 20 round
att.Mult_Damage = 1.2
att.Mult_Penetration = 40 / 20

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 10

att.ActivateElements = {"conv_ssr"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_ssr"
end

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_ssr"
end

ArcCW.LoadAttachmentType(att, "uc_myt_scar_cal_ssr")



-- Stocks ---------------------------------------------------------
local att = {}

att.PrintName = "Marksman Stock"
att.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
att.Description = [[Heavy-duty and cumbersome marksman stock. Advised to use with according marksman build]]
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

att.PrintName = "AMCAR 231 Wire Stock"
att.AbbrevName = "M231 Wire Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 M231 Wire Stock"
end

att.Icon = Material("entities/att/acwatt_ud_m16_stock_231.png", "smooth mips")
att.Description = "Wire stock used on the M231 FPW that provides some semblance of recoil control. Can be made even more agile by collapsing, improving point-shooting capabilities at the cost of recoil control.\n\nToggling this stock modifies performance accordingly."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_stock"

att.AutoStats = true
att.SortOrder = 3

att.Mult_SightTime = 0.75
att.Mult_Recoil = 1.25

att.Add_BarrelLength = -4

att.Mult_DrawTime = 0.75
att.Mult_HolsterTime = 0.75

att.ToggleSound = "arccw_uc/common/stockslide.ogg"

att.ToggleLockDefault = true
att.ToggleStats = {
    {
        PrintName = "Extended",
        AutoStats = true,
        ActivateElements = {"stock_231_ex"},
    },
    {
        PrintName = "Collapsed",
        AutoStats = true,
        Mult_HipDispersion = 0.6,
        Mult_MoveDispersion = 0.6,
        Mult_RecoilSide = 2,
        ActivateElements = {"stock_231_in"},
    },
}

ArcCW.LoadAttachmentType(att, "uc_myt_scar_stock_wire")

local att = {}

att.PrintName = "PDW Stock"
att.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
att.Description = "Collapsable stock that shortens the rifle when collapsed while still retaining a proper cheek weld.\n\nToggling the stock modifies performance accordingly."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_stock"

att.AutoStats = true
att.SortOrder = 4

att.Add_BarrelLength = 0

att.ToggleLockDefault = true
att.ToggleStats = {
    {
        PrintName = "Extended",
        AutoStats = true,
        ActivateElements = {"stock_pdw"},
		Mult_HipDispersion = 1.25,
		Mult_MoveDispersion = 1.2,
		Mult_SightTime = 0.75,
		Mult_Recoil = 1.25,
		Mult_Sway = 1.5,
    },
    {
        PrintName = "Collapsed",
        AutoStats = true,
        Mult_HipDispersion = 0.6,
        Mult_MoveDispersion = 0.6,
        Mult_RecoilSide = 2,
        ActivateElements = {"stock_pdwf"},
    },
}

ArcCW.LoadAttachmentType(att, "uc_myt_scar_stock_pdw")

local att = {}

att.PrintName = "Folding Stock"
att.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
att.Description = "Wrong gun stock. ARM CLIPPING"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_stock"

att.AutoStats = true
att.SortOrder = 4

att.Add_BarrelLength = 0

att.ToggleStats = {
    {
        PrintName = "Extended",
        AutoStats = true,
        ActivateElements = {"stock_fold"},
		Mult_HipDispersion = 0.75,
		Mult_MoveDispersion = 0.85,
		Mult_SightTime = 1.15,
		Mult_Recoil = 1.25,
		Mult_Sway = 1.5,
    },
    {
        PrintName = "Collapsed",
        AutoStats = true,
        Mult_HipDispersion = 0.6,
        Mult_MoveDispersion = 0.6,
        Mult_RecoilSide = 2,
        ActivateElements = {"stock_foldf"},
    },
}

ArcCW.LoadAttachmentType(att, "uc_myt_scar_stock_fold")

local att = {}

att.PrintName = "Compact Stock"

att.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
att.Description = "Collapse the stock, enhancing the weapon's utility in corps-a-corps environment."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_stock"
att.ActivateElements = {"stock_folded"}
att.AutoStats = true
att.SortOrder = 65
att.Free = true

att.Mult_Sway = 1.25

att.Mult_SightedSpeedMult = 1.1
att.Mult_ShootSpeedMult = 1.1
att.Mult_RecoilSide = 1.5
att.Add_BarrelLength = -4

ArcCW.LoadAttachmentType(att, "uc_myt_scar_stock_folded")




local att = {}

-- Barrels ---------------------------------------------------------
att.PrintName = "20\" LB Barrel"
att.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
att.Description = "Extended barrel with added railling."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_hg"

att.AutoStats = true
att.SortOrder = 20

att.Add_BarrelLength = 5

att.ActivateElements = {"hg_l"}
ArcCW.LoadAttachmentType(att, "uc_myt_scar_hg_l")

local att = {}

att.PrintName = "24\" MKX Barrel"
att.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
att.Description = "Extended barrel with added handguard. Texture scretching galore."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_hg"

att.AutoStats = true
att.SortOrder = 24

att.Add_BarrelLength = 8

att.ActivateElements = {"hg_20"}
ArcCW.LoadAttachmentType(att, "uc_myt_scar_hg_20")

local att = {}

att.PrintName = "10\" CQC Barrel"
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
att.SortOrder = 10

att.Add_BarrelLength = -6

att.ActivateElements = {"hg_s"}
ArcCW.LoadAttachmentType(att, "uc_myt_scar_hg_s")

local att = {}

att.PrintName = "6.5\" PDW Barrel"
att.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
att.Description = "Shoots your finger off with this one trick."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_hg"

att.AutoStats = true
att.SortOrder = 6.5

att.LHIK = true
att.Model = "models/weapons/arccw/atts/tactical_lhik.mdl"
att.DroppedModel = "models/items/boxsrounds.mdl"
att.ModelOffset = (Vector(0.41, 0, -1.63) - Vector(8, -0.85, -3))

att.Add_BarrelLength = -10

att.ActivateElements = {"hg_xs"}
ArcCW.LoadAttachmentType(att, "uc_myt_scar_hg_xs")



local att = {}

att.PrintName = "16\" Whisper Barrel"
att.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
att.Description = "Mytton, youre susposed to stop digging up dead ideas"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_hg"

att.AutoStats = true
att.SortOrder = 16

att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"

att.Add_BarrelLength = 4

att.ActivateElements = {"hg_sd"}
att.GivesFlags = {"sd"}
ArcCW.LoadAttachmentType(att, "uc_myt_scar_hg_sd")



-- Grips ---------------------------------------------------------

local att = {}

att.PrintName = "Flat Grip"
att.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
att.Description = "you cant even fucking see it"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_grip"

att.AutoStats = true

att.ActivateElements = {"grip_flat"}
ArcCW.LoadAttachmentType(att, "uc_myt_scar_grip_flat")

local att = {}

att.PrintName = "Skeleton Grip"
att.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
att.Description = "Hollow Knight Silksong"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_grip"

att.AutoStats = true

att.ActivateElements = {"grip_hollow"}
ArcCW.LoadAttachmentType(att, "uc_myt_scar_grip_ske")
