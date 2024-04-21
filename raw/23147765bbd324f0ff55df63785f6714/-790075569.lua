local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.LightCone.Upgrade.LightConeLevelUpExpPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.Upgrade.LightConeLevelUpExpPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.Upgrade.LightConeLevelUpMaterialPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.Upgrade.LightConeLevelUpMaterialPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.CoinCostPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.CoinCostPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.StatusDetailInfoCompare"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.StatusDetailInfoCompareBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.BtnAutoFilterPanelPC"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.BtnAutoFilterPanelPCBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeLevelUpPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.InventorySortType
L2_1 = L2_1.Rarity
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.InventorySortType
L3_1 = L3_1.Level
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.InventorySortType
L4_1 = L4_1.Name
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.InventorySortType
L5_1 = L5_1.ObtainTime
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.InventorySortType
L6_1 = L6_1.Attack
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.GameCore
L7_1 = L7_1.InventorySortType
L7_1 = L7_1.Defence
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.InventorySortType
L8_1 = L8_1.HP
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L1_1[5] = L6_1
L1_1[6] = L7_1
L1_1[7] = L8_1
L0_1.supported_sort_type = L1_1
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.AvatarPropertyType
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ItemRarity
L4_1 = 8
L5_1 = "UIText_TeamMemberOrderDialog_Title"
L6_1 = "UIText_Equipment_ALUC_R"
L7_1 = 102
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._levelup_material_panel
    L3_2 = L2_2
    L2_2 = L2_2.get_navigation_target
    return L2_2(L3_2)
  end
