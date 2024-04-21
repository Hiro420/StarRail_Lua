local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Activity.FindTrotter.FindTrotterRecordDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FindTrotter.Widget.FindTrotterOrderPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FindTrotter.Widget.FindTrotterOrderPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.QuestModule
L3_1 = 1
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "FindTrotterRecordDialog"
L6_1 = G
L6_1 = L6_1.UIController
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FindTrotterRecordDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  A0_2._id_played = L1_2
end
L4_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._disable_go = false
  A0_2._force_close = false
  if A1_2 ~= nil then
    L2_2 = tonumber
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2 == 1
    A0_2._disable_go = L2_2
    L2_2 = tonumber
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2 == 2
    A0_2._force_close = L2_2
  end
end
L4_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_final
  L4_2 = A0_2._on_btn_final
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = A0_2._setup_final_reward_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TakenMainMission
  L4_2 = A0_2._refresh_record_view
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_items
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_reddot
  L1_2(L2_2)
end
L4_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetFindTrotterActivityData
  L1_2 = L1_2(L2_2)
  A0_2._activity_data = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._activity_data
  L3_2 = L2_2
  L2_2 = L2_2.GetTotalTrotterDatas
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._record_rows = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
  L1_2 = A0_2._activity_data
  L2_2 = L1_2
  L1_2 = L1_2.DataPrepared
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaAction
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._do_setup_view
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._disable_go
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._add_count_down_timer
    function L3_2()
      local L0_3, L1_3
      A0_2._protect_end = true
    end
    L4_2 = L3_1
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._count_down_timer = L1_2
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.start
    L1_2(L2_2)
  end
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityFindTrotterReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot_final
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L4_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
  L1_2 = ipairs
  L2_2 = A0_2._record_rows
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.FindTrotterOrderPanel
    L9_2 = G
    L9_2 = L9_2.FindTrotterOrderPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L6_2.button_prefab_index = 0
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_tab_control
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._tab_control
    L8_2 = L7_2
    L7_2 = L7_2.add_item
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
end
L4_1._init_tab_control = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_final_reward_view
  L1_2(L2_2)
  L1_2 = A0_2._activity_data
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentCount
  L1_2 = L1_2(L2_2)
  A0_2._unlocked_count = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 1
  L5_2 = A0_2._unlocked_count
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L4_1._do_setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TitleName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer_total
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.EndTimeDate
  L4_2 = A0_2.exit
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L4_1._setup_info_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._record_rows
  L2_2 = L2_2[A1_2]
  A0_2._current_row = L2_2
  L2_2 = A0_2._current_row
  L2_2 = L2_2.Order
  L3_2 = A0_2._unlocked_count
  L2_2 = L2_2 > L3_2
  A0_2._is_locked = L2_2
  L2_2 = A0_2._current_row
  L2_2 = L2_2.Order
  L3_2 = A0_2._unlocked_count
  L2_2 = A0_2._current_row
  L2_2 = L2_2.Order
  L3_2 = A0_2._unlocked_count
  L2_2 = L2_2 < L3_2 or L2_2
  A0_2._is_closed = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_switch
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = "TreasureTrotterRecordPanel_Switch"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_record_view
  L2_2(L3_2)
end
L4_1._on_tab_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._activity_data
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentCount
  L1_2 = L1_2(L2_2)
  A0_2._unlocked_count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_record_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_record_reward_view
  L1_2(L2_2)
