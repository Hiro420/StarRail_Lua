local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Maze.MazeTeamRestDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RemainTimePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RemainTimePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeTeamRestDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "#ffffff"
L2_1 = "#9e2830"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MazeTeamRestDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueCommonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "Maze_Recover_Refresh_Times"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.IntValue
  A0_2._total_times = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueCommonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "Maze_Recover_Refresh_CD"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.IntValue
  A0_2._refresh_cd = L1_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.clear_cur_selected_object
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_valid_data
  L1_2, L2_2 = L1_2(L2_2)
  A0_2._refresh_time = L2_2
  A0_2._times = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_left_time_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._times
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_total_time_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._total_times
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._times
  L2_2 = A0_2._total_times
  if L1_2 ~= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_when_not_full
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._refresh_when_full
    L1_2(L2_2)
  end
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_remain_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.timePanel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.RemainTimePanel
    L4_2 = G
    L4_2 = L4_2.RemainTimePanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2.timePanel = L1_2
    L1_2 = A0_2.timePanel
    L2_2 = L1_2
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.go_remain_time
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._refresh_time
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TimeUtils
  L2_2 = L2_2.DateTimeToTimeStampInSeconds
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_TimeManager
  L3_2 = L3_2.NowDateTime
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 - L2_2
  if 0 < L1_2 then
    L2_2 = A0_2.timePanel
    L3_2 = L2_2
    L2_2 = L2_2.setup
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.timePanel
    L3_2 = L2_2
    L2_2 = L2_2.bind_callback
    function L4_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh
      L0_3(L1_3)
    end
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._times
  if L2_2 == 0 then
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = L2_1
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_left_time_num
    L3_2.color = L2_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_confirm
    L3_2.interactable = false
    L3_2 = A0_2._binder
    L3_2 = L3_2.go_no_recover_times
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
  else
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = L1_1
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_left_time_num
    L3_2.color = L2_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_confirm
    L3_2.interactable = true
    L3_2 = A0_2._binder
    L3_2 = L3_2.go_no_recover_times
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_recover_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "MazeText_MazeCommon_RecoverCountDown"
  L2_2(L3_2, L4_2)
end
L0_1._refresh_when_not_full = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_remain_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.timePanel
  if L1_2 ~= nil then
    L1_2 = A0_2.timePanel
    L2_2 = L1_2
    L1_2 = L1_2._exit
    L1_2(L2_2)
  end
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = A0_2._refresh_cd
  L2_2 = L2_2 % 3600
  L2_2 = L2_2 / 60
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A0_2._refresh_cd
  L3_2 = L3_2 / 3600
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_recover_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "MazeText_MazeCommon_RecoverCountHint"
  L6_2 = L2_2
  L7_2 = L1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._refresh_when_full = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeUtils
  L1_2 = L1_2.DateTimeToTimeStampInSeconds
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_TimeManager
  L2_2 = L2_2.NowDateTime
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.DailyMissionModule
  L2_2 = L2_2.Instance
  L2_2 = L2_2.savePointsRefreshTime
  L3_2 = G
  L3_2 = L3_2.DailyMissionModule
  L3_2 = L3_2.Instance
  L3_2 = L3_2.savePointsUseTimes
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = L1_2 - L2_2
  L6_2 = A0_2._refresh_cd
  L5_2 = L5_2 / L6_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2 + 1
  L6_2 = A0_2._refresh_cd
  L5_2 = L5_2 * L6_2
  L5_2 = L2_2 + L5_2
  L6_2 = L3_2 + L4_2
  L7_2 = A0_2._total_times
  if L6_2 >= L7_2 then
    L6_2 = A0_2._total_times
    L7_2 = 0
    return L6_2, L7_2
  else
    L6_2 = L3_2 + L4_2
    L7_2 = L5_2
    return L6_2, L7_2
  end
end
L0_1._get_valid_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.SceneRefreshMonsterConfirm
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_confirm = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.SceneRefreshMonsterConfirmFail
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_cancel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_cancel
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.timePanel
  L2_2 = L1_2
  L1_2 = L1_2._exit
  L1_2(L2_2)
end
L0_1.on_dispose = L3_1
return L0_1
