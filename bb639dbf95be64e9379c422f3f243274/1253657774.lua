local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyMapItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyMapIconPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyMapItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L5_2 = L5_2.transform
  L7_2 = A0_2
  L6_2 = A0_2._get_world_pos
  L8_2 = A2_2.transform
  L8_2 = L8_2.position
  L9_2 = A1_2.OffsetPosition
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2.position = L6_2
  if not A3_2 then
    L6_2 = A0_2
    L5_2 = A0_2.instantiate_object
    L7_2 = A0_2._binder
    L7_2 = L7_2.prefab_load_meta
    L7_2 = L7_2.MultiPrefabList
    L7_2 = L7_2[0]
    L8_2 = A0_2._binder
    L8_2 = L8_2.root
    L8_2 = L8_2.transform
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = L5_2.transform
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Vector3
    L8_2 = A1_2.CellSize
    L8_2 = L8_2.y
    L9_2 = A1_2.CellSize
    L9_2 = L9_2.x
    L10_2 = 1
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2.localScale = L7_2
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.ActivityMonopolyMapIconPanel
    L9_2 = G
    L9_2 = L9_2.ActivityMonopolyMapIconPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    A0_2._icon_panel = L6_2
    L6_2 = A0_2._icon_panel
    L7_2 = L6_2
    L6_2 = L6_2.bind
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._icon_panel
    L7_2 = L6_2
    L6_2 = L6_2.setup_view
    L8_2 = A1_2
    L6_2(L7_2, L8_2)
  else
    L6_2 = A0_2
    L5_2 = A0_2.instantiate_object
    L7_2 = A0_2._binder
    L7_2 = L7_2.prefab_load_meta
    L7_2 = L7_2.MultiPrefabList
    L7_2 = L7_2[3]
    L8_2 = A0_2._binder
    L8_2 = L8_2.root
    L8_2 = L8_2.transform
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = L5_2.transform
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Vector3
    L8_2 = A1_2.CellSize
    L8_2 = L8_2.x
    L9_2 = A1_2.CellSize
    L9_2 = L9_2.y
    L10_2 = 1
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2.localScale = L7_2
  end
  L5_2 = A1_2.BarrierLayer
  if L5_2 ~= nil then
    L6_2 = A0_2
    L5_2 = A0_2.instantiate_object
    L7_2 = A0_2._binder
    L7_2 = L7_2.prefab_load_meta
    L7_2 = L7_2.MultiPrefabList
    L7_2 = L7_2[1]
    L8_2 = A0_2._binder
    L8_2 = L8_2.root
    L8_2 = L8_2.transform
    L5_2(L6_2, L7_2, L8_2)
  end
  if A4_2 then
    L6_2 = A0_2
    L5_2 = A0_2.instantiate_object
    L7_2 = A0_2._binder
    L7_2 = L7_2.prefab_load_meta
    L7_2 = L7_2.MultiPrefabList
    L7_2 = L7_2[2]
    L8_2 = A0_2._binder
    L8_2 = L8_2.root
    L8_2 = L8_2.transform
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = A1_2.x
  L5_2 = A2_2.x
  L4_2 = L4_2 + L5_2
  L5_2 = A1_2.y
  L6_2 = A2_2.z
  L5_2 = L5_2 + L6_2
  L6_2 = A1_2.z
  return L3_2(L4_2, L5_2, L6_2)
end
L0_1._get_world_pos = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.transform
  L1_2 = L1_2.localPosition
  return L1_2
end
L0_1.get_local_pos = L1_1
return L0_1
