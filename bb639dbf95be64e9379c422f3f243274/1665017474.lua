local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchMonsterInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchMonsterInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchRewardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchRewardPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchInfoPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonsterResearchInfoPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityMonsterResearchModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ActivityMonsterResearchConstExcelTable
L2_1 = L2_1.GetData
L3_1 = "MonsterResearch_ActivityPanel_Goto_MappingInfo"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonsterResearchInfoPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._research_data = A1_2
  A0_2._index = A2_2
  A0_2._is_hide_goto = A3_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._material_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._reward_config_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._reward_config_ids
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._reward_config_ids
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1._on_left_stick_button_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MonsterResearchDataRefresh
  L4_2 = A0_2._on_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MonsterResearchTakeReward
  L4_2 = A0_2._on_take_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_receive
  L4_2 = A0_2._on_click_receive
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go_to
  L4_2 = A0_2._on_click_go_to
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityMonsterResearchMonsterInfoPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonsterResearchMonsterInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._monster_info_panel = L1_2
  L1_2 = A0_2._monster_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_monster_info_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchSubmit.ActivityMonsterResearchSubmitItem"
  L6_2 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchSubmit.ActivityMonsterResearchSubmitItemBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._material_panel = L1_2
  L1_2 = A0_2._material_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_material_list
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._generate_material_table
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityMonsterResearchRewardPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonsterResearchRewardPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._reward_panel = L1_2
  L1_2 = A0_2._reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reward
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._reward_config_ids = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._generate_reward_table
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._material_table = L1_2
  L1_2 = 0
  L2_2 = A0_2._research_data
  L2_2 = L2_2.ResearchRow
  L2_2 = L2_2.MaterialList
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = {}
    L6_2 = A0_2._research_data
    L6_2 = L6_2.ResearchRow
    L6_2 = L6_2.MaterialList
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.ItemID
    L5_2.ItemID = L6_2
    L6_2 = A0_2._research_data
    L6_2 = L6_2.ResearchRow
    L6_2 = L6_2.MaterialList
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.ItemNum
    L5_2.Count = L6_2
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._material_table
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._generate_material_table = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.CreateRewardItemTableSorted
  L2_2 = A0_2._research_data
  L2_2 = L2_2.ResearchRow
  L2_2 = L2_2.RewardID
  L1_2 = L1_2(L2_2)
  A0_2._reward_table = L1_2
  L1_2 = {}
  A0_2._reward_config_ids = L1_2
  L1_2 = 1
  L2_2 = A0_2._reward_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._reward_config_ids
    L7_2 = A0_2._reward_table
    L7_2 = L7_2[L4_2]
    L7_2 = L7_2.ItemID
    L5_2(L6_2, L7_2)
  end
end
L0_1._generate_reward_table = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityMonsterResearchQuestionExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._research_data
  L2_2 = L2_2.SelectedQuestionId
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_research_info
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_monster_info
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_btn
  L2_2(L3_2)
  L2_2 = A0_2._reward_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._research_data
  L4_2 = L4_2.ResearchRow
  L4_2 = L4_2.RewardID
  L5_2 = A0_2._research_data
  L5_2 = L5_2.IsRewardTaken
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_refresh = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_close
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_page_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_index_small
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._index
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_complete
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._research_data
  L4_2 = L4_2.IsRewardTaken
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_complete_small
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_in_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._research_data
  L4_2 = L4_2.ID
  L5_2 = L1_1.CurrentInProgressResearchId
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_answer
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._research_data
  L4_2 = L4_2.IsComplete
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_forbid_answer
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._research_data
  L4_2 = L4_2.IsComplete
  if not L4_2 then
    L4_2 = A0_2._research_data
    L5_2 = L4_2
    L4_2 = L4_2.IsMaterialSeen
    L4_2 = L4_2(L5_2)
  end
  L4_2 = not L4_2 or A1_2 == nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_material
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._research_data
  L4_2 = L4_2.IsComplete
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  if A1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_question
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A1_2.Question
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._research_data
    L2_2 = L2_2.IsComplete
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.create_short_cut_hint_panel
      L4_2 = 33
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_answer
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = A1_2.Answer
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._research_data
      L3_2 = L2_2
      L2_2 = L2_2.IsMaterialSeen
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.create_short_cut_hint_panel
        L4_2 = 31
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.txt_forbid_answer
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = "UIText_ActivityMonsterResearch_Empty"
        L2_2(L3_2, L4_2)
      else
        L2_2 = A0_2._research_data
        L3_2 = L2_2
        L2_2 = L2_2.IsMaterialSeen
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L3_2 = A0_2
          L2_2 = A0_2.create_short_cut_hint_panel
          L4_2 = 31
          L2_2(L3_2, L4_2)
          L3_2 = A0_2
          L2_2 = A0_2._setup_material_panel
          L2_2(L3_2)
        end
      end
    end
  else
    L3_2 = A0_2
    L2_2 = A0_2.create_short_cut_hint_panel
    L4_2 = 31
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_question
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Achievement_HideDescription"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_forbid_answer
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityMonsterResearch_Tip_1"
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_research_info = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    L2_2 = A0_2._monster_info_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A1_2.MonsterID
    L5_2 = A0_2._index
    L6_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2._research_data
    L2_2 = L2_2.ResearchRow
    L2_2 = L2_2.QuestionID
    L2_2 = L2_2.Length
    L2_2 = 1 < L2_2
    L3_2 = A0_2._monster_info_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_is_multi_question_selected
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L2_2 = A0_2._monster_info_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_unselect_view
    L4_2 = A0_2._index
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_monster_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._research_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ActivityMonsterResearchDataStatus
  L2_2 = L2_2.IsStart
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_go_to
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._is_hide_goto
    L3_2 = not L3_2
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_receive
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_go_to
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._research_data
  L1_2 = L1_2.IsRewardTaken
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_receive
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetInteractable
    L3_2 = A0_2._research_data
    L3_2 = L3_2.IsComplete
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_receive
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_receive
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._material_panel
  L2_2 = L1_2
  L1_2 = L1_2.rebind_child_node
  L3_2 = A0_2._material_table
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._material_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._material_table
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._material_panel
  L2_2 = L1_2
  L1_2 = L1_2.update_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Horizontal
  L1_2(L2_2, L3_2)
end
L0_1._setup_material_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L2_2 = L1_2
  L1_2 = L1_2.CFCHJLGFNCC
  L3_2 = A0_2._research_data
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L0_1._on_click_receive = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MappingInfoExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L2_1
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MapEntryExcelTable
  L2_2 = L2_2.dataDict
  L3_2 = 0
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.BigMapUtils
    L9_2 = L9_2.IsShowAreaMap
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = L1_2.FloorID
      L10_2 = L8_2.FloorID
      if L9_2 == L10_2 then
        L3_2 = L8_2.ID
        break
      end
    end
  end
  if L3_2 == 0 then
    return
  end
  L4_2 = G
  L4_2 = L4_2.GotoManager
  L4_2 = L4_2.GotoByType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.GotoType
  L5_2 = L5_2.AreaSwitch
  L5_2 = #L5_2
  L6_2 = {}
  L7_2 = L3_2
  L8_2 = L2_1
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.SDKLuaReportAdapter
  L4_2 = L4_2.ReportUIButtonClick
  L5_2 = A0_2.__name
  L6_2 = ""
  L7_2 = "TeleportBtn"
  L8_2 = A0_2.guid
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_click_go_to = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = A1_2
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_refresh
  L2_2(L3_2)
end
L0_1._on_take_reward = L3_1
return L0_1
