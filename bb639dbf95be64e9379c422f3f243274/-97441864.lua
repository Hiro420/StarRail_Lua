local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherTeam.AetherDivideTeamEditPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherTeam.AetherDivideTeamEditTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherTeam.AetherDivideTeamEditTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritUtilities.AetherSpiritUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritUtilities.AetherTeamUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.Common.AetherCommonSpiritItemLitePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.Common.AetherCommonSpiritItemLitePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainPage"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherDivideTeamEditPage"
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
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.AetherDivideModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AetherDivideTeamEditPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1.AetherDivideTeamData
  A0_2._team_data = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._team_data
  L3_2 = L2_2
  L2_2 = L2_2.GetAllLineUpData
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._all_line_up_data = L1_2
  L1_2 = A0_2._all_line_up_data
  L1_2 = #L1_2
  A0_2._team_count = L1_2
  L1_2 = A0_2._team_data
  L1_2 = L1_2.MaxEliteSelectionCount
  A0_2._elite_limit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._generate_spirit_table
  L1_2 = L1_2(L2_2)
  A0_2._all_spirits = L1_2
  L1_2 = A0_2._team_data
  L1_2 = L1_2.CurSlot
  A0_2._default_index = L1_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_activate
  L4_2 = A0_2._on_btn_activate
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_btn_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_pre
  L4_2 = A0_2._on_btn_pre
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L4_2 = A0_2._on_btn_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_tips
  L4_2 = A0_2._on_btn_tips
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AetherTeamUpdated
  L4_2 = A0_2._on_team_updated
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_spirit_sort
  L2_2 = L1_2
  L1_2 = L1_2.enable_async
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_spirit_sort
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2._on_get_spirit_item
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_spirit_sort
  L2_2 = L1_2
  L1_2 = L1_2.register_top_spirit_callback
  L3_2 = A0_2._get_locked_spirits
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_edit
  L2_2 = L1_2
  L1_2 = L1_2.register_member_click_callback
  L3_2 = A0_2._on_card_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_selected_changed
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.override_click_item
  L3_2 = A0_2
  L4_2 = A0_2._on_override_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tabs
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._all_line_up_data
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AetherDivideTeamEditTabItem
    L8_2 = G
    L8_2 = L8_2.AetherDivideTeamEditTabItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_tab_root
    L6_2(L7_2, L8_2)
    L5_2.button_prefab_index = 0
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.add_item
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._init_tabs = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._default_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_edit
  L2_2 = L1_2
  L1_2 = L1_2.play_fadein
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_spirit_sort
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._all_spirits
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_current_team_mark
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_elite_limit
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_edit_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_select_panel
  L1_2(L2_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = A0_2._line_up_data
  L3_2 = L3_2.MaxSelectionCount
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._selected_spirits
    L6_2 = L6_2[L5_2]
    if L6_2 == A1_2 then
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1._get_spirit_selected_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.AetherTeamUtils
  L1_2 = L1_2.get_elite_count
  L2_2 = A0_2._selected_spirits
  L3_2 = A0_2._line_up_data
  L3_2 = L3_2.MaxSelectionCount
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_cur_elite
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_elite_limit
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._elite_limit
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._elite_limit
  L2_2 = L1_2 < L2_2
  A0_2._is_allow_select_elite = L2_2
end
L0_1._refresh_elite_limit = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_edit
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._selected_spirits
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_edit
  L2_2 = L1_2
  L1_2 = L1_2.set_selected_panel
  L3_2 = A0_2._select_index
  L1_2(L2_2, L3_2)
end
L0_1._refresh_edit_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_spirit_sort
  L2_2 = L1_2
  L1_2 = L1_2.refresh_displayed_spirits
  L1_2(L2_2)
end
L0_1._refresh_select_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_activate
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L4_2 = A0_2
  L3_2 = A0_2._can_activate
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_cur_lineup
  L3_2 = A0_2._line_up_data
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_btn_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_TeamEdit_Active"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_btn_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_TeamEdit_ActiveTeamBtn"
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_btn_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._team_count
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._tab_control
    L6_2 = L5_2
    L5_2 = L5_2.find_item
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L7_2 = L5_2
      L6_2 = L5_2.setup_current_team_mark
      L8_2 = A0_2._team_data
      L8_2 = L8_2.CurSlot
      L8_2 = L4_2 == L8_2
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._refresh_current_team_mark = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = L1_1.AllAetherMonsterAvatars
  L3_2 = L2_2
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L3_2 = L3_2.Value
    L4_2 = L3_2.Promotion
    if 1 <= L4_2 then
      L4_2 = #L1_2
      L4_2 = L4_2 + 1
      L1_2[L4_2] = L3_2
    end
  end
  L4_2 = L2_2
  L3_2 = L2_2.Dispose
  L3_2(L4_2)
  return L1_2
end
L0_1._generate_spirit_table = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 1
  L2_2 = A0_2._line_up_data
  L2_2 = L2_2.MaxSelectionCount
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._selected_spirits
    L5_2 = L5_2[L4_2]
    if L5_2 == nil then
      return L4_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1._get_first_empty_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 0
  L2_2 = 1
  L3_2 = A0_2._line_up_data
  L3_2 = L3_2.MaxSelectionCount
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._selected_spirits
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L1_2 = L1_2 + 1
    end
  end
  return L1_2
end
L0_1._get_cur_selected_count = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._is_cur_lineup
  L3_2 = A0_2._line_up_data
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = 1
  L2_2 = A0_2._line_up_data
  L2_2 = L2_2.MaxSelectionCount
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._selected_spirits
    L5_2 = L5_2[L4_2]
    if L5_2 ~= nil then
      L5_2 = true
      return L5_2
    end
  end
  L1_2 = false
  return L1_2
end
L0_1._can_activate = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AetherCommonSpiritItemLitePanel
    L8_2 = G
    L8_2 = L8_2.AetherCommonSpiritItemLitePanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_callback
    L7_2 = A0_2._on_member_click
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_selected_callback
    L7_2 = A0_2._on_spirit_selected
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.set_auto_trigger_click_on_navigation
    L7_2 = false
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.set_selected
    L7_2 = false
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.set_checked
    L7_2 = false
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_spirit_sort
  L6_2 = L5_2
  L5_2 = L5_2.get_displayed_spirits
  L5_2 = L5_2(L6_2)
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = A0_2
  L6_2 = A0_2._get_spirit_selected_index
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_order
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_black_mask
  L9_2 = L5_2.IsElite
  if L9_2 then
    L9_2 = A0_2._is_allow_select_elite
    L9_2 = L6_2 == nil and L9_2
  end
  L7_2(L8_2, L9_2)
  return L3_2
end
L0_1._on_get_spirit_item = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._selected_spirits
  return L1_2
end
L0_1._get_locked_spirits = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._line_up_data
  if L2_2 == nil then
    return
  end
  L2_2 = true
  L3_2 = 1
  L4_2 = A0_2._line_up_data
  L4_2 = L4_2.MaxSelectionCount
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._selected_spirits
    L7_2 = L7_2[L6_2]
    L8_2 = A0_2._line_up_data
    L9_2 = L8_2
    L8_2 = L8_2.GetMemberByIndex
    L10_2 = L6_2
    L8_2 = L8_2(L9_2, L10_2)
    if L7_2 ~= L8_2 then
      L2_2 = false
      break
    end
  end
  if L2_2 then
    return
  end
  L3_2 = G
  L3_2 = L3_2.AetherTeamUtils
  L3_2 = L3_2.apply_spirits_to_line_up_data
  L4_2 = A0_2._selected_spirits
  L5_2 = A0_2._line_up_data
  L3_2(L4_2, L5_2)
  if A1_2 == true then
    L4_2 = A0_2
    L3_2 = A0_2.show_full_screen_block_for_packet
    L5_2 = CS
    L5_2 = L5_2.NIJNBICAPPA
    L5_2 = L5_2.OLJEOMILNHM
    L3_2(L4_2, L5_2)
  end
end
L0_1._save_cur_lineup = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._select_index
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_AetherDivide_Team_SpiritMax"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A1_2.IsElite
  if L2_2 then
    L2_2 = A0_2._is_allow_select_elite
    if not L2_2 then
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.UIPileToastMessageTextID
      L4_2 = "UIText_AetherDivide_Team_RareMonsterMax"
      L2_2(L3_2, L4_2)
      return
    end
  end
  L2_2 = A0_2._selected_spirits
  L3_2 = A0_2._select_index
  L2_2[L3_2] = A1_2
  L2_2 = A0_2._select_index
  L4_2 = A0_2
  L3_2 = A0_2._get_first_empty_index
  L3_2 = L3_2(L4_2)
  A0_2._select_index = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_edit
  L4_2 = L3_2
  L3_2 = L3_2.play_select_anim
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._try_select = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._selected_spirits
  L2_2[A1_2] = nil
  A0_2._select_index = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._try_unselect = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.Slot
  L3_2 = A0_2._team_data
  L3_2 = L3_2.CurSlot
  L2_2 = L2_2 == L3_2
  return L2_2
end
L0_1._is_cur_lineup = L3_1
function L3_1(A0_2, A1_2)
  A0_2._cur_spirit_data = A1_2
end
L0_1._on_spirit_selected = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._get_spirit_selected_index
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2._try_select
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._try_unselect
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._on_member_click = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  if A1_2 ~= nil then
    L4_2 = A0_2._selected_spirits
    L4_2[A3_2] = nil
  end
  A0_2._select_index = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L4_2(L5_2)
end
L0_1._on_card_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._save_cur_lineup
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._all_line_up_data
  L2_2 = L2_2[A1_2]
  A0_2._line_up_data = L2_2
  L2_2 = A0_2._line_up_data
  L2_2 = L2_2.Slot
  A0_2._cur_slot = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = A0_2._line_up_data
  L4_2 = L3_2
  L3_2 = L3_2.GetMemberList
  L3_2, L4_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._selected_spirits = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_first_empty_index
  L2_2 = L2_2(L3_2)
  A0_2._select_index = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_spirit_sort
  L3_2 = L2_2
  L2_2 = L2_2.redo_filter
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_tab_selected_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._line_up_data
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._is_cur_lineup
    L4_2 = A0_2._line_up_data
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._get_cur_selected_count
      L2_2 = L2_2(L3_2)
      if L2_2 == 0 then
        L2_2 = G
        L2_2 = L2_2.NotifyManager
        L2_2 = L2_2.notify
        L3_2 = G
        L3_2 = L3_2.CS
        L3_2 = L3_2.NotifyType
        L3_2 = L3_2.UICenterToastMessageTextID
        L4_2 = "UIText_AetherDivide_Team_AtLastOne"
        L2_2(L3_2, L4_2)
        return
      end
    end
  end
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_override_tab_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_current_team_mark
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_state
  L1_2(L2_2)
end
L0_1._on_team_updated = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_edit_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_select_panel
  L1_2(L2_2)
end
L0_1._on_return_to_top = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_cur_lineup
  L3_2 = A0_2._line_up_data
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_cur_selected_count
    L1_2 = L1_2(L2_2)
    if L1_2 == 0 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UICenterToastMessageTextID
      L3_2 = "UIText_AetherDivide_Team_AtLastOne"
      L1_2(L2_2, L3_2)
      return
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._save_cur_lineup
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._selected_spirits
  L1_2 = L1_2[1]
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L1_2 = A0_2._cur_spirit_data
  end
  if L1_2 == nil then
    L2_2 = A0_2._all_spirits
    L1_2 = L2_2[1]
  end
  L2_2 = A0_2._temp_lineup_data
  if L2_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.AetherDivideLineUpData
    L2_2 = L2_2.CreateTempLineUpData
    L2_2 = L2_2()
    A0_2._temp_lineup_data = L2_2
  end
  L2_2 = 1
  L3_2 = A0_2._temp_lineup_data
  L3_2 = L3_2.MaxSelectionCount
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._temp_lineup_data
    L7_2 = L6_2
    L6_2 = L6_2.SetMemberDataByIndex
    L8_2 = A0_2._selected_spirits
    L8_2 = L8_2[L5_2]
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIButtonClick
  L3_2 = A0_2.__name
  L4_2 = ""
  L5_2 = "BtnDetail"
  L6_2 = A0_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = G
  L3_2 = L3_2.AetherSpiritMainPage
  L4_2 = L1_2
  L5_2 = true
  L6_2 = nil
  L7_2 = A0_2._temp_lineup_data
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_btn_detail = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._save_cur_lineup
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L2_2 = L1_2
  L1_2 = L1_2.HEHEAHJEOCB
  L3_2 = A0_2._cur_slot
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.LOKMEHAEMKM
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_activate = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_slot
  if L1_2 == 1 then
    L1_2 = A0_2._team_count
    if L1_2 then
      goto lbl_9
    end
  end
  L1_2 = A0_2._cur_slot
  L1_2 = L1_2 - 1
  ::lbl_9::
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_pre = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_slot
  L2_2 = A0_2._team_count
  if L1_2 == L2_2 then
    L1_2 = 1
    if L1_2 then
      goto lbl_10
    end
  end
  L1_2 = A0_2._cur_slot
  L1_2 = L1_2 + 1
  ::lbl_10::
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_next = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritAttributeRestrain.AetherSpiritAttributeRestrainDialog"
  L1_2(L2_2)
end
L0_1._on_btn_tips = L3_1
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
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_spirit_sort
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L3_1
return L0_1
