local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.BoxingClub.BoxingClubResonanceTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BoxingClub.Components.BoxingClubResonanceCardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BoxingClub.BoxingClubUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubResonanceTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.BoxingClubModule
L2_1 = "8072"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._is_locked = true
  L1_2 = {}
  A0_2._all_challenge_panels = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._generate_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_first_selected_gameobject_index
  L1_2 = L1_2(L2_2)
  A0_2._default_selected_index = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.BoxingClubChallengeSeasonConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.BoxingClubActivityType
  L2_2 = L2_2.Second
  L2_2 = #L2_2
  L1_2 = L1_2(L2_2)
  A0_2._season_row = L1_2
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
  A0_2._unlock_mission_list = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "BoxingClubResonance_UnlockMissionList"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  L2_2 = 0
  L3_2 = L1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._unlock_mission_list
    L7_2 = L6_2
    L6_2 = L6_2.Add
    L8_2 = L1_2[L5_2]
    L8_2 = L8_2.UintValue
    L6_2(L7_2, L8_2)
  end
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetBoxingClubResonanceActivityData
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.PanelID
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ResidentActivityModule
  L3_2 = L2_2
  L2_2 = L2_2.GetResidentBoxingClubResonanceActivityData
  L2_2 = L2_2(L3_2)
  L1_2 = L2_2
  if L1_2 then
    L2_2 = L1_2.PanelID
    return L2_2
  end
end
L0_1._get_available_panel_id = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_list_view
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.activity_btn
  L4_2 = A0_2._on_activity_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go_activity_panel
  L4_2 = A0_2._on_btn_go_activity_panel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_resident_reward
  L4_2 = A0_2._on_btn_resident_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FinishedMainMission
  L4_2 = A0_2._on_finished_main_mission
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "BoxingClubResonanceLimitRewardBtn"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.red_dot_limit_reward_btn
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "BoxingClubResonanceResidentRewardBtn"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.red_dot_resident_reward_btn
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._challenge_id_lst
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_activity_panel
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 1
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.panel_list_view
    L1_3 = L0_3
    L0_3 = L0_3.MovePanelToItemIndex
    L2_3 = A0_2._default_selected_index
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._try_show_unlock_animation
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.set_navigation_target
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.get_first_selected_object
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "BoxingClubResonanceTabItem"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.red_dot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_tab
  L4_2 = A0_2._season_row
  L4_2 = L4_2.SeasonTabPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.IsResonanceTabUnlock
  L1_2 = L1_2(L2_2)
  L1_2 = not L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_view_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  A0_2._is_locked = L1_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  if L1_2 then
    L4_2 = {}
    L5_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    if L4_2 then
      goto lbl_28
    end
  end
  L4_2 = {}
  L5_2 = "ActionGroup_Select"
  L6_2 = "ActionGroup_Return"
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  ::lbl_28::
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.IsResonancePreMissionFinish
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_empty_tips
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_BoxingClub_ResonanceActivity_UnlockTip_1"
      return L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_empty_tips
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_BoxingClub_ResonanceActivity_UnlockTip_1"
      return L2_2(L3_2, L4_2)
    end
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_view
    L2_2(L3_2)
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.TutorialTaskUnlock
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_all_level_read
  L1_2(L2_2)
end
L0_1._on_unselect = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_26
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.BoxingClubResonanceCardPanel
  L8_2 = G
  L8_2 = L8_2.BoxingClubResonanceCardPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = A0_2._all_challenge_panels
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  ::lbl_26::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._challenge_id_lst
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A0_2._challenge_id_lst
  L8_2 = L8_2[A2_2]
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.setup_is_top
  L7_2 = A2_2 % 2
  L7_2 = L7_2 == 0
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_click_callback
  L7_2 = A0_2
  L8_2 = A0_2._on_panel_clicked
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L0_1._on_item_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_list_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._default_selected_index
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
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = ipairs
  L3_2 = A0_2._challenge_id_lst
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_1.BoxingClubLevelDict
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2.IsUnlocked
    if L8_2 then
      L8_2 = L5_2 - 1
      L1_2 = L8_2 - 1
    end
    L8_2 = L7_2.BoxingClubChallengeID
    L9_2 = L1_1.LastBattleChallengeID
    if L8_2 == L9_2 then
      L1_1.LastBattleChallengeID = -1
      L8_2 = L5_2 - 1
      return L8_2
    end
  end
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = 0
  L4_2 = L1_2
  return L2_2(L3_2, L4_2)
end
L0_1._get_first_selected_gameobject_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._challenge_id_lst = L1_2
  L1_2 = pairs
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.BoxingClubChallengeConfigExcelTable
  L2_2 = L2_2.dataDict
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.Type
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.BoxingClubActivityType
    L7_2 = L7_2.Second
    if L6_2 == L7_2 then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._challenge_id_lst
      L8_2 = L5_2.ChallengeID
      L6_2(L7_2, L8_2)
    end
  end
  A0_2._is_eff_played = false
