local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.Challenge.Actions.ChallengeActionUtils"
L0_1(L1_1)
L0_1 = "ChallengeMaze_repeat"
L1_1 = "ChallengeMaze_onceonly"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ChallengeModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.MissionModule
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "ChallengeSelectGroupTabItem"
L6_1 = G
L6_1 = L6_1.TabItem
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.ChallengeSelectUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._challenge_select_ui3d = L1_2
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._challenge_group_data = nil
  A0_2._challenge_table = nil
end
L4_1._on_dispose = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._challenge_group_data = A1_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A0_2._challenge_group_data
  L4_2 = L4_2.ChallengeDatas
  L3_2 = L3_2(L4_2)
  A0_2._challenge_table = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._set_default_cur_challenge
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L4_1.set_group_data = L5_1
function L5_1(A0_2, A1_2)
  A0_2._show_btn_splash = A1_2
end
L4_1.show_btn_splash = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil and A1_2 ~= 0 then
    L2_2 = A0_2._challenge_group_data
    L3_2 = L2_2
    L2_2 = L2_2.GetChallengeIndex
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    if 0 <= L2_2 then
      L3_2 = A0_2._challenge_table
      L4_2 = L2_2 + 1
      L3_2 = L3_2[L4_2]
      A0_2._cur_challenge = L3_2
    end
  end
end
L4_1.set_init_challenge_id = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._challenge_table
  if nil ~= L2_2 then
    L2_2 = A0_2._challenge_group_data
    if nil ~= L2_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = A0_2._challenge_table
  L2_2 = #L2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ChallengeUtils
  L3_2 = L3_2.GetAutoSettleMaxLevelByGroupType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ChallengeGroupType
  L4_2 = L4_2.Memory
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._challenge_group_data
  L4_2 = L4_2.IsScheduleChallenge
  if L4_2 then
    L4_2 = math
    L4_2 = L4_2.max
    L5_2 = 1
    L6_2 = math
    L6_2 = L6_2.min
    L7_2 = L2_1.MemoryHistoryMaxLevel
    L8_2 = L2_2
    L9_2 = L3_2
    L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    if L4_2 then
      goto lbl_38
    end
  end
  L4_2 = 1
  ::lbl_38::
  L5_2 = L4_2
  L6_2 = L2_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2._challenge_table
    L9_2 = L9_2[L8_2]
    L10_2 = L9_2.IsFinish
    if not L10_2 then
      A0_2._cur_challenge = L9_2
      return
    end
  end
  L5_2 = A0_2._challenge_table
  L5_2 = L5_2[L2_2]
  A0_2._cur_challenge = L5_2
end
L4_1._set_default_cur_challenge = L5_1
function L5_1(A0_2, A1_2)
  A0_2._challenge_list_panel = A1_2
end
L4_1.set_challenge_info_list_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._try_add_first_schedule_unlock_action
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_add_resident_unlock_action
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_add_schedule_remain_time_action
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  return L1_2
end
L4_1.get_tab_add_actions = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._is_available_schedule_challenge
  L4_2 = A0_2._challenge_group_data
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = L2_1.SeenChallengeMemoryScheduleUnlock
  if not L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A1_2
    L4_2 = G
    L4_2 = L4_2.ChallengeActionUtils
    L4_2 = L4_2.create_dialog_action
    L5_2 = "Ui.Challenge.Entrance.ChallengeUnlockScheduleHintDialog"
    L6_2 = G
    L6_2 = L6_2.ChallengeActionUtils
    L6_2 = L6_2.ActionSortWeightEnum
    L6_2 = L6_2.ScheduleUnlock
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_1.SeenChallengeMemoryScheduleUnlock = true
  end
