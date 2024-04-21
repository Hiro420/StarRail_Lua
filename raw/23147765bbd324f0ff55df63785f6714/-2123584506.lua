local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Puzzle.MovieRacing.MovieRacingIntegralDigitalPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MovieRacingIntegralDigitalPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._str_cur_num = "0"
  A0_2._animation_clip_name = "ScoreCounter_ValueIncrease"
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_cur
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_pre
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._str_cur_num
  L3_2(L4_2, L5_2)
  if A2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayFromEnd
    L4_2 = A0_2._binder
    L4_2 = L4_2.animation_root
    L5_2 = A0_2._animation_clip_name
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayFromBegin
    L4_2 = A0_2._binder
    L4_2 = L4_2.animation_root
    L5_2 = A0_2._animation_clip_name
    L3_2(L4_2, L5_2)
  end
  A0_2._str_cur_num = A1_2
end
L0_1.setup_cur_num = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_root
  L3_2 = A0_2._animation_clip_name
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
return L0_1
