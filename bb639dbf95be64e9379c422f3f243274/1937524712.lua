local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Story.HandbookChallengeStoryBannerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Story.HandbookChallengeStoryBannerPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Story.HandbookChallengeStoryItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Story.HandbookChallengeStoryItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Memory.HandbookChallengeStoryLockPanel"
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
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "HandbookChallengeStoryTabItem"
L5_1 = G
L5_1 = L5_1.HandbookChallengeSubTabItemBase
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2
  A0_2.disable_res_bar = true
  L1_2 = {}
  A0_2._type_item_rows = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._init_incontrol_btns
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.HandbookChallengeStoryLockPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_lock_story = L1_2
end
L3_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  A0_2._type_id = A1_2
end
L3_1.set_tab_data = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._type_id
  return L1_2
end
L3_1.get_type_id = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_record_group_seen
  L1_2(L2_2)
  A0_2._challenge_group_data = nil
  A0_2._challenge_group_id_2_guide_data_row_dict = nil
  A0_2._type_id = nil
  A0_2._type_item_rows = nil
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
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
L3_1._on_added = L4_1
function L4_1(A0_2)
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
  L1_2 = A0_2._refresh_internal
  L1_2(L2_2)
end
L3_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_record_group_seen
  L1_2(L2_2)
end
L3_1._on_main_tab_unselect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_record_group_seen
  L1_2(L2_2)
end
L3_1._on_unselect = L4_1
function L4_1(A0_2)
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
L3_1._try_record_group_seen = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_type_items
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_challenge_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_unlock_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_time_left_tips
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_items_view
  L1_2(L2_2)
