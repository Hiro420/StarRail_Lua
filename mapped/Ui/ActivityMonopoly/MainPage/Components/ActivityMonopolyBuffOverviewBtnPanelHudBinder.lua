local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyBuffOverviewBtnPanelHudBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.root_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TextPanel/CurrentNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.buff_num_txt = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "IconPanel/EffPanel/Rank2"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "IconPanel/EffPanel/Rank3"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  A0_2.nodes_level = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "IconPanel/EffPanel/Rank2/Effect/Particle/Trail/Open"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "IconPanel/EffPanel/Rank3/Effect/Particle/Trail/Open"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  A0_2.nodes_open = L1_2
end
L0_1._on_bind = L1_1
return L0_1
