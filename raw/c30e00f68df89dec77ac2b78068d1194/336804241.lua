local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Battle.BattleTarget.BattlePassTargetDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleTarget.BattleTargetUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattlePassTargetDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_BattleCondition_Win"
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
  L3_2 = L3_2.BattlePassTargetDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_focusable = false
  A0_2._is_resp_esc = false
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
  L3_2 = L3_2.BattleGameModeStateChanged
  L4_2 = A0_2._on_level_mode_change
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._duration = A2_2
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.auto_close_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_fadein_finish_callback
  L3_2 = A0_2._on_fadein_finish
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_condition
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_auto_close_fade_out
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.BattleTargetUtils
  L1_2 = L1_2.try_set_offset
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_transform_contents
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.auto_close_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_anim
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1.PassTargetTitle
  L4_2 = L3_2
  L3_2 = L3_2.IsEmpty
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = L2_1.PassTargetTitle
    if L3_2 then
      goto lbl_27
    end
  end
  L3_2 = L1_1
  ::lbl_27::
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.get_battle_targets
  L2_2 = false
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.BattleTargetConfigType
  L3_2 = L3_2.PassTarget
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._battle_targets = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.condition_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._battle_targets
  L1_2(L2_2, L3_2)
end
L0_1._setup_condition = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = true
  L2_2 = 1
  L3_2 = A0_2._battle_targets
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._battle_targets
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.Status
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.BattleTargetStatus
    L7_2 = L7_2.Succeed
    if L6_2 ~= L7_2 then
      L1_2 = false
      break
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.auto_close_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_fade_out_with_finish
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_auto_close_fade_out = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._battle_targets
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._battle_targets
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.Status
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.BattleTargetStatus
    L6_2 = L6_2.Succeed
    if L5_2 == L6_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.condition_list
      L6_2 = L5_2
      L5_2 = L5_2.get_panel_by_index
      L7_2 = L4_2
      L5_2 = L5_2(L6_2, L7_2)
      L7_2 = L5_2
      L6_2 = L5_2.setup_hint_status
      L6_2(L7_2)
    end
  end
end
L0_1._on_fadein_finish = L3_1
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
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = true
  L2_2 = 1
  L3_2 = A0_2._battle_targets
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._battle_targets
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.Status
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.BattleTargetStatus
    L7_2 = L7_2.Succeed
    if L6_2 ~= L7_2 then
      L1_2 = false
      break
    end
  end
  if L1_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIChallengeBattleTargetHint
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_exit = L3_1
return L0_1
