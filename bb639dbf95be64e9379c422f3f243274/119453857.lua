local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.DrinkMakerMainPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.DrinkMakerMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2
  A0_2._request = A1_2
  A0_2._drink = A2_2
  A0_2._all_cups = A3_2
  A0_2._all_ices = A4_2
  A0_2._all_ingredients = A5_2
  A0_2._all_decorations = A6_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.SuperDebug
  L7_2 = L7_2.LogFormat
  L8_2 = "DrinkMakerMainPage id {0}"
  L9_2 = tostring
  L10_2 = A0_2._request
  L10_2 = L10_2.RequestID
  L9_2, L10_2 = L9_2(L10_2)
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.SuperDebug
  L7_2 = L7_2.LogFormat
  L8_2 = "DrinkMakerMainPage mode {0}"
  L9_2 = tostring
  L10_2 = A0_2._request
  L10_2 = L10_2.Mode
  L9_2, L10_2 = L9_2(L10_2)
  L7_2(L8_2, L9_2, L10_2)
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.MakePanel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.ResultPanel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.CupPanel
  A0_2._current_panel = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.CupTxt1
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.DebugGetCupBtnDesc
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.CupTxt2
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.DebugGetCupBtnDesc
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.CupTxt3
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.DebugGetCupBtnDesc
  L4_2 = 3
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.CupTxt4
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.DebugGetCupBtnDesc
  L4_2 = 4
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.IceTxt1
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.DebugGetIceBtnDesc
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.IceTxt2
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.DebugGetIceBtnDesc
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.IngredientTxt1
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.DebugGetIngredientBtnDesc
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.IngredientTxt2
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.DebugGetIngredientBtnDesc
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.IngredientTxt3
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.DebugGetIngredientBtnDesc
  L4_2 = 3
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.IngredientTxt4
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.DebugGetIngredientBtnDesc
  L4_2 = 4
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.IngredientTxt5
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.DebugGetIngredientBtnDesc
  L4_2 = 5
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.IngredientTxt6
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.DebugGetIngredientBtnDesc
  L4_2 = 6
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.IngredientTxt7
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.DebugGetIngredientBtnDesc
  L4_2 = 7
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.DecorationTxt1
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.DebugGetDecorationBtnDesc
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.DecorationTxt2
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.DebugGetDecorationBtnDesc
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.DecorationTxt3
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.DebugGetDecorationBtnDesc
  L4_2 = 3
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.DecorationTxt4
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.DebugGetDecorationBtnDesc
  L4_2 = 4
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.DecorationTxt5
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.DebugGetDecorationBtnDesc
  L4_2 = 5
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_make_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_info_txt
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DrinkMakerRefresh
  L4_2 = A0_2._on_drink_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.ConfirmBtn
  L4_2 = A0_2.on_btn_confirm
  L5_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.BlendBtn
  L4_2 = A0_2.on_btn_blend
  L5_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.ExitBtn
  L4_2 = A0_2.on_btn_exit
  L5_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.ResetBtn
  L4_2 = A0_2.on_btn_reset
  L5_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.Cup1
  L4_2 = A0_2.on_btn_select_cups
  L5_2 = A0_2._all_cups
  L5_2 = L5_2[0]
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.Cup2
  L4_2 = A0_2.on_btn_select_cups
  L5_2 = A0_2._all_cups
  L5_2 = L5_2[1]
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.Cup3
  L4_2 = A0_2.on_btn_select_cups
  L5_2 = A0_2._all_cups
  L5_2 = L5_2[2]
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.Cup4
  L4_2 = A0_2.on_btn_select_cups
  L5_2 = A0_2._all_cups
  L5_2 = L5_2[3]
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.Ice1
  L4_2 = A0_2.on_btn_select_ice
  L5_2 = A0_2._all_ices
  L5_2 = L5_2[0]
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.Ice2
  L4_2 = A0_2.on_btn_select_ice
  L5_2 = A0_2._all_ices
  L5_2 = L5_2[1]
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.Ice3
  L4_2 = A0_2.on_btn_add_phy_ice
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.Ingredient1
  L4_2 = A0_2.on_btn_add_ingredient
  L5_2 = A0_2._all_ingredients
  L5_2 = L5_2[0]
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.Ingredient2
  L4_2 = A0_2.on_btn_add_ingredient
  L5_2 = A0_2._all_ingredients
  L5_2 = L5_2[1]
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.Ingredient3
  L4_2 = A0_2.on_btn_add_ingredient
  L5_2 = A0_2._all_ingredients
  L5_2 = L5_2[2]
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.Ingredient4
  L4_2 = A0_2.on_btn_add_ingredient
  L5_2 = A0_2._all_ingredients
  L5_2 = L5_2[3]
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.Ingredient5
  L4_2 = A0_2.on_btn_add_ingredient
  L5_2 = A0_2._all_ingredients
  L5_2 = L5_2[4]
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.Ingredient6
  L4_2 = A0_2.on_btn_add_ingredient
  L5_2 = A0_2._all_ingredients
  L5_2 = L5_2[5]
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.Ingredient7
  L4_2 = A0_2.on_btn_add_ingredient
  L5_2 = A0_2._all_ingredients
  L5_2 = L5_2[6]
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.Decoration1
  L4_2 = A0_2.on_btn_select_decoration
  L5_2 = A0_2._all_decorations
  L5_2 = L5_2[0]
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.Decoration2
  L4_2 = A0_2.on_btn_select_decoration
  L5_2 = A0_2._all_decorations
  L5_2 = L5_2[1]
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.Decoration3
  L4_2 = A0_2.on_btn_select_decoration
  L5_2 = A0_2._all_decorations
  L5_2 = L5_2[2]
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.Decoration4
  L4_2 = A0_2.on_btn_select_decoration
  L5_2 = A0_2._all_decorations
  L5_2 = L5_2[3]
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.Decoration5
  L4_2 = A0_2.on_btn_select_decoration
  L5_2 = A0_2._all_decorations
  L5_2 = L5_2[4]
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "on_btn_blend"
  L1_2(L2_2)
  L1_2 = A0_2._drink
  L2_2 = L1_2
  L1_2 = L1_2.Mix
  L1_2(L2_2)
