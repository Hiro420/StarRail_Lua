local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.RogueNousDiceBranchPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousDiceBranchDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousDiceGenreTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousDiceBranchPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
L2_1 = 1.4
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueNousDiceBranchPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2
  A0_2._aeon_id = A1_2
  A0_2._avatar_list = A2_2
  A0_2._ban_aeon_list = A3_2
  A0_2._difficulty_comp_list = A4_2
  A0_2._area_id = A6_2
  A0_2._edit_only = A5_2
  if A5_2 == nil then
    A0_2._edit_only = true
  end
  L7_2 = L1_1.ChessRogueData
  L7_2 = L7_2.DiceInfo
  L7_2 = L7_2.RogueNousDiceData
  L8_2 = L7_2
  L7_2 = L7_2.GetRogueNousDiceBranchTags
  L7_2 = L7_2(L8_2)
  A0_2._tab_data_list = L7_2
  A0_2._default_tab_index = 1
  A0_2._default_branch_index = 1
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.edit_btn
  L4_2 = A0_2._on_edit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._on_confirm_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.left_tab_btn
  L4_2 = A0_2._on_switch_tab_btn_clicked
  L5_2 = -1
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.right_tab_btn
  L4_2 = A0_2._on_switch_tab_btn_clicked
  L5_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.branch_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.register_click_callback
    L8_2 = A0_2._on_branch_panel_clicked
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.confirm_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._edit_only
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RogueNousDiceBranchDetailPanel
  L4_2 = G
  L4_2 = L4_2.RogueNousDiceBranchDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._branch_detail_panel = L1_2
  L1_2 = A0_2._branch_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.branch_detail_panel_root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._branch_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_edit_click_callback
  L3_2 = A0_2._on_edit_btn_clicked
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._branch_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_confirm_click_callback
  L3_2 = A0_2._on_confirm_btn_clicked
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_default_click_tab_index_and_branch_index
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.click_item_by_uid
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_ui_navigation
  L3_2(L4_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.ChessRogueData
  L1_2 = L1_2.DiceInfo
  L1_2 = L1_2.RogueNousDiceData
  L2_2 = L1_2
  L1_2 = L1_2.GetBranchesByGenre
  L3_2 = A0_2._cur_tab_data
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._cur_branch_data_list = L1_2
end
L0_1._refresh_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._cur_tab_data
  if L1_2 == nil then
    return
  end
  L1_2 = 0
  L2_2 = A0_2._cur_branch_data_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.branch_panels
    L6_2 = L4_2 + 1
    L5_2 = L5_2[L6_2]
    L6_2 = L5_2
    L5_2 = L5_2.setup_view
    L7_2 = A0_2._cur_branch_data_list
    L7_2 = L7_2[L4_2]
    L8_2 = A0_2._aeon_id
    L9_2 = A0_2._aeon_id
    L9_2 = L9_2 ~= nil
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.branch_panels
  L2_2 = A0_2._cur_branch_index
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.trigger_click
  L1_2(L2_2)
end
L0_1._refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._tab_control
  if L1_2 ~= nil then
    return
  end
  L1_2 = A0_2._tab_data_list
  L1_2 = L1_2.Count
  if L1_2 <= 1 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.level_tab_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
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
  L3_2 = L3_2.tab_control_root
  L1_2(L2_2, L3_2)
  L1_2 = 0
  L2_2 = A0_2._tab_data_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._tab_data_list
    L5_2 = L5_2[L4_2]
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.RogueNousDiceGenreTabItem
    L9_2 = G
    L9_2 = L9_2.RogueNousDiceGenreTabItemBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._tab_control
    L8_2 = L7_2
    L7_2 = L7_2.add_item
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_item_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_tab_control = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.get_selected_branch_id_and_tag
  L1_2, L2_2 = L1_2()
  A0_2._last_used_branch_id = L1_2
  L3_2 = 1
  L4_2 = 1
  L5_2 = nil
  if L1_2 == nil or L2_2 == nil then
    L6_2 = L3_2
    L7_2 = L4_2
    return L6_2, L7_2
  end
  L6_2 = 0
  L7_2 = A0_2._tab_data_list
  L7_2 = L7_2.Count
  L7_2 = L7_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A0_2._tab_data_list
    L10_2 = L10_2[L9_2]
    L11_2 = L10_2.TagID
    if L2_2 == L11_2 then
      L3_2 = L9_2 + 1
      L5_2 = L10_2
      break
    end
  end
  L6_2 = L1_1.ChessRogueData
  L6_2 = L6_2.DiceInfo
  L6_2 = L6_2.RogueNousDiceData
  L7_2 = L6_2
  L6_2 = L6_2.GetBranchesByGenre
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = 0
  L8_2 = L6_2.Count
  L8_2 = L8_2 - 1
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L6_2[L10_2]
    L12_2 = L11_2.BranchID
    if L12_2 == L1_2 then
      L4_2 = L10_2 + 1
    end
  end
  L7_2 = L3_2
  L8_2 = L4_2
  return L7_2, L8_2
end
L0_1._get_default_click_tab_index_and_branch_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit_btn_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueNous.DiceBuild.RogueNousDiceEditPage"
  L3_2 = A0_2._cur_data
  L4_2 = A0_2._edit_only
  L4_2 = not L4_2
  L5_2 = A0_2._aeon_id
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.set_exit_callback
  L4_2 = A0_2._refresh_view
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_edit_btn_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.store_selected_branch_id
  L2_2 = A0_2._cur_data
  L2_2 = L2_2.BranchID
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.FFOMLPONIFB
  L2_2 = L1_2
  L1_2 = L1_2.AALCFKMPHEL
  L3_2 = A0_2._area_id
  L4_2 = A0_2._aeon_id
  L5_2 = A0_2._avatar_list
  L6_2 = nil
  L7_2 = A0_2._ban_aeon_list
  L8_2 = A0_2._difficulty_comp_list
  L9_2 = A0_2._cur_data
  L9_2 = L9_2.BranchID
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_confirm_btn_clicked = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._cur_tab_index = A1_2
  L2_2 = A0_2._tab_data_list
  L3_2 = A1_2 - 1
  L2_2 = L2_2[L3_2]
  A0_2._cur_tab_data = L2_2
  L2_2 = A0_2._cur_branch_index
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._get_default_click_tab_index_and_branch_index
    L2_2, L3_2 = L2_2(L3_2)
    A0_2._cur_branch_index = L3_2
  else
    A0_2._cur_branch_index = 1
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.tag_txt
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._cur_tab_data
  L4_2 = L4_2.BranchTagName
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
end
L0_1._on_tab_item_clicked = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._cur_branch_panel
  if L3_2 then
    L3_2 = A0_2._cur_branch_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_checked
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  A0_2._cur_branch_panel = A1_2
  L3_2 = A0_2._cur_branch_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_checked
  L5_2 = true
  L3_2(L4_2, L5_2)
  A0_2._cur_data = A2_2
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.branch_panels
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._cur_branch_panel
    if L7_2 == L8_2 then
      A0_2._cur_branch_index = L6_2
    end
  end
  L3_2 = A0_2._branch_detail_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._cur_data
  L6_2 = A0_2._aeon_id
  L7_2 = A0_2._edit_only
  L7_2 = not L7_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2
  L3_2 = A0_2._update_gamepad_hint
  L3_2(L4_2)
end
L0_1._on_branch_panel_clicked = L3_1
function L3_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.branch_root_1
    L2_2 = L2_2.gameObject
    return L2_2
  end
end
L0_1.get_first_select_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.branch_panels
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.branch_panels
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.get_root_btn_ref
    L7_2 = L7_2(L8_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = G
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.setup_navigation
  L3_2 = L1_2
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_enter_zoom
  L4_2 = NavigationZoneType
  L4_2 = L4_2.Zone1
  L2_2(L3_2, L4_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._cur_tab_index
  L2_2 = L2_2 + A1_2
  if L2_2 ~= 0 then
    L3_2 = A0_2._tab_data_list
    L3_2 = L3_2.Count
    if not (L2_2 > L3_2) then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.click_item_by_uid
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._on_enter_zoom
  L5_2 = NavigationZoneType
  L5_2 = L5_2.Zone1
  L3_2(L4_2, L5_2)
end
L0_1._on_switch_tab_btn_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = A0_2._branch_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.has_extra_info
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = "ActionGroup_BuffDetail"
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._branch_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.can_scroll_move
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = "ActionGroup_Scroll"
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
  L2_2(L3_2, L4_2)
end
L0_1._update_gamepad_hint = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_Confirm" then
    L2_2 = A0_2._branch_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.show_extra_info
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L3_1
return L0_1
