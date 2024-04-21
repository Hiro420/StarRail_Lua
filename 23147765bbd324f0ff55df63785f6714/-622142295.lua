local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDiceIconRarityPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_rarity_bg_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = A1_2 == L5_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RogueDLCDiceSurfaceRarityExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    return
  end
  L5_2 = A1_2
  L4_2 = A1_2.SafeSetTextColor
  L6_2 = L3_2.NameColor
  L4_2(L5_2, L6_2)
end
L0_1.setup_name_color = L1_1
return L0_1
