local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeTargetItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeTargetItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ItemIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeSliderPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeSliderPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeRelicSynthesisPanel"
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
L2_1 = L2_1.FeatureSwitchModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.ComposeItemFailedType
L4_1 = 2
L5_1 = 236
L6_1 = {}
L6_1.Enable = "#FFFFFFFF"
L6_1.Disable = "#EB4141FF"
L7_1 = "SynthesisItemMaterial0_Produce"
L8_1 = "SynthesisItemMaterial0_Unlock"
function L9_1(A0_2)
  local L1_2
  L1_2 = A0_2._btn_list
  L1_2 = L1_2[1]
  if L1_2 ~= nil then
    L1_2 = A0_2._btn_list
    L1_2 = L1_2[1]
    L1_2 = L1_2.Button
    L1_2 = L1_2.gameObject
    return L1_2
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_ctrl_btn_black_crystal
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_keymap_btn_black_crystal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._slider_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_in_control_button_enable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_ctrl_btn_compose
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_keymap_btn_compose
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_in_control_button_enable = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._materials
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = A0_2._materials
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.ItemID
    L6_2(L7_2, L8_2)
  end
  return L1_2
end
L0_1.get_material_id_list = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_compose
  L4_2 = A0_2._on_btn_compose
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_black_crystal
  L4_2 = A0_2._on_btn_black_crystal
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_change_main_affix
  L4_2 = A0_2._on_btn_change_main_affix
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_material_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_scroll_view_material_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ItemComposeTargetItemPanel
  L4_2 = G
  L4_2 = L4_2.ItemComposeTargetItemPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._compose_icon_panel = L1_2
  L1_2 = A0_2._compose_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_target_item_panel
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
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.InventoryModule
  L1_2 = L1_2.GetItemRow
  L2_2 = L4_1
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_compose_cost_icon
  L5_2 = L1_2.ItemIconPath
  L2_2(L3_2, L4_2, L5_2)
  A0_2._black_crystal_mode = false
  A0_2._target_main_affix_id = 0
  A0_2._relic_count_in_bag = 0
end
L0_1._on_load = L9_1
function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._relic_config = A1_2
  A0_2._relic_box_data = A2_2
  if A3_2 ~= false then
    L5_2 = A0_2
    L4_2 = A0_2._is_black_crystal_enough
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_11
    end
  end
  A0_2._black_crystal_mode = false
  A0_2._target_main_affix_id = 0
  ::lbl_11::
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetUniqueItemsCountByMainType
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.ItemMainType
  L6_2 = L6_2.Relic
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._relic_count_in_bag = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh_panel
  L4_2(L5_2)
end
L0_1.setup_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  A0_2._btn_list = L1_2
  A0_2._compose_num = 1
  L2_2 = A0_2
  L1_2 = A0_2._setup_relic_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_materials
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._calc_can_compose
  L1_2 = L1_2(L2_2)
  A0_2._is_can_compose = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_target_compose_item_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_black_crystal_mode
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_target_main_attrix_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_max_count
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_num
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_disable_panel
  L1_2(L2_2)
end
L0_1._refresh_panel = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._relic_config
  L2_2 = L2_2.ID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_relic_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.ItemName
  L2_2(L3_2, L4_2)
end
L0_1._setup_relic_info = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._relic_box_data
  L2_2 = L2_2.ItemsConfig
  L1_2 = L1_2(L2_2)
  A0_2._materials = L1_2
  L1_2 = {}
  A0_2._special_compose_items = L1_2
  L1_2 = A0_2._black_crystal_mode
  if L1_2 == true then
    L1_2 = {}
    L2_2 = L5_1
    L1_2.ItemID = L2_2
    L1_2.ItemNum = 1
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._materials
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = {}
    L3_2 = L5_1
    L2_2.id = L3_2
    L2_2.count = 1
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._special_compose_items
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._get_materials = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._compose_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view_by_id
  L3_2 = A0_2._relic_config
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._compose_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_rarity
  L3_2 = A0_2._relic_config
  L3_2 = L3_2.Rarity
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = {}
  L1_2.Index = 0
  L2_2 = A0_2._compose_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_btn_root
  L2_2 = L2_2(L3_2)
  L1_2.Button = L2_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._btn_list
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_target_compose_item_panel = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._black_crystal_mode
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_main_affix_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._black_crystal_mode
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_black_crystal_btn_txt
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_black_crystal_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._black_crystal_mode
  L1_2(L2_2, L3_2)
