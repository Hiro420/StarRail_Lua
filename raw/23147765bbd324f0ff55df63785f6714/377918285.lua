local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityRankPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityRankPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.SymbolDetail.RewardCollection.MapRewardCollectionDetailItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.SymbolDetail.PuzzleMovie.PuzzleMovieTargetInfoPanel"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.QuestModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MovieRacingModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "MapActivityPuzzleMoviePanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.obj_progress
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.sync_load_prefab
    L3_2 = "UI/Map/Widget/MakeFilmProgressInfo.prefab"
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_makefilm
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2.obj_progress = L1_2
  end
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeFind
  L2_2 = A0_2.obj_progress
  L2_2 = L2_2.transform
  L3_2 = "NormalMode/Title/CompletedMark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal_complete = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.obj_progress
  L3_2 = L3_2.transform
  L4_2 = "NormalMode/Progress01/NumPanel/TextDetail/Num1"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_normal_finish = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.obj_progress
  L3_2 = L3_2.transform
  L4_2 = "NormalMode/Progress01/NumPanel/TextDetail/Num2"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_normal_total = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeFind
  L2_2 = A0_2.obj_progress
  L2_2 = L2_2.transform
  L3_2 = "NormalMode/Progress02"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_boss = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.obj_progress
  L3_2 = L3_2.transform
  L4_2 = "NormalMode/Progress02/NumPanel/TextDetail/Num1"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_boss_finish = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.obj_progress
  L3_2 = L3_2.transform
  L4_2 = "NormalMode/Progress02/NumPanel/TextDetail/Num2"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_boss_total = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeFind
  L2_2 = A0_2.obj_progress
  L2_2 = L2_2.transform
  L3_2 = "NormalMode/RewardListPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal_reward = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.StaticListView
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.obj_progress
  L3_2 = L3_2.transform
  L4_2 = "NormalMode/RewardListPanel/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.normal_reward_list_view = L1_2
  L1_2 = A0_2.normal_reward_list_view
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_normal_reward_list_view_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeFind
  L2_2 = A0_2.obj_progress
  L2_2 = L2_2.transform
  L3_2 = "EndlessMode/Title/CompletedMark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_endless_complete = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeFind
  L2_2 = A0_2.obj_progress
  L2_2 = L2_2.transform
  L3_2 = "EndlessMode/WarningTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_endless_lock = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeFind
  L2_2 = A0_2.obj_progress
  L2_2 = L2_2.transform
  L3_2 = "EndlessMode/RewardListPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_endless_reward = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.StaticListView
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.obj_progress
  L3_2 = L3_2.transform
  L4_2 = "EndlessMode/RewardListPanel/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.endless_reward_list_view = L1_2
  L1_2 = A0_2.endless_reward_list_view
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_endless_reward_list_view_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeFind
  L2_2 = A0_2.obj_progress
  L2_2 = L2_2.transform
  L3_2 = "EndlessMode/TargetList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_target = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Map.RegionalDetail.SymbolDetail.PuzzleMovie.PuzzleMovieTargetInfoPanel"
  L6_2 = "Ui.Map.RegionalDetail.SymbolDetail.PuzzleMovie.PuzzleMovieTargetInfoPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.challenge_targets = L1_2
  L1_2 = A0_2.challenge_targets
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2.node_target
  L1_2(L2_2, L3_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  A0_2.param_data = A1_2
  L2_2 = A0_2.param_data
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.EntranceID
  A0_2.entrance_id = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_progress_raid
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.SpecialMappingInfoExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2.param_data
  L3_2 = L3_2.map_icon_data
  L3_2 = L3_2.MappingInfoRow
  L3_2 = L3_2.ID
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.ParamList
  L3_2 = L3_2[0]
  A0_2._movie_mode_id = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MazePuzzleMovieLevelExcelTable
  L3_2 = L3_2.dataDict
  L4_2 = {}
  A0_2._normal_quest_ids = L4_2
  L4_2 = {}
  A0_2._boss_quest_ids = L4_2
  L4_2 = {}
  A0_2._endless_quest_ids = L4_2
  A0_2._endless_row = nil
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2._movie_mode_id
    if L9_2 == 0 then
      L9_2 = L8_2.MovieMode
      L9_2 = #L9_2
      if L9_2 == 0 then
        L9_2 = 0
        L10_2 = L8_2.QuestList
        L10_2 = L10_2.Length
        L10_2 = L10_2 - 1
        L11_2 = 1
        for L12_2 = L9_2, L10_2, L11_2 do
          L13_2 = table
          L13_2 = L13_2.insert
          L14_2 = A0_2._normal_quest_ids
          L15_2 = L8_2.QuestList
          L15_2 = L15_2[L12_2]
          L13_2(L14_2, L15_2)
        end
      else
        L9_2 = L8_2.MovieMode
        L9_2 = #L9_2
        if L9_2 == 2 then
          L9_2 = 0
          L10_2 = L8_2.QuestList
          L10_2 = L10_2.Length
          L10_2 = L10_2 - 1
          L11_2 = 1
          for L12_2 = L9_2, L10_2, L11_2 do
            L13_2 = table
            L13_2 = L13_2.insert
            L14_2 = A0_2._endless_quest_ids
            L15_2 = L8_2.QuestList
            L15_2 = L15_2[L12_2]
            L13_2(L14_2, L15_2)
            A0_2._endless_row = L8_2
          end
        end
      end
    else
      L9_2 = A0_2._movie_mode_id
      if L9_2 == 1 then
        L9_2 = L8_2.MovieMode
        L9_2 = #L9_2
        if L9_2 == 1 then
          L9_2 = 0
          L10_2 = L8_2.QuestList
          L10_2 = L10_2.Length
          L10_2 = L10_2 - 1
          L11_2 = 1
          for L12_2 = L9_2, L10_2, L11_2 do
            L13_2 = table
            L13_2 = L13_2.insert
            L14_2 = A0_2._normal_quest_ids
            L15_2 = L8_2.QuestList
            L15_2 = L15_2[L12_2]
            L13_2(L14_2, L15_2)
          end
        else
          L9_2 = L8_2.MovieMode
          L9_2 = #L9_2
          if L9_2 == 3 then
            L9_2 = 0
            L10_2 = L8_2.QuestList
            L10_2 = L10_2.Length
            L10_2 = L10_2 - 1
            L11_2 = 1
            for L12_2 = L9_2, L10_2, L11_2 do
              L13_2 = table
              L13_2 = L13_2.insert
              L14_2 = A0_2._endless_quest_ids
              L15_2 = L8_2.QuestList
              L15_2 = L15_2[L12_2]
              L13_2(L14_2, L15_2)
              A0_2._endless_row = L8_2
            end
          else
            L9_2 = L8_2.MovieMode
            L9_2 = #L9_2
            if L9_2 == 4 then
              L9_2 = 0
              L10_2 = L8_2.QuestList
              L10_2 = L10_2.Length
              L10_2 = L10_2 - 1
              L11_2 = 1
              for L12_2 = L9_2, L10_2, L11_2 do
                L13_2 = table
                L13_2 = L13_2.insert
                L14_2 = A0_2._boss_quest_ids
                L15_2 = L8_2.QuestList
                L15_2 = L15_2[L12_2]
                L13_2(L14_2, L15_2)
              end
            end
          end
        end
      end
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._setup_activity_puzzle_movie_view
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._bind_btn_callback
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_game_pad
  L7_2 = A0_2._on_btn_game_pad_click
  L4_2(L5_2, L6_2, L7_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_makefilm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetQuestStatusCount
  L3_2 = A0_2._normal_quest_ids
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.CMOFEAFMGAK
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2.txt_normal_finish
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.txt_normal_total
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._normal_quest_ids
  L4_2 = #L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.node_boss
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._boss_quest_ids
  L4_2 = #L4_2
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetQuestStatusCount
  L4_2 = A0_2._boss_quest_ids
  L5_2 = CS
  L5_2 = L5_2.LEOGBBOPKKO
  L5_2 = L5_2.CMOFEAFMGAK
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2.txt_boss_finish
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.txt_boss_total
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._boss_quest_ids
  L5_2 = #L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.node_normal_complete
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._normal_quest_ids
  L5_2 = #L5_2
  L5_2 = L1_2 == L5_2
  L3_2(L4_2, L5_2)
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.GetQuestStatusCount
  L5_2 = A0_2._endless_quest_ids
  L6_2 = CS
  L6_2 = L6_2.LEOGBBOPKKO
  L6_2 = L6_2.CMOFEAFMGAK
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2.node_endless_complete
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._endless_quest_ids
  L6_2 = #L6_2
  L6_2 = L3_2 == L6_2
  L4_2(L5_2, L6_2)
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.CheckMovieLevelIsLockByPreLevel
  L6_2 = A0_2._endless_row
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.CheckMovieLevelIsLockBySubMission
  L7_2 = A0_2._endless_row
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A0_2.node_endless_lock
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L4_2 or L8_2
  if not L4_2 then
    L8_2 = L5_2
  end
  L6_2(L7_2, L8_2)
  L6_2 = A0_2.challenge_targets
  L7_2 = L6_2
  L6_2 = L6_2.safe_set_active
  L8_2 = not L4_2 and L8_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2.challenge_targets
  L7_2 = L6_2
  L6_2 = L6_2.setup_view
  L8_2 = A0_2._endless_quest_ids
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._show_normal_reward
  L6_2(L7_2)
  L7_2 = A0_2
  L6_2 = A0_2._show_endless_reward
  L6_2(L7_2)
end
L2_1._setup_activity_puzzle_movie_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = {}
  L2_2 = {}
  A0_2._normal_reward_ids = L2_2
  L2_2 = ipairs
  L3_2 = A0_2._normal_quest_ids
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L0_1
    L8_2 = L7_2
    L7_2 = L7_2.TryGetQuestData
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2.Status
    L9_2 = CS
    L9_2 = L9_2.LEOGBBOPKKO
    L9_2 = L9_2.CMOFEAFMGAK
    if L8_2 ~= L9_2 then
      L8_2 = G
      L8_2 = L8_2.RewardUtils
      L8_2 = L8_2.CreateRewardItemTableSorted
      L9_2 = L7_2.RewardID
      L8_2 = L8_2(L9_2)
      L9_2 = ipairs
      L10_2 = L8_2
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      for L12_2, L13_2 in L9_2, L10_2, L11_2 do
        L14_2 = L13_2.ItemID
        L14_2 = L1_2[L14_2]
        if L14_2 == nil then
          L14_2 = L13_2.ItemID
          L1_2[L14_2] = true
          L14_2 = table
          L14_2 = L14_2.insert
          L15_2 = A0_2._normal_reward_ids
          L16_2 = L13_2.ItemID
          L14_2(L15_2, L16_2)
        end
      end
    end
  end
  L2_2 = ipairs
  L3_2 = A0_2._boss_quest_ids
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L0_1
    L8_2 = L7_2
    L7_2 = L7_2.TryGetQuestData
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2.Status
    L9_2 = CS
    L9_2 = L9_2.LEOGBBOPKKO
    L9_2 = L9_2.CMOFEAFMGAK
    if L8_2 ~= L9_2 then
      L8_2 = G
      L8_2 = L8_2.RewardUtils
      L8_2 = L8_2.CreateRewardItemTableSorted
      L9_2 = L7_2.RewardID
      L8_2 = L8_2(L9_2)
      L9_2 = ipairs
      L10_2 = L8_2
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      for L12_2, L13_2 in L9_2, L10_2, L11_2 do
        L14_2 = L13_2.ItemID
        L14_2 = L1_2[L14_2]
        if L14_2 == nil then
          L14_2 = L13_2.ItemID
          L1_2[L14_2] = true
          L14_2 = table
          L14_2 = L14_2.insert
          L15_2 = A0_2._normal_reward_ids
          L16_2 = L13_2.ItemID
          L14_2(L15_2, L16_2)
        end
      end
    end
  end
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.sort_reward_item
  L3_2 = A0_2._normal_reward_ids
  L2_2(L3_2)
  L2_2 = A0_2.node_normal_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._normal_reward_ids
  L4_2 = #L4_2
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.normal_reward_list_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._normal_reward_ids
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2.normal_reward_list_view
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L2_1._show_normal_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.normal_reward_list_view
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  if L1_2 == false then
    return
  end
  L1_2 = A0_2._normal_reward_ids
  L1_2 = #L1_2
  if 0 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_active
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = {}
      L2_2 = A0_2._normal_reward_ids
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L2_1._on_btn_game_pad_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = {}
  L2_2 = {}
  A0_2._endless_reward_ids = L2_2
  L2_2 = ipairs
  L3_2 = A0_2._endless_quest_ids
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L0_1
    L8_2 = L7_2
    L7_2 = L7_2.TryGetQuestData
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2.Status
    L9_2 = CS
    L9_2 = L9_2.LEOGBBOPKKO
    L9_2 = L9_2.CMOFEAFMGAK
    if L8_2 ~= L9_2 then
      L8_2 = G
      L8_2 = L8_2.RewardUtils
      L8_2 = L8_2.CreateRewardItemTableSorted
      L9_2 = L7_2.RewardID
      L8_2 = L8_2(L9_2)
      L9_2 = ipairs
      L10_2 = L8_2
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      for L12_2, L13_2 in L9_2, L10_2, L11_2 do
        L14_2 = L13_2.ItemID
        L14_2 = L1_2[L14_2]
        if L14_2 == nil then
          L14_2 = L13_2.ItemID
          L1_2[L14_2] = true
          L14_2 = table
          L14_2 = L14_2.insert
          L15_2 = A0_2._endless_reward_ids
          L16_2 = L13_2.ItemID
          L14_2(L15_2, L16_2)
        end
      end
    end
  end
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.sort_reward_item
  L3_2 = A0_2._endless_reward_ids
  L2_2(L3_2)
  L2_2 = A0_2.node_endless_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._endless_reward_ids
  L4_2 = #L4_2
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.endless_reward_list_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._endless_reward_ids
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2.endless_reward_list_view
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L2_1._show_endless_reward = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._normal_reward_ids
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count_display
  L8_2 = false
  L6_2(L7_2, L8_2)
  return L3_2
end
L2_1._on_normal_reward_list_view_changed = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._endless_reward_ids
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count_display
  L8_2 = false
  L6_2(L7_2, L8_2)
  return L3_2
end
L2_1._on_endless_reward_list_view_changed = L3_1
return L2_1
