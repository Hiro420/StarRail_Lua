local L0_1, L1_1, L2_1, L3_1
L0_1 = class
L1_1 = "TutorialModule"
L2_1 = "Logic.BaseModule"
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = require
L2_1 = "Logic.TutorialModule.TutorialData"
L1_1(L2_1)
L1_1 = require
L2_1 = "Logic.TutorialModule.TutorialGuideData"
L1_1(L2_1)
L1_1 = require
L2_1 = "Logic.TutorialModule.TutorialTriggerCheckerHelper"
L1_1(L2_1)
L1_1 = require
L2_1 = "Ui.Tutorial.TriggerTutorialUtils"
L1_1(L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TutorialSupportModule
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.LMHKKANABLI
L3_1 = L3_1.OFLDJLFJIPB
L3_1 = #L3_1
L2_1.TutorialNone = L3_1
L3_1 = CS
L3_1 = L3_1.LMHKKANABLI
L3_1 = L3_1.HJJOAIOPOJF
L3_1 = #L3_1
L2_1.TutorialUnlock = L3_1
L3_1 = CS
L3_1 = L3_1.LMHKKANABLI
L3_1 = L3_1.PDNGGHCEPLP
L3_1 = #L3_1
L2_1.TutorialFinish = L3_1
L0_1.TutorialStatus = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._is_tutorial_data_inited = false
  A0_2._is_guide_data_inited = false
  A0_2._is_mission_data_ready = false
  A0_2._is_registered = false
  L1_2 = {}
  A0_2.all_tutorial_datas = L1_2
  L1_2 = {}
  A0_2.all_guide_datas = L1_2
  A0_2.current_guide = nil
  L1_2 = {}
  A0_2._notify_type_to_datas = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_datas
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_notify_handlers
  L1_2(L2_2)
end
L0_1.Init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.LAEDMEDCDKP
  L4_2 = L0_1._OnCmdGetTutorialScRsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.DDFHMCABBLM
  L4_2 = L0_1._OnCmdUnlockTutorialScRsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.IACIFLIBIEG
  L4_2 = L0_1._OnCmdFinishTutorialScRsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.MKEJALNBINA
  L4_2 = L0_1._OnCmdGetTutorialGuideScRsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.IPEBOCMIKOH
  L4_2 = L0_1._OnCmdUnlockTutorialGuideScRsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.LNLAIJKALBN
  L4_2 = L0_1._OnCmdFinishTutorialGuideScRsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialFinish
  L4_2 = A0_2._on_tutorial_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialSave
  L4_2 = A0_2._on_tutorial_save
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialStateRequest
  L4_2 = L0_1._on_request_tutorial_state
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowTutorialGuide
  L4_2 = L0_1._on_show_tutorial_guide
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_notify_handlers = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_registered
  if L1_2 then
    return
  end
  A0_2._is_registered = true
  L2_2 = A0_2
  L1_2 = A0_2._register_unlock_notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FinishedMainMission
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_receive_unlock_notify
    L2_3 = G
    L2_3 = L2_3.CS
    L2_3 = L2_3.NotifyType
    L2_3 = L2_3.FinishedMainMission
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._register_unlock_notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_receive_unlock_notify
    L2_3 = G
    L2_3 = L2_3.CS
    L2_3 = L2_3.NotifyType
    L2_3 = L2_3.ItemChanged
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._register_unlock_notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AvatarSync
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_receive_unlock_notify
    L2_3 = G
    L2_3 = L2_3.CS
    L2_3 = L2_3.NotifyType
    L2_3 = L2_3.AvatarSync
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._register_unlock_notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TakenSubMission
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_receive_unlock_notify
    L2_3 = G
    L2_3 = L2_3.CS
    L2_3 = L2_3.NotifyType
    L2_3 = L2_3.TakenSubMission
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._register_unlock_notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattleGamePageInitAfterLevelSetup
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_receive_unlock_notify
    L2_3 = G
    L2_3 = L2_3.CS
    L2_3 = L2_3.NotifyType
    L2_3 = L2_3.BattleGamePageInitAfterLevelSetup
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._register_unlock_notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeamLineupSynced
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_receive_unlock_notify
    L2_3 = G
    L2_3 = L2_3.CS
    L2_3 = L2_3.NotifyType
    L2_3 = L2_3.TeamLineupSynced
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._register_unlock_notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PuzzleTryTriggerTutorial
  L4_2 = A0_2._on_puzzle_trigger_unlock
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._register_unlock_notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventurePropDestruct
  L4_2 = A0_2._on_destruct_prop_unlock
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._register_unlock_notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventureOpenChest
  L4_2 = A0_2._on_open_chest_unlock
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._register_unlock_notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowPageContext
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_receive_unlock_notify
    L2_3 = G
    L2_3 = L2_3.CS
    L2_3 = L2_3.NotifyType
    L2_3 = L2_3.UIShowPageContext
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._register_unlock_notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = A0_2._on_quest_updated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._register_unlock_notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReceiveReward
  L4_2 = A0_2._on_receive_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._register_unlock_notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialTaskUnlock
  L4_2 = A0_2._on_tutorial_task_unlock
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_unlock_handlers = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._notify_type_to_datas
  L3_2 = L3_2[A1_2]
  if L3_2 == nil then
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2._add_notify_handler
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._register_unlock_notify = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = G
  L2_2 = L2_2.TutorialTriggerCheckerHelper
  L2_2 = L2_2.set_pass_all_unlock_param
  L2_2()
  L2_2 = pairs
  L3_2 = A0_2.all_tutorial_datas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.status
    L8_2 = L0_1.TutorialStatus
    L8_2 = L8_2.TutorialUnlock
    if L7_2 == L8_2 then
      L8_2 = L6_2
      L7_2 = L6_2.do_check_unlock_triggers
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = L1_2
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
  end
  L2_2 = G
  L2_2 = L2_2.TutorialTriggerCheckerHelper
  L2_2 = L2_2.clear_pass_all_unlock_param
  L2_2()
  return L1_2
end
L0_1.get_current_unlock_tutorials = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2.all_guide_datas
  return L1_2
end
L0_1.get_all_guides = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2.all_guide_datas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.status
    L8_2 = L0_1.TutorialStatus
    L8_2 = L8_2.TutorialNone
    if L7_2 ~= L8_2 then
      L8_2 = L6_2
      L7_2 = L6_2.get_row
      L7_2 = L7_2(L8_2)
      L7_2 = L7_2.CanReview
      if L7_2 then
        L7_2 = #L1_2
        L7_2 = L7_2 + 1
        L1_2[L7_2] = L6_2
      end
    end
  end
  return L1_2
end
L0_1.get_all_available_guides = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2.all_guide_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.status
    L7_2 = L0_1.TutorialStatus
    L7_2 = L7_2.TutorialUnlock
    if L6_2 == L7_2 then
      L7_2 = L5_2
      L6_2 = L5_2.get_row
      L6_2 = L6_2(L7_2)
      L6_2 = L6_2.CanReview
      if L6_2 then
        L6_2 = true
        return L6_2
      end
    end
  end
  L1_2 = false
  return L1_2
end
L0_1.has_not_viewed_guide = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._guide_data_queue
  if L1_2 ~= nil then
    L1_2 = A0_2._guide_data_queue
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      goto lbl_10
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_10::
  L1_2 = table
  L1_2 = L1_2.remove
  L2_2 = A0_2._guide_data_queue
  L3_2 = 1
  return L1_2(L2_2, L3_2)
end
L0_1.try_get_guide_data = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetTutorialNode
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L0_1.try_get_tutorial_node = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.all_tutorial_datas
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L3_2 = true
    return L3_2
  end
  L3_2 = L2_2.status
  L4_2 = L0_1.TutorialStatus
  L4_2 = L4_2.TutorialFinish
  L3_2 = L3_2 == L4_2
  return L3_2
end
L0_1.is_tutorial_finish = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._cache_reward_list
  if L1_2 == nil then
    return
  end
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2._cache_reward_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.ItemId
    L7_2 = L1_2[L7_2]
    if L7_2 == nil then
      L8_2 = {}
      L7_2 = L8_2
      L8_2 = L6_2.ItemId
      L7_2.id = L8_2
      L8_2 = L6_2.Num
      L7_2.num = L8_2
      L8_2 = L6_2.ItemId
      L1_2[L8_2] = L7_2
    else
      L8_2 = L7_2.num
      L9_2 = L6_2.Num
      L8_2 = L8_2 + L9_2
      L7_2.num = L8_2
    end
  end
  L2_2 = nil
  L3_2 = nil
  L4_2 = pairs
  L5_2 = L1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if L2_2 == nil then
      L9_2 = {}
      L2_2 = L9_2
    end
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = #L2_2
    L11_2 = L11_2 + 1
    L12_2 = L8_2
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.InventoryModule
    L9_2 = L9_2.IsItemImportHintByID
    L10_2 = L8_2.id
    L9_2 = L9_2(L10_2)
    if L9_2 then
      if L3_2 == nil then
        L9_2 = {}
        L3_2 = L9_2
      end
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L3_2
      L11_2 = #L3_2
      L11_2 = L11_2 + 1
      L12_2 = L8_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
  L4_2 = G
  L4_2 = L4_2.ToastModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.show_important_item_hint
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.ToastModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.try_reward_list_hint
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  A0_2._cache_reward_list = nil
end
L0_1.show_and_clear_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.all_tutorial_datas
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = L1_1.RunningTutorialID
  L2_2 = A0_2.all_tutorial_datas
  L2_2 = L2_2[L1_2]
  return L2_2
end
L0_1.get_running_tutorial_data = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._notify_type_to_datas
  L3_2 = L3_2[A1_2]
  if L3_2 == nil then
    L4_2 = {}
    L5_2 = A2_2
    L4_2[1] = L5_2
    L3_2 = L4_2
    L4_2 = A0_2._notify_type_to_datas
    L4_2[A1_2] = L3_2
    return
  end
  L4_2 = #L3_2
  L4_2 = L4_2 + 1
  L3_2[L4_2] = A2_2
end
L0_1.add_data_by_notify_type = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_module_init_req
  L1_2(L2_2)
end
L0_1.OnReconnect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  A0_2.all_tutorial_datas = L1_2
  L1_2 = {}
  A0_2.all_guide_datas = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.TutorialDataExcelTable
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.TutorialGuideGroupExcelTable
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2()
  while true do
    L4_2 = L1_2
    L3_2 = L1_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L1_2.Current
    L5_2 = A0_2
    L4_2 = A0_2._try_create_tutorial_data
    L6_2 = L3_2.TutorialID
    L4_2(L5_2, L6_2)
  end
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogFormatWithTag
  L4_2 = G
  L4_2 = L4_2.LogTag
  L4_2 = L4_2.Tutorial
  L5_2 = "Tutorial TutorialDataExcelTable data init finished"
  L3_2(L4_2, L5_2)
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L4_2 = L3_2.TutorialShowType
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.TutorialGuideShowType
    L5_2 = L5_2.NonTutorial
    if L4_2 ~= L5_2 then
      L5_2 = A0_2
      L4_2 = A0_2._try_create_guide_data
      L6_2 = L3_2.GroupID
      L4_2(L5_2, L6_2)
    end
  end
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogFormatWithTag
  L4_2 = G
  L4_2 = L4_2.LogTag
  L4_2 = L4_2.Tutorial
  L5_2 = "Tutorial TutorialGuideDataExcelTable data init finished"
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._on_module_init_req
  L3_2(L4_2)
end
L0_1._init_datas = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.all_tutorial_datas
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.new
    L4_2 = G
    L4_2 = L4_2.TutorialData
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
    L3_2 = A0_2.all_tutorial_datas
    L3_2[A1_2] = L2_2
  end
  return L2_2
end
L0_1._try_create_tutorial_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.all_guide_datas
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.new
    L4_2 = G
    L4_2 = L4_2.TutorialGuideData
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
    L3_2 = A0_2.all_guide_datas
    L3_2[A1_2] = L2_2
  end
  return L2_2
end
L0_1._try_create_guide_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.current_guide
  if A1_2 == L2_2 then
    A0_2.current_guide = nil
  end
  L3_2 = A1_2
  L2_2 = A1_2.get_row
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.TutorialShowType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.TutorialGuideShowType
  L3_2 = L3_2.NonTutorial
  if L2_2 == L3_2 then
    return
  end
  L2_2 = A1_2.status
  L3_2 = L0_1.TutorialStatus
  L3_2 = L3_2.TutorialFinish
  if L2_2 ~= L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_NetworkManager
    L3_2 = L2_2
    L2_2 = L2_2.ENKNFPHLPPP
    L4_2 = A1_2.id
    L2_2(L3_2, L4_2)
    L2_2 = L0_1.TutorialStatus
    L2_2 = L2_2.TutorialFinish
    A1_2.status = L2_2
  end
end
L0_1.finish_guide = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.all_guide_datas
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    return L2_2
  end
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.TutorialGuideData
  L5_2 = A1_2
  return L3_2(L4_2, L5_2)
end
L0_1.get_tutorial_guide_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.EHGFELIILNP
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.NNCODIFKMBP
  L2_2(L3_2)
end
L0_1._on_module_init_req = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "GetTutorialScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = pairs
  L4_2 = A0_2.all_tutorial_datas
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L0_1.TutorialStatus
    L8_2 = L8_2.TutorialNone
    L7_2.status = L8_2
  end
  L3_2 = pairs
  L4_2 = L2_2.TutorialList
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.Id
    L9_2 = A0_2.all_tutorial_datas
    L9_2 = L9_2[L8_2]
    if L9_2 ~= nil then
      L10_2 = L7_2.Status
      L10_2 = #L10_2
      L9_2.status = L10_2
      L11_2 = L9_2
      L10_2 = L9_2.should_auto_finish
      L12_2 = true
      L10_2 = L10_2(L11_2, L12_2)
      if L10_2 then
        L10_2 = G
        L10_2 = L10_2.SuperDebug
        L10_2 = L10_2.LogFormatWithTag
        L11_2 = G
        L11_2 = L11_2.LogTag
        L11_2 = L11_2.Tutorial
        L12_2 = "\230\156\172\229\156\176\229\173\152\229\156\168\229\183\178\229\174\140\230\136\144\229\188\149\229\175\188\230\149\176\230\141\174\239\188\140\232\183\179\232\191\135\229\188\149\229\175\188\239\188\154%d"
        L13_2 = L7_2.Id
        L10_2(L11_2, L12_2, L13_2)
        L11_2 = A0_2
        L10_2 = A0_2._save_tutorial
        L12_2 = L9_2.id
        L10_2(L11_2, L12_2)
      end
    end
  end
  A0_2._is_tutorial_data_inited = true
  L4_2 = A0_2
  L3_2 = A0_2.on_refresh_tutorial
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._PrepareMainMissions
  L3_2(L4_2)
end
L0_1._OnCmdGetTutorialScRsp = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._is_guide_data_inited
  if L1_2 then
    L1_2 = A0_2._is_tutorial_data_inited
    if L1_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2.all_tutorial_datas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.status
    L8_2 = L0_1.TutorialStatus
    L8_2 = L8_2.TutorialFinish
    if L7_2 ~= L8_2 then
      L8_2 = A0_2
      L7_2 = A0_2._fill_mission_id
      L9_2 = L1_2
      L11_2 = L6_2
      L10_2 = L6_2.get_row
      L10_2, L11_2 = L10_2(L11_2)
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
  end
  L2_2 = pairs
  L3_2 = A0_2.all_guide_datas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.status
    L8_2 = L0_1.TutorialStatus
    L8_2 = L8_2.TutorialFinish
    if L7_2 ~= L8_2 then
      L8_2 = A0_2
      L7_2 = A0_2._fill_mission_id
      L9_2 = L1_2
      L11_2 = L6_2
      L10_2 = L6_2.get_row
      L10_2, L11_2 = L10_2(L11_2)
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
  end
  A0_2._is_mission_data_ready = false
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.UInt32
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L2_2
    L8_2 = L2_2.Add
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.MainMissionDataPromised
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L3_2 = L3_2.ThenLuaAction
  function L5_2()
    local L0_3, L1_3
    A0_2._is_mission_data_ready = true
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._try_tutorial_unlock
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._init_unlock_handlers
    L0_3(L1_3)
  end
  L3_2(L4_2, L5_2)
end
L0_1._PrepareMainMissions = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A2_2.TriggerParams
  if L3_2 ~= nil then
    L3_2 = 0
    L4_2 = A2_2.TriggerParams
    L4_2 = L4_2.Length
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A2_2.TriggerParams
      L7_2 = L7_2[L6_2]
      L8_2 = L7_2.TriggerType
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.TutorialTriggerType
      L9_2 = L9_2.FinishMainMission
      if L8_2 == L9_2 then
        L8_2 = CS
        L8_2 = L8_2.System
        L8_2 = L8_2.Convert
        L8_2 = L8_2.ToUInt32
        L9_2 = L7_2.TriggerParam
        L8_2 = L8_2(L9_2)
        A1_2[L8_2] = true
      end
    end
  end
  L3_2 = A2_2.FinishTriggerParams
  if L3_2 ~= nil then
    L3_2 = 0
    L4_2 = A2_2.FinishTriggerParams
    L4_2 = L4_2.Length
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A2_2.FinishTriggerParams
      L7_2 = L7_2[L6_2]
      L8_2 = L7_2.TriggerType
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.TutorialTriggerType
      L9_2 = L9_2.FinishMainMission
      if L8_2 == L9_2 then
        L8_2 = CS
        L8_2 = L8_2.System
        L8_2 = L8_2.Convert
        L8_2 = L8_2.ToUInt32
        L9_2 = L7_2.TriggerParam
        L8_2 = L8_2(L9_2)
        A1_2[L8_2] = true
      end
    end
  end
end
L0_1._fill_mission_id = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "UnlockTutorialScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2.all_tutorial_datas
  L4_2 = L2_2.Tutorial
  L4_2 = L4_2.Id
  L3_2 = L3_2[L4_2]
  if L3_2 ~= nil then
    L4_2 = L2_2.Tutorial
    L4_2 = L4_2.Status
    L4_2 = #L4_2
    L3_2.status = L4_2
  end
  L4_2 = G
  L4_2 = L4_2.SuperDebug
  L4_2 = L4_2.LogFormatWithTag
  L5_2 = G
  L5_2 = L5_2.LogTag
  L5_2 = L5_2.Tutorial
  L6_2 = "\232\167\163\233\148\129\229\188\186\229\136\182\229\188\149\229\175\188\239\188\154%d"
  L7_2 = L2_2.Tutorial
  L7_2 = L7_2.Id
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._OnCmdUnlockTutorialScRsp = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "FinishTutorialScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.Retcode
  if L3_2 ~= 0 then
    return
  end
  L3_2 = A0_2.all_tutorial_datas
  L4_2 = L2_2.Tutorial
  L4_2 = L4_2.Id
  L3_2 = L3_2[L4_2]
  if L3_2 ~= nil then
    L4_2 = L2_2.Tutorial
    L4_2 = L4_2.Status
    L4_2 = #L4_2
    L3_2.status = L4_2
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.Prefs
    L4_2 = L4_2.User
    L4_2 = L4_2.FinishedTutorials
    L5_2 = L4_2
    L4_2 = L4_2.Contains
    L6_2 = L2_2.Tutorial
    L6_2 = L6_2.Id
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = L3_2.status
      L5_2 = L0_1.TutorialStatus
      L5_2 = L5_2.TutorialFinish
      if L4_2 == L5_2 then
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.Client
        L4_2 = L4_2.Prefs
        L4_2 = L4_2.User
        L4_2 = L4_2.FinishedTutorials
        L5_2 = L4_2
        L4_2 = L4_2.Remove
        L6_2 = L2_2.Tutorial
        L6_2 = L6_2.Id
        L4_2(L5_2, L6_2)
      end
    end
  end
  L4_2 = G
  L4_2 = L4_2.SuperDebug
  L4_2 = L4_2.LogFormatWithTag
  L5_2 = G
  L5_2 = L5_2.LogTag
  L5_2 = L5_2.Tutorial
  L6_2 = "\229\174\140\230\136\144\229\188\186\229\136\182\229\188\149\229\175\188\239\188\154%d"
  L7_2 = L2_2.Tutorial
  L7_2 = L7_2.Id
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2.on_refresh_tutorial
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._on_receive_unlock_notify
  L6_2 = G
  L6_2 = L6_2.CS
  L6_2 = L6_2.NotifyType
  L6_2 = L6_2.TutorialLevelGraphEnd
  L4_2(L5_2, L6_2)
end
L0_1._OnCmdFinishTutorialScRsp = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "GetTutorialGuideScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = pairs
  L4_2 = A0_2.all_guide_datas
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L0_1.TutorialStatus
    L8_2 = L8_2.TutorialNone
    L7_2.status = L8_2
  end
  L3_2 = pairs
  L4_2 = L2_2.TutorialGuideList
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2.all_guide_datas
    L9_2 = L7_2.Id
    L8_2 = L8_2[L9_2]
    if L8_2 ~= nil then
      L9_2 = L7_2.Status
      L9_2 = #L9_2
      L8_2.status = L9_2
    end
  end
  L3_2 = pairs
  L4_2 = A0_2.all_guide_datas
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.should_auto_unlock
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L9_2 = L7_2
      L8_2 = L7_2.do_unlock
      L8_2(L9_2)
    end
  end
  A0_2._is_guide_data_inited = true
  L4_2 = A0_2
  L3_2 = A0_2._PrepareMainMissions
  L3_2(L4_2)
end
L0_1._OnCmdGetTutorialGuideScRsp = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "UnlockTutorialGuideScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2.all_guide_datas
  L4_2 = L2_2.TutorialGuide
  L4_2 = L4_2.Id
  L3_2 = L3_2[L4_2]
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prefs
  L4_2 = L4_2.User
  L4_2 = L4_2.UnlockedTutorialGuides
  L5_2 = L4_2
  L4_2 = L4_2.Contains
  L6_2 = L2_2.TutorialGuide
  L6_2 = L6_2.Id
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.Prefs
    L4_2 = L4_2.User
    L4_2 = L4_2.UnlockedTutorialGuides
    L5_2 = L4_2
    L4_2 = L4_2.Remove
    L6_2 = L2_2.TutorialGuide
    L6_2 = L6_2.Id
    L4_2(L5_2, L6_2)
  end
  if L3_2 ~= nil then
    L4_2 = L2_2.TutorialGuide
    L4_2 = L4_2.Status
    L4_2 = #L4_2
    L3_2.status = L4_2
  end
  L4_2 = G
  L4_2 = L4_2.SuperDebug
  L4_2 = L4_2.LogFormatWithTag
  L5_2 = G
  L5_2 = L5_2.LogTag
  L5_2 = L5_2.Tutorial
  L6_2 = "\232\167\163\233\148\129\229\155\190\230\150\135\229\188\149\229\175\188\239\188\154%d"
  L7_2 = L2_2.TutorialGuide
  L7_2 = L7_2.Id
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._OnCmdUnlockTutorialGuideScRsp = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "FinishTutorialGuideScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2.all_guide_datas
  L4_2 = L2_2.TutorialGuide
  L4_2 = L4_2.Id
  L3_2 = L3_2[L4_2]
  if L3_2 ~= nil then
    L4_2 = L2_2.TutorialGuide
    L4_2 = L4_2.Status
    L4_2 = #L4_2
    L3_2.status = L4_2
  end
  L4_2 = G
  L4_2 = L4_2.SuperDebug
  L4_2 = L4_2.LogFormatWithTag
  L5_2 = G
  L5_2 = L5_2.LogTag
  L5_2 = L5_2.Tutorial
  L6_2 = "\229\174\140\230\136\144\229\155\190\230\150\135\229\188\149\229\175\188\239\188\154%d"
  L7_2 = L2_2.TutorialGuide
  L7_2 = L7_2.Id
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._cache_reward_list
  if L4_2 == nil then
    L4_2 = {}
    A0_2._cache_reward_list = L4_2
  end
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.table_merge
  L5_2 = L2_2.Reward
  L5_2 = L5_2.ItemList_
  L6_2 = A0_2._cache_reward_list
  L4_2(L5_2, L6_2)
end
L0_1._OnCmdFinishTutorialGuideScRsp = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._save_tutorial
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.TutorialLevelGraphEnd
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_tutorial_finish = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._save_tutorial
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_tutorial_save = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.all_tutorial_datas
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.do_save_tutorial
  L3_2(L4_2)
end
L0_1._save_tutorial = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.TutorialTriggerCheckerHelper
  L2_2 = L2_2.set_unlock_param
  L3_2 = A1_2
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_tutorial_unlock
  L4_2 = A1_2
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.TutorialTaskUnlock
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.TutorialTriggerCheckerHelper
  L2_2 = L2_2.clear_unlock_param
  L2_2()
end
L0_1._on_tutorial_task_unlock = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._try_tutorial_unlock
  L4_2 = nil
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_receive_unlock_notify = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._try_unlock_with_unlock_param
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.PuzzleTryTriggerTutorial
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_puzzle_trigger_unlock = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._try_unlock_with_unlock_param
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.AdventurePropDestruct
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_destruct_prop_unlock = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._try_unlock_with_unlock_param
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.AdventureOpenChest
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_open_chest_unlock = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L2_2 = A1_2.Count
    if L2_2 ~= 0 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L3_2 = A0_2
  L2_2 = A0_2._try_tutorial_unlock
  L4_2 = nil
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.QuestUpdated
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_quest_updated = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L2_2 = nil
  L3_2 = G
  L3_2 = L3_2.UtilEngineWrap
  L3_2 = L3_2.IsCsType
  L4_2 = A1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.RewardDisplayData
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L2_2 = A1_2.Rewards
  else
    L2_2 = A1_2
  end
  if L2_2 ~= nil then
    L3_2 = L2_2.Count
    if L3_2 ~= 0 then
      goto lbl_25
    end
  end
  do return end
  ::lbl_25::
  L4_2 = A0_2
  L3_2 = A0_2._try_unlock_with_unlock_param
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.ReceiveReward
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_receive_reward = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = G
  L3_2 = L3_2.TutorialTriggerCheckerHelper
  L3_2 = L3_2.set_unlock_param
  L4_2 = A1_2
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_tutorial_unlock
  L5_2 = A2_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = G
  L3_2 = L3_2.TutorialTriggerCheckerHelper
  L3_2 = L3_2.clear_unlock_param
  L3_2()
end
L0_1._try_unlock_with_unlock_param = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2._is_mission_data_ready
  if not L3_2 then
    return
  end
  L3_2 = A0_2._is_tutorial_data_inited
  if L3_2 then
    L3_2 = A0_2._is_guide_data_inited
    if L3_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  if A2_2 ~= nil then
    L3_2 = A0_2._notify_type_to_datas
    L3_2 = L3_2[A2_2]
    if L3_2 == nil then
      return
    end
    L4_2 = ipairs
    L5_2 = L3_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L10_2 = L8_2
      L9_2 = L8_2.try_unlock
      L11_2 = A1_2
      L9_2(L10_2, L11_2)
    end
  else
    L3_2 = pairs
    L4_2 = A0_2.all_tutorial_datas
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L9_2 = L7_2
      L8_2 = L7_2.try_unlock
      L10_2 = A1_2
      L8_2(L9_2, L10_2)
    end
    L3_2 = pairs
    L4_2 = A0_2.all_guide_datas
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L9_2 = L7_2
      L8_2 = L7_2.try_unlock
      L10_2 = A1_2
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1._try_tutorial_unlock = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TutorialLevelGraphStart
  L1_2(L2_2)
end
L0_1.on_refresh_tutorial = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.all_tutorial_datas
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L3_2 = L2_2.status
    if L3_2 then
      goto lbl_11
    end
  end
  L3_2 = CS
  L3_2 = L3_2.LMHKKANABLI
  L3_2 = L3_2.OFLDJLFJIPB
  ::lbl_11::
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.TutorialSupportModule
  L4_2.TutorialStateResponse = L3_2
end
L0_1._on_request_tutorial_state = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Tutorial.GuideDetailDialog"
  L4_2 = A1_2[0]
  L5_2 = nil
  L6_2 = A1_2[1]
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_show_tutorial_guide = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Tutorial.GuideDetailDialog"
  L4_2 = A1_2
  L5_2 = "UIText_AvatarDemo_Fight"
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_show_role_trial_guide = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A1_2
  L2_2 = A1_2.get_row
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.TutorialShowType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.TutorialGuideShowType
  L4_2 = L4_2.AutoShow
  if L3_2 == L4_2 then
    L3_2 = G
    L3_2 = L3_2.PopupQueueManager
    L4_2 = L3_2
    L3_2 = L3_2.inqueue
    L5_2 = "FullScreenToast"
    L6_2 = 3
    L7_2 = "Ui.Tutorial.GuideDetailDialog"
    L8_2 = nil
    L9_2 = A1_2.id
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  else
    L3_2 = L2_2.TutorialShowType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.TutorialGuideShowType
    L4_2 = L4_2.Normal
    if L3_2 == L4_2 then
      L3_2 = A0_2._guide_data_queue
      if L3_2 == nil then
        L3_2 = {}
        A0_2._guide_data_queue = L3_2
      end
      L3_2 = A0_2._guide_data_queue
      L4_2 = A0_2._guide_data_queue
      L4_2 = #L4_2
      L4_2 = L4_2 + 1
      L3_2[L4_2] = A1_2
      L3_2 = G
      L3_2 = L3_2.NotifyManager
      L3_2 = L3_2.notify
      L4_2 = G
      L4_2 = L4_2.CS
      L4_2 = L4_2.NotifyType
      L4_2 = L4_2.ShowTutorialGuideNode
      L3_2(L4_2)
    else
      L3_2 = L2_2.TutorialShowType
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.TutorialGuideShowType
      L4_2 = L4_2.AutoShowInMaze
      if L3_2 == L4_2 then
        L3_2 = G
        L3_2 = L3_2.ToastModule
        L3_2 = L3_2.Instance
        L4_2 = L3_2
        L3_2 = L3_2.inqueue_toast_checkmainpage
        L5_2 = "FullScreenToast"
        L6_2 = 3
        L7_2 = "Ui.Tutorial.GuideDetailDialog"
        L8_2 = nil
        L9_2 = A1_2.id
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      else
        L3_2 = L2_2.TutorialShowType
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.GameCore
        L4_2 = L4_2.TutorialGuideShowType
        L4_2 = L4_2.BattleStart
        if L3_2 == L4_2 then
          L3_2 = G
          L3_2 = L3_2.TutorialManager
          L4_2 = L3_2
          L3_2 = L3_2.set_battle_tutorial_guide_data
          L5_2 = A1_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end
L0_1.show_guide = L2_1
return L0_1
