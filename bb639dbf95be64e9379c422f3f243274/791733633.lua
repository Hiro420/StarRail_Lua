local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Maze.Wheel.ShortCutWheelItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Wheel.ShortCutSettingItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Wheel.WheelPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WheelPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SpriteOutput/TabIcon/Settings/SettingsWheelSelectIcon.png"
L2_1 = "UIText_Setting_Wheel"
L3_1 = 8
L4_1 = 4
function L5_1(A0_2)
  local L1_2
  A0_2._sub_tab_index = 0
  A0_2._selected_object = nil
  L1_2 = {}
  A0_2._eight_wheel_item_panel_list = L1_2
  L1_2 = {}
  A0_2._four_wheel_item_panel_list = L1_2
  L1_2 = {}
  A0_2._eight_wheel_order_to_index_set = L1_2
  L1_2 = {}
  A0_2._four_wheel_order_to_index_set = L1_2
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._selected_object
  if L1_2 then
    L1_2 = A0_2._selected_object
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._on_btn_select_left_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._on_btn_select_right_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reset
  L4_2 = A0_2._on_btn_reset_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_save
  L4_2 = A0_2._on_btn_save_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_btn_normal_img
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_btn_selected_img
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_scroll_view_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._sub_tab_control = L1_2
  L1_2 = A0_2._sub_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_btns_root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._sub_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_sub_tab_item_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tabs_items
  L1_2(L2_2)
  L1_2 = {}
  A0_2._all_row_data_list = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.WheelSelectConfigExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = 1
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._all_row_data_list
    L8_2[L2_2] = L7_2
    L2_2 = L2_2 + 1
  end
  L4_2 = A0_2
  L3_2 = A0_2._init_wheel_order_to_index_set
  L3_2(L4_2)
end
L0_1._on_added = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._sub_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
end
L0_1._on_btn_select_left_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._sub_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
end
L0_1._on_btn_select_right_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowConfirmDialog
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if A0_3 then
      L1_3 = A0_2._sub_tab_index
      if L1_3 == 1 then
        L1_3 = {}
        A0_2._eight_wheel_order_to_index_set = L1_3
        L1_3 = 1
        L2_3 = L3_1
        L3_3 = 1
        for L4_3 = L1_3, L2_3, L3_3 do
          L5_3 = CS
          L5_3 = L5_3.RPG
          L5_3 = L5_3.Client
          L5_3 = L5_3.GlobalVars
          L5_3 = L5_3.s_SettingManager
          L6_3 = L5_3
          L5_3 = L5_3.GetEightWheelDefaultIndexByOrder
          L7_3 = L4_3
          L5_3 = L5_3(L6_3, L7_3)
          L6_3 = A0_2._eight_wheel_order_to_index_set
          L6_3[L4_3] = L5_3
        end
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._init_or_update_eight_wheel_view
        L1_3(L2_3)
      else
        L1_3 = {}
        A0_2._four_wheel_order_to_index_set = L1_3
        L1_3 = 1
        L2_3 = L4_1
        L3_3 = 1
        for L4_3 = L1_3, L2_3, L3_3 do
          L5_3 = CS
          L5_3 = L5_3.RPG
          L5_3 = L5_3.Client
          L5_3 = L5_3.GlobalVars
          L5_3 = L5_3.s_SettingManager
          L6_3 = L5_3
          L5_3 = L5_3.GetFourWheelDefaultIndexByOrder
          L7_3 = L4_3
          L5_3 = L5_3(L6_3, L7_3)
          L6_3 = A0_2._four_wheel_order_to_index_set
          L6_3[L4_3] = L5_3
        end
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._init_or_update_four_wheel_view
        L1_3(L2_3)
      end
      L1_3 = A0_2._binder
      L1_3 = L1_3.scroll_view
      L2_3 = L1_3
      L1_3 = L1_3.SetListItemCount
      L3_3 = A0_2._all_row_data_list
      L3_3 = #L3_3
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = A0_2._binder
      L1_3 = L1_3.scroll_view
      L2_3 = L1_3
      L1_3 = L1_3.RefreshAllShownItem
      L1_3(L2_3)
    end
  end
  L1_2 = L1_2(L2_2)
  L2_2 = DialogBtnMode
  L2_2 = L2_2.eOkCancel
  L1_2.Mode = L2_2
  L3_2 = L1_2
  L2_2 = L1_2.GetComponentContent
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Setting_Wheel_Tip_3"
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_reset_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_save_click
  L1_2(L2_2)
