ATT.PrintName = "Silencer"
ATT.CompactName = "SILENCER"
ATT.Icon = Material("entities/arc9_att_muzzle_supp_a.png", "mips smooth")
ATT.Description = [[Silencer for weapons with threaded barrels which support it.]]
ATT.SortOrder = 1

ATT.Category = "uli_silencer"

ATT.Scale = 1.25
ATT.ModelOffset = Vector(0.25, 0, 0)

ATT.Silencer = true
ATT.ShootVolumeMult = 0.8
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.RecoilMult = 0.8
ATT.SpreadMultSights = 0.75
ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.9

ATT.Hook_TranslateAnimation = function(swep, anim)
    return anim .. "_silenced"
end