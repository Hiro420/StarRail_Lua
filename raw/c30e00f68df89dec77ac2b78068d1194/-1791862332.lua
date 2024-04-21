local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeBuffListPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2.BtnArrow = nil
  A0_2.NodeBuffList = nil
  A0_2.NodeArrowNormal = nil
  A0_2.NodeArrowPress = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnBuff"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_buff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "BtnBuff/Frame/EffPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "BtnBuff"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_in_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnBuff/ConsumableEff"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_quick_consumable_eff = L1_2
end
L0_1._on_bind = L1_1
