local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.TimeUtils
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueModule
L2_1 = tonumber
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.GameplayGuideConstValueExcelTable
L3_1 = L3_1.GetData
L4_1 = "HandBookRogueMapEntrance"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L2_1 = L2_1(L3_1)
L3_1 = tonumber
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.GameplayGuideConstValueExcelTable
L4_1 = L4_1.GetData
L5_1 = "HandBookRogueMappingInfo"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L3_1 = L3_1(L4_1)
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "HandbookGuideRogueBannerPanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_reward
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_in_control_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.get_first_selected_object
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._set_in_control_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._set_in_control_enable
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._reward_item_table = nil
end
L4_1._on_dispose = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._guide_row = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_jump
  L5_2 = A0_2._on_btn_rogue_go
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_track
  L5_2 = A0_2._on_btn_rogue_go
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_rogue
  L2_2(L3_2)
end
L4_1.setup_view = L5_1
function L5_1(A0_2, A1_2, A2_2)
end
L4_1.setup_reddot = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TransferModule
  L2_2 = L1_2
  L1_2 = L1_2.CanTransfer
  L3_2 = L3_1
  L4_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._can_jump = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_jump
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._can_jump
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_track
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._can_jump
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_rogue_score
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_rogue_reward
  L1_2(L2_2)
end
L4_1._setup_rogue = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueModule
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueScoreRewardData
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_cur_score
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = L1_2.Score
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_total_score
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L5_2 = L1_2
  L4_2 = L1_2.GetMaxScore
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.SetTargetTimeByTimeStamp
  L4_2 = L1_2.EndTimeStamp
  L5_2 = A0_2._on_rogue_end
  L6_2 = A0_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.ForceUpdateTime
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.remain_timer
  L3_2 = L3_2.transform
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.layout_remain_timer
  L2_2(L3_2)
end
L4_1._setup_rogue_score = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_rogue
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L4_1._on_rogue_end = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueScoreRewardData
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.GetCurScoreRewardRows
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.Collections
  L3_2 = L3_2.Generic
  L3_2 = L3_2.List
  L4_2 = CS
  L4_2 = L4_2.System
  L4_2 = L4_2.UInt32
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2()
  L4_2 = 0
  L5_2 = L2_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L9_2 = L3_2
    L8_2 = L3_2.Add
    L10_2 = L2_2[L7_2]
    L10_2 = L10_2.Reward
    L8_2(L9_2, L10_2)
  end
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.GetDistinctRewardTableByRewardList
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  A0_2._reward_item_table = L4_2
  L4_2 = {}
  A0_2._config_id_list = L4_2
  L4_2 = ipairs
  L5_2 = A0_2._reward_item_table
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2._config_id_list
    L11_2 = L8_2.ItemID
    L9_2(L10_2, L11_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.loop_list_reward
  L5_2 = L4_2
  L4_2 = L4_2.SetListItemCount
  L6_2 = A0_2._reward_item_table
  L6_2 = #L6_2
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.loop_list_reward
  L5_2 = L4_2
  L4_2 = L4_2.RefreshAllShownItem
  L4_2(L5_2)
end
L4_1._setup_rogue_reward = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._reward_item_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ItemID
  L6_2(L7_2, L8_2)
  return L3_2
end
L4_1._on_reward_change = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._can_jump
  if L1_2 then
    L1_2 = "TeleportBtn_"
    if L1_2 then
      goto lbl_8
    end
  end
  L1_2 = "AreaProgress_"
  ::lbl_8::
  L2_2 = "HandBookRogueGuide"
  L1_2 = L1_2 .. L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIButtonClick
  L3_2 = A0_2._owner
  L3_2 = L3_2.__name
  L4_2 = "HandbookGuideTabItem"
  L5_2 = L1_2
  L6_2 = A0_2._owner
  L6_2 = L6_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.HandbookModule
  L3_2 = L2_2
  L2_2 = L2_2.GotoToGuideRogue
  L4_2 = L2_1
  L5_2 = L3_1
  L2_2(L3_2, L4_2, L5_2)
end
L4_1._on_btn_rogue_go = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L4_1.get_first_selected_object = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn_jump
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_tip_jump
  L2_2.IsShowTip = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn_track
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_tip_track
  L2_2.IsShowTip = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_controller_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L4_1._set_in_control_enable = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L4_1._on_in_control_action_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.IsSelectedByController
    if L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_id_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L4_1._on_left_stick_button_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_controller_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L4_1._on_in_control_input_switch = L5_1
return L4_1
