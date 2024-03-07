local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.RelicIconInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicIconInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarRelicContainerBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Avatar/Relic/Widget/AvatarRelicContainer.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2.btn_list = L1_2
  L1_2 = {}
  A0_2.relic_list = L1_2
  L1_2 = 1
  L2_2 = 6
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = "Relic0"
    L6_2 = tostring
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L7_2 = "/RelicIconInfo"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L7_2 = A0_2
    L6_2 = A0_2._create_panel
    L8_2 = G
    L8_2 = L8_2.RelicIconInfoPanel
    L9_2 = G
    L9_2 = L9_2.RelicIconInfoPanelBinder
    L10_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.relic_list
    L9_2 = A0_2.relic_list
    L9_2 = #L9_2
    L9_2 = L9_2 + 1
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = A0_2
    L7_2 = A0_2._safe_get_cmpt
    L9_2 = CS
    L9_2 = L9_2.UnityEngine
    L9_2 = L9_2.UI
    L9_2 = L9_2.Button
    L10_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2.btn_list
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "RelicSuitActive"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_suit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "PlanarSuitActive"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_planar_suit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PlanarUnlock"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_plana_unlock = L1_2
end
L0_1._on_bind = L1_1
return L0_1
