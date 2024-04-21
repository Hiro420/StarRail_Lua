local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Battle.BattleTargetDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleTarget.BattleTargetUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleTargetDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "ChallengeTarget_SystemTitle"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.BattleModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BattleTargetDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_focusable = false
  A0_2._is_resp_esc = false
  L1_2 = {}
  A0_2._battle_target_change_list = L1_2
  L1_2 = {}
  A0_2._raid_target_change_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowPageContext
  L4_2 = A0_2._on_show_ui_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIBattleRaidTargetChange
  L4_2 = A0_2._on_raid_target_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIBattleTargetChange
  L4_2 = A0_2._on_target_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattleGameModeStateChanged
  L4_2 = A0_2._on_level_mode_change
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._new_targets = A2_2
  A0_2._duration = A3_2
  if A1_2 == nil then
    return
  end
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.IsCsType
  L5_2 = A1_2
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.BattleRaidTargetChangeParams
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._add_raid_target_change_param
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = G
    L4_2 = L4_2.UtilEngineWrap
    L4_2 = L4_2.IsCsType
    L5_2 = A1_2
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.BattleTargetChangeParams
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._add_target_change_param
      L6_2 = A1_2
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.auto_close_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_remain_duration
  L3_2 = A0_2._duration
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.auto_close_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_exit_callback
  L3_2 = A0_2._on_exit
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.auto_close_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_anim
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.BattleTargetUtils
  L1_2 = L1_2.try_set_offset
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_transform_contents
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_target
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_target_change
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1.ChallengeTargetTitle
  L4_2 = L3_2
  L3_2 = L3_2.IsEmpty
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = L2_1.ChallengeTargetTitle
    if L3_2 then
      goto lbl_27
    end
  end
  L3_2 = L1_1
  ::lbl_27::
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._add_raid_target_change_param
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_loaded
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_target_change
    L2_2(L3_2)
  end
end
L0_1._on_raid_target_change = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._raid_target_change_list
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._add_raid_target_change_param = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._add_target_change_param
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_loaded
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_target_change
    L2_2(L3_2)
  end
end
L0_1._on_target_change = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.BattleTargetConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.BattleTargetID
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.Type
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.BattleTargetConfigType
  L4_2 = L4_2.ChallengeTarget
  if L3_2 ~= L4_2 then
    return
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._battle_target_change_list
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._add_target_change_param = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.target_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_targets
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._setup_target = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = false
  L2_2 = ipairs
  L3_2 = A0_2._battle_target_change_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.target_list
    L8_2 = L7_2
    L7_2 = L7_2.try_setup_battle_target_change
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L1_2 = true
    end
  end
  L2_2 = {}
  A0_2._battle_target_change_list = L2_2
  L2_2 = ipairs
  L3_2 = A0_2._raid_target_change_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.target_list
    L8_2 = L7_2
    L7_2 = L7_2.try_setup_raid_target_change
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L1_2 = true
    end
  end
  L2_2 = {}
  A0_2._raid_target_change_list = L2_2
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.auto_close_panel
    L3_2 = L2_2
    L2_2 = L2_2.reset_status
    L2_2(L3_2)
  end
end
L0_1._setup_target_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._new_targets
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.target_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_new_targets
  L3_2 = A0_2._new_targets
  L1_2(L2_2, L3_2)
end
L0_1._setup_new_targets = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_show_ui_page = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GameModeState
  L2_2 = L2_2.Finish
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  end
end
L0_1._on_level_mode_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L3_1
return L0_1