end
L4_1._try_add_first_schedule_unlock_action = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._is_show_resident_unlock
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A1_2
    L4_2 = G
    L4_2 = L4_2.ChallengeActionUtils
    L4_2 = L4_2.create_dialog_action
    L5_2 = "Ui.Challenge.Entrance.ChallengeResidentUnlockHintDialog"
    L6_2 = G
    L6_2 = L6_2.ChallengeActionUtils
    L6_2 = L6_2.ActionSortWeightEnum
    L6_2 = L6_2.ResidentUnlock
    L7_2 = A0_2._challenge_group_data
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A1_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_group_btn
    L5_2 = L4_2
    L4_2 = L4_2.create_btn_unlock_anim_action
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_record_resident_unlock
  L2_2(L3_2)
end
L4_1._try_add_resident_unlock_action = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2
  L2_2 = A0_2._is_available_schedule_challenge
  L4_2 = A0_2._challenge_group_data
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetLatestScheduleChallengeGroupData
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.IsScheduleChallenge
  L3_2 = L3_2 and L2_2 ~= nil
  if not L3_2 then
    return
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prefs
  L4_2 = L4_2.User
  L4_2 = L4_2.SeenBuffScheduleChallengeGroupIDs
  L5_2 = L4_2
  L4_2 = L4_2.Contains
  L6_2 = L2_2.ID
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L6_2 = A0_2
    L5_2 = A0_2.refresh_remain_time_hint
    L5_2(L6_2)
    return
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_group_btn
  L6_2 = L5_2
  L5_2 = L5_2.hide_time_limit
  L5_2(L6_2)
  L5_2 = A0_2._challenge_group_data
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = A1_2
  L8_2 = G
  L8_2 = L8_2.ChallengeActionUtils
  L8_2 = L8_2.create_immediate_action
  function L9_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 ~= nil then
      L0_3 = A0_2._owner
      if L0_3 ~= nil then
        goto lbl_8
      end
    end
    do return end
    ::lbl_8::
    L0_3 = A0_2._owner
    L0_3 = L0_3._wait_show_quick_unlock_finish
    if L0_3 then
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.CoroutineUtils
      L0_3 = L0_3.InvokeAfterSeconds
      L1_3 = 3
      function L2_3()
        local L0_4, L1_4
        L0_4 = A0_2._binder
        if L0_4 ~= nil then
          L0_4 = A0_2._owner
          if L0_4 ~= nil then
            goto lbl_8
          end
        end
        do return end
        ::lbl_8::
        L0_4 = A0_2._owner
        L0_4 = L0_4._wait_show_remain_time_hint
        if L0_4 then
          L0_4 = L5_2
          L1_4 = L0_4
          L0_4 = L0_4.IsInSchedule
          L0_4 = L0_4(L1_4)
          if L0_4 then
            goto lbl_20
          end
        end
        L0_4 = A0_2._owner
        L0_4._wait_show_remain_time_hint = false
        do return end
        ::lbl_20::
        L0_4 = A0_2._owner
        L0_4._wait_show_remain_time_hint = false
        L0_4 = A0_2._binder
        L0_4 = L0_4.panel_group_btn
        L1_4 = L0_4
        L0_4 = L0_4.show_remain_time_hint_anim
        L0_4(L1_4)
      end
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._owner
      L0_3._wait_show_remain_time_hint = true
    else
      L0_3 = A0_2._owner
      L0_3._wait_show_remain_time_hint = false
      L0_3 = A0_2._binder
      L0_3 = L0_3.panel_group_btn
      L1_3 = L0_3
      L0_3 = L0_3.show_remain_time_hint_anim
      L0_3(L1_3)
    end
    L0_3 = A0_2._owner
    L0_3._wait_show_quick_unlock_finish = false
  end
  L10_2 = G
  L10_2 = L10_2.ChallengeActionUtils
  L10_2 = L10_2.ActionSortWeightEnum
  L10_2 = L10_2.ScheduleExpire
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L4_1._try_add_schedule_remain_time_action = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_available_schedule_challenge
  L3_2 = A0_2._challenge_group_data
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetLatestScheduleChallengeGroupData
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._challenge_group_data
  L2_2 = L2_2.IsScheduleChallenge
  L2_2 = L2_2 and L1_2 ~= nil
  if not L2_2 then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_group_btn
  L4_2 = L3_2
  L3_2 = L3_2.refresh_remain_time_hint
  L3_2(L4_2)
