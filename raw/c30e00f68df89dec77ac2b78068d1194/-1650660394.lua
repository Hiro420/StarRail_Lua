local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Common.ItemDetailDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ItemDetailPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemDetailDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MuseumModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.AlleyModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ItemDetailDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  A0_2._init_data = A1_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_item_tips_panel
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_item_tips_panel
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ItemDetailPanel
  L5_2 = G
  L5_2 = L5_2.ItemDetailPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._item_tips_panel = L2_2
  L2_2 = A0_2._item_tips_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  A0_2._is_setup_by_config_ID = false
  L2_2 = {}
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L2_2[1] = L3_2
  A0_2.listen_zooms = L2_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._init_data
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_view
  L3_2 = A0_2._init_data
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._item_tips_panel
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._item_tips_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_navigation_target
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._reset_scroll_bottom_pos
  L1_2(L2_2)
end
L0_1._on_got_focus = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._item_tips_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_navigation_target
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2._item_tips_panel
      L3_2 = L2_2
      L2_2 = L2_2.reset_scroll_bottom_pos
      L2_2(L3_2)
    end
  end
end
L0_1._reset_scroll_bottom_pos = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset_scroll_bottom_pos
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_gamepad_hint
  L1_2(L2_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = A0_2._binder
  if L2_2 ~= nil then
    L2_2 = A0_2._item_tips_panel
    if L2_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2._item_tips_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_scroll_rect
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = "ActionGroup_Scroll"
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._item_tips_panel
  L3_2 = L2_2
  L2_2 = L2_2.has_drop_hint
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = "Menu_Confirm"
    L2_2(L3_2, L4_2)
  end
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = "ActionGroup_Return"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = L1_2
  L5_2 = A0_2._item_tips_panel
  L6_2 = L5_2
  L5_2 = L5_2.get_scroll_rect
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_gamepad_hint = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._is_setup_by_config_ID = true
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.InventoryModule
  L4_2 = L3_2
  L3_2 = L3_2.GetItemCountAfterDeleteByConfigID
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L1_1.MuseumCurrencyConfigID
  if A1_2 == L4_2 then
    L4_2 = L1_1.MuseumData
    L3_2 = L4_2.CurFunds
  end
  L4_2 = L2_1.AlleyCurrencyConfigID
  if A1_2 == L4_2 then
    L3_2 = L2_1.Funds
  end
  A0_2.item_data = nil
  L4_2 = L2_2.ItemMainType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ItemMainType
  L5_2 = L5_2.Equipment
  if L4_2 == L5_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ItemFactory
    L4_2 = L4_2.CreateEquipmentItemData
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    A0_2.item_data = L4_2
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ItemFactory
    L4_2 = L4_2.CreateItemData
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    A0_2.item_data = L4_2
    if nil ~= L3_2 then
      L4_2 = A0_2.item_data
      L4_2.Count = L3_2
    end
  end
  L4_2 = A0_2._item_tips_panel
  L5_2 = L4_2
  L4_2 = L4_2.hide_lock
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._item_tips_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A0_2.item_data
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._item_tips_panel
  L5_2 = L4_2
  L4_2 = L4_2.reset_scroll_pos
  L4_2(L5_2)
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.invoke_next_frame_callback
  L5_2 = A0_2._init_ui_navigation
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._is_setup_by_config_ID = false
  A0_2.item_data = A1_2
  L3_2 = A0_2._item_tips_panel
  L4_2 = L3_2
  L3_2 = L3_2.hide_lock
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._item_tips_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2.item_data
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._item_tips_panel
  L4_2 = L3_2
  L3_2 = L3_2.reset_scroll_pos
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_next_frame_callback
  L4_2 = A0_2._init_ui_navigation
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_view_by_item = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._item_tips_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_detail_btn_interactable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_detail_btn_interactable = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._item_tips_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_desc_text_params
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_desc_text_params = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if not A1_2 then
    return
  end
  L2_2 = A0_2.item_data
  L2_2 = L2_2.ConfigID
  if L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.InventoryModule
    L4_2 = L3_2
    L3_2 = L3_2.GetItemCountByConfigID
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2.item_data
    L4_2.Count = L3_2
  end
  L3_2 = A0_2._item_tips_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2.item_data
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._item_tips_panel
  L4_2 = L3_2
  L3_2 = L3_2.reset_scroll_pos
  L3_2(L4_2)
end
L0_1._on_view_active_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._item_tips_panel
  L2_2 = L1_2
  L1_2 = L1_2.hide_num
  L1_2(L2_2)
end
L0_1.hide_num = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._item_tips_panel
  L4_2 = L3_2
  L3_2 = L3_2.register_drop_hint_go_to_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.register_drop_hint_go_to_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._exit = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L3_1
return L0_1
