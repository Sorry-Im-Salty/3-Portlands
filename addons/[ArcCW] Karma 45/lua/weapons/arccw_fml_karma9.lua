SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Firearms" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "KF 92"
SWEP.TrueName = "Karma 9"
SWEP.Trivia_Class = "Energy Submachine Gun"
SWEP.Trivia_Desc = "Ultra fast-firing SMG that depletes magazine in seconds. Damage increases over long distance. Has 4-Round Burst mode. Poor penetration."
SWEP.Trivia_Manufacturer = "Kendall Ballistics"
SWEP.Trivia_Calibre = "Shocked .45 ACP"
SWEP.Trivia_Mechanism = "Magic"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 2077

SWEP.Slot = 2

SWEP.CrouchPos = Vector(-6.2, 1, -0.5)
SWEP.CrouchAng = Angle(0, 0, -45)

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/fml/c_karma9.mdl"
SWEP.WorldModel = "models/weapons/arccw/fml/w_karma9.mdl"
SWEP.ViewModelFOV = 70

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 195

SWEP.Damage = 15
SWEP.DamageMin = 60 -- damage done at maximum range
SWEP.Range = 200 -- in METRES
SWEP.Penetration = 2
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1070 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 25 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 40
SWEP.ReducedClipSize = 15

SWEP.Recoil = 0.3
SWEP.RecoilSide = 0.35
SWEP.RecoilRise = 0.5
SWEP.VisualRecoilMult = 0.9

SWEP.Delay = 60 / 1300 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2
    },
    {
        Mode = -4,
        RunawayBurst = true,
        Mult_RecoilRise = 1.2,		
        Mult_RecoilSide = 0.8,
        Mult_AccuracyMOA = 0.7,
        PostBurstDelay = 0.08,
        Mult_RPM = 1.5,		
    },
    {
        Mode = 1
    },
    {
        Mode = 0
    }
}

SWEP.AccuracyMOA = 8 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 200

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses
SWEP.MagID = "g18" -- the magazine pool this gun draws from

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 200 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_fml_karma9/ump45_fp.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_fml_karma9/mp5k_suppressed_fp.wav"
SWEP.DistantShootSound = "weapons/arccw_fml_karma9/mp5k_dist.wav"

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.925
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.205

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.185, -5, 0.298),
    Ang = Angle(0.259, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "" -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 3, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0.86, 2.065, -1.841)
SWEP.HolsterAng = Angle(-5.802, 33.817, -30.932)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(4, -2, -1.5)

SWEP.BarrelLength = 15

SWEP.AttachmentElements = {
    ["nors"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {},
    },
    ["bkrail"] = {
     VMElements = {
        {
            Model = "models/weapons/arccw/atts/backup_rail.mdl",
              Bone = "Weapon_Main",
             Offset = {
                 pos = Vector(0, -3, 10),
                ang = Angle(180, 90, 180),
           },
		 },
      }
    },		
}

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "Weapon_Main", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -3, 5), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(10, 0.739, -4.9),
            wang = Angle(-10, 0, 180)
        },
        InstalledEles = {"nors"},			
    },
    {
        PrintName = "Backup Optic", -- print name
        Slot = {"optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "Weapon_Main", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.55, -3.2, 10), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -45),
            wpos = Vector(15, 0.832, -5),
            wang = Angle(-10.393, 0, -135)
        },	
        InstalledEles = {"bkrail"},		
        KeepBaseIrons = true,
		ExtraSightDist = 5	
    },		
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "Weapon_Main",
        Offset = {
            vpos = Vector(-0, -2.125, 12),
            vang = Angle(90, 0, -90),
            wpos = Vector(16, 0.782, -5.3),
            wang = Angle(-9.79, 0, 180)
        }
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "style_pistol"},
        Bone = "Weapon_Main",
        Offset = {
            vang = Angle(90,0, -90),
            vpos = Vector(0, -0.7, 10),		
            wpos = Vector(14, 0.602, -3.2),
            wang = Angle(-10.216, 0, 180)
        },		
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Weapon_Main",
        Offset = {
            vpos = Vector(-0.8, -1.5, 11), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, 180),
            wpos = Vector(15.625, -0.253, -6.298),
            wang = Angle(-8.829, -0.556, 90)
        },
    },
    {
        PrintName = "Grip",
        Slot = "grip",
        DefaultAttName = "Standard Grip"
    },
    {
        PrintName = "Stock",
        Slot = "stock",
        DefaultAttName = "Standard Stock"
    },
    {
        PrintName = "Fire Group",
        Slot = "fcg",
        DefaultAttName = "Standard FCG"
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_bullet"
    },	
    {
        PrintName = "Perk",
        Slot = "perk"
    },	
    {
        PrintName = "Charm",
        DefaultAttName = "None",
        Slot = {"charm", "fml_charm"},
        Bone = "Weapon_Main",
        Offset = {
            vpos = Vector(0.4, -2, 4),
            vang = Angle(90, 0, -90),
            wpos = Vector(8, 1, -3),
            wang = Angle(-9, 0, 180)
        },
		FreeSlot = true,
    },			
}


SWEP.Animations = {
    ["draw"] = {
        Source = "draw",
        Time = 35/60,
        SoundTable = {{s = "weapons/arccw/ak47/ak47_draw.wav", t = 0}},
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 1,
    },
    ["ready"] = {
        Source = "deploy",
        Time = 70/60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = {"fire"},
        Time = 30/50,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "iron",
        Time = 30/60,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "wet",
        Time = 2.6,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {20, 39},
        FrameRate = 60,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.35,
    },
    ["reload_empty"] = {
        Source = "dry",
        Time = 3.1,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {37, 58, 75, 92, 119, 124},
        FrameRate = 60,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.35,
    },	
}