end
L0_1.get_target_by_zoom = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rarity_in_control_btn
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.auto_fill_in_control_btn
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.auto_clear_in_control_btn
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rarity_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.auto_fill_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.auto_clear_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_in_control_button_enable = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.levelup_exp_panel
  L5_2 = L4_2
  L4_2 = L4_2.play_exp_tween
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.play_exp_tween = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = L0_1._on_item_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.EquipmentLevelupFinish
  L4_2 = L0_1._on_equipment_levelUp_finish
  L1_2(L2_2, L3_2, L4_2)
  A0_2._addition_exp = 0
  L1_2 = {}
  A0_2._material_selected = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.InventoryTabExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L7_1
  L1_2 = L1_2(L2_2)
  A0_2._lightcone_inventory_tab_row = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._lightcone_inventory_tab_row
  L2_2 = L2_2.ItemSortTypeList
  L1_2 = L1_2(L2_2)
  A0_2._sort_types = L1_2
  A0_2._sort_is_ascend = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.InventorySortType
  L1_2 = L1_2.Level
  A0_2._current_sort_type = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.get_sort_type_from_cache
  L2_2 = A0_2.__name
  L3_2 = A0_2._current_sort_type
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.InventorySortType
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._current_sort_type = L1_2
  L1_2 = A0_2._current_sort_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.InventorySortType
  L2_2 = L2_2.AvatarBaseType
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.InventorySortType
    L1_2 = L1_2.Level
    A0_2._current_sort_type = L1_2
  end
  L1_2 = {}
  L2_2 = 2
  L3_2 = 3
  L4_2 = 4
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  A0_2._auto_fill_filters = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.LightConeLevelUpAutoFillFilterIndex
  A0_2._current_auto_fill_filter = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.LightConeLevelUpMaterialPanel
  L4_2 = G
  L4_2 = L4_2.LightConeLevelUpMaterialPanelBinder
  L5_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._levelup_material_panel = L1_2
  L1_2 = A0_2._levelup_material_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_material_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._levelup_material_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_click
  L3_2 = A0_2
  L4_2 = A0_2._material_panel_onclick
  L5_2 = A0_2._on_material_item_click_minus
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_or_ps_or_mobile_gamepad_mode
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_level_up
  L5_2 = A0_2._btn_level_up_onclick
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_auto_fill
  L5_2 = A0_2._btn_auto_fill_onclick
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_auto_clear
  L5_2 = A0_2._btn_auto_clear_onclick
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_auto_fill
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_auto_clear
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_auto_fill_filter
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.auto_fill_filter_panel_pc
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.auto_fill_filter_panel_pc
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._current_auto_fill_filter
    L5_2 = A0_2._auto_fill_filters
    L6_2 = L6_1
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.auto_fill_filter_panel_pc
    L3_2 = L2_2
    L2_2 = L2_2.setup_callback
    L4_2 = A0_2
    L5_2 = A0_2.on_refresh_auto_fill_filter
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._bind_btn_callback
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_auto_fill_filter
    L5_2 = A0_2._btn_auto_fill_filter_onclick
    L2_2(L3_2, L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_sort_type
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.ResBarAreaFactory
  L2_2 = L2_2.CreateResBarArea
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_res_bar
  L4_2 = "EquipmentLevelUpPanel"
  L5_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._res_bar_panel = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.fetch_ui3d
  L4_2 = G
  L4_2 = L4_2.AvatarUI3DPage
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._ui3d = L2_2
end
L0_1._on_load = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._equip_data = A1_2
  A0_2._addition_exp = 0
  L2_2 = {}
  A0_2._material_selected = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_auto_fill
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_auto_clear
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_items_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L2_2 = A0_2._levelup_dialog
  if L2_2 ~= nil then
    L2_2 = A0_2._levelup_dialog
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._material_selected
    L5_2 = A0_2._item_table
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item_list_area
  L2_2 = L2_2.gameObject
  L2_2 = L2_2.activeSelf
  if L2_2 then
    L3_2 = A0_2._owner
    L4_2 = L3_2
    L3_2 = L3_2.set_fade_out_state_sub_menu
    L3_2(L4_2)
    L3_2 = A0_2._owner
    L4_2 = L3_2
    L3_2 = L3_2.anim_fade_out_lightcone
    L3_2(L4_2)
  end
end
L0_1.setup_view = L8_1
function L8_1(A0_2, A1_2)
  A0_2._ui3d = A1_2
end
L0_1.setup_ui3d = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._calculate_addition_exp
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.levelup_exp_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._equip_data
  L4_2 = A0_2._addition_exp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_material_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_status
  L1_2(L2_2)
end
L0_1._refresh = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_forbid_refresh_material_panel
  if not L1_2 then
    L1_2 = A0_2._levelup_material_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._material_selected
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._material_selected
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_auto_fill
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_auto_clear
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_coin
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_auto_fill_filter
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_confirm_btn
  L1_2(L2_2)
end
L0_1._refresh_material_panel = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2._material_selected
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.item
    L7_2 = L7_2.ItemMainType
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.ItemMainType
    L8_2 = L8_2.Equipment
    if L7_2 == L8_2 then
      L7_2 = L6_2.item
      L7_2 = L7_2.EquipmentRow
      L7_2 = L7_2.CoinCost
      L1_2 = L1_2 + L7_2
    else
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.EquipmentExpItemExcelTable
      L7_2 = L7_2.GetData
      L8_2 = L6_2.item
      L8_2 = L8_2.ConfigID
      L7_2 = L7_2(L8_2)
      L8_2 = L7_2.CoinCost
      L9_2 = L6_2.count
      L8_2 = L8_2 * L9_2
      L1_2 = L1_2 + L8_2
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.coin_cost_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  A0_2._need_coin = L1_2
end
L0_1._refresh_coin = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  A0_2._material_selected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_material_panel
  L1_2(L2_2)
end
L0_1._on_equipment_levelUp_finish = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._addition_exp = 0
  L1_2 = pairs
  L2_2 = A0_2._material_selected
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.item
    L6_2 = L6_2.ItemMainType
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.ItemMainType
    L7_2 = L7_2.Equipment
    if L6_2 == L7_2 then
      L6_2 = A0_2._addition_exp
      L7_2 = L5_2.item
      L8_2 = L7_2
      L7_2 = L7_2.GetProvideExp
      L7_2 = L7_2(L8_2)
      L6_2 = L6_2 + L7_2
      A0_2._addition_exp = L6_2
    else
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.EquipmentExpItemExcelTable
      L6_2 = L6_2.GetData
      L7_2 = L5_2.item
      L7_2 = L7_2.ConfigID
      L6_2 = L6_2(L7_2)
      L7_2 = A0_2._addition_exp
      L8_2 = L6_2.ExpProvide
      L9_2 = L5_2.count
      L8_2 = L8_2 * L9_2
      L7_2 = L7_2 + L8_2
      A0_2._addition_exp = L7_2
    end
  end
end
L0_1._calculate_addition_exp = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._equip_data
  L2_2 = L1_2
  L1_2 = L1_2.GetNewLevelByAddExp
  L3_2 = A0_2._addition_exp
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L3_2 = L2_1.MaxHP
  L2_2.PropertyType = L3_2
  L3_2 = A0_2._equip_data
  L4_2 = L3_2
  L3_2 = L3_2.GetHP
  L3_2 = L3_2(L4_2)
  L2_2.NumBefore = L3_2
  L3_2 = A0_2._equip_data
  L4_2 = L3_2
  L3_2 = L3_2.GetHP
  L5_2 = A0_2._equip_data
  L5_2 = L5_2.Promotion
  L6_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.NumAfter = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.hp_compare_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L4_2 = L2_1.Attack
  L3_2.PropertyType = L4_2
  L4_2 = A0_2._equip_data
  L5_2 = L4_2
  L4_2 = L4_2.GetAttack
  L4_2 = L4_2(L5_2)
  L3_2.NumBefore = L4_2
  L4_2 = A0_2._equip_data
  L5_2 = L4_2
  L4_2 = L4_2.GetAttack
  L6_2 = A0_2._equip_data
  L6_2 = L6_2.Promotion
  L7_2 = L1_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.NumAfter = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.attack_compare_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = {}
  L5_2 = L2_1.Defence
  L4_2.PropertyType = L5_2
  L5_2 = A0_2._equip_data
  L6_2 = L5_2
  L5_2 = L5_2.GetDefence
  L5_2 = L5_2(L6_2)
  L4_2.NumBefore = L5_2
  L5_2 = A0_2._equip_data
  L6_2 = L5_2
  L5_2 = L5_2.GetDefence
  L7_2 = A0_2._equip_data
  L7_2 = L7_2.Promotion
  L8_2 = L1_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.NumAfter = L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.defence_compare_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L0_1._refresh_status = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2._item_table = L1_2
  L1_2 = G
  L1_2 = L1_2.InventoryUtils
  L1_2 = L1_2.get_all_lightcone_items
  L1_2 = L1_2()
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._equip_data
    if L6_2 ~= L7_2 then
      L7_2 = L6_2.BelongAvatarID
      if L7_2 == 0 then
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = A0_2._item_table
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EquipmentExpItemExcelTable
  L2_2 = L2_2.dataDict
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L1_1
    L9_2 = L8_2
    L8_2 = L8_2.GetItemDataByConfigID
    L10_2 = L7_2.ItemID
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= nil then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2._item_table
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._sort_equips
  L3_2(L4_2)
end
L0_1._get_items_data = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._levelup_dialog = nil
  L1_2 = A0_2._ui3d
  if L1_2 ~= nil then
    L1_2 = A0_2._ui3d
    L1_2 = L1_2.lightcone_panel
    L2_2 = L1_2
    L1_2 = L1_2.show_lightcone
    L3_2 = A0_2._equip_data
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.anim_fade_in_sub_menu
  L1_2(L2_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.anim_fade_in_lightcone
  L1_2(L2_2)
  L1_2 = A0_2._res_bar_panel
  L2_2 = L1_2
  L1_2 = L1_2.enable_navi_reaction
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._btn_item_list_close_onclick = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._material_selected
  L1_2 = #L1_2
  if L1_2 <= 0 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_coin_enough
  L1_2 = L1_2(L2_2)
  if L1_2 == false then
    return
  end
  L1_2 = false
  L2_2 = false
  L3_2 = false
  L4_2 = false
  L5_2 = pairs
  L6_2 = A0_2._material_selected
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L9_2.item
    L10_2 = L10_2.Rarity
    L11_2 = L9_2.item
    L11_2 = L11_2.IsPile
    if not L11_2 then
      L11_2 = L1_1
      L12_2 = L11_2
      L11_2 = L11_2.GetEquipmentDataByUID
      L13_2 = L9_2.item
      L11_2 = L11_2(L12_2, L13_2)
      if L11_2 then
        goto lbl_32
      end
    end
    L11_2 = nil
    ::lbl_32::
    L12_2 = L9_2.item
    L12_2 = L12_2.ItemMainType
    L13_2 = CS
    L13_2 = L13_2.RPG
    L13_2 = L13_2.GameCore
    L13_2 = L13_2.ItemMainType
    L13_2 = L13_2.Equipment
    if L12_2 == L13_2 then
      L12_2 = L3_1.VeryRare
      L12_2 = #L12_2
      if L10_2 ~= L12_2 then
        L12_2 = L3_1.SuperRare
        L12_2 = #L12_2
        if L10_2 ~= L12_2 then
          goto lbl_50
        end
      end
      L1_2 = true
      ::lbl_50::
      L12_2 = L9_2.item
      L12_2 = L12_2.Rank
      if 2 <= L12_2 then
        L3_2 = true
      end
      L12_2 = L9_2.item
      L12_2 = L12_2.Level
      if 2 <= L12_2 then
        L2_2 = true
      end
      L12_2 = L9_2.item
      L12_2 = L12_2.Row
      L12_2 = L12_2.ID
      L13_2 = A0_2._equip_data
      L13_2 = L13_2.Row
      L13_2 = L13_2.ID
      if L12_2 == L13_2 then
        L4_2 = true
      end
    end
  end
  if L1_2 or L2_2 or L3_2 or L4_2 then
    L5_2 = nil
    if L1_2 and L2_2 and L3_2 and L4_2 then
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = "UIText_WarningDialog_Upgrade4"
      L8_2 = G
      L8_2 = L8_2.TextmapStatic
      L8_2 = L8_2.GetText
      L9_2 = "UIText_WarningDialog_UpgradeRarity"
      L8_2 = L8_2(L9_2)
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeRank"
      L9_2 = L9_2(L10_2)
      L10_2 = G
      L10_2 = L10_2.TextmapStatic
      L10_2 = L10_2.GetText
      L11_2 = "UIText_WarningDialog_UpgradeLevel"
      L10_2 = L10_2(L11_2)
      L11_2 = G
      L11_2 = L11_2.TextmapStatic
      L11_2 = L11_2.GetText
      L12_2 = "UIText_WarningDialog_UpgradeName"
      L11_2, L12_2, L13_2 = L11_2(L12_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L5_2 = L6_2
    elseif not L1_2 and L2_2 and L3_2 and L4_2 then
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = "UIText_WarningDialog_Upgrade3"
      L8_2 = G
      L8_2 = L8_2.TextmapStatic
      L8_2 = L8_2.GetText
      L9_2 = "UIText_WarningDialog_UpgradeRank"
      L8_2 = L8_2(L9_2)
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeLevel"
      L9_2 = L9_2(L10_2)
      L10_2 = G
      L10_2 = L10_2.TextmapStatic
      L10_2 = L10_2.GetText
      L11_2 = "UIText_WarningDialog_UpgradeName"
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L5_2 = L6_2
    elseif L1_2 and not L2_2 and L3_2 and L4_2 then
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = "UIText_WarningDialog_Upgrade3"
      L8_2 = G
      L8_2 = L8_2.TextmapStatic
      L8_2 = L8_2.GetText
      L9_2 = "UIText_WarningDialog_UpgradeRarity"
      L8_2 = L8_2(L9_2)
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeRank"
      L9_2 = L9_2(L10_2)
      L10_2 = G
      L10_2 = L10_2.TextmapStatic
      L10_2 = L10_2.GetText
      L11_2 = "UIText_WarningDialog_UpgradeName"
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L5_2 = L6_2
    elseif L1_2 and L2_2 and not L3_2 and L4_2 then
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = "UIText_WarningDialog_Upgrade3"
      L8_2 = G
      L8_2 = L8_2.TextmapStatic
      L8_2 = L8_2.GetText
      L9_2 = "UIText_WarningDialog_UpgradeRarity"
      L8_2 = L8_2(L9_2)
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeLevel"
      L9_2 = L9_2(L10_2)
      L10_2 = G
      L10_2 = L10_2.TextmapStatic
      L10_2 = L10_2.GetText
      L11_2 = "UIText_WarningDialog_UpgradeName"
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L5_2 = L6_2
    elseif L1_2 and L2_2 and L3_2 and not L4_2 then
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = "UIText_WarningDialog_Upgrade3"
      L8_2 = G
      L8_2 = L8_2.TextmapStatic
      L8_2 = L8_2.GetText
      L9_2 = "UIText_WarningDialog_UpgradeRarity"
      L8_2 = L8_2(L9_2)
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeRank"
      L9_2 = L9_2(L10_2)
      L10_2 = G
      L10_2 = L10_2.TextmapStatic
      L10_2 = L10_2.GetText
      L11_2 = "UIText_WarningDialog_UpgradeLevel"
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L5_2 = L6_2
    elseif not L1_2 and not L2_2 and L3_2 and L4_2 then
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = "UIText_WarningDialog_Upgrade2"
      L8_2 = G
      L8_2 = L8_2.TextmapStatic
      L8_2 = L8_2.GetText
      L9_2 = "UIText_WarningDialog_UpgradeRank"
      L8_2 = L8_2(L9_2)
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeName"
      L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L5_2 = L6_2
    elseif not L1_2 and L2_2 and not L3_2 and L4_2 then
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = "UIText_WarningDialog_Upgrade2"
      L8_2 = G
      L8_2 = L8_2.TextmapStatic
      L8_2 = L8_2.GetText
      L9_2 = "UIText_WarningDialog_UpgradeLevel"
      L8_2 = L8_2(L9_2)
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeName"
      L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L5_2 = L6_2
    elseif not L1_2 and L2_2 and L3_2 and not L4_2 then
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = "UIText_WarningDialog_Upgrade2"
      L8_2 = G
      L8_2 = L8_2.TextmapStatic
      L8_2 = L8_2.GetText
      L9_2 = "UIText_WarningDialog_UpgradeLevel"
      L8_2 = L8_2(L9_2)
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeRank"
      L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L5_2 = L6_2
    elseif L1_2 and not L2_2 and not L3_2 and L4_2 then
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = "UIText_WarningDialog_Upgrade2"
      L8_2 = G
      L8_2 = L8_2.TextmapStatic
      L8_2 = L8_2.GetText
      L9_2 = "UIText_WarningDialog_UpgradeRarity"
      L8_2 = L8_2(L9_2)
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeName"
      L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L5_2 = L6_2
    elseif L1_2 and not L2_2 and L3_2 and not L4_2 then
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = "UIText_WarningDialog_Upgrade2"
      L8_2 = G
      L8_2 = L8_2.TextmapStatic
      L8_2 = L8_2.GetText
      L9_2 = "UIText_WarningDialog_UpgradeRarity"
      L8_2 = L8_2(L9_2)
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeRank"
      L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L5_2 = L6_2
    elseif L1_2 and L2_2 and not L3_2 and not L4_2 then
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = "UIText_WarningDialog_Upgrade2"
      L8_2 = G
      L8_2 = L8_2.TextmapStatic
      L8_2 = L8_2.GetText
      L9_2 = "UIText_WarningDialog_UpgradeRarity"
      L8_2 = L8_2(L9_2)
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeLevel"
      L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L5_2 = L6_2
    elseif L1_2 and not L2_2 and not L3_2 and not L4_2 then
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = "UIText_WarningDialog_Upgrade1"
      L8_2 = G
      L8_2 = L8_2.TextmapStatic
      L8_2 = L8_2.GetText
      L9_2 = "UIText_WarningDialog_UpgradeRarity"
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L5_2 = L6_2
    elseif not L1_2 and L2_2 and not L3_2 and not L4_2 then
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = "UIText_WarningDialog_Upgrade1"
      L8_2 = G
      L8_2 = L8_2.TextmapStatic
      L8_2 = L8_2.GetText
      L9_2 = "UIText_WarningDialog_UpgradeLevel"
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L5_2 = L6_2
    elseif not L1_2 and not L2_2 and L3_2 and not L4_2 then
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = "UIText_WarningDialog_Upgrade1"
      L8_2 = G
      L8_2 = L8_2.TextmapStatic
      L8_2 = L8_2.GetText
      L9_2 = "UIText_WarningDialog_UpgradeRank"
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L5_2 = L6_2
    elseif not L1_2 and not L2_2 and not L3_2 and L4_2 then
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = "UIText_WarningDialog_Upgrade1"
      L8_2 = G
      L8_2 = L8_2.TextmapStatic
      L8_2 = L8_2.GetText
      L9_2 = "UIText_WarningDialog_UpgradeName"
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L5_2 = L6_2
    end
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.ConfirmDialogUtil
    L6_2 = L6_2.ShowConfirmDialog
    function L7_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._confirm_use
        L1_3(L2_3)
      end
    end
    L6_2 = L6_2(L7_2)
    L7_2 = DialogBtnMode
    L7_2 = L7_2.eOkCancel
    L6_2.Mode = L7_2
    L8_2 = L6_2
    L7_2 = L6_2.GetComponentContent
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2
    L7_2 = L7_2.SetCustomizedText
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    return
  else
    L6_2 = A0_2
    L5_2 = A0_2._confirm_use
    L5_2(L6_2)
  end
end
L0_1._btn_level_up_onclick = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.Proto
  L3_2 = L3_2.ItemCost
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  L3_2 = pairs
  L4_2 = A0_2._material_selected
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.Proto
    L8_2 = L8_2.ItemCost
    L8_2 = L8_2()
    L9_2 = L7_2.item
    L9_2 = L9_2.ItemMainType
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.ItemMainType
    L10_2 = L10_2.Equipment
    if L9_2 == L10_2 then
      L9_2 = L7_2.item
      L9_2 = L9_2.UID
      L8_2.EquipmentUniqueId = L9_2
    else
      L9_2 = CS
      L9_2 = L9_2.Proto
      L9_2 = L9_2.PileItem
      L9_2 = L9_2()
      L8_2.PileItem = L9_2
      L9_2 = L8_2.PileItem
      L10_2 = L7_2.item
      L10_2 = L10_2.ConfigID
      L9_2.ItemId = L10_2
      L9_2 = L8_2.PileItem
      L10_2 = L7_2.count
      L9_2.ItemNum = L10_2
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L1_2
      L11_2 = L8_2.PileItem
      L11_2 = L11_2.ItemId
      L9_2(L10_2, L11_2)
    end
    L10_2 = L2_2
    L9_2 = L2_2.Add
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = G
  L3_2 = L3_2.InventoryUtils
  L3_2 = L3_2.check_item_deleted
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    return
  end
  L3_2 = A0_2._equip_data
  L4_2 = L3_2
  L3_2 = L3_2.ClearLevelUpBeforData
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.NetworkManager
  L3_2 = L3_2.FFOMLPONIFB
  L4_2 = L3_2
  L3_2 = L3_2.KMCBDKKNGGE
  L5_2 = A0_2._equip_data
  L5_2 = L5_2.UID
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._levelup_dialog
  if L3_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._check_is_promotion
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._levelup_dialog
    L5_2 = L4_2
    L4_2 = L4_2.close
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._confirm_use = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._equip_data
  L2_2 = L1_2
  L1_2 = L1_2.GetNewLevelByAddExp
  L3_2 = A0_2._addition_exp
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._equip_data
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentMaxLv
  L2_2 = L2_2(L3_2)
  L2_2 = L1_2 == L2_2
  return L2_2
end
L0_1._check_is_promotion = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetItemCountByConfigID
  L3_2 = G
  L3_2 = L3_2.UtilEngineWrap
  L3_2 = L3_2.ConvCsEnumToNum
  L4_2 = CS
  L4_2 = L4_2.HGGDPEHMDBH
  L4_2 = L4_2.AHCNPMBGKID
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2._need_coin
  L2_2 = L1_2 >= L2_2
  if not L2_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UIText_SkillTreeDetail_LimitSoftCoin"
    L3_2(L4_2, L5_2)
  end
  return L2_2
end
L0_1._is_coin_enough = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.LightCone.Upgrade.LightConeSelectOrderDialog"
  L3_2 = A0_2._current_auto_fill_filter
  L4_2 = A0_2._auto_fill_filters
  L5_2 = A0_2
  L6_2 = A0_2.on_refresh_auto_fill_filter
  L7_2 = L6_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = L1_2
  L2_2 = L1_2.show_sort_title
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._btn_auto_fill_filter_onclick = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A0_2
  L1_2 = A0_2._sort_auto_fill_material
  L1_2(L2_2)
  L1_2 = A0_2._equip_data
  L2_2 = L1_2
  L1_2 = L1_2.GetNeedExpToLv
  L3_2 = A0_2._equip_data
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentMaxLv
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2 = A0_2
  L2_2 = A0_2._calculate_addition_exp
  L2_2(L3_2)
  L2_2 = A0_2._addition_exp
  if L1_2 <= L2_2 then
    L2_2 = A0_2._material_selected
    L2_2 = #L2_2
    if 0 < L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.btn_auto_fill
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.btn_auto_clear
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_Toast_Upgrade_ExpMax"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = false
  L3_2 = 1
  L4_2 = A0_2._item_table
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = A0_2
    L7_2 = A0_2._calculate_addition_exp
    L7_2(L8_2)
    L7_2 = A0_2._addition_exp
    if L1_2 <= L7_2 then
      break
    end
    L7_2 = A0_2._material_selected
    L7_2 = #L7_2
    L8_2 = L4_1
    if L7_2 >= L8_2 then
      break
    end
    L7_2 = A0_2._item_table
    L7_2 = L7_2[L6_2]
    L8_2 = 0
    L9_2 = 1
    L10_2 = A0_2._material_selected
    L10_2 = #L10_2
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = A0_2._material_selected
      L13_2 = L13_2[L12_2]
      L13_2 = L13_2.item
      if L7_2 == L13_2 then
        L13_2 = A0_2._material_selected
        L13_2 = L13_2[L12_2]
        L8_2 = L13_2.count
      end
    end
    L9_2 = L7_2.Rarity
    L10_2 = A0_2._current_auto_fill_filter
    if L9_2 <= L10_2 then
      L9_2 = L7_2.IsPile
      if L9_2 then
        L9_2 = CS
        L9_2 = L9_2.RPG
        L9_2 = L9_2.GameCore
        L9_2 = L9_2.EquipmentExpItemExcelTable
        L9_2 = L9_2.GetData
        L10_2 = L7_2.ConfigID
        L9_2 = L9_2(L10_2)
        L10_2 = math
        L10_2 = L10_2.ceil
        L11_2 = A0_2._addition_exp
        L11_2 = L1_2 - L11_2
        L12_2 = L9_2.ExpProvide
        L11_2 = L11_2 / L12_2
        L10_2 = L10_2(L11_2)
        L11_2 = L7_2.Count
        L11_2 = L11_2 - L8_2
        if L10_2 > L11_2 then
          L11_2 = L7_2.Count
          if L8_2 < L11_2 then
            L12_2 = A0_2
            L11_2 = A0_2._add_select_material
            L13_2 = L7_2
            L14_2 = L7_2.Count
            L14_2 = L14_2 - L8_2
            L11_2(L12_2, L13_2, L14_2)
          end
        else
          L12_2 = A0_2
          L11_2 = A0_2._add_select_material
          L13_2 = L7_2
          L14_2 = L10_2
          L11_2(L12_2, L13_2, L14_2)
        end
      else
        L9_2 = L7_2.Level
        if L9_2 == 1 then
          L9_2 = L7_2.Rank
          if L9_2 == 1 and L8_2 == 0 then
            L9_2 = L7_2.Row
            L9_2 = L9_2.ID
            L10_2 = A0_2._equip_data
            L10_2 = L10_2.Row
            L10_2 = L10_2.ID
            if L9_2 ~= L10_2 then
              L10_2 = A0_2
              L9_2 = A0_2._add_select_material
              L11_2 = L7_2
              L12_2 = 1
              L9_2(L10_2, L11_2, L12_2)
            else
              L2_2 = true
            end
          end
        end
      end
    end
  end
  L3_2 = A0_2._material_selected
  L3_2 = #L3_2
  if 0 < L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_auto_fill
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_auto_clear
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
  elseif L2_2 == false then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UIText_AutoAdd_Toast_Fail"
    L3_2(L4_2, L5_2)
  else
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UIText_Toast_AutoInput_None"
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1._btn_auto_fill_onclick = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  A0_2._material_selected = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_auto_fill
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_auto_clear
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._btn_auto_clear_onclick = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._get_items_data
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.LevelUpItemListDialog"
  L3_2 = A0_2
  L4_2 = A0_2._btn_item_list_close_onclick
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._levelup_dialog = L1_2
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_item_click_add
  L4_2 = A0_2._on_item_click_minus
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.register_long_press_repeat_callback
  L3_2 = A0_2._on_item_repeat_click_add
  L4_2 = A0_2._on_item_repeat_click_minus
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.register_sell_callback
  L3_2 = A0_2._on_btn_sell
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.register_item_validate_callback
  L3_2 = A0_2._is_item_selected
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.register_sort_callback
  L3_2 = A0_2._on_btn_sort_order_click
  L4_2 = A0_2.on_refresh_sort_type
  L5_2 = A0_2._on_btn_sort_type_click
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.setup_light_cone_filter
  L1_2(L2_2)
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._material_selected
  L4_2 = A0_2._item_table
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.setup_view_order_panel
  L3_2 = A0_2._current_sort_type
  L4_2 = A0_2._sort_types
  L5_2 = A0_2._sort_is_ascend
  L6_2 = A0_2._set_sort_type_text_id
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_sort_type
  L1_2(L2_2)
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.play_fade_in
  L1_2(L2_2)
  L1_2 = A0_2._ui3d
  if L1_2 ~= nil then
    L1_2 = A0_2._ui3d
    L1_2 = L1_2.lightcone_panel
    L2_2 = L1_2
    L1_2 = L1_2.hide_lightcone
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._res_bar_panel
  L2_2 = L1_2
  L1_2 = L1_2.enable_navi_reaction
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.anim_fade_out_sub_menu
  L1_2(L2_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.anim_fade_out_lightcone
  L1_2(L2_2)
end
L0_1._material_panel_onclick = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A0_2._material_selected
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.item
    if L7_2 == A1_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_item_selected = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._lightcone_inventory_tab_row
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = "Ui.LightCone.LightConeSellPage"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_except_item
  L5_2 = A0_2._equip_data
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.init
  L5_2 = L1_2.ItemSortTypeList
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.show
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1._on_btn_sell = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.get_long_press_repeat_speed
  L5_2 = A3_2
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._add_select_material
  L7_2 = A1_2
  L8_2 = L4_2
  L9_2 = A2_2
  L10_2 = A3_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2
  L5_2 = A0_2._refresh
  L5_2(L6_2)
end
L0_1._on_item_click_add = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = A1_2.IsProtected
  if L5_2 then
    return
  end
  L5_2 = nil
  L6_2 = 1
  L7_2 = A0_2._material_selected
  L7_2 = #L7_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A0_2._material_selected
    L10_2 = L10_2[L9_2]
    L10_2 = L10_2.item
    if L10_2 == A1_2 then
      L10_2 = A0_2._material_selected
      L5_2 = L10_2[L9_2]
    end
  end
  if L5_2 ~= nil then
    L6_2 = L5_2.item
    L6_2 = L6_2.ItemMainType
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.ItemMainType
    L7_2 = L7_2.Equipment
    if L6_2 == L7_2 then
      L7_2 = A0_2
      L6_2 = A0_2._on_item_click_minus
      L8_2 = L5_2.item
      L9_2 = A3_2
      L6_2(L7_2, L8_2, L9_2)
      return
    end
  end
  L6_2 = A0_2._equip_data
  L7_2 = L6_2
  L6_2 = L6_2.GetNeedExpToLv
  L8_2 = A0_2._equip_data
  L9_2 = L8_2
  L8_2 = L8_2.GetCurrentMaxLv
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = A0_2._addition_exp
  if L6_2 <= L7_2 then
    if A4_2 ~= nil then
      A0_2._toast_message = "UIText_Toast_Upgrade_ExpMax"
    else
      L7_2 = G
      L7_2 = L7_2.NotifyManager
      L7_2 = L7_2.notify
      L8_2 = G
      L8_2 = L8_2.CS
      L8_2 = L8_2.NotifyType
      L8_2 = L8_2.UIPileToastMessageTextID
      L9_2 = "UIText_Toast_Upgrade_ExpMax"
      L7_2(L8_2, L9_2)
    end
    return
  end
  if L5_2 == nil then
    L7_2 = A0_2._material_selected
    L7_2 = #L7_2
    L8_2 = L4_1
    if L7_2 >= L8_2 then
      if A4_2 ~= nil then
        A0_2._toast_message = "UIText_Toast_Upgrade_CountMax"
      else
        L7_2 = G
        L7_2 = L7_2.NotifyManager
        L7_2 = L7_2.notify
        L8_2 = G
        L8_2 = L8_2.CS
        L8_2 = L8_2.NotifyType
        L8_2 = L8_2.UIPileToastMessageTextID
        L9_2 = "UIText_Toast_Upgrade_CountMax"
        L7_2(L8_2, L9_2)
      end
      return
    end
    L7_2 = {}
    L5_2 = L7_2
    L5_2.item = A1_2
    L5_2.count = A2_2
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._material_selected
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
  else
    L7_2 = L5_2.count
    L8_2 = L5_2.count
    L9_2 = A1_2.Count
    if L8_2 < L9_2 then
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.EquipmentExpItemExcelTable
      L8_2 = L8_2.GetData
      L9_2 = A1_2.ConfigID
      L8_2 = L8_2(L9_2)
      L9_2 = math
      L9_2 = L9_2.ceil
      L10_2 = A0_2._addition_exp
      L10_2 = L6_2 - L10_2
      L11_2 = L8_2.ExpProvide
      L10_2 = L10_2 / L11_2
      L9_2 = L9_2(L10_2)
      if A2_2 > L9_2 then
        A2_2 = L9_2
      end
      L10_2 = L5_2.count
      L10_2 = L10_2 + A2_2
      L5_2.count = L10_2
      L10_2 = L5_2.count
      L11_2 = A1_2.Count
      if L10_2 > L11_2 then
        L10_2 = A1_2.Count
        L5_2.count = L10_2
      end
    end
    if A4_2 then
      L8_2 = L5_2.count
      if L7_2 < L8_2 then
        L8_2 = CS
        L8_2 = L8_2.RPG
        L8_2 = L8_2.Client
        L8_2 = L8_2.GlobalVars
        L8_2 = L8_2.s_AudioManager
        L9_2 = L8_2
        L8_2 = L8_2.PostEvent
        L10_2 = CS
        L10_2 = L10_2.RPG
        L10_2 = L10_2.Client
        L10_2 = L10_2.GlobalVars
        L10_2 = L10_2.s_AudioManager
        L10_2 = L10_2.AudioConfig
        L10_2 = L10_2.EventUISliderPlus
        L8_2(L9_2, L10_2)
      end
    end
  end
  L8_2 = A0_2
  L7_2 = A0_2._refresh_single_icon
  L9_2 = L5_2
  L10_2 = A3_2
  L7_2(L8_2, L9_2, L10_2)
end
L0_1._add_select_material = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = nil
  L5_2 = 0
  L6_2 = 1
  L7_2 = A0_2._material_selected
  L7_2 = #L7_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A0_2._material_selected
    L10_2 = L10_2[L9_2]
    L10_2 = L10_2.item
    if L10_2 == A1_2 then
      L10_2 = A0_2._material_selected
      L4_2 = L10_2[L9_2]
      L5_2 = L9_2
      break
    end
  end
  if L4_2 ~= nil then
    L6_2 = L4_2.count
    L7_2 = G
    L7_2 = L7_2.Utils
    L7_2 = L7_2.get_long_press_repeat_speed
    L8_2 = A3_2
    L7_2 = L7_2(L8_2)
    L8_2 = L4_2.count
    L8_2 = L8_2 - L7_2
    if L8_2 < 0 then
      L9_2 = 0
      if L9_2 then
        goto lbl_34
      end
    end
    L9_2 = L8_2
    ::lbl_34::
    L4_2.count = L9_2
    L9_2 = L4_2.count
    if L9_2 <= 0 then
      L9_2 = table
      L9_2 = L9_2.remove
      L10_2 = A0_2._material_selected
      L11_2 = L5_2
      L9_2(L10_2, L11_2)
      A0_2._is_forbid_refresh_material_panel = false
    end
    L10_2 = A0_2
    L9_2 = A0_2._refresh_single_icon
    L11_2 = L4_2
    L12_2 = A2_2
    L9_2(L10_2, L11_2, L12_2)
    if A3_2 then
      L9_2 = L4_2.count
      if L6_2 > L9_2 then
        L9_2 = CS
        L9_2 = L9_2.RPG
        L9_2 = L9_2.Client
        L9_2 = L9_2.GlobalVars
        L9_2 = L9_2.s_AudioManager
        L10_2 = L9_2
        L9_2 = L9_2.PostEvent
        L11_2 = CS
        L11_2 = L11_2.RPG
        L11_2 = L11_2.Client
        L11_2 = L11_2.GlobalVars
        L11_2 = L11_2.s_AudioManager
        L11_2 = L11_2.AudioConfig
        L11_2 = L11_2.EventUISliderMinus
        L9_2(L10_2, L11_2)
      end
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2._refresh
  L6_2(L7_2)
end
L0_1._on_item_click_minus = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2.IsProtected
  if L4_2 then
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2._on_item_click_add
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_item_repeat_click_add = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2._on_item_click_minus
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_item_repeat_click_minus = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._is_forbid_refresh_material_panel = true
  L5_2 = A0_2
  L4_2 = A0_2._on_item_click_minus
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  A0_2._is_forbid_refresh_material_panel = false
end
L0_1._on_material_item_click_minus = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil and A2_2 ~= nil then
    L4_2 = A2_2
    L3_2 = A2_2.set_minus_btn
    L5_2 = A1_2.count
    L5_2 = 0 < L5_2
    L3_2(L4_2, L5_2)
    L3_2 = A1_2.item
    L3_2 = L3_2.IsPile
    if L3_2 then
      L4_2 = A2_2
      L3_2 = A2_2.set_count
      L5_2 = A1_2.count
      L6_2 = A1_2.item
      L6_2 = L6_2.Count
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1._refresh_single_icon = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Inventory.InventorySortDialog"
  L3_2 = A0_2._current_sort_type
  L4_2 = A0_2._sort_types
  L5_2 = A0_2
  L6_2 = A0_2.on_refresh_sort_type
  L7_2 = L5_1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_btn_sort_type_click = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._sort_is_ascend = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_sort_type
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._sort_equips
  L2_2(L3_2)
  L2_2 = A0_2._levelup_dialog
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._material_selected
  L5_2 = A0_2._item_table
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._levelup_dialog
  L3_2 = L2_2
  L2_2 = L2_2.play_fade_in
  L2_2(L3_2)
end
L0_1._on_btn_sort_order_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.InventoryModule
  L1_2 = L1_2.GetSortTypeName
  L2_2 = A0_2._current_sort_type
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._levelup_dialog
  if L2_2 ~= nil then
    L2_2 = A0_2._levelup_dialog
    L3_2 = L2_2
    L2_2 = L2_2.refresh_sort_type_text
    L4_2 = L1_2
    L5_2 = A0_2._sort_is_ascend
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._refresh_sort_type = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._current_sort_type = A1_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.save_sort_type_to_cache
  L3_2 = A0_2.__name
  L4_2 = A1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.InventorySortType
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_pc_or_ps_or_mobile_gamepad_mode
  L2_2 = L2_2()
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_sort_type
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._sort_equips
  L2_2(L3_2)
  L2_2 = A0_2._levelup_dialog
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._material_selected
  L5_2 = A0_2._item_table
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._levelup_dialog
  L3_2 = L2_2
  L2_2 = L2_2.play_fade_in
  L2_2(L3_2)
end
L0_1.on_refresh_sort_type = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2.LightConeLevelUpAutoFillFilterIndex = A1_2
  A0_2._current_auto_fill_filter = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_auto_fill_filter
  L2_2(L3_2)
end
L0_1.on_refresh_auto_fill_filter = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_auto_fill_filter
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L6_1
  L4_2 = A0_2._current_auto_fill_filter
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
end
L0_1._refresh_auto_fill_filter = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_level_up
  L2_2 = A0_2._material_selected
  L2_2 = #L2_2
  L2_2 = 0 < L2_2
  L1_2.interactable = L2_2
end
L0_1._refresh_confirm_btn = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._item_table
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = A0_3.IsPile
    L3_3 = A1_3.IsPile
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.IsPile
      if L2_3 then
        L2_3 = true
        return L2_3
      else
        L2_3 = false
        return L2_3
      end
    end
    L2_3 = A0_3.IsPile
    if not L2_3 then
      L2_3 = A1_3.IsPile
      if not L2_3 then
        goto lbl_26
      end
    end
    L2_3 = A0_3.Rarity
    L3_3 = A1_3.Rarity
    L2_3 = L2_3 < L3_3
    do return L2_3 end
    ::lbl_26::
    L2_3 = A0_3.IsProtected
    L3_3 = A1_3.IsProtected
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.IsProtected
      if not L2_3 then
        L2_3 = true
        return L2_3
      else
        L2_3 = false
        return L2_3
      end
    end
    L2_3 = G
    L2_3 = L2_3.InventoryUtils
    L2_3 = L2_3.compare_sort_equip
    L3_3 = A0_3
    L4_3 = A1_3
    L5_3 = A0_2._current_sort_type
    L6_3 = A0_2._sort_is_ascend
    L6_3 = not L6_3
    return L2_3(L3_3, L4_3, L5_3, L6_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._sort_equips = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._item_table
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = A0_3.Rarity
    L3_3 = A1_3.Rarity
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.Rarity
      L3_3 = A1_3.Rarity
      L2_3 = L2_3 < L3_3
      return L2_3
    end
    L2_3 = A0_3.IsPile
    L3_3 = A1_3.IsPile
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.IsPile
      if L2_3 then
        L2_3 = true
        return L2_3
      else
        L2_3 = false
        return L2_3
      end
    end
    L2_3 = A0_3.IsProtected
    L3_3 = A1_3.IsProtected
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.IsProtected
      if not L2_3 then
        L2_3 = true
        return L2_3
      else
        L2_3 = false
        return L2_3
      end
    end
    L2_3 = G
    L2_3 = L2_3.InventoryUtils
    L2_3 = L2_3.compare_sort_equip
    L3_3 = A0_3
    L4_3 = A1_3
    L5_3 = CS
    L5_3 = L5_3.RPG
    L5_3 = L5_3.GameCore
    L5_3 = L5_3.InventorySortType
    L5_3 = L5_3.Rarity
    L6_3 = false
    return L2_3(L3_3, L4_3, L5_3, L6_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._sort_auto_fill_material = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = false
  L2_2 = pairs
  L3_2 = A0_2._material_selected
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.item
    L8_2 = L7_2.IsPile
    if not L8_2 then
      L8_2 = L7_2.IsProtected
      if L8_2 then
        L1_2 = true
        L8_2 = table
        L8_2 = L8_2.remove
        L9_2 = A0_2._material_selected
        L10_2 = L5_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  L2_2 = A0_2._equip_data
  if L2_2 ~= nil then
    if L1_2 then
      L3_2 = A0_2
      L2_2 = A0_2._refresh
      L2_2(L3_2)
    end
    L2_2 = A0_2._levelup_dialog
    if L2_2 ~= nil then
      L2_2 = A0_2._levelup_dialog
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = A0_2._material_selected
      L5_2 = A0_2._item_table
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_item_changed = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InventoryModule
  L2_2 = L2_2.GetSortTypeName
  L3_2 = A1_2
  return L2_2(L3_2)
end
L0_1._set_sort_type_text_id = L8_1
return L0_1
