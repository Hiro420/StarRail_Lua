local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonRewardPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonRewardTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonRewardTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonRewardInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonRewardInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.QuestUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonRewardPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonRewardPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveBlack
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._final_quest_id = nil
  L1_2 = {}
  A0_2._dungeon_row_list = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.TreasureDungeoActivityQuestConfigExcelTable
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2()
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L3_2 = L2_2.ID
    if L3_2 == 0 then
      L3_2 = L2_2.QuestList
      L3_2 = L3_2[0]
      A0_2._final_quest_id = L3_2
    else
      L3_2 = A0_2._dungeon_row_list
      L4_2 = A0_2._dungeon_row_list
      L4_2 = #L4_2
      L4_2 = L4_2 + 1
      L3_2[L4_2] = L2_2
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_init_dungeon_index
  L2_2 = L2_2(L3_2)
  A0_2._init_index = L2_2
  L2_2 = A0_2._dungeon_row_list
  L3_2 = A0_2._init_index
  L2_2 = L2_2[L3_2]
  A0_2._cur_dungeon_row = L2_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = 0
  L2_2 = ipairs
  L3_2 = A0_2._dungeon_row_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.QuestList
    L8_2 = 0
    L9_2 = L7_2.Length
    L9_2 = L9_2 - 1
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = L7_2[L11_2]
      L13_2 = CS
      L13_2 = L13_2.RPG
      L13_2 = L13_2.Client
      L13_2 = L13_2.GlobalVars
      L13_2 = L13_2.s_ModuleManager
      L13_2 = L13_2.QuestModule
      L14_2 = L13_2
      L13_2 = L13_2.TryGetQuestData
      L15_2 = L12_2
      L13_2 = L13_2(L14_2, L15_2)
      if L13_2 == nil then
      else
        L14_2 = L13_2.Status
        L15_2 = CS
        L15_2 = L15_2.LEOGBBOPKKO
        L15_2 = L15_2.JKFPIINHGPD
        if L14_2 == L15_2 then
          return L5_2
        else
          L14_2 = L13_2.Status
          L15_2 = CS
          L15_2 = L15_2.LEOGBBOPKKO
          L15_2 = L15_2.KBBBFCIHJPC
          if L14_2 == L15_2 and L1_2 == 0 then
            L1_2 = L5_2
          end
        end
      end
    end
  end
  if L1_2 == 0 then
    L2_2 = 1
    return L2_2
  else
    return L1_2
  end
