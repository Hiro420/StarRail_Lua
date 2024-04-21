local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.BaseVisitor"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeTarget.NpcMonsterInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritUtilities.AetherTeamUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherDivideMazeVisitor"
L2_1 = G
L2_1 = L2_1.BaseVisitor
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.IsInstanceOf
  L3_2 = A1_2
  L4_2 = G
  L4_2 = L4_2.NpcMonsterInfoPanel
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A1_2
    L4_2 = L2_2
    L3_2 = L2_2.register_show_monster_info_callback
    L5_2 = A0_2._show_monster_tips_dialog
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = L2_2
    L3_2 = L2_2.set_weak_point_dict_provider
    L5_2 = A0_2._get_property_dict_by_runtime_id
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = L2_2
    L3_2 = L2_2.set_show_high_level_warning_callback
    L5_2 = A0_2._is_show_high_level_warning
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L2_2 = G
    L2_2 = L2_2.IsInstanceOf
    L3_2 = A1_2
    L4_2 = G
    L4_2 = L4_2.AdventureMissionListPanel
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = A1_2
      L4_2 = L2_2
      L3_2 = L2_2.customize_show_navi_handler
      L5_2 = A0_2._is_show_navi
      L6_2 = A0_2
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1.visit = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetMainAetherSpiritTypeDictByNpcMonsterRuntimeID
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1._get_property_dict_by_runtime_id = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2
  L2_2 = A1_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.NPCComponent
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.GetStageID
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.create_lua_table_from_cs_list
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.GetDisplayMonsterDatasByStageID
  L7_2 = L3_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = #L4_2
  if L5_2 == 0 then
    return
  end
  L5_2 = G
  L5_2 = L5_2.AetherTeamUtils
  L5_2 = L5_2.show_monster_tips_dialog
  L6_2 = L4_2
  L5_2(L6_2)
end
L0_1._show_monster_tips_dialog = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L3_2 = A1_2
  L2_2 = A1_2.GetStageID
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetMonsterAverageLevelByStageID
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L1_1.AetherDivideTeamData
  L4_2 = L4_2.CurLineUpData
  L5_2 = L4_2
  L4_2 = L4_2.GetAverageLevel
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2 + 2
  L5_2 = L3_2 >= L5_2
  return L5_2
end
L0_1._is_show_high_level_warning = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetCurAetherDivideMainMissionData
  L2_2 = L2_2(L3_2)
  if A1_2 ~= L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = L1_1.GymData
  L4_2 = L3_2
  L3_2 = L3_2.GetRelatedGymDataItemByMission
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2 ~= nil
  return L4_2
end
L0_1._is_show_navi = L2_1
return L0_1
