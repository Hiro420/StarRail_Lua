local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.DailyMission.HandbookPhaseTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Common.HandbookQuestItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Common.HandbookQuestItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.QuestUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HandbookPhaseTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.QuestModule
L3_1 = "SpriteOutput/TabIcon/DailyQuest/DailyQuestStudyIcon.png"
L4_1 = 9902
L5_1 = "DailyMissionPage_PhaseProgress"
L6_1 = "PhaseRewardInfo_RefreshHint"
function L7_1(A0_2)
  local L1_2
  A0_2._cur_phase_idx = -1
  A0_2._cur_phase_data = nil
  L1_2 = {}
  A0_2._phase_id_list = L1_2
  L1_2 = {}
  A0_2._quests = L1_2
  L1_2 = {}
  A0_2._extra_reward_items = L1_2
  L1_2 = {}
  A0_2._config_id_list = L1_2
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_loaded
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_quest
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_last
  L4_2 = A0_2._on_btn_last
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
  L3_2 = L3_2.btn_extra_reward
  L4_2 = A0_2._on_btn_extra_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward_detail
  L4_2 = A0_2._on_btn_reward_detail
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_quest
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_extra_reward
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_reward_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = A0_2._on_quest_updated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_phase
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_phase_to_latest
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_phase_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_phase_data
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_view
    L0_3(L1_3)
    L0_3 = A0_2._phase_up_timer
    L1_3 = L0_3
    L0_3 = L0_3.stop
    L0_3(L1_3)
    L0_3 = A0_2._phase_up_timer
    L1_3 = L0_3
    L0_3 = L0_3.reset
    L0_3(L1_3)
  end
  L4_2 = 0.5
  L5_2 = 0.5
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._phase_up_timer = L1_2
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetPhaseList
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._phase_id_list
    L8_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2)
  end
end
L0_1._init_phase = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._phase_id_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1
    L6_2 = L5_2
    L5_2 = L5_2.GetPhaseDataByID
    L7_2 = A0_2._phase_id_list
    L7_2 = L7_2[L4_2]
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L5_2.NextLocked
    if not L6_2 then
      L6_2 = L5_2.HaveNext
      if L6_2 then
        goto lbl_24
      end
    end
    L6_2 = A0_2._cur_phase_idx
    L6_2 = L6_2 ~= L4_2
    A0_2._cur_phase_idx = L4_2
    do return L6_2 end
    ::lbl_24::
  end
end
L0_1._set_phase_to_latest = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._cur_phase_data
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.EventSystem
  L1_2 = L1_2.current
  L2_2 = L1_2
  L1_2 = L1_2.SetSelectedGameObject
  L3_2 = nil
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_quest_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_extra_quest_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._play_fadein_anim
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._on_quest_updated = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  if A1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.show_reward_dialog
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    L4_2 = L2_2
    L3_2 = L2_2.set_exit_callback
    function L5_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_update_view
      L0_3(L1_3)
    end
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_update_view
    L2_2(L3_2)
  end
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.need_to_refresh
  L2_2(L3_2)
end
L0_1._on_quest_get_reward = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.EventSystem
  L1_2 = L1_2.current
  L2_2 = L1_2
  L1_2 = L1_2.SetSelectedGameObject
  L3_2 = nil
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_phase_to_latest
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_phase_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_info_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_extra_quest_view
  L2_2(L3_2)
  if L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_phase
    L4_2 = L6_1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._phase_up_timer
    L3_2 = L2_2
    L2_2 = L2_2.reset
    L2_2(L3_2)
    L2_2 = A0_2._phase_up_timer
    L3_2 = L2_2
    L2_2 = L2_2.start
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_quest_view
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.force_set_first_navigation_target
    L2_2(L3_2)
  end
end
L0_1._setup_update_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_last
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._cur_phase_data
  L4_2 = L4_2.HaveBefore
  if L4_2 then
    L4_2 = not A1_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_next
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._cur_phase_data
  L4_2 = L4_2.HaveNext
  if L4_2 then
    L4_2 = not A1_2
  end
  L2_2(L3_2, L4_2)
