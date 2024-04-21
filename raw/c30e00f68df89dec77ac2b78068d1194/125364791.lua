local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonopolySpeakBubble3DPanel"
L2_1 = G
L2_1 = L2_1.BaseUI3DPanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "Monopoly_Activity_BubbleTalk_Duration"
L2_1 = "Monopoly_Activity_BubbleTalk_Case_MoveCount"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.MonopolyModule
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_1
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.UintValue
  A0_2._duration = L2_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/TalkText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._content = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/StepNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._step_content = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._animation_cmpt = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.set_active_proxy
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  A0_2._start_time = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_tick
  L1_2(L2_2)
end
L0_1._on_dispose = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MonopolyPlayerTalkConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2.Value
  L4_2 = L4_2.UintValue
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._cur_row
  if L4_2 then
    L4_2 = A0_2._cur_row
    L4_2 = L4_2.Priority
    L5_2 = L3_2.Priority
    if L4_2 > L5_2 then
      L5_2 = A0_2
      L4_2 = A0_2._notify_cur_display_item_finished
      L6_2 = A1_2
      L4_2(L5_2, L6_2)
      return
    end
  end
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Time
  L4_2 = L4_2.time
  A0_2._start_time = L4_2
  A0_2._cur_row = L3_2
  A0_2._cur_str = A1_2
  L4_2 = A0_2._cur_str
  L5_2 = L2_1
  if L4_2 == L5_2 then
    L4_2 = A0_2._content
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._step_content
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._step_content
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = A0_2._cur_row
    L6_2 = L6_2.ContentTextID
    L8_2 = A0_2
    L7_2 = A0_2._get_display_content_param
    L9_2 = A0_2._cur_str
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  else
    L4_2 = A0_2._content
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._step_content
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._content
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = A0_2._cur_row
    L6_2 = L6_2.ContentTextID
    L8_2 = A0_2
    L7_2 = A0_2._get_display_content_param
    L9_2 = A0_2._cur_str
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1.update_content = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L2_1
  if A1_2 == L2_2 then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormat
    L3_2 = "bubble param "
    L4_2 = tostring
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.MonopolyUtils
    L5_2 = L5_2.GetRemainStepCount
    L5_2 = L5_2()
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.MonopolyUtils
    L2_2 = L2_2.GetRemainStepCount
    return L2_2()
  end
end
L0_1._get_display_content_param = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_active = A1_2
  L2_2 = A0_2._is_active
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_active
    L4_2 = A0_2._is_active
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._animation_cmpt
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "MonopolySetpCountFadeIn"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._animation_cmpt
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "MonopolySetpCountFadeOut"
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._notify_cur_display_item_finished
    L4_2 = A0_2._cur_str
    L2_2(L3_2, L4_2)
    A0_2._cur_row = nil
    A0_2._cur_str = nil
  end
end
L0_1.set_active_proxy = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyPlayerBubbleFinished
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._notify_cur_display_item_finished = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_active
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Time
  L2_2 = L2_2.time
  L3_2 = A0_2._start_time
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2._duration
  if L2_2 > L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_active_proxy
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
end
L0_1._on_tick = L4_1
return L0_1
