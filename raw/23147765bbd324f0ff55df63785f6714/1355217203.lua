local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeSimpleItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeSimpleItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeSimpleMaterialItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeSimpleSpItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeSimpleSpItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeSliderPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeSliderPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeTargetItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeTargetItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeSwitchPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeSwitchPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ItemComposeModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.FeatureSwitchModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.ComposeItemFailedType
L5_1 = 5
L6_1 = 5
L7_1 = {}
L7_1.Enable = "#FFFFFFFF"
L7_1.Disable = "#EB4141FF"
L8_1 = "SynthesisItemMaterial0_Produce"
L9_1 = "SynthesisItemMaterial0_Unlock"
L10_1 = "SynthesisItemMaterial0_Lock"
L11_1 = 12
L12_1 = "4032"
L13_1 = 10
L14_1 = 4101
function L15_1(A0_2)
  local L1_2
  L1_2 = A0_2.btn_list
  if L1_2 then
    L1_2 = A0_2.btn_list
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = A0_2.btn_list
      L1_2 = L1_2[2]
      if L1_2 ~= nil then
        L1_2 = A0_2.btn_list
        L1_2 = L1_2[2]
        L1_2 = L1_2.gameObject
        return L1_2
      end
      L1_2 = A0_2.btn_list
      L1_2 = L1_2[1]
      L1_2 = L1_2.gameObject
      return L1_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.compose_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.compose_key_map_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._slider_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_in_control_button_enable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_in_control_button_enable = L15_1
function L15_1(A0_2, A1_2, A2_2)
  A0_2._switch_callback = A1_2
  A0_2._switch_callback_self = A2_2
end
L0_1.register_switch_callback = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._from_new_compose = false
  A0_2._compose_num = 1
  A0_2._max_compose_count = 0
  A0_2.item_data = nil
  A0_2.is_in_anim = false
  A0_2._required_money = 0
  A0_2._contained_money = 0
  L1_2 = {}
  A0_2.compose_items = L1_2
  L1_2 = {}
  A0_2._special_compose_items = L1_2
  A0_2._compose_icon_panel = nil
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ItemComposeTargetItemPanel
  L4_2 = G
  L4_2 = L4_2.ItemComposeTargetItemPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._compose_icon_panel_without_desc = L1_2
  L1_2 = A0_2._compose_icon_panel_without_desc
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_target_item_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ItemComposeTargetItemPanel
  L4_2 = G
  L4_2 = L4_2.ItemComposeTargetItemPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._compose_icon_panel_with_desc = L1_2
  L1_2 = A0_2._compose_icon_panel_with_desc
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_target_item_with_desc_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ItemComposeSliderPanel
  L4_2 = G
  L4_2 = L4_2.ItemComposeSliderPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._slider_panel = L1_2
  L1_2 = A0_2._slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_slider_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_value_change_callback
  L3_2 = A0_2._on_slider_panel_value_changed
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ItemComposeSwitchPanel
  L4_2 = G
  L4_2 = L4_2.ItemComposeSwitchPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._switch_panel = L1_2
  L1_2 = A0_2._switch_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_click_switch
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._switch_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_switch_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_all_material_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.compose_btn
  L4_2 = A0_2._on_compose_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_unlock_formula
  L4_2 = A0_2._on_unlock_formula
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_auto
  L4_2 = A0_2._on_click_auto_btn
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_need_report_task_unlock = true
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_unlock
  L2_2 = L14_1
  L1_2 = L1_2(L2_2)
  A0_2._is_switch_panel_unlock = L1_2
