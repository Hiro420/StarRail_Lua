local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "ActivityEvolveBuildUtils"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.UIColorUtils
L1_1 = L1_1.GetColor
L2_1 = "#F3A72A"
L1_1 = L1_1(L2_1)
L0_1.WEAPON_BG_COLOR = L1_1
L1_1 = G
L1_1 = L1_1.UIColorUtils
L1_1 = L1_1.GetColor
L2_1 = "#0AB1DD"
L1_1 = L1_1(L2_1)
L0_1.ACCESSORY_BG_COLOR = L1_1
L1_1 = G
L1_1 = L1_1.UIColorUtils
L1_1 = L1_1.GetColor
L2_1 = "#F2D394"
L1_1 = L1_1(L2_1)
L0_1.WEAPON_TEXT_BG_COLOR = L1_1
L1_1 = G
L1_1 = L1_1.UIColorUtils
L1_1 = L1_1.GetColor
L2_1 = "#0AB1DD"
L1_1 = L1_1(L2_1)
L0_1.ACCESSORY_TEXT_BG_COLOR = L1_1
L0_1.ROOKIE_PERIOD_ID = 414000
L0_1.ADD_STAGE_PERIOD_NUM = 4
L1_1 = {}
L1_1[0] = 414000
L1_1[1] = 414001
L0_1.PERIOD_ID = L1_1
L1_1 = {}
L1_1.Doing = 1
L1_1.PreShow = 2
L1_1.Finish = 3
L0_1.ProgressState = L1_1
L1_1 = {}
L1_1.Doing = 1
L1_1.NotStart = 2
L1_1.Finish = 3
L0_1.PeriodState = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.BattleInstanceRef
    if L1_2 ~= nil then
      L1_2 = L0_2.BattleInstanceRef
      L1_2 = L1_2.TurnBasedGameModeRef
      L1_2 = L1_2.EvolveBuildGearManager
      return L1_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_evolve_build_gear_manager = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.get_evolve_build_gear_manager
  L1_2 = L1_2()
  L3_2 = L1_2
  L2_2 = L1_2.TryGetGearLevel
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_2.PreAddGearID
  if L3_2 == A0_2 then
    L3_2 = 1
    if L3_2 then
      goto lbl_13
    end
  end
  L3_2 = 0
  ::lbl_13::
  L2_2 = L2_2 + L3_2
  return L2_2
end
L0_1.get_gear_show_level = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1.get_evolve_build_gear_manager
  L1_2 = L1_2()
  if L1_2 == nil then
    L2_2 = A0_2.Level
    return L2_2
  end
  L2_2 = A0_2.GearID
  L4_2 = L1_2
  L3_2 = L1_2.TryGetGearLevel
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L1_2.PreAddGearID
  if L4_2 == L2_2 then
    L4_2 = 1
    if L4_2 then
      goto lbl_18
    end
  end
  L4_2 = 0
  ::lbl_18::
  L3_2 = L3_2 + L4_2
  return L3_2
end
L0_1.get_gear_show_level_by_gear_config = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.get_evolve_build_gear_manager
  L1_2 = L1_2()
  if L1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_2.PreAddGearID
  L2_2 = A0_2 == L2_2
  return L2_2
