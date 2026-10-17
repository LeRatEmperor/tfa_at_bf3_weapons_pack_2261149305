if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Scope"
ATTACHMENT.Icon = "bf3/scope_ballistic.png"
ATTACHMENT.ShortName = "SCOPE"

ATTACHMENT.WeaponTable = {
	
	["Bodygroups_V"] = {
		[0] = 5
	},
	["Bodygroups_W"] = {
		[0] = 5
	},
	["IronSightsPos"] = function( wep, val ) return wep.SightsPos_Scope or val end,
	["IronSightsAng"] = function( wep, val ) return wep.SightsAng_Scope or val end,	
		["Secondary"] = {
		["IronFOV"] = function( wep, val ) return wep.Secondary.IronFOV_Scope or val * 0.95 end
	},
}

function ATTACHMENT:Attach(wep)
//	wep.Secondary.IronFOV 	= 25
	wep.Scoped				= true
	wep.BoltAction			= true
end

function ATTACHMENT:Detach(wep)
//	wep.Secondary.IronFOV 	= 70
	wep.Scoped				= false
	wep.BoltAction			= false
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end