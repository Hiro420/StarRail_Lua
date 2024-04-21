local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueBoardBgFramePanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2.node_bg_table = L1_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._safe_find
    L7_2 = "StatePanel/Bg"
    L8_2 = tostring
    L9_2 = L4_2
    L8_2 = L8_2(L9_2)
    L7_2 = L7_2 .. L8_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.node_bg_table
    L8_2 = A0_2.node_bg_table
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = {}
  A0_2.animation_title = L1_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._safe_get_cmpt
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Animation
    L8_2 = "StatePanel/Bg"
    L9_2 = tostring
    L10_2 = L4_2
    L9_2 = L9_2(L10_2)
    L10_2 = "/BoxPanelTips"
    L8_2 = L8_2 .. L9_2 .. L10_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.animation_title
    L8_2 = A0_2.animation_title
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = {}
  A0_2.node_boss_pattern_root_table = L1_2
  L1_2 = 1
  L2_2 = 2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._safe_find
    L7_2 = "StatePanel/Bg"
    L8_2 = tostring
    L9_2 = L4_2
    L8_2 = L8_2(L9_2)
    L9_2 = "/BossPatternRoot"
    L7_2 = L7_2 .. L8_2 .. L9_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.node_boss_pattern_root_table
    L8_2 = A0_2.node_boss_pattern_root_table
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = {}
  A0_2.btn_info_table = L1_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._safe_get_cmpt
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.UI
    L7_2 = L7_2.Button
    L8_2 = "StatePanel/Bg"
    L9_2 = tostring
    L10_2 = L4_2
    L9_2 = L9_2(L10_2)
    L10_2 = "/BoxPanelTips/Btn_Info"
    L8_2 = L8_2 .. L9_2 .. L10_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.btn_info_table
    L8_2 = A0_2.btn_info_table
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = {}
  A0_2.img_bg_table = L1_2
  L1_2 = 1
  L2_2 = 2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._safe_get_cmpt
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.UI
    L7_2 = L7_2.Image
    L8_2 = "StatePanel/Bg"
    L9_2 = tostring
    L10_2 = L4_2
    L9_2 = L9_2(L10_2)
    L10_2 = "/Bg"
    L8_2 = L8_2 .. L9_2 .. L10_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.img_bg_table
    L8_2 = A0_2.img_bg_table
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._on_bind = L1_1
return L0_1
