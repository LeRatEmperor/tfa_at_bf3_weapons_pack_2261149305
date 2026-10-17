if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Laser"
ATTACHMENT.Icon = "bf3/laser.png"
ATTACHMENT.ShortName = "Laser"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["laser"] = {
			["active"] = true
		},
		["laser_beam"] = {
			["active"] = true
		}
	},
	["Bodygroups_V"] = {
		[3] = 1
	},
	["Bodygroups_W"] = {
		[3] = 1
	},
	["LaserSightAttachment"] = function(wep,stat) return wep.LaserSightModAttachment end,
	["LaserSightAttachmentWorld"] = function(wep,stat) return wep.LaserModAttachmentWorld or wep.LaserSightModAttachment end
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end