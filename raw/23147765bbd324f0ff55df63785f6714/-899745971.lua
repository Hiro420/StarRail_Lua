local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.RecommendLineupListDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.Widget.ChallengeRecommendLineupPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RecommendLineupListDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueCommonExcelTable
L1_1 = L1_1.GetData
L2_1 = "Challenge_Lineup_Recommend_CD"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.UintValue
L1_1 = L1_1 + 1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RecommendLineupListDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._show_btn_refresh = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._data = A1_2
  L4_2 = L1_1
  A0_2._countdown = L4_2
  A0_2._can_refresh = false
  A0_2._title_text_id = A2_2
  A0_2._report_owner_name = A3_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._show_btn_refresh = false
end
L0_1.disable_refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.lineup_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_get_lineup_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._show_btn_refresh
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_refresh_btn
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = L1_1
    L4_2 = A0_2._on_btn_refresh
    L5_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_refresh_btn
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._can_refresh
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.remove_tick
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._countdown
  L2_2 = L2_2 - A1_2
  A0_2._countdown = L2_2
  L2_2 = A0_2._countdown
  if L2_2 <= 0 then
    A0_2._can_refresh = true
  end
end
L0_1._on_tick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._title_text_id
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._data
  L3_2 = L2_2
  L2_2 = L2_2.GetRecommendLineupList
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._lineup_list = L1_2
  L1_2 = A0_2._lineup_list
  L1_2 = #L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 == 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 0 < L1_2
  L2_2(L3_2, L4_2)
  if 0 < L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.lineup_list
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = L1_2
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.lineup_list
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
  end
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._lineup_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.create_short_cut_hint_panel
    L4_2 = 171
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.create_short_cut_hint_panel
    L4_2 = 1
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_short_cut_hint = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ChallengeRecommendLineupPanel
    L8_2 = G
    L8_2 = L8_2.ChallengeRecommendLineupPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_click_lineup
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_select_callback
    L7_2 = A0_2._on_lineup_selected
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._lineup_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_get_lineup_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._can_refresh
  if not L1_2 then
    A0_2._can_refresh = true
    return
  end
  L1_2 = A0_2._data
  L2_2 = L1_2
  L1_2 = L1_2.Refresh
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaAction
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = G
    L0_3 = L0_3.StrExt
    L0_3 = L0_3.IsNullOrEmpty
    L1_3 = A0_2._report_owner_name
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.SDKLuaReportAdapter
      L0_3 = L0_3.ReportUIButtonClick
      L1_3 = A0_2._report_owner_name
      L2_3 = "FriendChallengeTeamPanel"
      L3_3 = "ChallengeTeamRefresh"
      L4_3 = A0_2.guid
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh
    L0_3(L1_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.lineup_list
    L1_3 = L0_3
    L0_3 = L0_3.MovePanelToItemIndex
    L2_3 = 0
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.force_set_first_navigation_target
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_refresh = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._data
  L4_2 = L3_2
  L3_2 = L3_2.GetLineupDetailInfoPromise
  L5_2 = A1_2.UID
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L3_2 = L3_2.ThenLuaActionOneParam
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = A0_2._team_info_provide
    if L1_3 == nil then
      L1_3 = G
      L1_3 = L1_3.new
      L2_3 = "Ui.Avatar.EmptyAvatarTeamInfoProvide"
      L1_3 = L1_3(L2_3)
      A0_2._team_info_provide = L1_3
    end
    L1_3 = G
    L1_3 = L1_3.Utils
    L1_3 = L1_3.create_lua_table_from_cs_list
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = G
    L2_3 = L2_3.new
    L3_3 = "Ui.Avatar.AvatarMainPage"
    L2_3 = L2_3(L3_3)
    L3_3 = A0_3[0]
    L4_3 = A2_2
    if L4_3 ~= nil then
      L4_3 = ipairs
      L5_3 = L1_3
      L4_3, L5_3, L6_3 = L4_3(L5_3)
      for L7_3, L8_3 in L4_3, L5_3, L6_3 do
        L9_3 = L8_3.RealID
        L10_3 = A2_2
        if L9_3 == L10_3 then
          L3_3 = L8_3
          break
        end
      end
    end
    L5_3 = L2_3
    L4_3 = L2_3.init
    L6_3 = nil
    L7_3 = nil
    L8_3 = A0_2._team_info_provide
    L9_3 = L3_3
    L10_3 = true
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    L5_3 = L2_3
    L4_3 = L2_3.set_avatar_data_list
    L6_3 = L1_3
    L4_3(L5_3, L6_3)
    L5_3 = L2_3
    L4_3 = L2_3.async_show
    L4_3(L5_3)
  end
  L3_2(L4_2, L5_2)
end
L0_1._on_click_lineup = L2_1
function L2_1(A0_2, A1_2)
  A0_2._selected_lineup_data = A1_2
end
L0_1._on_lineup_selected = L2_1
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
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.lineup_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
end
L0_1.get_first_selected_object = L2_1
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
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._selected_lineup_data
  if L2_2 == nil then
    return
  end
  if A1_2 == "Menu_UnchangeY" then
    L3_2 = A0_2
    L2_2 = A0_2._on_click_lineup
    L4_2 = A0_2._selected_lineup_data
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_in_control_action_click = L2_1
return L0_1
