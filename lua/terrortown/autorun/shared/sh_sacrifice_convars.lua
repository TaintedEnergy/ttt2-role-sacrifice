CreateConVar("ttt2_sacrifice_revive_damage", 250, {FCVAR_ARCHIVE, FCVAR_NOTIFY})
CreateConVar("ttt2_sacrifice_revive_target_hp", 100, {FCVAR_ARCHIVE, FCVAR_NOTIFY})
CreateConVar("ttt2_sacrificedefi_error_time", 1.5, {FCVAR_ARCHIVE, FCVAR_NOTIFY})
CreateConVar("ttt2_sacrificedefi_revive_time", 3.0, {FCVAR_ARCHIVE, FCVAR_NOTIFY})
CreateConVar("ttt2_sacrificedefi_ammo", 1, {FCVAR_ARCHIVE, FCVAR_NOTIFY})

hook.Add("TTTUlxDynamicRCVars", "TTTUlxDynamicMesCVars", function(tbl)
  tbl[ROLE_SACRIFICE] = tbl[ROLE_SACRIFICE] or {}

  table.insert(tbl[ROLE_SACRIFICE], {
      cvar = "ttt2_sacrifice_revive_damage",
      slider = true,
      min = 0,
      max = 1000,
      decimal = 0,
      desc = "ttt2_sacrifice_revive_damage (def. 250)"
  })
  table.insert(tbl[ROLE_SACRIFICE], {
      cvar = "ttt2_sacrifice_revive_target_hp",
      slider = true,
      min = 0,
      max = 1000,
      decimal = 0,
      desc = "ttt2_sacrifice_revive_target_hp (def. 100)"
  })
  table.insert(tbl[ROLE_SACRIFICE], {
      cvar = "ttt2_sacrificedefi_ammo",
      slider = true,
      min = 0,
      max = 5,
      decimal = 0,
      desc = "ttt2_sacrificedefi_ammo (def. 1)"
  })
  table.insert(tbl[ROLE_SACRIFICE], {
      cvar = "ttt2_sacrificedefi_revive_time",
      slider = true,
      min = 0,
      max = 30,
      decimal = 1,
      desc = "ttt2_sacrificedefi_revive_time (def. 3.0)"
  })
  table.insert(tbl[ROLE_SACRIFICE], {
      cvar = "ttt2_sacrificedefi_error_time",
      slider = true,
      min = 0,
      max = 3,
      decimal = 1,
      desc = "ttt2_sacrificedefi_error_time (def 1.5)"
  })
end)
