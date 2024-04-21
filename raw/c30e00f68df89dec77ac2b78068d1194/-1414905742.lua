local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterElitePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.MonsterRank
L2_1 = L2_1.Elite
L1_1[L2_1] = "UI/Atlas/AtlasRoot/Battle_UI/MonsterElite/IconInLevelTypeElite01.png"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.MonsterRank
L2_1 = L2_1.LittleBoss
L1_1[L2_1] = "UI/Atlas/AtlasRoot/Battle_UI/MonsterElite/IconInLevelTypeElite02.png"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.MonsterRank
L2_1 = L2_1.BigBoss
L1_1[L2_1] = "UI/Atlas/AtlasRoot/Battle_UI/MonsterElite/IconInLevelTypeElite03.png"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.Rank
  L3_2 = L1_1[L2_2]
  L4_2 = G
  L4_2 = L4_2.StrExt
  L4_2 = L4_2.IsNullOrEmpty
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_elite_icon
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_elite_icon
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_elite_icon
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1.setup_view = L2_1
return L0_1