end
L4_1.refresh_remain_time_hint = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._try_add_schedule_refresh_action
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_add_quick_unlock_action
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._try_add_common_unlock_action
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  end
  return L1_2
end
L4_1.get_tab_select_actions = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._is_available_schedule_challenge
  L4_2 = A0_2._challenge_group_data
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.SeenBuffScheduleChallengeGroupIDs
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = A0_2._challenge_group_data
  L4_2 = L4_2.ID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L3_2 = G
  L3_2 = L3_2.ChallengeActionUtils
  L3_2 = L3_2.create_dialog_action
  L4_2 = "Ui.Challenge.Entrance.ChallengeEnvironmentInfoDialog"
  L5_2 = G
  L5_2 = L5_2.ChallengeActionUtils
  L5_2 = L5_2.ActionSortWeightEnum
  L5_2 = L5_2.ScheduleRefresh
  L6_2 = A0_2._challenge_group_data
  L7_2 = true
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2._challenge_group_data
  L4_2 = L4_2.ID
  L6_2 = L3_2
  L5_2 = L3_2.init_call_back
  L7_2 = A0_2
  function L8_2()
    local L0_3, L1_3, L2_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.Prefs
    L0_3 = L0_3.User
    L0_3 = L0_3.SeenBuffScheduleChallengeGroupIDs
    L1_3 = L0_3
    L0_3 = L0_3.Contains
    L2_3 = L4_2
    L0_3 = L0_3(L1_3, L2_3)
    if not L0_3 then
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.Prefs
      L0_3 = L0_3.User
      L0_3 = L0_3.SeenBuffScheduleChallengeGroupIDs
      L1_3 = L0_3
      L0_3 = L0_3.Add
      L2_3 = L4_2
      L0_3(L1_3, L2_3)
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.Prefs
      L0_3 = L0_3.ForceSave
      L0_3()
    end
  end
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = A1_2
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
end
L4_1._try_add_schedule_refresh_action = L5_1
L5_1 = 5093
L6_1 = "5093"
L7_1 = "MaxLevel"
L8_1 = "5094"
L9_1 = 1.2
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = A0_2
  L2_2 = A0_2._is_available_schedule_challenge
  L4_2 = A0_2._challenge_group_data
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ChallengeUtils
  L2_2 = L2_2.GetAutoSettleMaxLevelByGroupType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ChallengeGroupType
  L3_2 = L3_2.Memory
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.ChallengeDatas
  L4_2 = math
  L4_2 = L4_2.min
  L5_2 = L2_1.MemoryHistoryMaxLevel
  L6_2 = L3_2.Count
  L7_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 <= 1 then
    return
  end
  L5_2 = A0_2._challenge_group_data
  L5_2 = L5_2.LastAutoUnlockProgress
  L5_2 = L4_2 <= L5_2
  if L5_2 then
    return
  end
  L6_2 = A0_2._challenge_group_data
  L6_2 = L6_2.LastAutoUnlockProgress
  L7_2 = A0_2._challenge_group_data
  L7_2.LastAutoUnlockProgress = L4_2
  L7_2 = L4_2 - 1
  L7_2 = L3_2[L7_2]
  L8_2 = L7_2 ~= nil and L8_2
  if L8_2 then
    return
  end
  L9_2 = A0_2._challenge_list_panel
  L10_2 = L9_2
  L9_2 = L9_2._get_challenge_index
  L11_2 = A0_2._cur_challenge
  L9_2 = L9_2(L10_2, L11_2)
  if L9_2 ~= nil then
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A1_2
    L12_2 = G
    L12_2 = L12_2.ChallengeActionUtils
    L12_2 = L12_2.create_immediate_action
    function L13_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      L0_3 = A0_2._binder
      if L0_3 == nil then
        return
      end
      L0_3 = A0_2._binder
      L0_3 = L0_3.node_quick_unlock
      L1_3 = L0_3
      L0_3 = L0_3.SafeSetActive
      L2_3 = true
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.text_quick_unlock
      L1_3 = L0_3
      L0_3 = L0_3.SafeSetTextID
      L2_3 = "UIText_Challenge_Inherit_Description"
      L3_3 = G
      L3_3 = L3_3.MathUtils
      L3_3 = L3_3.add_zero_front_num
      L4_3 = 2
      L5_3 = L4_2
      L3_3 = L3_3(L4_3, L5_3)
      L4_3 = G
      L4_3 = L4_3.MathUtils
      L4_3 = L4_3.add_zero_front_num
      L5_3 = 2
      L6_3 = L2_1.MemoryHistoryMaxLevel
      L4_3, L5_3, L6_3 = L4_3(L5_3, L6_3)
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.anim_quick_unlock
      L1_3 = L0_3
      L0_3 = L0_3.Play
      L2_3 = "QuickUnlockHintPanel"
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._owner
      L0_3._wait_show_quick_unlock_finish = true
    end
    L14_2 = G
    L14_2 = L14_2.ChallengeActionUtils
    L14_2 = L14_2.ActionSortWeightEnum
    L14_2 = L14_2.AutoUnlock
    L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2, L14_2)
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A1_2
    L12_2 = G
    L12_2 = L12_2.ChallengeActionUtils
    L12_2 = L12_2.create_immediate_action
    function L13_2()
      local L0_3, L1_3, L2_3
      L0_3 = G
      L0_3 = L0_3.NotifyManager
      L0_3 = L0_3.notify
      L1_3 = G
      L1_3 = L1_3.CS
      L1_3 = L1_3.NotifyType
      L1_3 = L1_3.TutorialTaskUnlock
      L2_3 = L6_1
      L0_3(L1_3, L2_3)
    end
    L14_2 = G
    L14_2 = L14_2.ChallengeActionUtils
    L14_2 = L14_2.ActionSortWeightEnum
    L14_2 = L14_2.AutoUnlockTutorial
    L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2, L14_2)
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L10_2 = A0_2._challenge_select_ui3d
    L11_2 = L10_2
    L10_2 = L10_2.clear_crystal_state
    L10_2(L11_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A1_2
    L12_2 = G
    L12_2 = L12_2.ChallengeActionUtils
    L12_2 = L12_2.create_immediate_action
    function L13_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = A0_2._binder
      if L0_3 ~= nil then
        L0_3 = A0_2._challenge_list_panel
        if L0_3 ~= nil then
          goto lbl_8
        end
      end
      do return end
      ::lbl_8::
      L0_3 = A0_2._challenge_list_panel
      L1_3 = L0_3
      L0_3 = L0_3.try_show_auto_unlock_by_index
      L2_3 = L9_2
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._challenge_list_panel
      L1_3 = L0_3
      L0_3 = L0_3.try_set_tutorial_node
      L2_3 = L9_2
      L3_3 = L7_1
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = G
      L0_3 = L0_3.NotifyManager
      L0_3 = L0_3.notify
      L1_3 = G
      L1_3 = L1_3.CS
      L1_3 = L1_3.NotifyType
      L1_3 = L1_3.TutorialTaskUnlock
      L2_3 = L8_1
      L0_3(L1_3, L2_3)
    end
    L14_2 = G
    L14_2 = L14_2.ChallengeActionUtils
    L14_2 = L14_2.ActionSortWeightEnum
    L14_2 = L14_2.AutoUnlock
    L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2, L14_2)
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A1_2
    L12_2 = G
    L12_2 = L12_2.ChallengeActionUtils
    L12_2 = L12_2.create_wait_second_action
    L13_2 = L9_1
    L14_2 = nil
    L15_2 = nil
    L16_2 = G
    L16_2 = L16_2.ChallengeActionUtils
    L16_2 = L16_2.ActionSortWeightEnum
    L16_2 = L16_2.AutoUnlock
    L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A1_2
    L12_2 = G
    L12_2 = L12_2.ChallengeActionUtils
    L12_2 = L12_2.create_immediate_action
    function L13_2()
      local L0_3, L1_3
      L0_3 = A0_2._binder
      if L0_3 ~= nil then
        L0_3 = A0_2._challenge_list_panel
        if L0_3 ~= nil then
          goto lbl_8
        end
      end
      do return end
      ::lbl_8::
      L0_3 = A0_2._challenge_list_panel
      L1_3 = L0_3
      L0_3 = L0_3.move_to_cur_challenge
      L0_3(L1_3)
    end
    L14_2 = G
    L14_2 = L14_2.ChallengeActionUtils
    L14_2 = L14_2.ActionSortWeightEnum
    L14_2 = L14_2.AutoUnlock
    L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2, L14_2)
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  end
  L10_2 = true
  return L10_2
