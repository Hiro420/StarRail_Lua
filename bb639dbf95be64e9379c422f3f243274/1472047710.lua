local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.Reward.FantasticStoryRewardPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.Reward.FantasticStoryFinalQuestPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.Reward.FantasticStoryParagraphRewardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.Reward.FantasticStoryQuestRewardPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FantasticStoryRewardPage"
L2_1 = G
L2_1 = L2_1.BasePage
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FantasticStoryRewardPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
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
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.FantasticStoryActivityModule
  A0_2._fantastic_module = L1_2
  A0_2._default_paragraph_panel = nil
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_paragraph_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_quest_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._fantastic_module
  L2_2 = L1_2
  L1_2 = L1_2.GetSortedParagraphData
  L1_2 = L1_2(L2_2)
  A0_2._paragraph_data_list = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.paragraph_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._paragraph_data_list
  L3_2 = L3_2.Count
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.paragraph_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._default_paragraph_panel
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.paragraph_scroll_view
    L2_2 = L1_2
    L1_2 = L1_2.GetShownItemByItemIndex
    L3_2 = 0
    L1_2 = L1_2(L2_2, L3_2)
    L1_2 = L1_2.UserObjectData
    A0_2._default_paragraph_panel = L1_2
  end
  L1_2 = A0_2._default_paragraph_panel
  L2_2 = L1_2
  L1_2 = L1_2.trigger_click
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetFantasticStoryActivityData
  L1_2 = L1_2(L2_2)
  A0_2._activity_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_final_quest_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.FantasticStoryFinalQuestPanel
  L4_2 = G
  L4_2 = L4_2.FantasticStoryFinalQuestPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._final_quest_panel = L1_2
  L1_2 = A0_2._final_quest_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_final_quest_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._final_quest_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._setup_final_quest_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.paragraph_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_paragraph_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._init_paragraph_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.quest_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_quest_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._init_quest_view = L1_1
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
  L7_2 = L7_2.FantasticStoryParagraphRewardPanel
  L8_2 = G
  L8_2 = L8_2.FantasticStoryParagraphRewardPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_btn_root_callback
  L7_2 = A0_2._on_paragraph_select
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L3_2.UserObjectData = L4_2
  ::lbl_25::
  L5_2 = A0_2._default_paragraph_panel
  if L5_2 == nil then
    L5_2 = A0_2._paragraph_data_list
    L5_2 = L5_2[A2_2]
    L5_2 = L5_2.HasRewardAvail
    if L5_2 then
      A0_2._default_paragraph_panel = L4_2
    end
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._paragraph_data_list
  L7_2 = L7_2[A2_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_paragraph_change = L1_1
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
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.FantasticStoryQuestRewardPanel
  L8_2 = G
  L8_2 = L8_2.FantasticStoryQuestRewardPanelBinder
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
  L7_2 = A0_2._quest_ids
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A0_2._select_paragraph_reward_panel
  L8_2 = L8_2.paragraph_data
  L8_2 = L8_2.IsUnlock
  L8_2 = not L8_2
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L0_1._on_quest_change = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._select_paragraph_reward_panel
  if L2_2 then
    L2_2 = A0_2._select_paragraph_reward_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_checked
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  A0_2._select_paragraph_reward_panel = A1_2
  L2_2 = A0_2._select_paragraph_reward_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_checked
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = A1_2.paragraph_data
  L3_2 = L3_2.QuestList
  L2_2 = L2_2(L3_2)
  A0_2._quest_ids = L2_2
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2._quest_ids
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = CS
    L2_3 = L2_3.RPG
    L2_3 = L2_3.Client
    L2_3 = L2_3.GlobalVars
    L2_3 = L2_3.s_ModuleManager
    L2_3 = L2_3.QuestModule
    L3_3 = L2_3
    L2_3 = L2_3.TryGetQuestData
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = CS
    L3_3 = L3_3.RPG
    L3_3 = L3_3.Client
    L3_3 = L3_3.GlobalVars
    L3_3 = L3_3.s_ModuleManager
    L3_3 = L3_3.QuestModule
    L4_3 = L3_3
    L3_3 = L3_3.TryGetQuestData
    L5_3 = A1_3
    L3_3 = L3_3(L4_3, L5_3)
    L4_3 = L2_3.Status
    L5_3 = L3_3.Status
    if L4_3 == L5_3 then
      L4_3 = A0_3 < A1_3
      return L4_3
    end
    L4_3 = L2_3.Status
    L5_3 = CS
    L5_3 = L5_3.BLHLCHNAJKK
    L5_3 = L5_3.CDJHHIHBNMN
    if L4_3 ~= L5_3 then
      L4_3 = L3_3.Status
      L5_3 = CS
      L5_3 = L5_3.BLHLCHNAJKK
      L5_3 = L5_3.CDJHHIHBNMN
      if L4_3 ~= L5_3 then
        goto lbl_49
      end
    end
    L4_3 = L2_3.Status
    L5_3 = CS
    L5_3 = L5_3.BLHLCHNAJKK
    L5_3 = L5_3.CDJHHIHBNMN
    L4_3 = L4_3 == L5_3
    do return L4_3 end
    ::lbl_49::
    L4_3 = L2_3.Status
    L4_3 = #L4_3
    L5_3 = L3_3.Status
    L5_3 = #L5_3
    L4_3 = L4_3 < L5_3
    return L4_3
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.quest_scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._quest_ids
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.quest_scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.quest_scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.PlayFadeIn
  L2_2(L3_2)
end
L0_1._on_paragraph_select = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._select_paragraph_reward_panel
  if L2_2 then
    L2_2 = A0_2._select_paragraph_reward_panel
    L3_2 = L2_2
    L2_2 = L2_2.refresh_state
    L2_2(L3_2)
    L2_2 = A0_2._select_paragraph_reward_panel
    L3_2 = L2_2
    L2_2 = L2_2.trigger_click
    L2_2(L3_2)
  end
  L2_2 = A0_2._final_quest_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh
  L2_2(L3_2)
end
L0_1._on_quest_get_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._final_quest_panel
  L2_2 = L1_2
  L1_2 = L1_2.try_play_can_recieve_anim
  L1_2(L2_2)
end
L0_1._on_entrance_anim_end = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.canvas_group_zoom_1
    L3_2.alpha = 1
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2.get_navigation_target
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = 31
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.canvas_group_zoom_1
    L3_2.alpha = 0.5
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2._get_zoom_2_first_select_object
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = 35
    L3_2(L4_2, L5_2)
  end
  L3_2 = nil
  return L3_2
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._select_paragraph_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_navigation_btn_gameobject
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.quest_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.UserObjectData
  L3_2 = L2_2
  L2_2 = L2_2.get_navigation_btn_gameobject
  return L2_2(L3_2)
end
L0_1._get_zoom_2_first_select_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L2_2 = true
      return L2_2
    end
  end
end
L0_1._is_can_to_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
return L0_1
