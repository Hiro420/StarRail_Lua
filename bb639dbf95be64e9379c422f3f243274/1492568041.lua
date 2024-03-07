local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooMutateEventDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooMutateEventDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SpaceZooModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.InventoryModule
L3_1 = 1
L4_1 = "9603"
L5_1 = "9625"
L6_1 = 1
L7_1 = "SpceZooSpecialEventPage_FadeIn"
L8_1 = "SpceZooSpecialEventPage_FadeIn_Rare"
L9_1 = "UIText_ActivitySpaceZoo_SpecialEventNormal"
L10_1 = "UIText_ActivitySpaceZoo_SpecialEventSpecial"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SpaceZooMutateEventDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_resp_esc = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = A0_2._material_list
  L1_2.items = L2_2
  L2_2 = A0_2._select_index
  if L2_2 == nil then
    L2_2 = 1
    if L2_2 then
      goto lbl_15
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_material_index
  L4_2 = A0_2._material_list
  L5_2 = A0_2._select_index
  L4_2 = L4_2[L5_2]
  L2_2 = L2_2(L3_2, L4_2)
  ::lbl_15::
  L1_2.init_index = L2_2
  L2_2 = G
  L2_2 = L2_2.InventoryUtils
  L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1._on_left_stick_button_click = L11_1
function L11_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.material_list
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L11_1
function L11_1(A0_2, A1_2)
  local L2_2
  A0_2._cat_data = A1_2
  L2_2 = L1_1.SpaceZooData
  A0_2._space_zoo_data = L2_2
end
L0_1.init = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SpaceZooMutateFinish
  L4_2 = A0_2._on_mutate_finish
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_btn_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  A0_2._btn_list = L1_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.material_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.material_list
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.set_click_callback
    L8_2 = A0_2._on_material_click
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._btn_list
    L9_2 = L5_2
    L8_2 = L5_2.get_root_btn
    L8_2, L9_2 = L8_2(L9_2)
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._on_load = L11_1
function L11_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_materials
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_unlock_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_collect_cat_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_special_mutate
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._play_fade_in
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_customized_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._notify_task_unlock
  L1_2(L2_2)
end
L0_1._setup_view = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TutorialTaskUnlock
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cat_data
  L1_2 = L1_2.HaveSpecialMutateEvent
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.TutorialTaskUnlock
    L3_2 = L5_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._notify_task_unlock = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_materials
  L1_2(L2_2)
end
L0_1._on_return_to_top = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cat_data
  L1_2 = L1_2.HaveSpecialMutateEvent
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L10_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_root
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L8_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L9_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_root
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L7_1
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L6_1
  L4_2 = L6_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._play_fade_in = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cat_data
  L1_2 = L1_2.HaveSpecialMutateEvent
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_special_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_normal_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_material_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._material_list
  L4_2 = #L4_2
  L4_2 = 1 < L4_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_special_mutate = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._cat_data
  L2_2 = L2_2.MutateItems
  L1_2 = L1_2(L2_2)
  A0_2._material_list = L1_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._material_list
  L3_2 = L0_1._sort_material
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.material_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.material_list
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = A0_2._material_list
    L8_2 = L8_2[L4_2]
    L9_2 = A0_2._cat_data
    L10_2 = L4_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
L0_1._setup_materials = L11_1
function L11_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2 < A1_2
  return L2_2
