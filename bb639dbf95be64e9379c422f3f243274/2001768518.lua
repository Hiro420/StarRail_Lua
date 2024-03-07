local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.PauseDialogBuffRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogBuffRowBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.UITextUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.RaidUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.UIColorUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.RoleTrial.TrialIntroductionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.RoleTrial.TrialIntroductionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityChallengeMissionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PauseStageTabPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_GamePhaseManager
L2_1 = "UIText_PauseDialog_TitleType_1"
L3_1 = "UIText_PauseDialog_DefaultChallengeTarget"
L4_1 = "UIText_PauseDialog_CocoonWaveChallengeTarget"
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._data = A3_2
  A0_2._selected_object = nil
  L4_2 = {}
  A0_2._env_buff_row_list = L4_2
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._selected_object
  if L1_2 then
    L1_2 = A0_2._selected_object
    return L1_2
  end
  L1_2 = A0_2._data
  L1_2 = L1_2._mode
  L2_2 = CS
  L2_2 = L2_2.NNHMNDEADHC
  L2_2 = L2_2.CAEMGBINHMM
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.get_first_drop_selected_object
    return L1_2(L2_2)
  end
  L1_2 = A0_2._data
  L1_2 = L1_2._mode
  L2_2 = CS
  L2_2 = L2_2.NNHMNDEADHC
  L2_2 = L2_2.EODKBOHELPJ
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.get_first_rogue_selected_object
    return L1_2(L2_2)
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_drops
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.button
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_drop_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rogue_buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_rogue_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_drops
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_scroll_drops
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_dialog_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_challenge_target
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_mechanism
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_drops
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_raid_targets_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_quest_challenge
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_env_buff
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_condition
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_boss_feature_info
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rogue_buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rogue_nous_boss_bp_buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_empty_tip
  L1_2(L2_2)
end
L0_1._on_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.CS
    L1_2 = L1_2.EventSystem
    L1_2 = L1_2.current
    L1_2 = L1_2.currentSelectedGameObject
    A0_2._selected_object = L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.text_dialog_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_challenge_dialog_title
  L1_2(L2_2)
end
L0_1._setup_dialog_title = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._data
  L1_2 = L1_2._mode
  L2_2 = CS
  L2_2 = L2_2.NNHMNDEADHC
  L2_2 = L2_2.BOAMFLLMJIN
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_level_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChallengeModule
  L1_2 = L1_2.CurrentChallengeInstance
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.ChallengeDataRef
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_level_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.Name
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TeamModule
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentTeam
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.LineupType
  L5_2 = CS
  L5_2 = L5_2.DEAEDMGDDHH
  L5_2 = L5_2.GIKNECLHJND
  L4_2 = L4_2 == L5_2
  if L4_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_level_subtitle
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "ChallengeMaze_Toast_1"
    L5_2(L6_2, L7_2)
  else
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_level_subtitle
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "ChallengeMaze_Toast_2"
    L5_2(L6_2, L7_2)
  end
  L5_2 = L1_2.GroupType
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.ChallengeGroupType
  L6_2 = L6_2.Story
  if L5_2 == L6_2 then
    L6_2 = A0_2
    L5_2 = A0_2._setup_challenge_story_point_panel
    L5_2(L6_2)
  end
