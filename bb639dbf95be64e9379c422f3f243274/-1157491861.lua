local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.DecalGameplayConfigExcelTable
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "DecalPuzzleSelectPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._decal_table = L1_2
  A0_2._cur_selected_decal_id = nil
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._panel_selected = nil
end
L2_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._init_decal_table
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_default_decal
  L2_2(L3_2)
end
L2_1.init = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  A0_2._decal_table = L2_2
  L2_2 = 0
  L3_2 = A1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L0_1.GetData
    L7_2 = A1_2[L5_2]
    L6_2 = L6_2(L7_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.RequiredItemID
      L7_2 = L7_2 == 0
      if L7_2 then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = A0_2._decal_table
        L10_2 = L6_2
        L8_2(L9_2, L10_2)
      end
    end
  end
end
L2_1._init_decal_table = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._decal_table
  L1_2 = L1_2[1]
  if L1_2 ~= nil then
    L2_2 = L1_2.DecalID
    A0_2._cur_selected_decal_id = L2_2
  end
end
L2_1._init_default_decal = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_decal_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_select_ctrl_tips
  L1_2(L2_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._decal_change_callback_handler = A1_2
  A0_2._decal_change_callback_listener = A2_2
end
L2_1.register_decal_change_callback = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_selected_decal_id
  return L1_2
end
L2_1.get_cur_selected_decal_id = L3_1
function L3_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.DecalPuzzleItemPanel
    L8_2 = G
    L8_2 = L8_2.DecalPuzzleItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._decal_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_is_locked
  L8_2 = false
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_click_handler
  L8_2 = A0_2._on_decal_select
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._cur_selected_decal_id
  L7_2 = L5_2.DecalID
  L6_2 = L6_2 == L7_2
  L8_2 = L4_2
  L7_2 = L4_2.setup_selected
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  if L6_2 then
    A0_2._panel_selected = L4_2
  end
  return L3_2
end
L2_1._on_scroll_decal_change = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.DecalID
  A0_2._cur_selected_decal_id = L3_2
  L3_2 = A0_2._panel_selected
  if L3_2 ~= nil then
    L3_2 = A0_2._panel_selected
    L4_2 = L3_2
    L3_2 = L3_2.setup_selected
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  A0_2._panel_selected = A2_2
  L3_2 = A0_2._panel_selected
  L4_2 = L3_2
  L3_2 = L3_2.setup_selected
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._decal_change_callback_handler
  L5_2 = A0_2._decal_change_callback_listener
  L6_2 = A0_2._cur_selected_decal_id
  L3_2(L4_2, L5_2, L6_2)
end
L2_1._on_decal_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._panel_selected = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_decal_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._decal_table
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = A0_2._decal_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_decal_list
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.set_is_locked
      L9_2 = false
      L7_2(L8_2, L9_2)
      L8_2 = L6_2
      L7_2 = L6_2.register_click_handler
      L9_2 = A0_2._on_decal_select
      L10_2 = A0_2
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = A0_2._cur_selected_decal_id
      L8_2 = L5_2.DecalID
      L7_2 = L7_2 == L8_2
      L9_2 = L6_2
      L8_2 = L6_2.setup_selected
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
      if L7_2 then
        A0_2._panel_selected = L6_2
      end
    end
  end
end
L2_1._refresh_decal_list = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if not (A1_2 < 1) then
    L2_2 = A0_2._decal_table
    L2_2 = #L2_2
    if not (A1_2 > L2_2) then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_decal_list
  L3_2 = L2_2
  L2_2 = L2_2.get_panel_by_index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._on_decal_select
    L5_2 = A0_2._decal_table
    L5_2 = L5_2[A1_2]
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L2_1._try_snap_to_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._cur_selected_decal_id
  if L1_2 == nil then
    L1_2 = 0
    return L1_2
  end
  L1_2 = pairs
  L2_2 = A0_2._decal_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.DecalID
    L7_2 = A0_2._cur_selected_decal_id
    if L6_2 == L7_2 then
      return L4_2
    end
  end
end
L2_1._get_cur_item_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._try_snap_to_index
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._get_cur_item_index
    L2_3 = L2_3(L3_3)
    L2_3 = L2_3 - 1
    L0_3(L1_3, L2_3)
  end
  L4_2 = 0.05
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._try_switch_to_prev = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._try_snap_to_index
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._get_cur_item_index
    L2_3 = L2_3(L3_3)
    L2_3 = L2_3 + 1
    L0_3(L1_3, L2_3)
  end
  L4_2 = 0.05
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._try_switch_to_next = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if 0 < A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_switch_to_prev
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_switch_to_next
    L2_2(L3_2)
  end
end
L2_1._on_mouse_wheel_roll = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L4_2 = A0_2
  L3_2 = A0_2.is_active
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.DPadUp
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._try_switch_to_prev
    L3_2(L4_2)
    return
  end
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.DPadDown
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._try_switch_to_next
    L3_2(L4_2)
    return
  end
end
L2_1._on_in_control_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_select_ctrl_tips
  L1_2(L2_2)
end
L2_1._on_in_control_input_switch = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._decal_table
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.select_in_control_tip
  L2_2.IsShowTip = L1_2
end
L2_1._refresh_select_ctrl_tips = L3_1
return L2_1
