local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeBuff.EnvBuffTabItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubEnvBuffTabItem"
L2_1 = G
L2_1 = L2_1.EnvBuffTabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._level_instance = A1_2
end
L0_1.setup_instance = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L0_1.super
  L1_2 = L1_2._init_env_buff_data
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_fake_adv_modifier_instance
  L3_2 = A0_2._level_instance
  L3_2 = L3_2.Row
  L3_2 = L3_2.ChallengeBuff
  L4_2 = 1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2.env_buff_data_list
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._level_instance
  if L2_2 ~= nil then
    L2_2 = A0_2._level_instance
    L2_2 = L2_2.BattleRecord
    if L2_2 ~= nil then
      L2_2 = 0
      L3_2 = A0_2._level_instance
      L3_2 = L3_2.BattleRecord
      L3_2 = L3_2.CurrentStageIndex
      L3_2 = L3_2 - 1
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.GameCore
        L6_2 = L6_2.BoxingClubStageConfigExcelTable
        L6_2 = L6_2.GetData
        L7_2 = A0_2._level_instance
        L7_2 = L7_2.BattleRecord
        L7_2 = L7_2.Row
        L7_2 = L7_2.EventIDList
        L7_2 = L7_2[L5_2]
        L6_2 = L6_2(L7_2)
        if L6_2 ~= nil then
          L7_2 = L6_2.BuffID
          if L7_2 ~= 0 then
            L9_2 = A0_2
            L8_2 = A0_2._create_fake_adv_modifier_instance
            L10_2 = L7_2
            L11_2 = 1
            L8_2 = L8_2(L9_2, L10_2, L11_2)
            if L8_2 ~= nil then
              L9_2 = table
              L9_2 = L9_2.insert
              L10_2 = A0_2.env_buff_data_list
              L11_2 = L8_2
              L9_2(L10_2, L11_2)
            end
          end
        end
      end
    end
  end
end
L0_1._init_env_buff_data = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_GamePhaseManager
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentPhase
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.GetMainWorld
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2.EntityManagerRef
    L6_2 = L4_2
    L5_2 = L4_2.GetLightTeamEntity
    L5_2 = L5_2(L6_2)
    L7_2 = L5_2
    L6_2 = L5_2.GetComponent
    L8_2 = typeof
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.AdventureAbilityComponent
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L8_2(L9_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L7_2 = G
    L7_2 = L7_2.BuffUtils
    L7_2 = L7_2.GetMazeBuffData
    L8_2 = A1_2
    L9_2 = A2_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2.ModifierName
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.AdvAbilityJsonTable
    L9_2 = L9_2.GetAdventureModifierConfig
    L10_2 = L7_2.ModifierName
    L9_2 = L9_2(L10_2)
    L10_2 = L6_2
    L11_2 = nil
    L12_2 = A1_2
    L13_2 = CS
    L13_2 = L13_2.RPG
    L13_2 = L13_2.GameCore
    L13_2 = L13_2.AdventureModifierInitParams
    L13_2 = L13_2.s_Empty
    L14_2 = nil
    L15_2 = CS
    L15_2 = L15_2.RPG
    L15_2 = L15_2.GameCore
    L15_2 = L15_2.AdventureModifierInstance
    L16_2 = L8_2
    L17_2 = L9_2
    L18_2 = L10_2
    L19_2 = L11_2
    L20_2 = L12_2
    L21_2 = L13_2
    L22_2 = L14_2
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    return L15_2
  end
end
L0_1._create_fake_adv_modifier_instance = L1_1
function L1_1(A0_2, A1_2)
  A0_2._title_id = A1_2
end
L0_1.setup_title = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.super
  L1_2 = L1_2._on_added
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2._title_id
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.tab_btn_selected_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._title_id
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.tab_btn_normal_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._title_id
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_added = L1_1
return L0_1