end
L0_1._setup_challenge_dialog_title = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_point_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChallengeModule
  L1_2 = L1_2.CurrentChallengeInstance
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.BattleInstanceRef
  L2_2 = L2_2.GameWorldRef
  L2_2 = L2_2.EntityManagerRef
  L2_2 = L2_2.LevelEntity
  L4_2 = L2_2
  L3_2 = L2_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.LevelDataComponent
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.FixPoint
  L4_2 = L4_2.FloorToInt
  L5_2 = L3_2.BattleScoringTotal
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_ModuleManager
  L5_2 = L5_2.TeamModule
  L6_2 = L5_2
  L5_2 = L5_2.GetCurrentTeam
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.LineupType
  L7_2 = CS
  L7_2 = L7_2.DEAEDMGDDHH
  L7_2 = L7_2.GIKNECLHJND
  L6_2 = L6_2 == L7_2
  if L6_2 then
    L7_2 = A0_2._binder
    L7_2 = L7_2.txt_total_first
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetText
    L9_2 = L4_2
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.txt_total_second
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetText
    L9_2 = "/"
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.txt_total_point
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetText
    L9_2 = L4_2
    L7_2(L8_2, L9_2)
  else
    L7_2 = A0_2._binder
    L7_2 = L7_2.txt_total_first
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetText
    L9_2 = L1_2.ScoreFirst
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.txt_total_second
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetText
    L9_2 = math
    L9_2 = L9_2.max
    L10_2 = L1_2.ScoreFirst
    L10_2 = L4_2 - L10_2
    L11_2 = 0
    L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.txt_total_point
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetText
    L9_2 = L4_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._setup_challenge_story_point_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2._data
  L1_2 = L1_2._mode
  L2_2 = CS
  L2_2 = L2_2.NNHMNDEADHC
  L2_2 = L2_2.CAEMGBINHMM
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_drops
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.CurrentBattleEventID
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_drops
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.PlaneEventExcelTable
  L1_2 = L1_2.GetData
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.AdventureModule
  L2_2 = L2_2.CurrentBattleEventID
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.IsUseMonsterDrop
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_drops
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = {}
  A0_2._data_drops = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GamePlayStatic
  L2_2 = L2_2.GetMonsterDropRewardData
  L2_2 = L2_2()
  if L2_2 ~= nil then
    L3_2 = L2_2.Count
    L4_2 = 0
    L5_2 = 0
    L6_2 = L3_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = L2_2[L8_2]
      L10_2 = {}
      L11_2 = L9_2.ItemID
      L10_2.item_id = L11_2
      L11_2 = L9_2.Count
      L10_2.item_count = L11_2
      L11_2 = L10_2.item_id
      if L4_2 ~= L11_2 then
        L11_2 = table
        L11_2 = L11_2.insert
        L12_2 = A0_2._data_drops
        L13_2 = A0_2._data_drops
        L13_2 = #L13_2
        L13_2 = L13_2 + 1
        L14_2 = L10_2
        L11_2(L12_2, L13_2, L14_2)
      else
        L11_2 = A0_2._data_drops
        L12_2 = A0_2._data_drops
        L12_2 = #L12_2
        L11_2 = L11_2[L12_2]
        L12_2 = L11_2.item_count
        L13_2 = L10_2.item_count
        L12_2 = L12_2 + L13_2
        L11_2.item_count = L12_2
      end
      L4_2 = L10_2.item_id
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_drops
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._data_drops
  L5_2 = #L5_2
  L5_2 = 0 < L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_drops
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._data_drops
  L5_2 = #L5_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_drops
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
end
L0_1._setup_drops = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._data_drops
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  if L3_2 == nil then
    L4_2 = nil
    return L4_2
  end
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLite
    L9_2 = G
    L9_2 = L9_2.RewardItemIconLiteBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  L7_2 = L5_2
  L6_2 = L5_2.setup_view
  L8_2 = L3_2.item_id
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.set_count
  L8_2 = L3_2.item_count
  L6_2(L7_2, L8_2)
  return L4_2
end
L0_1._on_scroll_drops = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.get_battle_stage_type
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StageType
  L2_2 = L2_2.RogueEndlessActivity
  L2_2 = L1_2 == L2_2
  return L2_2
end
L0_1._is_in_rogue_endless = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.get_battle_stage_type
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StageType
  L2_2 = L2_2.BattleCollege
  L2_2 = L1_2 == L2_2
  return L2_2
end
L0_1._is_in_battle_college = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.get_battle_stage_type
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StageType
  L2_2 = L2_2.StrongChallengeActivity
  L2_2 = L1_2 == L2_2
  return L2_2
