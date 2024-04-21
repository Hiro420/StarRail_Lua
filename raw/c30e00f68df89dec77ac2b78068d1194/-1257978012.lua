local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.BoxingClubResonanceActivityPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityConditionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BoxingClub.BoxingClubUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubResonanceActivityPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 20003
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._activity_data = A3_2
  A0_2._reward_items = nil
  L4_2 = {}
  A0_2._config_ids = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._init_unlock_mission
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._init_track_pre_mission
  L4_2(L5_2)
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_can_to_zoom
    L4_2 = NavigationZoneType
    L4_2 = L4_2.Zone2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = 32
      L2_2(L3_2, L4_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = 1
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = 1
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_navigation_target
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._condition_panel
    L3_2 = L2_2
    L2_2 = L2_2.is_active
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._condition_panel
      L3_2 = L2_2
      L2_2 = L2_2._is_can_to_zoom
      L4_2 = A1_2
      L2_2 = L2_2(L3_2, L4_2)
    end
    return L2_2
  end
end
L0_1._is_can_to_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._condition_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
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
L0_1.on_left_stick_button_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
end
L0_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._is_custom_loaded
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_resident_reward
  L4_2 = A0_2._on_btn_resident_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_enter_special_zoom
  L4_2 = A0_2._on_btn_enter_special_zoom
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_explain
  L4_2 = A0_2._on_btn_explain
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_reward
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_reward
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_resident_reward
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_resident_reward
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "BoxingClubResonanceLimitRewardBtn"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot_btn_reward
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "BoxingClubResonanceResidentRewardBtn"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot_btn_reward_resident
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "BoxingClubResonanceBtnGo"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot_btn_go
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityConditionPanel
  L4_2 = G
  L4_2 = L4_2.ActivityConditionPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._condition_panel = L1_2
  L1_2 = A0_2._condition_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_condition_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._condition_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A0_2._unlock_mission_list
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._register_pre_mission
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._is_custom_loaded = true
end
L0_1._custom_on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._condition_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_all_mission_panels
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.main_mission_id
    L8_2 = A0_2._track_pre_mission
    L9_2 = A0_2._track_pre_mission
    L9_2 = #L9_2
    L8_2 = L8_2[L9_2]
    if L7_2 == L8_2 then
      L8_2 = L6_2
      L7_2 = L6_2.register_pre_mission_list
      L9_2 = A0_2._track_pre_mission
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._register_pre_mission = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_custom_bind
  if not L1_2 then
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2._get_panel_prefab_path_by_activity_data
    L3_2 = A0_2._activity_data
    L1_2 = L1_2(L2_2, L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  A0_2._is_custom_bind = true
  L2_2 = A0_2
  L1_2 = A0_2._custom_on_load
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_remain_time
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.SortedDisplayItemList
  L1_2 = L1_2(L2_2)
  A0_2._reward_items = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_config_ids
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2, L4_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L3_2 = L1_2
  L2_2 = L1_2.MainMissionDataPromised
  L4_2 = A0_2._unlock_mission_list
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.ThenLuaAction
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = A0_2._unlock_mission_list
    if L0_3 ~= nil then
      L0_3 = A0_2._binder
      if L0_3 ~= nil then
        goto lbl_8
      end
    end
    do return end
    ::lbl_8::
    L0_3 = 0
    L1_3 = A0_2._unlock_mission_list
    L1_3 = L1_3.Count
    L1_3 = L1_3 - 1
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L1_2
      L5_3 = L4_3
      L4_3 = L4_3.TryGetMainMissionData
      L6_3 = A0_2._unlock_mission_list
      L6_3 = L6_3[L3_3]
      L4_3 = L4_3(L5_3, L6_3)
      if L4_3 ~= nil then
        L5_3 = L4_3.IsFinish
        if not L5_3 then
          L5_3 = A0_2
          L6_3 = L5_3
          L5_3 = L5_3._setup_state
          L7_3 = false
          L5_3(L6_3, L7_3)
          L5_3 = A0_2
          L6_3 = L5_3
          L5_3 = L5_3._init_ui_navigation
          L5_3(L6_3)
          return
        end
      end
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_state
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._init_ui_navigation
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  A0_2._unlock_mission_list = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "BoxingClubResonance_UnlockMissionList"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  L2_2 = 0
  L3_2 = L1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._unlock_mission_list
    L7_2 = L6_2
    L6_2 = L6_2.Add
    L8_2 = L1_2[L5_2]
    L8_2 = L8_2.UintValue
    L6_2(L7_2, L8_2)
  end
end
L0_1._init_unlock_mission = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._track_pre_mission = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "BoxingClubResonance_TrackPreMissionList"
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
L0_1._init_track_pre_mission = L2_1
function L2_1(A0_2)
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
L0_1._setup_config_ids = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_unselect = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._activity_data = nil
  A0_2._reward_items = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityQuest"
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.PanelID
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_tab_panel = L2_1
function L2_1(A0_2)
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
  L1_2 = L1_2.text_panel_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.PanelDesc
  L1_2(L2_2, L3_2)
end
L0_1._setup_text = L2_1
function L2_1(A0_2)
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
L0_1._setup_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.EndTimeDate
  L4_2 = A0_2._expire_call_back
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_remain_time = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._condition_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_active
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_panel_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_warning_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward_btns
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_go
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_state = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._refresh = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
  return L3_2
end
L0_1._on_item_changed = L2_1
function L2_1(A0_2)
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
L0_1._on_btn_explain = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.StoryLineUtils
  L1_2 = L1_2.should_switch_line_in_activity
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.PanelID
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "BoxingClubResonance_Pre_Mission"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.IntValue
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "BoxingClubResonance_PrePhoneMessage_SubmissionID"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.IntValue
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L5_2 = L3_2
  L4_2 = L3_2.MainMissionDataPromised
  L6_2 = L1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2
  L4_2 = L4_2.ThenLuaAction
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.TryGetMainMissionData
    L2_3 = L1_2
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = L0_3.IsFinish
    if not L1_3 then
      L1_3 = L3_2
      L2_3 = L1_3
      L1_3 = L1_3.GetSubMissionDataWithPromise
      L3_3 = L2_2
      L1_3 = L1_3(L2_3, L3_3)
      L2_3 = L1_3
      L1_3 = L1_3.ThenLuaActionOneParam
      function L3_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4, L5_4
        L1_4 = A0_4.IsFinish
        if L1_4 then
          L1_4 = G
          L1_4 = L1_4.MissionUtils
          L1_4 = L1_4.common_jump_to_mission_by_main_mission
          L2_4 = L0_3
          L1_4(L2_4)
        else
          L1_4 = CS
          L1_4 = L1_4.RPG
          L1_4 = L1_4.GameCore
          L1_4 = L1_4.ConstValueClientExcelTable
          L1_4 = L1_4.GetData
          L2_4 = "BoxingClubResonance_PrePhoneMessage_GroupID"
          L1_4 = L1_4(L2_4)
          L1_4 = L1_4.Value
          L1_4 = L1_4.IntValue
          L2_4 = G
          L2_4 = L2_4.GotoManager
          L2_4 = L2_4.Goto
          L3_4 = 4000
          L4_4 = {}
          L5_4 = L1_4
          L4_4[1] = L5_4
          L2_4(L3_4, L4_4)
        end
      end
      L1_3(L2_3, L3_3)
    else
      L1_3 = G
      L1_3 = L1_3.GotoManager
      L1_3 = L1_3.Goto
      L2_3 = L1_1
      L1_3(L2_3)
    end
  end
  L4_2(L5_2, L6_2)
end
L0_1._on_btn_go = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.BoxingClubUtils
  L1_2 = L1_2.open_resonance_limit_reward_page
  L1_2()
end
L0_1._on_btn_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_can_to_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_active_in_hierarchy
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.is_in_special_zoom
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2.set_special_zoom_navigation_target
        L3_2 = A0_2._binder
        L3_2 = L3_2.btn_resident_reward
        L3_2 = L3_2.gameObject
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L0_1._on_btn_enter_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.BoxingClub.BoxingClubResonanceResidentRewardDialog"
  L1_2(L2_2)
end
L0_1._on_btn_resident_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L0_1._on_in_control_input_switch = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityRefreshAll
  L1_2(L2_2)
end
L0_1._expire_call_back = L2_1
return L0_1
