local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.ClockParkGameStateEnum
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ActivityClockParkGamePlayBranchSelectPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_in_branch_select
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_branch_select_result
    L2_2(L3_2)
  end
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.ClockParkInstance
  L2_2 = L1_2 ~= nil
  return L2_2
end
L2_1._is_in_branch_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1.ClockParkInstance
  if L1_2 == nil then
    return
  end
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.DiceInfo
  L2_2 = L2_2.DiceItemList
  L3_2 = L2_2.Count
  L3_2 = 1 < L3_2
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._show_multi_branch
    L4_2(L5_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._show_single_branch
    L4_2(L5_2)
  end
end
L2_1._refresh_branch_select_result = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = L0_1.ClockParkInstance
  L2_2 = L1_2.CurGameState
  L3_2 = L1_2.ScriptInfo
  L3_2 = L3_2.DataRef
  L5_2 = L2_2
  L4_2 = L2_2.IsTrueEndBranchUnlock
  L4_2 = L4_2(L5_2)
  L6_2 = L3_2
  L5_2 = L3_2.IsReachedFalseEnding
  L5_2 = L5_2(L6_2)
  L7_2 = A0_2
  L6_2 = A0_2._show_left_branch
  L8_2 = true
  L9_2 = L4_2
  L10_2 = true
  L11_2 = L5_2
  L13_2 = L2_2
  L12_2 = L2_2.IsSelectedFalseEndChapter
  L12_2, L13_2 = L12_2(L13_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = A0_2
  L6_2 = A0_2._show_right_branch
  L8_2 = true
  L9_2 = true
  L10_2 = true
  L12_2 = L3_2
  L11_2 = L3_2.IsReachedTrueEnding
  L11_2 = L11_2(L12_2)
  L13_2 = L2_2
  L12_2 = L2_2.IsSelectedTrueEndChapter
  L12_2, L13_2 = L12_2(L13_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L2_1._show_multi_branch = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L0_1.ClockParkInstance
  L2_2 = L1_2.CurGameState
  L4_2 = A0_2
  L3_2 = A0_2._show_left_branch
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._show_right_branch
  L5_2 = true
  L6_2 = true
  L7_2 = false
  L8_2 = false
  L10_2 = L2_2
  L9_2 = L2_2.IsSelectedTrueEndChapter
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    L10_2 = L2_2
    L9_2 = L2_2.IsSelectedFalseEndChapter
    L9_2 = L9_2(L10_2)
  end
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L2_1._show_single_branch = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_arrow_left
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = A1_2
  L6_2(L7_2, L8_2)
  if A1_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_left_lock
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = not A2_2
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_left_unlock
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = A2_2
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_left_text
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = A2_2 or L8_2
    if A2_2 then
      L8_2 = A3_2
    end
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_title_left_lock
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = not A2_2 and L8_2
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_title_left_unlock
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = A2_2 or L8_2
    if A2_2 then
      L8_2 = A3_2
    end
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_left_finish
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = A2_2 or L8_2
    if A2_2 then
      L8_2 = A4_2
    end
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.anim_left_unlock
    L7_2 = L6_2
    L6_2 = L6_2.SetBool
    L8_2 = "IsSelect"
    L9_2 = A5_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L2_1._show_left_branch = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_arrow_right
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = A1_2
  L6_2(L7_2, L8_2)
  if A1_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_right_lock
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = not A2_2
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_right_unlock
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = A2_2
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_right_text
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = A2_2 or L8_2
    if A2_2 then
      L8_2 = A3_2
    end
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_title_right_lock
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = not A2_2 and L8_2
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_title_right_unlock
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = A2_2 or L8_2
    if A2_2 then
      L8_2 = A3_2
    end
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_right_finish
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = A2_2 or L8_2
    if A2_2 then
      L8_2 = A4_2
    end
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.anim_right_unlock
    L7_2 = L6_2
    L6_2 = L6_2.SetBool
    L8_2 = "IsSelect"
    L9_2 = A5_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L2_1._show_right_branch = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_left_unlock
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "FadeOut"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_left_lock
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "FadeOut"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_right_unlock
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "FadeOut"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_right_lock
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "FadeOut"
  L1_2(L2_2, L3_2)
end
L2_1.show_fade_out = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_left_unlock
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "FadeIn"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_left_lock
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "FadeIn"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_right_unlock
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "FadeIn"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_right_lock
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "FadeIn"
  L1_2(L2_2, L3_2)
end
L2_1.show_fade_in = L3_1
return L2_1
