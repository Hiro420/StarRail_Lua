local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.Components.RogueNousPathEchoDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.Components.RogueNousPathEchoTeamPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.Components.RogueNousPathEchoBanPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.RogueNousPathEchoOverviewPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousPathEchoOverviewPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "RoguePathEchoDetail_SwitchR"
L2_1 = "RoguePathEchoDetail_SwitchL"
L3_1 = "UIText_Rogue_Init_Avatar_Tip_Confirm"
L4_1 = "UIText_Rogue_Start_Tip1"
L5_1 = "UIText_Rogue_Start_Tip2"
L6_1 = "UIText_RogueNous_AeonDetail_AeonCross_Ban_Tip_1"
L7_1 = 4
L8_1 = 2
L9_1 = CS
L9_1 = L9_1.RPG
L9_1 = L9_1.Client
L9_1 = L9_1.GlobalVars
L9_1 = L9_1.s_ModuleManager
L9_1 = L9_1.ChessRogueModule
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueNousPathEchoOverviewPageBinder
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
  L1_2 = {}
  A0_2._selected_avatars = L1_2
  L1_2 = {}
  A0_2._selected_banned_aeon_ids = L1_2
  L1_2 = {}
  A0_2._selected_banned_aeons_data_list = L1_2
end
L0_1.ctor = L10_1
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._rogue_nous_aeon_rows = A1_2
  A0_2._selected_extend_difficulty_comp_ids = A2_2
  A0_2._cur_index = A3_2
  A0_2._rogue_nous_area_id = A4_2
  A0_2._has_switch = false
end
L0_1.init = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_arrow_left
  L4_2 = A0_2._on_btn_arrow_left
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_arrow_right
  L4_2 = A0_2._on_btn_arrow_right
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
  L3_2 = L3_2.btn_ban
  L4_2 = A0_2._on_btn_ban
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_team
  L4_2 = A0_2._on_btn_team
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RogueNousPathEchoDetailPanel
  L4_2 = G
  L4_2 = L4_2.RogueNousPathEchoDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._aeon_detail_panel = L1_2
  L1_2 = A0_2._aeon_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_detail_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RogueNousPathEchoDetailPanel
  L4_2 = G
  L4_2 = L4_2.RogueNousPathEchoDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._aeon_detail_panel_copy = L1_2
  L1_2 = A0_2._aeon_detail_panel_copy
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_detail_panel_copy
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RogueNousPathEchoTeamPanel
  L4_2 = G
  L4_2 = L4_2.RogueNousPathEchoTeamPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._team_panel = L1_2
  L1_2 = A0_2._team_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_team_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._team_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_on_avatar_icon_click
  L3_2 = A0_2._on_avatar_icon_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RogueNousPathEchoBanPanel
  L4_2 = G
  L4_2 = L4_2.RogueNousPathEchoBanPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._banned_aeons_panel = L1_2
  L1_2 = A0_2._banned_aeons_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_ban_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._banned_aeons_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_on_item_click_callback
  L3_2 = A0_2._on_aeons_icon_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.IsInGuideOne
  L1_2 = L1_2()
  A0_2._is_in_guide = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_ban_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = {}
  L5_2 = "ActionGroup_Return"
  L4_2[1] = L5_2
  L2_2(L3_2, L4_2)
end
L0_1._on_load = L10_1
function L10_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._aeon_detail_panel_copy
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._rogue_nous_aeon_rows
  L2_2 = A0_2._cur_index
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2.AeonID
  A0_2._cur_selected_aeon_id = L2_2
  L2_2 = A0_2._aeon_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ClickSelectRogueAeon
  L4_2 = A0_2._cur_selected_aeon_id
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._reload_cache_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_ui_navigation
  L2_2(L3_2)
end
L0_1._setup_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L10_1
function L10_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._has_switch
  if L1_2 then
    L1_2 = A0_2._aeon_detail_panel_copy
    if L1_2 then
      L1_2 = A0_2._aeon_detail_panel_copy
      L2_2 = L1_2
      L1_2 = L1_2.get_first_selected_object
      return L1_2(L2_2)
    end
  else
    L1_2 = A0_2._aeon_detail_panel
    if L1_2 then
      L1_2 = A0_2._aeon_detail_panel
      L2_2 = L1_2
      L1_2 = L1_2.get_first_selected_object
      return L1_2(L2_2)
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.try_get_rogue_nous_selected_avatars
  L2_2 = A0_2._cur_selected_aeon_id
  L1_2 = L1_2(L2_2)
  A0_2._selected_avatars = L1_2
  L1_2 = {}
  A0_2._selected_banned_aeons_data_list = L1_2
  L1_2 = A0_2._is_in_guide
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.RogueNousUtils
    L1_2 = L1_2.try_get_rogue_nous_selected_banned_aeon
    L2_2 = A0_2._cur_selected_aeon_id
    L1_2 = L1_2(L2_2)
    A0_2._selected_banned_aeons_data_list = L1_2
  end
  L1_2 = {}
  A0_2._selected_banned_aeon_ids = L1_2
  L1_2 = pairs
  L2_2 = A0_2._selected_banned_aeons_data_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._selected_banned_aeon_ids
    L8_2 = L5_2.AeonID
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._banned_aeons_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._selected_banned_aeons_data_list
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._team_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._selected_avatars
  L1_2(L2_2, L3_2)
