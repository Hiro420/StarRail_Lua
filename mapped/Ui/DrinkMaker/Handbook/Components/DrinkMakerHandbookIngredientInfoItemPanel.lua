local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.DrinkMakerBartendColor"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Handbook.Components.DrinkMakerHandbookIngredientInfoItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerHandbookIngredientInfoItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_DrinkMaker_GamePlayPage_MenuStep3_3"
L2_1 = "UIText_ChallengeActivity_HitCount"
function L3_1(A0_2, A1_2, A2_2)
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_ingredient
  L6_2 = A1_2.SmallIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_ingredient_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.IngredientName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_count
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_1
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_ingredient_name
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = FormulaRequestColor
    L5_2 = L5_2.ErrorColor
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_count
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = FormulaRequestColor
    L5_2 = L5_2.ErrorColor
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
    return
  end
  if A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_ingredient_name
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = FormulaRequestColor
    L5_2 = L5_2.FinishColor
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_count
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = FormulaRequestColor
    L5_2 = L5_2.FinishColor
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_ingredient_name
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = FormulaRequestColor
    L5_2 = L5_2.NormalColor
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_count
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = FormulaRequestColor
    L5_2 = L5_2.NormalColor
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  end
end
L0_1.setup_sub_step_finish_state = L3_1
return L0_1
