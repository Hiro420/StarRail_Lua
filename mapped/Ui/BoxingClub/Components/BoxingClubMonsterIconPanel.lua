local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubMonsterIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MonsterTemplateExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if L4_2 == nil then
    return
  end
  L6_2 = A0_2
  L5_2 = A0_2._load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.image_monster
  L8_2 = L4_2.IconPath
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_target
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A2_2 == A3_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_done
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A2_2 < A3_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_lock
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A3_2 < A2_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_monster
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A2_2 <= A3_2
  L5_2(L6_2, L7_2)
end
L0_1.setup_view = L1_1
return L0_1
