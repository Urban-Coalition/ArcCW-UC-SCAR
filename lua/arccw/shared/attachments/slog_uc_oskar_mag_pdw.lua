att.PrintName = "30-Round 5.56mm"

att.Icon = Material("entities/att/acwatt_ud_m16_9mm_32.png", "smooth mips")
att.Description = "Weaker intermediate rounds."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "uc_osk_mag"

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 30
att.Mult_ShootSpeedMult = 0.95
att.Mult_Damage = 0.9
att.Mult_DamageMin = 0.95
att.Mult_RPM = 1.125

att.ActivateElements = {"mag_pdw"}

att.Hook_SelectReloadAnimation = function(wep, anim)
	if wep.Attachments[2].Installed == "slog_uc_oskar_frame_blast" then return anim .. "_pdw_gl"
		elseif wep.Attachments[2].Installed == "slog_uc_oskar_frame_shot" then return anim .. "_pdw_gl"
		else	return anim .. "_pdw"
	end	
end