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

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 25

att.ActivateElements = {"conv_9mm"}

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_9mm"
end

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

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 30

att.ActivateElements = {"conv_556"}

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_556"
end

ArcCW.LoadAttachmentType(att, "uc_myt_scar_cal_556")

local att = {}

att.PrintName = "10-Round 7.62 SPP"

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