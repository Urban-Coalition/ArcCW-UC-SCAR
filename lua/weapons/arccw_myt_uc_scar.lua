SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Coalition"
SWEP.UC_CategoryPack = "5Urban One-offs"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/weapons/arccw/ud_shells/556.mdl"
SWEP.ShellScale = 1.4
SWEP.ShellPitch = 100

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 3
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "Osckée 21"
-- True name --
SWEP.TrueName = "MK17"

-- Trivia --

SWEP.Trivia_Class = "Battle Rifle"
SWEP.Trivia_Desc = "Heavy hitting assault rifle. Versitile and compact."
SWEP.Trivia_Calibre = ".308 NATO"
SWEP.Trivia_Country = "Belgium"
SWEP.Trivia_Year = 2006

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_uc_myt_scar.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_uc_myt_scar.mdl"
SWEP.ViewModelFOV = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage --

SWEP.Damage = 47 
SWEP.DamageMin = 32
SWEP.RangeMin = 20
SWEP.Range = 200
SWEP.Penetration = 18
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 400

-- Mag size --

SWEP.chreleaseSize = 1
SWEP.Primary.ClipSize = 20
SWEP.ExtendedClipSize = 30
SWEP.ReducedClipSize = 10

-- Recoil --

SWEP.Recoil = 0.7
SWEP.RecoilSide = 0.3

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

SWEP.Primary.Ammo = "smg1"

-- Speed multipliers --

SWEP.SpeedMult = 0.925
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.5
SWEP.ShootSpeedMult = 0.9

-- Length --

SWEP.BarrelLength = 48
SWEP.ExtraSightDist = 7

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(0.5, 5, -0.5)
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
    pos        =    Vector(-8, 4, -7.5),
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
    common .. "sup_tail.ogg"
}
SWEP.DistantShootSoundOutdoorsVolume = 1
SWEP.DistantShootSoundIndoorsVolume = 1
SWEP.Hook_AddShootSound = ArcCW.UC.InnyOuty

-- Bodygroups --


SWEP.AttachmentElements = {	
    ["conv_9mm"] = {
        NameChange = "Aanvulloir 16",
        TrueNameChange = "MK-16",
        VMBodygroups = {
            {ind = 2, bg = 3},
            {ind = 4, bg = 4},
        },
        --[[Override_IronSightStruct = {
            Pos = Vector(-3.52, 5, -0.38),
            Ang = Angle(0.64, 0, -5),
            Magnification = 1.1
        },]]
        AttPosMods = {[3] = {vpos = Vector(0, -2.95, 12)},
        }
    },	 
	["conv_ak"] = {
        NameChange = "Chijmaar 32",
        TrueNameChange = "MK-47",
        VMBodygroups = {
            {ind = 2, bg = 2},
            {ind = 4, bg = 2},
        },
        --[[Override_IronSightStruct = {
            Pos = Vector(-3.52, 5, -0.38),
            Ang = Angle(0.64, 0, -5),
            Magnification = 1.1
        },]]
        AttPosMods = {[3] = {vpos = Vector(0, -2.95, 12)},
        }
    },
	["conv_556"] = {
        NameChange = "Scarlett 17",
        TrueNameChange = "MK-17",
        VMBodygroups = {
            {ind = 2, bg = 1},
            {ind = 4, bg = 1},
        },
        --[[Override_IronSightStruct = {
            Pos = Vector(-3.52, 5, -0.38),
            Ang = Angle(0.64, 0, -5),
            Magnification = 1.1
        },]]
        AttPosMods = {[3] = {vpos = Vector(0, -2.95, 12)},
        }
    },	
	["conv_ssr"] = {
        NameChange = "Lancierie 24",
        TrueNameChange = "MK-SSR",
        VMBodygroups = {
            {ind = 2, bg = 5},
            {ind = 4, bg = 0},
        },
        --[[Override_IronSightStruct = {
            Pos = Vector(-3.52, 5, -0.38),
            Ang = Angle(0.64, 0, -5),
            Magnification = 1.1
        },]]
        AttPosMods = {[3] = {vpos = Vector(0, -2.95, 12)},
        }
    },	
	["stock_ssr"] = { VMBodygroups = { {ind = 7, bg = 6}, }, },
	["stock_pdw"] = { VMBodygroups = { {ind = 7, bg = 4}, }, },
	["stock_fold"] = { VMBodygroups = { {ind = 7, bg = 2}, }, },
	["hg_l"] = { VMBodygroups = { {ind = 8, bg = 3}, {ind = 9, bg = 3}, }, },
	["hg_sd"] = { VMBodygroups = { {ind = 8, bg = 4}, {ind = 9, bg = 4},	{ind = 5, bg = 2}, {ind = 1, bg = 3}, }, },
	["hg_s"] = { VMBodygroups = { {ind = 8, bg = 1}, {ind = 9, bg = 1},		{ind = 5, bg = 2}, {ind = 1, bg = 1}, }, },
	["hg_xs"] = { VMBodygroups = { {ind = 8, bg = 2}, {ind = 9, bg = 2},	{ind = 5, bg = 4}, {ind = 1, bg = 2}, }, },
}

SWEP.DefaultBodygroups = "000000000000000"

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    if wep.Attachments[1].Installed then vm:SetBodygroup(5, 1) end
end

