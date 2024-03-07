local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "TutorialTriggerCheckerHelper"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.InventoryModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.AvatarModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.PlayerModule
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ItemSubType
L5_1 = L5_1.Equipment
L5_1 = #L5_1
L6_1 = nil
L7_1 = nil
L8_1 = -1
L0_1._unlock_param = nil
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L6_1
  if L1_2 == nil then
    L1_2 = {}
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.TutorialFinish
    L3_2 = {}
    L4_2 = L0_1._check_tutorial_finish
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.GetItem
    L3_2 = {}
    L4_2 = L0_1._check_get_item
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.AnyAvatarToLevel
    L3_2 = {}
    L4_2 = L0_1._check_any_avatar_to_level
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.GetAvatar
    L3_2 = {}
    L4_2 = L0_1._check_get_avatar
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.FinishMainMission
    L3_2 = {}
    L4_2 = L0_1._check_trigger_finished_mission
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.TaskUnlock
    L3_2 = {}
    L4_2 = L0_1._check_task_unlock
    L5_2 = nil
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.TakeSubMission
    L3_2 = {}
    L4_2 = L0_1._check_take_submission
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.EnterBattle
    L3_2 = {}
    L4_2 = L0_1._check_enter_battle
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.GetAnyLightCone
    L3_2 = {}
    L4_2 = L0_1._check_get_any_lightcone
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.AvatarInTeam
    L3_2 = {}
    L4_2 = L0_1._check_avatar_in_team
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.EquipLightCone
    L3_2 = {}
    L4_2 = L0_1._check_equip_light_cone
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.PlayerLevel
    L3_2 = {}
    L4_2 = L0_1._check_player_level
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.GachaPoolValid
    L3_2 = {}
    L4_2 = L0_1._check_gacha_pool_valid
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.TriggerPuzzle
    L3_2 = {}
    L4_2 = L0_1._check_trigger_puzzle
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.DestructProp
    L3_2 = {}
    L4_2 = L0_1._check_destruct_prop
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.OpenChest
    L3_2 = {}
    L4_2 = L0_1._check_open_chest
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.GetNewItemByType
    L3_2 = {}
    L4_2 = L0_1._check_get_new_item_by_sub_type
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.GameMode
    L3_2 = {}
    L4_2 = L0_1._check_game_mode
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.GetItemType
    L3_2 = {}
    L4_2 = L0_1._check_get_item_by_type
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.ShowUIContext
    L3_2 = {}
    L4_2 = L0_1._check_ui_context
    L3_2[1] = L4_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.AvatarPromotion
    L3_2 = {}
    L4_2 = L0_1._check_avatar_promotion
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.FinishQuest
    L3_2 = {}
    L4_2 = L0_1._check_finish_quest
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.HasBattlePass
    L3_2 = {}
    L4_2 = L0_1._check_bp_open
    L3_2[1] = L4_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.NotInGameMode
    L3_2 = {}
    L4_2 = L0_1._check_not_in_gamemode
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.CarryMazeBuff
    L3_2 = {}
    L4_2 = L0_1._check_carry_maze_buff
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.ActivitySwitchBtnExist
    L3_2 = {}
    L4_2 = L0_1._check_activity_switch_btn_exist
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.EnterBattleByStageType
    L3_2 = {}
    L4_2 = L0_1._check_battle_stage_type
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.EnterBattleByChallengeType
    L3_2 = {}
    L4_2 = L0_1._check_battle_challenge_type
    L5_2 = tonumber
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2[L2_2] = L3_2
    L6_1 = L1_2
  end
  L1_2 = L6_1[A0_2]
  return L1_2
