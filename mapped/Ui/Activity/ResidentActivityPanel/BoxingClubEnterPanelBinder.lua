local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubEnterPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/BoxingClubResonance/Widget/BtnQuestEnterBoxingClub.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ConditionPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_condition_panel_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "ConditionPanel/ConditionPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.prefab_load_meta_condition = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnQuestEnter/Root/Contents/FinishPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_finish = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnQuestEnter"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_unlock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnQuestEnter/Root/FrameBg/Deco"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_deco = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BtnQuestEnter/Root/Contents/DescPanel/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_activity_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnQuestEnter"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_go = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "BtnQuestEnter/Root/Contents/IconPanel/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_type_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "ConditionPanel/TitlePanel/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_type_icon_condition = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnQuestEnter/Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.red_dot = L1_2
end
L0_1._on_bind = L1_1
return L0_1
