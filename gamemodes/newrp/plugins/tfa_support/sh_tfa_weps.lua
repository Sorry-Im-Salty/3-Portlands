
--
-- Copyright (C) 2020 Taxin2012
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--



--	Writed by Taxin2012
--	https://steamcommunity.com/id/Taxin2012/



PLUGIN.GunData[ "tfa_dmak74m" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
	--Make sure exRender is always true for custom models, this keeps the inventory icons from fucking up
	exRender = true,

	Slot = "primary",
	Model = "models/weapons/w_tfa_dmak74m.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
		tang = Angle( 0, 0, 0 ),
		tfov = 0
	},
	Width = 4,
	Height = 2,
	Weight = 3,
	Price = 2000,
	
	--Weapon Parameters
	--Prim == Primary
	Prim = {
		Ammo = "assault",
		Damage = 31,
		KickUp = 0.4,
		KickDown = 0.4,
		KickHorizontal = 0.35,
		Spread = .021,
		IronAccuracy = .01
	},
	
	--Sec == Secondary
	Sec = {}
}

PLUGIN.GunData[ "tfa_ins2_k98" ] = {
	--Weapon can be Blacklisted and item will be not auto-generated
	BlackList = false,
	--Make sure exRender is always true for custom models, this keeps the inventory icons from fucking up
	exRender = true,

	Slot = "primary",
	Model = "models/weapons/tfa_ins2/w_k98.mdl",
	iconCam = {
		tpos = Vector( 0, 0, 0 ),
		tang = Angle( 0, 0, 0),
		tfov = 0
	},
	Width = 4,
	Height = 2,
	Weight = 3,
	Price = 2000,
	
	--Weapon Parameters
	--Prim == Primary
	Prim = {
		Ammo = "sniper",
		Damage = 60,
		KickUp = 0.4,
		KickDown = 0.4,
		KickHorizontal = 0.35,
		Spread = .021,
		IronAccuracy = .01
	},
	
	--Sec == Secondary
	Sec = {}
}
