local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPenaconyGift.PenaconyGiftItemInfoPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPenaconyGift.PenaconyGiftResultItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPenaconyGift.PenaconyGiftResultItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPenaconyGift.PenaconyGiftReplyPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPenaconyGift.PenaconyGiftReplyPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityMonsterResearchModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ActivityMonsterResearchConstExcelTable
L2_1 = L2_1.GetData
L3_1 = "PenaconyGift_ActivityPanel_Goto_MappingInfo"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ActivityMonsterResearchConstExcelTable
L3_1 = L3_1.GetData
L4_1 = "PenaconyGift_Goto_MapEntranceID"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L4_1 = "GiftInfoPage_FadeOut"
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "PenaconyGiftItemInfoPage"
L7_1 = G
L7_1 = L7_1.UIController
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PenaconyGiftItemInfoPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
end
L5_1.ctor = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._research_id = A1_2
  A0_2._is_in_mission = A2_2
  A0_2._is_hide_goto = A3_2
  L4_2 = L0_1
  L5_2 = L4_2
  L4_2 = L4_2.TryGetResearchData
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._research_data = L4_2
  L4_2 = A0_2._research_data
  L4_2 = L4_2.ResearchRow
  A0_2._research_row = L4_2
  L4_2 = A0_2._research_data
  L4_2 = L4_2.QuestionDataRow
  A0_2._question_row = L4_2
  A0_2._mission_data = nil
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.MainMissionDataPromised
  L6_2 = A0_2._research_data
  L6_2 = L6_2.ResearchRow
  L6_2 = L6_2.MissionID
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2
  L4_2 = L4_2.ThenLuaAction
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = L1_1
    L1_3 = L0_3
    L0_3 = L0_3.TryGetMainMissionData
    L2_3 = A0_2._research_data
    L2_3 = L2_3.ResearchRow
    L2_3 = L2_3.MissionID
    L0_3 = L0_3(L1_3, L2_3)
    A0_2._mission_data = L0_3
  end
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._init_scroll_view_data
  L4_2(L5_2)
end
L5_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MonsterResearchTakeReward
  L4_2 = A0_2._on_reward_taken
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = A0_2._on_btn_get
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_reply
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = A0_2._reply_ids
  L3_2 = #L3_2
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = A0_2._reward_data
  L3_2 = #L3_2
  L4_2 = A0_2._on_reward_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L5_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._question_row
  L3_2 = L3_2.Question
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_reply
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L5_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L5_1._on_return_to_top = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MonsterResearchTakeReward
  L4_2 = A0_2._on_reward_taken
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._research_data
  L1_2 = L1_2.IsComplete
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = 33
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
end
L5_1._init_ui_navigation = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L2_2 = {}
    L3_2 = A0_2._config_ids
    L2_2.items = L3_2
    L3_2 = G
    L3_2 = L3_2.InventoryUtils
    L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
    L4_2 = L2_2
    L3_2(L4_2)
  end
  if A1_2 == "Menu_UnchangeY" then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.create_lua_table_from_cs_array
    L3_2 = A0_2._research_data
    L3_2 = L3_2.ResearchRow
    L3_2 = L3_2.MaterialList
    L2_2 = L2_2(L3_2)
    L3_2 = {}
    L4_2 = 1
    L5_2 = #L2_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L3_2
      L10_2 = L2_2[L7_2]
      L10_2 = L10_2.ItemID
      L8_2(L9_2, L10_2)
    end
    L4_2 = {}
    L4_2.items = L3_2
    L5_2 = G
    L5_2 = L5_2.InventoryUtils
    L5_2 = L5_2.show_item_detail_display_dialog_for_gamepad
    L6_2 = L4_2
    L5_2(L6_2)
  end
end
L5_1._on_in_control_action_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_close
  L1_2(L2_2)
end
L5_1._in_control_exit_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_in_mission
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.MonsterResearchSubmitProgressFinish
    L3_2 = A0_2._research_id
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._close_with_check
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L5_1._on_close = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._exit_callback
  L4_2 = A0_2._exit_callback_handler
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L5_1._close_with_check = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_hide_goto
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._close_with_check
    L3_2 = true
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._mission_data
  L2_2 = L1_1.TrackingMission
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_mission_tracked
    L1_2(L2_2)
  else
    function L1_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_mission_tracked
      L0_3(L1_3)
    end
    L2_2 = G
    L2_2 = L2_2.MissionUtils
    L2_2 = L2_2.set_track_mission_with_check
    L3_2 = A0_2._mission_data
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L5_1._on_btn_go = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._mission_data
  L1_2 = L1_2.IsFloorConnected
  L1_2 = not L1_2
  if L1_2 then
    L2_2 = G
    L2_2 = L2_2.MissionUtils
    L2_2 = L2_2.open_map_with_locate_target_main_mission
    L3_2 = A0_2._mission_data
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._close_with_check
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L5_1._on_mission_tracked = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.LIICFAOIMDO
  L3_2 = A0_2._research_id
  L1_2(L2_2, L3_2)
