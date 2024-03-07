local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.TravelBrochure.TravelBrochurePasterCollectPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.PasterCollect.TravelBrochurePasterCollectRewardItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.PasterCollect.TravelBrochurePasterCollectRewardItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.PasterCollect.TravelBrochurePasterCollectItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.PasterCollect.TravelBrochurePasterCollectItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.TravelBrochureModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "TravelBrochurePasterCollectPage"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TravelBrochurePasterCollectPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  A0_2._diary_max_counts = L1_2
  L1_2 = {}
  A0_2._diary_current_count = L1_2
  A0_2._max_count = 0
  A0_2._unlock_count = 0
  A0_2._current_count = 0
  L1_2 = {}
  A0_2._previewing_quest_datas = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.override_transition_anim_type
  L3_2 = "TravelBrochurePasterBookPage"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UITransitionAnimType
  L4_2 = L4_2.Morph
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_diary
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_diary_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_quest
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_quest_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = L2_1._on_quest_updated
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
  L1_2 = A0_2.setup_to_next_zoom_by_confirm
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_to_next_zoom_left_stick_type
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickUp
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_to_next_zoom_dpad_type
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.DPadUp
  L1_2(L2_2, L3_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._update_diary_datas
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_quest_datas
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_diary_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_current_count
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._current_count
  L1_2(L2_2, L3_2)
end
L2_1._setup_info_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._diary_max_counts = L1_2
  L1_2 = {}
  A0_2._diary_current_count = L1_2
  A0_2._max_count = 0
  A0_2._unlock_count = 0
  L1_2 = {}
  A0_2._diary_datas = L1_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAllDiaryDatas
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.ID
    L8_2 = L6_2.CanPaste
    if L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._diary_datas
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._diary_max_counts
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.Client
      L9_2 = L9_2.TravelBrochureUtils
      L9_2 = L9_2.GetDiaryPasterCount
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L8_2[L7_2] = L9_2
      L8_2 = L6_2.IsUnlocked
      if L8_2 then
        L8_2 = A0_2._diary_current_count
        L9_2 = CS
        L9_2 = L9_2.RPG
        L9_2 = L9_2.Client
        L9_2 = L9_2.TravelBrochureUtils
        L9_2 = L9_2.GetDiaryUnlockedPasterCount
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        L8_2[L7_2] = L9_2
        L8_2 = A0_2._unlock_count
        L9_2 = A0_2._diary_max_counts
        L9_2 = L9_2[L7_2]
        L8_2 = L8_2 + L9_2
        A0_2._unlock_count = L8_2
      else
        L8_2 = A0_2._diary_current_count
        L8_2[L7_2] = 0
      end
      L8_2 = A0_2._max_count
      L9_2 = A0_2._diary_max_counts
      L9_2 = L9_2[L7_2]
      L8_2 = L8_2 + L9_2
      A0_2._max_count = L8_2
    end
  end
end
L2_1._update_diary_datas = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_diary
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._diary_datas
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_diary
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L2_1._setup_diary_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2._binder
  if L3_2 == nil then
    return
  end
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.TravelBrochurePasterCollectItemPanel
    L8_2 = G
    L8_2 = L8_2.TravelBrochurePasterCollectItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._diary_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A2_2 + 1
  L10_2 = A0_2._diary_max_counts
  L11_2 = L5_2.ID
  L10_2 = L10_2[L11_2]
  L11_2 = A0_2._diary_current_count
  L12_2 = L5_2.ID
  L11_2 = L11_2[L12_2]
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  return L3_2
end
L2_1._on_diary_item_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._quest_datas = L1_2
  L1_2 = {}
  A0_2._quest_total_progress = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "PasterAchievement_Quest_ID"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  if L1_2 ~= nil then
    L2_2 = 0
    L3_2 = L1_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L1_2[L5_2]
      L6_2 = L6_2.UintValue
      L7_2 = L1_1
      L8_2 = L7_2
      L7_2 = L7_2.TryGetQuestData
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._quest_datas
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._quest_total_progress
      L10_2 = L7_2.TotalProgress
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._current_count
      L9_2 = L7_2.Progress
      if L8_2 < L9_2 then
        L8_2 = L7_2.Progress
        A0_2._current_count = L8_2
      end
    end
  end
end
L2_1._update_quest_datas = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_quest
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._quest_datas
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_quest
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = 1
  L4_2 = A0_2
  L3_2 = A0_2._get_first_available_quest_index
  L3_2, L4_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_quest
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemIndex
  L4_2 = L1_2 - 1
  L2_2(L3_2, L4_2)
end
L2_1._setup_reward_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._quest_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.Status
    L7_2 = CS
    L7_2 = L7_2.BLHLCHNAJKK
    L7_2 = L7_2.CDJHHIHBNMN
    if L6_2 == L7_2 then
      return L4_2
    end
  end
  L1_2 = 0
  return L1_2
end
L2_1._get_first_available_quest_index = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2._binder
  if L3_2 == nil then
    return
  end
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  if A2_2 == 0 then
    L5_2 = 0
    if L5_2 then
      goto lbl_12
    end
  end
  L5_2 = 1
  ::lbl_12::
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_38
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.TravelBrochurePasterCollectRewardItemPanel
  L8_2 = G
  L8_2 = L8_2.TravelBrochurePasterCollectRewardItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  L6_2 = L4_2
  L5_2 = L4_2.register_preview_callback
  L7_2 = A0_2._on_preview_reward
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_select_callback
  L7_2 = A0_2._on_quest_selected
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  ::lbl_38::
  L5_2 = A0_2._quest_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = A0_2
  L6_2 = A0_2._get_collect_ratio
  L8_2 = L5_2
  L9_2 = A2_2 + 1
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L5_2
  L10_2 = false
  L11_2 = L6_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  return L3_2
end
L2_1._on_quest_item_changed = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._quest_total_progress
  L4_2 = A2_2 - 1
  L3_2 = L3_2[L4_2]
  if L3_2 == nil then
    L3_2 = 0
  end
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = 0
  L6_2 = A1_2.Progress
  L6_2 = L6_2 - L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = 1.0 * L4_2
  L5_2 = A1_2.TotalProgress
  L5_2 = L5_2 - L3_2
  L4_2 = L4_2 / L5_2
  return L4_2
end
L2_1._get_collect_ratio = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward_view
  L1_2(L2_2)
end
L2_1._on_quest_updated = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
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
L2_1._on_quest_get_reward = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2
  L2_2 = A0_2._is_previewing_reward
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.shallow_copy
    L3_2 = A0_2._previewing_quest_datas
    L2_2 = L2_2(L3_2)
    L3_2 = pairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L9_2 = A0_2
      L8_2 = A0_2._show_quest_preview
      L10_2 = L7_2
      L11_2 = false
      L8_2(L9_2, L10_2, L11_2)
    end
    L4_2 = A0_2
    L3_2 = A0_2._show_quest_preview
    L5_2 = A1_2
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
  end
end
L2_1._on_quest_selected = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.index_of_item
  L4_2 = A0_2._quest_datas
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L3_2 - 1
  L4_2 = A0_2._binder
  L4_2 = L4_2.list_quest
  L5_2 = L4_2
  L4_2 = L4_2.GetShownItemByItemIndex
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 ~= nil then
    L5_2 = L4_2.UserObjectData
    if L5_2 ~= nil then
      goto lbl_20
    end
  end
  L5_2 = nil
  do return L5_2 end
  ::lbl_20::
  L5_2 = L4_2.UserObjectData
  L6_2 = L5_2
  L5_2 = L5_2.show_reward
  L7_2 = A2_2
  L8_2 = false
  return L5_2(L6_2, L7_2, L8_2)
end
L2_1._show_quest_preview = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.index_of_item
  L4_2 = A0_2._previewing_quest_datas
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if A1_2 then
    if L3_2 == nil then
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = A0_2._previewing_quest_datas
      L6_2 = A2_2
      L4_2(L5_2, L6_2)
    end
  elseif L3_2 ~= nil then
    L4_2 = table
    L4_2 = L4_2.remove
    L5_2 = A0_2._previewing_quest_datas
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.incontrol_tip_close
  L6_2 = A0_2
  L5_2 = A0_2._is_previewing_reward
  L5_2 = L5_2(L6_2)
  L5_2 = not L5_2
  L4_2.IsShowTip = L5_2
end
L2_1._on_preview_reward = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._previewing_quest_datas
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  return L1_2
end
L2_1._is_previewing_reward = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.shallow_copy
    L3_2 = A0_2._previewing_quest_datas
    L2_2 = L2_2(L3_2)
    L3_2 = pairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L9_2 = A0_2
      L8_2 = A0_2._show_quest_preview
      L10_2 = L7_2
      L11_2 = false
      L8_2(L9_2, L10_2, L11_2)
    end
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._get_first_available_quest_index
      L2_2 = L2_2(L3_2)
      if 0 < L2_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.list_quest
        L4_2 = L3_2
        L3_2 = L3_2.MovePanelToItemIndex
        L5_2 = L2_2 - 1
        L3_2(L4_2, L5_2)
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.get_zoom_navigation_target
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_short_cut_hint
  L3_2(L4_2)
end
L2_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._refresh_short_cut_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._get_first_selected_diary_object
    return L2_2(L3_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if L1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._get_first_selected_quest_object
      return L2_2(L3_2)
    end
  end
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_first_shown_item_index
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_quest
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2 - 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_quest
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    if L3_2 ~= nil then
      goto lbl_18
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_18::
  L3_2 = L2_2.UserObjectData
  L4_2 = L3_2
  L3_2 = L3_2.get_first_selected_object
  return L3_2(L4_2)
end
L2_1._get_first_selected_quest_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 0
  L3_2 = A1_2.ItemTotalCount
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A1_2
    L6_2 = A1_2.IsItemWithinViewport
    L8_2 = L5_2
    L9_2 = 0.9
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 then
      L6_2 = L5_2 + 1
      return L6_2
    end
  end
  L2_2 = 1
  return L2_2
end
L2_1._get_first_shown_item_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_diary
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      goto lbl_13
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_13::
  L2_2 = L1_2.UserObjectData
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_object
  return L2_2(L3_2)
end
L2_1._get_first_selected_diary_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L2_1._in_control_exit_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_previewing_reward
    L2_2 = L2_2(L3_2)
    L2_2 = not L2_2
    return L2_2
  end
  L2_2 = true
  return L2_2
end
L2_1._is_can_back_zoom = L3_1
return L2_1
