if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Muzzle"
ATTACHMENT.Icon = "bf3/muzzle.png"
ATTACHMENT.ShortName = "Muzzle"

ATTACHMENT.WeaponTable = {
	
	["Bodygroups_V"] = {
		[1] = 1
	},		
	["Bodygroups_W"] = {
		[1] = 1
	},	
	["Primary"] = {
		["KickUp"] = function(wep,stat) return stat * 0.9 end,
		["KickDown"] = function(wep,stat) return stat * 0.9 end,
	},
}

function ATTACHMENT:Attach(wep)
end

function ATTACHMENT:Detach(wep)
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end