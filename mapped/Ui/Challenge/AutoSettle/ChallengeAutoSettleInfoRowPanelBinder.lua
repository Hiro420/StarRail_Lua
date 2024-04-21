local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.CommonRewardListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonRewardListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeAutoSettleInfoRowPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/DescContents/TextTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/DescContents/TipText"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_got_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.CommonRewardListPanel
  L4_2 = G
  L4_2 = L4_2.CommonRewardListPanelBinder
  L5_2 = "Root/Contents"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel/Active"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_active = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel/Passed"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_passed = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/KeyMapZoom"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_map = L1_2
end
L0_1._on_bind = L1_1
return L0_1
