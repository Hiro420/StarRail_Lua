local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ToastMissionDailyPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1()
  local L0_2, L1_2
  L0_2 = "UI/Common/Widget/DailyMissionHint.prefab"
  return L0_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AreaInfoPanel/ExclaimationMarkPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_start = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AreaInfoPanel/CheckMarkPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_complete = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.root
  L4_2 = "AreaInfoPanel/Title/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_name = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.root
  L4_2 = "HintInfoPanel/Title/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ani_animation = L1_2
end
L0_1._on_bind = L2_1
return L0_1