end
L0_1.get_checker_function_by_trigger_type = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L7_1
  if L1_2 == nil then
    L1_2 = {}
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.TutorialFinish
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.TutorialLevelGraphEnd
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.GetItem
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.ItemChanged
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.AnyAvatarToLevel
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.AvatarSync
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.GetAvatar
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.AvatarSync
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.FinishMainMission
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.FinishedMainMission
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.TaskUnlock
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.TutorialTaskUnlock
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.TakeSubMission
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.TakenSubMission
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.EnterBattle
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.BattleGamePageInitAfterLevelSetup
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.GetAnyLightCone
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.ItemChanged
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.EquipLightCone
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.ItemChanged
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.AvatarInTeam
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.TeamLineupSynced
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.PlayerLevel
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.ItemChanged
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.TriggerPuzzle
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.PuzzleTryTriggerTutorial
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.DestructProp
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.AdventurePropDestruct
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.OpenChest
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.AdventureOpenChest
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.GetNewItemByType
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.ReceiveReward
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.GameMode
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.AdventurePhaseEntered
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.GetItemType
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.ItemChanged
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.ShowUIContext
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIShowPageContext
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.AvatarPromotion
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.AvatarSync
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.FinishQuest
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.QuestUpdated
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.HasBattlePass
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.AdventurePhaseEntered
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.NotInGameMode
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.AdventurePhaseEntered
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.CarryMazeBuff
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.BattleGamePageInitAfterLevelSetup
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.ActivitySwitchBtnExist
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.FinishedMainMission
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.EnterBattleByStageType
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.BattleGamePageInitAfterLevelSetup
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TutorialTriggerType
    L2_2 = L2_2.EnterBattleByChallengeType
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.BattleGamePageInitAfterLevelSetup
    L1_2[L2_2] = L3_2
    L7_1 = L1_2
  end
  L1_2 = L7_1[A0_2]
  return L1_2
end
L0_1.get_related_notify_type_by_trigger_type = L9_1
function L9_1(A0_2)
  local L1_2
  L0_1._unlock_param = A0_2
end
L0_1.set_unlock_param = L9_1
function L9_1()
  local L0_2, L1_2
  L0_2 = L8_1
  L0_1._unlock_param = L0_2
end
L0_1.set_pass_all_unlock_param = L9_1
function L9_1()
  local L0_2, L1_2
  L0_1._unlock_param = nil
end
L0_1.clear_unlock_param = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetMainMissionData
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 ~= nil and L3_2
  return L3_2
end
L0_1._check_trigger_finished_mission = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.TutorialModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.is_tutorial_finish
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L0_1._check_tutorial_finish = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 0 < L2_2
  return L3_2
end
L0_1._check_get_item = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAvatar
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1._check_get_avatar = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TutorialGuideUtils
  L1_2 = L1_2.CheckAnyAvatarLevel
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1._check_any_avatar_to_level = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1._check_unlock_param
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1._check_task_unlock = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetSubMissionData
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 ~= nil and L3_2
  return L3_2
end
L0_1._check_take_submission = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.GetBGPInitParams
    if L2_2 ~= nil then
      if A0_2 == 0 then
        L3_2 = L1_2
        L2_2 = L1_2.GetBGPInitParams
        L2_2 = L2_2(L3_2)
        L3_2 = L2_2.LineupData
        L3_2 = L3_2.Context
        L3_2 = L3_2.StageConfig
        L3_2 = L3_2.StageType
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.GameCore
        L4_2 = L4_2.StageType
        L4_2 = L4_2.BattleCollege
        L3_2 = L3_2 ~= L4_2
        return L3_2
      end
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.AdventureStatic
      L2_2 = L2_2.GetStageIDByEventID
      L3_2 = A0_2
      L4_2 = L4_1.PlayerData
      L4_2 = L4_2.WorldLevel
      L2_2 = L2_2(L3_2, L4_2)
      L4_2 = L1_2
      L3_2 = L1_2.GetBGPInitParams
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2.LineupData
      L4_2 = L4_2.Context
      L4_2 = L4_2.StageID
      if L4_2 == L2_2 then
        L5_2 = true
        return L5_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._check_enter_battle = L9_1
function L9_1()
  local L0_2, L1_2, L2_2
  L0_2 = L2_1
  L1_2 = L0_2
  L0_2 = L0_2.HasItemInSubType
  L2_2 = L5_1
  return L0_2(L1_2, L2_2)
end
L0_1._check_get_any_lightcone = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TeamModule
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentTeam
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = L1_2.MemberDatas
  L3_2 = L3_2.Length
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = L1_2
    L6_2 = L1_2.GetMemberData
    L8_2 = L5_2 - 1
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.AvatarID
      if L7_2 == A0_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._check_avatar_in_team = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TutorialGuideUtils
  L1_2 = L1_2.CheckAnyAvatarEquipLightCone
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1._check_equip_light_cone = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerData
  L2_2 = L1_2.Level
  L2_2 = A0_2 <= L2_2
  return L2_2
