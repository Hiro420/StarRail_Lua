local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterEliteMarkPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MonsterTemplateExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.MonsterTemplateID
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.Rank
  L5_2 = A0_2
  L4_2 = A0_2.safe_set_active
  L6_2 = #L3_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.MonsterRank
  L7_2 = L7_2.Elite
  L7_2 = #L7_2
  L6_2 = L6_2 >= L7_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.go_elite01
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.go_elite02
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.go_elite03
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MonsterRank
  L4_2 = L4_2.Elite
  if L3_2 == L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.go_elite01
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.MonsterRank
    L4_2 = L4_2.LittleBoss
    if L3_2 == L4_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.go_elite02
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = true
      L4_2(L5_2, L6_2)
    else
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.MonsterRank
      L4_2 = L4_2.BigBoss
      if L3_2 == L4_2 then
        L4_2 = A0_2._binder
        L4_2 = L4_2.go_elite03
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetActive
        L6_2 = true
        L4_2(L5_2, L6_2)
      end
    end
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MonsterTemplateExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.MonsterTemplateID
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.Rank
  L4_2 = A0_2._binder
  L4_2 = L4_2.go_elite00
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.go_elite01
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.go_elite02
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.go_elite03
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MonsterRank
  L4_2 = L4_2.Elite
  if L3_2 == L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.go_elite01
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.MonsterRank
    L4_2 = L4_2.LittleBoss
    if L3_2 == L4_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.go_elite02
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = true
      L4_2(L5_2, L6_2)
    else
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.MonsterRank
      L4_2 = L4_2.BigBoss
      if L3_2 == L4_2 then
        L4_2 = A0_2._binder
        L4_2 = L4_2.go_elite03
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetActive
        L6_2 = true
        L4_2(L5_2, L6_2)
      else
        L4_2 = A0_2._binder
        L4_2 = L4_2.go_elite00
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetActive
        L6_2 = true
        L4_2(L5_2, L6_2)
      end
    end
  end
end
L0_1.setup_view_with_normal_mark = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