end
L0_1._setup_black_crystal_mode = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = nil
  L2_2 = A0_2._black_crystal_mode
  if L2_2 == true then
    L1_2 = "UIText_ItemCompose_RelicCompose_Type_1"
  else
    L1_2 = "UIText_ItemCompose_RelicCompose_Type_2"
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_btn_compose_style
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_black_crystal_btn_txt = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._black_crystal_mode
  if L1_2 == false then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RelicMainAffixConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._relic_config
  L2_2 = L2_2.MainAffixGroup
  L3_2 = A0_2._target_main_affix_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarPropertyExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.Property
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_main_affix_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.PropertyNameRelic
  L3_2(L4_2, L5_2)
end
L0_1._setup_target_main_attrix_info = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_material_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._materials
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_material_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_material_list = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_compose_and_slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_can_compose
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_disable_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_can_compose
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_can_compose
  if not L1_2 then
    L1_2 = A0_2._relic_box_data
    L2_2 = L1_2
    L1_2 = L1_2.CanCompose
    L1_2 = L1_2(L2_2)
    L2_2 = L3_1.LockedByLevel
    if L1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_disable_panel
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_ItemCompose_Tips_02"
      L2_2(L3_2, L4_2)
    else
      L2_2 = L3_1.InsufficientRemainComposeNum
      if L1_2 == L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.txt_disable_panel
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = "UIText_ItemCompose_Tips_05"
        L2_2(L3_2, L4_2)
      else
        L2_2 = L3_1.NeedResource
        if L1_2 == L2_2 then
          L2_2 = A0_2._binder
          L2_2 = L2_2.txt_disable_panel
          L3_2 = L2_2
          L2_2 = L2_2.SafeSetTextID
          L4_2 = "UIText_ItemCompose_Tips_05"
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
end
L0_1._setup_disable_panel = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._relic_box_data
  L2_2 = L1_2
  L1_2 = L1_2.GetMaxComposeCount
  L1_2 = L1_2(L2_2)
  A0_2._max_compose_count = L1_2
  L1_2 = A0_2._slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_max_value
  L3_2 = A0_2._max_compose_count
  L1_2(L2_2, L3_2)
end
L0_1._refresh_max_count = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = true
  L2_2 = A0_2._black_crystal_mode
  if L2_2 == true then
    L3_2 = A0_2
    L2_2 = A0_2._is_black_crystal_enough
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  L2_2 = A0_2._relic_box_data
  L3_2 = L2_2
  L2_2 = L2_2.CanCompose
  L2_2 = L2_2(L3_2)
  L2_2 = #L2_2
  L2_2 = L2_2 <= 1 and L2_2
  return L2_2
end
L0_1._calc_can_compose = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._compose_num = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_num
  L2_2(L3_2)
end
L0_1._on_slider_panel_value_changed = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_value
  L3_2 = A0_2._compose_num
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_material_list
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
  L1_2 = A0_2._setup_btn_list_navigation_static
  L1_2(L2_2)
