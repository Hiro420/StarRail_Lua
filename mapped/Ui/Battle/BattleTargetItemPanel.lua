local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Battle.BattleTargetItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleTargetItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.BattleTargetStatus
L2_1 = {}
L3_1 = L1_1.Progress
L2_1[L3_1] = "Pending"
L3_1 = L1_1.Succeed
L2_1[L3_1] = "Succeed"
L3_1 = L1_1.Fail
L2_1[L3_1] = "Failed"
L3_1 = "Switch"
L4_1 = 2.3
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = {}
  L4_2 = L1_1.Progress
  L3_2[L4_2] = "ProgressHint"
  L4_2 = L1_1.Succeed
  L3_2[L4_2] = "SuccessHint"
  L4_2 = L1_1.Fail
  L3_2[L4_2] = "FailHint"
  A0_2._status_to_hint_anim_trigger = L3_2
  A0_2._wait_switch_anim = false
  L4_2 = A0_2
  L3_2 = A0_2._add_count_down_timer
  L5_2 = A0_2._on_switch_end
  L6_2 = L4_1
  L7_2 = L4_1
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  A0_2._wait_switch_timer = L3_2
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._data = A1_2
  A0_2._use_simple_desc = A2_2
  L3_2 = A0_2._status_to_hint_anim_trigger
  L4_2 = L1_1.Succeed
  L5_2 = A0_2._data
  L5_2 = L5_2.IsFailProgress
  if L5_2 then
    L5_2 = "FailProgressHint"
    if L5_2 then
      goto lbl_13
    end
  end
  L5_2 = "SuccessHint"
  ::lbl_13::
  L3_2[L4_2] = L5_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_desc
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_progress
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_static_status
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_star_info_node
  L3_2(L4_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._data
  if L2_2 then
    L2_2 = A0_2._data
    L2_2 = L2_2.Status
    L3_2 = A1_2.Status
    if L2_2 ~= L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._setup_static_status
      L2_2(L3_2)
    end
  end
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_progress
  L2_2(L3_2)
end
L0_1.refresh_when_progress_changed = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.BattleTargetConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._data
  L2_2 = L2_2.TargetID
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = L1_2.MultiTarget
  if L3_2 then
    L3_2 = L1_2.MultiTarget
    L3_2 = L3_2.Length
    if 0 < L3_2 then
      L3_2 = L1_2.MultiTarget
      L3_2 = L3_2.Length
      L3_2 = L3_2 - 1
      L4_2 = 0
      L5_2 = -1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = L1_2.MultiTarget
        L7_2 = L7_2[L6_2]
        L8_2 = A0_2._data
        L8_2 = L8_2.TotalProgress
        if L7_2 < L8_2 then
          L2_2 = L7_2
          break
        end
      end
    end
  end
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._reset_all_animator_trigger
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.state_animator
  L4_2 = L3_2
  L3_2 = L3_2.SetTrigger
  L5_2 = A0_2._status_to_hint_anim_trigger
  L6_2 = L1_1.Succeed
  L5_2 = L5_2[L6_2]
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.state_animator
  L4_2 = L3_2
  L3_2 = L3_2.SetTrigger
  L5_2 = L3_1
  L3_2(L4_2, L5_2)
  A0_2._wait_switch_anim = true
  L3_2 = A0_2._binder
  L3_2 = L3_2.target_progress_total
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.target_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._data
  L5_2 = L5_2.SimpleDesc
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._wait_switch_timer
  L4_2 = L3_2
  L3_2 = L3_2.reset
  L3_2(L4_2)
  L3_2 = A0_2._wait_switch_timer
  L4_2 = L3_2
  L3_2 = L3_2.start
  L3_2(L4_2)
end
L0_1.play_target_switch_anim = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.BattleTargetConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._data
  L2_2 = L2_2.TargetID
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = L1_2.MultiTarget
  if L3_2 then
    L3_2 = L1_2.MultiTarget
    L3_2 = L3_2.Length
    if 0 < L3_2 then
      L3_2 = L1_2.MultiTarget
      L3_2 = L3_2.Length
      L3_2 = L3_2 - 1
      L4_2 = 0
      L5_2 = -1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = L1_2.MultiTarget
        L7_2 = L7_2[L6_2]
        L8_2 = A0_2._data
        L8_2 = L8_2.TotalProgress
        if L7_2 < L8_2 then
          L2_2 = L7_2
          break
        end
      end
    end
  end
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.target_progress_total
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.target_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._data
  L5_2 = L5_2.SimpleDesc
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._reset_all_animator_trigger
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.state_animator
  L4_2 = L3_2
  L3_2 = L3_2.SetTrigger
  L5_2 = A0_2._status_to_hint_anim_trigger
  L6_2 = L1_1.Succeed
  L5_2 = L5_2[L6_2]
  L3_2(L4_2, L5_2)
end
L0_1.play_target_no_switch_anim = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1.play_new_target_anim = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._wait_switch_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  A0_2._wait_switch_anim = false
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_static_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_desc
  L1_2(L2_2)
end
L0_1._on_switch_end = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = false
  if A1_2 then
    L2_2 = A1_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_star
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_status
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_star_info_node = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.BattleTargetConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._data
  L2_2 = L2_2.TargetID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_star
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2.IconType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.BattleTargetIconType
  L5_2 = L5_2.Star
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_status
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2.IconType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.BattleTargetIconType
  L5_2 = L5_2.Round
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_star_info_node = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._wait_switch_anim
  if L1_2 then
    return
  end
  L1_2 = A0_2._use_simple_desc
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.target_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._data
    L3_2 = L3_2.SimpleDesc
    L4_2 = A0_2._data
    L4_2 = L4_2.TotalProgress
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.target_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._data
    L3_2 = L3_2.Desc
    L4_2 = A0_2._data
    L4_2 = L4_2.TotalProgress
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_desc = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._wait_switch_anim
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.target_progress_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.ShouldShowProgress
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.target_progress_current
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.CurrentProgress
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.target_progress_total
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.TotalProgress
  L1_2(L2_2, L3_2)
end
L0_1._setup_progress = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._wait_switch_anim
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._reset_all_animator_trigger
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = A0_2._data
  L3_2 = L3_2.Status
  L3_2 = L2_1[L3_2]
  L1_2(L2_2, L3_2)
end
L0_1._setup_static_status = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._reset_all_animator_trigger
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = A0_2._status_to_hint_anim_trigger
  L4_2 = A0_2._data
  L4_2 = L4_2.Status
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
end
L0_1.setup_hint_status = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._status_to_hint_anim_trigger
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.state_animator
    L7_2 = L6_2
    L6_2 = L6_2.ResetTrigger
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = pairs
  L2_2 = L2_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.state_animator
    L7_2 = L6_2
    L6_2 = L6_2.ResetTrigger
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._reset_all_animator_trigger = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_star
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L5_1
return L0_1
