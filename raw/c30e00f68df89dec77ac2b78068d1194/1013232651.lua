local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.History.ActivityMonopolyHistoryRecordDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.History.Common.ActivityMonopolyHistoryItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.History.Common.ActivityMonopolyHistoryItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityMonopolyHistoryRecordDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyHistoryRecordDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveBlack
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_datas
  L1_2(L2_2)
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._datas = L1_2
  L1_2 = L0_1.HistoryInfo
  L1_2 = L1_2.ServerOptionRatio
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
    L2_2 = {}
    L3_2 = L1_2.Current
    L3_2 = L3_2.Key
    L3_2 = L3_2.Key
    L2_2.option_id = L3_2
    L3_2 = L1_2.Current
    L3_2 = L3_2.Key
    L3_2 = L3_2.Value
    L2_2.event_id = L3_2
    L3_2 = L1_2.Current
    L3_2 = L3_2.Value
    L3_2 = L3_2 / 10
    L2_2.server_ratio = L3_2
    L3_2 = A0_2._datas
    L4_2 = A0_2._datas
    L4_2 = #L4_2
    L4_2 = L4_2 + 1
    L3_2[L4_2] = L2_2
  end
end
L1_1._update_datas = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 33
  L1_2(L2_2, L3_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SendGetMbtiReportCsReq
  L1_2(L2_2)
end
L1_1._on_unload = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._datas
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L1_1._refresh_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ActivityMonopolyHistoryItemPanel
    L8_2 = G
    L8_2 = L8_2.ActivityMonopolyHistoryItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.MonopolyEventOptionExcelTable
  L6_2 = L6_2.GetData
  L7_2 = L5_2.option_id
  L6_2 = L6_2(L7_2)
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.MonopolyEventConfigExcelTable
  L7_2 = L7_2.GetData
  L8_2 = L5_2.event_id
  L7_2 = L7_2(L8_2)
  L9_2 = L4_2
  L8_2 = L4_2.setup_title_view
  L10_2 = L7_2.EventName
  L11_2 = L6_2.OptionContent
  L12_2 = nil
  L13_2 = "UIText_ActivityMonopoly_Report_Result_Detail_Optional_Desc"
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = L4_2
  L8_2 = L4_2.setup_content_view
  L10_2 = "UIText_ActivityMonopoly_Report_Result_Detail_Optional_Num"
  L11_2 = L5_2.server_ratio
  L8_2(L9_2, L10_2, L11_2)
  return L3_2
end
L1_1._on_item_change = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.get_zoom_navigation_target
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_short_cut_hint
  L3_2(L4_2)
end
L1_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._refresh_short_cut_hint = L2_1
return L1_1