end
L0_1._get_init_dungeon_index = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
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
  L4_2 = L0_1._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dungeon_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_get_dungeon_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.quest_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_get_quest_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.final_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_select_callback
  L3_2 = A0_2._on_panel_selected
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "TreasureDungeonFinalReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_timer
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetTreasureDungeonActivityData
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.SetTargetTimeByTimeStamp
  L4_2 = L1_2.EndTimeStamp
  L5_2 = A0_2._on_timer_expire
  L6_2 = A0_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_timer = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.final_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._final_quest_id
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.quest_list
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetTreasureDungeonActivityData
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.IsInSchedule
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_16
    end
  end
  do return end
  ::lbl_16::
  L3_2 = A0_2
  L2_2 = A0_2._refresh_dungeon_list
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_quest_list
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_progress
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_final_reward
  L2_2(L3_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.dungeon_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._dungeon_row_list
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dungeon_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_dungeon_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._quest_ids = L1_2
  L1_2 = A0_2._cur_dungeon_row
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.create_lua_table_from_cs_array
    L2_2 = A0_2._cur_dungeon_row
    L2_2 = L2_2.QuestList
    L1_2 = L1_2(L2_2)
    A0_2._quest_ids = L1_2
    L1_2 = G
    L1_2 = L1_2.QuestUtils
    L1_2 = L1_2.sort_quest
    L2_2 = A0_2._quest_ids
    L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.quest_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._quest_ids
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.quest_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_quest_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._cur_dungeon_row
  L1_2 = L1_2.DungeonGroupID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TreasureDungeonModule
  L3_2 = L2_2
  L2_2 = L2_2.GetGroupDataByID
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.IsOpened
  if not L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_TreasureDungeon_Activity_ChallengeLocked"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_progress
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  else
    L3_2 = L2_2.HasRecord
    if not L3_2 then
      L3_2 = L2_2.IsDoing
      if not L3_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.txt_title
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetTextID
        L5_2 = "UIText_TreasureDungeon_Activity_ChallengeProgress_NoRecord"
        L3_2(L4_2, L5_2)
        L3_2 = A0_2._binder
        L3_2 = L3_2.txt_progress
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetActive
        L5_2 = false
        L3_2(L4_2, L5_2)
    end
    else
      L3_2 = L2_2.SimpleLevelData
      L3_2 = L3_2.IsFinished
      if not L3_2 then
        L3_2 = L2_2.SimpleLevelData
        L4_2 = A0_2._binder
        L4_2 = L4_2.txt_title
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetTextID
        L6_2 = "UIText_TreasureDungeon_Activity_ChallengeProgress"
        L4_2(L5_2, L6_2)
        L4_2 = A0_2._binder
        L4_2 = L4_2.txt_progress
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetActive
        L6_2 = true
        L4_2(L5_2, L6_2)
        L4_2 = A0_2._binder
        L4_2 = L4_2.txt_progress
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetTextID
        L6_2 = "UIText_TreasureDungeon_Activity_ChallengeProgress_Normal"
        L7_2 = L3_2.HighestFloorRecord
        L8_2 = L3_2.MaxFloor
        L4_2(L5_2, L6_2, L7_2, L8_2)
      else
        L3_2 = L2_2.SimpleLevelData
        L3_2 = L3_2.IsFinished
        if L3_2 then
          L3_2 = L2_2.HardLevelData
          L3_2 = L3_2.HasRecord
          if not L3_2 then
            L3_2 = L2_2.HardLevelData
            L3_2 = L3_2.IsDoing
            if not L3_2 then
              L3_2 = A0_2._binder
              L3_2 = L3_2.txt_title
              L4_2 = L3_2
              L3_2 = L3_2.SafeSetTextID
              L5_2 = "UIText_TreasureDungeon_Activity_ChallengeProgress_NormalFinish"
              L3_2(L4_2, L5_2)
              L3_2 = A0_2._binder
              L3_2 = L3_2.txt_progress
              L4_2 = L3_2
              L3_2 = L3_2.SafeSetActive
              L5_2 = false
              L3_2(L4_2, L5_2)
          end
        end
        else
          L3_2 = L2_2.HardLevelData
          L4_2 = A0_2._binder
          L4_2 = L4_2.txt_title
          L5_2 = L4_2
          L4_2 = L4_2.SafeSetTextID
          L6_2 = "UIText_TreasureDungeon_Activity_ChallengeProgress"
          L4_2(L5_2, L6_2)
          L4_2 = A0_2._binder
          L4_2 = L4_2.txt_progress
          L5_2 = L4_2
          L4_2 = L4_2.SafeSetActive
          L6_2 = true
          L4_2(L5_2, L6_2)
          L4_2 = A0_2._binder
          L4_2 = L4_2.txt_progress
          L5_2 = L4_2
          L4_2 = L4_2.SafeSetTextID
          L6_2 = "UIText_TreasureDungeon_Activity_ChallengeProgress_Hard"
          L7_2 = L3_2.HighestFloorRecord
          L4_2(L5_2, L6_2, L7_2)
        end
      end
    end
  end
end
L0_1._refresh_progress = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.final_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1._refresh_final_reward = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  L5_2 = A0_2._dungeon_row_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  if L4_2 ~= nil then
    L6_2 = L4_2.is_destroyed
    if not L6_2 then
      goto lbl_28
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2.create_panel
  L8_2 = G
  L8_2 = L8_2.TreasureDungeonRewardTabItem
  L9_2 = G
  L9_2 = L9_2.TreasureDungeonRewardTabItemBinder
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L4_2 = L6_2
  L7_2 = L4_2
  L6_2 = L4_2.bind
  L8_2 = L3_2.transform
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_click_callback
  L8_2 = A0_2._on_dungeon_item_click
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L3_2.UserObjectData = L4_2
  ::lbl_28::
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L8_2 = A0_2._cur_dungeon_row
  L8_2 = L5_2 == L8_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_get_dungeon_item = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_25
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.TreasureDungeonRewardInfoPanel
  L8_2 = G
  L8_2 = L8_2.TreasureDungeonRewardInfoPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_select_callback
  L7_2 = A0_2._on_panel_selected
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L3_2.UserObjectData = L4_2
  ::lbl_25::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._quest_ids
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_get_quest_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_dungeon_row
  if L2_2 == A1_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ActivityModule
  L3_2 = L2_2
  L2_2 = L2_2.GetTreasureDungeonActivityData
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.IsInSchedule
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_20
    end
  end
  do return end
  ::lbl_20::
  A0_2._cur_dungeon_row = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_dungeon_list
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect
  L3_2.verticalNormalizedPosition = 1
  L4_2 = A0_2
  L3_2 = A0_2._refresh_quest_list
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_progress
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.quest_list
  L4_2 = L3_2
  L3_2 = L3_2.PlayFadeIn
  L3_2(L4_2)
end
L0_1._on_dungeon_item_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_quest_updated = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page
  L2_2 = L2_2(L3_2)
  if L2_2 and nil ~= A1_2 then
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.show_reward_dialog
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.create_lua_table_from_cs_list
    L4_2 = A1_2
    L3_2, L4_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_quest_get_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_timer_expire = L1_1
function L1_1(A0_2, A1_2)
  A0_2._cur_selected_panel = A1_2
end
L0_1._on_panel_selected = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.dungeon_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._init_index
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.UserObjectData
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
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
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group
    L2_2.alpha = 1
    L3_2 = A0_2
    L2_2 = A0_2._refresh_short_cut_hint
    L2_2(L3_2)
    A0_2._cur_selected_panel = nil
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      A0_2._cur_selected_panel = nil
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2._get_zone_2_navigation_target
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.canvas_group
      L2_2.alpha = 0.5
      L3_2 = A0_2
      L2_2 = A0_2._refresh_short_cut_hint
      L2_2(L3_2)
    end
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if L1_2 ~= L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_in_special_zoom
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      goto lbl_14
    end
  end
  L2_2 = 38
  ::lbl_14::
  if not L2_2 then
    L2_2 = 32
  end
  L4_2 = A0_2
  L3_2 = A0_2.setup_short_cut_hint_panel
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._refresh_short_cut_hint = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 38
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._cur_selected_panel = nil
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
end
L0_1._on_leave_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_to_next_zoom_left_stick_type
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickRight
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_to_next_zoom_dpad_type
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.DPadRight
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = A0_2._quest_ids
  L2_2 = #L2_2
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.quest_list
    L6_2 = L5_2
    L5_2 = L5_2.GetShownItemByItemIndex
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.UserObjectData
      L8_2 = L6_2
      L7_2 = L6_2.is_reward_can_receive
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L8_2 = L6_2
        L7_2 = L6_2.get_first_selected_object
        return L7_2(L8_2)
      end
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.quest_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.UserObjectData
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1._get_zone_2_navigation_target = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_can_to_special_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_in_special_zoom
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = CS
      L2_2 = L2_2.InControl
      L2_2 = L2_2.InputControlType
      L2_2 = L2_2.Action3
      L2_2 = #L2_2
      if A1_2 == L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.final_reward_panel
        L3_2 = L2_2
        L2_2 = L2_2.get_first_selected_object
        L2_2 = L2_2(L3_2)
        L4_2 = A0_2
        L3_2 = A0_2.set_special_zoom_navigation_target
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L0_1._on_in_control_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L2_2 = A0_2._cur_selected_panel
    if L2_2 ~= nil then
      L2_2 = A0_2._cur_selected_panel
      L3_2 = L2_2
      L2_2 = L2_2.get_config_ids
      L2_2 = L2_2(L3_2)
      L3_2 = {}
      L3_2.items = L2_2
      L4_2 = G
      L4_2 = L4_2.InventoryUtils
      L4_2 = L4_2.show_item_detail_display_dialog_for_gamepad
      L5_2 = L3_2
      L4_2(L5_2)
    end
  end
end
L0_1._on_in_control_action_click = L1_1
return L0_1
