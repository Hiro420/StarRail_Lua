local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Battle.NextWaveDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NextWaveDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_GamePhaseManager
L2_1 = "BattleUIText_PauseButton_BuffTips"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.NextWaveDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_focusable = false
  A0_2._is_resp_esc = false
  A0_2._max_wave_cnt = 0
  A0_2._current_wave_cnt = 0
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.super
  L1_2 = L1_2._setup_view
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._SetupMaxWave
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_env_buff_hint
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.BattleInstanceRef
  L1_2 = L1_2.TurnBasedGameModeRef
  L1_2 = L1_2.MonsterWaveTextInfo
  L2_2 = L1_2.MaxWaveCount
  A0_2._TextMaxWave = L2_2
  L2_2 = L1_2.CurrentWaveCount
  A0_2._current_wave_cnt = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_wave_info
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2._wave_info
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2._max_wave_txt
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = tostring
    L5_2 = A0_2._TextMaxWave
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2._current_wave_txt
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = tostring
    L5_2 = A0_2._current_wave_cnt
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2._wave_info
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_anim_name
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._is_first_wave
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2._anim_event
  L5_2 = L4_2
  L4_2 = L4_2.AddAnimationEvent
  L6_2 = L2_2
  function L7_2()
    local L0_3, L1_3
    L0_3 = L3_2
    if L0_3 then
      L0_3 = G
      L0_3 = L0_3.NotifyManager
      L0_3 = L0_3.notify
      L1_3 = G
      L1_3 = L1_3.CS
      L1_3 = L1_3.NotifyType
      L1_3 = L1_3.BattleBattleStartDialogClose
      L0_3(L1_3)
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.exit
    L0_3(L1_3)
  end
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2._anim_root
  L5_2 = L4_2
  L4_2 = L4_2.Play
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L0_1._SetupMaxWave = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2._node_env_buff_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.BattleUIUtils
  L3_2 = L3_2.IsEnvBuffExist
  L3_2 = L3_2()
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._is_first_wave
    L3_2 = L3_2(L4_2)
  end
  L1_2(L2_2, L3_2)
end
L0_1._setup_env_buff_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.FightActivityUtils
  L1_2 = L1_2.IsInFightActivityEndlessBattle
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_icon_buff
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_buff
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_unload = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_first_wave
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = "BattleStart_Entry"
    return L1_2
  else
    L1_2 = "NextWave"
    return L1_2
  end
end
L0_1._get_anim_name = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._current_wave_cnt
  L1_2 = L1_2 == 1
  return L1_2
end
L0_1._is_first_wave = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.BattleInstanceRef
  L2_2 = L2_2.TurnBasedGameModeRef
  L3_2 = L2_2.OwnerBattleInstanceRef
  L3_2 = L3_2.BattleLineupDataRef
  L3_2 = L3_2.Context
  L3_2 = L3_2.StageConfig
  L3_2 = L3_2.StageType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.StageType
  L4_2 = L4_2.TelevisionActivity
  if L3_2 == L4_2 then
    L5_2 = A1_2
    L4_2 = A1_2.HasOverrideInfo
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = false
      return L4_2
    end
  end
  L4_2 = A1_2.MaxWaveCount
  L4_2 = 1 < L4_2
  return L4_2
end
L0_1._show_wave_info = L3_1
return L0_1
