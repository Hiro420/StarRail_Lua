local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.SpaceAnchor.SpaceAnchorUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceAnchorDetailSettingPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "HealPool_Healsetting_Overall_Label"
L2_1 = "HealPool_Healsetting_Overall_Text"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.SpaceAnchorModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.AvatarModule
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.TeamModule
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_left
  L4_2 = A0_2._on_btn_left_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right
  L4_2 = A0_2._on_btn_right_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_left
  L4_2 = A0_2._on_btn_left_click
  L5_2 = nil
  L6_2 = 0.3
  L7_2 = 0.02
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right
  L4_2 = A0_2._on_btn_right_click
  L5_2 = nil
  L6_2 = 0.3
  L7_2 = 0.02
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.apply_btn
  L4_2 = A0_2._on_apply_setting_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_list_view
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_avatar_changes
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = {}
  A0_2._all_avatar_panels = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_over_all_setting_bar
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_over_all_setting_bar
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_tip
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_over_all_setting_bar
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_in_control_tip
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_setting_slider
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveAllListeners
  L1_2(L2_2)
end
L0_1._on_dispose = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_left_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_right_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_left
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_right
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_in_control_tip = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_over_all_setting_bar
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_over_all_setting_bar = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_datas
  L1_2(L2_2)
  A0_2.is_dirty = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_setting_slider
  L1_2.maxValue = 100
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_setting_slider
  L2_2 = L3_1.TotalRecoverPercantage
  L2_2 = L2_2 / 100
  L1_2.value = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_setting_slider
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.SafeAddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    A0_2._cur_slider_amount = A0_3
    A0_2._is_dirty = true
    L1_3 = ipairs
    L2_3 = A0_2._all_avatar_panels
    L1_3, L2_3, L3_3 = L1_3(L2_3)
    for L4_3, L5_3 in L1_3, L2_3, L3_3 do
      L7_3 = L5_3
      L6_3 = L5_3.set_overall_value
      L8_3 = A0_3
      L6_3(L7_3, L8_3)
    end
    L1_3 = A0_3 * 100
    A0_2.overall_percentage = L1_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._update_all_avatars_on_slider_change
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
    L1_3 = A0_2._binder
    L1_3 = L1_3.detail_setting_slider_num
    L2_3 = L1_3
    L1_3 = L1_3.SafeSetText
    L3_3 = math
    L3_3 = L3_3.floor
    L4_3 = A0_2._cur_slider_amount
    L3_3 = L3_3(L4_3)
    L4_3 = CS
    L4_3 = L4_3.RPG
    L4_3 = L4_3.Client
    L4_3 = L4_3.TextmapStatic
    L4_3 = L4_3.GetPercentSymbolStr
    L4_3 = L4_3()
    L3_3 = L3_3 .. L4_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.get_avatars_in_team
  L2_2 = L5_1
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentTeam
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._current_team = L1_2
end
L0_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_setting_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_setting_subtitle
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_setting_slider_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = L3_1.TotalRecoverPercantage
  L4_2 = L4_2 / 100
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetPercentSymbolStr
  L4_2 = L4_2()
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_avatar_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_navigation
  L1_2(L2_2)
end
L0_1.setup_view = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._all_avatar_data = L1_2
  A0_2.is_dirty = false
end
L0_1.clear = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._apply_setting_owner = A1_2
  A0_2._apply_setting_cbk = A2_2
end
L0_1.register_apply_setting_cbk = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_datas
  L1_2(L2_2)
end
L0_1.refresh_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = L4_1.AllAvatars
  L3_2 = L3_2.Count
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._update_avatar_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_over_all_setting_bar
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.detail_list_view
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = L2_2.UserObjectData
    L5_2 = L5_2._binder
    L5_2 = L5_2.btn_root
    L3_2(L4_2, L5_2)
  end
  L3_2 = #L1_2
  if 1 < L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.setup_navigation
    L5_2 = L1_2
    L6_2 = NavigationType
    L6_2 = L6_2.Vertical
    L7_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1._update_navigation = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L2_2[L6_2] = L7_2
  end
  return L2_2
end
L0_1._copy_data = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = L3_1.TotalRecoverPercantage
  A0_2.overall_percentage = L1_2
  L1_2 = G
  L1_2 = L1_2.SpaceAnchorUtils
  L1_2 = L1_2.generate_display_datas
  L1_2 = L1_2()
  A0_2._all_avatar_data = L1_2
