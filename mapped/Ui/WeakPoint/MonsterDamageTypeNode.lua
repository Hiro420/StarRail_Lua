local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterDamageTypeNode"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L1_1.SafeSetActive
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_break_up
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = L1_1.SafeSetActive
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_normal_up
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = L1_1.SafeSetActive
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_normal
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = L1_1.SafeSetActive
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_break
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = L1_1.SafeSetLightWeightActive
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_normal
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = L1_1.SafeSetLightWeightActive
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_break
  L5_2 = false
  L3_2(L4_2, L5_2)
  A0_2.attack_damage_type = A1_2
  A0_2.is_normal_active = false
  A0_2.is_break_active = false
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.DamageTypeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_break
  L7_2 = L3_2.IconNatureForWeakActive
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_normal
  L7_2 = L3_2.IconNatureForWeakUnactive
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2.update_weak_active_by_avatar
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = false
  L3_2 = false
  if A1_2 ~= nil then
    L4_2 = A0_2.attack_damage_type
    L5_2 = A1_2.DamageType
    L2_2 = L4_2 == L5_2
    L4_2 = A0_2.attack_damage_type
    L5_2 = A1_2.DamageType
    L3_2 = L4_2 ~= L5_2
  end
  L4_2 = A0_2.is_break_active
  if L4_2 ~= L2_2 then
    L4_2 = L1_1.SafeSetLightWeightActive
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_break
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    A0_2.is_break_active = L2_2
  end
  L4_2 = A0_2.is_normal_active
  if L4_2 ~= L3_2 then
    L4_2 = L1_1.SafeSetLightWeightActive
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_normal
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    A0_2.is_normal_active = L3_2
  end
end
L0_1.update_weak_active_by_avatar = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
return L0_1
