local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Challenge.Monster.ChallengeMonsterRowListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Monster.ChallengeMonsterRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Monster.ChallengeMonsterRowPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeMonsterRowListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_title_2
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_list_monsters
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.create_lua_table_from_cs_list
  L6_2 = A2_2
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.rect_transform_content
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.rect_transform_root
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
return L0_1
