local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PauseRogueBuffPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = {}
  A0_2._rogue_normal_buff_table = L4_2
  L4_2 = {}
  A0_2._rogue_aeon_buff_table = L4_2
  A0_2._scroll_rect = A3_2
  A0_2._selected_panel = nil
  A0_2._selected_index = 1
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._rogue_normal_buff_table = nil
  A0_2._rogue_aeon_buff_table = nil
  A0_2._scroll_rect = nil
  A0_2._selected_panel = nil
  A0_2._selected_index = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._selected_panel
  if L1_2 then
    L1_2 = A0_2._selected_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.aeon_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.get_panel_by_index
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.get_first_selected_object
    return L2_2(L3_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.normal_buff_list
  L3_2 = L2_2
  L2_2 = L2_2.get_panel_by_index
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.get_first_selected_object
    return L3_2(L4_2)
  end
  L3_2 = nil
  return L3_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L1_2 = L1_2.NBDECGBNLKN
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.RogueStatic
    L1_2 = L1_2.GetCurModeRogueInfo
    L1_2 = L1_2()
    L1_2 = L1_2 ~= nil
  end
  if not L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.aeon_buff_list
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.normal_buff_list
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.aeon_buff_list
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.normal_buff_list
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_buff_table
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_title_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_buff_scroller
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._rogue_normal_buff_table = L1_2
  L1_2 = {}
  A0_2._rogue_aeon_buff_table = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueStatic
  L1_2 = L1_2.GetCurModeRogueBuffInfo
  L1_2 = L1_2()
  L2_2 = L1_2
  L1_2 = L1_2.GetAchivedBuffList
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.GetRogueAeonID
    L7_2 = L7_2(L8_2)
    if L7_2 == 0 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._rogue_normal_buff_table
      L9_2 = A0_2._rogue_normal_buff_table
      L9_2 = #L9_2
      L9_2 = L9_2 + 1
      L10_2 = L6_2
      L7_2(L8_2, L9_2, L10_2)
    else
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._rogue_aeon_buff_table
      L9_2 = A0_2._rogue_aeon_buff_table
      L9_2 = #L9_2
      L9_2 = L9_2 + 1
      L10_2 = L6_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L2_2 = A0_2._rogue_aeon_buff_table
  L2_2 = #L2_2
  if 0 < L2_2 then
    L2_2 = G
    L2_2 = L2_2.RogueUtils
    L2_2 = L2_2.sort_rogue_buff_table
    L3_2 = A0_2._rogue_aeon_buff_table
    L2_2(L3_2)
  end
  L2_2 = A0_2._rogue_normal_buff_table
  L2_2 = #L2_2
  if 0 < L2_2 then
    L2_2 = G
    L2_2 = L2_2.RogueUtils
    L2_2 = L2_2.sort_rogue_buff_table
    L3_2 = A0_2._rogue_normal_buff_table
    L2_2(L3_2)
  end
end
L0_1._init_buff_table = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = A0_2._rogue_aeon_buff_table
  L2_2 = #L2_2
  L2_2 = L2_2 == 0
  L3_2 = A0_2._binder
  L3_2 = L3_2.aeon_buff_list
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  if not L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.aeon_buff_list
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A0_2._rogue_aeon_buff_table
    L3_2(L4_2, L5_2)
    L3_2 = 1
    L4_2 = A0_2._rogue_aeon_buff_table
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2._binder
      L7_2 = L7_2.aeon_buff_list
      L8_2 = L7_2
      L7_2 = L7_2.get_panel_by_index
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L9_2 = A0_2
      L8_2 = A0_2._setup_aeon_buff
      L10_2 = L7_2
      L11_2 = L6_2
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = #L1_2
      L10_2 = L10_2 + 1
      L12_2 = L7_2
      L11_2 = L7_2.get_navi_btn
      L11_2, L12_2, L13_2 = L11_2(L12_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    end
  end
  L3_2 = A0_2._rogue_normal_buff_table
  L3_2 = #L3_2
  L3_2 = L3_2 == 0
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_normal_buff_empty
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.normal_buff_list
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A0_2._rogue_normal_buff_table
  L4_2(L5_2, L6_2)
  L4_2 = 1
  L5_2 = A0_2._rogue_normal_buff_table
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._binder
    L8_2 = L8_2.normal_buff_list
    L9_2 = L8_2
    L8_2 = L8_2.get_panel_by_index
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L10_2 = A0_2
    L9_2 = A0_2._setup_normal_buff
    L11_2 = L8_2
    L12_2 = L7_2
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L1_2
    L11_2 = #L1_2
    L11_2 = L11_2 + 1
    L13_2 = L8_2
    L12_2 = L8_2.get_navi_btn
    L12_2, L13_2 = L12_2(L13_2)
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  L4_2 = #L1_2
  if 0 < L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.setup_navigation
    L6_2 = L1_2
    L7_2 = NavigationType
    L7_2 = L7_2.Vertical
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._show_buff_scroller = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A1_2
  L3_2 = A1_2.setup_selected
  L5_2 = A0_2._selected_index
  L5_2 = L5_2 == A2_2
  L3_2(L4_2, L5_2)
  L4_2 = A1_2
  L3_2 = A1_2.register_click_callback
  L5_2 = A0_2
  L6_2 = A0_2._on_buff_row_click
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A1_2
  L3_2 = A1_2.setup_title
  L5_2 = nil
  L3_2(L4_2, L5_2)
end
L0_1._setup_aeon_buff = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._rogue_aeon_buff_table
  L3_2 = #L3_2
  L3_2 = A2_2 + L3_2
  L5_2 = A1_2
  L4_2 = A1_2.setup_selected
  L6_2 = A0_2._selected_index
  L6_2 = L6_2 == L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L4_2 = A1_2.register_click_callback
  L6_2 = A0_2
  L7_2 = A0_2._on_buff_row_click
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2._need_show_title
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 == true then
    L6_2 = A1_2
    L5_2 = A1_2.setup_title
    L7_2 = A0_2._rogue_normal_buff_table
    L7_2 = L7_2[A2_2]
    L8_2 = L7_2
    L7_2 = L7_2.GetRogueBuffTypeRow
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2.RogueBuffTypeTitle
    L5_2(L6_2, L7_2)
  else
    L6_2 = A1_2
    L5_2 = A1_2.setup_title
    L7_2 = nil
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_normal_buff = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._selected_index = A1_2
  A0_2._selected_panel = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_buff_selected
  L3_2(L4_2)
  L3_2 = A0_2._scroll_rect
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.is_gamepad_input
    L3_2 = L3_2()
    if L3_2 and A2_2 then
      L4_2 = A2_2
      L3_2 = A2_2.get_first_selected_object
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = A0_2._scroll_rect
        L4_2 = L3_2
        L3_2 = L3_2.ScrollToTransform
        L6_2 = A2_2
        L5_2 = A2_2.get_first_selected_object
        L5_2 = L5_2(L6_2)
        L5_2 = L5_2.transform
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L0_1._on_buff_row_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 1
  L2_2 = A0_2._rogue_aeon_buff_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.aeon_buff_list
    L6_2 = L5_2
    L5_2 = L5_2.get_panel_by_index
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = L5_2
    L6_2 = L5_2.setup_selected
    L8_2 = A0_2._selected_index
    L8_2 = L8_2 == L4_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = 1
  L2_2 = A0_2._rogue_normal_buff_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.normal_buff_list
    L6_2 = L5_2
    L5_2 = L5_2.get_panel_by_index
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = L5_2
    L6_2 = L5_2.setup_selected
    L8_2 = A0_2._selected_index
    L9_2 = A0_2._rogue_aeon_buff_table
    L9_2 = #L9_2
    L9_2 = L4_2 + L9_2
    L8_2 = L8_2 == L9_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._refresh_buff_selected = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._show_title_index_table
  if L1_2 == nil then
    L1_2 = {}
    A0_2._show_title_index_table = L1_2
  else
    L1_2 = pairs
    L2_2 = A0_2._show_title_index_table
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = A0_2._show_title_index_table
      L6_2[L4_2] = nil
    end
  end
  L1_2 = nil
  L2_2 = ipairs
  L3_2 = A0_2._rogue_normal_buff_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.GetRogueBuffType
    L7_2 = L7_2(L8_2)
    if L5_2 == 1 or L7_2 ~= L1_2 then
      L8_2 = A0_2._show_title_index_table
      L8_2[L5_2] = true
    end
    L1_2 = L7_2
  end
end
L0_1._refresh_title_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._show_title_index_table
  if L2_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2._show_title_index_table
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2 == true
  return L2_2
end
L0_1._need_show_title = L1_1
return L0_1
