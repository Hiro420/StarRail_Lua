local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Billboard.BubbleTalkPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BubbleTalkPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "BillBoard_TalkPanelFadeIn"
L2_1 = "BillBoard_TalkPanelFadeOut"
L3_1 = G
L3_1 = L3_1.TextExtensions
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.BubbleTalkPanelBinder
  L1_2 = L1_2(L2_2)
  A0_2._binder = L1_2
  A0_2._is_bubble_active = false
  A0_2._is_active = false
  A0_2._bubble_unique_name = nil
  A0_2._text_param = nil
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2.prefab_path = A1_2
end
L0_1.set_prefab_path = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._active_change_callback = A1_2
  A0_2._active_change_callback_self = A2_2
end
L0_1.register_active_change_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIFinishBubbleTalk
  L4_2 = A0_2._on_finish_bubble_talk
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = A0_2._is_active
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._EndStamp
  if L1_2 ~= nil then
    L1_2 = A0_2._EndStamp
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Time
    L2_2 = L2_2.time
    if not (L1_2 <= L2_2) then
      L1_2 = A0_2._text_id
      if L1_2 then
        goto lbl_17
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.Close
  L1_2(L2_2)
  goto lbl_22
  ::lbl_17::
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_text_id
  L3_2 = A0_2._text_id
  L4_2 = A0_2._EndStamp
  L5_2 = A0_2._text_param
  L1_2(L2_2, L3_2, L4_2, L5_2)
  ::lbl_22::
end
L0_1._setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._EndStamp
  if L2_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Time
  L2_2 = L2_2.time
  L3_2 = A0_2._EndStamp
  if L2_2 >= L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.end_bubble_talk
    L2_2(L3_2)
  end
end
L0_1._on_tick = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._bubble_unique_name
  if L2_2 ~= A1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.end_bubble_talk
  L2_2(L3_2)
end
L0_1._on_finish_bubble_talk = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.PlayFadeIn
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._EndStamp = nil
end
L0_1.end_bubble_talk = L4_1
function L4_1(A0_2, A1_2)
  A0_2._bubble_unique_name = A1_2
end
L0_1.set_bubble_unique_name = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._Text = A1_2
  A0_2._EndStamp = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.TextBubble
  if L3_2 ~= nil then
    L3_2 = L3_1.SafeSetText
    L4_2 = A0_2._binder
    L4_2 = L4_2.TextBubble
    L5_2 = A0_2._Text
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.PlayFadeIn
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
end
L0_1.SetText = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._EndStamp = A2_2
  A0_2._text_id = A1_2
  A0_2._text_param = A3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.TextBubble
  if L4_2 ~= nil then
    if A3_2 ~= nil then
      L4_2 = A0_2._binder
      L4_2 = L4_2.TextBubble
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = A1_2
      L7_2 = A0_2._text_param
      L4_2(L5_2, L6_2, L7_2)
    else
      L4_2 = A0_2._binder
      L4_2 = L4_2.TextBubble
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = A1_2
      L4_2(L5_2, L6_2)
    end
    L5_2 = A0_2
    L4_2 = A0_2.PlayFadeIn
    L6_2 = true
    L4_2(L5_2, L6_2)
  end
end
L0_1.safe_set_text_id = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_active = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_light_weight_active = L4_1
function L4_1(A0_2, A1_2)
  A0_2._EndStamp = A1_2
end
L0_1.SetEndStamp = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  A0_2._EndStamp = nil
  L2_2 = A0_2
  L1_2 = A0_2.Close
  L1_2(L2_2)
  A0_2._bubble_id = 0
end
L0_1.reset = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.AniRoot
  if L2_2 ~= nil then
    L2_2 = A0_2._EndStamp
    if L2_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2._is_bubble_active
  if A1_2 == L2_2 then
    return
  end
  A0_2._is_bubble_active = A1_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.AniRoot
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L2_2 = L2_2.activeInHierarchy
    if not L2_2 then
      L2_2 = G
      L2_2 = L2_2.Utils
      L2_2 = L2_2.invoke_callback
      L3_2 = A0_2._active_change_callback
      L4_2 = A0_2._active_change_callback_self
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.AniRoot
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
  end
end
L0_1.PlayFadeIn = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_bubble_active = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.AniRoot
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayToEnd
    L2_2 = A0_2._binder
    L2_2 = L2_2.AniRoot
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1.Close = L4_1
return L0_1
