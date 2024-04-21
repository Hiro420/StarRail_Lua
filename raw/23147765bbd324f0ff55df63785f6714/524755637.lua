local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityBattleResultInBattleDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityResultInfoPanel"
L0_1(L1_1)
L0_1 = "UIText_ActivityFight_WaveRecord"
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FightActivityModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.FightActivityUtils
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "FightActivityBattleResultInBattleDialog"
L5_1 = G
L5_1 = L5_1.BaseDialog
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FightActivityBattleResultInBattleDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1.BattleGroupID
  A0_2._group_id = L2_2
  L2_2 = L1_1.BattleLevel
  A0_2._difficulty_level = L2_2
  A0_2._from_pause = A1_2
  L2_2 = L2_1.IsInFightActivityEndlessBattle
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_GamePhaseManager
    L3_2 = L2_2
    L2_2 = L2_2.GetCurrentPhase
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.BattleInstanceRef
    L3_2 = L3_2.TurnBasedGameModeRef
    L3_2 = L3_2.WaveMonsterCurrentCount
    L4_2 = L2_2.BattleInstanceRef
    L4_2 = L4_2.TurnBasedGameModeRef
    L4_2 = L4_2.WinFlag
    if L4_2 then
      L4_2 = 0
      if L4_2 then
        goto lbl_29
      end
    end
    L4_2 = 1
    ::lbl_29::
    L3_2 = L3_2 - L4_2
    A0_2._total_rounds = L3_2
    L3_2 = L2_1.GetCurrentBattleRoundLimit
    L3_2 = L3_2()
    A0_2._round_limit = L3_2
  end
end
L3_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._difficulty_level = nil
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_bg
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_light
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_effect
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_level_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_wave_round
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_result_info
  L1_2(L2_2)
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = L2_1.IsInFightActivityEndlessBattle
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L1_2 = L2_1.GetEndlessRewardWaves
  L2_2 = A0_2._group_id
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2.instantiate_object
    L8_2 = A0_2._binder
    L8_2 = L8_2.prefab_load_meta_result_info
    L8_2 = L8_2.Prefab
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_score_list_panel
    L9_2 = L9_2.transform
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.FightActivityResultInfoPanel
    L10_2 = G
    L10_2 = L10_2.FightActivityResultInfoPanelBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.bind
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.setup_view
    L10_2 = A0_2._round_limit
    L11_2 = L1_2[L5_2]
    L12_2 = A0_2._total_rounds
    L13_2 = L1_2[L5_2]
    L12_2 = L12_2 >= L13_2
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
end
L3_1._setup_result_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._difficulty_level
  if L1_2 == 3 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_wave_num
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._total_rounds
    L2_2(L3_2, L4_2)
  end
end
L3_1._setup_wave_round = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._from_pause
  if L1_2 then
    L1_2 = math
    L1_2 = L1_2.max
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.GetEndlessMaxWaveByGroupID
    L4_2 = A0_2._group_id
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = A0_2._total_rounds
    return L1_2(L2_2, L3_2)
  else
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.GetEndlessMaxWaveByGroupID
    L3_2 = A0_2._group_id
    return L1_2(L2_2, L3_2)
  end
end
L3_1._get_show_histroy_wave = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._difficulty_level
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.light
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.light
  L2_2 = L2_2[L1_2]
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L3_1._setup_light = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._difficulty_level
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.effect
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.effect
  L2_2 = L2_2[L1_2]
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L3_1._setup_effect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.glow_bg_level
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._difficulty_level
  L2_2 = A0_2._binder
  L2_2 = L2_2.glow_bg_level
  L2_2 = L2_2[L1_2]
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L3_1._setup_bg = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._from_pause
  if L1_2 then
    L1_2 = A0_2._total_rounds
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.GetEndlessMaxWaveByGroupID
    L4_2 = A0_2._group_id
    L2_2 = L2_2(L3_2, L4_2)
    if L1_2 > L2_2 then
      L1_1.NewRecord = true
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_new_record
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L1_1.NewRecord
  L1_2(L2_2, L3_2)
  L1_1.NewRecord = false
end
L3_1._setup_new_record = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_score_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._difficulty_level
  L3_2 = L3_2 == 3
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_round_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_wave_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._difficulty_level
  L3_2 = L3_2 == 3
  L1_2(L2_2, L3_2)
end
L3_1._setup_level_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_close
  L1_2(L2_2)
end
L3_1._in_control_exit_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  A0_2._battle_game_phase = L1_2
  L1_2 = A0_2._battle_game_phase
  if L1_2 ~= nil then
    L1_2 = A0_2._battle_game_phase
    L1_2 = L1_2.FromPhaseType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GamePhaseType
    L2_2 = L2_2.Adventure
    if L1_2 == L2_2 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.BattleToMazeTransit
      L1_2(L2_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L3_1._on_btn_close = L4_1
return L3_1