end
L0_1.is_pre_add_new_gear = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.GameCore
  L0_2 = L0_2.FixPoint
  L0_2 = L0_2.RoundToInt
  L1_2 = L0_1.get_evolve_build_gear_manager
  L1_2 = L1_2()
  L2_2 = L1_2
  L1_2 = L1_2.GetProperty
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.EvolveBuildPropertyType
  L3_2 = L3_2.WaveCountForPeriod
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  return L0_2(L1_2, L2_2, L3_2)
end
L0_1.get_cur_period_count = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.GameCore
  L0_2 = L0_2.FixPoint
  L0_2 = L0_2.RoundToInt
  L1_2 = L0_1.get_evolve_build_gear_manager
  L1_2 = L1_2()
  L2_2 = L1_2
  L1_2 = L1_2.GetProperty
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.EvolveBuildPropertyType
  L3_2 = L3_2.MaxWaveCountForPeriod
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  return L0_2(L1_2, L2_2, L3_2)
end
L0_1.get_max_period_count = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2.BattleInstanceRef
  L0_2 = L0_2.GameWorldRef
  L0_2 = L0_2.EntityManagerRef
  L0_2 = L0_2.LevelEntity
  L2_2 = L0_2
  L1_2 = L0_2.GetComponent
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.LevelDataComponent
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.FixPoint
  L2_2 = L2_2.FloorToInt
  L3_2 = L1_2.BattleScoringTotal
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.EvolveBuildModule
  L3_2 = L3_2.LevelInstance
  if L3_2 then
    L4_2 = L3_2.CurPeriod
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.EvolveBuildStagePeriodExcelTable
    L5_2 = L5_2.GetData
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = L5_2.PeriodScore
    L6_2 = L2_2 / L6_2
    L7_2 = L5_2.EmotionList
    L7_2 = L7_2.Length
    L7_2 = L7_2 - 1
    L8_2 = 0
    L9_2 = -1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = L5_2.EmotionList
      L11_2 = L11_2[L10_2]
      if L6_2 >= L11_2 then
        L11_2 = CS
        L11_2 = L11_2.RPG
        L11_2 = L11_2.Client
        L11_2 = L11_2.EvolveBuildUtils
        L11_2 = L11_2.GetRaccoonStateType
        L12_2 = L10_2 + 1
        L11_2 = L11_2(L12_2)
        L12_2 = CS
        L12_2 = L12_2.RPG
        L12_2 = L12_2.GameCore
        L12_2 = L12_2.EvolveBuildRaccoonTalkExcelTable
        L12_2 = L12_2.GetData
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        if L12_2 then
          L13_2 = L12_2.TextmapList
          L14_2 = math
          L14_2 = L14_2.random
          L15_2 = 0
          L16_2 = L12_2.TextmapList
          L16_2 = L16_2.Length
          L16_2 = L16_2 - 1
          L14_2 = L14_2(L15_2, L16_2)
          L13_2 = L13_2[L14_2]
          L14_2 = L12_2.RaccoonPicPath
          return L13_2, L14_2
        else
          L13_2 = G
          L13_2 = L13_2.SuperDebug
          L13_2 = L13_2.LogFormat
          L14_2 = "[hwx] "
          L15_2 = tostring
          L16_2 = L11_2
          L15_2 = L15_2(L16_2)
          L16_2 = "\233\133\141\231\189\174\232\161\140\228\184\141\229\173\152\229\156\168"
          L14_2 = L14_2 .. L15_2 .. L16_2
          L13_2(L14_2)
        end
      end
    end
  else
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogFormat
    L5_2 = "[hwx] \232\142\183\229\143\150LevelInstance\229\133\179\229\141\161\230\149\176\230\141\174\229\164\177\232\180\165"
    L4_2(L5_2)
  end
end
L0_1.get_cur_stage_raccoon_data = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.EvolveGearType
  L1_2 = L1_2.Tool
  if A0_2 == L1_2 then
    L1_2 = "SpriteOutput/UI/Quest/EvolveBuild/EvolveBuildSuperWeaponToastEffectBg1.png"
    return L1_2
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.EvolveGearType
    L1_2 = L1_2.Plugin
    if A0_2 == L1_2 then
      L1_2 = "SpriteOutput/UI/Quest/EvolveBuild/EvolveBuildSuperWeaponToastEffectBg2.png"
      return L1_2
    else
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.GameCore
      L1_2 = L1_2.EvolveGearType
      L1_2 = L1_2.Plugin
      if A0_2 == L1_2 then
        L1_2 = "SpriteOutput/UI/Quest/EvolveBuild/EvolveBuildSuperWeaponToastEffectBg3.png"
        return L1_2
      else
        L1_2 = "SpriteOutput/UI/Quest/EvolveBuild/EvolveBuildSuperWeaponToastEffectBg4.png"
        return L1_2
      end
    end
  end
