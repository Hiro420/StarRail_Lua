local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.LightCone.LightConeReplaceRightPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeReplacePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeReplaceRightPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeReplacePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.InventoryModule
L3_1 = "UIText_TeamMemberOrderDialog_Title"
L4_1 = "UIText_TitleType_Slash"
L5_1 = 1
L6_1 = 102
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.LightConeReplacePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._avatar_data = nil
  A0_2._origin_equip_data = nil
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.InventoryTabExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L6_1
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
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._avatar_data = A2_2
  A0_2._origin_equip_data = A1_2
  L4_2 = A0_2
  L3_2 = A0_2.fetch_ui3d
  L5_2 = G
  L5_2 = L5_2.AvatarUI3DPage
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._ui3d = L3_2
  L3_2 = A0_2._ui3d
  if L3_2 ~= nil then
    L3_2 = A0_2._ui3d
    L3_2 = L3_2.lightcone_panel
    L4_2 = L3_2
    L3_2 = L3_2.hide_lightcone
    L3_2(L4_2)
  end
  A0_2._current_item = nil
  L3_2 = {}
  A0_2._item_table = L3_2
end
L0_1.init = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.button
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_item_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_list
  L1_2(L2_2)
end
L0_1.refresh_lightcone_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_pc_or_ps_or_mobile_gamepad_mode
  L3_2 = L3_2()
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_panel_pc
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_pc_or_ps_or_mobile_gamepad_mode
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_or_ps_or_mobile_gamepad_mode
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.order_panel_pc
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._current_sort_type
    L4_2 = A0_2._sort_types
    L5_2 = A0_2._sort_is_ascend
    L6_2 = A0_2._set_sort_type_text_id
    L7_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.order_panel_pc
    L2_2 = L1_2
    L1_2 = L1_2.setup_callback
    L3_2 = A0_2
    L4_2 = A0_2._on_btn_sort_order_click
    L5_2 = A0_2.on_refresh_sort_type
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.order_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_callback
    L3_2 = A0_2
    L4_2 = A0_2._on_btn_sort_order_click
    L5_2 = A0_2._on_btn_sort_type_click
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_equip
  L4_2 = A0_2._on_btn_equip_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_replace
  L4_2 = A0_2._on_btn_equip_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_dismount
  L4_2 = A0_2._on_btn_dismount_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_upgrade
  L4_2 = A0_2._on_btn_upgrade_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AvatarDressEquipmentFinish
  L4_2 = L0_1._OnDressEquipmentFinish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AvatarTakeOffEquipmentFinish
  L4_2 = L0_1._OnTakeOffEquipmentFinish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_item_list_panel
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_item_list_panel
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_1.SafeGetCmpt
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.SuperScrollView
  L4_2 = L4_2.LoopGridView
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2
  L5_2 = "ItemList/ScrollViewMask/ScrollView"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.scroll_item = L2_2
  L2_2 = L1_1.SafeFind
  L3_2 = L1_2
  L4_2 = "ItemListEmpty"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.node_empty = L2_2
  L2_2 = A0_2.scroll_item
  L3_2 = L2_2
  L2_2 = L2_2.SafeInitGridView
  L4_2 = 0
  L5_2 = A0_2._on_item_changed
  L6_2 = nil
  L7_2 = nil
  L8_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_sort_type
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_item_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_default_current_item
  L2_2(L3_2)
  L2_2 = A0_2.scroll_item
  L3_2 = L2_2
  L2_2 = L2_2.PlayFadeIn
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarBaseTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.AvatarBaseType
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_avatar_type_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L4_1
  L6_2 = G
  L6_2 = L6_2.TextmapStatic
  L6_2 = L6_2.GetText
  L7_2 = L2_2.BaseTypeText
  L6_2 = L6_2(L7_2)
  L7_2 = G
  L7_2 = L7_2.TextmapStatic
  L7_2 = L7_2.GetText
  L8_2 = A0_2._avatar_data
  L8_2 = L8_2.Row
  L8_2 = L8_2.AvatarName
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.AvatarBaseType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AvatarBaseTypeExcelTable
  L5_2 = L4_2.GetData
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.BaseTypeIconSmall
  L7_2 = A0_2
  L6_2 = A0_2.async_load_sprite_to
  L8_2 = A0_2._binder
  L8_2 = L8_2.img_avatar_type
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_right_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_operation_buttons
  L1_2(L2_2)
