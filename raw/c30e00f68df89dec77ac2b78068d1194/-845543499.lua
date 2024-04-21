local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousSurfaceRarityLimitPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousSurfaceRarityLimitPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._rarity = A3_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._branch_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.total_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L5_2 = A0_2
  L4_2 = A0_2.get_max_value
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2._branch_data
  L3_2 = L3_2.SlotDataDict
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.MaxRarity
    L8_2 = A0_2._rarity
    if L7_2 >= L8_2 then
      L1_2 = L1_2 + 1
    end
  end
  return L1_2
end
L0_1.get_max_value = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2._branch_data
  L3_2 = L3_2.SlotDataDict
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.CurEquippedSurface
    L7_2 = L7_2.Rarity
    L8_2 = A0_2._rarity
    if L7_2 == L8_2 then
      L1_2 = L1_2 + 1
    end
  end
  return L1_2
end
L0_1.get_cur_value = L1_1
return L0_1
