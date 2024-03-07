local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PileToastItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.TextExtensions
L2_1 = G
L2_1 = L2_1.ComponentExtensions
function L3_1(A0_2)
  local L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._hide
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ani_animation
  L2_2 = L1_2
  L1_2 = L1_2.IsPlaying
  L3_2 = "HintInfoDialogFadeIn"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.ani_animation
    L2_2 = L1_2
    L1_2 = L1_2.IsPlaying
    L3_2 = "HintInfoDialogFadeOut"
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      goto lbl_17
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._hide
  L1_2(L2_2)
  ::lbl_17::
  L1_2 = A0_2._binder
  L1_2 = L1_2.ani_animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "HintInfoDialogFadeIn"
  L1_2(L2_2, L3_2)
end
L0_1.fade_in = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ani_animation
  L2_2 = L1_2
  L1_2 = L1_2.IsPlaying
  L3_2 = "HintInfoDialogFadeIn"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.ani_animation
    L2_2 = L1_2
    L1_2 = L1_2.IsPlaying
    L3_2 = "HintInfoDialogFadeOut"
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      goto lbl_17
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._show
  L1_2(L2_2)
  ::lbl_17::
  L1_2 = A0_2._binder
  L1_2 = L1_2.ani_animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "HintInfoDialogFadeOut"
  L1_2(L2_2, L3_2)
end
L0_1.fade_out = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = 0
  L5_2 = A1_2
  L6_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.localPosition = L3_2
end
L0_1.set_positionY = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2
  if A5_2 ~= nil then
    L6_2 = A0_2._binder
    L6_2 = L6_2.txt_text
    L7_2 = L6_2
    L6_2 = L6_2.SetCustomizedText
    L8_2 = A5_2
    L6_2(L7_2, L8_2)
  else
    L6_2 = type
    L7_2 = A4_2
    L6_2 = L6_2(L7_2)
    if L6_2 == "table" then
      L6_2 = A0_2._binder
      L6_2 = L6_2.txt_text
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetTextID
      L8_2 = A1_2
      L9_2 = unpack
      L10_2 = A4_2
      L9_2, L10_2 = L9_2(L10_2)
      L6_2(L7_2, L8_2, L9_2, L10_2)
    else
      L6_2 = A0_2._binder
      L6_2 = L6_2.txt_text
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetTextID
      L8_2 = A1_2
      L9_2 = A4_2
      L6_2(L7_2, L8_2, L9_2)
    end
    if A2_2 ~= nil then
      L6_2 = L2_1.SafeSetActive
      L7_2 = A0_2._binder
      L7_2 = L7_2.img_icon1
      L8_2 = true
      L6_2(L7_2, L8_2)
      L7_2 = A0_2
      L6_2 = A0_2._async_load_sprite_to
      L8_2 = A0_2._binder
      L8_2 = L8_2.img_icon1
      L9_2 = A2_2
      L6_2(L7_2, L8_2, L9_2)
    else
      L6_2 = L2_1.SafeSetActive
      L7_2 = A0_2._binder
      L7_2 = L7_2.img_icon1
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
    if A3_2 ~= nil then
      L6_2 = L2_1.SafeSetActive
      L7_2 = A0_2._binder
      L7_2 = L7_2.img_icon2
      L8_2 = true
      L6_2(L7_2, L8_2)
      L7_2 = A0_2
      L6_2 = A0_2._async_load_sprite_to
      L8_2 = A0_2._binder
      L8_2 = L8_2.img_icon2
      L9_2 = A2_2
      L6_2(L7_2, L8_2, L9_2)
    else
      L6_2 = L2_1.SafeSetActive
      L7_2 = A0_2._binder
      L7_2 = L7_2.img_icon2
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ani_animation
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_bg
  L1_2.alpha = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_title
  L1_2.alpha = 0
end
L0_1._hide = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ani_animation
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_bg
  L1_2.alpha = 1
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_title
  L1_2.alpha = 1
end
L0_1._show = L3_1
return L0_1