end
L0_1._check_player_level = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GachaModule
  L2_2 = L1_2
  L1_2 = L1_2.IsGachaPoolValid
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L0_1._check_gacha_pool_valid = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L0_1._check_unlock_param
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PuzzleTryTriggerTutorial
  L2_2 = L2_2(L3_2)
  if not L2_2 or A1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = A1_2.PTT
  L2_2 = #L2_2
  L2_2 = A0_2 == L2_2
  return L2_2
end
L0_1._check_trigger_puzzle = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L0_1._check_unlock_param
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventurePropDestruct
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2 == 0 or A0_2 == A1_2
  return L2_2
end
L0_1._check_destruct_prop = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L0_1._check_unlock_param
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventureOpenChest
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2 == 0 or A0_2 == A1_2
  return L2_2
end
L0_1._check_open_chest = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L0_1._check_unlock_param
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReceiveReward
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = 0
  L3_2 = A1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L6_2 = L6_2.ItemSubType
    L6_2 = #L6_2
    if L6_2 == A0_2 then
      L6_2 = true
      return L6_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._check_get_new_item_by_sub_type = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1._unlock_param
  L2_2 = L8_1
  if L1_2 == L2_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = L0_1._unlock_param
  L1_2 = L1_2 == A0_2
  return L1_2
end
L0_1._check_unlock_param = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.MapDef
  L1_2 = L1_2.CurrentGameMode
  L2_2 = #L1_2
  L2_2 = A0_2 == L2_2
  return L2_2
end
L0_1._check_game_mode = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.HasItemInSubType
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L0_1._check_get_item_by_type = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.HasPageInStack
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L0_1._check_ui_context = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TutorialGuideUtils
  L1_2 = L1_2.CheckAnyAvatarPromotion
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1._check_avatar_promotion = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.QuestModule
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_2.Status
  L3_2 = CS
  L3_2 = L3_2.BLHLCHNAJKK
  L3_2 = L3_2.CDJHHIHBNMN
  L2_2 = L2_2 == L3_2
  return L2_2
end
L0_1._check_finish_quest = L9_1
function L9_1()
  local L0_2, L1_2, L2_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.AdventureModule
  L0_2 = L0_2.MapDef
  L0_2 = L0_2.CurrentGameMode
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameModeType
  L1_2 = L1_2.Maze
  if L0_2 ~= L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.GameModeType
    L1_2 = L1_2.Town
    if L0_2 ~= L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.GameCore
      L1_2 = L1_2.GameModeType
      L1_2 = L1_2.TownRoom
      if L0_2 ~= L1_2 then
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.GameCore
        L1_2 = L1_2.GameModeType
        L1_2 = L1_2.Train
        if L0_2 ~= L1_2 then
          goto lbl_46
        end
      end
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.BattlePassModule
  L2_2 = L1_2
  L1_2 = L1_2.HasBattlePass
  do return L1_2(L2_2) end
  ::lbl_46::
  L1_2 = false
  return L1_2
end
L0_1._check_bp_open = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.MapDef
  L1_2 = L1_2.CurrentGameMode
  L2_2 = #L1_2
  L2_2 = A0_2 ~= L2_2
  return L2_2
end
L0_1._check_not_in_gamemode = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_2.BattleInstanceRef
  L2_2 = L2_2.BattleLineupDataRef
  L2_2 = L2_2.Context
  L3_2 = L2_2
  L2_2 = L2_2.GetAllMazeBuffDataList
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = false
    return L3_2
  end
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = L7_2.ID
    if L8_2 == A0_2 then
      L8_2 = true
      return L8_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_carry_maze_buff = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ResidentActivityModule
  L3_2 = L1_2 ~= nil
  return L3_2
end
L0_1._check_activity_switch_btn_exist = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.GetBGPInitParams
    if L2_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.GetBGPInitParams
      L2_2 = L2_2(L3_2)
      L3_2 = L2_2.LineupData
      L3_2 = L3_2.Context
      L3_2 = L3_2.StageConfig
      L3_2 = L3_2.StageType
      L4_2 = #L3_2
      L4_2 = L4_2 == A0_2
      return L4_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._check_battle_stage_type = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChallengeModule
  L1_2 = L1_2.CurrentChallengeInstance
  if L1_2 ~= nil then
    L2_2 = L1_2.ChallengeDataRef
    L2_2 = L2_2.GroupType
    L2_2 = #L2_2
    L2_2 = A0_2 == L2_2
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L0_1._check_battle_challenge_type = L9_1
