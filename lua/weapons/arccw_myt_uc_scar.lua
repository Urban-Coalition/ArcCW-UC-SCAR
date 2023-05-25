SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Coalition"
SWEP.UC_CategoryPack = "5Urban One-offs"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
SWEP.ShellScale = 1.145
SWEP.ShellPitch = 100
SWEP.UC_ShellColor = Color(0.7*255, 0.2*255, 0.2*255)

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 3
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "Osckée 21"
-- True name --
SWEP.TrueName = "SCAR-H"

-- Trivia --

SWEP.Trivia_Class = "Battle Rifle"
SWEP.Trivia_Desc = [[
A highly modular rifle platform designed to be used by expeditionary forces. Configurable for urban combat, marksmanship, and more.

This alteration is permanently half baked in sun light.
]]
SWEP.Trivia_Calibre = "7.62x51mm NATO"
SWEP.Trivia_Country = "Wallonia" -- massive funny
SWEP.Trivia_Manufacturer = "Héristal van Hoog-Zert"  -- /Haut-Sart/ why are they speaking fake Dutch with French grammar?
SWEP.Trivia_Year = 2004

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "FN Herstal"
    SWEP.Trivia_Country = "Belgium"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_uc_myt_scar.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_uc_myt_scar.mdl"
SWEP.ViewModelFOV = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage --

SWEP.Damage = ArcCW.UC.StdDmg["762_51"].max
SWEP.DamageMin = ArcCW.UC.StdDmg["762_51"].min
SWEP.RangeMin = 50
SWEP.Range = 400
SWEP.Penetration = ArcCW.UC.StdDmg["762_51"].pen
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = ArcCW.UC.StdDmg["762_51"].vel
SWEP.PhysBulletMuzzleVelocity = ArcCW.UC.StdDmg["762_51"].vel

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults

-- Mag size --

SWEP.chreleaseSize = 1
SWEP.Primary.ClipSize = 20
SWEP.ExtendedClipSize = 30
SWEP.ReducedClipSize = 10

-- Recoil --

SWEP.Recoil = 1.1
SWEP.RecoilSide = 0.7

SWEP.RecoilRise = 0.1
SWEP.RecoilPunch = 1
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 1
SWEP.MaxRecoilPunch = 1
SWEP.RecoilPunchpull = 1

SWEP.Sway = 0.5

-- Firerate / Firemodes --

SWEP.Delay = 60 / 600
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.ShootPitch = 100
SWEP.ShootVol = 120
SWEP.ShootPitchVariation = 0

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC --

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 3.5
SWEP.HipDispersion = 750
SWEP.MoveDispersion = 220
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "ar2"

-- Speed multipliers --

SWEP.SpeedMult = 0.925
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.5
SWEP.ShootSpeedMult = 0.9

-- Length --

SWEP.BarrelLength = 48
SWEP.ExtraSightDist = 7

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(0.5, 8, -0.5)
SWEP.HolsterAng = Angle(-10, 8, -15)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-3.71, 3, 0.51),
     Ang = Angle(0, 0, 0),
     Magnification = 1.1,
     SwitchToSound = "",
}

SWEP.ActivePos = Vector(0, 7, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(0, 5, -2)
SWEP.CustomizeAng = Angle(10, 0, 0)

SWEP.CrouchPos = Vector(-1, 5, -0.25)
SWEP.CrouchAng = Angle(0, 0, -14)

SWEP.BarrelOffsetHip = Vector(2, 0, -5)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-3, 4, -8),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Firing sounds --

local path = ")weapons/uc_osk/"
local common = ")/arccw_uc/common/"
local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_5.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local mech = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}
local ratel = {common .. "rattle1.ogg", common .. "rattle2.ogg", common .. "rattle3.ogg"}
local rutle = {common .. "movement-rifle-01.ogg", common .. "movement-rifle-02.ogg", common .. "movement-rifle-03.ogg", common .. "movement-rifle-04.ogg"}
local magdrop = {common .. "rifle_magdrop_1.ogg", common .. "rifle_magdrop_2.ogg", common .. "rifle_magdrop_3.ogg", common .. "rifle_magdrop_4.ogg"}
--SWEP.FirstShootSound = path .. "fire_first.ogg"

SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}
SWEP.ShootSoundSilenced = {
    path .. "fire-sup-01.ogg",
    path .. "fire-sup-02.ogg",
    path .. "fire-sup-03.ogg",
    path .. "fire-sup-04.ogg",
    path .. "fire-sup-05.ogg",
    path .. "fire-sup-06.ogg"
}
SWEP.DistantShootSound = nil
SWEP.DistantShootSoundSilenced = nil
SWEP.ShootDrySound = path .. "dryfire.ogg"

local tail = ")/arccw_uc/common/308/"

SWEP.DistantShootSoundOutdoors = {
    tail .. "fire-dist-308-rif-ext-01.ogg",
    tail .. "fire-dist-308-rif-ext-02.ogg",
    tail .. "fire-dist-308-rif-ext-03.ogg",
    tail .. "fire-dist-308-rif-ext-04.ogg",
    tail .. "fire-dist-308-rif-ext-05.ogg",
    tail .. "fire-dist-308-rif-ext-06.ogg"
}
SWEP.DistantShootSoundIndoors = {
    tail .. "fire-dist-308-rif-int-01.ogg",
    tail .. "fire-dist-308-rif-int-02.ogg",
    tail .. "fire-dist-308-rif-int-03.ogg",
    tail .. "fire-dist-308-rif-int-04.ogg",
    tail .. "fire-dist-308-rif-int-05.ogg",
    tail .. "fire-dist-308-rif-int-06.ogg"
}
SWEP.DistantShootSoundOutdoorsSilenced = {
    common .. "sup-tail-01.ogg",
    common .. "sup-tail-02.ogg",
    common .. "sup-tail-03.ogg",
    common .. "sup-tail-04.ogg",
    common .. "sup-tail-05.ogg",
    common .. "sup-tail-06.ogg",
    common .. "sup-tail-07.ogg",
    common .. "sup-tail-08.ogg",
    common .. "sup-tail-09.ogg",
    common .. "sup-tail-10.ogg"
}
SWEP.DistantShootSoundIndoorsSilenced = {
    common .. "fire-dist-int-pistol-light-01.ogg",
    common .. "fire-dist-int-pistol-light-02.ogg",
    common .. "fire-dist-int-pistol-light-03.ogg",
    common .. "fire-dist-int-pistol-light-04.ogg",
    common .. "fire-dist-int-pistol-light-05.ogg",
    common .. "fire-dist-int-pistol-light-06.ogg"
}
SWEP.FiremodeSound = {
    path .. "selector-01.ogg",
    path .. "selector-02.ogg",
    path .. "selector-03.ogg",
    path .. "selector-04.ogg",
}
SWEP.DistantShootSoundOutdoorsVolume = 1
SWEP.DistantShootSoundIndoorsVolume = 1
SWEP.Hook_AddShootSound = ArcCW.UC.InnyOuty

-- Bodygroups --


