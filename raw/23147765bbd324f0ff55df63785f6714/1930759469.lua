local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Common.HandbookChallengeSubTabItemBase"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Memory.HandbookChallengeMemoryLockPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Memory.HandbookChallengeStoryLockPanel"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ChallengeModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ChallengeGroupType
L2_1 = {}
L3_1 = L1_1.Memory
L2_1[L3_1] = "UIText_Handbook_MazeTitle02"
L3_1 = L1_1.Story
L2_1[L3_1] = "UIText_ChallengeStory_Title"
L3_1 = "UIText_GameplayGuide_Preview_Content"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "HandbookChallengeMemoryStatisticTabItem"
L6_1 = G
L6_1 = L6_1.HandbookChallengeSubTabItemBase
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2
  A0_2.disable_res_bar = true
  L1_2 = {}
  A0_2._type_item_rows = L1_2
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._init_incontrol_btns
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.HandbookChallengeMemoryLockPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.HandbookChallengeStoryLockPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_lock_story = L1_2
end
L4_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  A0_2._type_id = A1_2
end
L4_1.set_tab_data = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._type_id
  return L1_2
end
L4_1.get_type_id = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_record_group_seen
  L1_2(L2_2)
  A0_2._challenge_group_data = nil
end
L4_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._tab_row
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetLastRefreshChallengeData
  L1_2 = L1_2(L2_2)
  A0_2._challenge_group_data = L1_2
  L1_2 = A0_2._challenge_group_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._challenge_group_data
  L1_2 = L1_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ChallengeGroupType
  L2_2 = L2_2.Memory
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.tab_btn_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_desc
    L3_2 = "UIText_GameplayGuide_ChallengeMazeTitle"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._challenge_group_data
    L1_2 = L1_2.Type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ChallengeGroupType
    L2_2 = L2_2.Story
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.tab_btn_panel
      L2_2 = L1_2
      L1_2 = L1_2.setup_desc
      L3_2 = "UIText_ChallengeStory_Title"
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "HandbookGuideChallengeLatestUpdate"
  L1_2(L2_2, L3_2)
end
L4_1._on_added = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetLastRefreshChallengeData
  L1_2 = L1_2(L2_2)
  A0_2._challenge_group_data = L1_2
  L1_2 = A0_2._challenge_group_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_preview_tips
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_banner
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._challenge_group_data
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_lock_status
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_record
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._is_unlock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_unlock
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_statistics
    L1_2(L2_2)
  end
end
L4_1._on_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._challenge_group_data
  L1_2 = L1_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ChallengeGroupType
  L2_2 = L2_2.Memory
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_memory_lock_status
    L1_2(L2_2)
  else
    L1_2 = A0_2._challenge_group_data
    L1_2 = L1_2.Type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ChallengeGroupType
    L2_2 = L2_2.Story
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._setup_story_lock_status
      L1_2(L2_2)
    end
  end
end
L4_1._setup_lock_status = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = nil
  L2_2 = A0_2._challenge_group_data
  L3_2 = L2_2
  L2_2 = L2_2.IsAvailable
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L1_2 = true
    L2_2 = A0_2._panel_lock
    L3_2 = L2_2
    L2_2 = L2_2.try_setup_schedule_lock_status
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_lock
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_lock_tips
    L6_2 = nil
    L7_2 = A0_2._binder
    L7_2 = L7_2.btn_lock_jump
    L8_2 = A0_2._binder
    L8_2 = L8_2.text_btn_lock_jump
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    L2_2 = A0_2._panel_lock
    L3_2 = L2_2
    L2_2 = L2_2.try_setup_lock_status
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_lock
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_lock_tips
    L6_2 = nil
    L7_2 = A0_2._binder
    L7_2 = L7_2.btn_lock_jump
    L8_2 = A0_2._binder
    L8_2 = L8_2.text_btn_lock_jump
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L1_2 = L2_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_banner
  L3_2 = L2_2
  L2_2 = L2_2.set_is_lock
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = not L1_2
  A0_2._is_unlock = L2_2
end
L4_1._setup_memory_lock_status = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._panel_lock_story
  L2_2 = L1_2
  L1_2 = L1_2.try_setup_lock_status
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_lock
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_lock_tips
  L5_2 = nil
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_lock_jump
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_btn_lock_jump
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_banner
  L3_2 = L2_2
  L2_2 = L2_2.set_is_lock
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = not L1_2
  A0_2._is_unlock = L2_2
