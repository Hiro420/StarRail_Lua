local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumTalkPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MuseumModule
L2_1 = "TalkDialogFadeIn"
L3_1 = "TalkDialogFadeOut"
function L4_1(A0_2)
  local L1_2
  A0_2._is_visible = false
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.RandomGetTalkID
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._trigger_talk
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.trigger_random_talk = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetMustTriggerTalkID
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._trigger_talk
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1.trigger_fixed_talk = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == 0 then
    return
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.RandomGetTextIDByTalkID
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MuseumDeskTalkConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.CustomString
  L5_2 = G
  L5_2 = L5_2.StrExt
  L5_2 = L5_2.IsNullOrEmpty
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = G
    L5_2 = L5_2.Utils
    L5_2 = L5_2.trigger_custom_string
    L6_2 = L4_2
    L5_2(L6_2)
  end
  if L2_2 then
    L5_2 = A0_2._is_visible
    if L5_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.anim_event
      L6_2 = L5_2
      L5_2 = L5_2.AddAnimationEvent
      L7_2 = L3_1
      function L8_2()
        local L0_3, L1_3, L2_3
        L0_3 = A0_2._binder
        L0_3 = L0_3.anim_event
        L1_3 = L0_3
        L0_3 = L0_3.ClearEvent
        L0_3(L1_3)
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._begin_talk
        L2_3 = L2_2
        L0_3(L1_3, L2_3)
      end
      L5_2(L6_2, L7_2, L8_2)
      L6_2 = A0_2
      L5_2 = A0_2._try_play_talk_anim
      L7_2 = false
      L5_2(L6_2, L7_2)
    else
      L6_2 = A0_2
      L5_2 = A0_2._begin_talk
      L7_2 = L2_2
      L5_2(L6_2, L7_2)
    end
  end
end
L0_1._trigger_talk = L4_1
function L4_1(A0_2, A1_2)
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
L0_1._begin_talk = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._is_visible
  if L2_2 == A1_2 then
    if A1_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_root
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = L2_1
      L2_2(L3_2, L4_2)
    end
    return
  end
  A0_2._is_visible = A1_2
  if A1_2 then
    L2_2 = L2_1
    if L2_2 then
      goto lbl_19
    end
  end
  L2_2 = L3_1
  ::lbl_19::
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_root
  L4_2 = L3_2
  L3_2 = L3_2.Play
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._try_play_talk_anim = L4_1
function L4_1(A0_2)
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
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L0_1._immediate_end_talk = L4_1
return L0_1
