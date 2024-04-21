local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritUtilities.AetherSpiritUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritUtilities.AetherTeamUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritRoundIconItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritRoundIconItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritRoundIconListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
L1_1 = L1_1.AetherOutfitData
L2_1 = 0.1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2
  L7_2 = A3_2.ID
  A0_2._select_id = L7_2
  A0_2._cur_selected_spirit = A3_2
  A0_2._cur_selected_index = 1
  A0_2._enable_team_mark = true
  A0_2._enable_red_dot = true
  A0_2._is_move_to_selected = A4_2
  A0_2._spirit_data_table = A5_2
  A0_2._line_up_data = A6_2
  L7_2 = G
  L7_2 = L7_2.Utils
  L7_2 = L7_2.index_of_item
  L8_2 = A0_2._spirit_data_table
  L9_2 = A0_2._cur_selected_spirit
  L7_2 = L7_2(L8_2, L9_2)
  A0_2._cur_selected_index = L7_2
  A0_2._is_scroll_view_inited = false
  A0_2._is_inited_by_owner = false
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  A0_2._is_hide = A1_2
end
L0_1.set_hide = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
  end
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
  end
end
L0_1._on_leave_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_hide
  if L1_2 then
    return
  end
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.is_out_most_zoom
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = 0
      L1_3 = A0_2._cur_selected_index
      L1_3 = L1_3 - 1
      L2_3 = 1
      L3_3 = -1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = A0_2._spirit_data_table
        L5_3 = L5_3[L4_3]
        if L5_3 then
          L0_3 = L0_3 + 1
          break
        end
      end
      if 0 < L0_3 then
        L1_3 = A0_2._binder
        L1_3 = L1_3.scroll_spirit_list
        L2_3 = L1_3
        L1_3 = L1_3.SelectPreview
        L3_3 = L0_3
        L1_3(L2_3, L3_3)
      end
    end
  end
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.select_prev = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_hide
  if L1_2 then
    return
  end
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.is_out_most_zoom
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = 0
      L1_3 = A0_2._cur_selected_index
      L1_3 = L1_3 + 1
      L2_3 = A0_2._spirit_data_table
      L2_3 = #L2_3
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = A0_2._spirit_data_table
        L5_3 = L5_3[L4_3]
        if L5_3 then
          L0_3 = L0_3 + 1
          break
        end
      end
      if 0 < L0_3 then
        L1_3 = A0_2._binder
        L1_3 = L1_3.scroll_spirit_list
        L2_3 = L1_3
        L1_3 = L1_3.SelectNext
        L3_3 = L0_3
        L1_3(L2_3, L3_3)
      end
    end
  end
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.select_next = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L0_1.register_click_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._select_dialog_callback = A1_2
  A0_2._select_dialog_callback_self = A2_2
end
L0_1.register_click_open_select_dialog_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_select_dialog
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_btn_select_dialog = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.deep_copy
  L2_2 = A0_2._spirit_data_table
  return L1_2(L2_2)
end
L0_1.get_spirit_data_list = L3_1
function L3_1(A0_2, A1_2)
  A0_2._enable_team_mark = A1_2
end
L0_1.set_team_mark_enable = L3_1
function L3_1(A0_2, A1_2)
  A0_2._enable_red_dot = A1_2
end
L0_1.set_red_dot_enable = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = nil
  L2_2 = 1
  L3_2 = A0_2._spirit_data_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._spirit_data_table
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.ID
    L7_2 = A0_2._cur_selected_spirit
    L7_2 = L7_2.ID
    if L6_2 == L7_2 then
      L1_2 = L5_2
      break
    end
  end
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_spirit_list
    L3_2 = L2_2
    L2_2 = L2_2.MovePanelToItemIndex
    L4_2 = L1_2 - 1
    L2_2(L3_2, L4_2)
  end
end
L0_1.move_to_selected_spirit_index = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == true then
    A0_2._is_inited_by_owner = true
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_spirit_list
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormat
    L3_2 = "AetherSpiritRoundIconListPanel init_scroll_view(): self._binder.scroll_spirit_list == nil - return"
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._is_scroll_view_inited
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormat
    L3_2 = "AetherSpiritRoundIconListPanel init_scroll_view() self._is_scroll_view_inited == true - return"
    L2_2(L3_2)
    return
  end
  if A1_2 == false then
    L2_2 = A0_2._is_inited_by_owner
    if L2_2 == false then
      L2_2 = G
      L2_2 = L2_2.SuperDebug
      L2_2 = L2_2.LogFormat
      L3_2 = "AetherSpiritRoundIconListPanel init_scroll_view(): isFromOwner == false and self._is_inited_by_owner == false - return"
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
  L3_2 = "AetherSpiritRoundIconListPanel init_scroll_view() Successed - isFromOwner : "
  L4_2 = tostring
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
end
L0_1.init_scroll_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._on_spirit_btn_click
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.trigger_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_group
  L2_2.alpha = A1_2