end
L3_1._refresh_internal = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetGuideChallengeItemRows
  L4_2 = A0_2._type_id
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._type_item_rows = L1_2
end
L3_1._refresh_type_items = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = nil
  L2_2 = A0_2._challenge_group_data
  L2_2 = #L2_2
  if L2_2 <= 0 then
    L1_2 = true
    L2_2 = L0_1
    L3_2 = L2_2
    L2_2 = L2_2.GetNextScheduleChallengeGroupDataByType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ChallengeGroupType
    L4_2 = L4_2.Story
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= nil then
      L3_2 = A0_2._panel_lock_story
      L4_2 = L3_2
      L3_2 = L3_2.try_setup_schedule_lock_status
      L5_2 = A0_2._binder
      L5_2 = L5_2.node_lock
      L6_2 = A0_2._binder
      L6_2 = L6_2.text_lock_tips
      L7_2 = A0_2._binder
      L7_2 = L7_2.mono_remain_timer
      L8_2 = L2_2.ScheduleData
      L8_2 = L8_2.BeginTimeDate
      function L9_2()
        local L0_3, L1_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._on_expire
        L0_3(L1_3)
      end
      L10_2 = A0_2._binder
      L10_2 = L10_2.btn_lock_jump
      L11_2 = A0_2._binder
      L11_2 = L11_2.text_btn_lock_jump
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    end
  else
    L2_2 = A0_2._panel_lock_story
    L3_2 = L2_2
    L2_2 = L2_2.try_setup_lock_status
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_lock
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_lock_tips
    L6_2 = nil
    L7_2 = A0_2._binder
    L7_2 = L7_2.btn_lock_jump
    L8_2 = A0_2._binder
    L8_2 = L8_2.text_btn_lock_jump
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L1_2 = L2_2
  end
  L2_2 = not L1_2
  A0_2._is_unlock = L2_2
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
end
L3_1._refresh_unlock_status = L4_1
function L4_1(A0_2)
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
    L1_3 = L3_1.SelectState
    L1_3 = L1_3.Selected
    if L0_3 == L1_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh_internal
      L0_3(L1_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._try_record_group_seen
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L3_1._on_expire = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._challenge_group_data = L1_2
  L1_2 = {}
  A0_2._challenge_group_id_2_guide_data_row_dict = L1_2
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
      end
    end
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._challenge_group_data
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.ID
    L3_3 = A1_3.ID
    L2_3 = L2_3 > L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
end
L3_1._refresh_challenge_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._panel_lock_story
  L2_2 = L1_2
  L1_2 = L1_2.is_unlock
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.tab_btn_panel
    L3_2 = L2_2
    L2_2 = L2_2.show_time_tips
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetGuideChallengeItemRows
  L4_2 = A0_2._type_id
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 0
  L4_2 = 0
  L5_2 = L2_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L2_2[L7_2]
    L8_2 = L8_2.RelatedID
    L9_2 = L0_1
    L10_2 = L9_2
    L9_2 = L9_2.GetChallengeGroupData
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 ~= nil then
      L10_2 = L9_2.IsScheduleChallenge
      if L10_2 then
        L11_2 = L9_2
        L10_2 = L9_2.IsAvailable
        L10_2 = L10_2(L11_2)
        if L10_2 then
          L3_2 = L3_2 + 1
        end
      end
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.tab_btn_panel
  L5_2 = L4_2
  L4_2 = L4_2.show_time_tips
  L6_2 = 1 < L3_2
  L4_2(L5_2, L6_2)
end
L3_1._refresh_time_left_tips = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_unlock
  if L1_2 then
    L1_2 = A0_2._challenge_group_data
    if L1_2 ~= nil then
      L1_2 = A0_2._challenge_group_data
      L1_2 = #L1_2
      if not (L1_2 <= 0) then
        goto lbl_12
      end
    end
  end
  do return end
  ::lbl_12::
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
L3_1._setup_items_view = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._challenge_group_data
  L1_2 = #L1_2
  L1_2 = L1_2 + 1
  return L1_2
end
L3_1._get_list_item_count = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 == 0
  return L2_2
end
L3_1._is_schedule_banner = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = false
  return L2_2
end
L3_1._is_empty_row = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._challenge_group_data
  L2_2 = L2_2[A1_2]
  return L2_2
end
L3_1._get_challenge_group_data_by_index = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
  L3_2 = A0_2._is_banner
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
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
L3_1._on_item_changed = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 == 0
  return L2_2
end
L3_1._is_banner = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = ChallengePanelPrefabIndex
  L5_2 = L5_2.AbyssEmpty
  return L3_2(L4_2, L5_2)
end
L3_1._get_empty_row = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = ChallengePanelPrefabIndex
  L3_2 = L3_2.StoryBanner
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.HandbookChallengeStoryBannerPanel
    L9_2 = G
    L9_2 = L9_2.HandbookChallengeStoryBannerPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
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
  return L4_2
end
L3_1._get_banner_item = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A0_2
  L3_2 = A0_2._get_challenge_group_data_by_index
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = ChallengePanelPrefabIndex
  L6_2 = L6_2.StoryItem
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.HandbookChallengeStoryItemPanel
    L9_2 = G
    L9_2 = L9_2.HandbookChallengeStoryItemPanelBinder
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
  L9_2 = A0_2._on_expire
  L10_2 = A0_2
  L7_2(L8_2, L9_2, L10_2)
  return L4_2
end
L3_1._get_challenge_item = L4_1
function L4_1(A0_2)
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
L3_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._is_unlock
    if L2_2 then
      L2_2 = A0_2._challenge_group_data
      L2_2 = #L2_2
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_incontrol_btn_lock_jump
    L2_2 = L2_2.gameObject
    L2_2 = 0 < L2_2 or L2_2
    return L2_2
  end
end
L3_1._is_can_to_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._type_item_rows
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._panel_lock_story
  if L1_2 then
    L1_2 = A0_2._panel_lock_story
    L2_2 = L1_2
    L1_2 = L1_2.is_unlock
    L1_2 = L1_2(L2_2)
  end
  if not L1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view_item
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemIndex
  L4_2 = 0
  L5_2 = 0
  L2_2(L3_2, L4_2, L5_2)
end
L3_1.reset_view = L4_1
function L4_1(A0_2)
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
L3_1._init_incontrol_btns = L4_1
function L4_1(A0_2, A1_2)
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
L3_1.setup_in_control_lock_jump_button_enable = L4_1
return L3_1