end
L0_1.save_setting = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = A0_2._sub_tab_index
  L2_2 = L2_2 == 1
  L1_2.IsUseEightWheel = L2_2
  L1_2 = 1
  L2_2 = L3_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._eight_wheel_order_to_index_set
    L5_2 = L5_2[L4_2]
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.Prefs
    L6_2 = L6_2.User
    L7_2 = L6_2
    L6_2 = L6_2.SetEightWheelSettingByOrder
    L8_2 = L4_2
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = 1
  L2_2 = L4_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._four_wheel_order_to_index_set
    L5_2 = L5_2[L4_2]
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.Prefs
    L6_2 = L6_2.User
    L7_2 = L6_2
    L6_2 = L6_2.SetFourWheelSettingByOrder
    L8_2 = L4_2
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.ForceSave
  L1_2()
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_Setting_Wheel_Tip_2"
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_save_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_panel_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.IsUseEightWheel
  if L1_2 then
    L1_2 = A0_2._sub_tab_control
    L2_2 = L1_2
    L1_2 = L1_2.click_item_by_uid
    L3_2 = 1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._sub_tab_control
    L2_2 = L1_2
    L1_2 = L1_2.click_item_by_uid
    L3_2 = 2
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._update_input_image_tip
  L1_2(L2_2)
end
L0_1._on_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.CS
    L1_2 = L1_2.EventSystem
    L1_2 = L1_2.current
    L1_2 = L1_2.currentSelectedGameObject
    A0_2._selected_object = L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  A0_2._eight_wheel_order_to_index_set = L1_2
  L1_2 = 1
  L2_2 = L3_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.Prefs
    L5_2 = L5_2.User
    L6_2 = L5_2
    L5_2 = L5_2.GetEightWheelSettingByOrder
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = A0_2._eight_wheel_order_to_index_set
    L6_2[L4_2] = L5_2
  end
  L1_2 = {}
  A0_2._four_wheel_order_to_index_set = L1_2
  L1_2 = 1
  L2_2 = L4_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.Prefs
    L5_2 = L5_2.User
    L6_2 = L5_2
    L5_2 = L5_2.GetFourWheelSettingByOrder
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = A0_2._four_wheel_order_to_index_set
    L6_2[L4_2] = L5_2
  end
