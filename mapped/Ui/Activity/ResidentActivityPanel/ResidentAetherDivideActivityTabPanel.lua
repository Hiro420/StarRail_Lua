local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityUnlockMissionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityUnlockMissionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.MissionUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ResidentActivityPanel.ResidentAetherDivideActivityTabPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ResidentAetherDivideActivityTabPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueClientExcelTable
L1_1 = L1_1.GetData
L2_1 = "AetherDivide_GuideMapInfo"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.IntValue
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.ActivityStateEnum
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.ActivityModule
L4_1 = L4_1.ActivityType
L4_1 = L4_1.AetherDivideActivity
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._activity_data = A3_2
  L4_2 = {}
  A0_2._config_ids = L4_2
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._is_unlock
    L2_2 = L2_2 ~= true
    return L2_2
  end
end
L0_1._is_can_to_zoom = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1._is_can_to_special_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._config_ids
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_ids
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1.on_left_stick_button_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_active_in_hierarchy
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2._get_first_zoom2_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_unlock_mission
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.UserObjectData
  L2_2 = L2_2._binder
  L2_2 = L2_2.btn_root
  L2_2 = L2_2.gameObject
  return L2_2
end
L0_1._get_first_zoom2_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._is_custom_loaded
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_game
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_explain
  L4_2 = A0_2._on_btn_explain
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_update
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_unlock_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_unlock_mission_update
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._reward_items = nil
  A0_2._is_custom_loaded = true
  A0_2._is_unlock = false
  A0_2._is_guide_complete = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_special_pad_area
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_track_pre_mission
  L1_2(L2_2)
end
L0_1._custom_on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._track_pre_mission = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "AetherDivide_TrackPreMissionList"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  L2_2 = 0
  L3_2 = L1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L6_2 = L6_2.UintValue
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._track_pre_mission
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._init_track_pre_mission = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tips_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_game
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_avatar
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_hyper_link
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._collect_pre_mission_table
  L1_2 = L1_2(L2_2)
  A0_2._unlock_mission_table = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._collect_guide_mission_table
  L1_2 = L1_2(L2_2)
  A0_2._guide_mission_table = L1_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsPreMissionComplete
  A0_2._is_unlock = L1_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsPreGuideComplete
  A0_2._is_guide_complete = L1_2
  L1_2 = A0_2._is_unlock
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_unlock_condition
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._display_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_panel_reddot
  L1_2(L2_2)
end
L0_1._setup_by_unlock_condition = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.StateData
  L2_2 = L2_2.ConditionConfig
  L2_2 = L2_2.PreConditions
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = L7_2.Type
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.ConditionType
    L9_2 = L9_2.FinishMainMission
    if L8_2 == L9_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = tonumber
      L11_2 = L7_2.Param
      L10_2, L11_2 = L10_2(L11_2)
      L8_2(L9_2, L10_2, L11_2)
    end
  end
  return L1_2
end
L0_1._collect_pre_mission_table = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.StateData
  L2_2 = L2_2.ConditionConfig
  L2_2 = L2_2.GuideConditions
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = L7_2.Type
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.ConditionType
    L9_2 = L9_2.FinishMainMission
    if L8_2 == L9_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = tonumber
      L11_2 = L7_2.Param
      L10_2, L11_2 = L10_2(L11_2)
      L8_2(L9_2, L10_2, L11_2)
    end
  end
  return L1_2
end
L0_1._collect_guide_mission_table = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._config_ids = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._reward_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._config_ids
    L8_2 = L5_2.ItemID
    L6_2(L7_2, L8_2)
  end
end
L0_1._refresh_config_ids = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L0_1._setup_tab_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TitleName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TagDesc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.PanelDesc
  L1_2(L2_2, L3_2)
end
L0_1._setup_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_items
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_reward = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_unlock_mission
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._unlock_mission_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_unlock_mission
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_unlock_condition = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.all_finish_hint_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._activity_data
  L4_2 = L3_2
  L3_2 = L3_2.IsFinishConditionsCompleted
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_finish_hint = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_timer
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_remain_time = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
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
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._reward_items
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.ItemID
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_count_display
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = L3_2.transform
  L5_2(L6_2)
  return L3_2