SWEP.AttachmentElements = {	
    ["conv_9mm"] = {
        NameChange = "Aanvulloir 16",
        TrueNameChange = "SCAR-9",
        VMBodygroups = {
            {ind = 2, bg = 3},
            {ind = 4, bg = 4},
        },
    },	 
	["conv_ak"] = {
        NameChange = "Chijmaar 32",
        TrueNameChange = "SCAR-47",
        VMBodygroups = {
            {ind = 2, bg = 2},
            {ind = 4, bg = 2},
        },
    },
	["conv_ak70"] = {
        NameChange = "Chijmaar 70",
        TrueNameChange = "SCAR-47/70",
        VMBodygroups = {
            {ind = 2, bg = 4},
            {ind = 4, bg = 3},
        },
    },
	["conv_556"] = {
        NameChange = "Scarlett 17",
        TrueNameChange = "SCAR-L",
        VMBodygroups = {
            {ind = 2, bg = 1},
            {ind = 4, bg = 1},
        },
    },	
	["conv_ssr"] = {
        NameChange = "Lancierie 24",
        TrueNameChange = "SCAR-SSR",
        VMBodygroups = {
            {ind = 2, bg = 5},
            {ind = 4, bg = 0},
        },
    },	

	["stock_ssr"] = {
        VMBodygroups = {
            {ind = 7, bg = 6},
        },
    },
	["stock_tube"] = { VMBodygroups = { {ind = 0, bg = 2},{ind = 7, bg = 10}, }, },
	["stock_folded"] = { VMBodygroups = { {ind = 7, bg = 1}, }, },
	["stock_pdw"] = { VMBodygroups = { {ind = 7, bg = 4}, }, },
	["stock_pdwf"] = { VMBodygroups = { {ind = 7, bg = 5}, }, },
	["stock_231_ex"] = { VMBodygroups = { {ind = 7, bg = 7}, {ind = 0, bg = 2}, }, },
	["stock_231_in"] = { VMBodygroups = { {ind = 7, bg = 8}, {ind = 0, bg = 2}, }, },
	["stock_fold"] = { VMBodygroups = { {ind = 7, bg = 2}, }, },
	["stock_foldf"] = { VMBodygroups = { {ind = 7, bg = 3}, }, },

	["grip_flat"] = { VMBodygroups = { {ind = 6, bg = 1}, }, },	
	["grip_hollow"] = { VMBodygroups = { {ind = 6, bg = 2}, }, },
	
	["hg_l"] = {
        VMBodygroups = {
            {ind = 8, bg = 3},
            {ind = 9, bg = 3},
        },
        AttPosMods = {
            [3] = { vpos = Vector(0, -1.65, 22.0) },
        }
    },	
	["hg_20"] = {
        VMBodygroups = {
            {ind = 8, bg = 5},
            {ind = 9, bg = 5},
			{ind = 1, bg = 5},
        },
        AttPosMods = {
            [3] = { vpos = Vector(0, -1.65, 22.6) },
        }
    },
    ["hg_sd"] = {
        VMBodygroups = {
            {ind = 8, bg = 4},
            {ind = 9, bg = 4},
            {ind = 1, bg = 3},
        },
        AttPosMods = {
            [3] = { vpos = Vector(0, -1.65, 15.5) },
            [4] = { vpos = Vector(0, 0, 9) },
            [5] = { vpos = Vector(-1.5, -1.7, 9.5) },
			[14] = { vpos = Vector(0, -1, 6) },
        },
    },
    ["hg_s"] = {
        VMBodygroups = {
            {ind = 8, bg = 1},
            {ind = 9, bg = 1},
            {ind = 1, bg = 1},
        }, 
        AttPosMods = {
            [3] = { vpos = Vector(0, -1.65, 12.9) },
            [4] = { vpos = Vector(0, -0.75, 7.5) },
            [5] = { vpos = Vector(-1, -1.7, 8.5) },
        },
    },
    ["hg_xs"] = {
        VMBodygroups = {
            {ind = 8, bg = 2},
            {ind = 9, bg = 2},
            {ind = 1, bg = 2},
        }, 
        AttPosMods = {
            [3] = { vpos = Vector(0, -1.65, 10.5) },
            [4] = { vpos = Vector(0, -0.75, 7) },
            [5] = { vpos = Vector(-1, -1.7, 7.5) },
        },
    },
}

SWEP.DefaultBodygroups = "000000000000000"