end
L0_1.on_covered = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_phase_idx
  L1_2 = L1_2 - 1
  A0_2._cur_phase_idx = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_phase_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
end
L0_1._on_btn_last = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_phase_data
  L1_2 = L1_2.NextLocked
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_DailyMissionPage_PhaseQuest_PhaseUnlock"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._cur_phase_idx
  L1_2 = L1_2 + 1
  A0_2._cur_phase_idx = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_phase_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
end
L0_1._on_btn_next = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L3_2 = L1_2
  L2_2 = L1_2.Add
  L4_2 = A0_2._extra_quest_id
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.JCCHEMBPEEE
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_extra_reward = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._phase_id_list
  L1_2 = #L1_2
  if L1_2 == 0 then
    return
  end
  L1_2 = A0_2._cur_phase_idx
  if L1_2 < 1 then
    A0_2._cur_phase_idx = 1
  end
  L1_2 = A0_2._cur_phase_idx
  L2_2 = A0_2._phase_id_list
  L2_2 = #L2_2
  if L1_2 > L2_2 then
    L1_2 = A0_2._phase_id_list
    L1_2 = #L1_2
    A0_2._cur_phase_idx = L1_2
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetPhaseDataByID
  L3_2 = A0_2._phase_id_list
  L4_2 = A0_2._cur_phase_idx
  L3_2 = L3_2[L4_2]
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._cur_phase_data = L1_2
end
L0_1._refresh_phase_data = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.is_bound
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_quest
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L0_1._play_fadein_anim = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_phase_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_quest_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_extra_quest_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._play_fadein_anim
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._cur_phase_data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_last
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_phase_data
  L3_2 = L3_2.HaveBefore
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_next
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_phase_data
  L3_2 = L3_2.HaveNext
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Stamima_Current"
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "%.0f"
  L6_2 = A0_2._cur_phase_data
  L6_2 = L6_2.FinishedQuestCount
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = "%.0f"
  L7_2 = A0_2._cur_phase_data
  L7_2 = L7_2.TotalQuestCount
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._cur_phase_data
  L1_2 = L1_2.FinishedQuestCount
  L2_2 = A0_2._cur_phase_data
  L2_2 = L2_2.TotalQuestCount
  L1_2 = L1_2 / L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.bar_progress
  L2_2.fillAmount = L1_2
  L2_2 = A0_2._last_phase_id
  if not L2_2 then
    L2_2 = A0_2._cur_phase_data
    L2_2 = L2_2.ConfigID
  end
  A0_2._last_phase_id = L2_2
  L2_2 = A0_2._last_finished_count
  if not L2_2 then
    L2_2 = A0_2._cur_phase_data
    L2_2 = L2_2.FinishedQuestCount
  end
  A0_2._last_finished_count = L2_2
  L2_2 = A0_2._last_phase_id
  L3_2 = A0_2._cur_phase_data
  L3_2 = L3_2.ConfigID
  if L2_2 == L3_2 then
    L2_2 = A0_2._last_finished_count
    L3_2 = A0_2._cur_phase_data
    L3_2 = L3_2.FinishedQuestCount
    if L2_2 < L3_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.UIAnimationUtils
      L2_2 = L2_2.PlayFromBegin
      L3_2 = A0_2._binder
      L3_2 = L3_2.anim_progress
      L4_2 = L5_1
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A0_2._cur_phase_data
  L2_2 = L2_2.ConfigID
  A0_2._last_phase_id = L2_2
  L2_2 = A0_2._cur_phase_data
  L2_2 = L2_2.FinishedQuestCount
  A0_2._last_finished_count = L2_2
end
L0_1._setup_info_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._quests = L1_2
  L1_2 = A0_2._cur_phase_data
  L1_2 = L1_2.QuestList
  L2_2 = 0
  L3_2 = L1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._quests
    L8_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2)
  end
  L2_2 = G
  L2_2 = L2_2.QuestUtils
  L2_2 = L2_2.sort_quest
  L3_2 = A0_2._quests
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view_quest
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._quests
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view_quest
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1._setup_quest_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_phase_data
  L1_2 = L1_2.ExtraQuest
  A0_2._extra_quest_id = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_extra_reward_view
  L3_2 = A0_2._extra_quest_id
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_extra_btn_view
  L3_2 = A0_2._extra_quest_id
  L1_2(L2_2, L3_2)
