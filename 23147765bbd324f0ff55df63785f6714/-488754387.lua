local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumAtlasPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumAtlasTypeTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumAtlasTypeTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumAtlasMainPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumAtlasMainPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonRewardListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonRewardListPanelNoMaskBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumAtlasPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.item = 1
L1_1.avatar = 2
L2_1 = "UIText_Activity_Museum_Collection_Item"
L3_1 = "UIText_Activity_Museum_Collection_Avatar"
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.MuseumModule
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumAtlasPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_save_by_click = true
  A0_2._after_setup = false
  A0_2._data_prepared = false
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
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._is_init_avatar = A1_2
  A0_2._init_area_id = A2_2
end
L0_1.init = L5_1
function L5_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.atlas_main_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._select_prev = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._select_next = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.atlas_main_panel
  L2_2 = L1_2
  L1_2 = L1_2._select_trigger_prev
  L1_2(L2_2)
end
L0_1._select_trigger_prev = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.atlas_main_panel
  L2_2 = L1_2
  L1_2 = L1_2._select_trigger_next
  L1_2(L2_2)
end
L0_1._select_trigger_next = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 33
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.short_cut_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_select_left
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_select_left
    L4_2 = A0_2._select_prev
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_select_right
    L4_2 = A0_2._select_next
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_trigger_left
    L4_2 = A0_2._select_trigger_prev
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_trigger_right
    L4_2 = A0_2._select_trigger_next
    L1_2(L2_2, L3_2, L4_2)
  end
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
  L3_2 = L3_2.node_atlas_type_tab
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.init_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumAtlasMainPanel
  L4_2 = G
  L4_2 = L4_2.MuseumAtlasMainPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.atlas_main_panel = L1_2
  L1_2 = A0_2.atlas_main_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_prepared_callback
  L3_2 = A0_2._on_main_panel_prepared
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.atlas_main_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_main_panel
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  A0_2._data_prepared = true
  L1_2 = A0_2._after_setup
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._common_setup_view
    L1_2(L2_2)
  end
end
L0_1._on_main_panel_prepared = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data_prepared
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._common_setup_view
    L1_2(L2_2)
  end
  A0_2._after_setup = true
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._collection_type
  L2_2 = L1_1.avatar
  if L1_2 == L2_2 then
    L1_2 = A0_2.atlas_main_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_avatar_collection_view
    L1_2(L2_2)
  else
    L1_2 = A0_2.atlas_main_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_item_collection_view
    L1_2(L2_2)
  end
end
L0_1._refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_init_avatar
  if L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.click_item_by_uid
    L3_2 = L1_1.avatar
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.click_item_by_uid
    L3_2 = L1_1.item
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._common_setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumAtlasTypeTabItem
  L4_2 = G
  L4_2 = L4_2.MuseumAtlasTypeTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.avatar_atlas_tab_item = L1_2
  L1_2 = A0_2.avatar_atlas_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.register_select_callback
  L3_2 = A0_2._on_select_tab
  L4_2 = A0_2
  L5_2 = L1_1.avatar
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumAtlasTypeTabItem
  L4_2 = G
  L4_2 = L4_2.MuseumAtlasTypeTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.item_atlas_tab_item = L1_2
  L1_2 = A0_2.item_atlas_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.register_select_callback
  L3_2 = A0_2._on_select_tab
  L4_2 = A0_2
  L5_2 = L1_1.item
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2.item_atlas_tab_item
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2.avatar_atlas_tab_item
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.avatar_atlas_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.bind_red_dot
  L3_2 = L1_1.avatar
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.item_atlas_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.bind_red_dot
  L3_2 = L1_1.item
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.avatar_atlas_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.setup_icon
  L3_2 = "SpriteOutput/TabIcon/Museum/MuseumAtlasAvatarIcon.png"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.item_atlas_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.setup_icon
  L3_2 = "SpriteOutput/TabIcon/Museum/MuseumAtlasItemIcon.png"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
end
L0_1.init_tab = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIButtonClick
  L3_2 = A0_2.__name
  L4_2 = A0_2.__name
  L5_2 = A1_2
  L6_2 = A0_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._collection_type
  if L2_2 ~= A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.force_set_first_navigation_target
    L2_2(L3_2)
  end
  A0_2._collection_type = A1_2
  L2_2 = L1_1.avatar
  if A1_2 == L2_2 then
    L2_2 = A0_2.atlas_main_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_avatar_collection_view
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._init_area_id
    if L2_2 then
      L2_2 = A0_2.atlas_main_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_item_collection_view
      L4_2 = A0_2._init_area_id
      L2_2(L3_2, L4_2)
      A0_2._init_area_id = nil
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_title
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L2_1
      L2_2(L3_2, L4_2)
      return
    end
    L2_2 = A0_2.atlas_main_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_item_collection_view
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_select_tab = L5_1
return L0_1
