local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaDrawButtonPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaDrawButtonPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaDrawPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.GachaDrawButtonPanel
  L4_2 = G
  L4_2 = L4_2.GachaDrawButtonPanelBinder
  L5_2 = "BtnDraw1Times"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.single_draw_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.GachaDrawButtonPanel
  L4_2 = G
  L4_2 = L4_2.GachaDrawButtonPanelBinder
  L5_2 = "BtnDraw10Times"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.multi_draw_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "RemainingTimes/NumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_remain_times = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RemainingTimes"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_remain_times = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "RemainingTimes"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_remain_times = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "BtnDraw10Times"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_multi_draw = L1_2
end
L0_1._on_bind = L1_1
return L0_1
