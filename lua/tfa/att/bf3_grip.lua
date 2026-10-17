if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Grip"
ATTACHMENT.Icon = "bf3/grip.png"
ATTACHMENT.ShortName = "GRIP"

ATTACHMENT.WeaponTable = {
	
	["Bodygroups_V"] = {
		[2] = 1
	},
	["Bodygroups_W"] = {
		[2] = 1
	},
		["Primary"] = {
		["KickUp"] = function(wep,stat) return stat * 0.9 end,
		["KickDown"] = function(wep,stat) return stat * 0.9 end,
	},
	
	["Animations"] = {
	
		["idle"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_idle"
		},
		["draw"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_draw"
		},
		["shoot1"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_fire"
		},
		["shoot1_empty"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_idle"
		},
		["reload"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_reload"
		},
		["reload_empty"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_reload_empty"
		},
		["base_fireselect"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_fireselect"
		},
		["loop"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "foregrip_sprint"
		},
	},	
}

function ATTACHMENT:Attach(wep)
	if TFA.Enum.ReadyStatus[wep:GetStatus()] then
		wep:ChooseIdleAnim()
		if game.SinglePlayer() then
			wep:CallOnClient("ChooseIdleAnim","")
		end
	end
	wep.HoldType = "smg"
end

function ATTACHMENT:Detach(wep)
	if TFA.Enum.ReadyStatus[wep:GetStatus()] then
		wep:ChooseIdleAnim()
		if game.SinglePlayer() then
			wep:CallOnClient("ChooseIdleAnim","")
		end
	end
	wep.HoldType = "ar2"
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end