end
L0_1._get_datas = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2._all_avatar_data
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.is_locked
    if not L7_2 then
      L6_2.percentage = A1_2
    end
  end
end
L0_1._update_all_avatars_on_slider_change = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._is_dirty
  if L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = ipairs
  L2_2 = A0_2._all_avatar_data
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.is_dirty
    if L6_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end
L0_1._check_should_send = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2._all_avatar_data
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.is_dirty
    if L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2._print_display_data
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
      L6_2 = L3_1
      L7_2 = L6_2
      L6_2 = L6_2.SetAvatarRecoverData
      L8_2 = L5_2.id
      L9_2 = L5_2.percentage
      L9_2 = L9_2 * 100
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L0_1._write_recover_data_to_cs = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormatWithTag
  L3_2 = G
  L3_2 = L3_2.LogTag
  L3_2 = L3_2.UI
  L4_2 = "space anchor: id "
  L5_2 = tostring
  L6_2 = A1_2.id
  L5_2 = L5_2(L6_2)
  L6_2 = " is dirty "
  L7_2 = tostring
  L8_2 = A1_2.is_dirty
  L7_2 = L7_2(L8_2)
  L8_2 = " value "
  L9_2 = tostring
  L10_2 = A1_2.percentage
  L9_2 = L9_2(L10_2)
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
  L2_2(L3_2, L4_2)
end
L0_1._print_display_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_setting_slider
  L1_2 = L1_2.value
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.detail_setting_slider
    L2_2 = A0_2._binder
    L2_2 = L2_2.detail_setting_slider
    L2_2 = L2_2.value
    L2_2 = L2_2 - 1
    L1_2.value = L2_2
  end
end
L0_1._on_btn_left_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_setting_slider
  L1_2 = L1_2.value
  if L1_2 < 100 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.detail_setting_slider
    L2_2 = A0_2._binder
    L2_2 = L2_2.detail_setting_slider
    L2_2 = L2_2.value
    L2_2 = L2_2 + 1
    L1_2.value = L2_2
  end
end
L0_1._on_btn_right_click = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AvatarHPSettingPanel
    L8_2 = G
    L8_2 = L8_2.AvatarHPSettingPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._all_avatar_panels
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2._all_avatar_data
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = 0
  if A2_2 == 0 then
    L6_2 = 1
  else
    L7_2 = A0_2._current_team
    L7_2 = #L7_2
    if A2_2 == L7_2 then
      L6_2 = 2
    end
  end
  L8_2 = L4_2
  L7_2 = L4_2.register_slider_change_cbk
  L9_2 = A0_2._on_child_slider_changes
  L10_2 = A0_2
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L5_2
  L10_2 = L6_2
  L11_2 = A0_2.overall_percentage
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.CoroutineUtils
  L7_2 = L7_2.InvokeNextFrame
  function L8_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._update_navigation
    L0_3(L1_3)
  end
  L7_2(L8_2)
  return L3_2
end
L0_1._on_avatar_changes = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A2_2.percentage = A1_2
  A2_2.is_dirty = true
  L3_2 = A2_2.percentage
  L3_2 = L3_2 * 100
  L4_2 = A0_2.overall_percentage
  if L3_2 == L4_2 then
    A2_2.is_locked = false
  else
    A2_2.is_locked = true
  end
end
L0_1._on_child_slider_changes = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._check_should_send
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._apply_setting_cbk
    L2_2 = A0_2._apply_setting_owner
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._write_recover_data_to_cs
  L1_2(L2_2)
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.SendSetSpringRecoverConfigCsReq
  L3_2 = A0_2.overall_percentage
  L4_2 = L3_1.IsAutoRecover
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_dirty = false
  L1_2 = {}
  A0_2.need_to_update_avatars = L1_2
  L1_2 = A0_2._apply_setting_cbk
  L2_2 = A0_2._apply_setting_owner
  L1_2(L2_2)
end
L0_1._on_apply_setting_btn_click = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.detail_list_view
    L3_2 = L2_2
    L2_2 = L2_2.MovePanelToItemIndex
    L4_2 = 0
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_in_control_input_switch = L6_1
return L0_1
