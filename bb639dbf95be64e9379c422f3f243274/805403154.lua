local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Avatar.AssistAvatarItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AssistAvatarItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarElementFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarClassFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.FriendUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "StrangerAssistAvatarSelectTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FriendModule
L2_1 = "UIText_Assist_List_Default_Label"
L3_1 = "UIText_PlayerCard_Character_Empty"
L4_1 = "UIText_Assist_Filter_Content_Stranger"
L5_1 = 1
L6_1 = 157
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AvatarElementFilter
  L1_2 = L1_2(L2_2)
  A0_2._element_filter = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AvatarClassFilter
  L1_2 = L1_2(L2_2)
  A0_2._class_filter = L1_2
  A0_2._cur_select_index = 0
  L1_2 = {}
  A0_2._assist_data_list = L1_2
  L1_2 = {}
  A0_2._filter_assists = L1_2
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_assists
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_assists
    L2_2 = L1_2
    L1_2 = L1_2.GetShownItemByItemIndex
    L3_2 = A0_2._cur_select_index
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      L2_2 = L1_2.UserObjectData
      if L2_2 ~= nil then
        L2_2 = L1_2.UserObjectData
        L2_2 = L2_2._binder
        L2_2 = L2_2.btn_root
        L2_2 = L2_2.gameObject
        return L2_2
      end
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_listener = A2_2
end
L0_1.register_click_callback = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatars_view
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.refresh = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_assists
    L3_2 = L2_2
    L2_2 = L2_2.MovePanelToItemIndex
    L4_2 = 0
    L2_2(L3_2, L4_2)
    A0_2._cur_select_index = 0
    L3_2 = A0_2
    L2_2 = A0_2.force_set_first_navigation_target
    L2_2(L3_2)
  end
end
L0_1._on_in_control_input_switch = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_need_reset_navigation
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
  end
  A0_2._is_need_reset_navigation = false