end
L4_1._refresh_record_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._current_row
  L1_2 = L1_2.Order
  L2_2 = A0_2._unlocked_count
  L1_2 = L1_2 > L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_order
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Number_0"
  L5_2 = A0_2._current_row
  L5_2 = L5_2.Order
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_locked
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_unlocked
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._current_row
    L2_2 = L2_2.Order
    L3_2 = A0_2._unlocked_count
    L3_2 = L3_2 + 1
    L2_2 = L2_2 == L3_2
    L3_2 = A0_2._activity_data
    L4_2 = L3_2
    L3_2 = L3_2.GetTrotterScheduleData
    L5_2 = A0_2._current_row
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L3_2
    L4_2 = L3_2.IsInSchedule
    L4_2 = L4_2(L5_2)
    L4_2 = L3_2 ~= nil and L4_2
    L5_2 = not L4_2
    if L4_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.txt_hint
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetTextID
      L8_2 = "UIText_Activity_FindTrotter_Next_UnlockByTime"
      L6_2(L7_2, L8_2)
    elseif L5_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.txt_hint
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetTextID
      L8_2 = "UIText_Activity_FindTrotter_Next_UnlockByMission"
      L6_2(L7_2, L8_2)
    else
      L6_2 = A0_2._binder
      L6_2 = L6_2.txt_hint
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetTextID
      L8_2 = "UIText_Activity_FindTrotter_UnExplored"
      L6_2(L7_2, L8_2)
    end
    L6_2 = A0_2._binder
    L6_2 = L6_2.remain_timer_current
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
    if L4_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.remain_timer_current
      L7_2 = L6_2
      L6_2 = L6_2.SetTargetTime
      L8_2 = L3_2.BeginTimeDate
      L9_2 = A0_2._refresh_record_view
      L10_2 = A0_2
      L11_2 = 2
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    end
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_closed
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_go
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
  else
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.GetSubMissionState
    L4_2 = A0_2._current_row
    L4_2 = L4_2.StartSubMissionID
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.SubMissionState
    L3_2 = L3_2.Finish
    L2_2 = L2_2 == L3_2
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.GetSubMissionState
    L5_2 = A0_2._current_row
    L5_2 = L5_2.FinishSubMissionID
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.SubMissionState
    L4_2 = L4_2.Finish
    L3_2 = L3_2 == L4_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_direction
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    if L2_2 then
      L6_2 = A0_2._current_row
      L6_2 = L6_2.Aim02
      if L6_2 then
        goto lbl_135
      end
    end
    L6_2 = A0_2._current_row
    L6_2 = L6_2.Aim01
    ::lbl_135::
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_result
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    if L3_2 then
      L6_2 = A0_2._current_row
      L6_2 = L6_2.Result02
      if L6_2 then
        goto lbl_147
      end
    end
    L6_2 = A0_2._current_row
    L6_2 = L6_2.Result01
    ::lbl_147::
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_go
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = A0_2._disable_go
    if L6_2 then
      L6_2 = "UIText_Activity_FindTrotter_Close"
      if L6_2 then
        goto lbl_158
      end
    end
    L6_2 = "UIText_Activity_FindTrotter_Goto"
    ::lbl_158::
    L4_2(L5_2, L6_2)
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.TryGetMainMissionData
    L6_2 = A0_2._current_row
    L6_2 = L6_2.MissionID
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2.IsFinish
    L5_2 = L4_2 ~= nil and L5_2
    L6_2 = A0_2._current_row
    L6_2 = L6_2.Order
    L7_2 = A0_2._unlocked_count
    L6_2 = L6_2 < L7_2 or L6_2
    L7_2 = not L6_2 and L7_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_closed
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = not L7_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_go
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    if not L7_2 then
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.Prefs
      L8_2 = L8_2.User
      L8_2 = L8_2.ActivityFindTrotterToPlayMissionIDs
      L9_2 = A0_2._current_row
      L9_2 = L9_2.MissionID
      L11_2 = L8_2
      L10_2 = L8_2.Contains
      L12_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2)
      if not L10_2 then
        L10_2 = A0_2._current_row
        L10_2 = L10_2.Order
        L11_2 = A0_2._unlocked_count
        L10_2 = L10_2 == L11_2
      end
      ::lbl_225::
      if L10_2 then
        L11_2 = CS
        L11_2 = L11_2.RPG
        L11_2 = L11_2.Client
        L11_2 = L11_2.UIAnimationUtils
        L11_2 = L11_2.PlayFromBegin
        L12_2 = A0_2._binder
        L12_2 = L12_2.anim_finish
        L13_2 = "TreasureTrotterFinishFadeIn"
        L11_2(L12_2, L13_2)
        L11_2 = A0_2._id_played
        L11_2[L9_2] = true
      else
        L11_2 = CS
        L11_2 = L11_2.RPG
        L11_2 = L11_2.Client
        L11_2 = L11_2.UIAnimationUtils
        L11_2 = L11_2.PlayFromBegin
        L12_2 = A0_2._binder
        L12_2 = L12_2.anim_finish
        L13_2 = "TreasureTrotterFinishDefault"
        L11_2(L12_2, L13_2)
      end
      L12_2 = L8_2
      L11_2 = L8_2.Remove
      L13_2 = L9_2
      L11_2(L12_2, L13_2)
    end
  end
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "ActivityFindTrotterMission"
  L5_2 = nil
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.reddot_go
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L4_1._refresh_record_info_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._current_row
  L1_2 = L1_2.RewardQuestID
  A0_2._quest_id = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.QuestModule
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2._quest_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2 ~= nil
  A0_2._reward_taken = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.QuestDataExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._current_row
  L3_2 = L3_2.RewardQuestID
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.CreateRewardItemTableSorted
  L4_2 = L2_2.RewardID
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = {}
  end
  A0_2._reward_items = L3_2
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.CreateConfigIDList
  L4_2 = L2_2.RewardID
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = {}
  end
  A0_2._config_id_list = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_items
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._reward_items
  L5_2 = #L5_2
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_items
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
end
L4_1._refresh_record_reward_view = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.RewardItemIconLite
  L8_2 = G
  L8_2 = L8_2.RewardItemIconLiteBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L5_2 = A0_2._reward_items
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ItemID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2.Count
  L9_2 = nil
  L10_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_attachment_getted
  L8_2 = A0_2._reward_taken
  L6_2(L7_2, L8_2)
  return L3_2
