local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritUtilities.AetherSpiritUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritList.AetherSpiritListPageTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritList.AetherSpiritListPageTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritList.AetherSpiritListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritList.AetherSpiritListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherUI3D.AetherSpiritUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritList.AetherSpiritListPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritListPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
L1_1 = L1_1.AetherOutfitData
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AetherSpiritListPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.AetherSpiritUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._spirit_ui3d = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._enable_camera_rot
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._spirit_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2, A1_2)
  A0_2._allow_camera_zoom_rotation_by_mouse = A1_2
  A0_2._allow_camera_zoom_by_gamepad = false
end
L0_1._enable_camera_rot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_spirit_item
  L3_2 = A0_2._selected_spirit_display_data
  L1_2(L2_2, L3_2)
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 38
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_click_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AetherSpiritOnPromote
  L4_2 = L0_1._on_spirit_sync
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._top_tab_control = L1_2
  L1_2 = A0_2._top_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_top_tab
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_left_tab
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right_tab
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  A0_2._cur_type_row = nil
  L2_2 = A0_2
  L1_2 = A0_2._generate_tab_info
  L1_2(L2_2)
  L1_2 = {}
  A0_2._spirit_table = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._generate_spirit_table
  L1_2(L2_2)
  L1_2 = A0_2._spirit_table
  L1_2 = L1_2[1]
  A0_2._selected_spirit_display_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AetherSpiritListPanel
  L4_2 = G
  L4_2 = L4_2.AetherSpiritListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._spirit_list_panel = L1_2
  L1_2 = A0_2._spirit_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_click_spirit_item
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._spirit_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_spirit_list_panel
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.AetherSpiritUtils
  L1_2 = L1_2.sort_display_spirit_table
  L2_2 = A0_2._spirit_table
  L1_2(L2_2)
end
L0_1._on_spirit_sync = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._top_tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_prev
      L1_2(L2_2)
    end
  end
end
L0_1._select_prev = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._top_tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_next
      L1_2(L2_2)
    end
  end
end
L0_1._select_next = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AetherSpiritTypeExcelTable
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2()
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L1_2
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L1_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.SpiritType
    L2_3 = #L2_3
    L3_3 = A1_3.SpiritType
    L3_3 = #L3_3
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L3_2(L4_2, L5_2)
  L3_2 = 0
  L4_2 = #L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = nil
    if L6_2 == 0 then
      L7_2 = nil
    else
      L7_2 = L1_2[L6_2]
    end
    L9_2 = A0_2
    L8_2 = A0_2.create_panel
    L10_2 = G
    L10_2 = L10_2.AetherSpiritListPageTabItem
    L11_2 = G
    L11_2 = L11_2.AetherSpiritListPageTabItemBinder
    L12_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2.button_prefab_index = 0
    L10_2 = L8_2
    L9_2 = L8_2.bind
    L11_2 = A0_2._binder
    L11_2 = L11_2.node_top_tab
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.register_callback
    L11_2 = A0_2._on_tab_click
    L12_2 = A0_2
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = A0_2._top_tab_control
    L10_2 = L9_2
    L9_2 = L9_2.add_item
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
end
L0_1._generate_tab_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.AllAetherMonsterDisplayAvatars
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L2_2 = L2_2.Value
    L3_2 = L2_2.Status
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.AetherMonsterAvatarDisplayDataStatus
    L4_2 = L4_2.Forbidden
    if L3_2 ~= L4_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = A0_2._spirit_table
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
  L2_2 = G
  L2_2 = L2_2.AetherSpiritUtils
  L2_2 = L2_2.sort_display_spirit_table
  L3_2 = A0_2._spirit_table
  L2_2(L3_2)
end
L0_1._generate_spirit_table = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._cur_type_row = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_sub_title
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_refresh
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L5_2 = A0_2
  L4_2 = A0_2.get_navigation_target
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_tab_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._top_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._spirit_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.set_anim_trigger
  L3_2 = "OnInit"
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_type_row
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_sub_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_AetherDivide_Spirit_Type_All"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_sub_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._cur_type_row
    L3_2 = L3_2.Name
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_sub_title = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._spirit_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.clear_selected
  L1_2(L2_2)
  L1_2 = A0_2._spirit_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_type_row
  L4_2 = A0_2._spirit_table
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._spirit_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_empty
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._spirit_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.is_all_forbidden
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L1_2 and L5_2
  L3_2(L4_2, L5_2)
  if not L1_2 and not L2_2 then
    L3_2 = A0_2._spirit_list_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_selected_by_index
    L5_2 = 0
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_detail
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._selected_spirit_display_data
    L5_2 = L5_2.Status
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.AetherMonsterAvatarDisplayDataStatus
    L6_2 = L6_2.Unlocked
    L5_2 = L5_2 == L6_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._spirit_ui3d
  L4_2 = L3_2
  L3_2 = L3_2.set_spirit_visibility
  L5_2 = not L1_2 and L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_empty_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_spirit_list_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L1_2
  L3_2(L4_2, L5_2)
end
L0_1._on_refresh = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._selected_spirit_display_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._selected_spirit_display_data
  L4_2 = L4_2.Status
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.AetherMonsterAvatarDisplayDataStatus
  L5_2 = L5_2.Unlocked
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAetherMonsterAvatar
  L4_2 = A0_2._selected_spirit_display_data
  L4_2 = L4_2.ID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._spirit_ui3d
  L4_2 = L3_2
  L3_2 = L3_2.switch_spirit
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_click_spirit_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._selected_spirit_display_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AetherMonsterAvatarDisplayDataStatus
  L2_2 = L2_2.Unlocked
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAetherMonsterAvatar
  L3_2 = A0_2._selected_spirit_display_data
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainPage"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._spirit_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.reset_camera
  L2_2(L3_2)
  L2_2 = A0_2._spirit_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.set_anim_trigger
  L4_2 = "OnSpiritMain"
  L2_2(L3_2, L4_2)
end
L0_1._on_click_detail = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_close = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
return L0_1
