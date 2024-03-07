local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Common.HandbookChallengeSubTabItemBase"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Abyss.HandbookChallengeAbyssBannerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Abyss.HandbookChallengeAbyssBannerPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Abyss.HandbookChallengeAbyssItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Abyss.HandbookChallengeAbyssItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Memory.HandbookChallengeMemoryLockPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.ChallengeUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ChallengeModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HandbookModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.MessageModule
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "HandbookChallengeAbyssTabItem"
L6_1 = G
L6_1 = L6_1.HandbookChallengeSubTabItemBase
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2
  A0_2.disable_res_bar = true
  L1_2 = {}
  A0_2._type_item_rows = L1_2
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._init_incontrol_btns
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.HandbookChallengeMemoryLockPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_lock = L1_2
end
L4_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  A0_2._type_id = A1_2
end
L4_1.set_tab_data = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._type_id
  return L1_2
end
L4_1.get_type_id = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_record_group_seen
  L1_2(L2_2)
  A0_2._challenge_group_data = nil
  A0_2._challenge_group_id_2_guide_data_row_dict = nil
  A0_2._type_id = nil
  A0_2._type_item_rows = nil
end
L4_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._tab_row
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_time_left_tips
  L1_2(L2_2)
end
L4_1._on_added = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_unlock_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_type_items
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_challenge_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_time_left_tips
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_items_view
  L1_2(L2_2)
end
L4_1._on_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_record_group_seen
  L1_2(L2_2)
end
L4_1._on_main_tab_unselect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_record_group_seen
  L1_2(L2_2)
end
L4_1._on_unselect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._challenge_group_data
  if L1_2 ~= nil then
    L1_2 = A0_2._challenge_group_data
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = false
  L3_2 = pairs
  L4_2 = A0_2._challenge_group_data
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ID
    L9_2 = L1_2.SeenGuideSubTabChallengeGroupIDs
    L10_2 = L9_2
    L9_2 = L9_2.Contains
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if not L9_2 then
      L9_2 = L1_2.SeenGuideSubTabChallengeGroupIDs
      L10_2 = L9_2
      L9_2 = L9_2.Add
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
      L2_2 = true
    end
  end
  if L2_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.ReddotRefreshGuide
    L3_2(L4_2)
  end
end
L4_1._try_record_group_seen = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._panel_lock
  L2_2 = L1_2
  L1_2 = L1_2.try_setup_lock_status
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_lock
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_lock_tips
  L5_2 = A0_2._binder
  L5_2 = L5_2.mono_remain_timer
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_lock_jump
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_btn_lock_jump
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view_item
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = not L1_2
  A0_2._is_unlock_resident = L2_2
end
L4_1._refresh_unlock_status = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_unlock_resident
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.create_lua_table_from_cs_list
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.GetGuideChallengeItemRows
    L4_2 = A0_2._type_id
    L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if L1_2 then
      goto lbl_15
    end
  end
  L1_2 = {}
  ::lbl_15::
  A0_2._type_item_rows = L1_2
end
L4_1._refresh_type_items = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._challenge_group_data = L1_2
  L1_2 = {}
  A0_2._challenge_group_id_2_guide_data_row_dict = L1_2
  A0_2._none_schedule_challenge_group_count = 0
  A0_2._schedule_challenge_group_count = 0
  L1_2 = pairs
  L2_2 = A0_2._type_item_rows
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.RelatedID
    L7_2 = L0_1
    L8_2 = L7_2
    L7_2 = L7_2.GetChallengeGroupData
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L9_2 = L7_2
      L8_2 = L7_2.IsAvailable
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = A0_2._challenge_group_data
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
        L8_2 = A0_2._challenge_group_id_2_guide_data_row_dict
        L8_2[L6_2] = L5_2
        L8_2 = L7_2.IsScheduleChallenge
        if L8_2 then
          L8_2 = A0_2._schedule_challenge_group_count
          L8_2 = L8_2 + 1
          A0_2._schedule_challenge_group_count = L8_2
        else
          L8_2 = A0_2._none_schedule_challenge_group_count
          L8_2 = L8_2 + 1
          A0_2._none_schedule_challenge_group_count = L8_2
        end
      end
    end
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._challenge_group_data
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._get_sort_priority
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._get_sort_priority
    L5_3 = A1_3
    L3_3 = L3_3(L4_3, L5_3)
    if L2_3 ~= L3_3 then
      L4_3 = L2_3 < L3_3
      return L4_3
    end
    L4_3 = A0_3.IsScheduleChallenge
    if L4_3 then
      L4_3 = A0_3.ID
      L5_3 = A1_3.ID
      L4_3 = L4_3 > L5_3
      return L4_3
    end
    L4_3 = A0_3.ID
    L5_3 = A1_3.ID
    L4_3 = L4_3 < L5_3
    return L4_3
  end
  L1_2(L2_2, L3_2)
