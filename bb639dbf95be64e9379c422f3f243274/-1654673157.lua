local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.History.Common.ActivityMonopolyHistoryItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.History.Daily.ActivityMonopolyHistoryDailyItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.ShareUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = "UIText_ActivityMonopoly_Report_Daily_Title"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ActivityMonopolyHistoryDailyTabItem"
L4_1 = G
L4_1 = L4_1.TabItem
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_share
  L4_2 = A0_2._on_btn_share
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyDailyReportSynced
  L4_2 = A0_2._on_report_synced
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SendGetDailyReportCsReq
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ButtonMutex
  L1_2 = L1_2(L2_2)
  A0_2._button_mutex = L1_2
  L1_2 = A0_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.ReleaseMutex
  L1_2(L2_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._button_mutex
  if L1_2 then
    L1_2 = A0_2._button_mutex
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    A0_2._button_mutex = nil
  end
end
L2_1._on_unload = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._share_view_callback = A1_2
  A0_2._share_view_handler = A2_2
end
L2_1.register_share_view_callback = L3_1
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
  L1_2 = L1_2.txt_tab_btn_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_tab_btn_unselected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L2_1._setup_tab_btn_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._item_datas = L1_2
  L1_2 = A0_2._item_datas
  L2_2 = A0_2._item_datas
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  L3_2 = {}
  L3_2.title = "UIText_ActivityMonopoly_Report_Daily_Transfer"
  L4_2 = L0_1.HistoryInfo
  L4_2 = L4_2.DailyAddCoin
  L3_2.count = L4_2
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._item_datas
  L2_2 = A0_2._item_datas
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  L3_2 = {}
  L3_2.title = "UIText_ActivityMonopoly_Report_Daily_Cost"
  L4_2 = L0_1.HistoryInfo
  L4_2 = L4_2.DailySubCoin
  L3_2.count = L4_2
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._item_datas
  L2_2 = A0_2._item_datas
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  L3_2 = {}
  L3_2.title = "UIText_ActivityMonopoly_Report_Daily_Actions"
  L4_2 = L0_1.HistoryInfo
  L4_2 = L4_2.DailyRollNum
  L3_2.count = L4_2
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._item_datas
  L2_2 = A0_2._item_datas
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  L3_2 = {}
  L3_2.title = "UIText_ActivityMonopoly_Report_Daily_Steps"
  L4_2 = L0_1.HistoryInfo
  L4_2 = L4_2.DailyMoveStep
  L3_2.count = L4_2
  L1_2[L2_2] = L3_2
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
  L1_2 = L1_2.txt_donated
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L0_1.HistoryInfo
  L3_2 = L3_2.DailyDonateCoin
  L4_2 = L0_1.HistoryInfo
  L4_2 = L4_2.DailyAssetFundsDonateCoin
  L3_2 = L3_2 + L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._item_datas
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L2_1._refresh_view = L3_1
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
    L7_2 = L7_2.ActivityMonopolyHistoryItemPanel
    L8_2 = G
    L8_2 = L8_2.ActivityMonopolyHistoryDailyItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._item_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_title_view
  L8_2 = L5_2.title
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_content_view
  L8_2 = nil
  L9_2 = L5_2.count
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L2_1._on_item_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_datas
  L1_2(L2_2)
  L1_2 = A0_2._state
  L2_2 = L2_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_view
    L1_2(L2_2)
  end
end
L2_1._on_report_synced = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = 0.5
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.ButtonMutex
  L1_2 = L1_2.click_mutex
  L2_2 = A0_2._button_mutex
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._do_share
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L2_1._on_btn_share = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._share_view_callback
  L3_2 = A0_2._share_view_handler
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.ShareUtils
  L1_2 = L1_2.ShareCurFrame
  L2_2 = nil
  L3_2 = nil
  L4_2 = A0_2._on_capture_finished
  L5_2 = A0_2
  L6_2 = nil
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.ShareSource
  L7_2 = L7_2.Monopoly
  L8_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L2_1._do_share = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._share_view_callback
  L3_2 = A0_2._share_view_handler
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_capture_finished = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
end
L2_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1.get_short_cut_hint = L3_1
return L2_1
