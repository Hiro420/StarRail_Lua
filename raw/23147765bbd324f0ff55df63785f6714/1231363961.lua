local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Handbook.DrinkMakerNewContentUnlockDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerNewContentUnlockDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.DrinkMakerModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.DrinkMakerNewContentUnlockDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._unlock_submission = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._init_drinks
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_ingredients
  L2_2(L3_2)
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_close
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_drinks
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_ingredients
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._drink_datas = L1_2
  L1_2 = L2_1.DrinkMakerBarDrinks
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L2_2 = L2_2.Value
    L3_2 = L2_2.Row
    L4_2 = L3_2.UnlockType
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.DrinkMakerFormulaUnlockType
    L5_2 = L5_2.FinishSubMission
    if L4_2 == L5_2 then
      L4_2 = L3_2.UnlockParam
      L5_2 = A0_2._unlock_submission
      if L4_2 == L5_2 then
        L5_2 = {}
        L6_2 = L2_2.IconPath
        L5_2.ImgPath = L6_2
        L6_2 = L2_2.Name
        L5_2.Name = L6_2
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = A0_2._drink_datas
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      end
    end
  end
end
L0_1._init_drinks = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._ingredient_datas = L1_2
  L1_2 = L2_1.DrinkMakerBarIngredients
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L2_2 = L2_2.Value
    L3_2 = L2_2.Row
    L4_2 = L3_2.UnlockType
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.DrinkMakerUnlockType
    L5_2 = L5_2.SubMission
    if L4_2 == L5_2 then
      L4_2 = L3_2.UnlockParam
      L4_2 = L4_2[0]
      L5_2 = A0_2._unlock_submission
      if L4_2 == L5_2 then
        L5_2 = {}
        L6_2 = L3_2.IconPath
        L5_2.ImgPath = L6_2
        L6_2 = L3_2.IngredientName
        L5_2.Name = L6_2
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = A0_2._ingredient_datas
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      end
    end
  end
end
L0_1._init_ingredients = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._drink_datas
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_drink_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.drink_list_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._drink_datas
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_drinks = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._ingredient_datas
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_ingredient_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.ingredient_list_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._ingredient_datas
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_ingredients = L3_1
return L0_1