end
L4_1._refresh_challenge_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetGuideChallengeItemRows
  L3_2 = A0_2._type_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = 0
  L3_2 = 0
  L4_2 = L1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    L7_2 = L7_2.RelatedID
    L8_2 = L0_1
    L9_2 = L8_2
    L8_2 = L8_2.GetChallengeGroupData
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= nil then
      L9_2 = L8_2.IsScheduleChallenge
      if L9_2 then
        L10_2 = L8_2
        L9_2 = L8_2.IsAvailable
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L2_2 = L2_2 + 1
        end
      end
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_btn_panel
  L4_2 = L3_2
  L3_2 = L3_2.show_time_tips
  L5_2 = 1 < L2_2
  L3_2(L4_2, L5_2)
end
L4_1._refresh_time_left_tips = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.IsScheduleChallenge
  if L2_2 then
    L2_2 = 1
    return L2_2
  end
  L3_2 = A1_2
  L2_2 = A1_2.GetCompleteTargetStarsCount
  L2_2 = L2_2(L3_2)
  L4_2 = A1_2
  L3_2 = A1_2.GetTotalTargetStarsCount
  L3_2 = L3_2(L4_2)
  if L2_2 == L3_2 then
    L4_2 = 3
    return L4_2
  else
    L4_2 = 2
    return L4_2
  end
end
L4_1._get_sort_priority = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._challenge_group_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L4_2 = A0_2
  L3_2 = A0_2._get_list_item_count
  L3_2 = L3_2(L4_2)
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L4_1._setup_items_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._challenge_group_data
  L1_2 = #L1_2
  L2_2 = A0_2._schedule_challenge_group_count
  if 0 < L2_2 then
    L1_2 = L1_2 + 1
  end
  L2_2 = A0_2._none_schedule_challenge_group_count
  if 0 < L2_2 then
    L1_2 = L1_2 + 1
  end
  L2_2 = A0_2._none_schedule_challenge_group_count
  if 0 < L2_2 then
    L1_2 = L1_2 + 1
  end
  L2_2 = A0_2._schedule_challenge_group_count
  if L2_2 == 0 then
    L2_2 = A0_2._none_schedule_challenge_group_count
    if 0 < L2_2 then
      L1_2 = L1_2 + 1
    end
  end
  return L1_2
end
L4_1._get_list_item_count = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._schedule_challenge_group_count
  L2_2 = 0 < L2_2 and A1_2 == 0
  return L2_2
end
L4_1._is_schedule_banner = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._schedule_challenge_group_count
  L2_2 = L2_2 == 0
  return L2_2
end
L4_1._is_schedule_lock_banner = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._none_schedule_challenge_group_count
  if L2_2 == 0 then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2._schedule_challenge_group_count
  if L2_2 == 0 then
    L2_2 = A0_2._none_schedule_challenge_group_count
    L2_2 = L2_2 + 1
    L2_2 = A1_2 == L2_2
    return L2_2
  end
  L2_2 = A0_2._schedule_challenge_group_count
  L2_2 = L2_2 + 1
  L2_2 = A1_2 == L2_2
  return L2_2
end
L4_1._is_empty_row = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._none_schedule_challenge_group_count
  if L2_2 == 0 then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2._schedule_challenge_group_count
  if 0 < L2_2 then
    L2_2 = A0_2._schedule_challenge_group_count
    L2_2 = L2_2 + 2
    L2_2 = A1_2 == L2_2
    return L2_2
  end
  L2_2 = A1_2 == 0
  return L2_2
end
L4_1._is_none_schedule_banner = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._schedule_challenge_group_count
  if L2_2 == 0 then
    L2_2 = A0_2._challenge_group_data
    L2_2 = L2_2[A1_2]
    return L2_2
  end
  L2_2 = A0_2._schedule_challenge_group_count
  if A1_2 <= L2_2 then
    L2_2 = A0_2._challenge_group_data
    L2_2 = L2_2[A1_2]
    return L2_2
  end
  L2_2 = A0_2._challenge_group_data
  L3_2 = A1_2 - 2
  L2_2 = L2_2[L3_2]
  return L2_2
