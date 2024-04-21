local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.History.Report.ActivityMonopolyHistoryReportResultBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.History.Report.ActivityMonopolyHistoryReportResultBtnPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = 3
L2_1 = "UIText_ActivityMonopoly_Report_Result_Title"
L3_1 = "MonopolyMBTITestResultDialog_Switch_MBTI"
L4_1 = "MonopolyMBTITestResultDialog_Press"
L5_1 = "MonopolyMBTITestResultDialog_Unlock"
L6_1 = 2
L7_1 = 0.2
L8_1 = G
L8_1 = L8_1.Class
L9_1 = "ActivityMonopolyHistoryReportTabItem"
L10_1 = G
L10_1 = L10_1.TabItem
L8_1 = L8_1(L9_1, L10_1)
function L9_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._report_ids = L1_2
  A0_2._current_report_id = 0
end
L8_1.ctor = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_down_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_finish
  L4_2 = A0_2._on_btn_finish_down
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_over_short_click_time
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_finish
  L4_2 = A0_2._on_btn_finish_press_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_finish
  L4_2 = A0_2._on_btn_finish
  L5_2 = A0_2
  L6_2 = L6_1
  L7_2 = L7_1
  L6_2 = L6_2 + L7_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_release
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_finish
  L4_2 = A0_2._on_btn_finish_release
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._finish_timer
    if L0_3 ~= nil then
      L0_3 = A0_2._finish_timer
      L1_3 = L0_3
      L0_3 = L0_3.reset
      L0_3(L1_3)
      L0_3 = A0_2._finish_timer
      L1_3 = L0_3
      L0_3 = L0_3.stop
      L0_3(L1_3)
    end
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_finish_timer
    L0_3(L1_3)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim_finish
  L5_2 = L4_2
  L4_2 = L4_2.GetClip
  L6_2 = L5_1
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.length
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._finish_timer = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2.register_available_callback
  L3_2 = A0_2._on_btn_reward
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_history
  L4_2 = A0_2._on_btn_history
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_share
  L4_2 = A0_2._on_btn_share
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyMBTISynced
  L4_2 = A0_2._on_report_synced
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyMBTIFinished
  L4_2 = A0_2._on_report_finished
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyMBTIRewardTaken
  L4_2 = A0_2._on_reward_taken
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SendGetMbtiReportCsReq
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
L8_1._on_load = L9_1
function L9_1(A0_2)
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
L8_1._on_unload = L9_1
function L9_1(A0_2, A1_2, A2_2)
  A0_2._share_view_callback = A1_2
  A0_2._share_view_handler = A2_2
end
L8_1.register_share_view_callback = L9_1
function L9_1(A0_2, A1_2, A2_2)
  A0_2._figure_callback = A1_2
  A0_2._figure_handler = A2_2
end
L8_1.register_figure_callback = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_btn_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_datas
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityMonopolyMBTIReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_btn_reward_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L8_1._on_added = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_tab_btn_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_tab_btn_unselected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L8_1._setup_tab_btn_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1.HistoryInfo
  L3_2 = L2_2
  L2_2 = L2_2.GetMBTIResultIDs
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._report_ids = L1_2
  L1_2 = A0_2._report_ids
  L1_2 = L1_2[1]
  if not L1_2 then
    L1_2 = 0
  end
  A0_2._current_report_id = L1_2