end
L0_1._on_reward_update = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.ActivityUnlockMissionPanel
  L8_2 = G
  L8_2 = L8_2.ActivityUnlockMissionPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_mission_id
  L7_2 = A0_2._unlock_mission_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L5_2(L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_pre_mission_list
  L7_2 = A0_2._track_pre_mission
  L5_2(L6_2, L7_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = L3_2.transform
  L5_2(L6_2)
  return L3_2
end
L0_1._on_unlock_mission_update = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.show_introduce
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.TagDesc
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.IntroDesc
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_explain = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.StoryLineUtils
  L1_2 = L1_2.should_switch_line_in_activity
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.PanelID
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._is_unlock
  if L1_2 == false then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_ActivityPunkLord_NotStart_Button"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._is_guide_complete
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_every_day_go_to_reddot
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = "ResidentAetherDivideActivityTabPanel"
  L4_2 = "GotoBtn"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._is_guide_complete
  if L1_2 == false then
    L1_2 = 1
    L2_2 = A0_2._guide_mission_table
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = L2_1
      L6_2 = L5_2
      L5_2 = L5_2.TryGetMainMissionData
      L7_2 = A0_2._guide_mission_table
      L7_2 = L7_2[L4_2]
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = L5_2.IsFinish
      if not L6_2 then
        L6_2 = G
        L6_2 = L6_2.MissionUtils
        L6_2 = L6_2.common_jump_to_mission_by_main_mission
        L7_2 = L5_2
        L6_2(L7_2)
        return
      end
    end
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogWarningFormat
    L2_2 = "ResidentAetherDivideActivityTabPanel : \229\188\149\229\175\188\228\187\187\229\138\161\230\156\170\229\133\168\233\131\168\229\174\140\230\136\144\239\188\140\228\189\134\230\152\175\228\184\141\229\173\152\229\156\168\230\156\170\229\174\140\230\136\144\231\154\132\229\188\149\229\175\188\228\187\187\229\138\161"
    L1_2(L2_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AetherDivide.AetherDivideEntryPage"
  L1_2(L2_2)
end
L0_1._on_btn_go = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.ActivityGoToTimeStamp
  L2_2 = L4_1
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TimeManager
  L3_2 = L3_2.Instance
  L3_2 = L3_2.NowTimeStamp
  L1_2[L2_2] = L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityForceRefreshRedDot
  L1_2(L2_2)
end
L0_1._refresh_every_day_go_to_reddot = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityForceRefreshRedDot
  L1_2(L2_2)
end
L0_1._on_added = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2._get_panel_prefab_path_by_activity_data
  L3_2 = A0_2._activity_data
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._is_custom_bind
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  A0_2._is_custom_bind = true
  L3_2 = A0_2
  L2_2 = A0_2._custom_on_load
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.SortedDisplayItemList
  L2_2 = L2_2(L3_2)
  A0_2._reward_items = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_by_unlock_condition
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_remain_time
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_reward
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_config_ids
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_finish_hint
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.tab_btn_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_resident_finish
  L4_2 = A0_2._activity_data
  L5_2 = L4_2
  L4_2 = L4_2.IsFinishConditionsCompleted
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_avatar
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_game
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlock
  L1_2(L2_2, L3_2)
end
L0_1._display_node = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_unselect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "ActivityQuest"
    L4_2 = A0_2._activity_data
    L4_2 = L4_2.PanelID
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_tab_reddot
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._bind_reddot = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._is_unlock
  if L1_2 then
    L1_2 = A0_2._is_guide_complete
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.bind_reddot
      L3_2 = "AetherDivideResidentActivityGoTo"
      L4_2 = nil
      L5_2 = A0_2
      L6_2 = A0_2._binder
      L6_2 = L6_2.node_btn_go_reddot
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._bind_panel_reddot = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityForceRefreshRedDot
  L1_2(L2_2)
end
L0_1._on_return_to_top = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._activity_data = nil
  A0_2._reward_items = nil
end
L0_1._on_dispose = L5_1
return L0_1
