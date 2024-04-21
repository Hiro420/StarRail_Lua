local L0_1, L1_1, L2_1, L3_1
L0_1 = 1
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityRankPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = pairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_empty
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.SafeSetActive
    L10_2 = A2_2 ~= nil and L10_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = pairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_not_empty
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.SafeSetActive
    L10_2 = A2_2 == nil or L10_2
    L8_2(L9_2, L10_2)
  end
  if A2_2 then
    return
  end
  A0_2._rank = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ActivityRankIconExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    return
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_rank
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.Text
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_bg
  L7_2 = L3_2.CommonRankIconPath
  L4_2(L5_2, L6_2, L7_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._rank
  L2_2 = L0_1
  L1_2 = L1_2 == L2_2
  return L1_2
end
L1_1.is_max = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = "CommonRankHint_Upgrade"
  L1_2(L2_2, L3_2)
end
L1_1.play_upgrade = L2_1
return L1_1