end
L0_1._setup_extra_quest_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  A0_2._config_id_list = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.QuestDataExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.RewardID
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.CreateRewardItemTableSorted
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = {}
  end
  A0_2._extra_reward_items = L4_2
  L4_2 = ipairs
  L5_2 = A0_2._extra_reward_items
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2._config_id_list
    L11_2 = L8_2.ItemID
    L9_2(L10_2, L11_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.list_extra_reward
  L5_2 = L4_2
  L4_2 = L4_2.SetListItemCount
  L6_2 = A0_2._extra_reward_items
  L6_2 = #L6_2
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.list_extra_reward
  L5_2 = L4_2
  L4_2 = L4_2.RefreshAllShownItem
  L4_2(L5_2)
end
L0_1._setup_extra_reward_view = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
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
  L5_2 = A0_2._extra_reward_items
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ItemID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2.Count
  L9_2 = nil
  L10_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L0_1._on_reward_changed = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._cur_phase_data
  L2_2 = L2_2.FinishedQuestCount
  L3_2 = A0_2._cur_phase_data
  L3_2 = L3_2.TotalQuestCount
  L2_2 = L2_2 == L3_2
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetQuestData
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2 == nil
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_doing_extra_reward
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not L2_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_btn_extra_reward
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_extra_reward
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetInteractable
  L7_2 = not L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_btn_extra_reward
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  if L4_2 then
    L7_2 = "UIText_QuestMissionGot_Btn"
    if L7_2 then
      goto lbl_47
    end
  end
  L7_2 = "UIText_QuestMissionGet_Btn"
  ::lbl_47::
  L5_2(L6_2, L7_2)
end
L0_1._setup_extra_btn_view = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
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
  L7_2 = L7_2.HandbookQuestItemPanel
  L8_2 = G
  L8_2 = L8_2.HandbookQuestItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L5_2 = A0_2._quests
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = true
  L10_2 = A0_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L0_1._on_item_changed = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._owner
    L1_2 = L1_2._is_flyleaf_shown
    if not L1_2 then
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
L0_1._on_btn_reward_detail = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_btn_view
  L1_2(L2_2)
end
L0_1._on_added = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayToEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_phase
  L3_2 = L6_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_to_next_zoom_by_confirm
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_to_next_zoom_left_stick_type
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickLeft
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_to_next_zoom_dpad_type
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.DPadLeft
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.select_icon_image
  L4_2 = L3_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TutorialSupportModule
  L2_2 = L1_2
  L1_2 = L1_2.SetNodeDynamicKey
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_btn_root
  L3_2 = L3_2.gameObject
  L4_2 = "HandbookAdventureBook"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AdventureBook"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.go_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_tab_btn_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_unlocked
  return L1_2(L2_2)
end
L0_1._is_enable = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SystemOpenModule
  L1_2 = L1_2.IsOpen
  L2_2 = L4_1
  return L1_2(L2_2)
end
L0_1.is_unlocked = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_DailyMissionPage_TabLocked"
  L1_2(L2_2, L3_2)
end
L0_1._on_select_when_disable = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = 125
  return L1_2
end
L0_1.get_short_cut_hint = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_last_in_control_tip
    L2_2.IsShowTip = true
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_next_in_control_tip
    L2_2.IsShowTip = true
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.get_extra_reward_selected_object
      L2_2 = L2_2(L3_2)
      L4_2 = A0_2
      L3_2 = A0_2.set_navigation_target
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.btn_last_in_control_tip
      L3_2.IsShowTip = false
      L3_2 = A0_2._binder
      L3_2 = L3_2.btn_next_in_control_tip
      L3_2.IsShowTip = false
    end
  end
end
L0_1._on_enter_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_extra_reward
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
L0_1.get_extra_reward_selected_object = L7_1
return L0_1
