local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.RogueNousMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = {}
L0_1.FadeIn = "RogueNousEnterPage_FadeIn"
L0_1.FadeIn_1To2 = "RogueNousEnterPage_FadeIn_1To2"
L0_1.FadeOut = "CommonFadeOut_Legacy_Off"
L0_1.Switch_BattlePanel = "RogueNousEnterPage_Switch_BattlePanel"
L0_1.Switch_BattlePanel_Out = "RogueNousEnterPage_Switch_BattlePanel_Out"
L1_1 = "UI/Rogue/DLC/RogueNous/Widget/RogueNousMainPageBG1.prefab"
L2_1 = "UI/Rogue/DLC/RogueNous/Widget/RogueNousMainPageBG2.prefab"
L3_1 = "RogueNousMainPageBG1"
L4_1 = "RogueNousMainPageBG2"
L5_1 = "StateRogueNous"
L6_1 = {}
L7_1 = "RogueNous_LevelEntrance_Locked_Round1_SubMissionID"
L8_1 = "RogueNous_LevelEntrance_Locked_Round2_SubMissionID"
L9_1 = "RogueNous_LevelEntrance_Locked_Round3_SubMissionID"
L10_1 = "RogueNous_LevelEntrance_Locked_Round4_SubMissionID"
L6_1[1] = L7_1
L6_1[2] = L8_1
L6_1[3] = L9_1
L6_1[4] = L10_1
L7_1 = {}
L8_1 = "RogueNous_LevelEntrance_Unlock_Round1_SubMissionID"
L9_1 = "RogueNous_LevelEntrance_Unlock_Round2_SubMissionID"
L10_1 = "RogueNous_LevelEntrance_Unlock_Round3_SubMissionID"
L11_1 = "RogueNous_LevelEntrance_Unlock_Round4_SubMissionID"
L7_1[1] = L8_1
L7_1[2] = L9_1
L7_1[3] = L10_1
L7_1[4] = L11_1
L8_1 = {}
L9_1 = "UIText_RogueNous_Entrance_Locked_Hint1"
L10_1 = "UIText_RogueNous_Entrance_Locked_Hint2"
L11_1 = "UIText_RogueNous_Entrance_Locked_Hint5"
L12_1 = "UIText_RogueNous_Entrance_Locked_Hint6"
L8_1[1] = L9_1
L8_1[2] = L10_1
L8_1[3] = L11_1
L8_1[4] = L12_1
L9_1 = G
L9_1 = L9_1.Class
L10_1 = "RogueNousMainPage"
L11_1 = G
L11_1 = L11_1.UIController
L9_1 = L9_1(L10_1, L11_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueNousMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
end
L9_1.ctor = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._load_bg_prefabs
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = A0_2._on_btn_start_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_dice_handbook
  L4_2 = A0_2._on_btn_dice_handbook_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_skill_tree
  L4_2 = A0_2._on_btn_skill_tree_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_edit_dice
  L4_2 = A0_2._on_btn_edit_dice_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_story
  L4_2 = A0_2._on_btn_story_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward_click
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_level_entrance_lock_sub_missions_prepared = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.PrepareMultiSubMissionData
  L2_2 = table
  L2_2 = L2_2.unpack
  L3_2 = L6_1
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueNousUtils
  L2_2 = L2_2.PrepareMultiSubMissionData
  L3_2 = table
  L3_2 = L3_2.unpack
  L4_2 = L7_1
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Promises
  L3_2 = L3_2.Promise
  L3_2 = L3_2.All
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L3_2 = L3_2.ThenLuaAction
  function L5_2()
    local L0_3, L1_3
    A0_2._is_level_entrance_lock_sub_missions_prepared = true
  end
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "RogueNousDiceHandbookReward"
  L6_2 = nil
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_btn_dice_handbook_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "RogueNousAvailableTalent"
  L6_2 = nil
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_btn_skill_tree_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "RogueNousStoryReward"
  L6_2 = nil
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_btn_story_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "RogueNousQuestReward"
  L6_2 = nil
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_btn_reward_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "RogueNousBranchParentNew"
  L6_2 = nil
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_btn_dice_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_short_cut_hint_panel
  L5_2 = {}
  L6_2 = "ActionGroup_Return"
  L5_2[1] = L6_2
  L3_2(L4_2, L5_2)
end
L9_1._on_load = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._play_fade_in_anim
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_unlock
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_story
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._start_bgm
  L1_2(L2_2)
end
L9_1._setup_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_story
  L1_2(L2_2)
end
L9_1._on_return_to_top = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._stop_bgm
  L1_2(L2_2)
end
L9_1._on_dispose = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._do_exit
  L1_2(L2_2)
end
L9_1._on_btn_close_click = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_block_entrance_by_lock_sub_missions
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.try_show_quick_settlement_dialog
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueSubMode
  L2_2 = L2_2.ChessRogueNous
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_quick_settlement
    L0_3(L1_3)
  end
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._show_select_level_page
  L1_2(L2_2)
end
L9_1._on_btn_start_click = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkCancelHint
  L2_2 = "UIText_RogueDLC_ProgressAbandon_HintDesc"
  L3_2 = "Common_ConfirmDialog_Title"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.show_full_screen_block_for_packet
      L3_3 = CS
      L3_3 = L3_3.PBIBDHBOIGI
      L3_3 = L3_3.BHECAHPLGBN
      L1_3(L2_3, L3_3)
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.GlobalVars
      L1_3 = L1_3.s_ModuleManager
      L1_3 = L1_3.ChessRogueModule
      L2_3 = L1_3
      L1_3 = L1_3.SendGiveUpChessRogueReq
      L1_3(L2_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L9_1._on_quick_settlement = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueNous.DiceHandbook.RogueNousDiceHandbookPage"
  L1_2(L2_2)
end
L9_1._on_btn_dice_handbook_click = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueNous.Talent.RogueNousTalentPage"
  L1_2(L2_2)
end
L9_1._on_btn_skill_tree_click = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueNous.DiceBuild.RogueNousDiceBranchPage"
  L3_2 = nil
  L4_2 = nil
  L5_2 = nil
  L6_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L9_1._on_btn_edit_dice_click = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueNous.Story.RogueNousStoryPage"
  L1_2(L2_2)
end
L9_1._on_btn_story_click = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueNous.Reward.RogueNousQuestRewardPage"
  L1_2(L2_2)
end
L9_1._on_btn_reward_click = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.IsFinalLevelFinished
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.User
    L2_2 = L2_2.RogueNousMainPageSeenSwitchEndGameAnim
    if L2_2 then
      goto lbl_25
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.sync_load_prefab
  L4_2 = L1_1
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_bg_root
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L2_2.transform
  L4_2 = L3_1
  L3_2.name = L4_2
  ::lbl_25::
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.sync_load_prefab
    L4_2 = L2_1
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_bg_root
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = L2_2.transform
    L4_2 = L4_1
    L3_2.name = L4_2
  end
end
L9_1._load_bg_prefabs = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_dice_handbook
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.RogueNousUtils
  L3_2 = L3_2.is_dice_handbook_unlocked
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_skill_tree
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.RogueNousUtils
  L3_2 = L3_2.is_talent_tree_unlocked
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_edit_dice
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.RogueNousUtils
  L3_2 = L3_2.is_edit_dice_unlocked
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_story
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.RogueNousUtils
  L3_2 = L3_2.is_story_unlocked
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.RogueNousUtils
  L3_2 = L3_2.is_reward_unlocked
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L9_1._setup_btn_unlock = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L2_2 = L1_2.ChessRogueDimensionData
  L2_2 = L2_2.NousStoryInfo
  L3_2 = L2_2.AllFinishedStoryCount
  L4_2 = L2_2.AllStoryCount
  L5_2 = L3_2 == L4_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_story_progress
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = not L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_story_complete
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_story_complete_progress
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.txt_story_unlock_num
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.txt_story_total_num
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.txt_story_unlock_num_complete
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.txt_story_total_num_complete
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
end
L9_1._refresh_story = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._is_level_entrance_lock_sub_missions_prepared
  if not L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = L7_1
  L2_2 = #L2_2
  L3_2 = L6_1
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = G
    L6_2 = L6_2.RogueNousUtils
    L6_2 = L6_2.is_mission_met_condition
    L7_2 = L6_1[L5_2]
    L8_2 = L7_1[L5_2]
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = L8_1[L5_2]
      if L6_2 ~= nil then
        L7_2 = G
        L7_2 = L7_2.NotifyManager
        L7_2 = L7_2.notify
        L8_2 = G
        L8_2 = L8_2.CS
        L8_2 = L8_2.NotifyType
        L8_2 = L8_2.UIPileToastMessageTextID
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L9_1._try_block_entrance_by_lock_sub_missions = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = 0
    return L3_2
  end
  L3_2 = L2_2.Value
  L3_2 = L3_2.UintValue
  return L3_2
end
L9_1._get_const_value = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = nil
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueNousUtils
  L2_2 = L2_2.IsFinalLevelFinished
  L2_2 = L2_2()
  if L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.Prefs
    L3_2 = L3_2.User
    L3_2 = L3_2.RogueNousMainPageSeenSwitchEndGameAnim
    if not L3_2 then
      L1_2 = "FadeIn_1To2"
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.Prefs
      L3_2 = L3_2.User
      L3_2.RogueNousMainPageSeenSwitchEndGameAnim = true
  end
  else
    L1_2 = "FadeIn"
  end
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.animator
  L4_2 = L3_2
  L3_2 = L3_2.SetTrigger
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L9_1._play_fade_in_anim = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_exiting
  if L1_2 then
    return
  end
  A0_2._is_exiting = true
  L1_2 = "FadeOut"
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator
  L3_2 = L2_2
  L2_2 = L2_2.SetTrigger
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_full_screen_block_by_anim
  L4_2 = L0_1[L1_2]
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.exit
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2, L5_2)
end
L9_1._do_exit = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = "Switch_BattlePanel"
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.RogueDLC.RogueNous.Entrance.RogueNousSelectLevelDialog"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.LuaTable
  L4_2 = L2_2
  L3_2 = L2_2.register_pre_exit_callback
  L5_2 = A0_2._on_select_level_page_pre_exit
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.animator
  L4_2 = L3_2
  L3_2 = L3_2.SetTrigger
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L9_1._show_select_level_page = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = "Switch_BattlePanel_Out"
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator
  L3_2 = L2_2
  L2_2 = L2_2.SetTrigger
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L9_1._on_select_level_page_pre_exit = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = 3
  L5_2 = A0_2
  L4_2 = A0_2.show_full_screen_block
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.rpg_animation_event
  L6_2 = L5_2
  L5_2 = L5_2.AddAnimationEvent
  L7_2 = A1_2
  function L8_2()
    local L0_3, L1_3, L2_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.GlobalVars
    L0_3 = L0_3.s_UIManager
    L1_3 = L0_3
    L0_3 = L0_3.TryUnblockFixedTime
    L2_3 = L4_2
    L0_3(L1_3, L2_3)
    L0_3 = A2_2
    if L0_3 ~= nil then
      L0_3 = A2_2
      L0_3()
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.rpg_animation_event
    L1_3 = L0_3
    L0_3 = L0_3.ClearEvent
    L0_3(L1_3)
  end
  L5_2(L6_2, L7_2, L8_2)
end
L9_1._show_full_screen_block_by_anim = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetAdventureAudioManager
    L2_2 = L2_2(L3_2)
  end
  if L2_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_AudioManager
    L3_2 = L3_2.AudioConfig
    L3_2 = L3_2.MenuBGMStates
    L4_2 = L3_2
    L3_2 = L3_2.get_Item
    L5_2 = L5_1
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L2_2
    L4_2 = L2_2.SwitchUIMenuBGM
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L9_1._start_bgm = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetAdventureAudioManager
    L2_2 = L2_2(L3_2)
  end
  if L2_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_AudioManager
    L3_2 = L3_2.AudioConfig
    L3_2 = L3_2.MenuBGMStates
    L4_2 = L3_2
    L3_2 = L3_2.get_Item
    L5_2 = L5_1
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L2_2
    L4_2 = L2_2.StopUIMenuBGM
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L9_1._stop_bgm = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._do_exit
  L1_2(L2_2)
end
L9_1._in_control_exit_click = L10_1
return L9_1
