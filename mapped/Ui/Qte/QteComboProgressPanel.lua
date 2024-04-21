local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Qte.QteComboProgressPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "QteComboProgressPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "#FFC870"
L2_1 = "#EB4D3D"
L3_1 = 0.3
function L4_1(A0_2)
  local L1_2
  A0_2.curr_value = 0
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.curr_value
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 0
  L5_2 = A0_2.curr_value
  L6_2 = A0_2.back_speed
  L6_2 = A1_2 * L6_2
  L5_2 = L5_2 - L6_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.curr_value = L3_2
  L4_2 = A0_2.max_count
  L4_2 = L3_2 / L4_2
  L5_2 = 1
  L6_2 = A0_2._binder
  L6_2 = L6_2.images
  L6_2 = #L6_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2._binder
    L9_2 = L9_2.images
    L9_2 = L9_2[L8_2]
    L9_2.fillAmount = L4_2
  end
  L6_2 = A0_2
  L5_2 = A0_2._set_color
  L8_2 = A0_2
  L7_2 = A0_2._is_danger
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  if 0 < L2_2 and L3_2 <= 0 then
    L6_2 = A0_2
    L5_2 = A0_2._on_progress_empty
    L5_2(L6_2)
  end
end
L0_1.mono_tick = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.ComboClickStartValue
  A0_2.curr_value = L2_2
  L2_2 = A1_2.ComboClickCount
  A0_2.max_count = L2_2
  L2_2 = A1_2.ComboClickBackSpeed
  A0_2.back_speed = L2_2
  L2_2 = L3_1
  L3_2 = A0_2.max_count
  L2_2 = L2_2 * L3_2
  A0_2.danger_value = L2_2
end
L0_1.start = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = A0_2.curr_value
  L2_2 = math
  L2_2 = L2_2.min
  L3_2 = A0_2.max_count
  L4_2 = A0_2.curr_value
  L4_2 = L4_2 + 1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 - L1_2
  L4_2 = A0_2.max_count
  L4_2 = L2_2 / L4_2
  A0_2.curr_value = L2_2
  L5_2 = 1
  L6_2 = A0_2._binder
  L6_2 = L6_2.images
  L6_2 = #L6_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2._binder
    L9_2 = L9_2.images
    L9_2 = L9_2[L8_2]
    L9_2.fillAmount = L4_2
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.rect_left
  L5_2 = L5_2.rect
  L5_2 = L5_2.width
  L6_2 = A0_2.max_count
  L6_2 = L3_2 / L6_2
  L6_2 = L6_2 * L5_2
  L7_2 = -L1_2
  L8_2 = A0_2.max_count
  L7_2 = L7_2 / L8_2
  L7_2 = L7_2 * L5_2
  L9_2 = A0_2
  L8_2 = A0_2._adjust_anim_rect
  L10_2 = A0_2._binder
  L10_2 = L10_2.rect_left_cut_hint
  L11_2 = L7_2
  L12_2 = L6_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.rect_right
  L8_2 = L8_2.rect
  L8_2 = L8_2.width
  L9_2 = A0_2.max_count
  L9_2 = L3_2 / L9_2
  L9_2 = L9_2 * L8_2
  L10_2 = A0_2.max_count
  L10_2 = L1_2 / L10_2
  L10_2 = L10_2 * L8_2
  L12_2 = A0_2
  L11_2 = A0_2._adjust_anim_rect
  L13_2 = A0_2._binder
  L13_2 = L13_2.rect_right_cut_hint
  L14_2 = L10_2
  L15_2 = L9_2
  L11_2(L12_2, L13_2, L14_2, L15_2)
  L11_2 = 1
  L12_2 = A0_2._binder
  L12_2 = L12_2.cut_hint_anims
  L12_2 = #L12_2
  L13_2 = 1
  for L14_2 = L11_2, L12_2, L13_2 do
    L15_2 = CS
    L15_2 = L15_2.RPG
    L15_2 = L15_2.Client
    L15_2 = L15_2.UIAnimationUtils
    L15_2 = L15_2.PlayFromBegin
    L16_2 = A0_2._binder
    L16_2 = L16_2.cut_hint_anims
    L16_2 = L16_2[L14_2]
    L17_2 = "MiniGameQTE_HpCutHint_FadeIn"
    L15_2(L16_2, L17_2)
  end
  L11_2 = 1
  L12_2 = A0_2._binder
  L12_2 = L12_2.cut_hint_particles
  L12_2 = #L12_2
  L13_2 = 1
  for L14_2 = L11_2, L12_2, L13_2 do
    L15_2 = A0_2._binder
    L15_2 = L15_2.cut_hint_particles
    L15_2 = L15_2[L14_2]
    L16_2 = L15_2
    L15_2 = L15_2.Play
    L15_2(L16_2)
  end
  L12_2 = A0_2
  L11_2 = A0_2._set_color
  L14_2 = A0_2
  L13_2 = A0_2._is_danger
  L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2(L14_2)
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L11_2 = A0_2.max_count
  if L1_2 < L11_2 then
    L11_2 = A0_2.max_count
    if L2_2 >= L11_2 then
      L12_2 = A0_2
      L11_2 = A0_2._on_progress_full
      L11_2(L12_2)
    end
  end
end
L0_1.add = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._progress_full_callback = A1_2
  A0_2._progress_full_handler = A2_2
end
L0_1.register_progress_full_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._progress_empty_callback = A1_2
  A0_2._progress_empty_handler = A2_2
end
L0_1.register_progress_empty_callback = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  if A1_2 == nil then
    return
  end
  L4_2 = A1_2.anchoredPosition
  L4_2.x = A2_2
  A1_2.anchoredPosition = L4_2
  L5_2 = A1_2.sizeDelta
  L5_2.x = A3_2
  A1_2.sizeDelta = L5_2
end
L0_1._adjust_anim_rect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.curr_value
  L2_2 = A0_2.danger_value
  L1_2 = L1_2 < L2_2
  return L1_2
end
L0_1._is_danger = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.is_danger
  if L2_2 ~= nil then
    L2_2 = A0_2.is_danger
    if L2_2 == A1_2 then
      return
    end
  end
  A0_2.is_danger = A1_2
  L2_2 = nil
  if A1_2 then
    L3_2 = A0_2._danger_color
    if L3_2 == nil then
      L3_2 = G
      L3_2 = L3_2.UIColorUtils
      L3_2 = L3_2.GetColor
      L4_2 = L2_1
      L3_2 = L3_2(L4_2)
      A0_2._danger_color = L3_2
    end
    L2_2 = A0_2._danger_color
  else
    L3_2 = A0_2._normal_color
    if L3_2 == nil then
      L3_2 = G
      L3_2 = L3_2.UIColorUtils
      L3_2 = L3_2.GetColor
      L4_2 = L1_1
      L3_2 = L3_2(L4_2)
      A0_2._normal_color = L3_2
    end
    L2_2 = A0_2._normal_color
  end
  L3_2 = 1
  L4_2 = A0_2._binder
  L4_2 = L4_2.images
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.images
    L7_2 = L7_2[L6_2]
    L7_2.color = L2_2
  end
end
L0_1._set_color = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._progress_full_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._progress_full_handler
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._progress_full_callback
  L2_2 = A0_2._progress_full_handler
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_progress_full = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._progress_empty_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._progress_empty_handler
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._progress_empty_callback
  L2_2 = A0_2._progress_empty_handler
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_progress_empty = L4_1
return L0_1