end
L0_1._on_got_focus = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StrangerAssistListUpdate
  L4_2 = A0_2._on_assist_list_refresh
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_order_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_order_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_panel_by_enum
  L3_2 = FilterSortSelectEnum
  L3_2 = L3_2.Filter
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._filter_panel = L1_2
  L1_2 = A0_2._filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_filters
  L3_2 = A0_2._element_filter
  L4_2 = A0_2._class_filter
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._setup_filter
  L4_2 = A0_2._on_finish_filter
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_in_control_button_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset_all_filter
  L1_2(L2_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
end
L0_1._on_added = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_assists
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_get_avatar_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_assists
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L0_1._on_select = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.get_state
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 ~= L2_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._reset_all_filter
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_assist_list_refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1.StrangerAssistList
  L1_2 = L1_2(L2_2)
  A0_2._assist_data_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._sort_assist_list
  L1_2(L2_2)
  L1_2 = A0_2._assist_data_list
  A0_2._filter_assists = L1_2
  L1_2 = A0_2._assist_data_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._assist_data_list
    L1_2 = L1_2[1]
    A0_2._cur_assist = L1_2
  end
  L1_2 = A0_2._click_callback
  if L1_2 then
    L1_2 = A0_2._click_listener
    if L1_2 then
      L1_2 = A0_2._click_callback
      L2_2 = A0_2._click_listener
      L3_2 = A0_2._cur_assist
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = A0_2._filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh_filters
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatars_view
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_first_selected_object
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_empty_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_short_cut_hint
  L1_2(L2_2)
end
L0_1._refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._assist_data_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = L3_1
    if L1_2 then
      goto lbl_9
    end
  end
  L1_2 = L2_1
  ::lbl_9::
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_empty_text = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_tab_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
end
L0_1._setup_title = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._assist_data_list
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = L1_1.CurAssistData
    L2_3 = L2_3.PlayerDisplayData
    L3_3 = A0_3.PlayerDisplayData
    L3_3 = L3_3.UID
    L4_3 = A1_3.PlayerDisplayData
    L4_3 = L4_3.UID
    if L2_3 then
      L5_3 = L2_3.UID
      if L3_3 ~= L5_3 then
        L5_3 = L2_3.UID
        if L4_3 ~= L5_3 then
          goto lbl_21
        end
      end
      L5_3 = L2_3.UID
      L5_3 = L3_3 == L5_3
      return L5_3
    end
    ::lbl_21::
    L5_3 = L1_1
    L6_3 = L5_3
    L5_3 = L5_3.IsFriend
    L7_3 = L3_3
    L5_3 = L5_3(L6_3, L7_3)
    L6_3 = L1_1
    L7_3 = L6_3
    L6_3 = L6_3.IsFriend
    L8_3 = L4_3
    L6_3 = L6_3(L7_3, L8_3)
    if L5_3 ~= L6_3 then
      L5_3 = L1_1
      L6_3 = L5_3
      L5_3 = L5_3.IsFriend
      L7_3 = L3_3
      return L5_3(L6_3, L7_3)
    end
    L5_3 = A0_3.AvatarData
    L5_3 = L5_3.Level
    L6_3 = A1_3.AvatarData
    L6_3 = L6_3.Level
    if L5_3 ~= L6_3 then
      L5_3 = A0_3.AvatarData
      L5_3 = L5_3.Level
      L6_3 = A1_3.AvatarData
      L6_3 = L6_3.Level
      L5_3 = L5_3 > L6_3
      return L5_3
    end
    L5_3 = A0_3.AvatarData
    L5_3 = L5_3.ID
    L6_3 = A1_3.AvatarData
    L6_3 = L6_3.ID
    if L5_3 ~= L6_3 then
      L5_3 = A0_3.AvatarData
      L5_3 = L5_3.ID
      L6_3 = A1_3.AvatarData
      L6_3 = L6_3.ID
      L5_3 = L5_3 < L6_3
      return L5_3
    end
    L5_3 = L3_3 < L4_3
    return L5_3
  end
  L1_2(L2_2, L3_2)
end
L0_1._sort_assist_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._assist_data_list
  L1_2(L2_2, L3_2)
end
L0_1._setup_filter = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._filter_assists = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_short_cut_hint
  L2_2(L3_2)
  A0_2._cur_select_index = 0
  L3_2 = A0_2
  L2_2 = A0_2._setup_avatars_view
  L4_2 = true
  L2_2(L3_2, L4_2)
  A0_2._is_need_reset_navigation = true
  L3_2 = A0_2
  L2_2 = A0_2.force_set_first_navigation_target
  L2_2(L3_2)
end
L0_1._on_finish_filter = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._filter_assists
  L1_2 = #L1_2
  if 0 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = L6_1
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = L5_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_short_cut_hint = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_assists
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._filter_assists
  L4_2 = #L4_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_assists
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._filter_assists
  L4_2 = #L4_2
  L4_2 = L4_2 == 0
  L2_2(L3_2, L4_2)
end
L0_1._setup_avatars_view = L7_1
function L7_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.AssistAvatarItemPanel
    L8_2 = G
    L8_2 = L8_2.AssistAvatarItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.register_click_callback
  L7_2 = A0_2._on_member_click
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_detail_callback
  L7_2 = A0_2._on_detail_click
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._filter_assists
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L8_2 = A0_2._cur_assist
  L8_2 = L8_2 == L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._cur_assist
  if L6_2 == L5_2 then
    A0_2._cur_select_index = A2_2
  end
  return L3_2
end
L0_1._on_get_avatar_item = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2._cur_assist
  if L2_2 == A1_2 then
    return
  end
  A0_2._cur_assist = A1_2
  L2_2 = 1
  L3_2 = A0_2._filter_assists
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.scroll_assists
    L7_2 = L6_2
    L6_2 = L6_2.GetShownItemByItemIndex
    L8_2 = L5_2 - 1
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.UserObjectData
      L9_2 = L7_2
      L8_2 = L7_2.set_selected
      L10_2 = A0_2._cur_assist
      L11_2 = A0_2._filter_assists
      L11_2 = L11_2[L5_2]
      L10_2 = L10_2 == L11_2
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._cur_assist
      L9_2 = A0_2._filter_assists
      L9_2 = L9_2[L5_2]
      if L8_2 == L9_2 then
        L8_2 = L5_2 - 1
        A0_2._cur_select_index = L8_2
      end
    end
  end
  L2_2 = A0_2._click_callback
  if L2_2 then
    L2_2 = A0_2._click_listener
    if L2_2 then
      L2_2 = A0_2._click_callback
      L3_2 = A0_2._click_listener
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_member_click = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.FriendUtils
  L3_2 = L3_2.create_stranger_assist_option_data
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_async_show
  L5_2 = "Ui.PlayerInfo.OptionListDialog"
  L6_2 = L3_2
  L7_2 = A1_2.transform
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._on_detail_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._element_filter
  L2_2 = L1_2
  L1_2 = L1_2.clear
  L1_2(L2_2)
  L1_2 = A0_2._class_filter
  L2_2 = L1_2
  L1_2 = L1_2.clear
  L1_2(L2_2)
  L1_2 = A0_2._filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_filters
  L3_2 = A0_2._element_filter
  L4_2 = A0_2._class_filter
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._reset_all_filter = L7_1
return L0_1
