if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Suppressor"
ATTACHMENT.Icon = "bf3/suppressor.png"
ATTACHMENT.ShortName = "SUPPRESSOR"

ATTACHMENT.WeaponTable = {
	
	["Bodygroups_V"] = {
		[1] = 2
	},	
	["Bodygroups_W"] = {
		[1] = 2
	},
	["Primary"] = {
		["Spread"] = function(wep,stat) return stat * 0.9 end,
		["IronAccuracy"] = function(wep,stat) return stat * 0.9 end,
	},
	["MuzzleFlashEffect"] = "tfa_muzzleflash_silenced",
	["Silenced"] = true,	
}

function ATTACHMENT:Attach(wep)
	wep.Silenced = true
	wep:SetSilenced(wep.Silenced)
end

function ATTACHMENT:Detach(wep)
	wep.Silenced = false
	wep:SetSilenced(wep.Silenced)
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end