SWEP.Base = "arccw_base"                  ----- BOCW 1911 -----
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Black Ops Cold War"
SWEP.AdminOnly = false

SWEP.PrintName = "1911"
SWEP.TrueName = "M1911"
SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "Semi-auto pistol. Good accuracy with a modest ammo capacity. High damage in close range encounters."
SWEP.Trivia_Manufacturer = "Colt Manufacturing Company"
SWEP.Trivia_Calibre = ".45 ACP"
SWEP.Trivia_Mechanism = "Short Recoil Operation"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1911

SWEP.Slot = 1

SWEP.NZPaPName = "Pain"
SWEP.NZPreventBox = false

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/v_1911_bocw.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_cw_1911.mdl"
SWEP.MirrorVMWM = false
SWEP.WorldModelOffset = {
    scale = 1,
    pos        =    Vector(2.5, 1.5, -5.6),
    ang        =    Angle(0, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}
SWEP.ViewModelFOV = 70

SWEP.Damage = 50
SWEP.DamageMin = 35 -- damage done at maximum range
SWEP.Range = 75 -- in METRES
SWEP.Penetration = 3
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 253 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.CanFireUnderwater = false
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 7 -- DefaultClip is automatically set.
SWEP.ForceDefaultAmmo = 0
SWEP.ExtendedClipSize = 20
SWEP.ReducedClipSize = 5

SWEP.Recoil = 0.2
SWEP.RecoilSide = 0.1
SWEP.RecoilRise = 2

SWEP.Delay = 60 / 400 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 100

SWEP.AccuracyMOA = 10 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 400 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses
SWEP.MagID = "m1911" -- the magazine pool this gun draws from

SWEP.ShootVol = 115 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/1911_fire.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/1911_fire_supressed.wav"
SWEP.DistantShootSound = "1911.firedist"
SWEP.ShootDrySound = "weapons/arccw/1911_fire_empty.wav"
SWEP.MeleeSwingSound = "1911.bash"
SWEP.MeleeMissSound = "weapons/arccw/nothing.wav"

SWEP.MeleeHitSound = "weapons/arccw/melee_hitworld.wav"
SWEP.MeleeHitNPCSound = "weapons/arccw/melee_hitbody.wav"

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 2

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.125

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 5.03

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.MeleeDamage = 50
SWEP.MeleeRange = 16
SWEP.MeleeDamageType = DMG_CLUB
SWEP.MeleeTime = 0.5
SWEP.MeleeGesture = nil
SWEP.MeleeAttackTime = 0.1

SWEP.IronSightStruct = {
    Pos = Vector(-1.4, 12, 2.60),
    Ang = Angle(0, 0, 11.75),
    Magnification = 1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(-0.2, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(10, -5, 2) -- 10, -5, 2
SWEP.CustomizeAng = Angle(15, 40, 15) -- 15, 40, 15

SWEP.SprintPos = Vector(0, 3, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0, 0, 0)
SWEP.HolsterAng = Angle(-5, 15, -10)

SWEP.CrouchPos = Vector(-1.5, 0, 1)
SWEP.CrouchAng = Angle(0, 0, -15)

SWEP.SprintPos = Vector(0, 0, 1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentElements = {
    ["ammo_papunch"] = {
        NameChange = "Pain",
    },
    ["mount"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/v_1911_bocw_railmount.mdl",
                Bone = "tag_weapon",
                Scale = Vector(-1, -1, 1),
                Offset = {
                    pos = Vector(1.3, 0, 3.3),
                    ang = Angle(0, 180, 0)
                }
            }
        },
        WMElements = {
            {
                Model = "models/weapons/arccw/atts/v_1911_bocw_railmount.mdl",
                Scale = Vector(-1, -1, 1),
                Offset = {
                    pos = Vector(0,0,0),
                    ang = Angle(0,0,0)
                }
            }
        },
    },
}

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = "optic_lp", -- what kind of attachments can fit here, can be string or table
        Bone = "tag_weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(2, 0, 3.4), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(3, 1.476, -4),
            wang = Angle(0, 0, 180)
        },
        InstalledEles = {"mount"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(7.2, 0, 2.58),
            vang = Angle(0, 0, 11.75),
            wpos = Vector(9.4, 1.5, -3.52),
            wang = Angle(0, 0, 0)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip_pistol", "style_pistol"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(3.2, -0.1, 1.4),
            vang = Angle(0, 0, 0),
            wpos = Vector(5.5, 1.4, -2.5),
            wang = Angle(90, 0, 0)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac_pistol",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(5, 0, 1.5), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(6.7, 1.5, -2.3),
            wang = Angle(0, 0, 180)
        },
    },
    {
        PrintName = "Fire Group",
        Slot = "fcg",
        DefaultAttName = "Standard FCG"
    },
    {
        PrintName = "Ammo Type",
        DefaultAttName = "Normal Calibre",
        Slot = {"ammo_bullet", "ammo_pap"}
    },
    {
        PrintName = "Perk 1",
        DefaultAttName = "No Perk",
        Slot = "perk"
    },
    {
        PrintName = "Perk 2",
        DefaultAttName = "No Perk",
        Slot = {"perk", "bo1_perk"}
    },
    {
        PrintName = "Cosmetic",
        DefaultAttName = "Black Finish",
        Slot = {"1911_skin"},
        FreeSlot = true,
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        VMScale = Vector(0.60, 0.60, 0.60),
        WMScale = Vector(0.60, 0.60, 0.60),
        Bone = "tag_slide_animate",
        Offset = {
            vpos = Vector(3.6, -0.45, 0.12),
            vang = Angle(0, 0, 0),
            wpos = Vector(7, 1.94, -3.25),
            wang = Angle(0, 0, 180)
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    local papcamo = wep.Attachments[6].Installed == "ammo_papunch"
    if wep.Attachments[9].Installed == "bocw_1911_skin" then vm:SetSkin(1) end
    if papcamo then return vm:SetSkin(2) end
end


SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 2
    },
    ["idle_empty"] = {
        Source = "idle_empty",
        Time = 2
    },
    ["draw"] = {
        Source = "pullout",
        Time = 0.50,
        SoundTable = {
            {
            s = "weapons/arccw/1911_draw3.wav",
            t = 0
            }
        }
    },
    ["draw_empty"] = {
        Source = "pullout_empty",
        Time = 0.50,
        SoundTable = {
            {
            s = "weapons/arccw/1911_draw3.wav",
            t = 0
            }
        }
    },
    ["holster"] = {
        Source = "putaway",
        Time = 0.50,
        SoundTable = {
            {
            s = "weapons/arccw/1911_draw1.wav",
            t = 0
            }
        }
    },
    ["holster_empty"] = {
        Source = "putaway_empty",
        Time = 0.50,
        SoundTable = {
            {
            s = "weapons/arccw/1911_draw1.wav",
            t = 0
            }
        }
    },
    ["ready"] = {
        Source = "pullout_first",
        Time = 1.2,
    },
    ["fire"] = {
        Source = {"fire"},
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_ads",
        ShellEjectAt = 0,
        Time = 0.5,
    },
    ["fire_empty"] = {
        Source = {"fire_lastshot"},
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "fire_ads_lastshot",
        ShellEjectAt = 0,
        Time = 1,
    },
    ["reload"] = {
        Source = "reload",
        Time = 2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.50,
        LHIKOut = 0.50,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        FrameRate = 37,
        LHIK = true,
        LHIKIn = 0.50,
        LHIKOut = 0.50,
    },
    ["enter_sprint"] = {
        Source = "base_sprint_in",
        Time = 0.2
    },
    ["idle_sprint"] = {
        Source = "base_sprint_loop",
        Time = 2
    },
    ["exit_sprint"] = {
        Source = "base_sprint_out",
        Time = 0.2
    },
    ["enter_sprint_empty"] = {
        Source = "base_sprint_in_empty",
        Time = 0.2
    },
    ["idle_sprint_empty"] = {
        Source = "base_sprint_loop_empty",
        Time = 2
    },
    ["exit_sprint_empty"] = {
        Source = "base_sprint_out_empty",
        Time = 0.2
    },
}