end
L0_1.set_alpha = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_spirit_list
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_spirit_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
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
  L3_2 = L3_2.btn_select_dialog
  L4_2 = A0_2._on_click_open_select_dialog
  L1_2(L2_2, L3_2, L4_2)
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
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_scroll_view_inited
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogFormat
    L2_2 = "AetherSpiritRoundIconListPanel setup_view(): init_scroll_view()"
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.init_scroll_view
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AetherSpiritRoundIconItemPanel
    L8_2 = G
    L8_2 = L8_2.AetherSpiritRoundIconItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._spirit_data_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = A0_2
  L6_2 = A0_2.is_selected
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L7_2 = A2_2 + 1
    A0_2._cur_selected_index = L7_2
    A0_2._selected_head_panel = L4_2
  end
  L7_2 = A0_2._enable_team_mark
  if L7_2 then
    L7_2 = G
    L7_2 = L7_2.AetherTeamUtils
    L7_2 = L7_2.check_is_spirit_in_team
    L8_2 = L5_2
    L9_2 = A0_2._line_up_data
    L7_2 = L7_2(L8_2, L9_2)
  end
  L9_2 = L4_2
  L8_2 = L4_2.setup_view
  L10_2 = L5_2
  L11_2 = L7_2
  L12_2 = A2_2 + 1
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = L4_2
  L8_2 = L4_2.bind_button_click
  L10_2 = A0_2
  L11_2 = A0_2._on_spirit_btn_click
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
L0_1._on_spirit_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAetherMonsterAvatar
  L3_2 = A0_2._select_id
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  A0_2._cur_selected_spirit = L1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_scrollview
  L2_2(L3_2)
end
L0_1._on_spirit_sync = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._spirit_data_table
  if L2_2 == nil then
    return
  end
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = A0_2._spirit_data_table
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ID
    if L8_2 == L2_2 then
      L8_2 = A0_2._binder
      L8_2 = L8_2.scroll_spirit_list
      L9_2 = L8_2
      L8_2 = L8_2.MovePanelToItemIndex
      L10_2 = L6_2 - 1
      L8_2(L9_2, L10_2)
      break
    end
  end
end
L0_1._on_tutorial_move_list = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._spirit_data_table
  if L2_2 == nil then
    return
  end
  L2_2 = pairs
  L3_2 = A0_2._spirit_data_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.ID
    if L7_2 == A1_2 then
      L7_2 = A0_2._binder
      L7_2 = L7_2.scroll_spirit_list
      L8_2 = L7_2
      L7_2 = L7_2.MovePanelToItemIndex
      L9_2 = L5_2 - 1
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.scroll_spirit_list
      L8_2 = L7_2
      L7_2 = L7_2.FinishSnapImmediately
      L7_2(L8_2)
      L8_2 = A0_2
      L7_2 = A0_2._on_spirit_btn_click
      L9_2 = L6_2
      L10_2 = L5_2
      L7_2(L8_2, L9_2, L10_2)
      break
    end
  end
end
L0_1._on_tutorial_select_avatar = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2._owner
  L4_2 = L4_2._button_mutex
  L5_2 = L4_2
  L4_2 = L4_2.Check
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._select_id
    if L0_3 ~= nil then
      L0_3 = A0_2._cur_selected_spirit
      L1_3 = A1_2
      if L0_3 == L1_3 then
        goto lbl_59
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
    A0_2._cur_selected_spirit = L0_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.index_of_item
    L1_3 = A0_2._spirit_data_table
    L2_3 = A1_2
    L0_3 = L0_3(L1_3, L2_3)
    A0_2._cur_selected_index = L0_3
    L0_3 = A3_2
    if L0_3 == nil then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.move_to_selected_spirit_index
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
      goto lbl_70
      ::lbl_59::
      L0_3 = A0_2._cur_selected_spirit
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
    ::lbl_70::
  end
  L7_2 = L2_1
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._on_spirit_btn_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._select_dialog_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._select_dialog_callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._select_dialog_callback
      L2_2 = A0_2._select_dialog_callback_self
      L1_2(L2_2)
    end
  end
end
L0_1._on_click_open_select_dialog = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._cur_selected_spirit
  L2_2 = L2_2 == A1_2
  return L2_2
end
L0_1.is_selected = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_spirit_list
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_spirit_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._spirit_data_table
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_spirit_list
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
L0_1._refresh_scrollview = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_selected_index
  if L1_2 then
    L1_2 = A0_2._cur_selected_index
    if 0 < L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.scroll_spirit_list
      L2_2 = L1_2
      L1_2 = L1_2.SetSelectIndex
      L3_2 = A0_2._cur_selected_index
      L3_2 = L3_2 - 1
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._set_select_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_spirit_list
  if L1_2 ~= nil then
    L1_2 = A0_2._is_move_to_selected
    if L1_2 == true then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = pairs
  L2_2 = A0_2._spirit_data_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.ID
    L7_2 = A0_2._select_id
    if L6_2 == L7_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.scroll_spirit_list
      L7_2 = L6_2
      L6_2 = L6_2.MovePanelToItemIndex
      L8_2 = L4_2 - 1
      L6_2(L7_2, L8_2)
      break
    end
  end
end
L0_1._init_move_scrollview = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
return L0_1
