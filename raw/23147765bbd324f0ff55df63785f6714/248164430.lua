local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Maze.MazeShortCutHintPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeShortCutHintPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "ActionGroup_Scroll"
L2_1 = "ActionChat_ScrollChat"
L3_1 = "ActionGroup_Scroll_Horizon"
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2
  L7_2 = {}
  A0_2.short_cut_name_list = L7_2
  L7_2 = {}
  A0_2.short_cut_name_list_backup = L7_2
  A0_2.action_operation_set_id = 0
  A0_2.scroll_rect = A4_2
  L8_2 = A0_2
  L7_2 = A0_2._try_set_short_cut_name_list
  L9_2 = A3_2
  L7_2(L8_2, L9_2)
  A0_2._is_full_screen_hint = A5_2
  A2_2._is_full_screen_hint = A5_2
  L7_2 = A6_2 or L7_2
  if A6_2 then
    L7_2 = A6_2.Prefab
    L7_2 = L7_2.name
  end
  L8_2 = L7_2 or L8_2
  if L7_2 then
    L8_2 = string
    L8_2 = L8_2.format
    L9_2 = "UI/CommonKits/KeyMap/%s.prefab"
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
  end
  A2_2._dialog_hint_prefab_path = L8_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2.scroll_rect = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_set_short_cut_name_list
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._shut_cut_panel
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.update_view_and_bg
    L3_2(L4_2)
  end
end
L0_1.setup_short_cut_hint_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = {}
  A0_2.short_cut_name_list = L3_2
  if A1_2 then
    L3_2 = type
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 == "table" then
      L2_2 = A1_2
    else
      L3_2 = type
      L4_2 = A1_2
      L3_2 = L3_2(L4_2)
      if L3_2 == "number" then
        A0_2.action_operation_set_id = A1_2
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.ActionOperationSetExcelTable
        L3_2 = L3_2.GetData
        L4_2 = A1_2
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L4_2 = G
          L4_2 = L4_2.Utils
          L4_2 = L4_2.create_lua_table_from_cs_array
          L5_2 = L3_2.ActionNameList
          L4_2 = L4_2(L5_2)
          L2_2 = L4_2
        end
      end
    end
  end
  L3_2 = A0_2.scroll_rect
  if L3_2 then
    L3_2 = A0_2.scroll_rect
    L4_2 = L3_2
    L3_2 = L3_2.CanScroll
    L3_2 = L3_2(L4_2)
    if L3_2 == false then
      L3_2 = ipairs
      L4_2 = L2_2
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = L1_1
        if L7_2 ~= L8_2 then
          L8_2 = L2_1
          if L7_2 ~= L8_2 then
            L8_2 = L3_1
            if L7_2 ~= L8_2 then
              L8_2 = table
              L8_2 = L8_2.insert
              L9_2 = A0_2.short_cut_name_list
              L10_2 = L7_2
              L8_2(L9_2, L10_2)
            end
          end
        end
      end
  end
  else
    A0_2.short_cut_name_list = L2_2
  end
end
L0_1._try_set_short_cut_name_list = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.update_view
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._update_view_active_by_light_weight
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.update_view
  L1_2(L2_2)
end
L0_1._on_in_control_input_switch = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._update_view_active_by_light_weight
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.update_view_and_bg
  L1_2(L2_2)
  L1_2 = A0_2._is_full_screen_hint
  if L1_2 then
    L1_2 = A0_2._binder
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_dialog
      if L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.node_dialog
        L1_2 = L1_2.anchoredPosition
        L1_2 = L1_2.y
        if L1_2 < 0 then
          L1_2 = A0_2._binder
          L1_2 = L1_2.node_dialog
          L1_2 = L1_2.anchoredPosition
          L1_2 = L1_2.x
          L2_2 = A0_2._binder
          L2_2 = L2_2.node_dialog
          L3_2 = CS
          L3_2 = L3_2.UnityEngine
          L3_2 = L3_2.Vector2
          L4_2 = L1_2
          L5_2 = 0
          L3_2 = L3_2(L4_2, L5_2)
          L2_2.anchoredPosition = L3_2
        end
      end
    end
  end