end
L4_1._try_add_quick_unlock_action = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._cur_challenge
  if L2_2 then
    L2_2 = A0_2._cur_challenge
    L2_2 = L2_2.IsFirstOpen
    if L2_2 then
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = A1_2
      L4_2 = G
      L4_2 = L4_2.ChallengeActionUtils
      L4_2 = L4_2.create_immediate_action
      function L5_2()
        local L0_3, L1_3
        L0_3 = A0_2._binder
        if L0_3 ~= nil then
          L0_3 = A0_2._challenge_list_panel
          if L0_3 ~= nil then
            goto lbl_8
          end
        end
        do return end
        ::lbl_8::
        L0_3 = A0_2._challenge_list_panel
        L1_3 = L0_3
        L0_3 = L0_3.try_show_challenge_unlock
        L0_3(L1_3)
      end
      L6_2 = G
      L6_2 = L6_2.ChallengeActionUtils
      L6_2 = L6_2.ActionSortWeightEnum
      L6_2 = L6_2.Normal
      L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = A1_2
      L4_2 = G
      L4_2 = L4_2.ChallengeActionUtils
      L4_2 = L4_2.create_wait_second_action
      L5_2 = 1.8
      L6_2 = nil
      L7_2 = nil
      L8_2 = G
      L8_2 = L8_2.ChallengeActionUtils
      L8_2 = L8_2.ActionSortWeightEnum
      L8_2 = L8_2.Normal
      L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = A1_2
      L4_2 = G
      L4_2 = L4_2.ChallengeActionUtils
      L4_2 = L4_2.create_immediate_action
      function L5_2()
        local L0_3, L1_3
        L0_3 = A0_2._binder
        if L0_3 ~= nil then
          L0_3 = A0_2._challenge_list_panel
          if L0_3 ~= nil then
            goto lbl_8
          end
        end
        do return end
        ::lbl_8::
        L0_3 = A0_2._challenge_list_panel
        L1_3 = L0_3
        L0_3 = L0_3.move_to_cur_challenge
        L0_3(L1_3)
      end
      L6_2 = G
      L6_2 = L6_2.ChallengeActionUtils
      L6_2 = L6_2.ActionSortWeightEnum
      L6_2 = L6_2.Normal
      L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    end
  end
