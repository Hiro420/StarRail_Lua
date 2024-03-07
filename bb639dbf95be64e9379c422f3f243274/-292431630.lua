local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherTrainer.AetherDivideTrainerLevelRewardDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.Common.AetherCommonRewardInfoRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.Common.AetherCommonRewardInfoRowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherTrainer.AetherDivideTrainerLevelItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherTrainer.AetherDivideTrainerLevelItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherDivideTrainerLevelRewardDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.QuestModule
L3_1 = CS
L3_1 = L3_1.BLHLCHNAJKK
L3_1 = L3_1.FMLBEGJJHMJ
L4_1 = CS
L4_1 = L4_1.BLHLCHNAJKK
L4_1 = L4_1.CDJHHIHBNMN
L5_1 = CS
L5_1 = L5_1.BLHLCHNAJKK
L5_1 = L5_1.BMEAGBEFNFK
L6_1 = "AetherDivideAvatarLevelRewardDialog_Update"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AetherDivideTrainerLevelRewardDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.TrainerData
  A0_2._trainer_data = L1_2
  L1_2 = A0_2._trainer_data
  L2_2 = L1_2
  L1_2 = L1_2.GetDisplayTrainerLevelRowList
  L1_2 = L1_2(L2_2)
  A0_2._trainer_level_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_default_selected_index
  L1_2 = L1_2(L2_2)
  A0_2._cur_selected_index = L1_2
  A0_2._need_play_level_up = false
end
L0_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = nil
  L2_2 = 0
  L3_2 = A0_2._trainer_level_list
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._trainer_level_list
    L6_2 = L6_2[L5_2]
    L7_2 = A0_2._trainer_data
    L7_2 = L7_2.TrainerLevel
    L8_2 = L6_2.ID
    if L7_2 == L8_2 then
      L1_2 = L5_2
    end
  end
  if L1_2 ~= nil then
    return L1_2
  end
  L2_2 = 0
  return L2_2