end
L0_1._is_in_strong_challenge = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._data
  L1_2 = L1_2._mode
  L2_2 = CS
  L2_2 = L2_2.NNHMNDEADHC
  L2_2 = L2_2.HPBKOJIFKAI
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_challenge_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_challenge_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.RaidModule
    L2_2 = L2_2.CurrentRaidConfig
    L4_2 = A0_2
    L3_2 = A0_2._setup_quest_challenge_desc
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._setup_quest_challenge_info
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.FightActivityUtils
  L2_2 = L2_2.IsInFightActivityBattle
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_label
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.FightActivityModule
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_challenge_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_raid_name
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.BattleTitle
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_challenge_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.BattleTips
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_fight_activity_star
    L4_2 = L2_2.BattleLevel
    L3_2 = L3_2[L4_2]
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_label
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_quest_challenge = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_challenge_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.BuffDesc
  L5_2 = G
  L5_2 = L5_2.UITextUtils
  L5_2 = L5_2.GetSkillParams
  L6_2 = A1_2.ParamList
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_raid_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.RaidName
  L2_2(L3_2, L4_2)
end
L0_1._setup_quest_challenge_desc = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A1_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = "#ffffff"
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ChallengeActivityRaidConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2.RaidID
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.RaidUtils
  L4_2 = L4_2.get_scoring_id_list
  L5_2 = L3_2.ScoringGroupID
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.bonus_list
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = 1
  L6_2 = #L4_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2._binder
    L9_2 = L9_2.bonus_list
    L10_2 = L9_2
    L9_2 = L9_2.get_panel_by_index
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    L11_2 = L9_2
    L10_2 = L9_2.set_color
    L12_2 = L2_2
    L10_2(L11_2, L12_2)
  end