end
L4_1._try_add_common_unlock_action = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.IsScheduleChallenge
  if L2_2 then
    L3_2 = A1_2
    L2_2 = A1_2.IsAvailable
    L2_2 = A1_2 ~= nil and L2_2
  end
  return L2_2
end
L4_1._is_available_schedule_challenge = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._challenge_group_data
  if L1_2 ~= nil then
    L1_2 = A0_2._challenge_group_data
    L1_2 = L1_2.IsScheduleChallenge
    if not L1_2 then
      L1_2 = A0_2._challenge_group_data
      L2_2 = L1_2
      L1_2 = L1_2.IsAvailable
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = A0_2._challenge_group_data
        L2_2 = L1_2
        L1_2 = L1_2.HasChallengeFinish
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          goto lbl_20
        end
      end
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_20::
  L1_2 = L2_1.LastChallengeUnlockGroupID
  L2_2 = A0_2._challenge_group_data
  L2_2 = L2_2.ID
  L1_2 = L1_2 < L2_2
  return L1_2
end
L4_1._is_show_resident_unlock = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._challenge_group_data
  if L1_2 ~= nil then
    L1_2 = A0_2._challenge_group_data
    L1_2 = L1_2.IsScheduleChallenge
    if not L1_2 then
      L1_2 = A0_2._challenge_group_data
      L2_2 = L1_2
      L1_2 = L1_2.IsAvailable
      L1_2 = L1_2(L2_2)
      if L1_2 then
        goto lbl_14
      end
    end
  end
  do return end
  ::lbl_14::
  L1_2 = L2_1.LastChallengeUnlockGroupID
  L2_2 = A0_2._challenge_group_data
  L2_2 = L2_2.ID
  if L1_2 < L2_2 then
    L1_2 = A0_2._challenge_group_data
    L1_2 = L1_2.ID
    L2_1.LastChallengeUnlockGroupID = L1_2
  end
