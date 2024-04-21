local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WeakPointListView"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2.node_class_name = "Ui.WeakPoint.MonsterDamageTypeNode"
  A0_2.node_binder_class_name = "Ui.WeakPoint.MonsterDamageTypeNodeBinder"
  L4_2 = {}
  A0_2._node_list = L4_2
  L4_2 = {}
  A0_2._show_damage_type = L4_2
  L4_2 = {}
  A0_2.weak_point_pool = L4_2
  L4_2 = {}
  A0_2.index_to_weak_point = L4_2
  L4_2 = {}
  A0_2._btn_list = L4_2
  A0_2._showCount = 0
  if A3_2 == nil then
    L4_2 = true
    if L4_2 then
      goto lbl_20
    end
  end
  L4_2 = A3_2
  ::lbl_20::
  A0_2._by_scale = L4_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.prefab_load_meta
  L1_2 = L1_2.Prefab
  A0_2._prefab_meta = L1_2
  L1_2 = L1_1.SafeFind
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = A0_2._prefab_meta
  L3_2 = L3_2.name
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._by_scale
    if L2_2 then
      L3_2 = L1_2
      L2_2 = L1_2.SafeSetActiveByScale
      L4_2 = false
      L2_2(L3_2, L4_2)
    else
      L3_2 = L1_2
      L2_2 = L1_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._init_node
  L4_2 = 4
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.init_weakpoint_pool
  L2_2(L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  A0_2._showCount = 0
  if A1_2 == nil then
    return
  end
  L5_2 = nil
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.GlobalVars
  L6_2 = L6_2.s_GamePhaseManager
  L7_2 = L6_2
  L6_2 = L6_2.GetCurrentPhase
  L6_2 = L6_2(L7_2)
  if L6_2 ~= nil then
    L7_2 = L6_2.CurrentPlayingTeamMember
    if L7_2 ~= nil then
      L7_2 = L6_2.CurrentPlayingTeamMember
      L9_2 = L7_2
      L8_2 = L7_2.GetComponent
      L10_2 = typeof
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.GameCore
      L11_2 = L11_2.AdventureCharacterDataComponent
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2(L11_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.AdventurePlayerExcelTable
      L9_2 = L9_2.GetData
      L10_2 = L8_2.CharacterID
      L9_2 = L9_2(L10_2)
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.GameCore
      L10_2 = L10_2.AvatarExcelTable
      L10_2 = L10_2.GetData
      L11_2 = L9_2.AvatarID
      L10_2 = L10_2(L11_2)
      L5_2 = L10_2
    end
  end
  L7_2 = #A1_2
  A0_2._showCount = L7_2
  L8_2 = A0_2
  L7_2 = A0_2._init_node
  L9_2 = A0_2._showCount
  L7_2(L8_2, L9_2)
  L7_2 = pairs
  L8_2 = A0_2.weak_point_pool
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L13_2 = L11_2
    L12_2 = L11_2.set_light_weight_active
    L14_2 = false
    L12_2(L13_2, L14_2)
  end
  L7_2 = {}
  A0_2._btn_list = L7_2
  L7_2 = {}
  A0_2.index_to_weak_point = L7_2
  L7_2 = 1
  L8_2 = A0_2._showCount
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = A1_2[L10_2]
    L12_2 = A0_2._show_damage_type
    L12_2[L10_2] = L11_2
    L13_2 = A0_2
    L12_2 = A0_2.get_weak_point_node
    L14_2 = L11_2
    L15_2 = L10_2
    L16_2 = L5_2
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
    L13_2 = A0_2.index_to_weak_point
    L13_2[L10_2] = L12_2
    L14_2 = L12_2
    L13_2 = L12_2.set_light_weight_active
    L15_2 = true
    L13_2(L14_2, L15_2)
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L2_2 = NavigationType
    L2_2 = L2_2.None
    if A1_2 ~= L2_2 then
      goto lbl_9
    end
  end
  do return end
  goto lbl_13
  ::lbl_9::
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = A0_2._btn_list
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  ::lbl_13::
end
L0_1._update_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._showCount
  if 0 < L1_2 then
    L1_2 = A0_2.index_to_weak_point
    L1_2 = L1_2[1]
    L2_2 = L1_2._binder
    L2_2 = L2_2.root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.index_to_weak_point
  if L2_2 then
    L2_2 = A0_2.index_to_weak_point
    L2_2 = L2_2[A1_2]
    if L2_2 then
      L2_2 = A0_2.index_to_weak_point
      L2_2 = L2_2[A1_2]
      return L2_2
    end
  end
end
L0_1.get_panel_by_index = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2
  L2_2 = A0_2._init_node
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = 1
  L3_2 = A0_2._node_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._node_list
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.init_view
    L7_2(L8_2)
    L8_2 = A0_2
    L7_2 = A0_2._set_node_active
    L9_2 = L6_2
    L10_2 = false
    L7_2(L8_2, L9_2, L10_2)
  end
end
L0_1.init_node = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.get_weak_point_node
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AttackDamageType
  L3_2 = L3_2.Physical
  L4_2 = 1
  L5_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_weak_point_node
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AttackDamageType
  L3_2 = L3_2.Fire
  L4_2 = 1
  L5_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_weak_point_node
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AttackDamageType
  L3_2 = L3_2.Ice
  L4_2 = 1
  L5_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_weak_point_node
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AttackDamageType
  L3_2 = L3_2.Thunder
  L4_2 = 1
  L5_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_weak_point_node
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AttackDamageType
  L3_2 = L3_2.Wind
  L4_2 = 1
  L5_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_weak_point_node
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AttackDamageType
  L3_2 = L3_2.Quantum
  L4_2 = 1
  L5_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_weak_point_node
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AttackDamageType
  L3_2 = L3_2.Imaginary
  L4_2 = 1
  L5_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1.init_weakpoint_pool = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A0_2.weak_point_pool
  L4_2 = L4_2[A1_2]
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.instantiate_object
    L7_2 = A0_2._prefab_meta
    L8_2 = A0_2._node_list
    L8_2 = L8_2[A2_2]
    L8_2 = L8_2.transform
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = A0_2.node_class_name
    L9_2 = A0_2.node_binder_class_name
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L4_2 = L6_2
    L7_2 = L4_2
    L6_2 = L4_2.bind
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L7_2 = L4_2
    L6_2 = L4_2.setup_view
    L8_2 = A1_2
    L9_2 = A3_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2.weak_point_pool
    L6_2[A1_2] = L4_2
    L6_2 = L4_2._binder
    L6_2 = L6_2.root
    L6_2 = L6_2.transform
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Vector2
    L7_2 = L7_2.zero
    L6_2.anchoredPosition = L7_2
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Vector2
    L7_2 = L7_2.zero
    L6_2.pivot = L7_2
  else
    L5_2 = L4_2._binder
    L5_2 = L5_2.root
    L5_2 = L5_2.transform
    L6_2 = L5_2
    L5_2 = L5_2.SetParent
    L7_2 = A0_2._node_list
    L7_2 = L7_2[A2_2]
    L7_2 = L7_2.transform
    L8_2 = false
    L5_2(L6_2, L7_2, L8_2)
  end
  L6_2 = L4_2
  L5_2 = L4_2.update_weak_active_by_avatar
  L7_2 = A3_2
  L5_2(L6_2, L7_2)
  return L4_2
end
L0_1.get_weak_point_node = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  while A1_2 >= L2_2 do
    L3_2 = A0_2._node_list
    L3_2 = L3_2[L2_2]
    if L3_2 then
      L5_2 = A0_2
      L4_2 = A0_2._set_node_active
      L6_2 = L3_2
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
    else
      L4_2 = CS
      L4_2 = L4_2.UnityEngine
      L4_2 = L4_2.GameObject
      L5_2 = "SlotObject"
      L4_2 = L4_2(L5_2)
      L6_2 = L4_2
      L5_2 = L4_2.AddComponent
      L7_2 = typeof
      L8_2 = CS
      L8_2 = L8_2.UnityEngine
      L8_2 = L8_2.RectTransform
      L7_2, L8_2 = L7_2(L8_2)
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = L4_2.transform
      L6_2 = L5_2
      L5_2 = L5_2.SetParent
      L7_2 = A0_2._binder
      L7_2 = L7_2.root
      L8_2 = false
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = L4_2.transform
      L6_2 = CS
      L6_2 = L6_2.UnityEngine
      L6_2 = L6_2.Vector3
      L6_2 = L6_2.zero
      L5_2.eulerAngles = L6_2
      L5_2 = L4_2.transform
      L6_2 = CS
      L6_2 = L6_2.UnityEngine
      L6_2 = L6_2.Vector3
      L6_2 = L6_2.one
      L5_2.localScale = L6_2
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = A0_2._node_list
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    end
    L2_2 = L2_2 + 1
  end
  while true do
    L3_2 = A0_2._node_list
    L3_2 = #L3_2
    if not (L2_2 <= L3_2) then
      break
    end
    L3_2 = A0_2._node_list
    L3_2 = L3_2[L2_2]
    L5_2 = A0_2
    L4_2 = A0_2._set_node_active
    L6_2 = L3_2
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
    L2_2 = L2_2 + 1
  end
end
L0_1._init_node = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._by_scale
  if L3_2 then
    L3_2 = L1_1.SafeSetActiveByScale
    L4_2 = A1_2
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = L1_1.SafeSetActive
    L4_2 = A1_2
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._set_node_active = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.weak_point_pool
  if L1_2 then
    L1_2 = 1
    L2_2 = A0_2.weak_point_pool
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2.weak_point_pool
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.dispose
      L5_2(L6_2)
    end
  end
  A0_2.weak_point_pool = nil
  L1_2 = A0_2._node_list
  if L1_2 then
    L1_2 = 1
    L2_2 = A0_2._node_list
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L6_2 = A0_2
      L5_2 = A0_2.destroy_object
      L7_2 = A0_2._node_list
      L7_2 = L7_2[L4_2]
      L5_2(L6_2, L7_2)
    end
  end
  A0_2._node_list = nil
end
L0_1._on_dispose = L2_1
return L0_1
