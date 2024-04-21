local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = "TalkDialogFadeIn"
L1_1 = "TalkDialogFadeOut"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ActivityMonopolyEventTalkPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
  A0_2._is_visible = false
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = A0_2._is_visible
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_event
      L3_2 = L2_2
      L2_2 = L2_2.AddAnimationEvent
      L4_2 = L1_1
      function L5_2()
        local L0_3, L1_3, L2_3
        L0_3 = A0_2._binder
        L0_3 = L0_3.anim_event
        L1_3 = L0_3
        L0_3 = L0_3.ClearEvent
        L0_3(L1_3)
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._begin_talk
        L2_3 = A1_2
        L0_3(L1_3, L2_3)
      end
      L2_2(L3_2, L4_2, L5_2)
      L3_2 = A0_2
      L2_2 = A0_2._try_play_talk_anim
      L4_2 = false
      L2_2(L3_2, L4_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2._begin_talk
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L2_1.trigger_talk = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._try_play_talk_anim
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_content
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIStringUtil
  L2_2 = L2_2.GetSimpleTalkTextSpeed
  L2_2 = L2_2()
  L3_2 = 1 / L2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.motion_content
  L5_2 = L4_2
  L4_2 = L4_2.ShowTextIDWithMotion
  L6_2 = L3_2
  L7_2 = nil
  L8_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L2_1._begin_talk = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._is_visible
  if L2_2 == A1_2 then
    if A1_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_root
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = L0_1
      L2_2(L3_2, L4_2)
    end
    return
  end
  A0_2._is_visible = A1_2
  if A1_2 then
    L2_2 = L0_1
    if L2_2 then
      goto lbl_19
    end
  end
  L2_2 = L1_1
  ::lbl_19::
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_root
  L4_2 = L3_2
  L3_2 = L3_2.Play
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L2_1._try_play_talk_anim = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_visible
  if not L1_2 then
    return
  end
  A0_2._is_visible = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.motion_content
  L2_2 = L1_2
  L1_2 = L1_2.ImmediateFinishAllMotions
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L2_1._immediate_end_talk = L3_1
return L2_1