end
L4_1._try_record_resident_unlock = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_group_btn
  L2_2 = L1_2
  L1_2 = L1_2.setup_index
  L3_2 = A0_2.uid
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_group_btn
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._challenge_group_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_group_btn
  L2_2 = L1_2
  L1_2 = L1_2.show_splash
  L3_2 = A0_2._show_btn_splash
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_show_resident_unlock
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_group_btn
    L2_2 = L1_2
    L1_2 = L1_2.show_fake_lock
    L1_2(L2_2)
  end
end
L4_1._on_added = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_group_btn
  L1_2 = L1_2.is_lock
  if not L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = A0_2._challenge_group_data
  L1_2 = L1_2.IsScheduleChallenge
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_Abyss_NormalLevel_Unlock_Tips"
    L1_2(L2_2, L3_2)
  else
    L1_2 = L3_1
    L2_2 = L1_2
    L1_2 = L1_2.TryGetMainMissionData
    L3_2 = A0_2._challenge_group_data
    L3_2 = L3_2.PreMissionID
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.TextmapStatic
      L2_2 = L2_2.GetText
      L3_2 = "ChallengeMazeCondition_Mission"
      L4_2 = L1_2.NameStr
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = G
      L3_2 = L3_2.NotifyManager
      L3_2 = L3_2.notify
      L4_2 = G
      L4_2 = L4_2.CS
      L4_2 = L4_2.NotifyType
      L4_2 = L4_2.UIPileToastMessageString
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
  L1_2 = false
  return L1_2
end
L4_1.can_select = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ChallengeRefreshUIRedDot
  L1_2(L2_2)
  L1_2 = A0_2._challenge_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_challenge_info_row_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_group_name
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_challenge_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_environment
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_schedule_preview_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cumulative_rewards_info
  L1_2(L2_2)
