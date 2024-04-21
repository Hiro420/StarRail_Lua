local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Generate.RogueNousQuestRewardTabItemIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueNousQuestRewardTabItemBinder"
L3_1 = G
L3_1 = L3_1.TabItemBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
end
L1_1._on_bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.tab_btn_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.tab_btn_name = L1_2
end
L1_1._on_tab_btn_bind = L2_1
return L1_1
