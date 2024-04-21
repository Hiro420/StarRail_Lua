local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityClockParkScriptBuffTipsDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Common/ExtDescListDialog.prefab"
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
  L4_2 = "Bg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_exit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "Contents/ExtDescListPanel/ExtDescList"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.prefab_load_meta = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ExtDescListPanel/HintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hint_back = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeGetCmpt
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Text
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  L5_2 = "ExtDescTitle/TitleText"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.text_title = L2_2
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeGetCmpt
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Text
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  L5_2 = "ExtDesc"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.text_desc = L2_2
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeFind
  L3_2 = A1_2
  L4_2 = "RoundCount"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.bind_text_desc = L1_1
return L0_1
