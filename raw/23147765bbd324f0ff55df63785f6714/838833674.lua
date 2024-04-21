local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.StoryLine.StoryLineSwitchPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.StoryLine.StoryLineSwitchItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.StoryLine.StoryLineSwitchItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.StoryLineModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "StoryLineSwitchPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.StoryLineSwitchPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.cancel_btn
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._on_confirm_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.StoryLineSwitchItemPanel
  L4_2 = G
  L4_2 = L4_2.StoryLineSwitchItemPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._main_line_panel = L1_2
  L1_2 = A0_2._main_line_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.main_line_root
  L1_2(L2_2, L3_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._init_current_selected
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_story_lines
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = L0_1.CurrentLine
  A0_2._current_selected_line = L1_2
end
L1_1._init_current_selected = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetSwitchableLines
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2[0]
  A0_2._main_line = L2_2
  L3_2 = L1_2
  L2_2 = L1_2.GetRange
  L4_2 = 1
  L5_2 = L1_2.Count
  L5_2 = L5_2 - 1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._branch_lines = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_main_line
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_branch_lines
  L2_2(L3_2)
end
L1_1._setup_story_lines = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._main_line_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._main_line
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._main_line_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_click_callback
  L3_2 = A0_2._on_line_item_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._main_line_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_selected
  L3_2 = A0_2._main_line
  L4_2 = A0_2._current_selected_line
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
end
L1_1._setup_main_line = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.layout_root
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_lines_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._branch_lines
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_list_navigation
  L1_2(L2_2)
end
L1_1._setup_branch_lines = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.StoryLineSwitchItemPanel
    L8_2 = G
    L8_2 = L8_2.StoryLineSwitchItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._branch_lines
  L7_2 = L7_2[A2_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_click_callback
  L7_2 = A0_2._on_line_item_click
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_selected
  L7_2 = A0_2._branch_lines
  L7_2 = L7_2[A2_2]
  L8_2 = A0_2._current_selected_line
  L7_2 = L7_2 == L8_2
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.setup_select_trigger_call_back
  L7_2 = A0_2
  L8_2 = A0_2._update_list_navigation
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L1_1._on_lines_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.CurrentLine
  L1_2 = L1_2.ID
  L2_2 = A0_2._current_selected_line
  L2_2 = L2_2.ID
  if L1_2 == L2_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_StoryLine_Already_In_Line"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SetReportData
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.StoryLineSwitchReason
  L3_2 = L3_2.SwitchPage
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SwitchLine
  L3_2 = A0_2._current_selected_line
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L1_1._on_confirm_btn_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._current_selected_line
  if L2_2 == A1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._unselect
  L4_2 = A0_2._current_selected_line
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_current_line
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._select
  L4_2 = A0_2._current_selected_line
  L2_2(L3_2, L4_2)
end
L1_1._on_line_item_click = L2_1
function L2_1(A0_2, A1_2)
  A0_2._current_selected_line = A1_2
end
L1_1._set_current_line = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._panel_of_line
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.set_selected
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L1_1._unselect = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._panel_of_line
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.set_selected
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L1_1._select = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._branch_lines
  L3_2 = L2_2
  L2_2 = L2_2.IndexOf
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L1_1._index_of_line = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.IsMainLine
  if L2_2 then
    L2_2 = A0_2._main_line_panel
    return L2_2
  else
    L3_2 = A0_2
    L2_2 = A0_2._index_of_line
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.list_view
    L4_2 = L3_2
    L3_2 = L3_2.GetShownItemByItemIndex
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 == nil then
      L4_2 = nil
      return L4_2
    end
    L4_2 = L3_2.UserObjectData
    return L4_2
  end
end
L1_1._panel_of_line = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._init_ui_navigation = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2.get_navigation_target
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end
L1_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._main_line_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = A0_2._main_line_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_btn
  L2_2 = L2_2(L3_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_list_view_first_btn
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L1_2
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = #L1_2
  if 1 < L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.setup_navigation
    L6_2 = L1_2
    L7_2 = NavigationType
    L7_2 = L7_2.Horizontal
    L8_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L1_1._update_list_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.line_btn
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L1_1._get_list_view_first_btn = L2_1
return L1_1