end
L0_1.get_reward_effect = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.EvolveBuildModule
  L0_2 = L0_2.LevelInstance
  L0_2 = L0_2.LevelID
  L1_2 = G
  L1_2 = L1_2.ActivityEvolveBuildUtils
  L1_2 = L1_2.ROOKIE_PERIOD_ID
  L0_2 = L0_2 == L1_2
  return L0_2
end
L0_1.is_in_rookie_period_stage = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.EvolveBuildModule
  L1_2 = L1_2.LevelInstance
  L1_2 = L1_2.LevelID
  L2_2 = G
  L2_2 = L2_2.ActivityEvolveBuildUtils
  L2_2 = L2_2.PERIOD_ID
  L2_2 = L2_2[A0_2]
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1.is_in_specific_period_stage = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EvolveGearTypeConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = L2_2.FontColor
  L3_2 = L3_2(L4_2)
  A0_2.color = L3_2
end
L0_1.set_gear_name_color = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.UnlockQuest
  L1_2 = L1_2 == 0
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.QuestModule
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = A0_2.UnlockQuest
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_2 or L3_2
  if not L1_2 then
    L3_2 = L2_2 ~= nil
  end
  return L3_2
end
L0_1.is_gear_collection_unlock = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2 == 3106001 or A0_2 == 3106901
  return L1_2
end
L0_1.is_random_damage_gear = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = false
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.EvolveBuildUtils
  L2_2 = L2_2.GetGearForgeID
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L0_1.get_evolve_build_gear_manager
    L3_2 = L3_2()
    if L3_2 == nil then
      L4_2 = false
      return L4_2
    end
    L5_2 = L3_2
    L4_2 = L3_2.HasGear
    L6_2 = L2_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.ActivityEvolveGearForgeMaterialExcelTable
      L4_2 = L4_2.GetData
      L5_2 = L2_2
      L4_2 = L4_2(L5_2)
      L5_2 = 0
      L6_2 = L4_2.CostGearList
      L6_2 = L6_2.Length
      L6_2 = L6_2 - 1
      L7_2 = 1
      for L8_2 = L5_2, L6_2, L7_2 do
        L9_2 = L4_2.CostGearList
        L9_2 = L9_2[L8_2]
        if L9_2 == A0_2 then
          L1_2 = true
          break
        end
      end
    end
  end
  return L1_2
end
L0_1.is_cost_to_forge = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = L0_1.is_random_damage_gear
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L6_2 = A3_2
  L5_2 = A3_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L6_2 = A1_2
  L5_2 = A1_2.safe_set_active
  L7_2 = not L4_2
  L5_2(L6_2, L7_2)
  if not L4_2 then
    L6_2 = A1_2
    L5_2 = A1_2.setup_view
    L7_2 = A2_2
    L5_2(L6_2, L7_2)
  end
end
L0_1.set_damage_type_view = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2 or L1_2
  if L0_2 then
    L2_2 = L0_2
    L1_2 = L0_2.GetAdventureAudioManager
    L1_2 = L1_2(L2_2)
  end
  if L1_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_AudioManager
    L2_2 = L2_2.AudioConfig
    L2_2 = L2_2.MenuBGMStates
    L3_2 = L2_2
    L2_2 = L2_2.get_Item
    L4_2 = "StateEvolveBuild"
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = L1_2
    L3_2 = L1_2.SwitchUIMenuBGM
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.start_ui_bgm = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2 or L1_2
  if L0_2 then
    L2_2 = L0_2
    L1_2 = L0_2.GetAdventureAudioManager
    L1_2 = L1_2(L2_2)
  end
  if L1_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_AudioManager
    L2_2 = L2_2.AudioConfig
    L2_2 = L2_2.MenuBGMStates
    L3_2 = L2_2
    L2_2 = L2_2.get_Item
    L4_2 = "StateEvolveBuild"
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = L1_2
    L3_2 = L1_2.StopUIMenuBGM
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.stop_ui_bgm = L1_1
return L0_1