end
L0_1._refresh = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A1_2 then
    return
  end
  L2_2 = A0_2._ui3d
  if L2_2 ~= nil then
    L2_2 = A0_2._ui3d
    L2_2 = L2_2.lightcone_panel
    L3_2 = L2_2
    L2_2 = L2_2.hide_lightcone
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.refresh_lightcone_list
  L2_2(L3_2)
  L2_2 = A0_2.scroll_item
  L3_2 = L2_2
  L2_2 = L2_2.PlayFadeIn
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_right_panel
  L2_2(L3_2)
end
L0_1._on_view_active_change = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._item_table
  L3_2 = #L3_2
  L4_2 = A0_2._item_table
  L4_2 = #L4_2
  L5_2 = A0_2.scroll_item
  L5_2 = L5_2.ItemTotalCount
  L4_2 = L4_2 ~= L5_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._item_table
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2.node_empty
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2.node_empty
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.replace_right_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._origin_equip_data
  L4_2 = A0_2._current_item
  L5_2 = A0_2._avatar_data
  L5_2 = L5_2.ID
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._current_item
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_light_cone
    L4_2 = A0_2._current_item
    L4_2 = L4_2.EquipmentRow
    L4_2 = L4_2.ImagePath
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._refresh_right_panel = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_equip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_replace
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_dismount
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._origin_equip_data
  if L1_2 == nil then
    L1_2 = A0_2._current_item
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_equip
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = A0_2._origin_equip_data
    if L1_2 ~= nil then
      L1_2 = A0_2._current_item
      L2_2 = A0_2._origin_equip_data
      if L1_2 == L2_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.btn_dismount
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = true
        L1_2(L2_2, L3_2)
    end
    else
      L1_2 = A0_2._origin_equip_data
      if L1_2 ~= nil then
        L1_2 = A0_2._current_item
        if L1_2 ~= nil then
          L1_2 = A0_2._binder
          L1_2 = L1_2.btn_replace
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetActive
          L3_2 = true
          L1_2(L2_2, L3_2)
        end
      end
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_upgrade
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._current_item
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
end
L0_1._refresh_operation_buttons = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._item_table
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._sort_equips
  L2_2(L3_2)
end
L0_1._get_item_data = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._current_item
  if L1_2 == nil then
    L1_2 = A0_2._item_table
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = A0_2._item_table
      L1_2 = L1_2[1]
      A0_2._current_item = L1_2
    end
  end
end
L0_1._set_default_current_item = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.UserObjectData
  if L6_2 == nil then
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.InventoryItemIconPanel
    L10_2 = G
    L10_2 = L10_2.InventoryItemIconPanelBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L7_2
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2.transform
    L7_2(L8_2, L9_2)
    L5_2.UserObjectData = L6_2
  end
  L7_2 = A0_2._item_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L9_2 = L6_2
  L8_2 = L6_2.setup_view_by_item
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L9_2 = L6_2
  L8_2 = L6_2.set_selected
  L10_2 = A0_2._current_item
  L10_2 = L7_2 == L10_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._current_item
  if L7_2 == L8_2 then
    A0_2._cur_selected_panel = L6_2
  end
  L9_2 = L6_2
  L8_2 = L6_2.bind_click
  L10_2 = A0_2
  L11_2 = A0_2._on_item_click
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = L7_2.ItemMainType
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.ItemMainType
  L9_2 = L9_2.Equipment
  if L8_2 == L9_2 then
    L8_2 = A0_2._avatar_data
    L8_2 = L8_2.Row
    L8_2 = L8_2.AvatarBaseType
    L9_2 = L7_2.EquipmentRow
    L9_2 = L9_2.AvatarBaseType
    if L8_2 == L9_2 then
      L9_2 = L6_2
      L8_2 = L6_2.set_match_hint
      L10_2 = true
      L8_2(L9_2, L10_2)
    else
      L9_2 = L6_2
      L8_2 = L6_2.set_match_hint
      L10_2 = false
      L8_2(L9_2, L10_2)
    end
  end
  return L5_2
end
L0_1._on_item_changed = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._current_item = A1_2
  L3_2 = A0_2._cur_selected_panel
  if L3_2 ~= nil then
    L3_2 = A0_2._cur_selected_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_selected
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  A0_2._cur_selected_panel = A2_2
  L3_2 = A0_2._cur_selected_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_selected
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_right_panel
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_operation_buttons
  L3_2(L4_2)
