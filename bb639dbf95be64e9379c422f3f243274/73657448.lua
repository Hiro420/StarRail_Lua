local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "AetherTeamUtils"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 0
  L3_2 = 1
  L4_2 = A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2[L6_2]
    if L7_2 ~= nil then
      L8_2 = L7_2.IsElite
      if L8_2 then
        L2_2 = L2_2 + 1
      end
    end
  end
  return L2_2
end
L0_1.get_elite_count = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Array
  L2_2 = L2_2.CreateInstance
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.System
  L4_2 = L4_2.UInt32
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2.MaxSelectionCount
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 1
  L4_2 = A1_2.MaxSelectionCount
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2[L6_2]
    if L7_2 ~= nil then
      L8_2 = L6_2 - 1
      L9_2 = L7_2.ID
      L2_2[L8_2] = L9_2
    else
      L8_2 = L6_2 - 1
      L2_2[L8_2] = 0
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.NetworkManager
  L3_2 = L3_2.OOGONDGGKMI
  L4_2 = L3_2
  L3_2 = L3_2.NBGCGLFLLHE
  L5_2 = L2_2
  L6_2 = A1_2.Slot
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.apply_spirits_to_line_up_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.AetherDivideModule
    L2_2 = L2_2.AetherDivideTeamData
    A1_2 = L2_2.CurLineUpData
  end
  L3_2 = A1_2
  L2_2 = A1_2.GetIndexByMemberData
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 ~= 0
  return L2_2
end
L0_1.check_is_spirit_in_team = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.AetherDivideModule
    L2_2 = L2_2.AetherDivideTeamData
    A1_2 = L2_2.CurLineUpData
  end
  L3_2 = A1_2
  L2_2 = A1_2.GetIndexByMemberData
  L4_2 = A0_2
  return L2_2(L3_2, L4_2)
end
L0_1.get_spirit_in_team_index = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.New
  L3_2 = "Ui.Monster.MonsterTipsDialog"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.init
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_use_aether_mode
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.show
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1.show_monster_tips_dialog = L1_1
return L0_1
