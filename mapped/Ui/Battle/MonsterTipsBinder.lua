local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Monster.MonsterEliteMarkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterEliteMarkPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterTipsBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Monster/WidgetV2/MonsterTips.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = ""
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MonsterEliteMarkPanel
  L4_2 = G
  L4_2 = L4_2.MonsterEliteMarkPanelBinder
  L5_2 = "Info/EliteType"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.rank_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Info/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Info/LvTxt"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lv = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Info/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_lv_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "Info/DamageTypePanel/DamageTypeLayout"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_weak_point = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Details"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_describe = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Details"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_describe = L1_2
end
L0_1._on_bind = L1_1
return L0_1
