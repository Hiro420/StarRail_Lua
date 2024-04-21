local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Puzzle.MovieRacing.MovieRacingIntegralPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.MovieRacing.MovieRacingIntegralDigitalPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MovieRacingIntegralPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 8
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._add_score = 0
  A0_2._last_score = 0
  A0_2._is_fever = false
  L1_2 = {}
  A0_2._movie_racing_integral_digital_panel_list = L1_2
  L1_2 = L1_1
  L2_2 = 1
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.MovieRacingIntegralDigitalPanel
    L8_2 = G
    L8_2 = L8_2.MovieRacingIntegralDigitalPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_integral_digital_item_list
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._movie_racing_integral_digital_panel_list
    L6_2[L4_2] = L5_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.init_integral_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%.0f"
  L5_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2._last_score
  L2_2 = L2_2 - L3_2
  A0_2._add_score = L2_2
  L2_2 = tonumber
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%.0f"
  L5_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._last_score = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_cur_score
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._is_fever = A1_2
  if A2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator_integral_panel
    L4_2 = L3_2
    L3_2 = L3_2.SetTrigger
    L5_2 = "InitialState"
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._is_fever
    if L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.animator_integral_panel
      L4_2 = L3_2
      L3_2 = L3_2.SetTrigger
      L5_2 = "HighLightState"
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.animator_integral_panel
      L4_2 = L3_2
      L3_2 = L3_2.SetTrigger
      L5_2 = "NormalState"
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1.setup_integral_panel_animator = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_add_integral_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_add_integral_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = "+"
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%.0f"
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2 .. L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_add
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_add_integral = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._add_score = 0
  A0_2._last_score = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_add_integral_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_cur_score
  L1_2(L2_2)
end
L0_1.init_integral_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.num_scroll_controller
  L2_2 = L2_2.transform
  L2_2 = L2_2.childCount
  L3_2 = 1
  L4_2 = L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.num_scroll_controller
    L7_2 = L7_2.transform
    L8_2 = L7_2
    L7_2 = L7_2.GetChild
    L9_2 = L6_2 - 1
    L7_2 = L7_2(L8_2, L9_2)
    L7_2 = L7_2.gameObject
    L8_2 = L7_2
    L7_2 = L7_2.GetComponent
    L9_2 = typeof
    L10_2 = CS
    L10_2 = L10_2.UnityEngine
    L10_2 = L10_2.Animator
    L9_2, L10_2 = L9_2(L10_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L7_2.enabled = true
    if A1_2 then
      L9_2 = L7_2
      L8_2 = L7_2.SetTrigger
      L10_2 = "HighLightState"
      L8_2(L9_2, L10_2)
    else
      L9_2 = L7_2
      L8_2 = L7_2.SetTrigger
      L10_2 = "NormalState"
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1._setup_num_item_state = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = tostring
  L2_2 = A0_2._last_score
  L1_2 = L1_2(L2_2)
  L2_2 = string
  L2_2 = L2_2.len
  L3_2 = tostring
  L4_2 = A0_2._last_score
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L3_2 = string
  L3_2 = L3_2.len
  L4_2 = tostring
  L5_2 = A0_2._add_score
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L4_2 = L1_1
  L5_2 = 1
  L6_2 = -1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._movie_racing_integral_digital_panel_list
    L8_2 = L8_2[L7_2]
    if L2_2 < L7_2 then
      L10_2 = L8_2
      L9_2 = L8_2.safe_set_active
      L11_2 = false
      L9_2(L10_2, L11_2)
    else
      L10_2 = L8_2
      L9_2 = L8_2.safe_set_active
      L11_2 = true
      L9_2(L10_2, L11_2)
      L9_2 = L2_2 - L7_2
      L9_2 = L9_2 + 1
      if L7_2 <= L3_2 then
        L11_2 = L8_2
        L10_2 = L8_2.setup_cur_num
        L12_2 = string
        L12_2 = L12_2.sub
        L13_2 = L1_2
        L14_2 = L9_2
        L15_2 = L9_2
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        L13_2 = false
        L10_2(L11_2, L12_2, L13_2)
      else
        L11_2 = L8_2
        L10_2 = L8_2.setup_cur_num
        L12_2 = string
        L12_2 = L12_2.sub
        L13_2 = L1_2
        L14_2 = L9_2
        L15_2 = L9_2
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        L13_2 = true
        L10_2(L11_2, L12_2, L13_2)
      end
    end
  end
end
L0_1._setup_cur_score = L2_1
return L0_1
