local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogPropertyRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogPropertyRowBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogPropertyListBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarDialogPropertyList"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.AbilityProperty
L2_1 = L2_1.MaxHP
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.AbilityProperty
L3_1 = L3_1.Attack
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.AbilityProperty
L4_1 = L4_1.Defence
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.AbilityProperty
L5_1 = L5_1.Speed
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.AbilityProperty
L6_1 = L6_1.CriticalChance
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.GameCore
L7_1 = L7_1.AbilityProperty
L7_1 = L7_1.CriticalDamage
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L1_1[5] = L6_1
L1_1[6] = L7_1
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.AbilityProperty
L3_1 = L3_1.MaxHP
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.AbilityProperty
L4_1 = L4_1.Attack
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.AbilityProperty
L5_1 = L5_1.Defence
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.AbilityProperty
L6_1 = L6_1.Speed
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.GameCore
L7_1 = L7_1.AbilityProperty
L7_1 = L7_1.CriticalChance
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.AbilityProperty
L8_1 = L8_1.CriticalDamage
L9_1 = CS
L9_1 = L9_1.RPG
L9_1 = L9_1.GameCore
L9_1 = L9_1.AbilityProperty
L9_1 = L9_1.StatusProbability
L10_1 = CS
L10_1 = L10_1.RPG
L10_1 = L10_1.GameCore
L10_1 = L10_1.AbilityProperty
L10_1 = L10_1.StatusResistance
L11_1 = CS
L11_1 = L11_1.RPG
L11_1 = L11_1.GameCore
L11_1 = L11_1.AbilityProperty
L11_1 = L11_1.SPRatio
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L2_1[6] = L8_1
L2_1[7] = L9_1
L2_1[8] = L10_1
L2_1[9] = L11_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ScrollRectPanel
  L1_2 = L1_2(L2_2)
  A0_2._scroll_property_list = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._scroll_property_list
  L2_2 = L1_2
  L1_2 = L1_2.bind_view
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_property_list
  L3_2 = L3_2.transform
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_details
  L4_2 = A0_2._on_details_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._PropertyDatas = nil
  A0_2._CurrentEntity = nil
  A0_2._Ability = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._CurrentEntity = A1_2
  L2_2 = A0_2._CurrentEntity
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.TurnBasedAbilityComponent
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._Ability = L2_2
  A0_2._showDetails = false
  L3_2 = A0_2
  L2_2 = A0_2._refresh_data
  L4_2 = A0_2._showDetails
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  A0_2._PropertyDatas = L2_2
  L2_2 = nil
  if A1_2 then
    L2_2 = L2_1
  else
    L2_2 = L1_1
  end
  L2_2 = L2_1
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._PropertyDatas
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.Client
    L10_2 = L10_2.UINumberUtils
    L10_2 = L10_2.GetPropertyUIData
    L11_2 = A0_2._Ability
    L12_2 = L7_2
    L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
end
L0_1._refresh_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._scroll_property_list
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._scroll_property_list
  L2_2 = L1_2
  L1_2 = L1_2.SetupView
  L3_2 = A0_2
  L4_2 = A0_2._on_scroll_property_change
  L5_2 = nil
  L6_2 = A0_2._PropertyDatas
  L6_2 = #L6_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._refresh_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2.UICodeObject
  if L3_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2.create_panel
    L6_2 = G
    L6_2 = L6_2.AvatarDialogPropertyRow
    L7_2 = G
    L7_2 = L7_2.AvatarDialogPropertyRowBinder
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2
    L5_2 = L3_2
    L4_2 = L3_2.bind
    L6_2 = A1_2.ItemTrans
    L4_2(L5_2, L6_2)
    A1_2.UICodeObject = L3_2
  end
  L5_2 = L3_2
  L4_2 = L3_2.setup_view
  L6_2 = A0_2._PropertyDatas
  L7_2 = A1_2.Index
  L7_2 = L7_2 + 1
  L6_2 = L6_2[L7_2]
  L4_2(L5_2, L6_2)
end
L0_1._on_scroll_property_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._showDetails
  L1_2 = not L1_2
  A0_2._showDetails = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_data
  L3_2 = A0_2._showDetails
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L0_1._on_details_click = L3_1
return L0_1