end
L0_1._reload_cache_data = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._has_switch = true
  L2_2 = A0_2._cur_index
  L3_2 = L2_2 + A1_2
  A0_2._cur_index = L3_2
  L3_2 = A0_2._cur_index
  if L3_2 == 0 then
    L3_2 = A0_2._rogue_nous_aeon_rows
    L3_2 = #L3_2
    A0_2._cur_index = L3_2
  else
    L3_2 = A0_2._cur_index
    L4_2 = A0_2._rogue_nous_aeon_rows
    L4_2 = #L4_2
    L4_2 = L4_2 + 1
    if L3_2 == L4_2 then
      A0_2._cur_index = 1
    end
  end
  L3_2 = math
  L3_2 = L3_2.min
  L4_2 = A0_2._cur_index
  L5_2 = A0_2._rogue_nous_aeon_rows
  L5_2 = #L5_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._cur_index = L3_2
  L3_2 = A0_2._rogue_nous_aeon_rows
  L3_2 = L3_2[L2_2]
  L4_2 = A0_2._rogue_nous_aeon_rows
  L5_2 = A0_2._cur_index
  L4_2 = L4_2[L5_2]
  L5_2 = A0_2._aeon_detail_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._aeon_detail_panel_copy
  L6_2 = L5_2
  L5_2 = L5_2.safe_set_active
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._aeon_detail_panel_copy
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = L4_2.AeonID
  A0_2._cur_selected_aeon_id = L5_2
  L5_2 = G
  L5_2 = L5_2.NotifyManager
  L5_2 = L5_2.notify
  L6_2 = G
  L6_2 = L6_2.CS
  L6_2 = L6_2.NotifyType
  L6_2 = L6_2.ClickSelectRogueAeon
  L7_2 = A0_2._cur_selected_aeon_id
  L5_2(L6_2, L7_2)
  if A1_2 == -1 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.UIAnimationUtils
    L5_2 = L5_2.PlayFromBegin
    L6_2 = A0_2._binder
    L6_2 = L6_2.anim_switch
    L7_2 = L2_1
    L5_2(L6_2, L7_2)
  else
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.UIAnimationUtils
    L5_2 = L5_2.PlayFromBegin
    L6_2 = A0_2._binder
    L6_2 = L6_2.anim_switch
    L7_2 = L1_1
    L5_2(L6_2, L7_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2._reload_cache_data
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.force_set_first_navigation_target
  L5_2(L6_2)
end
L0_1._show_switch_view = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ConfirmDialogUtil
  L2_2 = L2_2.ShowOkCancelHint
  L3_2 = A1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TextID
  L4_2 = L4_2.empty
  function L5_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._confirm_to_start_rogue
      L1_3(L2_3)
    end
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._show_confirm_dialog_to_start_rogue = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._rogue_nous_aeon_rows
  L2_2 = A0_2._cur_index
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.AeonID
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.UInt32
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  L3_2 = ipairs
  L4_2 = A0_2._selected_extend_difficulty_comp_ids
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L2_2
    L8_2 = L2_2.Add
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.Collections
  L3_2 = L3_2.Generic
  L3_2 = L3_2.List
  L4_2 = CS
  L4_2 = L4_2.System
  L4_2 = L4_2.UInt32
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2()
  L4_2 = 1
  L5_2 = L7_1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._selected_avatars
    L8_2 = L8_2[L7_2]
    if L8_2 ~= nil then
      L10_2 = L3_2
      L9_2 = L3_2.Add
      L11_2 = L8_2.ID
      L9_2(L10_2, L11_2)
    end
  end
  L4_2 = CS
  L4_2 = L4_2.System
  L4_2 = L4_2.Collections
  L4_2 = L4_2.Generic
  L4_2 = L4_2.List
  L5_2 = CS
  L5_2 = L5_2.System
  L5_2 = L5_2.UInt32
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2()
  L5_2 = 1
  L6_2 = L8_1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2._selected_banned_aeon_ids
    L9_2 = L9_2[L8_2]
    if L9_2 ~= nil then
      L11_2 = L4_2
      L10_2 = L4_2.Add
      L12_2 = A0_2._selected_banned_aeon_ids
      L12_2 = L12_2[L8_2]
      L10_2(L11_2, L12_2)
    end
  end
  L5_2 = G
  L5_2 = L5_2.UIManager
  L5_2 = L5_2.load_and_async_show
  L6_2 = "Ui.RogueDLC.RogueNous.DiceBuild.RogueNousDiceBranchPage"
  L7_2 = L1_2
  L8_2 = L3_2
  L9_2 = L4_2
  L10_2 = L2_2
  L11_2 = false
  L12_2 = A0_2._rogue_nous_area_id
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1._confirm_to_start_rogue = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L9_1.ChessRogueData
  L1_2 = L1_2.AreaInfo
  L3_2 = L1_2
  L2_2 = L1_2.GetAreaDataItem
  L4_2 = A0_2._rogue_nous_area_id
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.RecommendLevel
    return L3_2
  end
  L3_2 = 0
  return L3_2
end
L0_1._get_recommend_level = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._show_switch_view
  L3_2 = -1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_arrow_left = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._show_switch_view
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_arrow_right = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._selected_avatars
  if L1_2 ~= nil then
    L1_2 = A0_2._selected_avatars
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      goto lbl_18
    end
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UICenterToastMessageTextID
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_18::
  L1_2 = 0
  L2_2 = 0
  L3_2 = pairs
  L4_2 = A0_2._selected_avatars
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 ~= nil then
      L8_2 = L7_2.Level
      L1_2 = L1_2 + L8_2
      L2_2 = L2_2 + 1
    end
  end
  if L2_2 <= 0 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UICenterToastMessageTextID
    L5_2 = L3_1
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RogueUtils
  L3_2 = L3_2.GetStartRogueAvatarMaxNumber
  L3_2 = L3_2()
  if L2_2 < L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._show_confirm_dialog_to_start_rogue
    L5_2 = L4_1
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = pairs
  L4_2 = A0_2._selected_banned_aeons_data_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.IsCrossAeon
    if L8_2 then
      L9_2 = A0_2
      L8_2 = A0_2._show_confirm_dialog_to_start_rogue
      L10_2 = L6_1
      L8_2(L9_2, L10_2)
      return
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._get_recommend_level
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 * L2_2
  if L1_2 < L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._show_confirm_dialog_to_start_rogue
    L5_2 = L5_1
    L3_2(L4_2, L5_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._confirm_to_start_rogue
  L3_2(L4_2)
end
L0_1._on_btn_confirm = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_aeons_icon_click
  L1_2(L2_2)
end
L0_1._on_btn_ban = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_avatar_icon_click
  L1_2(L2_2)
end
L0_1._on_btn_team = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueNous.Entrance.RogueNousTeamMemberChooseDialog"
  L3_2 = A0_2._selected_avatars
  L4_2 = A0_2._on_select_avatars
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_team_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_avatar_icon_click = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueNous.Entrance.RogueNousPathEchoBanDialog"
  L3_2 = A0_2._cur_selected_aeon_id
  L4_2 = A0_2._selected_banned_aeons_data_list
  L5_2 = A0_2._on_select_banned_aeons
  L6_2 = A0_2
  L7_2 = "RogueNous"
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_aeons_icon_click = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_team_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  A0_2._selected_avatars = A1_2
  L2_2 = A0_2._team_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._selected_avatars
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2._selected_avatars
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2.ID
    L8_2(L9_2, L10_2)
  end
  L3_2 = G
  L3_2 = L3_2.RogueNousUtils
  L3_2 = L3_2.try_save_rouge_nous_pref_data
  L4_2 = A0_2._cur_selected_aeon_id
  L5_2 = L2_2
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.Prefs
  L6_2 = L6_2.User
  L6_2 = L6_2.RogueNousSelectedAvatars
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_select_avatars = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._selected_banned_aeons_data_list = A1_2
  L2_2 = A0_2._banned_aeons_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._selected_banned_aeons_data_list
  L2_2(L3_2, L4_2)
  L2_2 = {}
  A0_2._selected_banned_aeon_ids = L2_2
  L2_2 = pairs
  L3_2 = A0_2._selected_banned_aeons_data_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.AeonID
    L8_2 = A0_2._cur_selected_aeon_id
    if L7_2 ~= L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._selected_banned_aeon_ids
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L2_2 = G
  L2_2 = L2_2.RogueNousUtils
  L2_2 = L2_2.try_save_rouge_nous_pref_data
  L3_2 = A0_2._cur_selected_aeon_id
  L4_2 = A0_2._selected_banned_aeon_ids
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.Prefs
  L5_2 = L5_2.User
  L5_2 = L5_2.RogueNousSelectedBanAeons
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_select_banned_aeons = L10_1
return L0_1