end
L4_1._get_challenge_group_data_by_index = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._is_empty_row
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._get_empty_row
    L5_2 = A1_2
    L6_2 = A2_2
    return L3_2(L4_2, L5_2, L6_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._is_schedule_banner
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._is_none_schedule_banner
    L5_2 = A2_2
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._is_schedule_lock_banner
      L5_2 = A2_2
      L3_2 = L3_2(L4_2, L5_2)
    end
  end
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._get_banner_item
    L6_2 = A1_2
    L7_2 = A2_2
    return L4_2(L5_2, L6_2, L7_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._get_challenge_item
    L6_2 = A1_2
    L7_2 = A2_2
    return L4_2(L5_2, L6_2, L7_2)
  end
end
L4_1._on_item_changed = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = ChallengePanelPrefabIndex
  L5_2 = L5_2.AbyssEmpty
  return L3_2(L4_2, L5_2)
end
L4_1._get_empty_row = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = ChallengePanelPrefabIndex
  L3_2 = L3_2.AbyssNoneScheduleBanner
  L5_2 = A0_2
  L4_2 = A0_2._is_schedule_banner
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._is_schedule_lock_banner
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    if not L4_2 then
      goto lbl_15
    end
  end
  L4_2 = ChallengePanelPrefabIndex
  L3_2 = L4_2.AbyssScheduleBanner
  ::lbl_15::
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.HandbookChallengeAbyssBannerPanel
    L9_2 = G
    L9_2 = L9_2.HandbookChallengeAbyssBannerPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  L7_2 = A0_2
  L6_2 = A0_2._is_schedule_lock_banner
  L8_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L7_2 = L5_2
    L6_2 = L5_2.show_schedule_group_lock
    L6_2(L7_2)
  else
    L7_2 = A0_2
    L6_2 = A0_2._get_challenge_group_data_by_index
    L8_2 = A2_2 + 1
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = A0_2._challenge_group_id_2_guide_data_row_dict
    L8_2 = L6_2.ID
    L7_2 = L7_2[L8_2]
    L9_2 = L5_2
    L8_2 = L5_2.setup_view
    L10_2 = L6_2
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
  end
  return L4_2
end
L4_1._get_banner_item = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterSeconds
  L2_2 = 0.1
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._state
    L1_3 = L4_1.SelectState
    L1_3 = L1_3.Selected
    if L0_3 == L1_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_select
      L0_3(L1_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._try_record_group_seen
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L4_1._on_schedule_expire = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A0_2
  L3_2 = A0_2._get_challenge_group_data_by_index
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = nil
  L5_2 = L3_2.IsScheduleChallenge
  if L5_2 then
    L6_2 = A1_2
    L5_2 = A1_2.NewListViewItem
    L7_2 = ChallengePanelPrefabIndex
    L7_2 = L7_2.AbyssScheduleItem
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
  else
    L6_2 = A1_2
    L5_2 = A1_2.NewListViewItem
    L7_2 = ChallengePanelPrefabIndex
    L7_2 = L7_2.AbyssNoneScheduleItem
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
  end
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.HandbookChallengeAbyssItemPanel
    L9_2 = G
    L9_2 = L9_2.HandbookChallengeAbyssItemPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  L6_2 = A0_2._challenge_group_id_2_guide_data_row_dict
  L7_2 = L3_2.ID
  L6_2 = L6_2[L7_2]
  L8_2 = L5_2
  L7_2 = L5_2.setup_view
  L9_2 = L3_2
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L5_2
  L7_2 = L5_2.register_expire_callback
  L9_2 = A0_2._on_schedule_expire
  L10_2 = A0_2
  L7_2(L8_2, L9_2, L10_2)
  return L4_2
end
L4_1._get_challenge_item = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_incontrol_btn_lock_jump
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeInHierarchy
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_lock_panel
    L1_2 = L1_2.gameObject
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      L2_2 = L1_2.UserObjectData
      L2_2 = L2_2._binder
      L2_2 = L2_2.btn_root
      L2_2 = L2_2.gameObject
      return L2_2
    end
  end
  L2_2 = nil
  return L2_2
end
L4_1.get_first_selected_object = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._challenge_group_data
    L2_2 = #L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_incontrol_btn_lock_jump
    L2_2 = L2_2.gameObject
    L2_2 = 0 < L2_2 or L2_2
    return L2_2
  end
end
L4_1._is_can_to_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._type_item_rows
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
end
L4_1.reset_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_lock_panel
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_lock_jump_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_lock_panel
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_lock_panel
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_lock_jump_button_enable
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_in_control_lock_jump_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L4_1._init_incontrol_btns = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_incontrol_btn_lock_jump
    L2_2.ActionEnabled = A1_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_incontrol_tip_lock_jump
    L2_2.IsShowTip = A1_2
  end
end
L4_1.setup_in_control_lock_jump_button_enable = L5_1
return L4_1
