local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooCatteryPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooCatteryPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SpaceZooModule
L2_1 = "UIText_ActivitySpaceZoo_SettingPage_FullToast"
L3_1 = "UIText_ActivitySpaceZoo_CannotSet"
L4_1 = 0
L5_1 = 3
L6_1 = 9602
L7_1 = 1
L8_1 = 31
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SpaceZooCatteryPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
end
L0_1.ctor = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._index = A1_2
  L2_2 = L1_1.SpaceZooData
  A0_2._space_zoo_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._init_cattery_cats
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_select_cats
  L2_2(L3_2)
end
L0_1.init = L9_1
function L9_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SpaceZooCatteryChange
  L4_2 = A0_2._on_cattery_change
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rule
  L4_2 = A0_2._on_btn_rule
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_panel_select_callback
  L3_2 = A0_2._on_item_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_panel_select_checker
  L3_2 = A0_2._is_cat_select
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_cat_filter
  L3_2 = A0_2._is_cat_show
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_disable_cat_checker
  L3_2 = A0_2._is_cat_disable
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_select_cats
  L3_2 = A0_2._selected_cat
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = L8_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L7_1
  L4_2 = L7_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SpaceZooNewCats
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
end
L0_1._on_dispose = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._selected_cat = L1_2
  L1_2 = A0_2._index
  L1_2 = L1_2 - 1
  L2_2 = L5_1
  L1_2 = L1_2 * L2_2
  L2_2 = A0_2._index
  L3_2 = L5_1
  L2_2 = L2_2 * L3_2
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._space_zoo_data
    L5_2 = L5_2.Cattery
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.Prefs
      L6_2 = L6_2.User
      L6_2 = L6_2.SpaceZooNewCats
      L7_2 = L6_2
      L6_2 = L6_2.Remove
      L8_2 = L5_2.UniqueID
      L6_2(L7_2, L8_2)
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._selected_cat
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._init_select_cats = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._cattery_cats = L1_2
  L1_2 = A0_2._index
  L1_2 = L1_2 - 1
  L2_2 = L5_1
  L1_2 = L1_2 * L2_2
  L2_2 = A0_2._index
  L3_2 = L5_1
  L2_2 = L2_2 * L3_2
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._space_zoo_data
    L5_2 = L5_2.Cattery
    L5_2 = L5_2[L4_2]
    if not L5_2 then
      L5_2 = L4_1
    end
    L6_2 = L4_1
    if L5_2 ~= L6_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.Prefs
      L6_2 = L6_2.User
      L6_2 = L6_2.SpaceZooNewCats
      L7_2 = L6_2
      L6_2 = L6_2.Remove
      L8_2 = L5_2.UniqueID
      L6_2(L7_2, L8_2)
    end
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._cattery_cats
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._init_cattery_cats = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._init_cattery_cats
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_select_cats
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_select_cats
  L3_2 = A0_2._selected_cat
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._refresh = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_confirm = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Tutorial.GuideDetailDialog"
  L3_2 = L6_1
  L4_2 = nil
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_rule = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.SpaceZooNewCats
  L3_2 = L2_2
  L2_2 = L2_2.Remove
  L4_2 = A1_2.UniqueID
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_cat_disable
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._is_cat_select
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_unselect_cat
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_select_cat
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_item_click = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = pairs
  L3_2 = A0_2._cattery_cats
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L4_1
    if L6_2 == L7_2 then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.GlobalVars
      L7_2 = L7_2.s_NetworkManager
      L8_2 = L7_2
      L7_2 = L7_2.LFJPPNEDPPD
      L10_2 = A0_2
      L9_2 = A0_2._get_cattery_id
      L11_2 = L5_2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = A1_2.UniqueID
      L11_2 = 1
      L7_2(L8_2, L9_2, L10_2, L11_2)
      return
    end
  end
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPileToastMessageTextID
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
end
L0_1._try_select_cat = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = pairs
  L3_2 = A0_2._cattery_cats
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == A1_2 then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.GlobalVars
      L7_2 = L7_2.s_NetworkManager
      L8_2 = L7_2
      L7_2 = L7_2.LFJPPNEDPPD
      L10_2 = A0_2
      L9_2 = A0_2._get_cattery_id
      L11_2 = L5_2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = A1_2.UniqueID
      L11_2 = 0
      L7_2(L8_2, L9_2, L10_2, L11_2)
      return
    end
  end
end
L0_1._try_unselect_cat = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._index
  L2_2 = L2_2 - 1
  L3_2 = L5_1
  L2_2 = L2_2 * L3_2
  L2_2 = L2_2 + A1_2
  return L2_2
end
L0_1._get_cattery_id = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = A0_2._cattery_cats
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if A1_2 == L6_2 then
      L7_2 = true
      L8_2 = L5_2
      return L7_2, L8_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_cat_select = L9_1
function L9_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._space_zoo_data
  L2_2 = L2_2.WaitMutateCat
  L2_2 = A1_2 ~= L2_2
  return L2_2
end
L0_1._is_cat_show = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._is_cat_select
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = A0_2._space_zoo_data
  L2_2 = L2_2.Cattery
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = A1_2
  L2_2 = not L2_2 and L2_2
  return L2_2
end
L0_1._is_cat_disable = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_cattery_change = L9_1
return L0_1
