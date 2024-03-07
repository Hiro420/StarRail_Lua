local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.RogueTeamInfoProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarHeadIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarHeadIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TeamModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.AvatarModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.FriendModule
L4_1 = 0.1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2
  L6_2 = A3_2.ID
  A0_2._select_id = L6_2
  A0_2._cur_selected_avatar = A3_2
  A0_2._cur_selected_index = 1
  A0_2._enable_team_mark = true
  A0_2._enable_filter = true
  A0_2._enable_red_dot = true
  A0_2._is_move_to_selected = A5_2
  A0_2._team_info_provider = A4_2
  L7_2 = A0_2
  L6_2 = A0_2._init_avatar_data_list
  L6_2(L7_2)
  A0_2._is_scroll_view_inited = false
  A0_2._is_inited_by_owner = false
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  A0_2._is_hide = A1_2
end
L0_1.set_hide = L5_1
function L5_1(A0_2, A1_2)
  A0_2._root_canvas_group = A1_2
end
L0_1.set_root_canvas_group = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_filter
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 or L4_2
  if A1_2 then
    L4_2 = A0_2._enable_filter
  end
  L2_2(L3_2, L4_2)
end
L0_1.setup_in_control_button_enable = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.tab_control_in_control_tip
    if L2_2 ~= nil then
      L3_2 = A0_2
      L2_2 = A0_2.setup_in_control_button_enable
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.tab_control_in_control_tip
    if L2_2 ~= nil then
      L3_2 = A0_2
      L2_2 = A0_2.setup_in_control_button_enable
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_leave_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._check_is_hide_avatar_list
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._get_select_prev_index
    L0_3 = L0_3(L1_3)
    if L0_3 ~= nil then
      L1_3 = A0_2._binder
      L1_3 = L1_3.scroll_avatar_list
      L2_3 = L1_3
      L1_3 = L1_3.SelectByIndex
      L3_3 = L0_3 - 1
      L1_3(L2_3, L3_3)
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.to_first_zoom
      L1_3(L2_3)
    end
  end
  L4_2 = L4_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.select_prev = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._check_is_hide_avatar_list
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._get_select_next_index
    L0_3 = L0_3(L1_3)
    if L0_3 ~= nil then
      L1_3 = A0_2._binder
      L1_3 = L1_3.scroll_avatar_list
      L2_3 = L1_3
      L1_3 = L1_3.SelectByIndex
      L3_3 = L0_3 - 1
      L1_3(L2_3, L3_3)
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.to_first_zoom
      L1_3(L2_3)
    end
  end
  L4_2 = L4_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.select_next = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_group
  L2_2.alpha = A1_2
end
L0_1.set_alpha = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L0_1.register_click_callback = L5_1
function L5_1(A0_2, A1_2)
  A0_2._on_btn_filter_callback = A1_2
end
L0_1.register_filter_callback = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._avatar_data_list = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_scrollview
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.index_of_item
  L3_2 = A0_2._avatar_data_list
  L4_2 = A0_2._cur_selected_avatar
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = 1
  end
  A0_2._cur_selected_index = L2_2
end
L0_1.set_avatar_data_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.deep_copy
  L2_2 = A0_2._avatar_data_list
  return L1_2(L2_2)
end
L0_1.get_avatar_data_list = L5_1
function L5_1(A0_2, A1_2)
  A0_2._enable_team_mark = A1_2
end
L0_1.set_team_mark_enable = L5_1
function L5_1(A0_2, A1_2)
  A0_2._enable_filter = A1_2
end
L0_1.set_filter_enable = L5_1
function L5_1(A0_2, A1_2)
  A0_2._enable_red_dot = A1_2
end
L0_1.set_red_dot_enable = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = nil
  L2_2 = 1
  L3_2 = A0_2._avatar_data_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._avatar_data_list
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.RealID
    L7_2 = A0_2._cur_selected_avatar
    L7_2 = L7_2.RealID
    if L6_2 == L7_2 then
      L6_2 = A0_2._avatar_data_list
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.IsTrialPlayer
      L7_2 = A0_2._cur_selected_avatar
      L7_2 = L7_2.IsTrialPlayer
      if L6_2 == L7_2 then
        L1_2 = L5_2
        break
      end
    end
  end
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_avatar_list
    L3_2 = L2_2
    L2_2 = L2_2.MovePanelToItemIndex
    L4_2 = L1_2 - 1
    L2_2(L3_2, L4_2)
  end
