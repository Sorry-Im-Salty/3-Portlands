include('shared.lua')

SWEP.WepSelectIcon = surface.GetTextureID("vgui/entities/hud/weapon_tfa_dmak74m")
killicon.Add("tfa_dmak74m", "vgui/entities/hud/weapon_tfa_dmak74m", Color(255, 255, 255, 255))

local soundData = {
    name 		= "Weapon_danger_akm_rifle.deploy" ,
    channel 	= CHAN_WEAPON,
    volume 		= 0.5,
    soundlevel 	= 80,
    pitchstart 	= 100,
    pitchend 	= 100,
    sound 		= "weapons/deploy.wav"
}
sound.Add(soundData)
local soundData = {
    name 		= "Weapon_danger_akm_rifle.magrelease" ,
    channel 	= CHAN_WEAPON,
    volume 		= 0.5,
    soundlevel 	= 80,
    pitchstart 	= 100,
    pitchend 	= 100,
    sound 		= "weapons/ak74_magrelease.wav"
}
sound.Add(soundData)
local soundData = {
    name 		= "Weapon_danger_akm_rifle.Magout" ,
    channel 	= CHAN_WEAPON,
    volume 		= 0.5,
    soundlevel 	= 80,
    pitchstart 	= 100,
    pitchend 	= 100,
    sound 		= "weapons/ak74_magout.wav"
}
sound.Add(soundData)
local soundData = {
    name 		= "Weapon_danger_akm_rifle.Magin" ,
    channel 	= CHAN_WEAPON,
    volume 		= 0.5,
    soundlevel 	= 80,
    pitchstart 	= 100,
    pitchend 	= 100,
    sound 		= "weapons/ak74_magin.wav"
}
sound.Add(soundData)
local soundData = {
    name 		= "Weapon_danger_akm_rifle.bolt" ,
    channel 	= CHAN_WEAPON,
    volume 		= 0.5,
    soundlevel 	= 80,
    pitchstart 	= 100,
    pitchend 	= 100,
    sound 		= "weapons/ak74_boltback.wav"
}
sound.Add(soundData)
local soundData = {
    name 		= "Weapon_danger_akm_rifle.bolt2" ,
    channel 	= CHAN_WEAPON,
    volume 		= 0.5,
    soundlevel 	= 80,
    pitchstart 	= 100,
    pitchend 	= 100,
    sound 		= "weapons/ak74_boltrelease.wav"
}
sound.Add(soundData)
local soundData = {
    name 		= "Weapon_danger_akm_rifle.rattle" ,
    channel 	= CHAN_WEAPON,
    volume 		= 0.5,
    soundlevel 	= 80,
    pitchstart 	= 100,
    pitchend 	= 100,
    sound 		= "weapons/ak74_rattle.wav"
}
sound.Add(soundData)
