local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogWeakPoint"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleWeakPointBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleMonsterInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.InActive = 1
L1_1.Active = 2
L1_1.Protected = 3
L2_1 = "SpriteOutput/UI/Nature/IconNatureForWeak/IconNatureWhiteQuestion_1.png"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.UINumberUtils
function L4_1(A0_2)
  local L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not A1_2 then
    return
  end
  A0_2._entity = A1_2
  L2_2 = A0_2._entity
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
  L2_2 = A0_2._Ability
  L2_2 = L2_2.Weakness
  L3_2 = L2_2
  L2_2 = L2_2.GetAllWeakness
  L2_2 = L2_2(L3_2)
  A0_2._Weakness = L2_2
  L2_2 = A0_2._entity
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.CharacterDataComponent
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._characterData = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_weak_point
  L1_2(L2_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_in_special_zoom
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_can_to_special_zoom
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.RightStickButton
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_in_special_zoom
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.resist_list_panel
      L3_2 = L2_2
      L2_2 = L2_2.have_resist_data
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.resist_list_panel
        L3_2 = L2_2
        L2_2 = L2_2.get_first_selected_object
        L2_2 = L2_2(L3_2)
        L4_2 = A0_2
        L3_2 = A0_2.set_special_zoom_navigation_target
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L0_1._on_in_control_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._weakPointsCaching
  if L1_2 == nil then
    L1_2 = {}
    A0_2._weakPointsCaching = L1_2
    L1_2 = {}
    A0_2._weakPointsUsing = L1_2
    L1_2 = {}
    A0_2._AllDamageType = L1_2
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.DamageTypeExcelTable
    L1_2 = L1_2.dataDict
    L2_2 = pairs
    L3_2 = L1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._AllDamageType
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      L8_2 = A0_2
      L7_2 = A0_2.instantiate_object
      L9_2 = A0_2._binder
      L9_2 = L9_2.node_weak_point
      L9_2 = L9_2.Prefab
      L10_2 = A0_2._binder
      L10_2 = L10_2.node_weak_point
      L10_2 = L10_2.transform
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L9_2 = A0_2
      L8_2 = A0_2.create_panel
      L10_2 = G
      L10_2 = L10_2.AvatarDialogWeakPoint
      L11_2 = G
      L11_2 = L11_2.BattleWeakPointBinder
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.bind
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.show_weakpoint
      L11_2 = false
      L9_2(L10_2, L11_2)
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2._weakPointsCaching
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
end
L0_1._init_weak_point = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._entity = nil
  A0_2._Ability = nil
  A0_2._Weakness = nil
  A0_2._characterData = nil
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._entity
  if L1_2 ~= nil then
    L1_2 = A0_2._entity
    L1_2 = L1_2.HasDisposed
    if not L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2
  L1_2 = A0_2._setup_weak_point
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_hp
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_stance
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_resist
  L1_2(L2_2)
end
L0_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 1
  L2_2 = A0_2._weakPointsUsing
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = table
    L5_2 = L5_2.remove
    L6_2 = A0_2._weakPointsUsing
    L5_2 = L5_2(L6_2)
    L7_2 = L5_2
    L6_2 = L5_2.show_weakpoint
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._weakPointsCaching
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._AllDamageType
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._AllDamageType
    L5_2 = L5_2[L4_2]
    L7_2 = A0_2
    L6_2 = A0_2._get_weakness_status
    L8_2 = L5_2.ID
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L1_1.InActive
    if L6_2 ~= L7_2 then
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = A0_2._weakPointsCaching
      L7_2 = L7_2(L8_2)
      L9_2 = L7_2
      L8_2 = L7_2.show_weakpoint
      L10_2 = true
      L8_2(L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.show_protected
      L10_2 = L1_1.Protected
      L10_2 = L6_2 == L10_2
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._Ability
      L8_2 = L8_2.Weakness
      L9_2 = L8_2
      L8_2 = L8_2.IsSecret
      L10_2 = L5_2.ID
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L9_2 = L7_2
        L8_2 = L7_2.setup_view
        L10_2 = L2_1
        L8_2(L9_2, L10_2)
      else
        L9_2 = L7_2
        L8_2 = L7_2.setup_view
        L10_2 = L5_2.IconNatureForWeakUnactive
        L8_2(L9_2, L10_2)
      end
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._weakPointsUsing
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1._setup_weak_point = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 0
  L3_2 = A0_2._Weakness
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._Weakness
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.Key
    if L7_2 == A1_2 then
      L7_2 = L6_2.Value
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.WeaknessState
      L8_2 = L8_2.Protected
      if L7_2 == L8_2 then
        L7_2 = L1_1.Protected
        return L7_2
      end
      L7_2 = L1_1.Active
      return L7_2
    end
  end
  L2_2 = L1_1.InActive
  return L2_2
end
L0_1._get_weakness_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L3_1.CurrentHPInt
  L2_2 = A0_2._entity
  L1_2 = L1_2(L2_2)
  L2_2 = L3_1.MaxHPInt
  L3_2 = A0_2._entity
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.hp_bar_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_hp = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_stance
  L2_2 = L3_1.CurrentStancePercent
  L3_2 = A0_2._entity
  L2_2 = L2_2(L3_2)
  L1_2.value = L2_2
end
L0_1._setup_stance = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MonsterExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._characterData
  L2_2 = L2_2.CharacterID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.resist_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_resist = L4_1
return L0_1
