if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "ACOG"
ATTACHMENT.Icon = "bf3/acog.png"
ATTACHMENT.ShortName = "ACOG"

ATTACHMENT.WeaponTable = {
	
	["Bodygroups_V"] = {
		[0] = 3
	},	
	["Bodygroups_W"] = {
		[0] = 3
	},	
	["IronSightsPos"] = function( wep, val ) return wep.SightsPos_ACOG or val end,
	["IronSightsAng"] = function( wep, val ) return wep.SightsAng_ACOG or val end,	
			["Secondary"] = {
		["IronFOV"] = function( wep, val ) return wep.Secondary.IronFOV_ACOG or val * 0.95 end
	},
}

function ATTACHMENT:Attach(wep)
//	wep.Secondary.IronFOV = 40
end

function ATTACHMENT:Detach(wep)
//	wep.Secondary.IronFOV = 75
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end