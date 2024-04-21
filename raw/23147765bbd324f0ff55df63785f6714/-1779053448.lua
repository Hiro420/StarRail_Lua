local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "FarmUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TeamModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.StageExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HardLevelGroupExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.HardLevelGroup
  L4_2 = L1_2.Level
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 0
  L4_2 = 0
  L5_2 = L2_2.CombatPowerList
  L5_2 = L5_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L2_2.CombatPowerList
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2
    L8_2 = L8_2.ToFloat
    L8_2 = L8_2(L9_2)
    L3_2 = L3_2 + L8_2
  end
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetCurrentTeam
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.GetCombatPower
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.CombatPowerUtils
  L5_2 = L5_2.GetMonsterCombatPowerRatio
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = L3_2 * L5_2
  L6_2 = L4_2 < L6_2
  return L6_2
end
L0_1.is_stage_hard = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MonsterRank
  L1_2 = L1_2.Minion
  if A0_2 == L1_2 then
    L1_2 = 0
    return L1_2
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.MonsterRank
    L1_2 = L1_2.MinionLv2
    if A0_2 == L1_2 then
      L1_2 = 1
      return L1_2
    else
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.GameCore
      L1_2 = L1_2.MonsterRank
      L1_2 = L1_2.Elite
      if A0_2 == L1_2 then
        L1_2 = 2
        return L1_2
      else
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.GameCore
        L1_2 = L1_2.MonsterRank
        L1_2 = L1_2.LittleBoss
        if A0_2 == L1_2 then
          L1_2 = 3
          return L1_2
        else
          L1_2 = CS
          L1_2 = L1_2.RPG
          L1_2 = L1_2.GameCore
          L1_2 = L1_2.MonsterRank
          L1_2 = L1_2.BigBoss
          if A0_2 == L1_2 then
            L1_2 = 4
            return L1_2
          end
        end
      end
    end
  end
  L1_2 = 0
  return L1_2
end
L0_1._rank_to_index = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2.MemberDatas
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.MemberDatas
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L6_2 = A0_2.MemberDatas
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.IsAlive
      if not L6_2 then
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = L1_2
        L8_2 = A0_2.MemberDatas
        L8_2 = L8_2[L5_2]
        L8_2 = L8_2.AvatarData
        L8_2 = L8_2.AvatarName
        L6_2(L7_2, L8_2)
      end
    end
  end
  L2_2 = #L1_2
  if L2_2 == 0 then
    L3_2 = L2_2
    L4_2 = nil
    return L3_2, L4_2
  end
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "UIText_FarmResultPage_Dialog_AvatarDead_%d"
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L2_2 == 1 then
    L4_2 = G
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = L3_2
    L6_2 = L1_2[1]
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  elseif L2_2 == 2 then
    L4_2 = G
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = L3_2
    L6_2 = L1_2[1]
    L7_2 = L1_2[2]
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2
  elseif L2_2 == 3 then
    L4_2 = G
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = L3_2
    L6_2 = L1_2[1]
    L7_2 = L1_2[2]
    L8_2 = L1_2[3]
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L3_2 = L4_2
  end
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L0_1.get_avatar_dead_confirm_text = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_1._show_quick_farm
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L2_2 = G
  L2_2 = L2_2.StoryLineUtils
  L2_2 = L2_2.switch_to_main_line_by_auto_show
  L3_2 = L1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.StoryLineSwitchReason
  L4_2 = L4_2.Other
  L5_2 = 0
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.go_quick_farm = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.FarmUtils
  L1_2 = L1_2.IsCocoon
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.FarmEnemy.FarmCocoonQuickPage"
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.FarmUtils
    L1_2 = L1_2.IsElement
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.UIManager
      L1_2 = L1_2.load_and_async_show
      L2_2 = "Ui.FarmEnemy.FarmElementQuickPage"
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._show_quick_farm = L2_1
return L0_1
