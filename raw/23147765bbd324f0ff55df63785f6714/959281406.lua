local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.ActivityTelevision.ActivityTelevisionBattleResultDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityTelevision.Target.ActivityTelevisionTargetInfoRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityTelevision.Target.ActivityTelevisionTargetInfoRowPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityTelevisionBattleResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ActivityTelevisionModule
L3_1 = 1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = true
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityTelevisionBattleResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = false
  L1_2(L2_2)
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_exit_to_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_challenge
  L4_2 = A0_2._on_btn_challenge
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_quit
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.target_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_target_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.init_data
  L1_2(L2_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1.BattleResult
  A0_2.battle_result = L1_2
  L1_2 = L2_1.CurrentTelevisionData
  A0_2.data = L1_2
  L1_2 = A0_2.data
  L1_2 = L1_2.QuestRow
  L1_2 = L1_2.QuestIDList
  A0_2.quest_list = L1_2
  L1_2 = L2_1.CurrentTelevisionID
  L2_2 = L2_1.DeathLevelID
  L1_2 = L1_2 == L2_2
  A0_2.is_death_level = L1_2
end
L0_1.init_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.set_btn_clickable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.battle_result
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_score_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_challenge
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_exit
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_rank
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_result_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_extra_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_target
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_score_panel
  L1_2(L2_2)
  L1_2 = A0_2.is_death_level
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.MissionModule
    L2_2 = L1_2
    L1_2 = L1_2.GetSubMissionData
    L3_2 = L2_1.DeathLevelMessageSubmission
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      L2_2 = A0_2.battle_result
      L2_2 = L2_2.TotalScore
      if 0 < L2_2 then
        L2_2 = L1_2.IsFinish
        if not L2_2 then
          L2_2 = A0_2._binder
          L2_2 = L2_2.btn_exit
          L3_2 = L2_2
          L2_2 = L2_2.SafeSetActive
          L4_2 = false
          L2_2(L3_2, L4_2)
          L2_2 = A0_2._binder
          L2_2 = L2_2.btn_challenge
          L3_2 = L2_2
          L2_2 = L2_2.SafeSetActive
          L4_2 = false
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.set_btn_clickable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.set_btn_clickable
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2.fadeInTimer
    L1_3 = L0_3
    L0_3 = L0_3.stop
    L0_3(L1_3)
  end
  L4_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.fadeInTimer = L1_2
  L1_2 = A0_2.fadeInTimer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2.fadeInTimer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_click_left
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_click_right
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_btn_clickable = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._setup_title = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_score_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2.battle_result
  L3_2 = L3_2.TotalScore
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.new_record_hint_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.battle_result
  L3_2 = L3_2.IsNewScoreRecord
  L1_2(L2_2, L3_2)
end
L0_1._setup_result_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.is_death_level
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.is_death_level
  if not L1_2 then
    L1_2 = A0_2.data
    L1_2 = L1_2.MazeBuffID
    L2_2 = G
    L2_2 = L2_2.BuffUtils
    L2_2 = L2_2.GetMazeBuffData
    L3_2 = L1_2
    L4_2 = 1
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_buff_layer
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = A0_2.battle_result
    L5_2 = L5_2.BuffLayer
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_buff_icon
    L6_2 = L2_2.BuffIcon
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = L2_1
    L4_2 = L3_2
    L3_2 = L3_2.GetBuffShowLevelImagePath
    L5_2 = L1_2
    L6_2 = A0_2.battle_result
    L6_2 = L6_2.BuffLayer
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_rate_icon
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = L3_2 ~= nil
    L4_2(L5_2, L6_2)
    if L3_2 ~= nil then
      L5_2 = A0_2
      L4_2 = A0_2.async_load_sprite_to
      L6_2 = A0_2._binder
      L6_2 = L6_2.img_rate_icon
      L7_2 = L3_2
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end
L0_1._setup_buff = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.battle_result
  L1_2 = L1_2.ExtraScore
  L1_2 = L1_2 ~= 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_extra_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_base_score
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2.battle_result
  L4_2 = L4_2.BaseScore
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_left_turn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_ActivityRogueEndless_Score_Ex_Tip_2"
  L5_2 = A0_2.battle_result
  L5_2 = L5_2.LeftRoundCnt
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_extra_score
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = "+"
  L5_2 = A0_2.battle_result
  L5_2 = L5_2.ExtraScore
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_extra_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.battle_result
  L1_2 = L1_2.TotalScore
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetScoreRank
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.rank_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_rank = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.target_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2.quest_list
  L4_2 = L4_2.Length
  L2_2(L3_2, L4_2)
  L2_2 = 0
  L3_2 = A0_2.quest_list
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.TryGetQuestData
    L8_2 = A0_2.quest_list
    L8_2 = L8_2[L5_2]
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L6_2.Progress
    L8_2 = L6_2.TotalProgress
    if L7_2 >= L8_2 then
      L1_2 = L5_2 + 1
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.target_list
    L1_3 = L0_3
    L0_3 = L0_3.GetVisibleMaxIndex
    L0_3 = L0_3(L1_3)
    L1_3 = L1_2
    if L0_3 < L1_3 then
      L1_3 = A0_2._binder
      L1_3 = L1_3.target_list
      L2_3 = L1_3
      L1_3 = L1_3.MovePanelToItemIndex
      L3_3 = L1_2
      L4_3 = 0
      L5_3 = 1
      L1_3(L2_3, L3_3, L4_3, L5_3)
    end
  end
  L2_2(L3_2)
end
L0_1._setup_target = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ActivityTelevisionTargetInfoRowPanel
    L8_2 = G
    L8_2 = L8_2.ActivityTelevisionTargetInfoRowPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.TryGetQuestData
  L7_2 = A0_2.quest_list
  L7_2 = L7_2[A2_2]
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = {}
  L6_2.QuestData = L5_2
  L7_2 = L5_2.Progress
  L6_2.CurrentValue = L7_2
  L7_2 = L5_2.TotalProgress
  L6_2.TotalValue = L7_2
  L6_2.IsHideTargetPoint = true
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  return L3_2
end
L0_1._on_target_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.BattleToMazeTransit
  L1_2(L2_2)
end
L0_1._on_exit = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.SetAutoShowOnExitBattle
  L3_2 = true
  L4_2 = A0_2.data
  L4_2 = L4_2.ID
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.BattleToMazeTransit
  L1_2(L2_2)
end
L0_1._on_exit_to_page = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.RestartTelevisionBattle
  L1_2(L2_2)
end
L0_1._on_btn_challenge = L4_1
return L0_1
