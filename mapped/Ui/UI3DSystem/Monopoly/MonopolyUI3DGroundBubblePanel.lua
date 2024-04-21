local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonopolyUI3DGroundBubblePanel"
L2_1 = G
L2_1 = L2_1.BaseUI3DPanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "Monopoly_Activity_BubbleTalk_Duration"
function L2_1(A0_2, A1_2)
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
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "TalkPanel/Root/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "TalkPanel/Root/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "TalkPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._animation_cmpt = L1_2
  A0_2._is_active = false
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  A0_2._start_time = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_tick
  L1_2(L2_2)
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
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
L0_1._on_tick = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._is_active
  if not L2_2 then
    L2_2 = false
  end
  L2_2 = A1_2 == L2_2
  A0_2._is_active = A1_2
  if L2_2 then
    return
  end
  L3_2 = A0_2._is_active
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.set_active
    L5_2 = A0_2._is_active
    L3_2(L4_2, L5_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_AudioManager
    L4_2 = L3_2
    L3_2 = L3_2.PostEvent
    L5_2 = "Ev_sfx_ui_menu_activity_monopoly_popupDialog_fadeIn"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._animation_cmpt
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = "MonopolySetpCountFadeIn"
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._animation_cmpt
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = "MonopolySetpCountFadeOut"
    L3_2(L4_2, L5_2)
  end
end
L0_1.set_active_proxy = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L2_2 = A1_2.Root
    if L2_2 ~= nil then
      L2_2 = A0_2._root
      if L2_2 ~= nil then
        goto lbl_10
      end
    end
  end
  do return end
  ::lbl_10::
  L2_2 = A0_2._root
  L3_2 = L2_2
  L2_2 = L2_2.SetParent
  L4_2 = A1_2.Root
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Title
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Desc
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Time
  L2_2 = L2_2.time
  A0_2._start_time = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.set_active_proxy
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_active_proxy
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1.show = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_active_proxy
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.close = L2_1
return L0_1