end
L0_1._on_item_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.Row
  L1_2 = L1_2.AvatarBaseType
  L2_2 = A0_2._current_item
  L2_2 = L2_2.EquipmentRow
  L2_2 = L2_2.AvatarBaseType
  if L1_2 ~= L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ConfirmDialogUtil
    L1_2 = L1_2.ShowConfirmDialog
    function L2_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._check_is_equiped
        L1_3(L2_3)
      end
    end
    L1_2 = L1_2(L2_2)
    L2_2 = DialogBtnMode
    L2_2 = L2_2.eOkCancel
    L1_2.Mode = L2_2
    L3_2 = L1_2
    L2_2 = L1_2.GetComponentContent
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Equipment_Path_Unmatch_Desc"
    L2_2(L3_2, L4_2)
    return
  else
    L2_2 = A0_2
    L1_2 = A0_2._check_is_equiped
    L1_2(L2_2)
  end
end
L0_1._on_btn_equip_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._current_item
  L1_2 = L1_2.BelongAvatarID
  if L1_2 ~= 0 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.AvatarExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._current_item
    L2_2 = L2_2.BelongAvatarID
    L1_2 = L1_2(L2_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ConfirmDialogUtil
    L2_2 = L2_2.ShowConfirmDialog
    function L3_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._set_equipment
        L1_3(L2_3)
      end
    end
    L2_2 = L2_2(L3_2)
    L3_2 = DialogBtnMode
    L3_2 = L3_2.eOkCancel
    L2_2.Mode = L3_2
    L4_2 = L2_2
    L3_2 = L2_2.GetComponentContent
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_WarningDialog_EquipmentReplace"
    L6_2 = G
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = L1_2.AvatarName
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
    return
  else
    L2_2 = A0_2
    L1_2 = A0_2._set_equipment
    L1_2(L2_2)
  end
end
L0_1._check_is_equiped = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.BOEDJGHMNEO
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.ID
  L4_2 = A0_2._current_item
  L4_2 = L4_2.UID
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "hekun Debug: SendDressAvatarCsReq, show block time : "
  L3_2 = L5_1
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end
L0_1._set_equipment = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "hekun Debug: _on_btn_upgrade_click, show block time : "
  L3_2 = L5_1
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.LightCone.LightConeDetailPage"
  L3_2 = A0_2._current_item
  L4_2 = 2
  L5_2 = A0_2
  L6_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.set_exit_callback
  L4_2 = A0_2._on_detail_page_exit
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_btn_upgrade_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.refresh_lightcone_list
    L1_2(L2_2)
  end
end
L0_1._on_detail_page_exit = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.HKLFGGACAFG
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "hekun Debug: SendTakeOffEquipmentCsReq, show block time : "
  L3_2 = L5_1
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end
L0_1._on_btn_dismount_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "hekun Debug: _OnDressEquipmentFinish, show block time : "
  L3_2 = L5_1
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._OnDressEquipmentFinish = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "hekun Debug: _OnTakeOffEquipmentFinish, show block time : "
  L3_2 = L5_1
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._OnTakeOffEquipmentFinish = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Inventory.InventorySortDialog"
  L3_2 = A0_2._current_sort_type
  L4_2 = A0_2._sort_types
  L5_2 = A0_2
  L6_2 = A0_2.on_refresh_sort_type
  L7_2 = L3_1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_btn_sort_type_click = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._sort_is_ascend = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_sort_type
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._sort_equips
  L2_2(L3_2)
  L2_2 = A0_2.scroll_item
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemByRowColumn
  L4_2 = 0
  L5_2 = 0
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_btn_sort_order_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.InventoryModule
  L1_2 = L1_2.GetSortTypeName
  L2_2 = A0_2._current_sort_type
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.order_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L5_2 = A0_2._sort_is_ascend
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._refresh_sort_type = L7_1
function L7_1(A0_2, A1_2)
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
  L2_2 = A0_2.scroll_item
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemByRowColumn
  L4_2 = 0
  L5_2 = 0
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.on_refresh_sort_type = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._item_table
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = A0_2._avatar_data
    L2_3 = L2_3.EquipmentUID
    L3_3 = A0_3.UID
    if L2_3 == L3_3 then
      L2_3 = true
      return L2_3
    else
      L2_3 = A0_2._avatar_data
      L2_3 = L2_3.EquipmentUID
      L3_3 = A1_3.UID
      if L2_3 == L3_3 then
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
    L7_3 = A0_2._avatar_data
    L7_3 = L7_3.Row
    L7_3 = L7_3.AvatarBaseType
    return L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._sort_equips = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InventoryModule
  L2_2 = L2_2.GetSortTypeName
  L3_2 = A1_2
  return L2_2(L3_2)
end
L0_1._set_sort_type_text_id = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  A0_2._avatar_data = nil
  A0_2._origin_equip_data = nil
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeGrid
  L2_2 = A0_2.scroll_item
  L1_2(L2_2)
end
L0_1._on_dispose = L7_1
return L0_1
