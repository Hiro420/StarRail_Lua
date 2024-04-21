local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MiniGameCompassPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Maze/MiniGame/MiniGameCompassPanel.prefab"
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
  L4_2 = "RightButtonArea/PCMiniGameSkillPanel/LeftActionBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_left = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "RightButtonArea/PCMiniGameSkillPanel/RightActionBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_right = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "FunctionPanel/BtnUndo/Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_undo = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "FunctionPanel/BtnReset/Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_reset = L1_2
  L1_2 = {}
  A0_2.select = L1_2
  L1_2 = A0_2.select
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "MiniGameHintPanel/StatusPanel/MiniGameSpot0/Selected"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[0] = L2_2
  L1_2 = A0_2.select
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "MiniGameHintPanel/StatusPanel/MiniGameSpot1/Selected"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L1_2 = A0_2.select
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "MiniGameHintPanel/StatusPanel/MiniGameSpot2/Selected"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L1_2 = {}
  A0_2.normal = L1_2
  L1_2 = A0_2.normal
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "MiniGameHintPanel/StatusPanel/MiniGameSpot0/Normal"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[0] = L2_2
  L1_2 = A0_2.normal
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "MiniGameHintPanel/StatusPanel/MiniGameSpot1/Normal"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L1_2 = A0_2.normal
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "MiniGameHintPanel/StatusPanel/MiniGameSpot2/Normal"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
end
L0_1._on_bind = L1_1
return L0_1
