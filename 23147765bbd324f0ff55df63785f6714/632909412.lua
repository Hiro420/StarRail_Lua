local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnTabLeftPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnDoubleInfoRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnDoublePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerReturnDoublePanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityPlayerReturnModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MultipleDropModule
L0_1._DOUBLE_ITEM_COUNT = 2
L3_1 = {}
L3_1[1] = "UIText_PlayerReturn_Cocoon_Name"
L3_1[2] = "UIText_PlayerReturn_Cocoon3_Name"
L4_1 = {}
L4_1[1] = "UIText_PlayerReturn_Cocoon_Desc"
L4_1[2] = "UIText_PlayerReturn_Cocoon3_Desc"
function L5_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._parent_page = A1_2
  L3_2 = {}
  A0_2._sprite_paths = L3_2
  L3_2 = {}
  A0_2._goto_ids = L3_2
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rule
  L4_2 = A0_2._on_btn_rule
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MultipleDropDataUpdate
  L4_2 = A0_2._on_double_times_refresh
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_double_reward_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_double_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_in_control_input_switch
  L1_2(L2_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_double_reward_item
  L1_2(L2_2)
end
L0_1._on_select = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._parent_page
    L3_2 = L2_2
    L2_2 = L2_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.root
    L2_2 = L2_2.gameObject
    return L2_2
  end
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1.PlayerReturnData
  L2_2 = L1_2
  L1_2 = L1_2.GetConstValue
  L3_2 = "Cocoon_PicPath"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._sprite_paths
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L1_1.PlayerReturnData
  L3_2 = L2_2
  L2_2 = L2_2.GetConstValue
  L4_2 = "Cocoon_GoTo"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._goto_ids
  L5_2 = tonumber
  L6_2 = L2_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = L1_1.PlayerReturnData
  L4_2 = L3_2
  L3_2 = L3_2.GetConstValue
  L5_2 = "Cocoon3_PicPath"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._sprite_paths
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = L1_1.PlayerReturnData
  L5_2 = L4_2
  L4_2 = L4_2.GetConstValue
  L6_2 = "Cocoon3_GoTo"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = A0_2._goto_ids
  L7_2 = tonumber
  L8_2 = L4_2
  L7_2, L8_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_mono_rule
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = "UIText_Battlepass_Intro_Button"
  L5_2(L6_2, L7_2)
end
L0_1._setup_double_reward_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.FarmTypeConfig
  L1_2 = L1_2.COCOON
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityFarmMultipleDropType
  L2_2 = L2_2.VersionLimited
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MultipleDropUtils
  L3_2 = L3_2.GetMultipleDropTypeByFarmType
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MultipleDropUtils
  L4_2 = L4_2.IsInSpecificMultipleDrop
  L5_2 = L3_2
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_rule_tip
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = L2_1.TodayRemainPlayerReturnCount
  L6_2 = L2_1.TodayTotalPlayerReturnCount
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_today_left_cnt
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetText
  L9_2 = tostring
  L10_2 = L5_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  if L5_2 == 0 then
    L7_2 = A0_2._binder
    L7_2 = L7_2.text_today_left_cnt
    L8_2 = G
    L8_2 = L8_2.UIColorUtils
    L8_2 = L8_2.GetColor
    L9_2 = "#eb4d3d"
    L8_2 = L8_2(L9_2)
    L7_2.color = L8_2
  end
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_today_total_cnt
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetText
  L9_2 = tostring
  L10_2 = L6_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L7_2 = L1_1.PlayerReturnData
  L8_2 = L7_2
  L7_2 = L7_2.GetTotalDoubleTime
  L7_2 = L7_2(L8_2)
  L8_2 = L2_1.ConsumedPlayerReturnCount
  L8_2 = L7_2 - L8_2
  L9_2 = L1_1
  L10_2 = L9_2
  L9_2 = L9_2.GetActivityRemainingDays
  L9_2 = L9_2(L10_2)
  L9_2 = L9_2 - 1
  L9_2 = L9_2 * L6_2
  L9_2 = L9_2 + L5_2
  L10_2 = 0
  if L8_2 < L9_2 then
    L10_2 = L8_2
  else
    L10_2 = L9_2
  end
  if L10_2 < 0 then
    L10_2 = 0
  end
  L11_2 = A0_2._binder
  L11_2 = L11_2.text_activity_left_cnt
  L12_2 = L11_2
  L11_2 = L11_2.SafeSetText
  L13_2 = tostring
  L14_2 = L10_2
  L13_2, L14_2 = L13_2(L14_2)
  L11_2(L12_2, L13_2, L14_2)
  if L10_2 == 0 then
    L11_2 = A0_2._binder
    L11_2 = L11_2.text_activity_left_cnt
    L12_2 = G
    L12_2 = L12_2.UIColorUtils
    L12_2 = L12_2.GetColor
    L13_2 = "#eb4d3d"
    L12_2 = L12_2(L13_2)
    L11_2.color = L12_2
  end
  L11_2 = A0_2._binder
  L11_2 = L11_2.text_activity_total_cnt
  L12_2 = L11_2
  L11_2 = L11_2.SafeSetText
  L13_2 = tostring
  L14_2 = L7_2
  L13_2, L14_2 = L13_2(L14_2)
  L11_2(L12_2, L13_2, L14_2)
  L11_2 = A0_2._binder
  L11_2 = L11_2.node_activity_cnt_separation
  L12_2 = L11_2
  L11_2 = L11_2.SafeSetActive
  L13_2 = false
  L11_2(L12_2, L13_2)
  L11_2 = A0_2._binder
  L11_2 = L11_2.node_activity_total_cnt
  L12_2 = L11_2
  L11_2 = L11_2.SafeSetActive
  L13_2 = false
  L11_2(L12_2, L13_2)
end
L0_1._setup_double_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = L0_1._DOUBLE_ITEM_COUNT
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_double_reward_item = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_22
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.PlayerReturnDoubleInfoRow
  L8_2 = G
  L8_2 = L8_2.PlayerReturnDoubleInfoRowBinder
  L9_2 = A2_2 + 1
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_22::
  L6_2 = L4_2
  L5_2 = L4_2.set_pic_bg
  L7_2 = A0_2._sprite_paths
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_tip_text
  L7_2 = "UIText_PlayerReturn_DoubleTip"
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_btn_text
  L7_2 = "UIText_PlayerReturn_DoubleButton"
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_name_text
  L7_2 = A2_2 + 1
  L7_2 = L3_1[L7_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_desc_text
  L7_2 = A2_2 + 1
  L7_2 = L4_1[L7_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_click_callback
  L7_2 = A0_2
  L8_2 = A0_2._on_btn_trace_click
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L0_1._on_item_changed = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.GotoManager
  L2_2 = L2_2.Goto
  L3_2 = A0_2._goto_ids
  L3_2 = L3_2[A1_2]
  L2_2(L3_2)
end
L0_1._on_btn_trace_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.TextmapStatic
  L1_2 = L1_2.GetText
  L2_2 = "UIText_PlayerReturn_DoubleDetail01"
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MultipleDropTypeConfig
  L2_2 = L2_2.COCOON
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MultipleDropUtils
  L3_2 = L3_2.GetMultipleDropTimesData
  L4_2 = L2_2
  L5_2 = 2
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L3_2.RemainTimes
  L4_2 = L2_1.TodayRemainPlayerReturnCount
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = "UIText_PlayerReturn_DoubleDetail02"
  L7_2 = L3_2
  L8_2 = L3_2 - L4_2
  L9_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.show_introduce_with_text
  L7_2 = L1_2
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
end
L0_1._on_btn_rule = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_double_panel
  L1_2(L2_2)
end
L0_1._on_double_times_refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mono_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.tip_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_in_control_input_switch = L5_1
return L0_1