end
L4_1._on_item_changed = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._activity_data
  L2_2 = L1_2
  L1_2 = L1_2.IsFinalRewardTaken
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_final
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_control_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_taken
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.FinalQuestID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_finished
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  if L2_2 ~= nil then
    L5_2 = L2_2.Progress
    if L5_2 then
      goto lbl_33
    end
  end
  L5_2 = 0
  ::lbl_33::
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_total
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  if L2_2 ~= nil then
    L5_2 = L2_2.TotalProgress
    if L5_2 then
      goto lbl_43
    end
  end
  L5_2 = 0
  ::lbl_43::
  L3_2(L4_2, L5_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.DataRow
    if L3_2 then
      goto lbl_57
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.QuestDataExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.FinalQuestID
  L3_2 = L3_2(L4_2)
  ::lbl_57::
  L4_2 = L3_2.RewardID
  A0_2._final_reward_id = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_final
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.QuestTitle
  L4_2(L5_2, L6_2)
end
L4_1._setup_final_reward_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._disable_go
  if L1_2 then
    L1_2 = A0_2._protect_end
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.exit
      L1_2(L2_2)
    end
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._remove_reddot
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.Goto
  L2_2 = 700
  L3_2 = {}
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MainMissionType
  L4_2 = L4_2.None
  L4_2 = #L4_2
  L5_2 = A0_2._current_row
  L5_2 = L5_2.MissionID
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L4_1._on_btn_go = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  if L1_2 ~= nil then
    L2_2 = L1_2.ActivityFindTrotterNewMissionIDs
    if L2_2 ~= nil then
      L2_2 = L1_2.ActivityFindTrotterNewMissionIDs
      L3_2 = L2_2
      L2_2 = L2_2.Remove
      L4_2 = A0_2._current_row
      L4_2 = L4_2.MissionID
      L2_2(L3_2, L4_2)
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.ActivityForceRefreshRedDot
      L2_2(L3_2)
    end
  end
end
L4_1._remove_reddot = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._activity_data
  L2_2 = L1_2
  L1_2 = L1_2.IsFinalRewardAvailable
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._activity_data
    L2_2 = L1_2
    L1_2 = L1_2.TakeFinalReward
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.RewardUtils
    L1_2 = L1_2.CreateConfigIDList
    L2_2 = A0_2._final_reward_id
    L1_2 = L1_2(L2_2)
    L2_2 = {}
    L2_2.items = L1_2
    L3_2 = G
    L3_2 = L3_2.InventoryUtils
    L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
    L4_2 = L2_2
    L3_2(L4_2)
  end
end
L4_1._on_btn_final = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_final_reward_view
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
end
L4_1._on_quest_get_reward = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_prev
    L1_2(L2_2)
  end
end
L4_1._select_prev = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_next
    L1_2(L2_2)
  end
end
L4_1._select_next = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L4_1._on_in_control_action_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = {}
    L2_2 = A0_2._config_id_list
    L1_2.items = L2_2
    L2_2 = G
    L2_2 = L2_2.InventoryUtils
    L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
    L3_2 = L1_2
    L2_2(L3_2)
  end
end
L4_1._on_left_stick_button_click = L5_1
return L4_1
