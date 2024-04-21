local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.MultipleDropItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.MultipleDropItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.MultipleDropActivityPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.MultipleDropUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MultipleDropActivityPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._activity_data = A3_2
  L4_2 = {}
  A0_2._farm_type_item_panels = L4_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_can_to_zoom = L1_1
function L1_1(A0_2, A1_2)
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
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._farm_type_item_panels
  L1_2 = L1_2[1]
  if L1_2 then
    L1_2 = A0_2._farm_type_item_panels
    L1_2 = L1_2[1]
    L2_2 = L1_2
    L1_2 = L1_2.get_btn_object
    return L1_2(L2_2)
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_custom_loaded
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_farm_type_item_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_explain
  L4_2 = A0_2._on_btn_explain
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_custom_loaded = true
end
L0_1._custom_on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.MultipleDropTypes
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_farm_type_item
    L6_2 = L4_2 + 1
    L5_2 = L5_2[L6_2]
    if L5_2 ~= nil then
      L6_2 = A0_2._binder
      L6_2 = L6_2.node_farm_type_item_parent
      L7_2 = L4_2 + 1
      L6_2 = L6_2[L7_2]
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = true
      L6_2(L7_2, L8_2)
      L7_2 = A0_2
      L6_2 = A0_2.create_panel
      L8_2 = G
      L8_2 = L8_2.MultipleDropItemPanel
      L9_2 = G
      L9_2 = L9_2.MultipleDropItemPanelBinder
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L8_2 = L6_2
      L7_2 = L6_2.bind
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
      L8_2 = L6_2
      L7_2 = L6_2.set_farm_type
      L9_2 = A0_2._activity_data
      L9_2 = L9_2.MultipleDropTypes
      L9_2 = L9_2[L4_2]
      L7_2(L8_2, L9_2)
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._farm_type_item_panels
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.MultipleDropTypes
  L1_2 = L1_2.Length
  while true do
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_farm_type_item_parent
    L3_2 = L1_2 + 1
    L2_2 = L2_2[L3_2]
    if L2_2 == nil then
      break
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_farm_type_item_parent
    L3_2 = L1_2 + 1
    L2_2 = L2_2[L3_2]
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L1_2 = L1_2 + 1
  end
end
L0_1._init_farm_type_item_panels = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_select = L1_1
function L1_1(A0_2)
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
L0_1._setup_tab_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_unselect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_remain_time
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_panel_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_rule_tip_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_farm_type_item_view
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_panel_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.PanelDesc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_panel_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TitleName
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MultipleDropModule
  L2_2 = L1_2
  L1_2 = L1_2.GetMultipleDropDataByID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.MultipleDropID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_refresh_type
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_refresh_type
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.ActivityPanelBannerText
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_remain_times
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.TimesData
  L4_2 = L4_2.RemainTimes
  L2_2(L3_2, L4_2)
  L2_2 = L1_2.TimesData
  L2_2 = L2_2.RemainTimes
  if L2_2 == 0 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_remain_times
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = "#eb4d3d"
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  else
    L2_2 = L1_2.TimesData
    L2_2 = L2_2.RemainTimes
    L3_2 = L1_2.TimesData
    L3_2 = L3_2.TotalTimes
    if L2_2 < L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_remain_times
      L3_2 = G
      L3_2 = L3_2.UIColorUtils
      L3_2 = L3_2.GetColor
      L4_2 = "#f29e38"
      L3_2 = L3_2(L4_2)
      L2_2.color = L3_2
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_total_times
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.TimesData
  L4_2 = L4_2.TotalTimes
  L2_2(L3_2, L4_2)
end
L0_1._setup_panel_text = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_explain_btn_text
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_explain_btn_text
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = A0_2._activity_data
      L3_2 = L3_2.TagDesc
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._setup_rule_tip_text = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._farm_type_item_panels
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._farm_type_item_panels
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.setup_view
    L5_2(L6_2)
  end
end
L0_1._setup_farm_type_item_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_special_remain_timer
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.Theme
  L2_2 = L1_2 ~= nil
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_remain_timer
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_special_remain_timer
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.special_remain_timer
    L4_2 = L3_2
    L3_2 = L3_2.SetTargetTime
    L5_2 = A0_2._activity_data
    L5_2 = L5_2.EndTimeDate
    L6_2 = A0_2._expire_call_back
    L7_2 = A0_2
    L8_2 = 2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.theme_text
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L1_2.Name
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.theme_icon
    L6_2 = L1_2.IconPath
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._setup_remain_time = L1_1
function L1_1(A0_2)
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
L0_1._on_btn_explain = L1_1
function L1_1(A0_2)
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
L0_1._expire_call_back = L1_1
return L0_1
