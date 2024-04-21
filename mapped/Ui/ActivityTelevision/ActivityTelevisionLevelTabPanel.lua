local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityTelevisionLevelTabPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityTelevisionModule
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2.data = A1_2
  L3_2 = A1_2.Row
  A0_2.stage_row = L3_2
  L4_2 = A1_2
  L3_2 = A1_2.IsRevealed
  L3_2 = L3_2(L4_2)
  A0_2.is_revealed = L3_2
  A0_2.index = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.setup_detail_info
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_unlock_state
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_rank
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_level_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2.index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_channel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2.stage_row
  L3_2 = L3_2.ChannelName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.is_revealed
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2.stage_row
    L3_2 = L3_2.StageName
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_monster
    L4_2 = A0_2.stage_row
    L4_2 = L4_2.MiniImagePath
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2.stage_row
    L3_2 = L3_2.OriginalStageName
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_monster
    L4_2 = A0_2.stage_row
    L4_2 = L4_2.OriginalMiniImagePath
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityTelevisionLevelUnlock"
  L4_2 = A0_2.data
  L4_2 = L4_2.ID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1.setup_detail_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.data
  L1_2 = L1_2.Score
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetScoreRank
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.rank_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_rank
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = 0 < L1_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_rank = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.data
  L2_2 = L1_2
  L1_2 = L1_2.IsPreLevelFinished
  L1_2 = L1_2(L2_2)
  A0_2.pre_level_finish = L1_2
  L1_2 = A0_2.data
  L1_2 = L1_2.ScheduleData
  L1_2 = A0_2.data
  L1_2 = L1_2.ScheduleData
  L2_2 = L1_2
  L1_2 = L1_2.IsInSchedule
  L1_2 = L1_2 ~= nil and L1_2
  A0_2.is_in_schedule = L1_2
  L1_2 = A0_2.is_in_schedule
  if L1_2 then
    L1_2 = A0_2.pre_level_finish
  end
  A0_2.unlock = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = A0_2.unlock
    L8_2 = not L8_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock_timer
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.is_in_schedule
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_channel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.is_in_schedule
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.is_in_schedule
  if not L1_2 then
    L1_2 = A0_2.data
    L1_2 = L1_2.ScheduleData
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.remain_timer
      L2_2 = L1_2
      L1_2 = L1_2.SetTargetTime
      L3_2 = A0_2.data
      L3_2 = L3_2.ScheduleData
      L3_2 = L3_2.BeginTimeDate
      L4_2 = A0_2._expire_call_back
      L5_2 = A0_2
      L6_2 = 2
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1.setup_unlock_state = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
end
L0_1._expire_call_back = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_unlock_state
  L1_2(L2_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2.data
  L1_2 = L1_2.Score
  L2_2 = 0 < L1_2
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_complete
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.SafeSetActive
    L10_2 = L2_2
    L8_2(L9_2, L10_2)
  end
end
L0_1.setup_finish_state = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._callback_event = A1_2
  A0_2._callback_listener = A2_2
  A0_2._callback_param = A3_2
end
L0_1.register_click_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.is_in_schedule
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_ActivityTelevision_GotoToast03"
    L1_2(L2_2, L3_2)
    return
  else
    L1_2 = A0_2.pre_level_finish
    if not L1_2 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIPileToastMessageTextID
      L3_2 = "UIText_ActivityTelevision_GotoToast01"
      L1_2(L2_2, L3_2)
      return
    end
  end
  L1_2 = A0_2._callback_listener
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_event
    L2_2 = A0_2._callback_listener
    L3_2 = A0_2._callback_param
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_click = L2_1
return L0_1
