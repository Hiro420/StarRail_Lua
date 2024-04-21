local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaDetail.GachaStatisticTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaDetail.GachaStatisticTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaDetail.GachaBtnSwitchLevelPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaDetail.GachaBtnSwitchLevelPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeDisplayPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 2
L2_1 = 1
L3_1 = {}
L3_1.Initial = 1
L3_1.Ultimate = 2
function L4_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._tab_items = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._is_open_full_status = false
  L2_2 = A0_2
  L1_2 = A0_2._init_tab
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_switch_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.GachaBtnSwitchLevelPanel
  L4_2 = G
  L4_2 = L4_2.GachaBtnSwitchLevelPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._btn_switch_level_panel = L1_2
  L1_2 = A0_2._btn_switch_level_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_btn_switch
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._btn_switch_level_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_btn_switch_level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._btn_switch_level_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_statistic_type
  L3_2 = L3_1.Initial
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_statistic_tab
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_items
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_change
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_tab = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._tab_items = L1_2
  L1_2 = 1
  L2_2 = L1_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.GachaStatisticTabItem
    L8_2 = G
    L8_2 = L8_2.GachaStatisticTabItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.add_item
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._tab_items
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._init_tab_items = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._equipment_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._init_max_level
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_statistic_status
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._btn_switch_level_panel
  L3_2 = L2_2
  L2_2 = L2_2.reset_switch_status
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._hide_panel
  L2_2(L3_2)
  L2_2 = 1
  L3_2 = A0_2._tab_items
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._tab_items
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L9_2 = L5_2
    L10_2 = A0_2._max_level
    L7_2(L8_2, L9_2, L10_2)
  end
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._equipment_data
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.light_cone_detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.enable_lock_mark
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.light_cone_detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._equipment_data
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_exp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._hide_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._max_level
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.EquipmentPromotionExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._equipment_data
    L2_2 = L2_2.EquipmentRow
    L2_2 = L2_2.EquipmentID
    L3_2 = A0_2._equipment_data
    L3_2 = L3_2.EquipmentRow
    L3_2 = L3_2.MaxPromotion
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = L1_2.MaxLevel
    A0_2._max_level = L2_2
  end
end
L0_1._init_max_level = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._tab_index = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._on_tab_change
  L4_2 = A0_2._tab_index
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_switch = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._set_statistic_status
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_tab_change = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._tab_index = A1_2
  L2_2 = L3_1.Initial
  if A1_2 == L2_2 then
    L2_2 = A0_2._equipment_data
    L2_2.Level = 1
    L2_2 = A0_2._equipment_data
    L2_2.Promotion = 0
    L2_2 = A0_2._equipment_data
    L2_2.Rank = 1
  else
    L2_2 = L3_1.Ultimate
    if A1_2 == L2_2 then
      L2_2 = A0_2._equipment_data
      L3_2 = A0_2._equipment_data
      L3_2 = L3_2.EquipmentRow
      L3_2 = L3_2.MaxPromotion
      L2_2.Promotion = L3_2
      L2_2 = A0_2._equipment_data
      L3_2 = A0_2._equipment_data
      L3_2 = L3_2.EquipmentRow
      L3_2 = L3_2.MaxRank
      L2_2.Rank = L3_2
      L2_2 = A0_2._equipment_data
      L3_2 = A0_2._max_level
      L2_2.Level = L3_2
    end
  end
end
L0_1._set_statistic_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
end
L0_1.select_prev = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
end
L0_1.select_next = L4_1
return L0_1
