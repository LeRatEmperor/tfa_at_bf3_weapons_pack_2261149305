if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Kobra"
ATTACHMENT.Icon = "bf3/kobra.png"
ATTACHMENT.ShortName = "KOBRA"

ATTACHMENT.WeaponTable = {
	
	["Bodygroups_V"] = {
		[0] = 2
	},	
	["Bodygroups_W"] = {
		[0] = 2
	},	
	["IronSightsPos"] = function( wep, val ) return wep.SightsPos_Kobra or val end,
	["IronSightsAng"] = function( wep, val ) return wep.SightsAng_Kobra or val end,	
	["Secondary"] = {
		["IronFOV"] = function( wep, val ) return wep.Secondary.IronFOV_Collimator or val * 0.95 end
	},
}

function ATTACHMENT:Attach(wep)
	wep.Secondary.IronFOV = 60
end

function ATTACHMENT:Detach(wep)
	wep.Secondary.IronFOV = 75
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end