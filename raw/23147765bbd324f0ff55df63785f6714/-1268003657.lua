local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.Collection.EvolveBuildCollectionPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.Collection.EvolveBuildCollectionGearTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.Collection.EvolveBuildCollectionMonsterTabItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildCollectionPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_EvolveBuild_WeaponTag"
L2_1 = "UIText_EvolveBuild_JewelryTag"
L3_1 = "UIText_EvolveBuild_MonsterTag"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.EvolveBuildCollectionPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._default_tab_index = 1
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_open_mix
  L4_2 = A0_2._on_btn_open_mix
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._default_tab_index
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
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
  L3_2 = L3_2.tab_control_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_weapon_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_accessory_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_monster_tab_item
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
end
L0_1._init_tab_control = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.EvolveBuildCollectionGearTabItem
  L4_2 = G
  L4_2 = L4_2.EvolveBuildCollectionGearTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_weapon_panel
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_tab_title
  L4_2 = L1_1
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_gear_types
  L4_2 = {}
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.EvolveGearType
  L5_2 = L5_2.Tool
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.EvolveGearType
  L6_2 = L6_2.Forge
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2(L3_2, L4_2)
  A0_2._weapon_tab_item = L1_2
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_weapon_tab_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.EvolveBuildCollectionGearTabItem
  L4_2 = G
  L4_2 = L4_2.EvolveBuildCollectionGearTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_accessory_panel
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_tab_title
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_gear_types
  L4_2 = {}
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.EvolveGearType
  L5_2 = L5_2.Plugin
  L4_2[1] = L5_2
  L2_2(L3_2, L4_2)
  A0_2._accessory_tab_item = L1_2
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_accessory_tab_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.EvolveBuildCollectionMonsterTabItem
  L4_2 = G
  L4_2 = L4_2.EvolveBuildCollectionMonsterTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_monster_panel
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_tab_title
  L4_2 = L3_1
  L2_2(L3_2, L4_2)
  A0_2._monster_tab_item = L1_2
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_monster_tab_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Battle.ActivityEvolveBuild.Mix.BattleEvolveBuildMixPage"
  L1_2(L2_2)
end
L0_1._on_btn_open_mix = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.canvas_group_tab
    L3_2.alpha = 1
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2.get_navigation_target
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.canvas_group_tab
    L3_2.alpha = 0.5
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L5_2 = A0_2._tab_control
    L5_2 = L5_2.current_select_item
    L6_2 = L5_2
    L5_2 = L5_2.get_first_selected_object
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_tab_btn_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L2_2 = A0_2._tab_control
      L2_2 = L2_2.current_select_item
      L3_2 = A0_2._monster_tab_item
      L2_2 = L2_2 ~= L3_2
      return L2_2
    end
  end
end
L0_1._is_can_to_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
return L0_1