end
L4_1._on_select = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._challenge_group_data
  if L1_2 then
    L1_2 = A0_2._challenge_group_data
    L1_2 = L1_2.IsScheduleChallenge
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_subtitle
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = L0_1
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_subtitle
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_world_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.IsScheduleChallenge
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L4_1._refresh_title = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_group_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.GroupName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._challenge_group_data
  if L1_2 then
    L1_2 = A0_2._challenge_group_data
    L1_2 = L1_2.IsScheduleChallenge
    if not L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.GameCore
      L1_2 = L1_2.WorldDataConfigExcelTable
      L1_2 = L1_2.GetData
      L2_2 = A0_2._challenge_group_data
      L2_2 = L2_2.Row
      L2_2 = L2_2.WorldID
      L1_2 = L1_2(L2_2)
      if L1_2 ~= nil then
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_world_name
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = L1_2.WorldName
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L4_1._refresh_group_name = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._challenge_select_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.is_loaded
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._challenge_select_ui3d
    L1_2 = L1_2.is_init_finish
    if L1_2 then
      L1_2 = A0_2._challenge_select_ui3d
      L2_2 = L1_2
      L1_2 = L1_2.init_group
      L3_2 = A0_2._challenge_group_data
      L3_2 = L3_2.IsScheduleChallenge
      L4_2 = A0_2._challenge_table
      L4_2 = #L4_2
      L5_2 = A0_2._challenge_group_data
      L5_2 = L5_2.Row
      L5_2 = L5_2.WorldID
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = A0_2._challenge_select_ui3d
      L2_2 = L1_2
      L1_2 = L1_2.set_world_bg_texture
      L3_2 = A0_2._challenge_group_data
      L3_2 = L3_2.Row
      L3_2 = L3_2.BackGroundPath
      L4_2 = A0_2._challenge_group_data
      L4_2 = L4_2.IsScheduleChallenge
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = A0_2._challenge_select_ui3d
      L2_2 = L1_2
      L1_2 = L1_2.refresh_touch
      L1_2(L2_2)
      L1_2 = A0_2._challenge_list_panel
      L2_2 = L1_2
      L1_2 = L1_2.setup_view
      L3_2 = A0_2._challenge_table
      L4_2 = A0_2._cur_challenge
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = A0_2._challenge_list_panel
      L2_2 = L1_2
      L1_2 = L1_2.move_to_cur_challenge
      L1_2(L2_2)
    end
  end
end
L4_1._refresh_challenge_list = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_environment
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.IsScheduleChallenge
  L1_2(L2_2, L3_2)
end
L4_1._refresh_environment = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._challenge_group_data
  L1_2 = L1_2.IsScheduleChallenge
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_remain_time
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.remain_timer
    L3_2 = L2_2
    L2_2 = L2_2.SetTargetTime
    L4_2 = A0_2._challenge_group_data
    L4_2 = L4_2.ScheduleData
    L4_2 = L4_2.EndTimeDate
    L5_2 = A0_2._expire_call_back
    L6_2 = A0_2
    L7_2 = 2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L4_1._refresh_schedule_preview_hint = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_current_star_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.CurrentStarCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_star_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.TotalStarCount
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ChallengeMazeReward"
  L4_2 = A0_2._challenge_group_data
  L4_2 = L4_2.ID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot_cumulative_rewards
  L6_2 = L6_2.transform
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L4_1._refresh_cumulative_rewards_info = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state
  L2_2 = L4_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_group_btn
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_group_btn
    L2_2 = L1_2
    L1_2 = L1_2.refresh_btn_status
    L1_2(L2_2)
  end
end
L4_1._on_return_to_top = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._record_group_seen
  L1_2(L2_2)
end
L4_1._on_unselect = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._challenge_group_data
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  if L1_2 then
    L2_2 = L1_2.SeenChallengeGroupIDs
    if L2_2 then
      L2_2 = L1_2.SeenChallengeGroupIDs
      L3_2 = L2_2
      L2_2 = L2_2.Contains
      L4_2 = A0_2._challenge_group_data
      L4_2 = L4_2.ID
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L2_2 = L1_2.SeenChallengeGroupIDs
        L3_2 = L2_2
        L2_2 = L2_2.Add
        L4_2 = A0_2._challenge_group_data
        L4_2 = L4_2.ID
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L4_1._record_group_seen = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._cur_challenge = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._report_click
  L3_2(L4_2)
end
L4_1._on_challenge_info_row_click = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.ID
  L4_2 = A0_2._cur_challenge
  L4_2 = L4_2.ID
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L4_1._report_click = L10_1
return L4_1