end
L0_1._init_wheel_order_to_index_set = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._sub_tab_index
  if L2_2 ~= A1_2 then
    A0_2._sub_tab_index = A1_2
    L2_2 = A0_2._sub_tab_index
    if L2_2 == 1 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_eight_wheel_panel
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_four_wheel_panel
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2._init_or_update_eight_wheel_view
      L2_2(L3_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_eight_wheel_panel
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_four_wheel_panel
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2._init_or_update_four_wheel_view
      L2_2(L3_2)
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_view
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = A0_2._all_row_data_list
    L4_2 = #L4_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_view
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
  end
end
L0_1._on_sub_tab_item_clicked = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  A0_2._eight_wheel_row_data_list = L1_2
  L1_2 = 1
  L2_2 = L3_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._eight_wheel_order_to_index_set
    L5_2 = L5_2[L4_2]
    if 0 < L5_2 then
      L6_2 = A0_2._eight_wheel_row_data_list
      L7_2 = A0_2._all_row_data_list
      L7_2 = L7_2[L5_2]
      L6_2[L4_2] = L7_2
    else
      L6_2 = A0_2._eight_wheel_row_data_list
      L6_2[L4_2] = nil
    end
  end
end
L0_1._update_eight_wheel_row_data_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2._update_eight_wheel_row_data_list
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = L3_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._eight_wheel_row_data_list
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._eight_wheel_item_panel_list
    L6_2 = L6_2[L4_2]
    if L6_2 then
      L6_2 = A0_2._eight_wheel_item_panel_list
      L6_2 = L6_2[L4_2]
      L8_2 = L6_2
      L7_2 = L6_2.setup_checked
      L9_2 = false
      L7_2(L8_2, L9_2)
      L8_2 = L6_2
      L7_2 = L6_2.setup_view_by_setting
      L9_2 = L5_2
      L10_2 = L4_2
      L7_2(L8_2, L9_2, L10_2)
    else
      L6_2 = A0_2._binder
      L6_2 = L6_2._eight_wheel_short_cut_item_list
      L6_2 = L6_2[L4_2]
      L8_2 = A0_2
      L7_2 = A0_2.create_panel
      L9_2 = G
      L9_2 = L9_2.ShortCutWheelItem
      L10_2 = G
      L10_2 = L10_2.ShortCutWheelItemBinder
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.bind
      L10_2 = L6_2.transform
      L8_2(L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.setup_checked
      L10_2 = false
      L8_2(L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.setup_view_by_setting
      L10_2 = L5_2
      L11_2 = L4_2
      L8_2(L9_2, L10_2, L11_2)
      L9_2 = L7_2
      L8_2 = L7_2.setup_btn_root_click_callback
      L10_2 = A0_2
      L11_2 = A0_2._on_wheel_btn_root_click
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = A0_2._eight_wheel_item_panel_list
      L8_2[L4_2] = L7_2
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._update_eight_wheel_item_checked_state
  L1_2(L2_2)
end
L0_1._init_or_update_eight_wheel_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = L3_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._eight_wheel_item_panel_list
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L5_2 = A0_2._eight_wheel_item_panel_list
      L5_2 = L5_2[L4_2]
      L7_2 = L5_2
      L6_2 = L5_2.setup_checked
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_eight_wheel_first_empty_order
  L1_2 = L1_2(L2_2)
  if 0 < L1_2 then
    L2_2 = A0_2._eight_wheel_item_panel_list
    L2_2 = L2_2[L1_2]
    if L2_2 then
      L2_2 = A0_2._eight_wheel_item_panel_list
      L2_2 = L2_2[L1_2]
      L4_2 = L2_2
      L3_2 = L2_2.setup_checked
      L5_2 = true
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._update_eight_wheel_item_checked_state = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  A0_2._four_wheel_row_data_list = L1_2
  L1_2 = 1
  L2_2 = L4_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._four_wheel_order_to_index_set
    L5_2 = L5_2[L4_2]
    if 0 < L5_2 then
      L6_2 = A0_2._four_wheel_row_data_list
      L7_2 = A0_2._all_row_data_list
      L7_2 = L7_2[L5_2]
      L6_2[L4_2] = L7_2
    else
      L6_2 = A0_2._four_wheel_row_data_list
      L6_2[L4_2] = nil
    end
  end
end
L0_1._update_four_wheel_row_data_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2._update_four_wheel_row_data_list
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = L4_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._four_wheel_row_data_list
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._four_wheel_item_panel_list
    L6_2 = L6_2[L4_2]
    if L6_2 then
      L6_2 = A0_2._four_wheel_item_panel_list
      L6_2 = L6_2[L4_2]
      L8_2 = L6_2
      L7_2 = L6_2.setup_checked
      L9_2 = false
      L7_2(L8_2, L9_2)
      L8_2 = L6_2
      L7_2 = L6_2.setup_view_by_setting
      L9_2 = L5_2
      L10_2 = L4_2
      L7_2(L8_2, L9_2, L10_2)
    else
      L6_2 = A0_2._binder
      L6_2 = L6_2._four_wheel_short_cut_item_list
      L6_2 = L6_2[L4_2]
      L8_2 = A0_2
      L7_2 = A0_2.create_panel
      L9_2 = G
      L9_2 = L9_2.ShortCutWheelItem
      L10_2 = G
      L10_2 = L10_2.ShortCutWheelItemBinder
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.bind
      L10_2 = L6_2.transform
      L8_2(L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.setup_checked
      L10_2 = false
      L8_2(L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.setup_view_by_setting
      L10_2 = L5_2
      L11_2 = L4_2
      L8_2(L9_2, L10_2, L11_2)
      L9_2 = L7_2
      L8_2 = L7_2.setup_btn_root_click_callback
      L10_2 = A0_2
      L11_2 = A0_2._on_wheel_btn_root_click
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = A0_2._four_wheel_item_panel_list
      L8_2[L4_2] = L7_2
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._update_four_wheel_item_checked_state
  L1_2(L2_2)
end
L0_1._init_or_update_four_wheel_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = L4_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._four_wheel_item_panel_list
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L5_2 = A0_2._four_wheel_item_panel_list
      L5_2 = L5_2[L4_2]
      L7_2 = L5_2
      L6_2 = L5_2.setup_checked
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_four_wheel_first_empty_order
  L1_2 = L1_2(L2_2)
  if 0 < L1_2 then
    L2_2 = A0_2._four_wheel_item_panel_list
    L2_2 = L2_2[L1_2]
    if L2_2 then
      L2_2 = A0_2._four_wheel_item_panel_list
      L2_2 = L2_2[L1_2]
      L4_2 = L2_2
      L3_2 = L2_2.setup_checked
      L5_2 = true
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._update_four_wheel_item_checked_state = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.TabItem
  L4_2 = G
  L4_2 = L4_2.TabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._sub_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item_created
  L4_2 = L1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_eight_wheel_tab_item
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.TabItem
  L5_2 = G
  L5_2 = L5_2.TabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._sub_tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item_created
  L5_2 = L2_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_four_wheel_tab_item
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._init_tabs_items = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2.order
  L3_2 = A1_2.index
  L4_2 = A0_2._sub_tab_index
  if L4_2 == 1 then
    if 0 < L2_2 then
      L4_2 = A0_2._eight_wheel_order_to_index_set
      L4_2[L2_2] = 0
      L5_2 = A0_2
      L4_2 = A0_2._init_or_update_eight_wheel_view
      L4_2(L5_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.scroll_view
      L5_2 = L4_2
      L4_2 = L4_2.GetShownItemByItemIndex
      L6_2 = L3_2 - 1
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 ~= nil then
        L5_2 = L4_2.UserObjectData
        L7_2 = L5_2
        L6_2 = L5_2.setup_order
        L8_2 = 0
        L6_2(L7_2, L8_2)
      end
    else
      L5_2 = A0_2
      L4_2 = A0_2._get_eight_wheel_first_empty_order
      L4_2 = L4_2(L5_2)
      if 0 < L4_2 then
        L5_2 = A0_2._eight_wheel_order_to_index_set
        L5_2[L4_2] = L3_2
        L6_2 = A0_2
        L5_2 = A0_2._init_or_update_eight_wheel_view
        L5_2(L6_2)
        L5_2 = A0_2._binder
        L5_2 = L5_2.scroll_view
        L6_2 = L5_2
        L5_2 = L5_2.GetShownItemByItemIndex
        L7_2 = L3_2 - 1
        L5_2 = L5_2(L6_2, L7_2)
        if L5_2 ~= nil then
          L6_2 = L5_2.UserObjectData
          L8_2 = L6_2
          L7_2 = L6_2.setup_order
          L9_2 = L4_2
          L7_2(L8_2, L9_2)
        end
      else
        L5_2 = G
        L5_2 = L5_2.NotifyManager
        L5_2 = L5_2.notify
        L6_2 = G
        L6_2 = L6_2.CS
        L6_2 = L6_2.NotifyType
        L6_2 = L6_2.UIPileToastMessageTextID
        L7_2 = "UIText_Setting_Wheel_Tip_1"
        L5_2(L6_2, L7_2)
      end
    end
  elseif 0 < L2_2 then
    L4_2 = A0_2._four_wheel_order_to_index_set
    L4_2[L2_2] = 0
    L5_2 = A0_2
    L4_2 = A0_2._init_or_update_four_wheel_view
    L4_2(L5_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.scroll_view
    L5_2 = L4_2
    L4_2 = L4_2.GetShownItemByItemIndex
    L6_2 = L3_2 - 1
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 ~= nil then
      L5_2 = L4_2.UserObjectData
      L7_2 = L5_2
      L6_2 = L5_2.setup_order
      L8_2 = 0
      L6_2(L7_2, L8_2)
    end
  else
    L5_2 = A0_2
    L4_2 = A0_2._get_four_wheel_first_empty_order
    L4_2 = L4_2(L5_2)
    if 0 < L4_2 then
      L5_2 = A0_2._four_wheel_order_to_index_set
      L5_2[L4_2] = L3_2
      L6_2 = A0_2
      L5_2 = A0_2._init_or_update_four_wheel_view
      L5_2(L6_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.scroll_view
      L6_2 = L5_2
      L5_2 = L5_2.GetShownItemByItemIndex
      L7_2 = L3_2 - 1
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 ~= nil then
        L6_2 = L5_2.UserObjectData
        L8_2 = L6_2
        L7_2 = L6_2.setup_order
        L9_2 = L4_2
        L7_2(L8_2, L9_2)
      end
    end
  end
end
L0_1._on_grid_view_item_btn_root_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._sub_tab_index
  if L2_2 == 1 then
    L2_2 = A0_2._eight_wheel_order_to_index_set
    L2_2 = L2_2[A1_2]
    if 0 < L2_2 then
      L2_2 = A0_2._eight_wheel_order_to_index_set
      L2_2 = L2_2[A1_2]
      L3_2 = A0_2._eight_wheel_order_to_index_set
      L3_2[A1_2] = 0
      L3_2 = A0_2._eight_wheel_item_panel_list
      L3_2 = L3_2[A1_2]
      L5_2 = L3_2
      L4_2 = L3_2.setup_view_by_setting
      L6_2 = nil
      L7_2 = A1_2
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.scroll_view
      L5_2 = L4_2
      L4_2 = L4_2.GetShownItemByItemIndex
      L6_2 = L2_2 - 1
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 ~= nil then
        L5_2 = L4_2.UserObjectData
        L7_2 = L5_2
        L6_2 = L5_2.setup_order
        L8_2 = 0
        L6_2(L7_2, L8_2)
      end
      L6_2 = A0_2
      L5_2 = A0_2._update_eight_wheel_item_checked_state
      L5_2(L6_2)
    end
  else
    L2_2 = A0_2._four_wheel_order_to_index_set
    L2_2 = L2_2[A1_2]
    if 0 < L2_2 then
      L2_2 = A0_2._four_wheel_order_to_index_set
      L2_2 = L2_2[A1_2]
      L3_2 = A0_2._four_wheel_order_to_index_set
      L3_2[A1_2] = 0
      L3_2 = A0_2._four_wheel_item_panel_list
      L3_2 = L3_2[A1_2]
      L5_2 = L3_2
      L4_2 = L3_2.setup_view_by_setting
      L6_2 = nil
      L7_2 = A1_2
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.scroll_view
      L5_2 = L4_2
      L4_2 = L4_2.GetShownItemByItemIndex
      L6_2 = L2_2 - 1
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 ~= nil then
        L5_2 = L4_2.UserObjectData
        L7_2 = L5_2
        L6_2 = L5_2.setup_order
        L8_2 = 0
        L6_2(L7_2, L8_2)
      end
      L6_2 = A0_2
      L5_2 = A0_2._update_four_wheel_item_checked_state
      L5_2(L6_2)
    end
  end
end
L0_1._on_wheel_btn_root_click = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ShortCutSettingItem
    L8_2 = G
    L8_2 = L8_2.ShortCutSettingItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._all_row_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A2_2 + 1
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_btn_root_click_callback
  L8_2 = A0_2
  L9_2 = A0_2._on_grid_view_item_btn_root_click
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = 0
  L7_2 = A0_2._sub_tab_index
  if L7_2 == 1 then
    L8_2 = A0_2
    L7_2 = A0_2._get_order_by_eight_wheel
    L9_2 = A2_2 + 1
    L7_2 = L7_2(L8_2, L9_2)
    L6_2 = L7_2
  else
    L8_2 = A0_2
    L7_2 = A0_2._get_order_by_four_wheel
    L9_2 = A2_2 + 1
    L7_2 = L7_2(L8_2, L9_2)
    L6_2 = L7_2
  end
  L8_2 = L4_2
  L7_2 = L4_2.setup_order
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  return L3_2
end
L0_1._on_scroll_view_changed = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A0_2._eight_wheel_order_to_index_set
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == A1_2 then
      return L5_2
    end
  end
  L2_2 = 0
  return L2_2
end
L0_1._get_order_by_eight_wheel = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A0_2._four_wheel_order_to_index_set
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == A1_2 then
      return L5_2
    end
  end
  L2_2 = 0
  return L2_2
end
L0_1._get_order_by_four_wheel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = L3_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.Prefs
    L5_2 = L5_2.User
    L6_2 = L5_2
    L5_2 = L5_2.GetEightWheelSettingByOrder
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = A0_2._eight_wheel_order_to_index_set
    L6_2 = L6_2[L4_2]
    if L6_2 ~= L5_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = 1
  L2_2 = L4_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.Prefs
    L5_2 = L5_2.User
    L6_2 = L5_2
    L5_2 = L5_2.GetFourWheelSettingByOrder
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = A0_2._four_wheel_order_to_index_set
    L6_2 = L6_2[L4_2]
    if L6_2 ~= L5_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end
L0_1.check_is_need_save = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ipairs
  L2_2 = A0_2._eight_wheel_order_to_index_set
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 == 0 then
      return L4_2
    end
  end
  L1_2 = 0
  return L1_2
end
L0_1._get_eight_wheel_first_empty_order = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ipairs
  L2_2 = A0_2._four_wheel_order_to_index_set
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 == 0 then
      return L4_2
    end
  end
  L1_2 = 0
  return L1_2
end
L0_1._get_four_wheel_first_empty_order = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._update_input_image_tip
  L2_2(L3_2)
end
L0_1._on_in_control_input_switch = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_eight_wheel_game_pad_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_four_wheel_game_pad_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_four_wheel_mouse_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_eight_wheel_mouse_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
end
L0_1._update_input_image_tip = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_dispose = L5_1
return L0_1