end
L0_1._setup_quest_challenge_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.target_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_targets
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._data
  L1_2 = L1_2._mode
  L2_2 = CS
  L2_2 = L2_2.NNHMNDEADHC
  L2_2 = L2_2.BOAMFLLMJIN
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.target_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_raid_targets_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.win_condition_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lose_condition_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_condition = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mechanism_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._show_mechanism_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._should_show_default_challenge
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mission_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._prepare_target_data
  L2_2, L3_2 = L2_2(L3_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_challenge_target
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._setup_challenge_target = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._data
  L1_2 = L1_2._mode
  L2_2 = CS
  L2_2 = L2_2.NNHMNDEADHC
  L2_2 = L2_2.HPBKOJIFKAI
  if L1_2 == L2_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._data
  L1_2 = L1_2._mode
  L2_2 = CS
  L2_2 = L2_2.NNHMNDEADHC
  L2_2 = L2_2.BOAMFLLMJIN
  if L1_2 == L2_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RaidModule
  L1_2 = L1_2.IsInTreasureChallenge
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.RaidModule
    L1_2 = L1_2.CurrentTreasureChallengeSnapShot
    L1_2 = L1_2.Row
    if L1_2 then
      L2_2 = 0
      L3_2 = L1_2.RaidTargetID
      L3_2 = L3_2.Length
      L3_2 = L3_2 - 1
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.GameCore
        L6_2 = L6_2.RaidTargetConfigExcelTable
        L6_2 = L6_2.GetData
        L7_2 = L1_2.RaidTargetID
        L7_2 = L7_2[L5_2]
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L7_2 = L6_2.IsInBattle
          if L7_2 then
            L7_2 = false
            return L7_2
          end
        end
      end
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.BattleInstanceRef
  L1_2 = L1_2.GameWorldRef
  L1_2 = L1_2.EntityManagerRef
  L1_2 = L1_2.LevelEntity
  L3_2 = L1_2
  L2_2 = L1_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.LevelDataComponent
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = L2_2.BattleTargetList
  L3_2 = L3_2.Count
  L3_2 = 0 < L3_2
  L4_2 = L2_2.BattleConditionList
  L4_2 = L4_2.Count
  L4_2 = 0 < L4_2
  L5_2 = not L3_2 and L5_2
  return L5_2
end
L0_1._should_show_default_challenge = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2._mode
  L2_2 = CS
  L2_2 = L2_2.NNHMNDEADHC
  L2_2 = L2_2.BOAMFLLMJIN
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._prepare_challenge_target_data
    return L1_2(L2_2)
  else
    L1_2 = A0_2._data
    L1_2 = L1_2._mode
    L2_2 = CS
    L2_2 = L2_2.NNHMNDEADHC
    L2_2 = L2_2.FADKCMHPFNJ
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._prepare_cocoon_target_data
      return L1_2(L2_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._is_in_battle_college
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2._prepare_battle_college_target_data
        return L1_2(L2_2)
      else
        L2_2 = A0_2
        L1_2 = A0_2._prepare_default_target_data
        return L1_2(L2_2)
      end
    end
  end
end
L0_1._prepare_target_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = {}
  L2_2 = false
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.ChallengeModule
  L3_2 = L3_2.CurrentChallengeInstance
  if L3_2 == nil then
    return
  end
  L4_2 = L3_2.ChallengeDataRef
  L6_2 = L3_2
  L5_2 = L3_2.RefreshChallengeTarget
  L5_2(L6_2)
  L5_2 = L3_2.GroupType
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.ChallengeGroupType
  L6_2 = L6_2.Story
  if L5_2 == L6_2 then
    L2_2 = false
    L5_2 = L4_2.StoryExtraInfoRow
    L5_2 = L5_2.ClearScore
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.GlobalVars
    L6_2 = L6_2.s_GamePhaseManager
    L7_2 = L6_2
    L6_2 = L6_2.GetCurrentPhase
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2.BattleInstanceRef
    L6_2 = L6_2.GameWorldRef
    L6_2 = L6_2.EntityManagerRef
    L6_2 = L6_2.LevelEntity
    L8_2 = L6_2
    L7_2 = L6_2.GetComponent
    L9_2 = typeof
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.LevelDataComponent
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.FixPoint
    L8_2 = L8_2.FloorToInt
    L9_2 = L7_2.BattleScoringTotal
    L8_2 = L8_2(L9_2)
    L9_2 = L4_2.Score
    L10_2 = math
    L10_2 = L10_2.max
    L11_2 = L8_2
    L12_2 = L3_2.Score
    L13_2 = L9_2
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L8_2 = L10_2
    L10_2 = A0_2._binder
    L10_2 = L10_2.node_clear_target
    L11_2 = L10_2
    L10_2 = L10_2.SafeSetActive
    L12_2 = true
    L10_2(L11_2, L12_2)
    L10_2 = A0_2._binder
    L10_2 = L10_2.txt_clear_target_title
    L11_2 = L10_2
    L10_2 = L10_2.SafeSetTextID
    L12_2 = "UIText_ChallengeStory_BattleTarget_Clear"
    L10_2(L11_2, L12_2)
    L10_2 = A0_2._binder
    L10_2 = L10_2.txt_challenge_target_title
    L11_2 = L10_2
    L10_2 = L10_2.SafeSetTextID
    L12_2 = "UIText_ChallengeStory_BattleTarget_Star"
    L10_2(L11_2, L12_2)
    L10_2 = A0_2._binder
    L10_2 = L10_2.clear_target_panel
    L11_2 = L10_2
    L10_2 = L10_2.setup_text
    L12_2 = "UIText_ChallengeStory_ClearTarget"
    L13_2 = {}
    L14_2 = L5_2
    L13_2[1] = L14_2
    L10_2(L11_2, L12_2, L13_2)
    if not (L5_2 <= L8_2) then
      L10_2 = L4_2.IsFinish
      if not L10_2 then
        goto lbl_95
      end
    end
    L10_2 = A0_2._binder
    L10_2 = L10_2.clear_target_panel
    L11_2 = L10_2
    L10_2 = L10_2.setup_status
    L12_2 = true
    L10_2(L11_2, L12_2)
    goto lbl_104
    ::lbl_95::
    L10_2 = A0_2._binder
    L10_2 = L10_2.clear_target_panel
    L11_2 = L10_2
    L10_2 = L10_2._setup_complete_status_by_target_state
    L12_2 = CS
    L12_2 = L12_2.RPG
    L12_2 = L12_2.Client
    L12_2 = L12_2.ChallengeTargetState
    L12_2 = L12_2.None
    L10_2(L11_2, L12_2)
  end
  ::lbl_104::
  L5_2 = L3_2.CurrentProgress
  L5_2 = L5_2.ChallengeTargetDatas
  L6_2 = L5_2.Count
  L7_2 = 0
  L8_2 = L6_2 - 1
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L1_2
    L13_2 = #L1_2
    L13_2 = L13_2 + 1
    L14_2 = L5_2[L10_2]
    L11_2(L12_2, L13_2, L14_2)
  end
  L7_2 = L1_2
  L8_2 = L2_2
  return L7_2, L8_2
end
L0_1._prepare_challenge_target_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = nil
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentPhase
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.BattleInstanceRef
  L3_2 = L3_2.TurnBasedGameModeRef
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.EmptyChallengeTargetData
  L4_2 = L4_2()
  L4_2.ChallengeParam1 = 1
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.ChallengeTargetState
  L5_2 = L5_2.None
  L4_2.ChallengeTargetState = L5_2
  L5_2 = L3_2.WaveMonsterMaxCount
  if L5_2 <= 1 then
    L2_2 = false
    L5_2 = L3_1
    L4_2.Name = L5_2
    L4_2.ChallengeType = 0
  else
    L2_2 = true
    L5_2 = L4_1
    L4_2.Name = L5_2
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ChallengeType
    L5_2 = L5_2.ROUNDS
    L4_2.ChallengeType = L5_2
    L5_2 = L3_2.WaveMonsterMaxCount
    L4_2.TotalProgress = L5_2
    L5_2 = L3_2.WaveMonsterCurrentCount
    L4_2.CurrentProgress = L5_2
  end
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L1_2
  L7_2 = #L1_2
  L7_2 = L7_2 + 1
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L1_2
  L6_2 = L2_2
  return L5_2, L6_2
end
L0_1._prepare_cocoon_target_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = false
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.EmptyChallengeTargetData
  L3_2 = L3_2()
  L3_2.Name = "UIText_BattleCollege_StageAim"
  L3_2.ChallengeParam1 = 1
  L3_2.ChallengeType = 0
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ChallengeTargetState
  L4_2 = L4_2.None
  L3_2.ChallengeTargetState = L4_2
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L1_2
  L6_2 = #L1_2
  L6_2 = L6_2 + 1
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L1_2
  L5_2 = L2_2
  return L4_2, L5_2
end
L0_1._prepare_battle_college_target_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = false
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.EmptyChallengeTargetData
  L3_2 = L3_2()
  L4_2 = L3_1
  L3_2.Name = L4_2
  L3_2.ChallengeParam1 = 1
  L3_2.ChallengeType = 0
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ChallengeTargetState
  L4_2 = L4_2.None
  L3_2.ChallengeTargetState = L4_2
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L1_2
  L6_2 = #L1_2
  L6_2 = L6_2 + 1
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L1_2
  L5_2 = L2_2
  return L4_2, L5_2
end
L0_1._prepare_default_target_data = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.FightActivityUtils
  L3_2 = L3_2.IsInFightActivityEndlessBattle
  L3_2 = L3_2()
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._refresh_fight_activity_target_challenge
    L3_2(L4_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._is_forbid_challenge_target
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.CoroutineUtils
      L3_2 = L3_2.InvokeNextFrame
      function L4_2()
        local L0_3, L1_3, L2_3
        L0_3 = A0_2._binder
        if L0_3 == nil then
          return
        end
        L0_3 = A0_2._binder
        L0_3 = L0_3.challenge_target_panel
        L1_3 = L0_3
        L0_3 = L0_3.setup_view
        L2_3 = A1_2
        L0_3(L1_3, L2_3)
        L0_3 = A0_2._binder
        L0_3 = L0_3.challenge_target_panel
        L1_3 = L0_3
        L0_3 = L0_3.set_show_progress
        L2_3 = A2_2
        L0_3(L1_3, L2_3)
      end
      L3_2(L4_2)
    end
  end
end
L0_1._refresh_challenge_target = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_in_rogue_endless
  return L1_2(L2_2)
end
L0_1._is_forbid_challenge_target = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._fight_activity_challenge_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.FightActivityChallengeMissionPanel
    L4_2 = G
    L4_2 = L4_2.FightActivityChallengeMissionPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._fight_activity_challenge_panel = L1_2
    L1_2 = A0_2._fight_activity_challenge_panel
    L2_2 = L1_2
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_mission_list
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._fight_activity_challenge_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L1_2(L2_2)
  end
end
L0_1._refresh_fight_activity_target_challenge = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._show_mechanism_panel
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._data
  L1_2 = L1_2._mode
  L2_2 = CS
  L2_2 = L2_2.NNHMNDEADHC
  L2_2 = L2_2.BOAMFLLMJIN
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_challenge_mechanism
    L1_2(L2_2)
  end
end
L0_1._setup_mechanism = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChallengeModule
  L1_2 = L1_2.CurrentChallengeInstance
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.GroupType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ChallengeGroupType
  L3_2 = L3_2.Story
  if L2_2 == L3_2 then
    L2_2 = L1_2.CurrentStageNum
    L3_2 = L1_2.BuffList
    L4_2 = L2_2 - 1
    L3_2 = L3_2[L4_2]
    L4_2 = G
    L4_2 = L4_2.BuffUtils
    L4_2 = L4_2.GetMazeBuffData
    L5_2 = L3_2
    L6_2 = 1
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_mechanism
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L4_2.BuffDesc
    L8_2 = G
    L8_2 = L8_2.UITextUtils
    L8_2 = L8_2.GetSkillParams
    L9_2 = L4_2.ParamList
    L8_2, L9_2 = L8_2(L9_2)
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_mechanism_title
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "UIText_ChallengeStory_Buff"
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2._show_mechanism_panel
    L7_2 = true
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_challenge_mechanism = L5_1
function L5_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.PauseDialogBuffRowPanel
    L8_2 = G
    L8_2 = L8_2.AvatarDialogBuffRowBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_buff_desc
  L7_2 = A0_2._buff_desc
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_scroll_buffs = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  A0_2._env_buff_row_list = L1_2
  L1_2 = A0_2._data
  L1_2 = L1_2._mode
  L2_2 = CS
  L2_2 = L2_2.NNHMNDEADHC
  L2_2 = L2_2.BOAMFLLMJIN
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._prepare_challenge_buff
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._prepare_env_buff
    L1_2(L2_2)
  end
  L1_2 = A0_2.override_env_buff_title
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_env_buff_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2.override_env_buff_title
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_env_buff
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._env_buff_row_list
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.env_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._env_buff_row_list
  L1_2(L2_2, L3_2)
end
L0_1._setup_env_buff = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.BattleInstanceRef
  L2_2 = L2_2.BattleLineupDataRef
  L2_2 = L2_2.Context
  L4_2 = L2_2
  L3_2 = L2_2.GetAllMazeBuffDataList
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = 0
    L5_2 = L3_2.Count
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L3_2[L7_2]
      L9_2 = G
      L9_2 = L9_2.BuffUtils
      L9_2 = L9_2.GetMazeBuffData
      L10_2 = L8_2.ID
      L11_2 = L8_2.Level
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        L10_2 = L9_2.IsDisplay
        if L10_2 then
          L10_2 = L9_2.IsDisplayEnvInLevel
          if L10_2 then
            L10_2 = L9_2.MazeBuffType
            L11_2 = CS
            L11_2 = L11_2.RPG
            L11_2 = L11_2.GameCore
            L11_2 = L11_2.MazeBuffType
            L11_2 = L11_2.Level
            if L10_2 ~= L11_2 then
              L10_2 = L9_2.MazeBuffType
              L11_2 = CS
              L11_2 = L11_2.RPG
              L11_2 = L11_2.GameCore
              L11_2 = L11_2.MazeBuffType
              L11_2 = L11_2.Team
              if L10_2 ~= L11_2 then
                goto lbl_59
              end
            end
            L10_2 = table
            L10_2 = L10_2.insert
            L11_2 = A0_2._env_buff_row_list
            L12_2 = L8_2
            L10_2(L11_2, L12_2)
          end
        end
      end
      ::lbl_59::
    end
  end
  L4_2 = L2_2.StageConfig
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_ModuleManager
  L5_2 = L5_2.FarmModule
  L5_2 = L5_2.FarmData
  L6_2 = L4_2.StageType
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.StageType
  L7_2 = L7_2.Cocoon
  if L6_2 == L7_2 then
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.CocoonExcelTable
    L6_2 = L6_2.GetData
    L7_2 = L5_2.CocoonID
    L8_2 = L5_2.SelectWordLevel
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.BuffDesc
      L8_2 = L7_2
      L7_2 = L7_2.IsEmpty
      L7_2 = L7_2(L8_2)
      if not L7_2 then
        L7_2 = {}
        L8_2 = L6_2.BuffDesc
        L7_2.Desc = L8_2
        L8_2 = L6_2.ParamList
        L7_2.ParamList = L8_2
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = A0_2._env_buff_row_list
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
      end
    end
  else
    L6_2 = L4_2.StageType
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.StageType
    L7_2 = L7_2.FarmElement
    if L6_2 == L7_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.FarmElementConfigExcelTable
      L6_2 = L6_2.GetData
      L7_2 = L5_2.FarmElementID
      L8_2 = L5_2.SelectWordLevel
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 ~= nil then
        L7_2 = L6_2.BuffDesc
        L8_2 = L7_2
        L7_2 = L7_2.IsEmpty
        L7_2 = L7_2(L8_2)
        if not L7_2 then
          L7_2 = {}
          L8_2 = L6_2.BuffDesc
          L7_2.Desc = L8_2
          L8_2 = L6_2.ParamList
          L7_2.ParamList = L8_2
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = A0_2._env_buff_row_list
          L10_2 = L7_2
          L8_2(L9_2, L10_2)
        end
      end
    end
  end
end
L0_1._prepare_env_buff = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChallengeModule
  L1_2 = L1_2.CurrentChallengeInstance
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.ChallengeDataRef
  L3_2 = L1_2.GroupType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ChallengeGroupType
  L4_2 = L4_2.Story
  if L3_2 == L4_2 then
    A0_2.override_env_buff_title = "UIText_ChallengeStory_Environment"
  else
    L3_2 = L1_2.GroupType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ChallengeGroupType
    L4_2 = L4_2.Memory
    if L3_2 == L4_2 then
      A0_2.override_env_buff_title = "ChallengeMaze_context"
    end
  end
  L3_2 = G
  L3_2 = L3_2.BuffUtils
  L3_2 = L3_2.GetMazeBuffData
  L4_2 = L2_2.Row
  L4_2 = L4_2.MazeBuffID
  L5_2 = 1
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = {}
  L5_2 = L3_2.BuffDesc
  L4_2.Desc = L5_2
  L5_2 = L3_2.ParamList
  L4_2.ParamList = L5_2
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = A0_2._env_buff_row_list
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L0_1._prepare_challenge_buff = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._is_in_strong_challenge
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityStrongChallengeModule
  L2_2 = L1_2.LastEnteredStage
  L2_2 = L2_2.BossDetails
  L3_2 = {}
  A0_2._boss_feature_info_row_list = L3_2
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = {}
    L8_2 = L2_2[L6_2]
    L8_2 = L8_2.Detail
    L7_2.Desc = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._boss_feature_info_row_list
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_boss_feature_info_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_Strong_Challenge_Boss_Effect"
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_boss_feature_info
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._boss_feature_info_row_list
  L5_2 = #L5_2
  L5_2 = 0 < L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.boss_feature_info_list
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._boss_feature_info_row_list
  L3_2(L4_2, L5_2)
end
L0_1._setup_boss_feature_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.BattleInstanceRef
  L1_2 = L1_2.GameWorldRef
  L1_2 = L1_2.EntityManagerRef
  L1_2 = L1_2.LevelEntity
  L3_2 = L1_2
  L2_2 = L1_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.LevelUIComponent
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2 = L2_2.TrialObjectiveData
  return L2_2
end
L0_1._get_trial_objective_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L2_2 = L2_2.childCount
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_content
    L6_2 = L5_2
    L5_2 = L5_2.GetChild
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L5_2 = L5_2.gameObject
    L6_2 = L5_2.activeSelf
    if L6_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.node_empty
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = false
      L6_2(L7_2, L8_2)
      return
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._setup_empty_tip = L5_1
return L0_1
