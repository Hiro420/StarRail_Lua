local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherBattleResultLosePageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Battle/BattleResultLosePage.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "MaskBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_mask = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.RawImage
  L4_2 = "RawImage"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_raw = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.page_animation = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RPGAnimationEvent
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BattleEvaluatePanel/Contents/BasicInfoPanel/RecommendedLevelPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_recommend_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BattleEvaluatePanel/Contents/TipsPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BattleEvaluatePanel/Contents/TipsPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BattleEvaluatePanel/Contents/BasicInfoPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_weakness = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BattleEvaluatePanel/HintPanel/BtnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_challenge_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
