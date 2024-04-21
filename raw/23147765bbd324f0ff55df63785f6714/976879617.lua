local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildProgressToastDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/EvolveBuild/EvolveStageMergedToastDialog.prefab"
  return L1_2
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
  L4_2 = "Bg/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_empty_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/DescPanel/EvolveDifficultTabPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_progress_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RPGAnimationEvent
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rpg_anim_event_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ToastPanel/EliteStage"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_elite_stage = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ToastPanel/FinalStage"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_final_stage = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ToastPanel/AddStage"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_add_stage = L1_2
end
L0_1._on_bind = L1_1
return L0_1