end
L0_1._generate_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_activity_info
  L1_2(L2_2)
  L1_2 = A0_2._activity_data
  if L1_2 ~= nil then
    L1_2 = A0_2._activity_data
    L2_2 = L1_2
    L1_2 = L1_2.IsInSchedule
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.activity_btn
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.activity_remain_time
      L2_2 = L1_2
      L1_2 = L1_2.SetTargetTimeByTimeStamp
      L3_2 = A0_2._activity_data
      L3_2 = L3_2.ScheduleData
      L3_2 = L3_2.EndTimeStamp
      L4_2 = A0_2._hide_activity_panel
      L5_2 = A0_2
      L6_2 = 2
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.activity_btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_activity_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetBoxingClubResonanceActivityData
  L1_2 = L1_2(L2_2)
  A0_2._activity_data = L1_2
end
L0_1._setup_activity_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.activity_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._hide_activity_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = L1_1.BoxingClubLevelDict
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.ActivityType
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.BoxingClubActivityType
    L7_2 = L7_2.Second
    if L6_2 == L7_2 then
      L7_2 = L5_2
      L6_2 = L5_2.SetLevelRead
      L6_2(L7_2)
    end
  end
end
L0_1.set_all_level_read = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.set_all_level_read
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.BoxingClubLevelRefreshed
  L1_2(L2_2)
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.BoxingClubUtils
  L1_2 = L1_2.open_resonance_limit_reward_page
  L1_2()
end
L0_1._on_activity_btn_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.BoxingClub.BoxingClubResonanceResidentRewardDialog"
  L1_2(L2_2)
end
L0_1._on_btn_resident_reward = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "BoxingClubResonance_Pre_Mission"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.IntValue
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L2_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.is_current_tab_item
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._on_select
      L3_2(L4_2)
    end
  end
end
L0_1._on_finished_main_mission = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1.BoxingClubLevelDict
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.SetLevelRead
  L2_2(L3_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.TryShowResonanceChallengeMainPage
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BoxingClubLevelRefreshed
  L2_2(L3_2)
end
L0_1._on_panel_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.BoxingClubModule
  L2_2 = L1_2
  L1_2 = L1_2.IsResonancePreMissionFinish
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.ConstValueClientExcelTable
    L1_2 = L1_2.GetData
    L2_2 = "BoxingClubResonance_Pre_Mission"
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.Value
    L1_2 = L1_2.IntValue
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ConstValueClientExcelTable
    L2_2 = L2_2.GetData
    L3_2 = "BoxingClubResonance_PrePhoneMessage_SubmissionID"
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.Value
    L2_2 = L2_2.IntValue
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.MissionModule
    L5_2 = L3_2
    L4_2 = L3_2.MainMissionDataPromised
    L6_2 = L1_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.ThenLuaAction
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = L3_2
      L1_3 = L0_3
      L0_3 = L0_3.TryGetMainMissionData
      L2_3 = L1_2
      L0_3 = L0_3(L1_3, L2_3)
      L1_3 = L3_2
      L2_3 = L1_3
      L1_3 = L1_3.GetSubMissionDataWithPromise
      L3_3 = L2_2
      L1_3 = L1_3(L2_3, L3_3)
      L2_3 = L1_3
      L1_3 = L1_3.ThenLuaActionOneParam
      function L3_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4, L5_4
        L1_4 = A0_4.IsFinish
        if L1_4 then
          L1_4 = G
          L1_4 = L1_4.MissionUtils
          L1_4 = L1_4.common_jump_to_mission_by_main_mission
          L2_4 = L0_3
          L1_4(L2_4)
        else
          L1_4 = CS
          L1_4 = L1_4.RPG
          L1_4 = L1_4.GameCore
          L1_4 = L1_4.ConstValueClientExcelTable
          L1_4 = L1_4.GetData
          L2_4 = "BoxingClubResonance_PrePhoneMessage_GroupID"
          L1_4 = L1_4(L2_4)
          L1_4 = L1_4.Value
          L1_4 = L1_4.IntValue
          L2_4 = G
          L2_4 = L2_4.GotoManager
          L2_4 = L2_4.Goto
          L3_4 = 4000
          L4_4 = {}
          L5_4 = L1_4
          L4_4[1] = L5_4
          L2_4(L3_4, L4_4)
        end
      end
      L1_3(L2_3, L3_3)
    end
    L4_2(L5_2, L6_2)
  else
    L1_2 = G
    L1_2 = L1_2.GotoManager
    L1_2 = L1_2.Goto
    L2_2 = GotoType2DefaultGotoID
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.GotoType
    L3_2 = L3_2.Activity
    L3_2 = #L3_2
    L2_2 = L2_2[L3_2]
    L3_2 = {}
    L5_2 = A0_2
    L4_2 = A0_2._get_available_panel_id
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_go_activity_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page_or_dialog
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_current_tab_item
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = ipairs
  L2_2 = A0_2._all_challenge_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.refresh
    L6_2(L7_2)
  end
  L1_2 = A0_2._is_locked
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_select
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_show_unlock_animation
  L1_2(L2_2)
end
L0_1._on_return_to_top = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._is_eff_played
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page_or_dialog
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2._all_challenge_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.setup_new_hint
    L6_2(L7_2)
  end
  A0_2._is_eff_played = true
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.OnNewLevelNotified
  L1_2(L2_2)
end
L0_1._try_show_unlock_animation = L3_1
return L0_1