SWEP.NoHideLeftHandInCustomization = true
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },

    ["ready"] = {
        Source = "deploy",
        Time = 45 / 30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "rattle.ogg", t = 0.2},
            {s = path .. "chpull.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "chrelease.ogg",  t = 0.5},
        },
        ProcDraw = true,
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
        LHIK = true,
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
        Time = 20 / 30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = ratel, t = 0},
            {s = common .. "cloth_6.ogg", t = 0.2},
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
        MinProgress = 1.5,
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
        MinProgress = 2,
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
        LHIKEaseOut = 0.3,
        LHIKOut = 0.475,
        SoundTable = {
            {s = common .. "movement-rifle-04.ogg", t = 0.2},
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.2},
            {s = common .. "movement-rifle-03.ogg", t = 1.25},
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
        LHIKEaseOut = 0.3,
        LHIKOut = 0.475,
        SoundTable = {
            {s = common .. "movement-rifle-04.ogg", t = 0.2},
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.2},
            {s = common .. "movement-rifle-03.ogg", t = 1.25},
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
            {s = rottle, 			t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 10/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 55/40},
            {s = "weapons/uc_osk/boltcatch.ogg", 			t = 85/40},
        },
    },
    ["reload_empty_9mm"] = {
        Source = "reload_empty_9mm",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, 			t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 10/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 55/40},
            {s = "weapons/uc_osk/boltcatch.ogg", 			t = 85/40},
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
        LHIKEaseOut = 0.3,
        LHIKOut = 0.475,
        SoundTable = {
            {s = common .. "movement-rifle-04.ogg", t = 0.2},
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.2},
            {s = common .. "movement-rifle-03.ogg", t = 1.25},
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
        LHIKEaseOut = 0.3,
        LHIKOut = 0.475,
        SoundTable = {
            {s = common .. "movement-rifle-04.ogg", t = 0.2},
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.2},
            {s = common .. "movement-rifle-03.ogg", t = 1.25},
        },
    },	 
	
    -- ssr --

    ["reload_ssr"] = {
        Source = "reload_ssr",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1.5,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, 			t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 10/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 55/40},
            {s = "weapons/uc_osk/boltcatch.ogg", 			t = 85/40},
        },
    },
    ["reload_empty_ssr"] = {
        Source = "reload_empty_ssr",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, 			t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 10/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 55/40},
            {s = "weapons/uc_osk/boltcatch.ogg", 			t = 85/40},
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
        LHIKEaseOut = 0.3,
        LHIKOut = 0.475,
        SoundTable = {
            {s = common .. "movement-rifle-04.ogg", t = 0.2},
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.2},
            {s = common .. "movement-rifle-03.ogg", t = 1.25},
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
        LHIKEaseOut = 0.3,
        LHIKOut = 0.475,
        SoundTable = {
            {s = common .. "movement-rifle-04.ogg", t = 0.2},
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.2},
            {s = common .. "movement-rifle-03.ogg", t = 1.25},
        },
    },	 

    -- 556 --

    ["reload_556"] = {
        Source = "reload_556",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1.5,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, 			t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 10/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 55/40},
            {s = "weapons/uc_osk/boltcatch.ogg", 			t = 85/40},
        },
    },
    ["reload_empty_556"] = {
        Source = "reload_empty_556",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, 			t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 10/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 55/40},
            {s = "weapons/uc_osk/boltcatch.ogg", 			t = 85/40},
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
        LHIKEaseOut = 0.3,
        LHIKOut = 0.475,
        SoundTable = {
            {s = common .. "movement-rifle-04.ogg", t = 0.2},
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.2},
            {s = common .. "movement-rifle-03.ogg", t = 1.25},
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
        LHIKEaseOut = 0.3,
        LHIKOut = 0.475,
        SoundTable = {
            {s = common .. "movement-rifle-04.ogg", t = 0.2},
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.2},
            {s = common .. "movement-rifle-03.ogg", t = 1.25},
        },
    },	 

	-- ak --

    ["reload_ak"] = {
        Source = "reload_ak",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1.5,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, 			t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 10/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 55/40},
            {s = "weapons/uc_osk/boltcatch.ogg", 			t = 85/40},
        },
    },
    ["reload_empty_ak"] = {
        Source = "reload_empty_ak",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, 			t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 10/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 55/40},
            {s = "weapons/uc_osk/boltcatch.ogg", 			t = 85/40},
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
        LHIKEaseOut = 0.3,
        LHIKOut = 0.475,
        SoundTable = {
            {s = common .. "movement-rifle-04.ogg", t = 0.2},
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.2},
            {s = common .. "movement-rifle-03.ogg", t = 1.25},
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
        LHIKEaseOut = 0.3,
        LHIKOut = 0.475,
        SoundTable = {
            {s = common .. "movement-rifle-04.ogg", t = 0.2},
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.2},
            {s = common .. "movement-rifle-03.ogg", t = 1.25},
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
        Offset = {
            vpos = Vector(0, -3.75, 0.5),
            vang = Angle(90, 0, -90),
        },
        VMScale = Vector(1.3, 1.3, 1.3),
    },
    {
        PrintName = "Handguard",
        DefaultAttName = "Standard Handguard",
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
        Slot = {"foregrip","ubgl"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -0.75, 9),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"blast"},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0.1, -3.6, 9),
            vang = Angle(90, 0, 90),
        },
        GivesFlags = {"tac"},
        --InstalledEles = {"ud_m16_clamp_fullsize"}
    },
    {
        PrintName = "Stock",
        Slot = {"uc_myt_scar_stock"},
        DefaultAttName = "Full Stock",
    },
    {
        PrintName = "Magazine",
        Slot = {"uc_myt_scar_mag"},
        DefaultAttName = "30-Round Mag",
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
        Slot = {"charm", "fml_charm", "ud_m16_charm"},
        FreeSlot = true,
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(0.6, 1, 5),
            vang = Angle(90, 0, -90),
        },
    },
}