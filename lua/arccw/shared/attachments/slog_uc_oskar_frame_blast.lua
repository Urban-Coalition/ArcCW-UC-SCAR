att.PrintName = "Blaster Kit"
att.Icon = Material("entities/att/obsolete.png", "mips smooth")
att.Description = "wip."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_osk_kit"
att.SortOrder = 4

att.AutoStats = true

att.Mult_SightTime = 0.85
att.Mult_SpeedMult = 1.025
att.Mult_SightedSpeedMult = 1.1

att.Mult_RPM = 1.242
att.Mult_Recoil = 1.5
att.Mult_AccuracyMOA = 2
att.Mult_Range = 0.75
att.Mult_Sway = 0.75

att.Add_BarrelLength = -6

att.ActivateElements = {"kit_blast"}

att.LHIK = true
att.LHIK_Priority = -2

att.Model = "models/weapons/arccw/slog/uc/c_oskar.mdl"
att.ModelBodygroups = "144440"
att.ExcludeFlags = {"mag_short"}
att.GivesFlags = {"blast"}
att.HideIfBlocked = true


att.UBGL = true

att.UBGL_Icon = Material("entities/slog_tuna_specialist_fx92.png", "mips smooth")
att.UBGL_BaseAnims = true

att.UBGL_PrintName = "40mm"
att.UBGL_Automatic = false
att.UBGL_MuzzleEffect = "muzzleflash_m79"
att.UBGL_ClipSize = 1
att.UBGL_Ammo = "smg1_grenade"
att.UBGL_RPM = 120
att.UBGL_Recoil = 1
att.UBGL_Capacity = 1

att.Hook_ShouldNotSight = function(wep)
    if wep:GetInUBGL() then
	return true
	end
end

local function Ammo(wep)
    return wep.Owner:GetAmmoCount("smg1_grenade")
end

att.UBGL_Fire = function(wep, ubgl)
    if (wep:Clip2() <= 0) then return end

    wep:PlayAnimation("nade_fire", 1, true, nil, nil, nil, true)

    wep:FireRocket("arccw_slog_tuna_fx92_exp", 3000 * ArcCW.HUToM)

    wep:EmitSound("weapons/arccw_slog/fortuna/lmg/gl_fire.wav", 100)

    wep:SetClip2(wep:Clip2() - 1)

    wep:DoEffects()
end

att.UBGL_Reload = function(wep, ubgl)
	local clip = 1
	
    if wep:Clip2() >= clip then return end

    if Ammo(wep) <= 0 then return end

    wep:SetNextSecondaryFire(CurTime() + (wep:Clip2() == 0 and 100/40))

    wep:PlayAnimation(wep:Clip2() == 0 and "nade_load", nil, true)

    local reserve = Ammo(wep)

    reserve = reserve + wep:Clip2()

    local load = math.Clamp(1, 0, reserve)

    wep.Owner:SetAmmo(reserve - load, "smg1_grenade")

    wep:SetClip2(load)
end