end
L0_1._sort_material = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._select_index
  if L2_2 == A1_2 then
    return
  end
  A0_2._select_index = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.material_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.material_list
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.set_select
    L9_2 = L5_2 == A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._on_material_click = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = false
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.material_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.material_list
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.is_show_unlock_tip
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L1_2 = true
      break
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_unlock_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_unlock_hint = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.IsSpecialEventUnlock
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_contain_collect_cat_material
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_14
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.collection_cat_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_14::
  L1_2 = A0_2._binder
  L1_2 = L1_2.collection_cat_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.collection_cat_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1._setup_collect_cat_panel = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._space_zoo_data
  L2_2 = L1_2
  L1_2 = L1_2.GetSpecialEventData
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.SpaceZooCollectCat
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = 1
  L3_2 = A0_2._material_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._material_list
    L6_2 = L6_2[L5_2]
    L7_2 = L1_2.SpecialCatRow
    L7_2 = L7_2.SpecialItem
    if L7_2 == L6_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_contain_collect_cat_material = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.LPPKKBHBJFN
  L3_2 = A0_2._cat_data
  L3_2 = L3_2.UniqueID
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_cancel = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._select_index
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._material_list
  L2_2 = A0_2._select_index
  L1_2 = L1_2[L2_2]
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == 0 then
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_async_show
    L4_2 = "Ui.SpaceZoo.SpaceZooMaterialExchangeDialog"
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_NetworkManager
  L4_2 = L3_2
  L3_2 = L3_2.LPPKKBHBJFN
  L5_2 = A0_2._cat_data
  L5_2 = L5_2.UniqueID
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_btn_confirm = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = A0_2._material_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._material_list
    L6_2 = L6_2[L5_2]
    if A1_2 == L6_2 then
      return L5_2
    end
  end
  L2_2 = L3_1
  return L2_2
end
L0_1._get_material_index = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_mutate_finish = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._btn_list
  L1_2 = L1_2[1]
  L1_2 = L1_2.navigation
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.Navigation
  L2_2 = L2_2.Mode
  L2_2 = L2_2.Explicit
  L1_2.mode = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_btn
  L4_2 = 4
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.selectOnUp = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_btn
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.selectOnRight = L2_2
  L2_2 = A0_2._btn_list
  L2_2 = L2_2[1]
  L2_2.navigation = L1_2
  L2_2 = A0_2._material_list
  L2_2 = #L2_2
  if L2_2 < 2 then
    return
  end
  L2_2 = A0_2._btn_list
  L2_2 = L2_2[2]
  L1_2 = L2_2.navigation
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.Navigation
  L2_2 = L2_2.Mode
  L2_2 = L2_2.Explicit
  L1_2.mode = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_btn
  L4_2 = 3
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.selectOnUp = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_btn
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.selectOnLeft = L2_2
  L2_2 = A0_2._btn_list
  L2_2 = L2_2[2]
  L2_2.navigation = L1_2
  L2_2 = A0_2._material_list
  L2_2 = #L2_2
  if L2_2 < 3 then
    return
  end
  L2_2 = A0_2._btn_list
  L2_2 = L2_2[3]
  L1_2 = L2_2.navigation
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.Navigation
  L2_2 = L2_2.Mode
  L2_2 = L2_2.Explicit
  L1_2.mode = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_btn
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.selectOnDown = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_btn
  L4_2 = 4
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._get_btn
    L4_2 = 1
    L2_2 = L2_2(L3_2, L4_2)
  end
  L1_2.selectOnLeft = L2_2
  L2_2 = A0_2._btn_list
  L2_2 = L2_2[3]
  L2_2.navigation = L1_2
  L2_2 = A0_2._material_list
  L2_2 = #L2_2
  if L2_2 < 4 then
    return
  end
  L2_2 = A0_2._btn_list
  L2_2 = L2_2[4]
  L1_2 = L2_2.navigation
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.Navigation
  L2_2 = L2_2.Mode
  L2_2 = L2_2.Explicit
  L1_2.mode = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_btn
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.selectOnDown = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_btn
  L4_2 = 3
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.selectOnRight = L2_2
  L2_2 = A0_2._btn_list
  L2_2 = L2_2[4]
  L2_2.navigation = L1_2
end
L0_1._setup_customized_navigation = L11_1
function L11_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._material_list
  L2_2 = #L2_2
  if A1_2 > L2_2 then
    return
  end
  L2_2 = A0_2._btn_list
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1._get_btn = L11_1
return L0_1
