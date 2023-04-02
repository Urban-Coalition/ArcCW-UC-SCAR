att.PrintName = "10-Round 7.62mm SPP"

att.Icon = Material("entities/att/acwatt_ud_m16_9mm_32.png", "smooth mips")
att.Description = "10 round of specialised armour and flesh piercing."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "uc_osk_mag"

att.AutoStats = true

att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.Override_ClipSize = 10
att.Mult_SightTime = 0.9
att.Mult_Sway = 0.8
att.Mult_ShootSpeedMult = 0.95
att.Mult_Damage = 1.5
att.Mult_DamageMin = 4.25
att.Mult_RPM = 0.75

att.ActivateElements = {"mag_mk"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_mk"
end

att.ExcludeFlags = {"blast"}
att.GivesFlags = {"mag_short"}
att.HideIfBlocked = true