end
L0_1._on_got_focus = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_layout
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_gamepad_input
    L1_2 = L1_2()
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.set_light_weight_active
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.Prefs
      L3_2 = L3_2.Settings
      L3_2 = L3_2.Other
      L3_2 = L3_2.BottomShortCutHintForController
      L1_2(L2_2, L3_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2.set_light_weight_active
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.Prefs
      L3_2 = L3_2.Settings
      L3_2 = L3_2.Other
      L3_2 = L3_2.BottomShortCutHint
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._update_view_active_by_light_weight = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.InputFiledSelectedChanged
  L4_2 = L0_1._on_input_filed_selected_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.InputDeviceClassSwitched
  L4_2 = L0_1._on_in_control_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Maze.ShutCutInfoItem"
  L6_2 = "Ui.Maze.ShutCutInfoItemBinder"
  L7_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._shut_cut_panel = L1_2
  L1_2 = A0_2._shut_cut_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_contents
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_view_active_by_light_weight
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.update_view_and_bg
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.add_hide_node_on_sharing
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  if A1_2 == true then
    L2_2 = {}
    A0_2.short_cut_name_list_backup = L2_2
    L2_2 = ipairs
    L3_2 = A0_2.short_cut_name_list
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2.short_cut_name_list_backup
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_view
    L4_2 = 1
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_view
    L4_2 = A0_2.short_cut_name_list_backup
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_input_filed_selected_changed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.update_view_and_bg
  L1_2(L2_2)
end
L0_1._on_in_control_changed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.short_cut_name_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_actions
  L1_2 = L1_2(L2_2)
  A0_2.short_cut_name_list = L1_2
end
L0_1._load_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.action_operation_set_id
  if 0 < L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.ActionOperationSetExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2.action_operation_set_id
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = {}
      L3_2 = G
      L3_2 = L3_2.Utils
      L3_2 = L3_2.create_lua_table_from_cs_array
      L4_2 = L1_2.ActionNameList
      L3_2 = L3_2(L4_2)
      L4_2 = ipairs
      L5_2 = L3_2
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = L1_1
        if L8_2 ~= L9_2 then
          L9_2 = L2_1
          if L8_2 ~= L9_2 then
            L9_2 = L3_1
            if L8_2 ~= L9_2 then
              L9_2 = table
              L9_2 = L9_2.insert
              L10_2 = L2_2
              L11_2 = L8_2
              L9_2(L10_2, L11_2)
            end
          end
        end
      end
      return L2_2
    end
  end
  L1_2 = A0_2.disable_default
  if L1_2 == true then
    L1_2 = {}
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActionOperationSetExcelTable
  L1_2 = L1_2.GetData
  L2_2 = 1
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = L1_2.ActionNameList
  return L2_2(L3_2)
end
L0_1._get_actions = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._shut_cut_panel
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._load_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.update_view_and_bg
  L1_2(L2_2)
end
L0_1.update_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._shut_cut_panel
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_actions
  L1_2 = L1_2(L2_2)
  A0_2.short_cut_name_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.update_view_and_bg
  L1_2(L2_2)
end
L0_1.reset_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._shut_cut_panel
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._shut_cut_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2.short_cut_name_list
  L1_2(L2_2, L3_2)
  L1_2 = false
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_contents
  L3_2 = L3_2.childCount
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_contents
    L7_2 = L6_2
    L6_2 = L6_2.GetChild
    L8_2 = L5_2 - 1
    L6_2 = L6_2(L7_2, L8_2)
    L6_2 = L6_2.gameObject
    L6_2 = L6_2.activeSelf
    if L6_2 then
      L1_2 = true
      break
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.blur_root
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.blur_root
    L2_2.enabled = L1_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bg
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_bg
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.update_view_and_bg = L4_1
return L0_1