end
L0_1.on_btn_blend = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.SelectCup
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.on_btn_select_cups = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.SwitchIce
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.on_btn_select_ice = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._drink
  L2_2 = L1_2
  L1_2 = L1_2.AddSinglePhysicsIce
  L1_2(L2_2)
end
L0_1.on_btn_add_phy_ice = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.AddIngredient
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.on_btn_add_ingredient = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._drink
  L3_2 = L2_2
  L2_2 = L2_2.SwitchDecoration
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.on_btn_select_decoration = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "on_btn_confirm"
  L1_2(L2_2)
  L1_2 = A0_2._current_panel
  L2_2 = A0_2._binder
  L2_2 = L2_2.CupPanel
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.IcePanel
    A0_2._current_panel = L1_2
  else
    L1_2 = A0_2._current_panel
    L2_2 = A0_2._binder
    L2_2 = L2_2.IcePanel
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.IngredientPanel
      A0_2._current_panel = L1_2
    else
      L1_2 = A0_2._current_panel
      L2_2 = A0_2._binder
      L2_2 = L2_2.IngredientPanel
      if L1_2 == L2_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.DecorationPanel
        A0_2._current_panel = L1_2
      else
        L1_2 = A0_2._current_panel
        L2_2 = A0_2._binder
        L2_2 = L2_2.DecorationPanel
        if L1_2 == L2_2 then
          L2_2 = A0_2
          L1_2 = A0_2._check_finish
          L1_2(L2_2)
        else
          L1_2 = CS
          L1_2 = L1_2.RPG
          L1_2 = L1_2.SuperDebug
          L2_2 = "Not Supported."
          L1_2(L2_2)
        end
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.refresh_make_panel
  L1_2(L2_2)
end
L0_1.on_btn_confirm = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "on_btn_reset"
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.CupPanel
  A0_2._current_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_make_panel
  L1_2(L2_2)
  L1_2 = A0_2._drink
  L2_2 = L1_2
  L1_2 = L1_2.Reset
  L1_2(L2_2)
end
L0_1.on_btn_reset = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "on_btn_finish"
  L1_2(L2_2)
  L1_2 = A0_2._drink
  L2_2 = L1_2
  L1_2 = L1_2.CheckRequest
  L3_2 = A0_2._request
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.MakePanel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.ResultPanel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.refresh_result_panel
    L1_2(L2_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.Log
    L2_2 = "not finish yet!"
    L1_2(L2_2)
  end
end
L0_1._check_finish = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "on_btn_exit"
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.DrinkMakerExit
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1.on_btn_exit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.CupPanel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.IcePanel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.IngredientPanel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.DecorationPanel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._current_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._current_panel
  L2_2 = A0_2._binder
  L2_2 = L2_2.CupPanel
  if L1_2 == L2_2 then
  else
    L1_2 = A0_2._current_panel
    L2_2 = A0_2._binder
    L2_2 = L2_2.IcePanel
    if L1_2 == L2_2 then
    else
      L1_2 = A0_2._current_panel
      L2_2 = A0_2._binder
      L2_2 = L2_2.IngredientPanel
      if L1_2 == L2_2 then
      else
        L1_2 = A0_2._current_panel
        L2_2 = A0_2._binder
        L2_2 = L2_2.DecorationPanel
        if L1_2 == L2_2 then
        else
          L1_2 = CS
          L1_2 = L1_2.RPG
          L1_2 = L1_2.SuperDebug
          L2_2 = "Not Supported."
          L1_2(L2_2)
        end
      end
    end
  end
end
L0_1.refresh_make_panel = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.refresh_result_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._request
  L1_2 = L1_2.Mode
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.DrinkMakerRequestMode
  L2_2 = L2_2.ByTags
  if L1_2 == L2_2 then
    L1_2 = "ByTags\n"
    L2_2 = L1_2
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = A0_2._request
    L4_2 = L4_2.RequestDesc
    L3_2 = L3_2(L4_2)
    L4_2 = "\n"
    L5_2 = "\n"
    L1_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
    L2_2 = L1_2
    L3_2 = A0_2._drink
    L4_2 = L3_2
    L3_2 = L3_2.DebugInfo
    L3_2 = L3_2(L4_2)
    L1_2 = L2_2 .. L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.infoTxt
    L2_2.text = L1_2
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.SuperDebug
    L2_2 = "Not Supported."
    L1_2(L2_2)
  end
end
L0_1.refresh_info_txt = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_info_txt
  L1_2(L2_2)
end
L0_1._on_drink_refresh = L1_1
return L0_1
