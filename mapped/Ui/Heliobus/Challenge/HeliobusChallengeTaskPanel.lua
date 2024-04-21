local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusChallengeTaskPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusChallengeTaskPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
L3_1 = "UIText_Heliobus_ChallengePhase_UnlockTips"
function L4_1(A0_2, A1_2, A2_2)
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._on_select_callback
    if L0_3 then
      L0_3 = A0_2._on_select_callback_owner
      if L0_3 then
        L0_3 = A0_2._on_select_callback
        L1_3 = A0_2._on_select_callback_owner
        L2_3 = A0_2
        L0_3(L1_3, L2_3)
      end
    end
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_root_btn = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_root
  return L1_2
end
L0_1.get_root_btn_animator = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._on_select_callback = A1_2
  A0_2._on_select_callback_owner = A2_2
end
L0_1.register_on_select_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._on_click_callback = A1_2
  A0_2._on_click_callback_owner = A2_2
end
L0_1.register_on_click_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._index = A1_2
  L3_2 = A2_2.ChallengeGroupList
  L3_2 = L3_2[0]
  A0_2._challenge_group_id = L3_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetChallengeGroup
  L6_2 = A0_2._challenge_group_id
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2._challenge_group_data = L3_2
  L3_2 = A2_2.UnlockMissionID
  A0_2._unlock_mission_id = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MainMissionExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._unlock_mission_id
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = G
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = L3_2.Name
    L4_2 = L4_2(L5_2)
    A0_2._unlock_mission_name = L4_2
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A2_2.ChallengePhaseName
  L4_2(L5_2, L6_2)
  A0_2._is_unlocked = false
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_lock
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_progress
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = L2_1
  L5_2 = L4_2
  L4_2 = L4_2.GetMainMissionDataWithPromise
  L6_2 = A0_2._unlock_mission_id
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2
  L4_2 = L4_2.ThenLuaActionOneParam
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2._binder
    if L1_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._setup_panel_state
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
  end
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_progress
  L4_2(L5_2)
  L4_2 = G
  L4_2 = L4_2.RedDotModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.bind_reddot
  L6_2 = "HeliobusChallengeGroupNew"
  L7_2 = A0_2._challenge_group_id
  L8_2 = A0_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_reddot
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2 ~= nil and L2_2
  A0_2._is_unlocked = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_unlocked
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_unlocked
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_unlock
  L4_2 = A0_2._is_unlocked
  L2_2(L3_2, L4_2)
end
L0_1._setup_panel_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_progress_dot
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._challenge_group_data
    L6_2 = L6_2[L5_2]
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_progress_dot
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = A0_2._challenge_group_data
    L9_2 = #L9_2
    L9_2 = L5_2 <= L9_2
    L7_2(L8_2, L9_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.IsChallengeFinished
      if L7_2 then
        L1_2 = L1_2 + 1
      end
    end
  end
  L2_2 = 1
  L3_2 = A0_2._challenge_group_data
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_progress_finish
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = L5_2 <= L1_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_progress = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_unlocked
  if L1_2 then
    L1_2 = A0_2._on_click_callback
    if L1_2 then
      L1_2 = A0_2._on_click_callback_owner
      if L1_2 then
        L1_2 = A0_2._on_click_callback
        L2_2 = A0_2._on_click_callback_owner
        L3_2 = A0_2._challenge_group_data
        L4_2 = A0_2._index
        L5_2 = A0_2
        L1_2(L2_2, L3_2, L4_2, L5_2)
      end
    end
  else
    L1_2 = G
    L1_2 = L1_2.TextmapStatic
    L1_2 = L1_2.GetText
    L2_2 = L3_1
    L3_2 = A0_2._unlock_mission_name
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UICenterToastMessageString
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_root = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator_root
  L3_2 = L2_2
  L2_2 = L2_2.SetBool
  L4_2 = "IsChecked"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_root
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Checked"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_root
    L3_2 = L2_2
    L2_2 = L2_2.ResetTrigger
    L4_2 = "Unchecked"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_root
    L3_2 = L2_2
    L2_2 = L2_2.ResetTrigger
    L4_2 = "Checked"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_root
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Unchecked"
    L2_2(L3_2, L4_2)
  end
end
L0_1._set_checked = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_root
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "UnLock_Normal"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_root
    L3_2 = L2_2
    L2_2 = L2_2.ResetTrigger
    L4_2 = "Lock"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_root
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Lock"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_root
    L3_2 = L2_2
    L2_2 = L2_2.ResetTrigger
    L4_2 = "UnLock_Normal"
    L2_2(L3_2, L4_2)
  end
end
L0_1._set_unlock = L4_1
return L0_1
