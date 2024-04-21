local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Billboard.InwardBubbleTalkPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "InwardBubbleTalkPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 15
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.InwardBubbleTalkType
L3_1 = {}
L4_1 = L2_1.Atmosphere
L3_1[L4_1] = "SpriteOutput/DreamWhiteBox/AtmosphereBubbleBackground.png"
L4_1 = L2_1.Joker
L3_1[L4_1] = "SpriteOutput/DreamWhiteBox/JokerBubbleBackground.png"
L4_1 = L2_1.Worried
L3_1[L4_1] = "SpriteOutput/DreamWhiteBox/WorriedBubbleBackground.png"
L4_1 = "SpriteOutput/DreamWhiteBox/JokerBubbleIcon.png"
L5_1 = "SpriteOutput/DreamWhiteBox/WorriedBubbleIcon.png"
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIContextAssetLoader
  L1_2 = L1_2()
  A0_2._AssetLoader = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.InwardBubbleTalkPanelBinder
  L1_2 = L1_2(L2_2)
  A0_2._binder = L1_2
  L1_2 = L2_1.Invalid
  A0_2._inward_bubble_type = L1_2
  A0_2._is_bubble_active = false
  A0_2._is_active = false
  A0_2._bubble_unique_name = nil
end
L0_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIFinishBubbleTalk
  L4_2 = A0_2._on_finish_bubble_talk
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = A0_2._is_active
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.Close
  L1_2(L2_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._inward_bubble_type = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_inward_bubble = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._inward_bubble_type
  L2_2 = L2_1.Invalid
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_icon
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._AssetLoader
  L2_2 = L1_2
  L1_2 = L1_2.AsyncLoadSpriteTo
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_bg
  L4_2 = A0_2._inward_bubble_type
  L4_2 = L3_1[L4_2]
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._inward_bubble_type
  L2_2 = L2_1.Atmosphere
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_icon
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._inward_bubble_type
    L2_2 = L2_1.Joker
    if L1_2 == L2_2 then
      L1_2 = A0_2._AssetLoader
      L2_2 = L1_2
      L1_2 = L1_2.AsyncLoadSpriteTo
      L3_2 = A0_2._binder
      L3_2 = L3_2.img_icon
      L4_2 = L4_1
      L1_2(L2_2, L3_2, L4_2)
    else
      L1_2 = A0_2._AssetLoader
      L2_2 = L1_2
      L1_2 = L1_2.AsyncLoadSpriteTo
      L3_2 = A0_2._binder
      L3_2 = L3_2.img_icon
      L4_2 = L5_1
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._refresh = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._on_distance_change
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._end_stamp
  if L3_2 == nil then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Time
  L3_2 = L3_2.time
  L4_2 = A0_2._end_stamp
  if L3_2 >= L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2.end_bubble_talk
    L3_2(L4_2)
  end
end
L0_1._on_tick = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  if L2_2 == nil then
    return
  end
  L2_2 = L1_1
  L2_2 = A1_2 < L2_2
  L3_2 = A0_2._show_bubble
  if L3_2 == L2_2 then
    return
  end
  A0_2._show_bubble = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bubble
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetLightWeightActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_distance_change = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._bubble_unique_name
  if L2_2 ~= A1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.end_bubble_talk
  L2_2(L3_2)
end
L0_1._on_finish_bubble_talk = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.play_fade
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._end_stamp = nil
end
L0_1.end_bubble_talk = L6_1
function L6_1(A0_2, A1_2)
  A0_2._bubble_unique_name = A1_2
end
L0_1.set_bubble_unique_name = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._text = A1_2
  A0_2._end_stamp = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_bubble
  if L3_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_bubble
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.play_fade
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
end
L0_1.SetText = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._end_stamp = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_bubble
  if L3_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_bubble
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.play_fade
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
end
L0_1.safe_set_text_id = L6_1
function L6_1(A0_2, A1_2)
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
L0_1.set_light_weight_active = L6_1
function L6_1(A0_2, A1_2)
  A0_2._end_stamp = A1_2
end
L0_1.SetEndStamp = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  A0_2._end_stamp = nil
  L2_2 = A0_2
  L1_2 = A0_2.Close
  L1_2(L2_2)
  A0_2._bubble_id = 0
end
L0_1.reset = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bubble
  if L2_2 ~= nil then
    L2_2 = A0_2._end_stamp
    if L2_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  A0_2._is_bubble_active = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bubble
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.play_fade = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_bubble_active = false
  L1_2 = L2_1.Invalid
  A0_2._inward_bubble_type = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bubble
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_bubble
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_icon
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1.Close = L6_1
return L0_1
