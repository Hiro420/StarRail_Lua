local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Challenge.ChallengeUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ChallengeModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "HandbookChallengeAbyssItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_button_enable
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
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
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_jump
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_track
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_buff
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_buff
    L4_2 = A0_2._on_btn_buff
    L1_2(L2_2, L3_2, L4_2)
  end
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._challenge_group_data = nil
  A0_2._guide_data_row = nil
  A0_2._reward_items = nil
  A0_2._config_id_list = nil
  A0_2._expire_callback = nil
  A0_2._expire_callback_self = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._challenge_group_data = A1_2
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.IsScheduleChallenge
  A0_2._is_schedule = L3_2
  A0_2._guide_data_row = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_title
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_icon
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_buff
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_schedule
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_progress
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_btn_go
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_reddot
  L3_2(L4_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._expire_callback = A1_2
  A0_2._expire_callback_self = A2_2
end
L1_1.register_expire_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._expire_callback
  L3_2 = A0_2._expire_callback_self
  L1_2(L2_2, L3_2)
end
L1_1._on_expire = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_challenge_group_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._guide_data_row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L1_1._setup_title = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_challenge_icon
  L4_2 = A0_2._guide_data_row
  L4_2 = L4_2.IconPath
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._setup_icon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_schedule
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_buff
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_buff
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = A0_2._challenge_group_data
      L3_2 = L3_2.Row
      L3_2 = L3_2.MazeBuffID
      L3_2 = L3_2 ~= 0
      L1_2(L2_2, L3_2)
    end
  end
end
L1_1._setup_buff = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_remain_timer
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._challenge_group_data
  L1_2 = L1_2.IsScheduleChallenge
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_remain_timer
    L3_2 = L2_2
    L2_2 = L2_2.SetTargetTime
    L4_2 = A0_2._challenge_group_data
    L4_2 = L4_2.ScheduleData
    L4_2 = L4_2.EndTimeDate
    L5_2 = A0_2._on_expire
    L6_2 = A0_2
    L7_2 = 2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetLatestScheduleChallengeGroupData
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.IsScheduleChallenge
  L3_2 = L3_2 and L2_2 ~= nil
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_remain_timer_hint
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L1_1._setup_schedule = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._challenge_group_data
  L2_2 = L1_2
  L1_2 = L1_2.GetMaxFinishLevel
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._challenge_group_data
  L2_2 = L2_2.ChallengeDatas
  L2_2 = L2_2.Count
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_cur_level
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_total_level
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_finish_all_level
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2 == L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._challenge_group_data
  L4_2 = L3_2
  L3_2 = L3_2.GetCompleteTargetStarsCount
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._challenge_group_data
  L5_2 = L4_2
  L4_2 = L4_2.GetTotalTargetStarsCount
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_cur_star
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_total_star
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_finish_all_star
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L3_2 == L4_2
  L5_2(L6_2, L7_2)
end
L1_1._setup_progress = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TransferModule
  L2_2 = L1_2
  L1_2 = L1_2.CanTransfer
  L3_2 = G
  L3_2 = L3_2.ChallengeUtils
  L3_2 = L3_2.get_challenge_memory_map_entrance_id
  L3_2 = L3_2()
  L4_2 = G
  L4_2 = L4_2.ChallengeUtils
  L4_2 = L4_2.get_challenge_memory_mapping_info_id
  L4_2 = L4_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._show_jump_btn = L1_2
  L1_2 = A0_2._show_jump_btn
  L1_2 = not L1_2
  A0_2._show_track_btn = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_jump
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._show_jump_btn
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_track
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._show_track_btn
  L1_2(L2_2, L3_2)
end
L1_1._setup_btn_go = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "HandbookGuideChallengeSubTab"
  L4_2 = A0_2._challenge_group_data
  L4_2 = L4_2.ID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L1_1._setup_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._show_jump_btn
  if L1_2 then
    L1_2 = "GameplayGuideData_TeleportBtn_"
    if L1_2 then
      goto lbl_8
    end
  end
  L1_2 = "GameplayGuideData_AreaProgress_"
  ::lbl_8::
  L2_2 = A0_2._guide_data_row
  L2_2 = L2_2.ID
  L1_2 = L1_2 .. L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIButtonClick
  L3_2 = A0_2._owner
  L3_2 = L3_2.__name
  L4_2 = "HandbookChallengeAbyssTabItem"
  L5_2 = L1_2
  L6_2 = A0_2._owner
  L6_2 = L6_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = G
  L2_2 = L2_2.ChallengeUtils
  L2_2 = L2_2.try_goto_challenge_memory
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.ID
  L2_2(L3_2)
end
L1_1._on_btn_go = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.ChallengeUtils
  L1_2 = L1_2.show_challenge_environment_info
  L2_2 = A0_2._challenge_group_data
  L3_2 = false
  L4_2 = false
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.ReddotRefreshGuide
    L2_3 = 0
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1._on_btn_buff = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.in_control_btn_jump
    L2_2.ActionEnabled = A1_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.in_control_tip_jump
    L2_2.IsShowTipBySelected = A1_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.in_control_btn_track
    L2_2.ActionEnabled = A1_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.in_control_tip_track
    L2_2.IsShowTipBySelected = A1_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.in_control_btn_buff
    if L2_2 ~= nil then
      L2_2 = A0_2._binder
      L2_2 = L2_2.in_control_btn_buff
      L2_2.ActionEnabled = A1_2
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.in_control_tip_buff
    if L2_2 ~= nil then
      L2_2 = A0_2._binder
      L2_2 = L2_2.in_control_tip_buff
      L2_2.IsShowTipBySelected = A1_2
    end
  end
end
L1_1.setup_in_control_button_enable = L2_1
return L1_1
