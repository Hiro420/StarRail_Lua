local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FantasticStoryChallengeLevelTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Adventure/Widget/HardLevelTab.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "Root/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.desc = L1_2
  L1_2 = L1_1.SafeFind
  L2_2 = A0_2.tab_btn_root
  L3_2 = "Root/StatePanel/StateCompleted"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.complete = L1_2
  L1_2 = L1_1.SafeFind
  L2_2 = A0_2.tab_btn_root
  L3_2 = "Root/StatePanel/StateLocked"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.locked = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "Root/StatePanel/StateLocked/Lock/Hint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_unlock_effect = L1_2
end
L0_1._on_tab_btn_bind = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
return L0_1
