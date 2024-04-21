local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.DrinkMakerBartendColor"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Handbook.Components.DrinkMakerHandbookDrinkStepPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerHandbookDrinkStepPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._step = A1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_order
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_step_desc
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = A0_2._step
  L7_2 = L6_2
  L6_2 = L6_2.GetStepDescription
  L6_2, L7_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._step
  L4_2 = L4_2.Procedure
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.DrinkMakerBartendProcedure
  L5_2 = L5_2.Ingredient
  if L4_2 == L5_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_ingredients_view
    L4_2(L5_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_ingredients
    L5_2 = L4_2
    L4_2 = L4_2.safe_set_active
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_step_desc
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
  end
  if A2_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_verification_result
    L4_2(L5_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tail_line
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_tail_line
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_tail_line_visibility = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._step
  L1_2 = L1_2.HasSubStep
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_step_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_ingredients
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_ingredients
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_step_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_sub_step_view
  L1_2(L2_2)
end
L0_1._setup_ingredients_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_enumerable
  L2_2 = A0_2._step
  L2_2 = L2_2.SubStepMaterialIDs
  L2_2 = L2_2.Keys
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_ingredients
  L3_2 = L2_2
  L2_2 = L2_2.setup_view_by_count
  L4_2 = #L1_2
  L2_2(L3_2, L4_2)
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = A0_2._step
    L7_2 = L7_2.SubStepMaterialIDs
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.Count
    L8_2 = A0_2._binder
    L8_2 = L8_2.panel_ingredients
    L9_2 = L8_2
    L8_2 = L8_2.get_panel_by_index
    L10_2 = L5_2
    L8_2 = L8_2(L9_2, L10_2)
    L10_2 = L8_2
    L9_2 = L8_2.setup_view
    L11_2 = A0_2._step
    L12_2 = L11_2
    L11_2 = L11_2.GetIngredientRow
    L13_2 = L6_2
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = L7_2
    L9_2(L10_2, L11_2, L12_2)
  end
end
L0_1._setup_sub_step_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._step
  L1_2 = L1_2.IsStepFinished
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_step_desc
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = FormulaRequestColor
    L3_2 = L3_2.NormalColor
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_normal
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_correct
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_wrong
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._step
    L1_2 = L1_2.IsCurSuccess
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_step_desc
      L2_2 = G
      L2_2 = L2_2.UIColorUtils
      L2_2 = L2_2.GetColor
      L3_2 = FormulaRequestColor
      L3_2 = L3_2.FinishColor
      L2_2 = L2_2(L3_2)
      L1_2.color = L2_2
      L1_2 = A0_2._step
      L1_2 = L1_2.CanPlayFinishEff
      if L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.anim_correct
        L2_2 = L1_2
        L1_2 = L1_2.Play
        L1_2(L2_2)
        L1_2 = A0_2._step
        L1_2.CanPlayFinishEff = false
      end
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_step_desc
      L2_2 = G
      L2_2 = L2_2.UIColorUtils
      L2_2 = L2_2.GetColor
      L3_2 = FormulaRequestColor
      L3_2 = L3_2.ErrorColor
      L2_2 = L2_2(L3_2)
      L1_2.color = L2_2
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_normal
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_correct
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._step
    L3_2 = L3_2.IsCurSuccess
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_wrong
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._step
    L3_2 = L3_2.IsCurSuccess
    L3_2 = not L3_2
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_sub_step_verification_result
  L1_2(L2_2)
end
L0_1._setup_verification_result = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._step
  L1_2 = L1_2.HasSubStep
  if not L1_2 then
    return
  end
  L1_2 = A0_2._step
  L1_2 = L1_2.IsStepFinished
  if L1_2 then
    L1_2 = A0_2._step
    L1_2 = L1_2.IsCurSuccess
    L1_2 = not L1_2
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._step
  L4_2 = L3_2
  L3_2 = L3_2.GetSubStepFinishState
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_ingredients
    L8_2 = L7_2
    L7_2 = L7_2.get_panel_by_index
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L1_2 then
      L9_2 = L7_2
      L8_2 = L7_2.setup_sub_step_finish_state
      L10_2 = false
      L11_2 = L1_2
      L8_2(L9_2, L10_2, L11_2)
    else
      L9_2 = L7_2
      L8_2 = L7_2.setup_sub_step_finish_state
      L10_2 = L2_2[L6_2]
      L11_2 = L1_2
      L8_2(L9_2, L10_2, L11_2)
    end
  end
end
L0_1._setup_sub_step_verification_result = L1_1
return L0_1
