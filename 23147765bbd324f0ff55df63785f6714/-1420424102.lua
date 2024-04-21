local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Generate.DrinkMakerGameplayPageIndex"
L0_1 = L0_1(L1_1)
L1_1 = 4
L2_1 = 5
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "DrinkMakerBartendMainPageBinder"
L5_1 = G
L5_1 = L5_1.UIBinder
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/DrinkMaker/DrinkMakerGameplayPage.prefab"
  return L1_2
end
L3_1.get_prefab_path = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "[%s] auto bind fail"
    L3_2 = A0_2.__name
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = {}
  A0_2.node_inactive_steps = L1_2
  L1_2 = {}
  A0_2.node_active_steps = L1_2
  L1_2 = 1
  L2_2 = L1_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._safe_find
    L7_2 = "Root/PanelContent/RightPanel/SelectPanel/StepProgress/Step"
    L8_2 = tostring
    L9_2 = L4_2
    L8_2 = L8_2(L9_2)
    L9_2 = "/Normal"
    L7_2 = L7_2 .. L8_2 .. L9_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = A0_2
    L6_2 = A0_2._safe_find
    L8_2 = "Root/PanelContent/RightPanel/SelectPanel/StepProgress/Step"
    L9_2 = tostring
    L10_2 = L4_2
    L9_2 = L9_2(L10_2)
    L10_2 = "/Active"
    L8_2 = L8_2 .. L9_2 .. L10_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.node_inactive_steps
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.node_active_steps
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L1_2 = {}
  A0_2.node_slots = L1_2
  L1_2 = {}
  A0_2.node_filled_slots = L1_2
  L1_2 = {}
  A0_2.node_unfilled_slots = L1_2
  L1_2 = 1
  L2_2 = L2_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = "Root/PanelContent/UI3DBtnContainer/Root/CupSlotList/Slot"
    L6_2 = tostring
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2 .. L6_2
    L7_2 = A0_2
    L6_2 = A0_2._safe_find
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = A0_2
    L7_2 = A0_2._safe_find
    L9_2 = L5_2
    L10_2 = "/Normal"
    L9_2 = L9_2 .. L10_2
    L7_2 = L7_2(L8_2, L9_2)
    L9_2 = A0_2
    L8_2 = A0_2._safe_find
    L10_2 = L5_2
    L11_2 = "/Filled"
    L10_2 = L10_2 .. L11_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2.node_slots
    L11_2 = L6_2
    L9_2(L10_2, L11_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2.node_unfilled_slots
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2.node_filled_slots
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
end
L3_1._on_bind = L4_1
return L3_1
