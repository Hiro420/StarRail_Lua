local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.Components.RogueEntranceItemDotPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.Components.RogueEntranceItemDotPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueEntranceItemDotListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._item_count = 0
  L3_2 = {}
  A0_2._item_panels = L3_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = 1
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = A1_2
  L5_2 = A0_2._item_count
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._item_panels
    L6_2 = L6_2[L5_2]
    if L6_2 == nil then
      L8_2 = A0_2
      L7_2 = A0_2.instantiate_object
      L9_2 = A0_2._binder
      L9_2 = L9_2.prefab_load_meta
      L9_2 = L9_2.Prefab
      L10_2 = A0_2._binder
      L10_2 = L10_2.root
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L9_2 = A0_2
      L8_2 = A0_2.create_panel
      L10_2 = G
      L10_2 = L10_2.RogueEntranceItemDotPanel
      L11_2 = G
      L11_2 = L11_2.RogueEntranceItemDotPanelBinder
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L6_2 = L8_2
      L9_2 = L6_2
      L8_2 = L6_2.bind
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._item_panels
      L8_2[L5_2] = L6_2
    end
    L8_2 = L6_2
    L7_2 = L6_2.safe_set_active
    L9_2 = A1_2 >= L5_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.setup_normal_view
    L7_2(L8_2)
  end
  A0_2._item_count = A1_2
end
L0_1.set_item_count = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._item_count
  L2_2 = L2_2 - A1_2
  L2_2 = L2_2 + 1
  L3_2 = A0_2._item_panels
  L3_2 = L3_2[L2_2]
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2._selected_index
  if L3_2 ~= nil then
    L3_2 = A0_2._item_panels
    L4_2 = A0_2._selected_index
    L3_2 = L3_2[L4_2]
    if L3_2 ~= nil then
      L3_2 = A0_2._item_panels
      L4_2 = A0_2._selected_index
      L3_2 = L3_2[L4_2]
      L4_2 = L3_2
      L3_2 = L3_2.setup_normal_view
      L3_2(L4_2)
    end
  end
  L3_2 = A0_2._item_panels
  L3_2 = L3_2[L2_2]
  L4_2 = L3_2
  L3_2 = L3_2.setup_selected_view
  L3_2(L4_2)
  A0_2._selected_index = L2_2
end
L0_1.set_selected = L1_1
return L0_1
