local L0_1, L1_1, L2_1, L3_1, L4_1
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
L1_1 = "UIText_ActivityMonopoly_Report_Result_Detail_Optional"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ActivityMonopolyHistoryRecordServerTabItem"
L4_1 = G
L4_1 = L4_1.TabItem
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_btn_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_datas
  L1_2(L2_2)
end
L2_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_tab_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L2_1._setup_tab_btn_view = L3_1
function L3_1(A0_2)
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
L2_1._update_datas = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L2_1._on_select = L3_1
function L3_1(A0_2)
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
L2_1._refresh_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
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
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L4_2
  L8_2 = L4_2.setup_content_view
  L10_2 = "UIText_ActivityMonopoly_Report_Result_Detail_Optional_Num"
  L11_2 = L5_2.server_ratio
  L8_2(L9_2, L10_2, L11_2)
  return L3_2
end
L2_1._on_item_change = L3_1
return L2_1
