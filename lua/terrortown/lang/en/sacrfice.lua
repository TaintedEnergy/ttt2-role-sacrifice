L = LANG.GetLanguageTableReference("en")

-- GENERAL ROLE LANGUAGE STRINGS
L[SACRIFICE.name] = "Sacrifice"
L["info_popup_" .. SACRIFICE.name] = [[Sacrifice... Sacrifice... Sacrifice...]]
L["body_found_" .. SACRIFICE.abbr] = "They were a Sacrifice!"
L["search_role_" .. SACRIFICE.abbr] = "This person was a Sacrifice!"
L["target_" .. SACRIFICE.name] = "Sacrifice"
L["ttt2_desc_" .. SACRIFICE.name] = [[The Sacrifice is an innocent who can revive the dead at a cost!]]

L["revived_by_sacrifice"] = "You are being revived by {name}. Prepare yourself!"
L["sacrificedefi_hold_key_to_revive"] = "Hold [{key}] to sacrifice yourself and reive player"
L["sacrificedefi_revive_progress"] = "Time left: {time}s"
L["sacrificedefi_charging"] = "Defibrillator is recharging, please wait"
L["sacrificedefi_player_already_reviving"] = "Player is already reviving"
L["sacrificedefi_error_no_space"] = "There is insufficient room available for this revival attempt."
L["sacrificedefi_error_too_fast"] = "Defibrillator is recharging. Please wait."
L["sacrificedefi_error_lost_target"] = "You lost your target. Please try again."
L["sacrificedefi_error_no_valid_ply"] = "You can't revive this player since they are no longer valid."
L["sacrificedefi_error_already_reviving"] = "You can't revive this player since they are already reviving."
L["sacrificedefi_error_failed"] = "Revival attempt failed. Please try again."
L["sacrificedefi_error_thrall"] = "You can't revive a thrall!"
L["sacrificedefi_error_player_alive"] = "You can't revive this player, they are already alive."