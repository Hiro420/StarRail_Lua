local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AdventureMissionPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1()
  local L0_2, L1_2
  L0_2 = "UI/Adventure/AdventureMissionPanel.prefab"
  return L0_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.SafeFind
  L2_2 = A0_2.root
  L3_2 = "AdventureMissionStatusHintNew"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mission_hint = L1_2
  L1_2 = L1_1.SafeFind
  L2_2 = A0_2.root
  L3_2 = "AdventureMissionListNew"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mission_list = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.root
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas = L1_2
end
L0_1._on_bind = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2.node_mission_hint = nil
  A0_2.node_mission_list = nil
end
L0_1._on_dispose = L2_1