end
L0_1._refresh_num = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetItemCountByConfigID
  L3_2 = A0_2._relic_config
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._is_can_compose
  L3_2 = A0_2._compose_icon_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_count
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_own_count
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L0_1._refresh_target_compose_item_num = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._relic_box_data
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_compose_cost
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._relic_box_data
  L3_2 = L3_2.CoinCost
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_compose_cost_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._relic_box_data
  L3_2 = L3_2.CoinCost
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._relic_box_data
  L1_2 = L1_2.CoinCost
  if L1_2 == 0 then
    return
  end
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
  L2_2 = L2_2.txt_compose_cost
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_money_num = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._required_money
  L2_2 = A0_2._contained_money
  L1_2 = L1_2 <= L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_compose
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_btn_composable = L9_1
function L9_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.ItemIconPanel
    L8_2 = G
    L8_2 = L8_2.ItemIconPanelBinder
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
  L7_2 = A0_2._materials
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.ItemID
  L5_2(L6_2, L7_2)
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.GetItemCountByConfigID
  L7_2 = A0_2._materials
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.ItemID
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2
  L9_2 = A0_2._materials
  L10_2 = A2_2 + 1
  L9_2 = L9_2[L10_2]
  L9_2 = L9_2.ItemNum
  L10_2 = A0_2._compose_num
  L9_2 = L9_2 * L10_2
  L10_2 = true
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = false
  L7_2 = 1
  L8_2 = A0_2._btn_list
  L8_2 = #L8_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = A0_2._btn_list
    L11_2 = L11_2[L10_2]
    L11_2 = L11_2.Index
    L12_2 = A0_2._materials
    L13_2 = A2_2 + 1
    L12_2 = L12_2[L13_2]
    L12_2 = L12_2.ItemID
    if L11_2 == L12_2 then
      L6_2 = true
      break
    end
  end
  if L6_2 == false then
    L7_2 = {}
    L8_2 = A0_2._materials
    L9_2 = A2_2 + 1
    L8_2 = L8_2[L9_2]
    L8_2 = L8_2.ItemID
    L7_2.Index = L8_2
    L8_2 = L4_2._binder
    L8_2 = L8_2.button
    L7_2.Button = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._btn_list
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.LayoutRebuilder
  L7_2 = L7_2.ForceRebuildLayoutImmediate
  L8_2 = L4_2._binder
  L8_2 = L8_2.root
  L7_2(L8_2)
  return L3_2
end
L0_1._on_scroll_view_material_change = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._compose_num
  if not (L1_2 < 0) then
    L1_2 = A0_2._relic_box_data
    if L1_2 ~= nil then
      L1_2 = A0_2._relic_config
      if L1_2 ~= nil then
        goto lbl_11
      end
    end
  end
  do return end
  ::lbl_11::
  L2_2 = A0_2
  L1_2 = A0_2._is_feature_partial_closed
  L3_2 = CS
  L3_2 = L3_2.KJMOMPDBPKH
  L3_2 = L3_2.MGCLMKPFKAM
  L4_2 = A0_2._relic_config
  L4_2 = L4_2.ID
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_feature_partial_closed
  L3_2 = CS
  L3_2 = L3_2.KJMOMPDBPKH
  L3_2 = L3_2.MGCLMKPFKAM
  L4_2 = A0_2._relic_box_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.ItemID
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    return
  end
  L1_2 = 0
  L2_2 = A0_2._relic_box_data
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
    L8_2 = A0_2._relic_box_data
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
  L2_2 = A0_2
  L1_2 = A0_2._check_over_limit
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.TextmapStatic
    L1_2 = L1_2.GetText
    L2_2 = "RetCodeError_1312"
    L3_2 = G
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = "UIText_AvatarRelic_LabelName"
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageString
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.ItemCompose.ItemComposeConfirmDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_compose
  L4_2 = A0_2._relic_box_data
  L5_2 = A0_2._compose_num
  L6_2 = A0_2._special_compose_items
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_target_relic_info
  L4_2 = A0_2._relic_config
  L5_2 = A0_2._compose_num
  L6_2 = A0_2._target_main_affix_id
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_btn_compose = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L2_1
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
L0_1._is_feature_partial_closed = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._black_crystal_mode
  if L1_2 == false then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicSynthesis.ItemComposeRelicSynthesisSelectMainAffixDialog"
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.register_close_callback
    L4_2 = A0_2._on_main_affix_selected
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = L1_2
    L2_2 = L1_2.setup_view
    L4_2 = A0_2._relic_config
    L5_2 = 0
    L6_2 = A0_2._relic_box_data
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    A0_2._black_crystal_mode = false
    A0_2._target_main_affix_id = 0
    L2_2 = A0_2
    L1_2 = A0_2._refresh_panel
    L1_2(L2_2)
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
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._on_btn_black_crystal = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._target_main_affix_id = A1_2
  L2_2 = A0_2._target_main_affix_id
  L2_2 = L2_2 ~= 0
  A0_2._black_crystal_mode = L2_2
  L2_2 = A0_2._black_crystal_mode
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_panel
    L2_2(L3_2)
  end
