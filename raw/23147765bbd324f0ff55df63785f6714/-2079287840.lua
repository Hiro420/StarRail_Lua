local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.HeartDial.ClockBoyMoodChangePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ClockBoyMoodChangePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeartDialModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.HeartDialEmoType
L3_1 = {}
L4_1 = L2_1.Happy
L3_1[L4_1] = "Happy_Open"
L4_1 = L2_1.Anger
L3_1[L4_1] = "Angry_Open"
L4_1 = L2_1.Sad
L3_1[L4_1] = "Cry_Open"
L4_1 = L2_1.Peace
L3_1[L4_1] = "Silent_Open"
L4_1 = {}
L5_1 = L2_1.Happy
L4_1[L5_1] = "Happy_Loop"
L5_1 = L2_1.Anger
L4_1[L5_1] = "Angry_Loop"
L5_1 = L2_1.Sad
L4_1[L5_1] = "Cry_Loop"
L5_1 = L2_1.Peace
L4_1[L5_1] = "Silent_Loop"
L5_1 = {}
L6_1 = L2_1.Happy
L5_1[L6_1] = "ClockBoyMood_Happy"
L6_1 = L2_1.Anger
L5_1[L6_1] = "ClockBoyMood_Angry"
L6_1 = L2_1.Sad
L5_1[L6_1] = "ClockBoyMood_Cry"
L6_1 = L2_1.Peace
L5_1[L6_1] = "ClockBoyMood_Silent"
L6_1 = {}
L7_1 = L2_1.Happy
L8_1 = {}
L9_1 = L2_1.Sad
L8_1[L9_1] = "HappyToCry"
L9_1 = L2_1.Anger
L8_1[L9_1] = "HappyToAngry"
L6_1[L7_1] = L8_1
L7_1 = L2_1.Anger
L8_1 = {}
L9_1 = L2_1.Happy
L8_1[L9_1] = "AngryToHappy"
L9_1 = L2_1.Peace
L8_1[L9_1] = "AngryToSilent"
L6_1[L7_1] = L8_1
L7_1 = L2_1.Sad
L8_1 = {}
L9_1 = L2_1.Peace
L8_1[L9_1] = "CryToSilent"
L9_1 = L2_1.Happy
L8_1[L9_1] = "CryToHappy"
L6_1[L7_1] = L8_1
L7_1 = L2_1.Peace
L8_1 = {}
L9_1 = L2_1.Sad
L8_1[L9_1] = "SilentToCry"
L9_1 = L2_1.Anger
L8_1[L9_1] = "SilentToAngry"
L6_1[L7_1] = L8_1
L7_1 = {}
L8_1 = L2_1.Happy
L9_1 = {}
L10_1 = L2_1.Sad
L9_1[L10_1] = "ClockBoyMood_HappyToCry"
L10_1 = L2_1.Anger
L9_1[L10_1] = "ClockBoyMood_HappyToAngry"
L7_1[L8_1] = L9_1
L8_1 = L2_1.Anger
L9_1 = {}
L10_1 = L2_1.Happy
L9_1[L10_1] = "ClockBoyMood_AngryToHappy"
L10_1 = L2_1.Peace
L9_1[L10_1] = "ClockBoyMood_AngryToSilent"
L7_1[L8_1] = L9_1
L8_1 = L2_1.Sad
L9_1 = {}
L10_1 = L2_1.Peace
L9_1[L10_1] = "ClockBoyMood_CryToSilent"
L10_1 = L2_1.Happy
L9_1[L10_1] = "ClockBoyMood_CryToHappy"
L7_1[L8_1] = L9_1
L8_1 = L2_1.Peace
L9_1 = {}
L10_1 = L2_1.Sad
L9_1[L10_1] = "ClockBoyMood_SilentToCry"
L10_1 = L2_1.Anger
L9_1[L10_1] = "ClockBoyMood_SilentToAngry"
L7_1[L8_1] = L9_1
function L8_1(A0_2)
  local L1_2
end
L0_1._on_load = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._current_emo = A1_2
  L3_2 = A0_2._spine_timer
  if L3_2 ~= nil then
    L3_2 = A0_2._spine_timer
    L4_2 = L3_2
    L3_2 = L3_2.stop
    L3_2(L4_2)
    A0_2._spine_timer = nil
  end
  if A2_2 == nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_root
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = A0_2._current_emo
    L5_2 = L5_1[L5_2]
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.mood_spine
    L3_2 = L3_2.AnimationState
    L4_2 = L3_2
    L3_2 = L3_2.SetAnimation
    L5_2 = 0
    L6_2 = A0_2._current_emo
    L6_2 = L3_1[L6_2]
    L7_2 = false
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    A0_2._spine_anim = L3_2
    L4_2 = A0_2
    L3_2 = A0_2._add_count_down_timer
    L5_2 = A0_2._on_spine_end
    L6_2 = A0_2._spine_anim
    L6_2 = L6_2.AnimationEnd
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._spine_timer = L3_2
    L3_2 = A0_2._spine_timer
    L4_2 = L3_2
    L3_2 = L3_2.reset
    L3_2(L4_2)
    L3_2 = A0_2._spine_timer
    L4_2 = L3_2
    L3_2 = L3_2.start
    L3_2(L4_2)
  else
    L3_2 = L6_1[A2_2]
    L4_2 = A0_2._current_emo
    L3_2 = L3_2[L4_2]
    L4_2 = L7_1[A2_2]
    L5_2 = A0_2._current_emo
    L4_2 = L4_2[L5_2]
    if L3_2 == nil or L4_2 == nil then
      L5_2 = G
      L5_2 = L5_2.SuperDebug
      L5_2 = L5_2.LogErrorFormat
      L6_2 = "cant find heartdial spine change from %s to %s "
      L7_2 = A2_2
      L8_2 = A1_2
      L5_2(L6_2, L7_2, L8_2)
      return
    end
    L5_2 = A0_2._binder
    L5_2 = L5_2.mood_spine
    L5_2 = L5_2.AnimationState
    L6_2 = L5_2
    L5_2 = L5_2.SetAnimation
    L7_2 = 0
    L8_2 = L3_2
    L9_2 = false
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    A0_2._spine_anim = L5_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.anim_root
    L6_2 = L5_2
    L5_2 = L5_2.Play
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2._add_count_down_timer
    L7_2 = A0_2._on_spine_end
    L8_2 = A0_2._spine_anim
    L8_2 = L8_2.AnimationEnd
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    A0_2._spine_timer = L5_2
    L5_2 = A0_2._spine_timer
    L6_2 = L5_2
    L5_2 = L5_2.reset
    L5_2(L6_2)
    L5_2 = A0_2._spine_timer
    L6_2 = L5_2
    L5_2 = L5_2.start
    L5_2(L6_2)
  end
end
L0_1.setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._spine_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mood_spine
  L1_2 = L1_2.AnimationState
  L2_2 = L1_2
  L1_2 = L1_2.SetAnimation
  L3_2 = 0
  L4_2 = A0_2._current_emo
  L4_2 = L4_1[L4_2]
  L5_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._spine_anim = L1_2
end
L0_1._on_spine_end = L8_1
return L0_1
