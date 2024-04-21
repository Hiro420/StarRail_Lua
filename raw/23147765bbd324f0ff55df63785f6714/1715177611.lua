local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeLeftTopBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TreasureChallenge.TreasureChallengeExitDialog"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeLeftTopBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SystemOpenModule
function L2_1(A0_2)
  local L1_2
  A0_2._customized_btn_leave_callback = nil
  A0_2._show_phone = true
  A0_2._show_mission = true
  A0_2._show_leave = false
  A0_2._show_message = true
  A0_2._is_phone_blocked_by_hud_template = false
  A0_2._is_mission_blocked_by_hud_template = false
  A0_2._is_message_blocked_by_hud_template = false
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_leave
  L4_2 = A0_2._on_btn_leave_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_mission
  L4_2 = A0_2._on_btn_mission_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_phone
  L4_2 = A0_2._on_btn_phone_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "Phone"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.go_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "MissionTab_All"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.mission_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_view
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIToastMainPage
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIToastMainPage
  L1_2(L2_2)
end
L0_1.on_top_page = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIToastMainPage
  L1_2(L2_2)
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._should_show_raid_exit_dialog_with_targets
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.TreasureChallenge.TreasureChallengeExitDialog"
    L3_2 = true
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._customized_btn_leave_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._customized_btn_leave_callback
    L1_2()
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RPGApplication
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.RestartAppNextFrame
  L1_2(L2_2)
end
L0_1._on_btn_leave_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.GotoByType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GotoType
  L2_2 = L2_2.Mission
  L2_2 = #L2_2
  L1_2(L2_2)
end
L0_1._on_btn_mission_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.GotoByType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GotoType
  L2_2 = L2_2.MobilePhone
  L2_2 = #L2_2
  L1_2(L2_2)
end
L0_1._on_btn_phone_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._show_leave = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn_view
  L2_2(L3_2)
end
L0_1.setup_leave = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HudType
  L3_2 = L3_2.Phone
  if A2_2 == L3_2 then
    A0_2._is_phone_blocked_by_hud_template = A1_2
    L4_2 = A0_2
    L3_2 = A0_2._refresh_btn_view
    L3_2(L4_2)
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.HudType
    L3_2 = L3_2.Mission
    if A2_2 == L3_2 then
      A0_2._is_mission_blocked_by_hud_template = A1_2
      L4_2 = A0_2
      L3_2 = A0_2._refresh_btn_view
      L3_2(L4_2)
    else
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.HudType
      L3_2 = L3_2.Message
      if A2_2 == L3_2 then
        A0_2._is_message_blocked_by_hud_template = A1_2
        L4_2 = A0_2
        L3_2 = A0_2._refresh_btn_view
        L3_2(L4_2)
      end
    end
  end
end
L0_1.set_hud_template = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetLeftTopHudFuncEntranceList
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.Contains
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.HudType
  L4_2 = L4_2.Phone
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L1_2
  L3_2 = L1_2.Contains
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.HudType
  L5_2 = L5_2.Mission
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L1_2
  L4_2 = L1_2.Contains
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.HudType
  L6_2 = L6_2.Message
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_phone
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L2_2 or L7_2
  if L2_2 then
    L7_2 = A0_2._is_phone_blocked_by_hud_template
    L7_2 = not L7_2
  end
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_mission
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L3_2 or L7_2
  if L3_2 then
    L7_2 = A0_2._is_mission_blocked_by_hud_template
    L7_2 = not L7_2
  end
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_message
  L6_2 = L5_2
  L5_2 = L5_2.safe_set_active
  L7_2 = L4_2 or L7_2
  if L4_2 then
    L7_2 = A0_2._is_message_blocked_by_hud_template
    L7_2 = not L7_2
  end
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_leave
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A0_2._show_leave
  L5_2(L6_2, L7_2)
end
L0_1._refresh_btn_view = L2_1
function L2_1(A0_2, A1_2)
  A0_2._customized_btn_leave_callback = A1_2
end
L0_1.custom_leave_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RaidModule
  L1_2 = L1_2.IsInRaid
  if L1_2 ~= false then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.RaidModule
    L1_2 = L1_2.CurrentTreasureChallengeSnapShot
    L2_2 = null
    if L1_2 ~= L2_2 then
      goto lbl_22
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_22::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RaidModule
  L1_2 = L1_2.CurrentTreasureChallengeSnapShot
  L1_2 = L1_2.TargetStatusSnapShot
  L1_2 = L1_2.Count
  if L1_2 == 0 then
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end
L0_1._should_show_raid_exit_dialog_with_targets = L2_1
return L0_1
