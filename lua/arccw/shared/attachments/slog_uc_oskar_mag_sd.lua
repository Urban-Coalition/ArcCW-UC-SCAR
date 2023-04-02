att.PrintName = "25-Round .300 AAC"

att.Icon = Material("entities/att/acwatt_ud_m16_9mm_32.png", "smooth mips")
att.Description = "Even slightly weaker intermediate rounds."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "uc_osk_mag"

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 25
att.Mult_Sway = 1.05
att.Mult_ShootSpeedMult = 0.975
att.Mult_Damage = 0.85
att.Mult_DamageMin = 1.2
att.Mult_RPM = 1.25

att.ActivateElements = {"mag_sd"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_sd"
end