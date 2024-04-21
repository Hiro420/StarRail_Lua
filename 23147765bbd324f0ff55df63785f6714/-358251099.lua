local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicSecondTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._type = A1_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RelicType
  L2_2 = L2_2.Unknow
  if L1_2 == L2_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._type
  return L1_2
end
L0_1.get_type = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RelicBaseTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._type
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = nil
  L4_2 = A0_2
  L3_2 = A0_2._is_enable
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L2_2 = L1_2.BaseTypeIconPath
  else
    L3_2 = G
    L3_2 = L3_2.RelicUtils
    L2_2 = L3_2.RELIC_TYPE_LOCK_IMG_PATH
  end
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_selected
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_unselected
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.RelicUtils
  L1_2 = L1_2.is_relic_type_unlock
  L2_2 = A0_2._type
  return L1_2(L2_2)
end
L0_1._is_enable = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.RelicUtils
  L1_2 = L1_2.show_relic_type_lock_hint
  L1_2()
end
L0_1._on_select_when_disable = L1_1
return L0_1
