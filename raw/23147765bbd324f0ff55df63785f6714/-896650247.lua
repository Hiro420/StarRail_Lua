local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumTurnResultDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumTurnResultItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumTurnResultItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumTurnResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MuseumModule
L2_1 = "MuseumActivity_ResultFundSec"
L3_1 = "MuseumExhibitionResultPage_Fadein_Later"
L4_1 = 0.6
L5_1 = 2
L6_1 = "Begin_Fill_Anim"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumTurnResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_special_above_dialog = true
  A0_2._is_can_close = false
  L1_2 = {}
  A0_2._result_table = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L2_1
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.FloatValue
  A0_2._cur_fund_anim_duration = L1_2
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.MuseumTurnResultCache
  A0_2._museum_turn_result = L1_2
  L1_2 = L1_1.MuseumData
  A0_2._museum_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._play_second_fade_in
  L4_2 = 0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._count_down_timer = L1_2
end
L0_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_result_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_result_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_animation_event_str_notify
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2
end
L0_1._add_handlers = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.HaveHidePhaseMission
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.TryTriggerTutorialMissionPerformance
    L1_2(L2_2)
  end
end
L0_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._museum_data
  L1_2 = L1_2.Row
  L2_2 = L1_1.IsAlreadyFinish
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.renew_point_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_all_finish_view
    L2_2(L3_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.renew_point_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_show_preview
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.renew_point_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_show_max_bar
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.renew_point_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_added_data
    L4_2 = A0_2._museum_turn_result
    L4_2 = L4_2.ResultPropertyData
    L4_2 = L4_2.AddCurNum
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.renew_point_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._museum_turn_result
    L4_2 = L4_2.ResultPropertyData
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.phase_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_phase_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.PhaseName
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_total_renew_point
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_result
  L2_2(L3_2)
end
L0_1._refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_total_renew_point
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._museum_turn_result
  L3_2 = L3_2.ResultPropertyData
  L3_2 = L3_2.AddCurNum
  L1_2(L2_2, L3_2)
end
L0_1._setup_total_renew_point = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._result_table = L1_2
  L1_2 = 0
  L2_2 = A0_2._museum_turn_result
  L2_2 = L2_2.AreasRenewPoints
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._museum_data
    L5_2 = L5_2.MuseumAreaDatas
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._museum_turn_result
    L6_2 = L6_2.AreasRenewPoints
    L6_2 = L6_2[L4_2]
    L7_2 = L5_2.IsLock
    if not L7_2 then
      L8_2 = A0_2
      L7_2 = A0_2._add_result_data
      L9_2 = L5_2.Row
      L9_2 = L9_2.MuseumAreaName
      L10_2 = L6_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_result_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._result_table
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_result_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_result_list
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeInWithAutoAnimTime
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_list_fade_in_time
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block
  L4_2 = L5_1
  L4_2 = L4_2 + L1_2
  L5_2 = L5_1
  L5_2 = L5_2 + L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.set_interval
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L0_1._setup_result = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._result_table
  L1_2 = #L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_result_list
  L2_2 = L2_2.FadeInOffset
  L1_2 = L1_2 * L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_result_list
  L2_2 = L2_2.FadeInLength
  L1_2 = L1_2 + L2_2
  return L1_2
end
L0_1._get_list_fade_in_time = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L0_1._play_second_fade_in = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = {}
  L3_2.Name = A1_2
  L3_2.RenewPoint = A2_2
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._result_table
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._add_result_data = L7_1
function L7_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.MuseumTurnResultItemPanel
    L8_2 = G
    L8_2 = L8_2.MuseumTurnResultItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._result_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A2_2 + 1
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_result_changed = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2.__name
  L3_2 = A0_2.__name
  L4_2 = "CloseTurnResultBtn"
  L5_2 = A0_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_close_click = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L6_1
  if A1_2 == L2_2 then
    L2_2 = A0_2._museum_turn_result
    L2_2 = L2_2.ResultPropertyData
    L3_2 = L2_2.CurNum
    L4_2 = L2_2.AddCurNum
    L3_2 = L3_2 - L4_2
    L4_2 = L2_2.MaxNum
    L3_2 = L3_2 / L4_2
    L4_2 = L2_2.CurNum
    L5_2 = L2_2.MaxNum
    L4_2 = L4_2 / L5_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.fill_animation
    L6_2 = L5_2
    L5_2 = L5_2.Play
    L7_2 = L3_2
    L8_2 = L4_2
    L9_2 = L4_1
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1._on_animation_event_str_notify = L7_1
return L0_1
