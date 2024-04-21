local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Team.Widget.ProfessionTypeListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.Widget.ProfessionTypeListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ExpeditionDetailInfoPanelBinder"
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
  L3_2 = L3_2.LocalizedText
  L4_2 = "ScrollView/Viewport/Content/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_expedition_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "ScrollViewrReward/Viewport/Content/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_expedition_activity_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ScrollView"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_expedition_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ScrollViewrReward"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_activity_expedition_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "ClientPanel/NamePanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_client_name = L1_2
end
L0_1._on_bind = L1_1
return L0_1
