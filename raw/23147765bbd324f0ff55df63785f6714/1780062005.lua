local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumRankPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "CommonRankHint_Upgrade"
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._museum_area_data = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.rank_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = G
  L5_2 = L5_2.MuseumUtils
  L5_2 = L5_2.get_rank_by_area
  L6_2 = A0_2._museum_area_data
  L7_2 = A2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._museum_area_data
  L1_2 = L1_2.AreaRenewPoint
  L1_2 = L1_2.IsJustAdd
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
  end
end
L0_1.try_play_rank_anim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1.play_rank_anim = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
return L0_1
