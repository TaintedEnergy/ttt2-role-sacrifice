L = LANG.GetLanguageTableReference("ru")

-- GENERAL ROLE LANGUAGE STRINGS
L[SACRIFICE.name] = "Жертва"
L["info_popup_" .. SACRIFICE.name] = [[Пожертвуй... пожертвуй... пожертвуй...]]
L["body_found_" .. SACRIFICE.abbr] = "Он был жертвой!"
L["search_role_" .. SACRIFICE.abbr] = "Этот человек был жертвой!"
L["target_" .. SACRIFICE.name] = "Жертва"
L["ttt2_desc_" .. SACRIFICE.name] = [[Жертва — это невиновный, который может возродить мёртвого за определённую цену!]]

L["revived_by_sacrifice"] = "Вас возрождает {name}. Приготовьтесь!"
L["sacrificedefi_hold_key_to_revive"] = "Удерживайте [{key}], чтобы пожертвовать собой и возродить игрока."
L["sacrificedefi_revive_progress"] = "Времени до возрождения: {time} сек."
L["sacrificedefi_charging"] = "Дефибриллятор заряжается, подождите."
L["sacrificedefi_player_already_reviving"] = "Игрок уже возрождается."
L["sacrificedefi_error_no_space"] = "Недостаточно места для возрождения."
L["sacrificedefi_error_too_fast"] = "Дефибриллятор заряжается. Пожалуйста, подождите."
L["sacrificedefi_error_lost_target"] = "Цель потеряна. Повторите попытку."
L["sacrificedefi_error_no_valid_ply"] = "Этого игрока нельзя возродить, поскольку он недействителен."
L["sacrificedefi_error_already_reviving"] = "Этого игрока нельзя возродить, поскольку он уже возрождается."
L["sacrificedefi_error_failed"] = "Не удалось возродить. Повторите попытку."
L["sacrificedefi_error_thrall"] = "Нельзя возродить трэлла!"
L["sacrificedefi_error_player_alive"] = "Этого игрока нельзя возродить, поскольку он уже живой."

L["label_sacrifice_revive_damage"] = "Получаемый урон при использовании дефибриллятора"
L["label_sacrifice_revive_target_hp"] = "Количество здоровья у возрождённого игрока"
L["label_sacrificedefi_ammo"] = "Кол-во зарядов дефибриллятора (кол-во возрождений)"
L["label_sacrificedefi_revive_time"] = "Длительность возрождения дефибриллятором"
L["label_sacrificedefi_error_time"] = "Время зарядки дефибриллятора при появлении ошибки"
