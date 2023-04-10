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

SWEP.PrintName = "Oskar-21 (Do Not)"
-- True name --
SWEP.TrueName = "MK-17 (Do Not)"

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

SWEP.ViewModel = "models/weapons/arccw/slog/uc/c_oskar.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog/uc/c_oskar.mdl"
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

SWEP.ChamberSize = 1
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
SWEP.RecoilPunchBack = 1

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
     Pos = Vector(-3.52, 5, -0.341),
     Ang = Angle(0.623, 0, -5),
     Magnification = 1.1,
     SwitchToSound = "",
}

SWEP.ActivePos = Vector(0, 5, 0)
SWEP.ActiveAng = Angle(0, 0, -5)

SWEP.CustomizePos = Vector(10, 5, -5)
SWEP.CustomizeAng = Angle(20, 25, 0)

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
local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local ratel = {common .. "rattle1.ogg", common .. "rattle2.ogg", common .. "rattle3.ogg"}
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
    ["kit_sd"] = {
        NameChange = "Wischer-19",
        TrueNameChange = "MKSD-17",
        VMBodygroups = {
            {ind = 1, bg = 1},
            {ind = 2, bg = 1},
        },
        Override_IronSightStruct = {
            Pos = Vector(-3.5, 5, 0.12),
            Ang = Angle(-0.2, 0, -5),
            Magnification = 1.1
        },		
    },
    ["kit_mk"] = {
        NameChange = "Lancer-24",
        TrueNameChange = "MK-20",
        VMBodygroups = {
            {ind = 1, bg = 2},
            {ind = 2, bg = 2},
        },
        Override_IronSightStruct = {
            Pos = Vector(-3.52, 5, -0.25),
            Ang = Angle(-0.09, 0, -5),
            Magnification = 1.1
        },			
    },	
    ["kit_blast"] = {
        NameChange = "Kquaker-20",
        TrueNameChange = "MKGR-17",
        VMBodygroups = {
            {ind = 5, bg = 1},
            {ind = 6, bg = 1},			
        },
    },	
    ["kit_shot"] = {
        NameChange = "Banshee-20",
        TrueNameChange = "MKSS-17",
        VMBodygroups = {
            {ind = 5, bg = 1},
            {ind = 6, bg = 2},			
        },
    },		
    ["kit_pdw"] = {
        NameChange = "Scarlett-16",
        TrueNameChange = "MK-16",
        VMBodygroups = {
            {ind = 1, bg = 3},
            {ind = 2, bg = 3},
        },
        Override_IronSightStruct = {
            Pos = Vector(-3.52, 5, -0.38),
            Ang = Angle(0.64, 0, -5),
            Magnification = 1.1
        },			
        AttPosMods = {[3] = {vpos = Vector(0, -2.95, 12)},
        }
    },
    ["mag_pdw"] = {VMBodygroups = {{ind = 3, bg = 3},},},
    ["mag_mk"] = {VMBodygroups = {{ind = 3, bg = 2},},},
    ["mag_sd"] = {VMBodygroups = {{ind = 3, bg = 1},},},
    ["stock_pdw"] = {VMBodygroups = {{ind = 4, bg = 3},},},	
    ["stock_mk"] = {VMBodygroups = {{ind = 4, bg = 2},},},	
    ["stock_sd"] = {VMBodygroups = {{ind = 4, bg = 1},},},		
}

SWEP.DefaultBodygroups = "000000000000000"

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    if wep.Attachments[1].Installed then vm:SetBodygroup(2, 4) end
end

-- Animations --
SWEP.Hook_TranslateAnimation = function(wep, anim)		
    if wep.Attachments[2].Installed == "slog_uc_oskar_frame_blast" and wep:GetInUBGL() then
        return anim .. "_gl"		
    end
    if wep.Attachments[2].Installed == "slog_uc_oskar_frame_shot" and wep:GetInUBGL() then
        return anim .. "_gl"		
    end	
end


SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },

	["idle_gl"] = {Source = "nade_idle",        LHIK = true,         LHIKIn = 0, LHIKOut = 0,},	

    ["enter_ubgl"] = {Source = "nade_in",        LHIK = true,         LHIKIn = 0.2, LHIKOut = 0,},		
    ["exit_ubgl"] = {Source = "nade_out",        LHIK = true,         LHIKIn = 0, LHIKOut = 0.2,},		
    ["nade_load"] = {Source = "nade_load",        LHIK = true,         LHIKIn = 0.1, LHIKOut = 0.1,},	
    ["nade_fire"] = {
        Source = "nade_fire", LHIK = true,         LHIKIn = 0, LHIKOut = 0,
        SoundTable = {
            {s = path .. "mech.ogg", t = 0}, -- Temporary
        },
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
    ["fire"] = {
        Source = "fire",
        Time = 13 / 30,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0, v = 0.25 }},
    },
    ["fire_iron"] = {
        Source = "fire",
        Time = 13 / 30,
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = common .. "common_mech_light.ogg", t = 0},
            { s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }
        },
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 13 / 30,
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Temporary
        },
    },

    -- 20 Round Reloads --

    ["reload"] = {
        Source = "dry",
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
            {s = "weapons/uc_osk/struggle.ogg", 			t = 55/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 60/40},
            {s = "weapons/uc_osk/boltcatchpress.ogg", 			t = 90/40},
        },
    },
    ["reload_empty"] = {
        Source = "dry",
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
            {s = "weapons/uc_osk/struggle.ogg", 			t = 55/40},
            {s = "weapons/uc_osk/magin.ogg", 			t = 60/40},
            {s = "weapons/uc_osk/boltcatchpress.ogg", 			t = 90/40},
        },
    },

    --PDW Reloads --

    ["reload_pdw"] = {
        Source = "dry_pdw",
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
            {s = "weapons/uc_osk/struggle.ogg", 			t = 50/40},
            {s = "weapons/uc_osk/boltcatchpress.ogg", 			t = 80/40},
        },
    },
    ["reload_empty_pdw"] = {
        Source = "dry_pdw",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.5,
        LHIKOut = 0.8,
        SoundTable = {
            {s = rottle, 			t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 10/40},
            {s = "weapons/uc_osk/struggle.ogg", 			t = 50/40},
            {s = "weapons/uc_osk/boltcatchpress.ogg", 			t = 80/40},
        },
    },
	
    ["reload_pdw_gl"] = {
        Source = "dry_pdw_gl",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1.5,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.5,
        LHIKOut = 0.8,
        SoundTable = {
            {s = rottle, 			t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 10/40},
            {s = "weapons/uc_osk/struggle.ogg", 			t = 50/40},
            {s = "weapons/uc_osk/boltcatchpress.ogg", 			t = 80/40},
        },
    },
    ["reload_empty_pdw_gl"] = {
        Source = "dry_pdw_gl",
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
            {s = "weapons/uc_osk/struggle.ogg", 			t = 50/40},
            {s = "weapons/uc_osk/boltcatchpress.ogg", 			t = 80/40},
        },
    },	

    -- SD Reloads --

    ["reload_sd"] = {
        Source = "dry_sd",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1.5,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.5,
        LHIKOut = 0.8,
        SoundTable = {
            {s = rottle, 			t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 10/40},
            {s = "weapons/uc_osk/struggle.ogg", 			t = 50/40},
            {s = "weapons/uc_osk/boltcatchpress.ogg", 			t = 75/40},
        },
    },
    ["reload_empty_sd"] = {
        Source = "dry_sd",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.5,
        LHIKOut = 0.8,
        SoundTable = {
            {s = rottle, 			t = 0/40},
            {s = "weapons/uc_osk/magout.ogg", 			t = 10/40},
            {s = "weapons/uc_osk/struggle.ogg", 			t = 50/40},
            {s = "weapons/uc_osk/boltcatchpress.ogg", 			t = 75/40},
        },
    },

    -- SSP Reloads --

    ["reload_mk"] = {
        Source = "dry_mk",
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
            {s = "weapons/uc_osk/out2.wav", 			t = 12/40},			
            {s = "weapons/uc_osk/magout.ogg", 			t = 25/40},		
            {s = "weapons/uc_osk/struggle.ogg", 			t = 95/40},
            {s = "weapons/uc_osk/in2.wav", 			t = 90/40},				
            {s = "weapons/uc_osk/bolt1.wav", 			t = 122/40},			
            {s = "weapons/uc_osk/boltcatchpress.ogg", 			t = 128/40},
        },
    },
    ["reload_empty_mk"] = {
        Source = "dry_mk",
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
            {s = "weapons/uc_osk/out2.wav", 			t = 12/40},			
            {s = "weapons/uc_osk/magout.ogg", 			t = 25/40},
            {s = "weapons/uc_osk/in2.wav", 			t = 90/40},			
            {s = "weapons/uc_osk/struggle.ogg", 			t = 95/40},
            {s = "weapons/uc_osk/bolt1.wav", 			t = 122/40},			
            {s = "weapons/uc_osk/boltcatchpress.ogg", 			t = 128/40},
        },
    },
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        InstalledEles = {"upper_flat"},
        Slot = {"optic","sniper_optic"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -4.9, 0),
            vang = Angle(90, 0, -90),
        },
        VMScale = Vector(1.3, 1.3, 1.3),
    },
    {
        PrintName = "Kit",
        DefaultAttName = "Standard Kit",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_barrel_default.png", "smooth mips"),
        Slot = "uc_osk_kit",
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
            vpos = Vector(0, -2.95, 18),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"sd"},
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip","ubgl"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -1.75, 9),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"blast"},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -2, 11.5),
            vang = Angle(90, 0, -90),
        },
        GivesFlags = {"tac"},
        --InstalledEles = {"ud_m16_clamp_fullsize"}
    },
    {
        PrintName = "Stock",
        Slot = {"uc_osk_stock"},
        DefaultAttName = "Full Stock",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_stock_default.png", "smooth mips"),
        ExcludeFlags = {"m16_usas"},
    },
    {
        PrintName = "Magazine",
        Slot = {"uc_osk_mag"},
        DefaultAttName = "30-Round Mag",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_mag_30.png", "smooth mips"),
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