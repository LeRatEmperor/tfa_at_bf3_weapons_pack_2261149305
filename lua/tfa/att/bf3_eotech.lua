if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Eotech"
ATTACHMENT.Icon = "bf3/eotech.png"
ATTACHMENT.ShortName = "EOTECH"

ATTACHMENT.WeaponTable = {
	
	["Bodygroups_V"] = {
		[0] = 4
	},	
	["Bodygroups_W"] = {
		[0] = 4
	},
	["IronSightsPos"] = function( wep, val ) return wep.SightsPos_Eotech or val end,
	["IronSightsAng"] = function( wep, val ) return wep.SightsAng_Eotech or val end,
	["IronSightsAng"] = function( wep, val ) return wep.SightsAng_ACOG or val end,	
	["Secondary"] = {
		["IronFOV"] = function( wep, val ) return wep.Secondary.IronFOV_Collimator or val * 0.95 end
	},	
}

function ATTACHMENT:Attach(wep)
//	wep.Secondary.IronFOV = 60
end

function ATTACHMENT:Detach(wep)
//	wep.Secondary.IronFOV = 75
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end