end
L0_1._get_default_selected_index = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_receive
  L4_2 = A0_2._on_btn_receive
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_pre
  L4_2 = A0_2._on_btn_pre
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L4_2 = A0_2._on_btn_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_item_detail
  L4_2 = A0_2._on_btn_item_detail
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
  L1_2 = L1_2.quest_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_quest_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_reward_item_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.badge_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_badge_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.badge_list
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A1_3.UserObjectData
    L4_3 = L2_3
    L3_3 = L2_3.get_index
    L3_3 = L3_3(L4_3)
    if L3_3 ~= nil then
      A0_2._cur_selected_index = L3_3
      L4_3 = A0_2
      L5_3 = L4_3
      L4_3 = L4_3._refresh_selected_level
      L4_3(L5_3)
    end
  end
  L1_2.mOnSnapNearestChanged = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = L1_1.TrainerData
  L2_2 = L1_2
  L1_2 = L1_2.GetRewardData
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.Refresh
  L1_2(L2_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_badge_list
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.badge_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToSnapPivotByItemIndex
  L3_2 = A0_2._cur_selected_index
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_badge_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_trainer_level
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_quest_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_exp
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reward
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.quest_list
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L0_1._refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._trainer_level_list
  L2_2 = A0_2._cur_selected_index
  L1_2 = L1_2[L2_2]
  A0_2._level_row = L1_2
  L1_2 = A0_2._level_row
  L1_2 = L1_2.ID
  L2_2 = A0_2._trainer_data
  L2_2 = L2_2.TrainerLevel
  L1_2 = L1_2 > L2_2
  A0_2._is_limit = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_limit
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._level_row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L0_1._refresh_trainer_level = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_quest_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_limit
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_limit
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_limit
  if L1_2 then
    return
  end
  L1_2 = L1_1.TrainerData
  L2_2 = L1_2
  L1_2 = L1_2.GetDisplayQuestDataList
  L3_2 = A0_2._level_row
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._trainer_data
  L3_2 = L2_2
  L2_2 = L2_2.GetSortedQuestDataList
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._display_quest_list = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.quest_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._display_quest_list
  L4_2 = L4_2.Count
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.quest_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1._refresh_quest_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.badge_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._trainer_level_list
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.badge_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_badge_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = A0_2._display_quest_list
  L2_2 = L2_2.Count
  L3_2 = 0
  L4_2 = L2_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._display_quest_list
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2.Status
    L9_2 = L3_1
    if L8_2 == L9_2 then
      L1_2 = L1_2 + 1
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_exp_cur
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_exp_total
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.slider_exp
  L4_2 = L1_2 / L2_2
  L3_2.value = L4_2
end
L0_1._refresh_exp = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2._level_row
  L3_2 = L3_2.QuestID
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._level_quest_data = L1_2
  L1_2 = A0_2._level_quest_data
  L1_2 = L1_2 ~= nil
  A0_2._is_reward_get = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_receive_state
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_pre
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._cur_selected_index
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_next
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._cur_selected_index
  L4_2 = A0_2._trainer_level_list
  L4_2 = L4_2.Count
  L4_2 = L4_2 - 1
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.incontrol_tip_pre
  L2_2 = A0_2._cur_selected_index
  L2_2 = L2_2 ~= 0
  L1_2.IsShowTip = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.incontrol_tip_next
  L2_2 = A0_2._cur_selected_index
  L3_2 = A0_2._trainer_level_list
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L2_2 = L2_2 ~= L3_2
  L1_2.IsShowTip = L2_2
  L1_2 = L1_1.TrainerData
  L2_2 = L1_2
  L1_2 = L1_2.GetRewardData
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.HasQuestRewardCanTake
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_left_reddot
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L6_2 = A0_2
  L5_2 = A0_2._should_show_left_reddot
  L7_2 = L2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_right_reddot
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L6_2 = A0_2
  L5_2 = A0_2._should_show_right_reddot
  L7_2 = L2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._refresh_btn_state = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._level_quest_data
  if L1_2 then
    L1_2 = A0_2._level_quest_data
    L1_2 = L1_2.DataRow
  end
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.CreateRewardItemTableSorted
    L3_2 = L1_2.RewardID
    L2_2 = L2_2(L3_2)
    A0_2._reward_list = L2_2
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.CreateConfigIDList
    L3_2 = L1_2.RewardID
    L2_2 = L2_2(L3_2)
    A0_2._config_id_list = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.reward_list
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = A0_2._reward_list
    L4_2 = #L4_2
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._refresh_reward = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_limit
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.set_navigation_target
    L3_2 = nil
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.set_navigation_target
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._refresh_navigation = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_receive
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._level_quest_data
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_limit
  if not L3_2 then
    L3_2 = A0_2._level_quest_data
    L3_2 = L3_2.Status
    L4_2 = L5_1
    L3_2 = L3_2 == L4_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_limit
  if not L1_2 then
    L1_2 = A0_2._level_quest_data
    if L1_2 ~= nil then
      goto lbl_39
    end
  end
  do return end
  ::lbl_39::
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_receive
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._level_quest_data
  L3_2 = L3_2.Status
  L4_2 = L4_1
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._level_quest_data
  L1_2 = L1_2.Status
  L2_2 = L3_1
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_btn_receive
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityLogin_Received"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_btn_receive
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_QuestMissionGet_Btn"
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_receive_state = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.AetherCommonRewardInfoRowPanel
  L8_2 = G
  L8_2 = L8_2.AetherCommonRewardInfoRowPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._display_quest_list
  L7_2 = L7_2[A2_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_quest_item_changed = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
    L9_2 = false
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._reward_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ItemID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2.Count
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_attachment_getted
  L8_2 = A0_2._is_reward_get
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_reward_item_change = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.AetherDivideTrainerLevelItemPanel
  L8_2 = G
  L8_2 = L8_2.AetherDivideTrainerLevelItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L5_2 = A0_2._trainer_level_list
  L5_2 = L5_2[A2_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = A0_2._trainer_level_list
  L8_2 = L8_2[A2_2]
  L9_2 = A2_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = L5_2.ID
  L7_2 = L1_1.TrainerData
  L7_2 = L7_2.TrainerLevel
  if L6_2 == L7_2 then
    L7_2 = L4_2
    L6_2 = L4_2.bind_reddot
    L6_2(L7_2)
  else
    L7_2 = L4_2
    L6_2 = L4_2.unbind_reddot
    L6_2(L7_2)
  end
  return L3_2
end
L0_1._on_badge_item_changed = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_trainer_level
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_quest_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_exp
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_navigation
  L1_2(L2_2)
end
L0_1._refresh_selected_level = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L6_1
  L1_2(L2_2, L3_2)
end
L0_1._on_aether_trainer_level_up = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_exit_callback
  L5_2 = A0_2._on_reward_dialog_close
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1._on_quest_get_reward = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._cur_selected_index
  if L2_2 == 0 then
    L2_2 = false
    return L2_2
  end
  L2_2 = A1_2 or L2_2
  if A1_2 then
    L2_2 = A0_2._level_row
    L2_2 = L2_2.ID
    L3_2 = L1_1.TrainerData
    L3_2 = L3_2.TrainerLevel
    L2_2 = L2_2 > L3_2
  end
  return L2_2
end
L0_1._should_show_left_reddot = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._cur_selected_index
  L3_2 = A0_2._trainer_level_list
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  if L2_2 == L3_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = A1_2 or L2_2
  if A1_2 then
    L2_2 = A0_2._level_row
    L2_2 = L2_2.ID
    L3_2 = L1_1.TrainerData
    L3_2 = L3_2.TrainerLevel
    L2_2 = L2_2 < L3_2
  end
  return L2_2
end
L0_1._should_show_right_reddot = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._need_play_level_up
  if L1_2 then
    A0_2._need_play_level_up = false
    L2_2 = A0_2
    L1_2 = A0_2._on_aether_trainer_level_up
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._get_default_selected_index
    L1_2 = L1_2(L2_2)
    A0_2._cur_selected_index = L1_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.badge_list
    L2_2 = L1_2
    L1_2 = L1_2.MovePanelToSnapPivotByItemIndex
    L3_2 = A0_2._cur_selected_index
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_reward_dialog_close = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._need_play_level_up = true
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.AMFNHGKACLB
  L3_2 = A0_2._level_quest_data
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_receive = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_selected_index
  L1_2 = L1_2 - 1
  A0_2._cur_selected_index = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.badge_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToSnapPivotByItemIndex
  L3_2 = A0_2._cur_selected_index
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_pre = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_selected_index
  L1_2 = L1_2 + 1
  A0_2._cur_selected_index = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.badge_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToSnapPivotByItemIndex
  L3_2 = A0_2._cur_selected_index
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_next = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_id_list
  if L1_2 ~= nil then
    L1_2 = A0_2._config_id_list
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_id_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1._on_btn_item_detail = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.quest_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
end
L0_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L7_1
return L0_1
