local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooBagPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooBagPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SpaceZooModule
L2_1 = "UIText_ActivitySpaceZoo_SendawayHintMission"
L3_1 = "UIText_ActivitySpaceZoo_SendawayHintSet"
L4_1 = 9601
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.SpaceZooChannelType
L6_1 = {}
L7_1 = L5_1.HatColor
L8_1 = L5_1.BodyColor
L9_1 = L5_1.BodyDecal
L6_1[1] = L7_1
L6_1[2] = L8_1
L6_1[3] = L9_1
L7_1 = {}
L8_1 = L5_1.HatDecal
L9_1 = L5_1.EyeDecal
L10_1 = L5_1.TailDecal
L7_1[1] = L8_1
L7_1[2] = L9_1
L7_1[3] = L10_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SpaceZooBagPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._cur_select_cat_data = nil
end
L0_1.ctor = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = L1_1.SpaceZooData
  A0_2._space_zoo_data = L1_2
end
L0_1.init = L8_1
function L8_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SpaceZooDeleteCat
  L4_2 = A0_2._on_delete_finish
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_delete
  L4_2 = A0_2._on_btn_delete
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rule
  L4_2 = A0_2._on_btn_rule_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_focus_when_select
  L3_2 = true
  L1_2(L2_2, L3_2)
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
  L3_2 = A0_2._is_item_select
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_sort_finish_callback
  L3_2 = A0_2._on_select_panel_sort_finish
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_owner_type
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rect_cat_icon
  L1_2 = L1_2.rect
  L2_2 = A0_2._binder
  L2_2 = L2_2.ui3d_panel
  L3_2 = L2_2
  L2_2 = L2_2.create_texture
  L4_2 = L1_2.width
  L5_2 = L1_2.height
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.raw_image_cat
  L3_2 = A0_2._binder
  L3_2 = L3_2.ui3d_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_texture
  L3_2 = L3_2(L4_2)
  L2_2.texture = L3_2
end
L0_1._on_load = L8_1
function L8_1(A0_2)
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
L0_1._on_dispose = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_item_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.select_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_first_cat_data
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_select_cat_data
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.SpaceZoo.SpaceZooDeleteConfirmDialog"
  L3_2 = A0_2._cur_select_cat_data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_delete = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Tutorial.GuideDetailDialog"
  L3_2 = L4_1
  L4_2 = nil
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_rule_click = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._cur_select_cat_data = nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.select_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.force_set_first_navigation_target
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_item_click
  L4_2 = A0_2._binder
  L4_2 = L4_2.select_panel
  L5_2 = L4_2
  L4_2 = L4_2.get_first_cat_data
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_delete_finish = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._on_item_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.select_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_first_cat_data
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_select_panel_sort_finish = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
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
  L2_2 = A0_2._is_item_select
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  A0_2._cur_select_cat_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.select_panel
  L3_2 = L2_2
  L2_2 = L2_2.on_select_cat_change
  L4_2 = A0_2._cur_select_cat_data
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_selected_item_view
  L2_2(L3_2)
end
L0_1._on_item_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_select_cat_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_ui3d
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_name
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_delete_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_features
  L1_2(L2_2)
end
L0_1._refresh_selected_item_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ui3d_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_cat
  L3_2 = A0_2._cur_select_cat_data
  L1_2(L2_2, L3_2)
end
L0_1._setup_ui3d = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._cur_select_cat_data
  L4_2 = L3_2
  L3_2 = L3_2.GetCatName
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_name = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = true
  L2_2 = A0_2._cur_select_cat_data
  L2_2 = L2_2.CanDelete
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_disable_delete
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
    L1_2 = false
  end
  L2_2 = A0_2._space_zoo_data
  L2_2 = L2_2.Cattery
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = A0_2._cur_select_cat_data
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_disable_delete
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
    L1_2 = false
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_delete
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_disable_delete
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_delete_btn = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = ipairs
  L2_2 = L6_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._cur_select_cat_data
    L7_2 = L6_2
    L6_2 = L6_2.GetFeatureID
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.SpaceZooCatData
    L7_2 = L7_2.GetDefaultFeatureID
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.feature_node_list
    L8_2 = L8_2[L4_2]
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = L6_2 ~= L7_2
    L8_2(L9_2, L10_2)
    if L6_2 ~= L7_2 then
      L8_2 = A0_2._cur_select_cat_data
      L9_2 = L8_2
      L8_2 = L8_2.GetFeatureRow
      L10_2 = L5_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = A0_2._binder
      L9_2 = L9_2.feature_img_list
      L9_2 = L9_2[L4_2]
      L10_2 = L9_2
      L9_2 = L9_2.setup_view_by_feature_images
      L11_2 = {}
      L12_2 = L8_2.ImagePath
      L11_2[1] = L12_2
      L9_2(L10_2, L11_2)
    end
  end
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = L7_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._cur_select_cat_data
    L8_2 = L7_2
    L7_2 = L7_2.GetFeatureID
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.SpaceZooCatData
    L8_2 = L8_2.GetDefaultFeatureID
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    if L7_2 ~= L8_2 then
      L9_2 = A0_2._cur_select_cat_data
      L10_2 = L9_2
      L9_2 = L9_2.GetFeatureRow
      L11_2 = L6_2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L1_2
      L12_2 = L9_2.ImagePath
      L10_2(L11_2, L12_2)
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_special_decal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = #L1_2
  L4_2 = L4_2 ~= 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.special_feature_img
  L3_2 = L2_2
  L2_2 = L2_2.setup_view_by_feature_images
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_features = L8_1
function L8_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._cur_select_cat_data
  L2_2 = L2_2 == A1_2
  return L2_2
end
L0_1._is_item_select = L8_1
return L0_1