SWEP.Hook_ModifyBodygroups = function(wep, data)
	local vm = data.vm
	local handguard = wep.Attachments[2].Installed
	if wep.Attachments[1].Installed then 
        if (handguard == "uc_myt_scar_hg_s") || (handguard == "uc_myt_scar_hg_sd") then vm:SetBodygroup(5, 3) 
        elseif handguard == "uc_myt_scar_hg_xs" then vm:SetBodygroup(5, 5)
        elseif handguard == "uc_myt_scar_hg_20" then vm:SetBodygroup(5, 8)
        else   vm:SetBodygroup(5, 1) end
    
	else
		if (handguard == "uc_myt_scar_hg_s") || (handguard == "uc_myt_scar_hg_sd") then vm:SetBodygroup(5, 2) 
		elseif handguard == "uc_myt_scar_hg_xs" then vm:SetBodygroup(5, 4)
		elseif handguard == "uc_myt_scar_hg_20" then vm:SetBodygroup(5, 7)
		else   vm:SetBodygroup(5, 0) end

    end

	if wep.Attachments[3].Installed then vm:SetBodygroup(9, 4) end	
end

SWEP.Hook_Think = ArcCW.UC.ADSReload

SWEP.NoHideLeftHandInCustomization = true
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },

    ["ready"] = {
        Source = "deploy",
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "rattle.ogg", t = 0.2 + 5/40},
            {s = path .. "chpull.ogg",   t = 18/40},
            {s = common .. "cloth_4.ogg",  t = 0.5 + 5/40},
            {s = path .. "chrelease.ogg",  t = 32/40},
        },
        ProcDraw = false,
    },	
    ["ready_empty"] = {
        Source = "deploy_empty",
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "rattle.ogg", t = 0.2 + 5/40},
            {s = common .. "cloth_4.ogg",  t = 0.5 + 5/40},
        },
        ProcDraw = false,
        ForceEmpty = true,
    },	
    ["idle_empty"] = {
        Source = "idle_empty",
    },
    ["draw"] = {
        Source = "draw",
        SoundTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "shoulder.ogg", t = 0.15},
            {s = path .. "rattle_3.ogg", t = 0.2},
        },
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 20 / 30,
        SoundTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "shoulder.ogg", t = 0.15},
            {s = path .. "rattle_3.ogg", t = 0.2},
        },
    },
    ["holster"] = {
        Source = "holster",
        LHIK = false,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = ratel, t = 0},
            {s = common .. "cloth_6.ogg", t = 0.2},
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        LHIK = false,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = ratel, t = 0},
            {s = common .. "cloth_6.ogg", t = 0.2},
        },
    },
    ["fix"] = {
        Source = "fix",
        ShellEjectAt = 0.5,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.7,
        SoundTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "rattle.ogg", t = 0.2},
            {s = path .. "chpull.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "chrelease.ogg",  t = 0.5},
        },
    },  
    ["fire"] = {
        Source = "fire",
        ShellEjectAt = 0.01,
        SoundTable = {{ s = mech, t = 0, v = 0.25 }},
    },  
	["fire_iron"] = {
        Source = "fire",
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = common .. "common_mech_light.ogg", t = 0},
            { s = mech, t = 0 }
        },
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = common .. "common_mech_light.ogg", t = 0},
            {s = path .. "mech_last.ogg", t = 0}, -- Temporary
        },
    }, 
	["fire_iron_empty"] = {
        Source = "fire_empty",
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = common .. "common_mech_light.ogg", t = 0},
            {s = path .. "mech_last.ogg", t = 0}, -- Temporary
        },
    },

    -- Base --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1.8,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 10/40},
            {s = rottle, 			                    t = 20/40},
            {s = common .. "magpouch.ogg",              t = 32/40},
            {s = "weapons/uc_osk/struggle.ogg", 		t = 42/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 56/40},
            {s = rottle, 			                    t = 60/40},
            {s = "weapons/uc_osk/magtap.ogg", 			t = 66/40},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 2.25,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 7/40},
            {s = rottle, 			                    t = 17/40},
            {s = magdrop, 			                    t = 40/40, v = 0.25},
            {s = common .. "magpouch.ogg",              t = 32/40},
            {s = "weapons/uc_osk/struggle.ogg", 		t = 46/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 62/40},
            {s = rottle, 			                    t = 69/40},
            {s = "weapons/uc_osk/boltcatch.ogg", 		t = 82/40},
            {s = rottle, 			                    t = 88/40},
        },
    },

    ["enter_inspect"] = {
        Source = "inspect_enter",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect"] = {
        Source = "inspect_loop",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect"] = {
        Source = "inspect_exit",
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.375,
        LHIKOut = 0.6,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 20/40},
            {s = rottle, 			                    t = 17/40},
            {s = "weapons/uc_osk/struggle.ogg", 		t = 60/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 70/40},
            {s = rottle, 			                    t = 69/40},
            {s = common .. "shoulder.ogg", 	        	t = 88/40, v = .5},
        },
    },
    ["enter_inspect_empty"] = {
        Source = "inspect_enter_empty",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect_empty"] = {
        Source = "inspect_loop_empty",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect_empty"] = {
        Source = "inspect_exit_empty",
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.375,
        LHIKOut = 0.6,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 20/40},
            {s = rottle, 			                    t = 17/40},
            {s = "weapons/uc_osk/struggle.ogg", 		t = 60/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 70/40},
            {s = rottle, 			                    t = 69/40},
            {s = common .. "shoulder.ogg", 	        	t = 88/40, v = .5},
        },
    },	

    -- 9mm --

    ["reload_9mm"] = {
        Source = "reload_9mm",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1.5,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout-9.ogg", 		t = 10/40},
            {s = rottle, 			                    t = 20/40},
            {s = common .. "magpouch.ogg",              t = 32/40},
            {s = "weapons/uc_osk/struggle-9.ogg", 		t = 40/40},
            {s = "weapons/uc_osk/magin-9.ogg", 			t = 53/40},
            {s = rottle, 			                    t = 60/40},
        },
    },
    ["reload_empty_9mm"] = {
        Source = "reload_empty_9mm",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1.6,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout-9.ogg", 		t = 5/40},
            {s = rottle, 			                    t = 17/40},
            {s = magdrop, 			                    t = 30/40, v = 0.25},
            {s = common .. "magpouch.ogg",              t = 32/40},
            {s = "weapons/uc_osk/struggle-9.ogg", 		t = 35/40},
            {s = "weapons/uc_osk/magin-9.ogg", 			t = 41/40},
            {s = "weapons/uc_osk/boltcatchpress-9.ogg", t = 58/40},
            {s = rottle, 			                    t = 62/40},
        },
    },

    ["enter_inspect_9mm"] = {
        Source = "inspect_enter_9mm",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect_9mm"] = {
        Source = "inspect_loop_9mm",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect_9mm"] = {
        Source = "inspect_exit_9mm",
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.375,
        LHIKOut = 0.6,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout-9.ogg", 			t = 20/40},
            {s = rottle, 			                    t = 17/40},
            {s = "weapons/uc_osk/struggle-9.ogg", 		t = 53/40},
            {s = "weapons/uc_osk/magin-9.ogg", 			t = 68/40},
            {s = rottle, 			                    t = 69/40},
        },
    },
    ["enter_inspect_empty_9mm"] = {
        Source = "inspect_enter_empty_9mm",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0, 
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect_empty_9mm"] = {
        Source = "inspect_loop_empty_9mm",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0, 
    },
    ["exit_inspect_empty_9mm"] = {
        Source = "inspect_exit_empty_9mm",
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.375,
        LHIKOut = 0.6,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout-9.ogg", 			t = 20/40},
            {s = rottle, 			                    t = 17/40},
            {s = "weapons/uc_osk/struggle-9.ogg", 		t = 53/40},
            {s = "weapons/uc_osk/magin-9.ogg", 			t = 68/40},
            {s = rottle, 			                    t = 69/40},
        },
    },	 
	
    -- ssr --

    ["reload_ssr"] = {
        Source = "reload_ssr",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 2,
        LastClip1OutTime = 0.9,
        LHIK = false,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 14/40},
            {s = rottle, 			                    t = 17/40},
            {s = common .. "magpouch.ogg",              t = 40/40},
            {s = "weapons/uc_osk/struggle.ogg", 		t = 60/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 72/40},
            {s = rottle, 			                    t = 80/40},
        },
    },
    ["reload_empty_ssr"] = {
        Source = "reload_empty_ssr",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 2.7,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 2.8,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 14/40},
            {s = rottle, 			                    t = 17/40},
            {s = common .. "magpouch.ogg",              t = 32/40},
            {s = magdrop, 			                    t = 46/40, v = 0.25},
            {s = "weapons/uc_osk/struggle.ogg", 		t = 60/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 72/40},
            {s = rottle, 			                    t = 78/40},
            {s = "weapons/uc_osk/boltcatch.ogg", 		t = 101/40},
            {s = rottle, 			                    t = 104/40},
        },
    },

    ["enter_inspect_ssr"] = {
        Source = "inspect_enter_ssr",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0, 
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect_ssr"] = {
        Source = "inspect_loop_ssr",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0, 
    },
    ["exit_inspect_ssr"] = {
        Source = "inspect_exit_ssr",
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.375,
        LHIKOut = 0.6,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 20/40},
            {s = rottle, 			                    t = 17/40},
            {s = "weapons/uc_osk/struggle.ogg", 		t = 46/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 70/40},
            {s = rottle, 			                    t = 69/40},
            -- {s = "weapons/uc_osk/boltcatch.ogg", 		t = 82/40},
        },
    },
    ["enter_inspect_empty_ssr"] = {
        Source = "inspect_enter_empty_ssr",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0, 
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect_empty_ssr"] = {
        Source = "inspect_loop_empty_ssr",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect_empty_ssr"] = {
        Source = "inspect_exit_empty_ssr",
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.375,
        LHIKOut = 0.6,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 20/40},
            {s = rottle, 			                    t = 17/40},
            {s = "weapons/uc_osk/struggle.ogg", 		t = 60/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 70/40},
            {s = rottle, 			                    t = 69/40},
            {s = common .. "shoulder.ogg", 	        	t = 88/40, v = .5},
        },
    },	 

    -- 556 --

    ["reload_556"] = {
        Source = "reload_556",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1.5,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 10/40},
            {s = rottle, 			                    t = 20/40},
            {s = common .. "magpouch.ogg",              t = 30/40},
            {s = "weapons/uc_osk/struggle.ogg", 		t = 40/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 53/40},
            {s = rottle, 			                    t = 60/40},
        },
    },
    ["reload_empty_556"] = {
        Source = "reload_empty_556",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1.85,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 3/40},
            {s = rottle, 			                    t = 17/40},
            {s = magdrop, 			                    t = 22/40, v = 0.35},
            {s = common .. "magpouch.ogg",              t = 26/40},
            {s = "weapons/uc_osk/struggle.ogg", 		t = 40/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 50/40},
            {s = rottle, 			                    t = 69/40},
            {s = "weapons/uc_osk/boltcatchpress.ogg", 	t = 70/40},
            {s = rottle, 			                    t = 75/40},
        },
    },

    ["enter_inspect_556"] = {
        Source = "inspect_enter_556",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect_556"] = {
        Source = "inspect_loop_556",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0, -- maybe im dumb
    },
    ["exit_inspect_556"] = {
        Source = "inspect_exit_556",
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.375,
        LHIKOut = 0.6,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 20/40},
            {s = rottle, 			                    t = 17/40},
            {s = "weapons/uc_osk/struggle.ogg", 		t = 60/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 70/40},
            {s = rottle, 			                    t = 69/40},
            {s = common .. "shoulder.ogg", 	        	t = 88/40, v = .5},
        },
    },
    ["enter_inspect_empty_556"] = {
        Source = "inspect_enter_empty_556",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect_empty_556"] = {
        Source = "inspect_loop_empty_556",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect_empty_556"] = {
        Source = "inspect_exit_empty_556",
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.375,
        LHIKOut = 0.6,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 20/40},
            {s = rottle, 			                    t = 17/40},
            {s = "weapons/uc_osk/struggle.ogg", 		t = 60/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 70/40},
            {s = rottle, 			                    t = 69/40},
            {s = common .. "shoulder.ogg", 	        	t = 88/40, v = .5},
        },
    },	 

	-- ak --

    ["reload_ak"] = {
        Source = "reload_ak",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1.6,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout-762.ogg", 		t = 12/40},
            {s = rottle, 			                    t = 20/40},
            {s = common .. "magpouch.ogg",              t = 32/40},
            {s = "weapons/uc_osk/struggle-762.ogg", 	t = 49/40},
            {s = "weapons/uc_osk/magin-762.ogg", 		t = 61/40},
            {s = rottle, 			                    t = 60/40},
        },
    },
    ["reload_empty_ak"] = {
        Source = "reload_empty_ak",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 2.3,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout-762.ogg", 		t = 12/40},
            {s = rottle, 			                    t = 20/40},
            {s = common .. "magpouch.ogg",              t = 32/40},
            {s = "weapons/uc_osk/struggle-762.ogg", 	t = 51/40},
            {s = "weapons/uc_osk/magin-762.ogg", 		t = 61/40},
            {s = rottle, 			                    t = 69/40},
            {s = "weapons/uc_osk/boltcatchpress.ogg", 	t = 85/40},
            {s = rottle, 			                    t = 88/40},
        },
    },

    ["enter_inspect_ak"] = {
        Source = "inspect_enter_ak",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect_ak"] = {
        Source = "inspect_loop_ak",
        -- time = 72 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0
    },
    ["exit_inspect_ak"] = {
        Source = "inspect_exit_ak",
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.375,
        LHIKOut = 0.6,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 20/40},
            {s = rottle, 			                    t = 17/40},
            {s = "weapons/uc_osk/struggle.ogg", 		t = 60/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 70/40},
            {s = rottle, 			                    t = 69/40},
            {s = common .. "shoulder.ogg", 	        	t = 88/40, v = .5},
        },
    },
    ["enter_inspect_empty_ak"] = {
        Source = "inspect_enter_empty_ak",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect_empty_ak"] = {
        Source = "inspect_loop_empty_ak",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect_empty_ak"] = {
        Source = "inspect_exit_empty_ak",
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.375,
        LHIKOut = 0.6,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 20/40},
            {s = rottle, 			                    t = 17/40},
            {s = "weapons/uc_osk/struggle.ogg", 		t = 60/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 70/40},
            {s = rottle, 			                    t = 69/40},
            {s = common .. "shoulder.ogg", 	        	t = 88/40, v = .5},
        },
    },	
	
	-- ak drum--

    ["reload_ak_drum"] = {
        Source = "reload_ak_drum",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 2.1,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.25,
        LHIKEaseIn = 0.225,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.6,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout-762.ogg", 		t = 12/40},
            {s = rottle, 			                    t = 20/40},
            {s = common .. "magpouch.ogg",              t = 32/40},
            {s = "weapons/uc_osk/struggle-762.ogg", 	t = 54/40},
            {s = "weapons/uc_osk/magin-762.ogg", 		t = 64/40},
			{s = "weapons/uc_osk/magtap.ogg", 			t = 75/40},
            {s = rottle, 			                    t = 60/40},
        },
    },
    ["reload_empty_ak_drum"] = {
        Source = "reload_empty_ak_drum",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 2.8,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.25,
        LHIKEaseIn = 0.225,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.6,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = "weapons/uc_osk/magout-762.ogg", 		t = 12/40},
            {s = rottle, 			                    t = 20/40},
            {s = common .. "magpouch.ogg",              t = 32/40},
            {s = "weapons/uc_osk/struggle-762.ogg", 	t = 54/40},
            {s = "weapons/uc_osk/magin-762.ogg", 		t = 64/40},
            {s = rottle, 			                    t = 69/40},
            {s = path .. "chpull.ogg",   				t = 95/40},
            {s = common .. "cloth_4.ogg", 				t = 98/40},
            {s = path .. "chrelease.ogg",  				t = 106/40},
            {s = rottle, 			                    t = 114/40},
        },
    },

    ["enter_inspect_ak_drum"] = {
        Source = "inspect_enter_ak_drum",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect_ak_drum"] = {
        Source = "inspect_loop_ak_drum",
        -- time = 72 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0
    },
    ["exit_inspect_ak_drum"] = {
        Source = "inspect_exit_ak_drum",
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.475,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = common .. "shoulder.ogg", 	        	t = 20/40, v = .5},
        },
    },
    ["enter_inspect_empty_ak_drum"] = {
        Source = "inspect_enter_empty_ak_drum",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect_empty_ak_drum"] = {
        Source = "inspect_loop_empty_ak_drum",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect_empty_ak_drum"] = {
        Source = "inspect_exit_empty_ak_drum",
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.475,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = common .. "shoulder.ogg", 	        	t = 20/40, v = .5},
        },
    },	
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        --InstalledEles = {"upper_flat"}, no such thing
        Slot = {"optic","sniper_optic"},
        Bone = "W_Main",
        VMScale = Vector(1.15, 1.15, 1.15),
        Offset = {
            vpos = Vector(-0, -3.78, 0.5),
            vang = Angle(90, 0, -90),
        },
        //MergeSlots = {16},
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "14\" Standard Barrel",
        Slot = "uc_myt_scar_hg",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(3.5, -4.25, -7),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -1.65, 15.5),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"sd"},
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -0.75, 9),
            vang = Angle(90, 0, -90),
        },
        MergeSlots = {14},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(-1, -1.7, 9.5),
            vang = Angle(90, 0, 180),
        },
        GivesFlags = {"tac"},
        --InstalledEles = {"ud_m16_clamp_fullsize"}
    },
    {
        PrintName = "Grip Type",
        Slot = {"uc_myt_scar_grip"},
		Hidden = true,
        DefaultAttName = "Standard Grip",
    },
    {
        PrintName = "Stock",
        Slot = {"uc_myt_scar_stock"},
        DefaultAttName = "Standard Stock",
        MergeSlots = {15},
    },
    {
        PrintName = "Magazine",
        Slot = {"uc_myt_scar_mag"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -0.75, 9),
            vang = Angle(90, 0, -90),
        },
        DefaultAttName = "20-Round Mag",
    },
    {
        PrintName = "Ammo Type",
        DefaultAttName = "\"FMJ\" Full Metal Jacket",
        Slot = "uc_ammo",
    },
    {
        PrintName = "Powder Load",
        Slot = "uc_powder",
        DefaultAttName = "Standard Load"
    },
    {
        PrintName = "Training Package",
        Slot = "uc_tp",
        DefaultAttName = "Basic Training"
    },
    {
        PrintName = "Internals",
        Slot = "uc_fg", -- Fire group
        DefaultAttName = "Standard Internals"
    },
    {
        PrintName = "Charm",
        Slot = {"charm", "fml_charm"},
        FreeSlot = true,
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0.8, -1.9, 2.5),
            vang = Angle(90, 0, -90),
        },
	},
    {
        PrintName = "M203 slot",
        Slot = "uc_ubgl",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -1.75, 6), -- this is also changed by ModifyBodygroups
            vang = Angle(90, 0, -90),
        },
        Hidden = true,
        InstalledEles = {"mount_underbarrel"},
	},
    {
        PrintName = "Tube Stock Adaptor",
        Slot = {"go_stock"},
        -- GSO support
        Hidden = true,
        InstalledEles = {"stock_tube"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -2.15, -7.5),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Hidden = true,
        InstalledEles = {"cust_irons"},
        Slot = {"ud_m16_rs"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(-0, -3.78, 0.5),
            vang = Angle(90, 0, -90),
        },
    },
}