end
L8_1._update_datas = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L8_1._on_select = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1.HistoryInfo
  L1_2 = L1_2.MBTIFinished
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.nodes_doing
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = not L1_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.nodes_finished
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = L1_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_history
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_doing_view
    L2_2(L3_2)
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.invoke_callback
    L3_2 = A0_2._figure_callback
    L4_2 = A0_2._figure_handler
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._refresh_report_detail
    L2_2(L3_2)
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.invoke_callback
    L3_2 = A0_2._figure_callback
    L4_2 = A0_2._figure_handler
    L5_2 = A0_2._current_report_id
    L2_2(L3_2, L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L5_2 = A0_2
  L4_2 = A0_2.get_short_cut_hint
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L8_1._refresh_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = L0_1.HistoryInfo
  L1_2 = L1_2.MBTIMaxProgress
  L2_2 = L0_1.HistoryInfo
  L2_2 = L2_2.MBTIProgress
  L3_2 = L0_1.EventInfo
  L3_2 = L3_2.TotalMBTIEventCount
  L4_2 = L0_1.EventInfo
  L4_2 = L4_2.FinishMBTIEventCount
  L5_2 = A0_2._binder
  L5_2 = L5_2.bar_progress
  L6_2 = L2_2 / L1_2
  L5_2.value = L6_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_progress
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = "UIText_ActivityMonopoly_Report_Result_Progress"
  L8_2 = L4_2
  L9_2 = L3_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = L1_2 <= L2_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_btn_finish
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.ConstValueClientExcelTable
  L6_2 = L6_2.GetData
  L7_2 = "Monopoly_Activity_MBTI_ReportReward"
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.Value
  L6_2 = L6_2.UintValue
  L7_2 = G
  L7_2 = L7_2.RewardUtils
  L7_2 = L7_2.CreateRewardItemTableSorted
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = {}
  end
  L8_2 = L7_2[1]
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.ItemExcelTable
  L9_2 = L9_2.GetData
  L10_2 = L8_2.ItemID
  L9_2 = L9_2(L10_2)
  L11_2 = A0_2
  L10_2 = A0_2._async_load_sprite_to
  L12_2 = A0_2._binder
  L12_2 = L12_2.img_reward_icon
  L13_2 = L9_2.ItemIconPath
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = A0_2._binder
  L10_2 = L10_2.txt_reward_num
  L11_2 = L10_2
  L10_2 = L10_2.SafeSetText
  L12_2 = L8_2.Count
  L10_2(L11_2, L12_2)
end
L8_1._refresh_doing_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MonopolyReportResultExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._current_report_id
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img
  L5_2 = L1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.Desc
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.DescDetail
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_reward
  L2_2(L3_2)
end
L8_1._refresh_report_detail = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "Monopoly_Activity_MBTI_ReportReward"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.UintValue
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward
  L3_2 = L2_2
  L2_2 = L2_2.setup_view_by_reward
  L4_2 = L1_2
  L5_2 = L0_1.HistoryInfo
  L5_2 = L5_2.MBTIRewardTaken
  L5_2 = not L5_2
  L6_2 = L0_1.HistoryInfo
  L6_2 = L6_2.MBTIRewardTaken
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward
  L3_2 = L2_2
  L2_2 = L2_2.set_reddot
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateConfigIDList
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2._config_id_list = L2_2
  L2_2 = L0_1.HistoryInfo
  L2_2 = L2_2.MBTIRewardTaken
  if not L2_2 then
    L2_2 = "Menu_UnchangeX"
    if L2_2 then
      goto lbl_38
    end
  end
  L2_2 = "Menu_UnchangeRightStickButton"
  ::lbl_38::
  L3_2 = A0_2._binder
  L3_2 = L3_2.in_control_btn_reward
  L4_2 = L3_2
  L3_2 = L3_2.SetActionName
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.in_control_tip_reward
  L4_2 = L3_2
  L3_2 = L3_2.SetInControlTipKey
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L8_1._refresh_reward = L9_1
function L9_1(A0_2)
  local L1_2
  A0_2._long_press_start = false
  A0_2._long_press_success = false
  A0_2._pressing_time = 0
end
L8_1._on_btn_finish_down = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.HistoryInfo
  L1_2 = L1_2.MBTIFinished
  if L1_2 then
    return
  end
  A0_2._long_press_start = true
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_finish
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  A0_2._pressing_time = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tick
  L2_2 = L1_2
  L1_2 = L1_2.SetTickCallback
  L3_2 = A0_2._on_btn_finish_pressing
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L8_1._on_btn_finish_press_start = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1.HistoryInfo
  L2_2 = L2_2.MBTIFinished
  if L2_2 then
    return
  end
  L2_2 = A0_2._long_press_start
  if L2_2 then
    L2_2 = A0_2._pressing_time
    L2_2 = L2_2 + A1_2
    A0_2._pressing_time = L2_2
  else
    L2_2 = math
    L2_2 = L2_2.max
    L3_2 = 0
    L4_2 = A0_2._pressing_time
    L4_2 = L4_2 - A1_2
    L2_2 = L2_2(L3_2, L4_2)
    A0_2._pressing_time = L2_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.bar_pressing
  L3_2 = A0_2._pressing_time
  L4_2 = L6_1
  L3_2 = L3_2 / L4_2
  L2_2.fillAmount = L3_2
  L2_2 = A0_2._pressing_time
  L3_2 = L6_1
  if not (L2_2 >= L3_2) then
    L2_2 = A0_2._pressing_time
    if not (L2_2 <= 0) then
      goto lbl_37
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_tick
  L3_2 = L2_2
  L2_2 = L2_2.ClearTickCallback
  L2_2(L3_2)
  ::lbl_37::
end
L8_1._on_btn_finish_pressing = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.HistoryInfo
  L1_2 = L1_2.MBTIFinished
  if L1_2 then
    return
  end
  A0_2._long_press_start = false
  L1_2 = A0_2._long_press_success
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayToBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_finish
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.mono_tick
    L2_2 = L1_2
    L1_2 = L1_2.ClearTickCallback
    L1_2(L2_2)
  end
end
L8_1._on_btn_finish_release = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.HistoryInfo
  L1_2 = L1_2.MBTIFinished
  if L1_2 then
    return
  end
  A0_2._long_press_success = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tick
  L2_2 = L1_2
  L1_2 = L1_2.ClearTickCallback
  L1_2(L2_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SendClickMbtiReportCsReq
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_finish
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._finish_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._finish_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L8_1._on_btn_finish = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._update_datas
  L1_2(L2_2)
  L1_2 = L0_1.HistoryInfo
  L1_2 = L1_2.MBTIFinished
  if L1_2 then
    L2_2 = A0_2._current_report_id
    if L2_2 ~= 0 then
      goto lbl_12
    end
  end
  A0_2._need_finish = true
  do return end
  ::lbl_12::
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_history
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_report_detail
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._figure_callback
  L4_2 = A0_2._figure_handler
  L5_2 = A0_2._current_report_id
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L5_2 = A0_2
  L4_2 = A0_2.get_short_cut_hint
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.nodes_doing
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = true
    L7_2(L8_2, L9_2)
  end
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.nodes_finished
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = true
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.switch_figure
  L2_2(L3_2)
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.play_root_anim
  L4_2 = L3_1
  L2_2(L3_2, L4_2)
end
L8_1._on_finish_timer = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._need_finish
  if L1_2 then
    A0_2._need_finish = false
    L2_2 = A0_2
    L1_2 = A0_2._on_finish_timer
    L1_2(L2_2)
  end
end
L8_1._on_report_finished = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.LNNPNLKABOJ
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SendGetMbtiReportRewardCsReq
  L1_2(L2_2)
end
L8_1._on_btn_reward = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.HistoryInfo
  L1_2 = L1_2.ServerOptionRatio
  L1_2 = L1_2.Count
  if L1_2 == 0 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_ActivityMonopoly_Report_Result_Detail_BanTips"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityMonopoly.History.ActivityMonopolyHistoryRecordDialog"
  L1_2(L2_2)
end
L8_1._on_btn_history = L9_1
function L9_1(A0_2)
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
L8_1._on_btn_share = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_share_view
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.ShareUtils
  L1_2 = L1_2.ShareCurFrame
  L2_2 = nil
  L3_2 = A0_2._on_capture_finished
  L4_2 = nil
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
L8_1._do_share = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_share_view
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L8_1._on_capture_finished = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1.HistoryInfo
  L2_2 = L2_2.MBTIFinished
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_history
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 or L5_2
  if L2_2 then
    L5_2 = not A1_2
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_share
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._owner
  L3_2 = L3_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._owner
  L3_2 = L3_2._binder
  L3_2 = L3_2.node_page_info
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_reward
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = not A1_2
  L3_2(L4_2, L5_2)
end
L8_1._setup_share_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_datas
  L1_2(L2_2)
  L1_2 = A0_2._state
  L2_2 = L8_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_view
    L1_2(L2_2)
  end
end
L8_1._on_report_synced = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_reward
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_show
  L4_2 = "Ui.Common.RewardDialog"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L8_1._on_reward_taken = L9_1
function L9_1(A0_2)
  local L1_2
end
L8_1.get_first_selected_object = L9_1
function L9_1(A0_2, A1_2)
end
L8_1._on_enter_zoom = L9_1
function L9_1(A0_2)
  local L1_2
  L1_2 = L0_1.HistoryInfo
  L1_2 = L1_2.MBTIFinished
  if L1_2 then
    L1_2 = 33
    return L1_2
  else
    L1_2 = 1
    return L1_2
  end
end
L8_1.get_short_cut_hint = L9_1
return L8_1
