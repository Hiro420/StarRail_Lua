local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.DiscreteProgressBar"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.DiscreteProgressBarBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeFilterItemPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._hide_node
  L3_2 = "Root/StatusPanel/EquipLockMark"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._hide_node
  L3_2 = "Root/StatusPanel/EquipCharaMark"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._hide_node
  L3_2 = "Root/RefineLevelPanel"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._hide_node
  L3_2 = "Root/DamagePlusType"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._hide_node
  L3_2 = "Root/HighLightPanel"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._hide_node
  L3_2 = "Root/StatusPanel"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._hide_node
  L3_2 = "Root/StatusPanel/BlackMask"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._hide_node
  L3_2 = "Root/StatusPanel/NeedFormula"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._hide_node
  L3_2 = "Root/StatusPanel/ItemTypeIcon"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._hide_node
  L3_2 = "Root/StatusPanel/ExtraRewardMark"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._hide_node
  L3_2 = "Root/NamePanel"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_lightcone = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/Bg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_rarity_frame = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/RarityStar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_rarity_stars = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/AllText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel/LockMark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RedDotNew"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_red_dot = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._hide_node_list
  if L2_2 == nil then
    L2_2 = {}
    A0_2._hide_node_list = L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.gameObject
  L3_2 = L3_2.activeSelf
  if L3_2 then
    L4_2 = L2_2
    L3_2 = L2_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._hide_node_list
    L4_2 = A0_2._hide_node_list
    L4_2 = #L4_2
    L4_2 = L4_2 + 1
    L3_2[L4_2] = L2_2
  end
end
L0_1._hide_node = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._hide_node_list
  if L1_2 == nil then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2._hide_node_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = true
    L6_2(L7_2, L8_2)
  end
  A0_2._hide_node_list = nil
end
L0_1._on_dispose = L1_1
return L0_1
