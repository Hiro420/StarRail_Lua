local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.QuestReward.AlleyAvatarRewardPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyAvatarRewardPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AlleyModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.QuestModule
L3_1 = "SpriteOutput/AvatarDrawCard/"
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ConstValueCommonExcelTable
L4_1 = L4_1.GetData
L5_1 = "Activity_Alley_Reward_RewardUnlock"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L4_1 = L4_1.IntValue
L5_1 = "UIText_ActivityAlley_ActivityRewardAvatar_ReceiveFailedTips"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AlleyAvatarRewardPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryMarkAlleyAvatarRewardSeen
  L1_2(L2_2)
end
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._activity_data = A1_2
  L2_2 = L1_1.AvatarRewardQuest
  A0_2._avatar_quest_id = L2_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = A0_2._avatar_quest_id
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._quest_data = L2_2
  L2_2 = A0_2._quest_data
  L2_2 = L2_2.RewardID
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ItemFactory
  L4_2 = L4_2.CreateDisplayItemDataFromReward
  L5_2 = L2_2
  L4_2, L5_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2[1]
  L4_2 = L4_2.ConfigID
  A0_2._avatar_id = L4_2
end
L0_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_receive
  L4_2 = A0_2._on_btn_receive
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.EndTimeDate
  L4_2 = A0_2._expire_call_back
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_receive_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityAlley_ActivityRewardAvatar_ConditionTips"
  L4_2 = A0_2._quest_data
  L4_2 = L4_2.FinishWayRow
  L4_2 = L4_2.Progress
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AlleyRenownReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_go_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_info
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_id
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_avatar
  L4_2 = L3_1
  L5_2 = tostring
  L6_2 = A0_2._avatar_id
  L5_2 = L5_2(L6_2)
  L6_2 = ".png"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_level_panel
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetEventMissionData
  L3_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.IsStart
  L2_2 = L1_2 ~= nil and (L2_2 or L2_2)
  A0_2._is_renown_unlock = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_go
  L3_2 = A0_2._is_renown_unlock
  L3_2 = not L3_2
  L2_2.IsInFakeDisableState = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_receive
  L3_2 = A0_2._is_renown_unlock
  L3_2 = not L3_2
  L2_2.IsInFakeDisableState = L3_2
  L2_2 = A0_2._is_renown_unlock
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_btn_state
    L2_2(L3_2)
  end
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._activity_data = nil
end
L0_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1.CurRenownLevel
  L1_2(L2_2, L3_2)
end
L0_1._setup_level_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.LEOGBBOPKKO
  L2_2 = L2_2.CMOFEAFMGAK
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_received
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_receive
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._quest_data
  L2_2 = L2_2.Status
  L3_2 = CS
  L3_2 = L3_2.LEOGBBOPKKO
  L3_2 = L3_2.KBBBFCIHJPC
  L2_2 = L2_2 ~= L3_2
  A0_2._is_quest_finish = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_receive
  L3_2 = A0_2._is_quest_finish
  L3_2 = not L3_2
  L2_2.IsInFakeDisableState = L3_2
end
L0_1._refresh_btn_state = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_renown_unlock
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Activity.ActivityAlley.Renown.AlleyRenownPage"
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_ActivityAlley_MainPage_PtRewardUnlockTips"
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_go = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_renown_unlock
  if L1_2 then
    L1_2 = A0_2._is_quest_finish
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_NetworkManager
      L2_2 = L1_2
      L1_2 = L1_2.JCCHEMBPEEE
      L3_2 = A0_2._avatar_quest_id
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L5_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_receive = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn_state
  L2_2(L3_2)
end
L0_1._on_quest_get_reward = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._expire_call_back = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_view
    L2_2(L3_2)
  end
end
L0_1._on_view_active_change = L6_1
return L0_1