end
L0_1.move_to_selected_avatar_index = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == true then
    A0_2._is_inited_by_owner = true
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_avatar_list
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormat
    L3_2 = "AvatarListPanel init_scroll_view(): self._binder.scroll_avatar_list == nil - return"
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._is_scroll_view_inited
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormat
    L3_2 = "AvatarListPanel init_scroll_view() self._is_scroll_view_inited == true - return"
    L2_2(L3_2)
    return
  end
  if A1_2 == false then
    L2_2 = A0_2._is_inited_by_owner
    if L2_2 == false then
      L2_2 = G
      L2_2 = L2_2.SuperDebug
      L2_2 = L2_2.LogFormat
      L3_2 = "AvatarListPanel init_scroll_view(): isFromOwner == false and self._is_inited_by_owner == false - return"
      L2_2(L3_2)
      return
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_scrollview
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_move_scrollview
  L2_2(L3_2)
  L2_2 = A0_2._selected_head_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._selected_head_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_selected
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._selected_head_panel
    A0_2._last_head_panel = L2_2
  end
  A0_2._is_scroll_view_inited = true
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormat
  L3_2 = "AvatarListPanel init_scroll_view() Successed - isFromOwner : "
  L4_2 = tostring
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
end
L0_1.init_scroll_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_avatar_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AvatarSync
  L4_2 = L0_1._on_avatar_sync
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialMoveScrollView
  L4_2 = L0_1._on_tutorial_move_list
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialSelectTarget
  L4_2 = L0_1._on_tutorial_select_avatar
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_filter
  L4_2 = L0_1._on_btn_filter
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_filter
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._enable_filter
  if L3_2 then
    L3_2 = A0_2._is_hide
    L3_2 = not L3_2
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2.select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2.select_next
  L1_2(L2_2, L3_2, L4_2)
  A0_2._last_head_panel = nil
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_scroll_view_inited
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogFormat
    L2_2 = "AvatarListPanel _setup_view(): init_scroll_view()"
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.init_scroll_view
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_view = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AvatarHeadIconPanel
    L8_2 = G
    L8_2 = L8_2.AvatarHeadIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._avatar_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = A0_2
  L6_2 = A0_2._is_selected
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L7_2 = A2_2 + 1
    A0_2._cur_selected_index = L7_2
    A0_2._selected_head_panel = L4_2
  end
  L7_2 = A0_2._enable_team_mark
  if L7_2 then
    L7_2 = A0_2._team_info_provider
    L8_2 = L7_2
    L7_2 = L7_2.is_avatar_in_team
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
  end
  L9_2 = L4_2
  L8_2 = L4_2.setup_view
  L10_2 = L5_2
  L11_2 = L6_2
  L12_2 = L7_2
  L13_2 = A2_2 + 1
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = G
  L8_2 = L8_2.IsInstanceOf
  L9_2 = A0_2._team_info_provider
  L10_2 = G
  L10_2 = L10_2.ChallengeTeamInfoProvider
  L8_2 = L8_2(L9_2, L10_2)
  if L8_2 then
    L9_2 = L4_2
    L8_2 = L4_2.set_team
    L10_2 = L7_2
    L11_2 = A0_2._team_info_provider
    L12_2 = L11_2
    L11_2 = L11_2.get_avatar_team_index
    L13_2 = L5_2
    L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  L9_2 = L4_2
  L8_2 = L4_2.bind_button_click
  L10_2 = A0_2
  L11_2 = A0_2._on_avatar_btn_click
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_red_dot_active
  L10_2 = A0_2._enable_red_dot
  L8_2(L9_2, L10_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_clear_selected_by_input_switched
  L10_2 = false
  L8_2(L9_2, L10_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_selected
  L10_2 = L6_2
  L8_2(L9_2, L10_2)
  if L6_2 then
    A0_2._last_head_panel = L4_2
  end
  return L3_2
end
L0_1._on_avatar_change = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAvatar
  L3_2 = A0_2._select_id
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  A0_2._cur_selected_avatar = L1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_scrollview
  L2_2(L3_2)
end
L0_1._on_avatar_sync = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._avatar_data_list
  if L2_2 == nil then
    return
  end
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = A0_2._avatar_data_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ID
    if L8_2 == L2_2 then
      L8_2 = A0_2._binder
      L8_2 = L8_2.scroll_avatar_list
      L9_2 = L8_2
      L8_2 = L8_2.MovePanelToItemIndex
      L10_2 = L6_2 - 1
      L8_2(L9_2, L10_2)
      break
    end
  end
end
L0_1._on_tutorial_move_list = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._avatar_data_list
  if L2_2 == nil then
    return
  end
  L2_2 = pairs
  L3_2 = A0_2._avatar_data_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.RealID
    if L7_2 == A1_2 then
      L7_2 = A0_2._binder
      L7_2 = L7_2.scroll_avatar_list
      L8_2 = L7_2
      L7_2 = L7_2.MovePanelToItemIndex
      L9_2 = L5_2 - 1
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.scroll_avatar_list
      L8_2 = L7_2
      L7_2 = L7_2.FinishSnapImmediately
      L7_2(L8_2)
      L8_2 = A0_2
      L7_2 = A0_2._on_avatar_btn_click
      L9_2 = L6_2
      L10_2 = L5_2
      L7_2(L8_2, L9_2, L10_2)
      break
    end
  end
end
L0_1._on_tutorial_select_avatar = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A1_2.IsPlotTrialPlayer
  if L4_2 then
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.UIPileToastMessageTextID
    L6_2 = "UIText_TrialAvatar_TagType4_Toast_Forbid"
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = A0_2._owner
  L4_2 = L4_2._button_mutex
  L5_2 = L4_2
  L4_2 = L4_2.Check
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._select_id
    if L0_3 ~= nil then
      L0_3 = A0_2._cur_selected_avatar
      L1_3 = A1_2
      if L0_3 == L1_3 then
        goto lbl_67
      end
    end
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._click_callback
    L2_3 = A0_2._click_handler
    L3_3 = A1_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A1_2.ID
    A0_2._select_id = L0_3
    L0_3 = A1_2
    A0_2._cur_selected_avatar = L0_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.index_of_item
    L1_3 = A0_2._avatar_data_list
    L2_3 = A1_2
    L0_3 = L0_3(L1_3, L2_3)
    if not L0_3 then
      L0_3 = 1
    end
    A0_2._cur_selected_index = L0_3
    L0_3 = A3_2
    if L0_3 == nil then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.move_to_selected_avatar_index
      L0_3(L1_3)
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._set_select_index
    L0_3(L1_3)
    L0_3 = A0_2._last_head_panel
    if L0_3 ~= nil then
      L0_3 = A0_2._last_head_panel
      L1_3 = L0_3
      L0_3 = L0_3.set_selected
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
    L0_3 = G
    L0_3 = L0_3.SuperDebug
    L0_3 = L0_3.LogFormat
    L1_3 = "AvatarListPanel : HeadIconPanel selected"
    L0_3(L1_3)
    L0_3 = A3_2
    if L0_3 == nil then
      L0_3 = G
      L0_3 = L0_3.Utils
      L0_3 = L0_3.invoke_next_frame_callback
      L1_3 = A0_2._refresh_scrollview
      L2_3 = A0_2
      L0_3(L1_3, L2_3)
    else
      L0_3 = A3_2
      L1_3 = L0_3
      L0_3 = L0_3.set_selected
      L2_3 = true
      L0_3(L1_3, L2_3)
      L0_3 = A3_2
      A0_2._last_head_panel = L0_3
      goto lbl_78
      ::lbl_67::
      L0_3 = A0_2._cur_selected_avatar
      L1_3 = A1_2
      if L0_3 == L1_3 then
        L0_3 = A3_2
        if L0_3 ~= nil then
          L0_3 = A3_2
          L1_3 = L0_3
          L0_3 = L0_3.set_selected
          L2_3 = true
          L0_3(L1_3, L2_3)
        end
      end
    end
    ::lbl_78::
  end
  L7_2 = L4_1
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._on_avatar_btn_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.get_avatar_data_list
  L2_2 = A0_2._team_info_provider
  L1_2 = L1_2(L2_2)
  A0_2._avatar_data_list = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.index_of_item
  L2_2 = A0_2._avatar_data_list
  L3_2 = A0_2._cur_selected_avatar
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = 1
  end
  A0_2._cur_selected_index = L1_2
end
L0_1._init_avatar_data_list = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._cur_selected_avatar
  L2_2 = L2_2 == A1_2
  return L2_2
end
L0_1._is_selected = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatar_list
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._avatar_data_list
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_next_frame_callback
  L2_2 = A0_2._set_select_index
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._refresh_scrollview = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_selected_index
  if L1_2 then
    L1_2 = A0_2._cur_selected_index
    if 0 < L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.scroll_avatar_list
      L2_2 = L1_2
      L1_2 = L1_2.SetSelectIndex
      L3_2 = A0_2._cur_selected_index
      L3_2 = L3_2 - 1
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._set_select_index = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatar_list
  if L1_2 ~= nil then
    L1_2 = A0_2._is_move_to_selected
    if L1_2 == true then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = pairs
  L2_2 = A0_2._avatar_data_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.RealID
    L7_2 = A0_2._cur_selected_avatar
    L7_2 = L7_2.RealID
    if L6_2 == L7_2 then
      L6_2 = L5_2.IsTrialPlayer
      L7_2 = A0_2._cur_selected_avatar
      L7_2 = L7_2.IsTrialPlayer
      if L6_2 == L7_2 then
        L6_2 = A0_2._binder
        L6_2 = L6_2.scroll_avatar_list
        L7_2 = L6_2
        L6_2 = L6_2.MovePanelToItemIndex
        L8_2 = L4_2 - 1
        L6_2(L7_2, L8_2)
        L6_2 = A0_2._selected_head_panel
        if L6_2 ~= nil then
        end
        break
      end
    end
  end
end
L0_1._init_move_scrollview = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_scroll_content
  L3_2 = A0_2._selected_head_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_rect_root
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_pc_or_ps_or_mobile_gamepad_mode
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = L2_2.anchoredPosition
    L4_2 = L4_2.x
    L5_2 = L3_2.anchoredPosition
    L5_2 = L5_2.x
    L6_2 = L5_2 + L4_2
    if L6_2 < 5 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.scroll_avatar_list
      L7_2 = L6_2
      L6_2 = L6_2.MovePanelToItemIndex
      L8_2 = A1_2 - 1
      L9_2 = L2_2.sizeDelta
      L9_2 = L9_2.x
      L10_2 = A0_2._avatar_data_list
      L10_2 = #L10_2
      L9_2 = L9_2 / L10_2
      L9_2 = L9_2 / 2
      L6_2(L7_2, L8_2, L9_2)
    end
  else
    L4_2 = L2_2.anchoredPosition
    L4_2 = L4_2.y
    L5_2 = L3_2.anchoredPosition
    L5_2 = L5_2.y
    L6_2 = math
    L6_2 = L6_2.abs
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L7_2 = math
    L7_2 = L7_2.abs
    L8_2 = L4_2
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 - L7_2
    if L6_2 < 5 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.scroll_avatar_list
      L7_2 = L6_2
      L6_2 = L6_2.MovePanelToItemIndex
      L8_2 = A1_2 - 1
      L9_2 = L2_2.sizeDelta
      L9_2 = L9_2.y
      L10_2 = A0_2._avatar_data_list
      L10_2 = #L10_2
      L9_2 = L9_2 / L10_2
      L9_2 = L9_2 / 2
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L0_1._half_move_scrollview = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  A0_2._avatar_data_list = nil
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeList
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_avatar_list
  L1_2(L2_2)
end
L0_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._on_btn_filter_callback
  if L1_2 then
    L1_2 = A0_2._on_btn_filter_callback
    L1_2()
  end
end
L0_1._on_btn_filter = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_hide
  if not L1_2 then
    L1_2 = A0_2._root_canvas_group
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.MathUtils
      L1_2 = L1_2.float_equal
      L2_2 = A0_2._root_canvas_group
      L2_2 = L2_2.alpha
      L3_2 = 0
      L1_2 = L1_2(L2_2, L3_2)
    end
  end
  return L1_2
end
L0_1._check_is_hide_avatar_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = nil
  L2_2 = A0_2._cur_selected_index
  if L2_2 == 1 then
    L3_2 = A0_2
    L2_2 = A0_2._get_index_by_last_to_first
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  else
    L3_2 = A0_2
    L2_2 = A0_2._get_index_by_current_to_first
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
    if L1_2 == nil then
      L3_2 = A0_2
      L2_2 = A0_2._get_index_by_last_to_first
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    end
  end
  return L1_2
end
L0_1._get_select_prev_index = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = nil
  L2_2 = A0_2._cur_selected_index
  L3_2 = A0_2._avatar_data_list
  L3_2 = #L3_2
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._get_index_by_first_to_last
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  else
    L3_2 = A0_2
    L2_2 = A0_2._get_index_by_current_to_last
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
    if L1_2 == nil then
      L3_2 = A0_2
      L2_2 = A0_2._get_index_by_first_to_last
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    end
  end
  return L1_2
end
L0_1._get_select_next_index = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = nil
  L2_2 = A0_2._cur_selected_index
  L2_2 = L2_2 - 1
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._avatar_data_list
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L7_2 = L6_2.IsPlotTrialPlayer
      if not L7_2 then
        L1_2 = L5_2
        break
      end
    end
  end
  return L1_2
end
L0_1._get_index_by_current_to_first = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = nil
  L2_2 = A0_2._cur_selected_index
  L2_2 = L2_2 + 1
  L3_2 = A0_2._avatar_data_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._avatar_data_list
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L7_2 = L6_2.IsPlotTrialPlayer
      if not L7_2 then
        L1_2 = L5_2
        break
      end
    end
  end
  return L1_2
end
L0_1._get_index_by_current_to_last = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = nil
  L2_2 = A0_2._avatar_data_list
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._avatar_data_list
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L7_2 = L6_2.IsPlotTrialPlayer
      if not L7_2 then
        L1_2 = L5_2
        break
      end
    end
  end
  return L1_2
end
L0_1._get_index_by_last_to_first = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = nil
  L2_2 = 1
  L3_2 = A0_2._avatar_data_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._avatar_data_list
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L7_2 = L6_2.IsPlotTrialPlayer
      if not L7_2 then
        L1_2 = L5_2
        break
      end
    end
  end
  return L1_2
end
L0_1._get_index_by_first_to_last = L5_1
return L0_1
