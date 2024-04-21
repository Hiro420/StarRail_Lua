local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterArchiveResistItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.DamageResistanceTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_icon
    L6_2 = L2_2.Icon
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "MonsterDamageResistanceType_"
  L7_2 = A1_2
  L6_2 = A1_2.ToString
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_type_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StatusResistanceTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_icon
    L6_2 = L2_2.Icon
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "MonsterStatusResistanceType_"
  L7_2 = A1_2
  L6_2 = A1_2.ToString
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_status_view = L1_1
return L0_1