end
L0_1._on_main_affix_selected = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._black_crystal_mode
  if L1_2 == false then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicSynthesis.ItemComposeRelicSynthesisSelectMainAffixDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.register_close_callback
  L4_2 = A0_2._on_main_affix_selected
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2._relic_config
  L5_2 = A0_2._target_main_affix_id
  L6_2 = A0_2._relic_box_data
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_btn_change_main_affix = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetItemCountByConfigID
  L3_2 = L5_1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = 1 <= L1_2
  return L2_2
end
L0_1._is_black_crystal_enough = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._relic_count_in_bag
  L2_2 = A0_2._compose_num
  L1_2 = L1_2 + L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InventoryModule
  L2_2 = L2_2.GetRelicItemsMaxNum
  L2_2 = L2_2()
  L1_2 = L1_2 > L2_2
  return L1_2
end
L0_1._check_over_limit = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._compose_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_anim_length
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.get_anim_length = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._compose_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.play_anim
  L3_2 = L7_1
  L1_2(L2_2, L3_2)
end
L0_1.set_anim_in_producing = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._compose_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.interrupt_anim
  L3_2 = L7_1
  L1_2(L2_2, L3_2)
end
L0_1.interrupt_producing_anim = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._compose_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.play_anim
  L3_2 = L8_1
  L1_2(L2_2, L3_2)
end
L0_1.set_anim_in_unlocking = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._compose_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_canvas_group_lock_alpha
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
L0_1.set_unlocking_anim_in_begin = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._btn_list
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._btn_list
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.Button
    L6_2 = L6_2.navigation
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.UI
    L7_2 = L7_2.Navigation
    L7_2 = L7_2.Mode
    L7_2 = L7_2.Explicit
    L6_2.mode = L7_2
  end
  if L1_2 <= 1 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._set_single_btn_navigation
  L4_2 = A0_2._btn_list
  L4_2 = L4_2[1]
  L5_2 = nil
  L6_2 = nil
  L7_2 = nil
  L8_2 = A0_2._btn_list
  L8_2 = L8_2[2]
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = 2
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._set_single_btn_navigation
    L8_2 = A0_2._btn_list
    L8_2 = L8_2[L5_2]
    L9_2 = nil
    L10_2 = nil
    L11_2 = A0_2._btn_list
    L12_2 = L5_2 - 1
    L11_2 = L11_2[L12_2]
    L12_2 = A0_2._btn_list
    L13_2 = L5_2 + 1
    L12_2 = L12_2[L13_2]
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end
L0_1._setup_btn_list_navigation_static = L9_1
function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  L6_2 = A1_2.Button
  L6_2 = L6_2.navigation
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.Navigation
  L7_2 = L7_2.Mode
  L7_2 = L7_2.Explicit
  L6_2.mode = L7_2
  if A2_2 ~= nil then
    L7_2 = A2_2.Button
    L7_2 = L7_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L8_2 = A2_2.Button
    L6_2.selectOnUp = L8_2
  end
  if A3_2 ~= nil then
    L7_2 = A3_2.Button
    L7_2 = L7_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L8_2 = A3_2.Button
    L6_2.selectOnDown = L8_2
  end
  if A4_2 ~= nil then
    L7_2 = A4_2.Button
    L7_2 = L7_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L8_2 = A4_2.Button
    L6_2.selectOnLeft = L8_2
  end
  if A5_2 ~= nil then
    L7_2 = A5_2.Button
    L7_2 = L7_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L8_2 = A5_2.Button
    L6_2.selectOnRight = L8_2
  end
  L7_2 = A1_2.Button
  L7_2.navigation = L6_2
end
L0_1._set_single_btn_navigation = L9_1
return L0_1