end
L0_1._on_load = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._all_sp_material_panels = L1_2
  L1_2 = 1
  L2_2 = L6_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ItemComposeSimpleSpItem
    L8_2 = G
    L8_2 = L8_2.ItemComposeSimpleSpItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_sp_mat_list
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._all_sp_material_panels
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._init_all_material_panel = L15_1
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = {}
  A0_2.btn_list = L3_2
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2.item_data
  if A1_2 ~= L3_2 then
    A0_2._compose_num = 1
  end
  L3_2 = A1_2.IsNew
  if L3_2 then
    A1_2.IsNew = false
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.RefreshItemComposeIsNew
    L3_2(L4_2)
  end
  A0_2.item_data = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_limit_num_panel
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.refresh_max_count
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_compose_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_quantity
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2.item_data
  L5_2 = L5_2.IsFormulaUnlocked
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_box_unlock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2.item_data
  L5_2 = L5_2.IsFormulaUnlocked
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.item_data
  L3_2 = L3_2.IsFormulaUnlocked
  if not L3_2 then
    L3_2 = A0_2._compose_icon_panel_with_desc
    A0_2._compose_icon_panel = L3_2
    L3_2 = A0_2._compose_icon_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_click_enable
    L5_2 = false
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._setup_target_item_desc
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._need_unlock_formula
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._set_unlock_target_compose_item_panel
    L5_2 = A0_2.item_data
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._setup_btn_list_navigation_static
    L3_2(L4_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_material_box_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ItemCompose_Unlock_Tip_1"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_material_box_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_ItemCompose_SubTitle"
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemComposeTypeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2.item_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.Type
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_target_item
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2.MainTypeID
  L6_2 = L6_2 ~= 1
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_target_item_with_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2.MainTypeID
  L6_2 = L6_2 == 1
  L4_2(L5_2, L6_2)
  L4_2 = L3_2.MainTypeID
  if L4_2 == 1 then
    L4_2 = A0_2._compose_icon_panel_with_desc
    A0_2._compose_icon_panel = L4_2
    L5_2 = A0_2
    L4_2 = A0_2._setup_target_item_desc
    L4_2(L5_2)
  else
    L4_2 = A0_2._compose_icon_panel_without_desc
    A0_2._compose_icon_panel = L4_2
  end
  L4_2 = A0_2._compose_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_click_enable
  L6_2 = true
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.prepare_compose_items
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.setup_target_compose_item_panel
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.set_compose_items
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_btn_list_navigation_static
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_disable_panel
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_num
  L4_2(L5_2)
  L4_2 = A0_2._slider_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_hint
  L6_2 = A0_2.item_data
  L6_2 = L6_2.IsLock
  L6_2 = A0_2.item_data
  L6_2 = not L6_2 and L6_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_same_type_switch
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_locate_compose_item_slider
  L4_2(L5_2)
end
L0_1.setup_view = L15_1
function L15_1(A0_2)
  local L1_2
  L1_2 = A0_2._special_compose_items
  return L1_2
end
L0_1.get_special_compose_items = L15_1
function L15_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._special_compose_items = L1_2
end
L0_1.clear_sp_compose_materials = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._special_compose_items
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._special_compose_items
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.id
    L7_2 = L1_1
    L8_2 = L7_2
    L7_2 = L7_2.GetItemCountByConfigID
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = A0_2._special_compose_items
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.count
    if L7_2 < L8_2 then
      L8_2 = {}
      L1_2 = L8_2
      break
    end
    if L7_2 ~= 0 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = A0_2._special_compose_items
      L10_2 = L10_2[L5_2]
      L8_2(L9_2, L10_2)
    end
  end
  L2_2 = {}
  A0_2._special_compose_items = L2_2
  A0_2._special_compose_items = L1_2
end
L0_1.update_sp_material_id_list = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = A0_2.item_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.Type
  if L2_2 ~= A1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._check_is_compose_item_data_lock
  L4_2 = A0_2.item_data
  L4_2 = L4_2.ConfigID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L2_2 = {}
  L3_2 = 0
  L4_2 = A0_2.item_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.MaterialCost
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2.item_data
    L7_2 = L7_2.Row
    L7_2 = L7_2.MaterialCost
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.ItemID
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemComposeConfigExcelTable
  L3_2 = L3_2.dataDict
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.Type
    if A1_2 == L9_2 then
      L9_2 = L8_2.ID
      L10_2 = A0_2.item_data
      L10_2 = L10_2.ConfigID
      if L9_2 ~= L10_2 then
        L9_2 = 0
        L10_2 = L8_2.MaterialCost
        L10_2 = L10_2.Length
        L10_2 = L10_2 - 1
        L11_2 = 1
        for L12_2 = L9_2, L10_2, L11_2 do
          L13_2 = L8_2.MaterialCost
          L13_2 = L13_2[L12_2]
          L13_2 = L13_2.ItemID
          L14_2 = A0_2.item_data
          L14_2 = L14_2.ItemID
          if L13_2 == L14_2 then
            L14_2 = A0_2
            L13_2 = A0_2._check_is_table_exist_value
            L15_2 = A0_2._same_type_compose_id_table
            L16_2 = L8_2.ID
            L13_2 = L13_2(L14_2, L15_2, L16_2)
            if not L13_2 then
              L14_2 = A0_2
              L13_2 = A0_2._check_is_compose_item_data_lock
              L15_2 = L8_2.ID
              L13_2 = L13_2(L14_2, L15_2)
              if not L13_2 then
                L13_2 = table
                L13_2 = L13_2.insert
                L14_2 = A0_2._same_type_compose_id_table
                L15_2 = L8_2.ID
                L13_2(L14_2, L15_2)
              end
            end
          end
        end
        L9_2 = 1
        L10_2 = #L2_2
        L11_2 = 1
        for L12_2 = L9_2, L10_2, L11_2 do
          L13_2 = L2_2[L12_2]
          L14_2 = L8_2.ItemID
          if L13_2 == L14_2 then
            L14_2 = A0_2
            L13_2 = A0_2._check_is_table_exist_value
            L15_2 = A0_2._same_type_compose_id_table
            L16_2 = L8_2.ID
            L13_2 = L13_2(L14_2, L15_2, L16_2)
            if not L13_2 then
              L14_2 = A0_2
              L13_2 = A0_2._check_is_compose_item_data_lock
              L15_2 = L8_2.ID
              L13_2 = L13_2(L14_2, L15_2)
              if not L13_2 then
                L13_2 = table
                L13_2 = L13_2.insert
                L14_2 = A0_2._same_type_compose_id_table
                L15_2 = L8_2.ID
                L13_2(L14_2, L15_2)
              end
            end
          end
        end
      end
    end
  end
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._same_type_compose_id_table
  L6_2 = A0_2.item_data
  L6_2 = L6_2.ConfigID
  L4_2(L5_2, L6_2)
  L4_2 = table
  L4_2 = L4_2.sort
  L5_2 = A0_2._same_type_compose_id_table
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = CS
    L2_3 = L2_3.RPG
    L2_3 = L2_3.GameCore
    L2_3 = L2_3.ItemComposeConfigExcelTable
    L2_3 = L2_3.GetData
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    L3_3 = CS
    L3_3 = L3_3.RPG
    L3_3 = L3_3.GameCore
    L3_3 = L3_3.ItemComposeConfigExcelTable
    L3_3 = L3_3.GetData
    L4_3 = A1_3
    L3_3 = L3_3(L4_3)
    L4_3 = L2_3.Order
    L5_3 = L3_3.Order
    L4_3 = L4_3 < L5_3
    return L4_3
  end
  L4_2(L5_2, L6_2)
end
L0_1._get_same_type_compose_id_table = L15_1
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = 1
  L4_2 = #A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    if L7_2 == A2_2 then
      L7_2 = true
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_is_table_exist_value = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetComposeItemData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.CanCompose
    L3_2 = L3_2(L4_2)
    L3_2 = #L3_2
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ComposeItemFailedType
    L4_2 = L4_2.LockedByLevel
    L4_2 = #L4_2
    L3_2 = L3_2 >= L4_2
    return L3_2
  else
    L3_2 = true
    return L3_2
  end
end
L0_1._check_is_compose_item_data_lock = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._switch_callback
  if L2_2 then
    L2_2 = A0_2._switch_callback_self
    if L2_2 then
      L2_2 = A0_2._switch_callback
      L3_2 = A0_2._switch_callback_self
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_click_switch = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.is_in_anim
  if L1_2 then
    return
  end
  L1_2 = A0_2._compose_num
  if not (L1_2 < 0) then
    L1_2 = A0_2.item_data
    if L1_2 ~= nil then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = A0_2
  L1_2 = A0_2._is_feature_partial_closed
  L3_2 = CS
  L3_2 = L3_2.KJMOMPDBPKH
  L3_2 = L3_2.MGCLMKPFKAM
  L4_2 = A0_2.item_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.ItemID
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    return
  end
  L1_2 = 0
  L2_2 = A0_2.item_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.MaterialCost
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._is_feature_partial_closed
    L7_2 = CS
    L7_2 = L7_2.KJMOMPDBPKH
    L7_2 = L7_2.MGCLMKPFKAM
    L8_2 = A0_2.item_data
    L8_2 = L8_2.Row
    L8_2 = L8_2.MaterialCost
    L8_2 = L8_2[L4_2]
    L8_2 = L8_2.ItemID
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if L5_2 then
      return
    end
  end
  L1_2 = 1
  L2_2 = A0_2._special_compose_items
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._is_feature_partial_closed
    L7_2 = CS
    L7_2 = L7_2.KJMOMPDBPKH
    L7_2 = L7_2.MGCLMKPFKAM
    L8_2 = A0_2._special_compose_items
    L8_2 = L8_2[L4_2]
    L8_2 = L8_2.id
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if L5_2 then
      return
    end
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.ItemCompose.ItemComposeConfirmDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_compose
  L4_2 = A0_2.item_data
  L5_2 = A0_2._compose_num
  L6_2 = A0_2._special_compose_items
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_compose_btn = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InventoryModule
  L2_2 = L2_2.GetItemRow
  L3_2 = 2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.compose_cost_icon
  L6_2 = L2_2.ItemIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._compose_icon_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2.btn_list
  L5_2 = A0_2._compose_icon_panel
  L6_2 = L5_2
  L5_2 = L5_2.get_btn_root
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2.ItemID
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    return
  end
  L4_2 = A0_2._compose_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_name
  L6_2 = L3_2.ItemName
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._compose_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_rarity
  L6_2 = L3_2.Rarity
  L6_2 = #L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._owner
  L4_2 = L4_2.from_compose
  if L4_2 == true then
    L4_2 = A0_2._owner
    L4_2.from_compose = false
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.UIAnimationUtils
    L4_2 = L4_2.PlayFromBegin
    L5_2 = A0_2._binder
    L5_2 = L5_2.anim_rarity_circle
    L6_2 = "SynthesisItemTypeSwitch"
    L4_2(L5_2, L6_2)
  end
end
L0_1.setup_target_compose_item_panel = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._compose_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.interrupt_anim
  L4_2 = L10_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._compose_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_target_item
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_target_item_with_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_slider_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_auto
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L3_2 = A1_2.Row
  L3_2 = L3_2.FormulaRequire
  L2_2.ItemID = L3_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetItemCountByConfigID
  L5_2 = L2_2.ItemID
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.Count = L3_2
  L3_2 = {}
  A0_2._material_panels = L3_2
  L3_2 = {}
  A0_2._sp_material_panels = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._init_material_panels
  L5_2 = false
  L6_2 = 1
  L7_2 = 0
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._material_panels
  L3_2 = L3_2[1]
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2.ItemID
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._material_panels
  L3_2 = L3_2[1]
  L4_2 = L3_2
  L3_2 = L3_2.set_count_display
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2.btn_list
  L5_2 = A0_2._material_panels
  L5_2 = L5_2[1]
  L5_2 = L5_2._binder
  L5_2 = L5_2.btn_root
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2.ItemID
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    return
  end
  L4_2 = A0_2._compose_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_name
  L6_2 = L3_2.ItemName
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._compose_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_rarity
  L6_2 = L3_2.Rarity
  L6_2 = #L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._compose_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_canvas_group_lock_alpha
  L6_2 = 1
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._compose_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_count
  L6_2 = A1_2.Count
  L4_2(L5_2, L6_2)
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetItemCountByConfigID
  L6_2 = A1_2.Row
  L6_2 = L6_2.FormulaRequire
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._compose_icon_panel
  L6_2 = L5_2
  L5_2 = L5_2.set_lock_eff_show
  L7_2 = false
  L5_2(L6_2, L7_2)
end
L0_1._set_unlock_target_compose_item_panel = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.ItemsConfig
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_array
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  A0_2.compose_items = L3_2
end
L0_1.prepare_compose_items = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.compose_items
  L2_2 = #L1_2
  L3_2 = A0_2.item_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.SpecialMaterialCostNumber
  L4_2 = L5_1
  if not (L2_2 > L4_2) then
    L4_2 = L6_1
    if not (L3_2 > L4_2) then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L4_2 = false
  L5_2 = A0_2.item_data
  L5_2 = L5_2.Row
  L5_2 = L5_2.FormulaType
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.FormulaType
  L6_2 = L6_2.Sepcial
  if L5_2 == L6_2 then
    L4_2 = true
  end
  L5_2 = {}
  A0_2._material_panels = L5_2
  L5_2 = {}
  A0_2._sp_material_panels = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._init_material_panels
  L7_2 = L4_2
  L8_2 = L2_2
  L9_2 = L3_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = 1
  L6_2 = L2_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2._material_panels
    L9_2 = L9_2[L8_2]
    L10_2 = L9_2
    L9_2 = L9_2.setup_view
    L11_2 = L1_2[L8_2]
    L11_2 = L11_2.ItemID
    L9_2(L10_2, L11_2)
    L9_2 = A0_2._material_panels
    L9_2 = L9_2[L8_2]
    L10_2 = L9_2
    L9_2 = L9_2.set_interactable
    L11_2 = true
    L9_2(L10_2, L11_2)
    L9_2 = A0_2._material_panels
    L9_2 = L9_2[L8_2]
    L10_2 = L9_2
    L9_2 = L9_2.enable_mono_in_control
    L11_2 = false
    L9_2(L10_2, L11_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2.btn_list
    L11_2 = A0_2._material_panels
    L11_2 = L11_2[L8_2]
    L11_2 = L11_2._binder
    L11_2 = L11_2.btn_root
    L9_2(L10_2, L11_2)
  end
  if L4_2 == true then
    L6_2 = A0_2
    L5_2 = A0_2._setup_sp_material_panels
    L5_2(L6_2)
  end
end
L0_1.set_compose_items = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._special_compose_items
  L1_2 = #L1_2
  L2_2 = 0
  L3_2 = true
  L4_2 = 1
  L5_2 = L1_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L2_2 = L2_2 + 1
    L8_2 = A0_2._sp_material_panels
    L8_2 = L8_2[L2_2]
    L9_2 = L8_2
    L8_2 = L8_2.setup_view_special
    L10_2 = A0_2._special_compose_items
    L10_2 = L10_2[L7_2]
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._sp_material_panels
    L8_2 = L8_2[L2_2]
    L9_2 = L8_2
    L8_2 = L8_2.set_interactable
    L10_2 = true
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._sp_material_panels
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2
    L8_2 = L8_2.enable_mono_in_control
    L10_2 = L3_2
    L8_2(L9_2, L10_2)
    L3_2 = false
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2.btn_list
    L10_2 = A0_2._sp_material_panels
    L10_2 = L10_2[L2_2]
    L10_2 = L10_2._binder
    L10_2 = L10_2.btn_root
    L8_2(L9_2, L10_2)
  end
  L4_2 = L2_2 + 1
  L5_2 = A0_2._sp_material_panels
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._sp_material_panels
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2
    L8_2 = L8_2.setup_view_special
    L10_2 = nil
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._sp_material_panels
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2
    L8_2 = L8_2.enable_mono_in_control
    L10_2 = L3_2
    L8_2(L9_2, L10_2)
    L3_2 = false
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2.btn_list
    L10_2 = A0_2._sp_material_panels
    L10_2 = L10_2[L7_2]
    L10_2 = L10_2._binder
    L10_2 = L10_2.btn_root
    L8_2(L9_2, L10_2)
  end
end
L0_1._setup_sp_material_panels = L15_1
function L15_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = 1
  while A2_2 >= L4_2 do
    L5_2 = A0_2._all_sp_material_panels
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.set_is_special
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._all_sp_material_panels
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.clear_callback
    L5_2(L6_2)
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._material_panels
    L7_2 = A0_2._all_sp_material_panels
    L7_2 = L7_2[L4_2]
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_sp_mat_list
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L4_2 = L4_2 + 1
  end
  while true do
    L5_2 = A3_2 + A2_2
    if not (L4_2 <= L5_2) then
      break
    end
    L5_2 = A0_2._all_sp_material_panels
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.register_click_callback
    L7_2 = A0_2._on_click_sp_material
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._sp_material_panels
    L7_2 = A0_2._all_sp_material_panels
    L7_2 = L7_2[L4_2]
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_sp_mat_list
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L4_2 = L4_2 + 1
  end
  while true do
    L5_2 = L5_1
    if not (L4_2 <= L5_2) then
      break
    end
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_sp_mat_list
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
    L4_2 = L4_2 + 1
  end
  if A1_2 then
    L6_2 = A0_2
    L5_2 = A0_2._set_sp_material_panel_active
    L5_2(L6_2)
  end
end
L0_1._init_material_panels = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.compose_items
  L1_2 = #L1_2
  L2_2 = A0_2._special_compose_items
  L2_2 = #L2_2
  if L2_2 == 0 then
    L2_2 = 1
  end
  L3_2 = L1_2 + 1
  L4_2 = L1_2 + L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_sp_mat_list
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = true
    L7_2(L8_2, L9_2)
  end
  L3_2 = L1_2 + L2_2
  L3_2 = L3_2 + 1
  L4_2 = L6_1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_sp_mat_list
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
end
L0_1._set_sp_material_panel_active = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.item_data
  L1_2 = L1_2.IsFormulaUnlocked
  if not L1_2 then
    return
  end
  L1_2 = A0_2.item_data
  L2_2 = L1_2
  L1_2 = L1_2.CanCompose
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.compose_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L4_1.OK
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_slider_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L4_1.OK
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.disable_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L4_1.OK
  L4_2 = L1_2 ~= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_alert_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_auto_btn
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._compose_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_canvas_group_lock_alpha
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = L4_1.LockedByLevel
  if L1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.disable_text
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ItemCompose_Tips_02"
    L5_2 = A0_2.item_data
    L5_2 = L5_2.Row
    L5_2 = L5_2.WorldLevelRequire
    L2_2(L3_2, L4_2, L5_2)
    return
  else
    L2_2 = L4_1.InsufficientRemainComposeNum
    if L1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.disable_text
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_Rogue_Aeon_Exp_Tip2"
      L2_2(L3_2, L4_2)
      return
    else
      L2_2 = L4_1.NeedResource
      if L1_2 == L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.disable_text
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = "UIText_ItemCompose_Tips_05"
        L2_2(L3_2, L4_2)
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._need_unlock_formula
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.compose_btn
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_slider_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2.item_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.FormulaType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.FormulaType
  L3_2 = L3_2.Sepcial
  L2_2 = L2_2 == L3_2
  L3_2 = L4_1.OK
  if L1_2 ~= L3_2 then
    L3_2 = L4_1.NeedCoin
  end
  if L1_2 == L3_2 and L2_2 == true then
    L4_2 = A0_2
    L3_2 = A0_2._get_current_sp_material_count
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_slider_panel
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = A0_2.item_data
    L6_2 = L6_2.Row
    L6_2 = L6_2.SpecialMaterialCostNumber
    L6_2 = L3_2 >= L6_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_alert_panel
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = A0_2.item_data
    L6_2 = L6_2.Row
    L6_2 = L6_2.SpecialMaterialCostNumber
    L6_2 = L3_2 < L6_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.item_data
    L4_2 = L4_2.Row
    L4_2 = L4_2.SpecialMaterialCostNumber
    if L3_2 < L4_2 then
      if L3_2 == 0 then
        L4_2 = A0_2._binder
        L4_2 = L4_2.txt_alert_panel
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetTextID
        L6_2 = "UIText_ItemCompose_AddMaterial_Tip"
        L4_2(L5_2, L6_2)
      else
        L4_2 = A0_2._binder
        L4_2 = L4_2.txt_alert_panel
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetTextID
        L6_2 = "UIText_ItemCompose_Tips_05"
        L4_2(L5_2, L6_2)
      end
    end
  end
end
L0_1._setup_disable_panel = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L4_1.OK
  if A1_2 ~= L2_2 then
    L2_2 = L4_1.NeedCoin
    if A1_2 ~= L2_2 then
      goto lbl_38
    end
  end
  L2_2 = A0_2.item_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.FormulaType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.FormulaType
  L3_2 = L3_2.Sepcial
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_auto
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._special_compose_items
    L2_2 = #L2_2
    if L2_2 == 0 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_btn_auto
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_AvatarDetail_AutoBtn"
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_btn_auto
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_Filter_ClearAll"
      L2_2(L3_2, L4_2)
    end
  ::lbl_38::
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_auto
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_auto_btn = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 0
  L2_2 = 1
  L3_2 = A0_2._special_compose_items
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._special_compose_items
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.count
    L1_2 = L1_2 + L6_2
  end
  return L1_2
end
L0_1._get_current_sp_material_count = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_limit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.item_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.LimitType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemComposeLimitType
  L4_2 = L4_2.NotLimit
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.item_data
  L1_2 = L1_2.Row
  L1_2 = L1_2.LimitType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemComposeLimitType
  L2_2 = L2_2.NotLimit
  if L1_2 ~= L2_2 then
    L1_2 = A0_2.item_data
    L1_2 = L1_2.Row
    L1_2 = L1_2.LimitType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ItemComposeLimitType
    L2_2 = L2_2.Daily
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_limit_title
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_ItemCompose_Remain_Tip_1"
      L4_2 = A0_2.item_data
      L4_2 = L4_2.RemainComposeNum
      L1_2(L2_2, L3_2, L4_2)
    else
      L1_2 = A0_2.item_data
      L1_2 = L1_2.Row
      L1_2 = L1_2.LimitType
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.ItemComposeLimitType
      L2_2 = L2_2.Weekly
      if L1_2 == L2_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.txt_limit_title
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetTextID
        L3_2 = "UIText_ItemCompose_Remain_Tip_1"
        L4_2 = A0_2.item_data
        L4_2 = L4_2.RemainComposeNum
        L1_2(L2_2, L3_2, L4_2)
      else
        L1_2 = A0_2.item_data
        L1_2 = L1_2.Row
        L1_2 = L1_2.LimitType
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.GameCore
        L2_2 = L2_2.ItemComposeLimitType
        L2_2 = L2_2.Monthly
        if L1_2 == L2_2 then
          L1_2 = A0_2._binder
          L1_2 = L1_2.txt_limit_title
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetTextID
          L3_2 = "UIText_ItemCompose_Remain_Tip_1"
          L4_2 = A0_2.item_data
          L4_2 = L4_2.RemainComposeNum
          L1_2(L2_2, L3_2, L4_2)
        end
      end
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_limit_num
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = ""
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_limit_num_panel = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  A0_2._same_type_compose_id_table = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_same_type_compose_id_table
  L4_2 = L11_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._is_switch_panel_unlock
  if L2_2 then
    L2_2 = A0_2._same_type_compose_id_table
    L2_2 = #L2_2
    L2_2 = 1 < L2_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_switch_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._switch_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A0_2.item_data
    L5_2 = L5_2.ConfigID
    L6_2 = A0_2._same_type_compose_id_table
    L7_2 = A1_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = A0_2._is_need_report_task_unlock
    if L3_2 then
      A0_2._is_need_report_task_unlock = false
      L3_2 = G
      L3_2 = L3_2.NotifyManager
      L3_2 = L3_2.notify
      L4_2 = G
      L4_2 = L4_2.CS
      L4_2 = L4_2.NotifyType
      L4_2 = L4_2.TutorialTaskUnlock
      L5_2 = L12_1
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._setup_same_type_switch = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._max_compose_count = 0
  L1_2 = A0_2.item_data
  L2_2 = L1_2
  L1_2 = L1_2.GetMaxComposeCount
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.item_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.FormulaType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.FormulaType
  L3_2 = L3_2.Sepcial
  L2_2 = L2_2 == L3_2
  if L2_2 == true then
    L4_2 = A0_2
    L3_2 = A0_2._calculate_special_max_count
    L3_2 = L3_2(L4_2)
    if L1_2 > L3_2 then
      A0_2._max_compose_count = L3_2
    else
      A0_2._max_compose_count = L1_2
    end
  else
    A0_2._max_compose_count = L1_2
  end
  L3_2 = A0_2._slider_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_lock_value_change_callback
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._slider_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_max_value
  L5_2 = A0_2._max_compose_count
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._slider_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_lock_value_change_callback
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._compose_num
  L4_2 = A0_2._max_compose_count
  if L3_2 > L4_2 then
    L3_2 = A0_2._max_compose_count
    A0_2._compose_num = L3_2
  end
  L3_2 = A0_2._compose_num
  if L3_2 <= 0 then
    A0_2._compose_num = 1
  end
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogFormatWithTag
  L4_2 = G
  L4_2 = L4_2.LogTag
  L4_2 = L4_2.UI
  L5_2 = "refresh_max_count "
  L6_2 = A0_2._max_compose_count
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
end
L0_1.refresh_max_count = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._get_current_sp_material_count
  L1_2 = L1_2(L2_2)
  if L1_2 == 0 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._special_compose_items
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = math
    L6_2 = L6_2.floor
    L7_2 = L1_1
    L8_2 = L7_2
    L7_2 = L7_2.GetItemCountByConfigID
    L9_2 = A0_2._special_compose_items
    L9_2 = L9_2[L5_2]
    L9_2 = L9_2.id
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = A0_2._special_compose_items
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.count
    L7_2 = L7_2 / L8_2
    L6_2 = L6_2(L7_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = L1_2[1]
  L3_2 = 2
  L4_2 = #L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    if L2_2 > L7_2 then
      L2_2 = L1_2[L6_2]
    end
  end
  return L2_2
end
L0_1._calculate_special_max_count = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._compose_num = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_num
  L2_2(L3_2)
end
L0_1._on_slider_panel_value_changed = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_value
  L3_2 = A0_2._compose_num
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_material_num
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_target_compose_item_num
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_money_num
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_btn_composable
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_material_lack_hint
  L1_2(L2_2)
end
L0_1._refresh_num = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = nil
  L2_2 = A0_2.item_data
  L2_2 = L2_2.IsCanCompose
  if L2_2 then
    L2_2 = A0_2.item_data
    L2_2 = L2_2.IsFormulaUnlocked
    if L2_2 then
      L2_2 = A0_2._required_money
      L3_2 = A0_2._contained_money
      if L2_2 <= L3_2 then
        L2_2 = A0_2.item_data
        L2_2 = L2_2.Row
        L2_2 = L2_2.FormulaType
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.FormulaType
        L3_2 = L3_2.Sepcial
        if L2_2 == L3_2 then
          L3_2 = A0_2
          L2_2 = A0_2._get_current_sp_material_count
          L2_2 = L2_2(L3_2)
          L3_2 = A0_2.item_data
          L3_2 = L3_2.Row
          L3_2 = L3_2.SpecialMaterialCostNumber
          L1_2 = L2_2 >= L3_2
        else
          L1_2 = true
        end
    end
  end
  else
    L1_2 = false
  end
end
L0_1._reset_animator = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2.item_data
  L1_2 = L1_2.IsFormulaUnlocked
  if not L1_2 then
    return
  end
  L1_2 = false
  L2_2 = A0_2.item_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.FormulaType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.FormulaType
  L3_2 = L3_2.Sepcial
  if L2_2 == L3_2 then
    L1_2 = true
  end
  L2_2 = A0_2._material_panels
  L3_2 = 1
  L4_2 = A0_2.compose_items
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_1
    L8_2 = L7_2
    L7_2 = L7_2.GetItemCountByConfigID
    L9_2 = A0_2.compose_items
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.ItemID
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L2_2[L6_2]
    L9_2 = L8_2
    L8_2 = L8_2.set_count
    L10_2 = L7_2
    L11_2 = A0_2.compose_items
    L11_2 = L11_2[L6_2]
    L11_2 = L11_2.ItemNum
    L12_2 = A0_2._compose_num
    L11_2 = L11_2 * L12_2
    L12_2 = true
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
  if L1_2 == true then
    L3_2 = 0
    L4_2 = 1
    L5_2 = A0_2._special_compose_items
    L5_2 = #L5_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L1_1
      L9_2 = L8_2
      L8_2 = L8_2.GetItemCountByConfigID
      L10_2 = A0_2._special_compose_items
      L10_2 = L10_2[L7_2]
      L10_2 = L10_2.id
      L8_2 = L8_2(L9_2, L10_2)
      L3_2 = L3_2 + 1
      L9_2 = A0_2._sp_material_panels
      L9_2 = L9_2[L3_2]
      L10_2 = L9_2
      L9_2 = L9_2.set_count
      L11_2 = L8_2
      L12_2 = A0_2._special_compose_items
      L12_2 = L12_2[L7_2]
      L12_2 = L12_2.count
      L13_2 = A0_2._compose_num
      L12_2 = L12_2 * L13_2
      L13_2 = true
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
    L4_2 = L3_2 + 1
    L5_2 = A0_2._sp_material_panels
    L5_2 = #L5_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = A0_2._sp_material_panels
      L8_2 = L8_2[L7_2]
      L9_2 = L8_2
      L8_2 = L8_2.set_count_display
      L10_2 = false
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1._refresh_material_num = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = 1
  L3_2 = A0_2._special_compose_items
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.GetItemCountByConfigID
    L8_2 = A0_2._special_compose_items
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.id
    L6_2 = L6_2(L7_2, L8_2)
    L1_2 = L1_2 + L6_2
  end
  return L1_2
end
L0_1._get_current_sp_material_have_count = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = A0_2.item_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.SpecialMaterialCost
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.GetItemCountByConfigID
    L8_2 = A0_2.item_data
    L8_2 = L8_2.Row
    L8_2 = L8_2.SpecialMaterialCost
    L8_2 = L8_2[L5_2]
    L6_2 = L6_2(L7_2, L8_2)
    L1_2 = L1_2 + L6_2
  end
  return L1_2
end
L0_1._get_sp_material_have_count_in_bag = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetItemCountByConfigID
  L3_2 = A0_2.item_data
  L3_2 = L3_2.ItemID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = false
  L3_2 = A0_2.item_data
  L3_2 = L3_2.IsCanCompose
  if L3_2 then
    L3_2 = A0_2.item_data
    L3_2 = L3_2.Row
    L3_2 = L3_2.FormulaType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.FormulaType
    L4_2 = L4_2.Sepcial
    L3_2 = L3_2 == L4_2
    if L3_2 then
      L4_2 = A0_2._special_compose_items
      L4_2 = #L4_2
      if L4_2 ~= 0 then
        L2_2 = true
      end
    else
      L2_2 = true
    end
  end
  L3_2 = A0_2._compose_icon_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_count
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L0_1._refresh_target_compose_item_num = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.item_data
  L1_2 = L1_2.CoinCost
  L2_2 = A0_2._compose_num
  L1_2 = L1_2 * L2_2
  A0_2._required_money = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetItemCountByConfigID
  L3_2 = 2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._contained_money = L1_2
  L1_2 = A0_2.item_data
  L1_2 = L1_2.CoinCost
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.compose_cost_text
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.compose_cost_icon
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.compose_cost_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.compose_cost_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = string
  L1_2 = L1_2.format
  L2_2 = "%.0f"
  L3_2 = A0_2._required_money
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._required_money
  L3_2 = A0_2._contained_money
  if L2_2 > L3_2 then
    L2_2 = string
    L2_2 = L2_2.format
    L3_2 = "<color=\"#C84A32\">%.0f</color>"
    L4_2 = A0_2._required_money
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.compose_cost_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_money_num = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = nil
  L2_2 = A0_2.item_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.FormulaType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.FormulaType
  L3_2 = L3_2.Sepcial
  L2_2 = L2_2 == L3_2
  if L2_2 == true then
    L4_2 = A0_2
    L3_2 = A0_2._get_current_sp_material_count
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2.item_data
    L4_2 = L4_2.Row
    L4_2 = L4_2.SpecialMaterialCostNumber
    L1_2 = L3_2 >= L4_2
  else
    L1_2 = true
  end
  L3_2 = A0_2._required_money
  L4_2 = A0_2._contained_money
  L3_2 = L3_2 <= L4_2 and L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.compose_btn
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetInteractable
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.setup_in_control_button_enable
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._set_btn_composable = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.material_lack_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._set_material_lack_hint = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._compose_icon_panel_with_desc
  L3_2 = L2_2
  L2_2 = L2_2.get_anim_length
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.get_anim_length = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._compose_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.play_anim
  L3_2 = L8_1
  L1_2(L2_2, L3_2)
end
L0_1.set_anim_in_producing = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._compose_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.interrupt_anim
  L3_2 = L8_1
  L1_2(L2_2, L3_2)
end
L0_1.interrupt_producing_anim = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._compose_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.play_anim
  L3_2 = L9_1
  L1_2(L2_2, L3_2)
end
L0_1.set_anim_in_unlocking = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._compose_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_canvas_group_lock_alpha
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
L0_1.set_unlocking_anim_in_begin = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.item_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.ItemID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_consume_item_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.ItemName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_consume_item_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.ItemDesc
  L2_2(L3_2, L4_2)
end
L0_1._setup_target_item_desc = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.item_data
  L1_2 = L1_2.IsFormulaUnlocked
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.item_data
  L1_2 = L1_2.Row
  L1_2 = L1_2.FormulaRequire
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_unlock_formula
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = 0 < L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.disable_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 <= 0
  L3_2(L4_2, L5_2)
  if 0 < L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_unlock_formula
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ItemCompose_Formula_Use"
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_unlock_formula
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ItemCompose_Formula_Tip_1"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.disable_text
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ItemCompose_Formula_Tip_1"
    L3_2(L4_2, L5_2)
  end
  L3_2 = true
  return L3_2
end
L0_1._need_unlock_formula = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.item_data
  L1_2 = L1_2.Row
  L1_2 = L1_2.FormulaRequire
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 < 1 then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogWarningFormat
    L4_2 = "\229\189\147\229\137\141\230\156\170\230\139\165\230\156\137\229\144\136\230\136\144\229\147\129(%d)\231\154\132\233\133\141\230\150\185(%d)"
    L5_2 = A0_2.item_data
    L5_2 = L5_2.ConfigID
    L6_2 = L1_2
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._is_feature_partial_closed
  L5_2 = CS
  L5_2 = L5_2.KJMOMPDBPKH
  L5_2 = L5_2.MGCLMKPFKAM
  L6_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.NetworkManager
  L3_2 = L3_2.FFOMLPONIFB
  L4_2 = L3_2
  L3_2 = L3_2.CIJIDBMDKAF
  L5_2 = L1_2
  L6_2 = 1
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_unlock_formula = L15_1
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L3_1
  L4_2 = L3_2
  L3_2 = L3_2.IsFeaturePartialClosed
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ConfirmDialogUtil
    L3_2 = L3_2.ShowOkHint
    L4_2 = "UIText_Toast_System_Off_Tips_1"
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.TextID
    L5_2 = L5_2.empty
    L3_2(L4_2, L5_2)
    L3_2 = true
    return L3_2
  else
    L3_2 = false
    return L3_2
  end
end
L0_1._is_feature_partial_closed = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.ItemCompose.ItemComposeSpecial.ItemComposeSpecialDialog"
  L4_2 = A0_2._special_compose_items
  L5_2 = A0_2.item_data
  L6_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.register_close_callback
  L5_2 = A0_2._on_sp_dialog_close
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._special_compose_items
  L3_2 = #L3_2
  A0_2._sp_kind_bofore_open_sp_dialog = L3_2
  L3_2 = A0_2._sp_kind_bofore_open_sp_dialog
  if L3_2 == 0 then
    A0_2._sp_kind_bofore_open_sp_dialog = 1
  end
end
L0_1._on_click_sp_material = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = #A1_2
  if L2_2 == 0 then
    L2_2 = 1
  end
  L3_2 = A0_2._sp_kind_bofore_open_sp_dialog
  if L2_2 < L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2.get_first_selected_object
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
  A0_2._special_compose_items = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._set_sp_material_panel_active
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_sp_material_panels
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_disable_panel
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.refresh_max_count
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_num
  L3_2(L4_2)
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.setup_controller_hint
  L5_2 = A0_2._special_compose_items
  L5_2 = #L5_2
  L5_2 = L5_2 ~= 0
  L3_2(L4_2, L5_2)
end
L0_1._on_sp_dialog_close = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._special_compose_items
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = {}
    A0_2._special_compose_items = L1_2
    L2_2 = A0_2
    L1_2 = A0_2.get_cur_zoom
    L1_2 = L1_2(L2_2)
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2.set_navigation_target
      L4_2 = A0_2
      L3_2 = A0_2.get_first_selected_object
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
  else
    L1_2 = {}
    L2_2 = 0
    L3_2 = A0_2.item_data
    L3_2 = L3_2.Row
    L3_2 = L3_2.SpecialMaterialCost
    L3_2 = L3_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = L1_2
      L8_2 = A0_2.item_data
      L8_2 = L8_2.Row
      L8_2 = L8_2.SpecialMaterialCost
      L8_2 = L8_2[L5_2]
      L6_2(L7_2, L8_2)
    end
    L2_2 = table
    L2_2 = L2_2.sort
    L3_2 = L1_2
    function L4_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
      L2_3 = L1_1
      L3_3 = L2_3
      L2_3 = L2_3.GetItemCountByConfigID
      L4_3 = A0_3
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = L1_1
      L4_3 = L3_3
      L3_3 = L3_3.GetItemCountByConfigID
      L5_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3)
      if L2_3 == L3_3 then
        L4_3 = 0
        L5_3 = 0
        L6_3 = 0
        L7_3 = A0_2.item_data
        L7_3 = L7_3.Row
        L7_3 = L7_3.SpecialMaterialCost
        L7_3 = L7_3.Length
        L7_3 = L7_3 - 1
        L8_3 = 1
        for L9_3 = L6_3, L7_3, L8_3 do
          L10_3 = A0_2.item_data
          L10_3 = L10_3.Row
          L10_3 = L10_3.SpecialMaterialCost
          L10_3 = L10_3[L9_3]
          if L10_3 == A0_3 then
            L4_3 = L9_3
          else
            L10_3 = A0_2.item_data
            L10_3 = L10_3.Row
            L10_3 = L10_3.SpecialMaterialCost
            L10_3 = L10_3[L9_3]
            if L10_3 == A1_3 then
              L5_3 = L9_3
            end
          end
        end
        L6_3 = L4_3 < L5_3
        return L6_3
      end
      L4_3 = L2_3 > L3_3
      return L4_3
    end
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.item_data
    L2_2 = L2_2.Row
    L2_2 = L2_2.SpecialMaterialCostNumber
    L3_2 = 1
    L4_2 = #L1_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L1_1
      L8_2 = L7_2
      L7_2 = L7_2.GetItemCountByConfigID
      L9_2 = L1_2[L6_2]
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = nil
      if L2_2 <= L7_2 then
        L8_2 = L2_2
      else
        L8_2 = L7_2
      end
      L9_2 = {}
      L10_2 = L1_2[L6_2]
      L9_2.id = L10_2
      L9_2.count = L8_2
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = A0_2._special_compose_items
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
      L2_2 = L2_2 - L8_2
      if L2_2 == 0 then
        break
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._set_sp_material_panel_active
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_sp_material_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_disable_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_max_count
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_num
  L1_2(L2_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.setup_controller_hint
  L3_2 = A0_2._special_compose_items
  L3_2 = #L3_2
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
end
L0_1._on_click_auto_btn = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.GotoLocateItemData
  if L1_2 then
    L1_2 = A0_2.item_data
    L1_2 = L1_2.IsCanCompose
    if L1_2 then
      L1_2 = A0_2.item_data
      L1_2 = L1_2.Row
      L1_2 = L1_2.FormulaType
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.FormulaType
      L2_2 = L2_2.Sepcial
      if L1_2 ~= L2_2 then
        L1_2 = L1_1.GotoLocateItemData
        L1_2 = L1_2.ConfigID
        L2_2 = A0_2.item_data
        L2_2 = L2_2.ItemID
        if L1_2 == L2_2 then
          L1_2 = A0_2._slider_panel
          L2_2 = L1_2
          L1_2 = L1_2.setup_value
          L3_2 = L1_1.GotoLocateItemData
          L3_2 = L3_2.Count
          L1_2(L2_2, L3_2)
        end
      end
    end
  end
  L1_1.GotoLocateItemData = nil
end
L0_1._setup_locate_compose_item_slider = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2.btn_list
  L1_2 = #L1_2
  if L1_2 ~= 0 then
    L2_2 = A0_2.item_data
    if L2_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2.item_data
  L2_2 = L2_2.IsFormulaUnlocked
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_navigation
    L4_2 = A0_2.btn_list
    L5_2 = NavigationType
    L5_2 = L5_2.Horizontal
    L2_2(L3_2, L4_2, L5_2)
    return
  end
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.btn_list
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.navigation
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.UI
    L7_2 = L7_2.Navigation
    L7_2 = L7_2.Mode
    L7_2 = L7_2.Explicit
    L6_2.mode = L7_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._set_single_btn_navigation
  L4_2 = A0_2.btn_list
  L4_2 = L4_2[1]
  L5_2 = nil
  L6_2 = A0_2.btn_list
  L6_2 = L6_2[2]
  L7_2 = nil
  L8_2 = nil
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_single_btn_navigation
  L4_2 = A0_2.btn_list
  L4_2 = L4_2[2]
  L5_2 = A0_2.btn_list
  L5_2 = L5_2[1]
  L6_2 = nil
  L7_2 = nil
  L8_2 = A0_2.btn_list
  L8_2 = L8_2[3]
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = 3
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._set_single_btn_navigation
    L8_2 = A0_2.btn_list
    L8_2 = L8_2[L5_2]
    L9_2 = A0_2.btn_list
    L9_2 = L9_2[1]
    L10_2 = nil
    L11_2 = A0_2.btn_list
    L12_2 = L5_2 - 1
    L11_2 = L11_2[L12_2]
    L12_2 = A0_2.btn_list
    L13_2 = L5_2 + 1
    L12_2 = L12_2[L13_2]
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end
L0_1._setup_btn_list_navigation_static = L15_1
function L15_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L1_2 = L1_2.is_in_anim
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_num
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_max_count
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_disable_panel
  L1_2(L2_2)
end
L0_1._on_return_to_top = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.btn_list
  L1_2 = #L1_2
  if L1_2 ~= 0 then
    L2_2 = A0_2.item_data
    if L2_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = 1
  L3_2 = A0_2.btn_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.btn_list
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.navigation
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.UI
    L7_2 = L7_2.Navigation
    L7_2 = L7_2.Mode
    L7_2 = L7_2.Explicit
    L6_2.mode = L7_2
  end
  L2_2 = A0_2.item_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.FormulaType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.FormulaType
  L3_2 = L3_2.Sepcial
  L2_2 = L2_2 == L3_2
  if not L2_2 then
    if L1_2 == 2 then
      L4_2 = A0_2
      L3_2 = A0_2.setup_navigation
      L5_2 = A0_2.btn_list
      L6_2 = NavigationType
      L6_2 = L6_2.Horizontal
      L3_2(L4_2, L5_2, L6_2)
    elseif L1_2 == 3 then
      L3_2 = A0_2.btn_list
      L3_2 = L3_2[3]
      L5_2 = A0_2
      L4_2 = A0_2._set_single_btn_navigation
      L6_2 = A0_2.btn_list
      L6_2 = L6_2[1]
      L7_2 = nil
      L8_2 = nil
      L9_2 = nil
      L10_2 = L3_2
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = A0_2
      L4_2 = A0_2._set_single_btn_navigation
      L6_2 = A0_2.btn_list
      L6_2 = L6_2[2]
      L7_2 = nil
      L8_2 = nil
      L9_2 = L3_2
      L10_2 = nil
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = A0_2
      L4_2 = A0_2._set_single_btn_navigation
      L6_2 = L3_2
      L7_2 = nil
      L8_2 = nil
      L9_2 = A0_2.btn_list
      L9_2 = L9_2[1]
      L10_2 = A0_2.btn_list
      L10_2 = L10_2[2]
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    elseif L1_2 == 4 then
      L3_2 = A0_2.btn_list
      L3_2 = L3_2[4]
      L5_2 = A0_2
      L4_2 = A0_2._set_single_btn_navigation
      L6_2 = A0_2.btn_list
      L6_2 = L6_2[1]
      L7_2 = nil
      L8_2 = nil
      L9_2 = nil
      L10_2 = L3_2
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = A0_2
      L4_2 = A0_2._set_single_btn_navigation
      L6_2 = A0_2.btn_list
      L6_2 = L6_2[2]
      L7_2 = nil
      L8_2 = L3_2
      L9_2 = nil
      L10_2 = nil
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = A0_2
      L4_2 = A0_2._set_single_btn_navigation
      L6_2 = A0_2.btn_list
      L6_2 = L6_2[3]
      L7_2 = nil
      L8_2 = nil
      L9_2 = L3_2
      L10_2 = nil
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = A0_2
      L4_2 = A0_2._set_single_btn_navigation
      L6_2 = L3_2
      L7_2 = A0_2.btn_list
      L7_2 = L7_2[2]
      L8_2 = nil
      L9_2 = A0_2.btn_list
      L9_2 = L9_2[1]
      L10_2 = A0_2.btn_list
      L10_2 = L10_2[3]
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    elseif L1_2 == 5 then
      L3_2 = A0_2.btn_list
      L3_2 = L3_2[5]
      L5_2 = A0_2
      L4_2 = A0_2._set_single_btn_navigation
      L6_2 = A0_2.btn_list
      L6_2 = L6_2[1]
      L7_2 = nil
      L8_2 = A0_2.btn_list
      L8_2 = L8_2[2]
      L9_2 = nil
      L10_2 = L3_2
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = A0_2
      L4_2 = A0_2._set_single_btn_navigation
      L6_2 = A0_2.btn_list
      L6_2 = L6_2[2]
      L7_2 = A0_2.btn_list
      L7_2 = L7_2[1]
      L8_2 = nil
      L9_2 = nil
      L10_2 = L3_2
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = A0_2
      L4_2 = A0_2._set_single_btn_navigation
      L6_2 = A0_2.btn_list
      L6_2 = L6_2[3]
      L7_2 = nil
      L8_2 = A0_2.btn_list
      L8_2 = L8_2[4]
      L9_2 = L3_2
      L10_2 = nil
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = A0_2
      L4_2 = A0_2._set_single_btn_navigation
      L6_2 = A0_2.btn_list
      L6_2 = L6_2[4]
      L7_2 = A0_2.btn_list
      L7_2 = L7_2[3]
      L8_2 = nil
      L9_2 = L3_2
      L10_2 = nil
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = A0_2
      L4_2 = A0_2._set_single_btn_navigation
      L6_2 = L3_2
      L7_2 = nil
      L8_2 = nil
      L9_2 = A0_2.btn_list
      L9_2 = L9_2[1]
      L10_2 = A0_2.btn_list
      L10_2 = L10_2[3]
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    elseif L1_2 == 6 then
      L3_2 = A0_2.btn_list
      L3_2 = L3_2[6]
      L5_2 = A0_2
      L4_2 = A0_2._set_single_btn_navigation
      L6_2 = A0_2.btn_list
      L6_2 = L6_2[1]
      L7_2 = A0_2.btn_list
      L7_2 = L7_2[3]
      L8_2 = A0_2.btn_list
      L8_2 = L8_2[2]
      L9_2 = nil
      L10_2 = L3_2
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = A0_2
      L4_2 = A0_2._set_single_btn_navigation
      L6_2 = A0_2.btn_list
      L6_2 = L6_2[2]
      L7_2 = A0_2.btn_list
      L7_2 = L7_2[1]
      L8_2 = nil
      L9_2 = nil
      L10_2 = L3_2
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = A0_2
      L4_2 = A0_2._set_single_btn_navigation
      L6_2 = A0_2.btn_list
      L6_2 = L6_2[3]
      L7_2 = nil
      L8_2 = L3_2
      L9_2 = A0_2.btn_list
      L9_2 = L9_2[1]
      L10_2 = A0_2.btn_list
      L10_2 = L10_2[4]
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = A0_2
      L4_2 = A0_2._set_single_btn_navigation
      L6_2 = A0_2.btn_list
      L6_2 = L6_2[4]
      L7_2 = A0_2.btn_list
      L7_2 = L7_2[3]
      L8_2 = A0_2.btn_list
      L8_2 = L8_2[5]
      L9_2 = L3_2
      L10_2 = nil
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = A0_2
      L4_2 = A0_2._set_single_btn_navigation
      L6_2 = A0_2.btn_list
      L6_2 = L6_2[5]
      L7_2 = A0_2.btn_list
      L7_2 = L7_2[4]
      L8_2 = nil
      L9_2 = L3_2
      L10_2 = nil
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = A0_2
      L4_2 = A0_2._set_single_btn_navigation
      L6_2 = L3_2
      L7_2 = A0_2.btn_list
      L7_2 = L7_2[3]
      L8_2 = nil
      L9_2 = A0_2.btn_list
      L9_2 = L9_2[1]
      L10_2 = A0_2.btn_list
      L10_2 = L10_2[4]
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  elseif L1_2 == 2 then
    L4_2 = A0_2
    L3_2 = A0_2.setup_navigation
    L5_2 = A0_2.btn_list
    L6_2 = NavigationType
    L6_2 = L6_2.Horizontal
    L3_2(L4_2, L5_2, L6_2)
  elseif L1_2 == 3 then
    L3_2 = A0_2.btn_list
    L3_2 = L3_2[2]
    L4_2 = A0_2.btn_list
    L4_2 = L4_2[3]
    L6_2 = A0_2
    L5_2 = A0_2._set_single_btn_navigation
    L7_2 = A0_2.btn_list
    L7_2 = L7_2[1]
    L8_2 = nil
    L9_2 = nil
    L10_2 = nil
    L11_2 = L3_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2
    L5_2 = A0_2._set_single_btn_navigation
    L7_2 = L3_2
    L8_2 = nil
    L9_2 = nil
    L10_2 = A0_2.btn_list
    L10_2 = L10_2[1]
    L11_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2
    L5_2 = A0_2._set_single_btn_navigation
    L7_2 = L4_2
    L8_2 = nil
    L9_2 = nil
    L10_2 = L3_2
    L11_2 = nil
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  elseif L1_2 == 4 then
    L3_2 = A0_2.btn_list
    L3_2 = L3_2[3]
    L4_2 = A0_2.btn_list
    L4_2 = L4_2[4]
    L6_2 = A0_2
    L5_2 = A0_2._set_single_btn_navigation
    L7_2 = A0_2.btn_list
    L7_2 = L7_2[1]
    L8_2 = nil
    L9_2 = A0_2.btn_list
    L9_2 = L9_2[2]
    L10_2 = nil
    L11_2 = L3_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2
    L5_2 = A0_2._set_single_btn_navigation
    L7_2 = A0_2.btn_list
    L7_2 = L7_2[2]
    L8_2 = A0_2.btn_list
    L8_2 = L8_2[1]
    L9_2 = nil
    L10_2 = nil
    L11_2 = L3_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2
    L5_2 = A0_2._set_single_btn_navigation
    L7_2 = L3_2
    L8_2 = nil
    L9_2 = nil
    L10_2 = A0_2.btn_list
    L10_2 = L10_2[1]
    L11_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2
    L5_2 = A0_2._set_single_btn_navigation
    L7_2 = L4_2
    L8_2 = nil
    L9_2 = nil
    L10_2 = L3_2
    L11_2 = nil
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  elseif L1_2 == 5 then
    L3_2 = A0_2.btn_list
    L3_2 = L3_2[4]
    L4_2 = A0_2.btn_list
    L4_2 = L4_2[5]
    L6_2 = A0_2
    L5_2 = A0_2._set_single_btn_navigation
    L7_2 = A0_2.btn_list
    L7_2 = L7_2[1]
    L8_2 = nil
    L9_2 = A0_2.btn_list
    L9_2 = L9_2[2]
    L10_2 = nil
    L11_2 = L3_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2
    L5_2 = A0_2._set_single_btn_navigation
    L7_2 = A0_2.btn_list
    L7_2 = L7_2[2]
    L8_2 = A0_2.btn_list
    L8_2 = L8_2[1]
    L9_2 = A0_2.btn_list
    L9_2 = L9_2[3]
    L10_2 = nil
    L11_2 = L3_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2
    L5_2 = A0_2._set_single_btn_navigation
    L7_2 = A0_2.btn_list
    L7_2 = L7_2[3]
    L8_2 = A0_2.btn_list
    L8_2 = L8_2[2]
    L9_2 = nil
    L10_2 = nil
    L11_2 = L3_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2
    L5_2 = A0_2._set_single_btn_navigation
    L7_2 = L3_2
    L8_2 = nil
    L9_2 = nil
    L10_2 = A0_2.btn_list
    L10_2 = L10_2[2]
    L11_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2
    L5_2 = A0_2._set_single_btn_navigation
    L7_2 = L4_2
    L8_2 = nil
    L9_2 = nil
    L10_2 = L3_2
    L11_2 = nil
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  elseif L1_2 == 6 then
    L3_2 = A0_2.btn_list
    L3_2 = L3_2[5]
    L4_2 = A0_2.btn_list
    L4_2 = L4_2[6]
    L6_2 = A0_2
    L5_2 = A0_2._set_single_btn_navigation
    L7_2 = A0_2.btn_list
    L7_2 = L7_2[1]
    L8_2 = nil
    L9_2 = A0_2.btn_list
    L9_2 = L9_2[2]
    L10_2 = nil
    L11_2 = L3_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2
    L5_2 = A0_2._set_single_btn_navigation
    L7_2 = A0_2.btn_list
    L7_2 = L7_2[2]
    L8_2 = A0_2.btn_list
    L8_2 = L8_2[1]
    L9_2 = A0_2.btn_list
    L9_2 = L9_2[3]
    L10_2 = nil
    L11_2 = L3_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2
    L5_2 = A0_2._set_single_btn_navigation
    L7_2 = A0_2.btn_list
    L7_2 = L7_2[3]
    L8_2 = A0_2.btn_list
    L8_2 = L8_2[2]
    L9_2 = nil
    L10_2 = nil
    L11_2 = L3_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2
    L5_2 = A0_2._set_single_btn_navigation
    L7_2 = A0_2.btn_list
    L7_2 = L7_2[4]
    L8_2 = nil
    L9_2 = L4_2
    L10_2 = L3_2
    L11_2 = nil
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2
    L5_2 = A0_2._set_single_btn_navigation
    L7_2 = L3_2
    L8_2 = nil
    L9_2 = nil
    L10_2 = A0_2.btn_list
    L10_2 = L10_2[2]
    L11_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2
    L5_2 = A0_2._set_single_btn_navigation
    L7_2 = L4_2
    L8_2 = A0_2.btn_list
    L8_2 = L8_2[4]
    L9_2 = nil
    L10_2 = L3_2
    L11_2 = nil
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
L0_1._setup_btn_list_navigation = L15_1
function L15_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  if A1_2 == nil then
    return
  end
  L6_2 = A1_2.navigation
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.Navigation
  L7_2 = L7_2.Mode
  L7_2 = L7_2.Explicit
  L6_2.mode = L7_2
  if A2_2 ~= nil then
    L7_2 = A2_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnUp = A2_2
  end
  if A3_2 ~= nil then
    L7_2 = A3_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnDown = A3_2
  end
  if A4_2 ~= nil then
    L7_2 = A4_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnLeft = A4_2
  end
  if A5_2 ~= nil then
    L7_2 = A5_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnRight = A5_2
  end
  A1_2.navigation = L6_2
end
L0_1._set_single_btn_navigation = L15_1
return L0_1
