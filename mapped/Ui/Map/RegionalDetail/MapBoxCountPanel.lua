local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapBoxCountPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapBoxCountPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._chest_data_list = L1_2
  A0_2._opened_chest_total_num = 0
  A0_2._exist_chest_total_num = 0
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_button
  L1_2.ActionEnabled = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.key_map_info
  L1_2.IsShowTip = false
  L2_2 = A0_2
  L1_2 = A0_2.hide_expand_panel_view
  L1_2(L2_2)
end
L0_1._on_enter_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_button
  L1_2.ActionEnabled = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.key_map_info
  L1_2.IsShowTip = true
end
L0_1._on_leave_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._big_map_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._init_data_list
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.expand_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._chest_data_list
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = A0_2._exist_chest_total_num
  L4_2 = L4_2 ~= 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_obtained
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._opened_chest_total_num
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_total
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._exist_chest_total_num
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_control_button
  L2_2.ActionEnabled = true
  L2_2 = A0_2._binder
  L2_2 = L2_2.key_map_info
  L2_2.IsShowTip = true
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2._chest_data_list = L1_2
  A0_2._opened_chest_total_num = 0
  A0_2._exist_chest_total_num = 0
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.cs_list_to_table
  L2_2 = A0_2._big_map_data
  L2_2 = L2_2.ChestAndRaidInfoList
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.MapProgressConfigExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L7_2.ShowType
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L9_2 = {}
      L2_2 = L9_2
      L9_2 = L7_2.ShowType
      L2_2.show_type = L9_2
      L9_2 = L7_2.OpenedNum
      if not L9_2 then
        L9_2 = 0
      end
      L2_2.opened_num = L9_2
      L9_2 = L7_2.ExistNum
      if not L9_2 then
        L9_2 = 0
      end
      L2_2.exist_num = L9_2
      L9_2 = A0_2._opened_chest_total_num
      L10_2 = L2_2.opened_num
      L9_2 = L9_2 + L10_2
      A0_2._opened_chest_total_num = L9_2
      L9_2 = A0_2._exist_chest_total_num
      L10_2 = L2_2.exist_num
      L9_2 = L9_2 + L10_2
      A0_2._exist_chest_total_num = L9_2
      L9_2 = L2_2.exist_num
      if 0 < L9_2 then
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = A0_2._chest_data_list
        L11_2 = L2_2
        L9_2(L10_2, L11_2)
      end
    end
  end
end
L0_1._init_data_list = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_expand_panel
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  return L1_2
end
L0_1.is_expand_panel_active = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_expand_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.hide_expand_panel_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_expand_panel
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_expand_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    L2_2 = A0_2._owner
    L2_2 = L2_2.set_map_message_panel_view
    if L2_2 then
      L2_2 = A0_2._owner
      L3_2 = L2_2
      L2_2 = L2_2.set_map_message_panel_view
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_btn_root_click = L1_1
return L0_1