end
L5_1._on_btn_get = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._is_in_mission
    if L2_2 then
      L2_2 = G
      L2_2 = L2_2.ToastModule
      L2_2 = L2_2.Instance
      L3_2 = L2_2
      L2_2 = L2_2.pasue_toast
      L4_2 = true
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.set_exit_after_transition
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = G
      L2_2 = L2_2.UIManager
      L2_2 = L2_2.load_and_async_show
      L3_2 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchSubmit.ActivityMonsterResearchSubmitRewardPage"
      L4_2 = A1_2
      L5_2 = nil
      L6_2 = nil
      L7_2 = A0_2._research_id
      L8_2 = A0_2._question_row
      L8_2 = L8_2.QuestionID
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    else
      L2_2 = G
      L2_2 = L2_2.Utils
      L2_2 = L2_2.create_lua_table_from_cs_list
      L3_2 = A1_2
      L2_2 = L2_2(L3_2)
      L3_2 = G
      L3_2 = L3_2.UIManager
      L3_2 = L3_2.load_and_show
      L4_2 = "Ui.Common.RewardDialog"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L5_1._on_reward_taken = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.PenaconyGiftReplyPanel
    L8_2 = G
    L8_2 = L8_2.PenaconyGiftReplyPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._reply_ids
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L5_1._on_item_change = L6_1
function L6_1(A0_2, A1_2, A2_2)
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
  L5_2 = A0_2._reward_data
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
  L7_2 = L4_2
  L6_2 = L4_2.set_attachment_getted
  L8_2 = A0_2._research_data
  L8_2 = L8_2.IsRewardTaken
  L6_2(L7_2, L8_2)
  return L3_2
end
L5_1._on_reward_item_change = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A1_2
  L3_2 = A1_2.set_view_active_by_scale
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A1_2
  L3_2 = A1_2.setup_view_by_reward_item
  L5_2 = A0_2._material_table
  L5_2 = L5_2[A2_2]
  L3_2(L4_2, L5_2)
end
L5_1._on_panel_setup = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reply
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_material
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_state
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_gift
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._research_data
  L1_2(L2_2, L3_2)
end
L5_1._refresh = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.CreateRewardItemTableSorted
  L2_2 = A0_2._research_row
  L2_2 = L2_2.RewardID
  L1_2 = L1_2(L2_2)
  A0_2._reward_data = L1_2
  L1_2 = {}
  A0_2._config_ids = L1_2
  L1_2 = 1
  L2_2 = A0_2._reward_data
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._config_ids
    L7_2 = A0_2._reward_data
    L7_2 = L7_2[L4_2]
    L7_2 = L7_2.ItemID
    L5_2(L6_2, L7_2)
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._question_row
  L2_2 = L2_2.ReplyID
  L1_2 = L1_2(L2_2)
  A0_2._reply_ids = L1_2
end
L5_1._init_scroll_view_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_reward
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L5_1._setup_reward_list = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_reply
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L5_1._setup_reply = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._material_table = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._research_data
  L2_2 = L2_2.ResearchRow
  L2_2 = L2_2.MaterialList
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = {}
    L7_2 = L1_2[L5_2]
    L7_2 = L7_2.ItemID
    L6_2.ItemID = L7_2
    L7_2 = L1_2[L5_2]
    L7_2 = L7_2.ItemNum
    L6_2.Count = L7_2
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._material_table
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.material_node_list
  L3_2 = L2_2
  L2_2 = L2_2.register_panel_setup_callback
  L4_2 = A0_2._on_panel_setup
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.material_node_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._material_table
  L5_2 = nil
  L6_2 = nil
  L7_2 = NavigationType
  L7_2 = L7_2.Horizontal
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L5_1._setup_material = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_go
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._research_data
  L3_2 = L3_2.IsUnlock
  if L3_2 then
    L3_2 = A0_2._research_data
    L3_2 = L3_2.IsComplete
    L3_2 = not L3_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_get
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._research_data
  L3_2 = L3_2.IsComplete
  if L3_2 then
    L3_2 = A0_2._research_data
    L3_2 = L3_2.IsRewardTaken
    L3_2 = not L3_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_got
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._research_data
  L3_2 = L3_2.IsRewardTaken
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_no_complete
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._research_data
  L3_2 = L3_2.IsComplete
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_complete
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._research_data
  L3_2 = L3_2.IsComplete
  L1_2(L2_2, L3_2)
end
L5_1._setup_state = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._exit_callback = A1_2
  A0_2._exit_callback_handler = A2_2
end
L5_1.set_exit_callback_with_one_param = L6_1
return L5_1