end
L4_1._setup_story_lock_status = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_record_group_seen
  L1_2(L2_2)
end
L4_1._on_main_tab_unselect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_record_group_seen
  L1_2(L2_2)
end
L4_1._on_unselect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._get_next_schedule_challenge_group
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_group_near_begin
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_preview_tips
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_preview_tips
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L3_1
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = L1_2.Type
    L7_2 = L2_1[L7_2]
    L6_2 = L6_2(L7_2)
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L1_2.GroupName
    L7_2, L8_2 = L7_2(L8_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.mono_remain_timer
    L4_2 = L3_2
    L3_2 = L3_2.SetTargetTime
    L5_2 = L1_2.ScheduleData
    L5_2 = L5_2.BeginTimeDate
    L6_2 = A0_2._on_expire
    L7_2 = A0_2
    L8_2 = 2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L4_1._setup_preview_tips = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._challenge_group_data
  L1_2 = L1_2 ~= nil
  return L1_2
end
L4_1._is_cur_group_near_end = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2 or nil
  if A1_2 then
    L2_2 = A1_2.ScheduleData
    if L2_2 then
      L2_2 = A1_2.ScheduleData
      L2_2 = L2_2.BeginTimeDate
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.TimeManager
      L3_2 = L3_2.Instance
      L3_2 = L3_2.NowDateTime
      L4_2 = L3_2
      L3_2 = L3_2.AddDays
      L5_2 = 7
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L2_2 <= L3_2
    end
  end
  return L2_2
end
L4_1._is_group_near_begin = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetNextScheduleChallengeGroupDataByType
  L3_2 = L1_1.Memory
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetNextScheduleChallengeGroupDataByType
  L4_2 = L1_1.Story
  L2_2 = L2_2(L3_2, L4_2)
  if L1_2 == nil or L2_2 == nil then
    L3_2 = L1_2 or L3_2
    if L1_2 == nil or not L1_2 then
      L3_2 = L2_2
    end
    return L3_2
  end
  L3_2 = L1_2.ScheduleData
  L3_2 = L3_2.BeginTimeDate
  L4_2 = L2_2.ScheduleData
  L4_2 = L4_2.BeginTimeDate
  L3_2 = L1_2 or L3_2
  if not (L3_2 < L4_2) or not L1_2 then
    L3_2 = L2_2
  end
  return L3_2
end
L4_1._get_next_schedule_challenge_group = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._state
    L1_3 = L4_1.SelectState
    L1_3 = L1_3.Selected
    if L0_3 == L1_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_select
      L0_3(L1_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._try_record_group_seen
      L0_3(L1_3)
    end
  end
  L1_2(L2_2)
end
L4_1._on_expire = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_record
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._challenge_group_data
  L1_2(L2_2, L3_2)
end
L4_1._setup_statistics = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._challenge_group_data
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = A0_2._challenge_group_data
  L2_2 = L2_2.ID
  L3_2 = L1_2.SeenChallengeGroupIDs
  L4_2 = L3_2
  L3_2 = L3_2.Contains
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = L1_2.SeenChallengeGroupIDs
    L4_2 = L3_2
    L3_2 = L3_2.Add
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.ReddotRefreshGuide
    L3_2(L4_2)
  end
end
L4_1._try_record_group_seen = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = true
  return L2_2
end
L4_1._is_can_to_zoom = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_banner
  L1_2 = L1_2.gameObject
  return L1_2
end
L4_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_banner
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_lock_panel
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = L1_2
  L5_2 = NavigationType
  L5_2 = L5_2.Vertical
  L6_2 = false
  L7_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_lock_panel
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_lock_jump_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_lock_panel
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L2_2.onSelectTrigger = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_lock_panel
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_lock_jump_button_enable
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L2_2.onDeselectTrigger = L3_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_in_control_lock_jump_button_enable
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L4_1._init_incontrol_btns = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_incontrol_btn_lock_jump
    L2_2.ActionEnabled = A1_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_incontrol_tip_lock_jump
    L2_2.IsShowTip = A1_2
  end
end
L4_1.setup_in_control_lock_jump_button_enable = L5_1
return L4_1
