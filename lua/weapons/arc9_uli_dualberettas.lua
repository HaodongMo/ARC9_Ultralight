AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC-9 - Ultralight"

SWEP.PrintName = ".40 Dual Elites"
SWEP.TrueName = "Dual Berettas"

SWEP.Class = "Handgun"
SWEP.Trivia = {
    ["Country of Origin"] = "Italy",
    ["Caliber"] = ".40 S&W",
    ["Weight (Loaded)"] = "1.15kg",
    ["Projectile Weight"] = "8 Grams",
    ["Muzzle Velocity"] = "1280 Feet/Second",
    ["Muzzle Energy"] = "606 Joules"
}

SWEP.Credits = {
    Author = "Arctic",
    Assets = "Counter-Strike Source"
}


if ARC9:UseTrueNames() then

SWEP.Description = [[Firing two large-mag Berettas at once will lower accuracy and increase load times. On the bright side, you'll get to fire two large-mag Berettas at once.]]

SWEP.PrintName = SWEP.TrueName

else

SWEP.Description = [[Firing two large-mag Elites at once will lower accuracy and increase load times. On the bright side, you'll get to fire two large-mag Elites at once.]]

end

SWEP.ViewModel = "models/weapons/cstrike/c_pist_elite.mdl"
SWEP.WorldModel = "models/weapons/w_pist_elite.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/cstrike/c_pist_elite.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-19, 8, -6),
    Ang = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.SpreadMultHipFire = 3
SWEP.RecoilMultHipFire = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 26 -- Damage done at point blank range
SWEP.DamageMin = 16 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 1200 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 2 -- Units of wood that can be penetrated by this gun.

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 10000

-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 2 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

-------------------------- FIREMODES

SWEP.RPM = 800

-- Works different to ArcCW

-- -1: Automatic
-- 0: Safe. Don't use this for safety.
-- 1: Semi.
-- 2: Two-round burst.
-- 3: Three-round burst.
-- n: n-round burst.
SWEP.Firemodes = {
    {
        Mode = 1,
        -- add other attachment modifiers
    },
    {
        Mode = 2,
    }
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.7 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.7 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 50 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.Akimbo = true

-------------------------- SPREAD

SWEP.Spread = 0.01

SWEP.SpreadAddRecoil = 0.0002 -- Applied per unit of recoil.

-------------------------- HANDLING

SWEP.FreeAimRadius = 7.5 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 2 -- How much the gun sways.

SWEP.SwayMultMidAir = 2
SWEP.SwayMultMove = 1.15
SWEP.SwayMultCrouch = 0.66
SWEP.SwayMultShooting = 1.2

SWEP.FreeAimRadiusSights = 0

SWEP.SwayMultSights = 0.3

SWEP.AimDownSightsTime = 0.25 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.99
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false

SWEP.BashDamage = 50
SWEP.BashLungeRange = 128
SWEP.BashRange = 64
SWEP.PreBashTime = 0.25
SWEP.PostBashTime = 0.5

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(0, -8, 2),
    Ang = Angle(0, 0, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, -1, -1),
        Ang = Angle(0, 0, 0),
    },
    Magnification = 1.1,
    CrosshairInSights = true
}

SWEP.SprintAng = Angle(0, -15, 0)
SWEP.SprintPos = Vector(0, -8, 4)

SWEP.ActivePos = Vector(0, -8, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(0, -10, 2)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(24, 32, 6)
SWEP.CustomizeSnapshotFOV = 70
SWEP.CustomizeNoRotate = true

-------------------------- HoldTypes

SWEP.HoldType = "duel"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeHolstered = "normal"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_pistol"
SWEP.MuzzleEffectQCA = 1
SWEP.MuzzleEffectQCAEvenShot = 2

SWEP.CaseEffectQCA = 3
SWEP.CaseEffectQCAEvenShot = 4

SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellCorrectAng = Angle(0, 180, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

-------------------------- SOUNDS

SWEP.ShootSound = "weapons/elite/elite-1.wav"
SWEP.ShootSoundSilenced = "weapons/usp/usp1.wav"
SWEP.DryFireSound = "weapons/clipempty_pistol.wav"

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.Hook_TranslateAnimation = function(swep, anim)
    if anim == "idle" and swep:Clip1() == 1 then
        return anim .. "_leftempty"
    end

    if swep:Clip1() <= 1 then
        return anim .. "_empty"
    elseif swep:GetNextPrimaryFire() + 0.15 >= CurTime() then
        return anim .. "_chain"
    end
end

SWEP.Animations = {
    ["fire_left"] = {
        Source = "shoot_left1",
        Mult = 0.5
    },
    ["fire_right"] = {
        Source = "shoot_right1",
        Mult = 0.5
    },
    ["fire_left_chain"] = {
        Source = "shoot_left2",
        Mult = 0.5
    },
    ["fire_right_chain"] = {
        Source = "shoot_right2",
        Mult = 0.5
    },
    ["fire_left_empty"] = {
        Source = "shoot_leftlast",
        Mult = 0.5
    },
    ["fire_right_empty"] = {
        Source = "shoot_rightlast",
        Mult = 0.5
    },
    ["reload"] = {
        Source = "reload"
    },
    ["draw"] = {
        Source = "draw"
    },
    ["holster"] = {
        Source = "draw",
        Reverse = true
    },
    ["idle"] = {
        Source = "idle"
    },
    ["idle_leftempty"] = {
        Source = "idle_leftempty"
    },
}

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {
}

SWEP.Attachments = {
}