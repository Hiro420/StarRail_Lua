local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GotoItemComposePageCommand"
L2_1 = "Logic.Goto.BaseCommand"
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ItemComposeModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.InventoryModule
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.Log
  L3_2 = "GotoItemComposePageCommand execute"
  L2_2(L3_2)
  L2_2 = 1
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemComposeTypeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._main_type_id
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemComposeTypeExcelTable
  L4_2 = L4_2.dataDict
  L5_2 = pairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L9_2.TypeID
    L11_2 = A0_2._main_type_id
    if L10_2 ~= L11_2 then
      L10_2 = L9_2.IsMainType
      if L10_2 then
        L10_2 = L9_2.UnlockID
        if L10_2 ~= 0 then
          L10_2 = CS
          L10_2 = L10_2.RPG
          L10_2 = L10_2.Client
          L10_2 = L10_2.SystemOpenModule
          L10_2 = L10_2.IsOpen
          L11_2 = L9_2.UnlockID
          L10_2 = L10_2(L11_2)
          if not L10_2 then
            goto lbl_47
          end
        end
        L10_2 = L9_2.MainTypeOrder
        L11_2 = L3_2.MainTypeOrder
        if L10_2 < L11_2 then
          L2_2 = L2_2 + 1
        end
      end
    end
    ::lbl_47::
  end
  if L2_2 ~= 1 then
    L5_2 = G
    L5_2 = L5_2.UIManager
    L5_2 = L5_2.load_and_async_show
    L6_2 = "Ui.ItemCompose.ItemComposePage"
    L7_2 = L2_2
    L8_2 = A0_2._compose_item_id
    L5_2(L6_2, L7_2, L8_2)
  else
    L5_2 = G
    L5_2 = L5_2.UIManager
    L5_2 = L5_2.load_and_async_show
    L6_2 = "Ui.ItemCompose.ItemComposePage"
    L7_2 = nil
    L8_2 = A0_2._compose_item_id
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1.execute = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._compose_item_id = nil
  A0_2._main_type_id = 1
  L3_2 = A1_2.ParamIntList
  L3_2 = L3_2.Length
  if L3_2 ~= 0 then
    L3_2 = A1_2.ParamIntList
    L3_2 = L3_2[0]
    A0_2._main_type_id = L3_2
    L3_2 = A0_2._main_type_id
    if L3_2 == 0 then
      L3_2 = 1
      if L3_2 then
        goto lbl_17
      end
    end
    L3_2 = A0_2._main_type_id
    ::lbl_17::
    A0_2._main_type_id = L3_2
  end
  if A2_2 == nil then
    L3_2 = true
    L4_2 = ""
    return L3_2, L4_2
  end
  L3_2 = A2_2[1]
  L4_2 = L3_2.GotoParam
  L4_2 = L4_2.Length
  if 0 < L4_2 then
    L4_2 = L3_2.GotoParam
    L4_2 = L4_2[0]
    A0_2._compose_item_id = L4_2
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ItemComposeConfigExcelTable
    L4_2 = L4_2.dataDict
    L5_2 = pairs
    L6_2 = L4_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = L3_2.ID
      L11_2 = L9_2.ItemID
      if L10_2 == L11_2 then
        L10_2 = L9_2.ID
        A0_2._compose_item_id = L10_2
        break
      end
    end
  end
  L4_2 = A0_2._compose_item_id
  if L4_2 == nil then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogWarningFormat
    L5_2 = "GotoItemComposePageCommand : self._compose_item_id - "
    L6_2 = A0_2._compose_item_id
    L7_2 = " \228\184\141\229\173\152\229\156\168"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    L4_2 = false
    L5_2 = ""
    return L4_2, L5_2
  end
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.TryGetComposeItemData
  L6_2 = A0_2._compose_item_id
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._compose_data = L4_2
  L4_2 = A0_2._compose_data
  if L4_2 == nil then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogWarningFormat
    L5_2 = "GotoItemComposePageCommand : self._compose_data - "
    L6_2 = A0_2._compose_item_id
    L7_2 = " \228\184\141\229\173\152\229\156\168"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    L4_2 = false
    L5_2 = ""
    return L4_2, L5_2
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemComposeTypeExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2._compose_data
  L5_2 = L5_2.Row
  L5_2 = L5_2.Type
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ItemComposeTypeExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L4_2.MainTypeID
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.UnlockID
  if L6_2 ~= 0 then
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.SystemOpenModule
    L6_2 = L6_2.IsOpen
    L7_2 = L5_2.UnlockID
    L6_2 = L6_2(L7_2)
    if L6_2 == false then
      L6_2 = false
      L7_2 = "UIText_FuncLockedDesc"
      return L6_2, L7_2
    end
  end
  L6_2 = L4_2.MainTypeID
  A0_2._main_type_id = L6_2
  L6_2 = A0_2._compose_data
  L6_2 = L6_2.IsFormulaUnlocked
  if L6_2 == false then
    L7_2 = A0_2
    L6_2 = A0_2._is_having_formula
    L8_2 = A0_2._compose_data
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 == false then
      L6_2 = false
      L7_2 = "UIText_ItemCompose_Formula_Tip_1"
      return L6_2, L7_2
    end
  end
  L6_2 = true
  L7_2 = ""
  return L6_2, L7_2
end
L0_1._check_goto_condition = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = A1_2.Row
  L4_2 = L4_2.FormulaRequire
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 ~= 0
  return L3_2
end
L0_1._is_having_formula = L3_1
return L0_1
