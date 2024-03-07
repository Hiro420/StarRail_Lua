local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Handbook.Components.DrinkMakerHandbookIngredientInfoItemPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerHandbookDrinkStepPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "NumPanel/Normal/NumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_order = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "StepDescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_step_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "StepDescText"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_step_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Bg/Line"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_tail_line = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "NumPanel/Normal"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "NumPanel/Correct"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_correct = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "NumPanel/Wrong"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_wrong = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "NumPanel/Correct"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_correct = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "MaterialList"
  L6_2 = G
  L6_2 = L6_2.DrinkMakerHandbookIngredientInfoItemPanel
  L7_2 = G
  L7_2 = L7_2.DrinkMakerHandbookIngredientInfoItemPanelBinder
  L8_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.panel_ingredients = L1_2
end
L0_1._on_bind = L1_1
return L0_1
