local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchSubmit.ActivityMonsterResearchSubmitSelectQuestionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchSubmit.ActivityMonsterResearchSubmitSelectQuestionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchSubmit.ActivityMonsterResearchSubmitItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchSubmit.ActivityMonsterResearchSubmitItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchSubmit.ActivityMonsterResearchSubmitPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonsterResearchSubmitPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ActivityMonsterResearchModule
L3_1 = {}
L3_1.SelectQuestion = 0
L3_1.Submit = 1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonsterResearchSubmitPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._is_save_by_click = false
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._research_id = A1_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetActivityMonsterResearchData
  L4_2 = A0_2._research_id
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._research_data = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityMonsterResearchExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._research_id
  L2_2 = L2_2(L3_2)
  A0_2._research_row = L2_2
  L2_2 = A0_2._research_data
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "ActivityMonsterResearchSubmitPage : \229\189\147\229\137\141\230\149\176\230\141\174\229\177\130\228\184\141\229\173\152\229\156\168\231\160\148\231\169\182id\228\184\186"
    L4_2 = A0_2._research_id
    L5_2 = "\231\160\148\231\169\182\230\149\176\230\141\174"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
    L2_2 = A0_2._research_row
    L2_2 = L2_2.QuestionID
    L2_2 = L2_2[0]
    A0_2._question_id = L2_2
    L2_2 = L3_1.Submit
    A0_2._mode = L2_2
    return
  end
  A0_2._question_id = nil
  L2_2 = A0_2._research_row
  L2_2 = L2_2.QuestionID
  L2_2 = L2_2.Length
  if 1 < L2_2 then
    L2_2 = A0_2._research_data
    L2_2 = L2_2.SelectedQuestionId
    if L2_2 == 0 then
      L2_2 = L3_1.SelectQuestion
      A0_2._mode = L2_2
  end
  else
    L2_2 = L3_1.Submit
    A0_2._mode = L2_2
    L2_2 = A0_2._research_data
    L2_2 = L2_2.SelectedQuestionId
    A0_2._question_id = L2_2
  end
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
function L4_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = nil
  L2_2 = A0_2._mode
  L3_2 = L3_1.SelectQuestion
  if L2_2 == L3_2 then
    L2_2 = A0_2._select_question_panel
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  else
    L2_2 = A0_2._material_panel
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  return L1_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._reward_config_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._reward_config_ids
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = A0_2._mode
      L2_2 = L3_1.Submit
      if L1_2 == L2_2 then
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
end
L0_1._on_left_stick_button_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MonsterResearchSubmitMaterial
  L4_2 = A0_2._on_submit_material
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
  L3_2 = L3_2.btn_submit
  L4_2 = A0_2._on_click_submit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_open_book
  L4_2 = A0_2._on_click_open_book
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityMonsterResearchSubmitSelectQuestionPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonsterResearchSubmitSelectQuestionPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._select_question_panel = L1_2
  L1_2 = A0_2._select_question_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_select_question_callback
  L3_2 = A0_2._on_select_question
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._select_question_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_select_question_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_reward
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
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
  L1_2 = {}
  A0_2._reward_table = L1_2
  L1_2 = {}
  A0_2._reward_config_ids = L1_2
  L1_2 = {}
  A0_2._material_table = L1_2
  A0_2._is_open_result = false
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_panel
    L2_2(L3_2)
  end
end
L0_1._on_view_active_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._research_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ActivityMonsterResearchDataStatus
  L2_2 = L2_2.Completed
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.CoroutineUtils
    L1_2 = L1_2.InvokeAfterFrames
    L2_2 = 2
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.exit
      L0_3(L1_3)
      L0_3 = G
      L0_3 = L0_3.UIManager
      L0_3 = L0_3.load_and_async_show
      L1_3 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchSubmit.ActivityMonsterResearchSubmitResultPage"
      L2_3 = A0_2._research_data
      L3_3 = A0_2._question_id
      L0_3(L1_3, L2_3, L3_3)
    end
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_btn_submit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityMonsterResearchHandBook"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._research_data
  L2_2 = L1_2
  L1_2 = L1_2.SetMaterialSeen
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._question_id = A1_2
  L2_2 = A0_2._research_data
  L3_2 = L2_2
  L2_2 = L2_2.SetSelectedQuestionId
  L4_2 = A0_2._question_id
  L2_2(L3_2, L4_2)
  L2_2 = L3_1.Submit
  A0_2._mode = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L5_2 = A0_2
  L4_2 = A0_2.get_first_selected_object
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_select_question = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._switch_panel
  L3_2 = A0_2._mode
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mode
  L2_2 = L3_1.SelectQuestion
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_select_question_panel
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.create_short_cut_hint_panel
    L3_2 = 63
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_submit_panel
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.create_short_cut_hint_panel
    L3_2 = 61
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_panel = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_select_question_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L3_1.SelectQuestion
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_submit_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L3_1.Submit
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
end
L0_1._switch_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._select_question_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._research_row
  L3_2 = L3_2.QuestionID
  L1_2(L2_2, L3_2)
end
L0_1._setup_select_question_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_research_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_submit_btn_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._generate_reward_table
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_reward
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_reward
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._generate_material_table
  L1_2(L2_2)
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
L0_1._setup_submit_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._research_data
  L1_2 = L1_2.QuestionDataRow
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_question
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.Question
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MonsterTemplateExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.MonsterID
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_monster
  L6_2 = L2_2.IconPath
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_research_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.CreateRewardItemTableSorted
  L2_2 = A0_2._research_row
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
L0_1._generate_reward_table = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._material_table = L1_2
  L1_2 = 0
  L2_2 = A0_2._research_row
  L2_2 = L2_2.MaterialList
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = {}
    L6_2 = A0_2._research_row
    L6_2 = L6_2.MaterialList
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.ItemID
    L5_2.ItemID = L6_2
    L6_2 = A0_2._research_row
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
L0_1._generate_material_table = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
  L5_2 = A0_2._reward_table
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
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L3_2.transform
  L6_2(L7_2)
  return L3_2
end
L0_1._on_item_changed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_submit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L4_2 = A0_2
  L3_2 = A0_2._check_is_material_enough
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._update_submit_btn_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = A0_2._research_row
  L2_2 = L2_2.MaterialList
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._research_row
    L5_2 = L5_2.MaterialList
    L5_2 = L5_2[L4_2]
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.GetItemCountByConfigID
    L8_2 = L5_2.ItemID
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L5_2.ItemNum
    if L6_2 < L7_2 then
      L7_2 = false
      return L7_2
    end
  end
  L1_2 = true
  return L1_2
end
L0_1._check_is_material_enough = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._research_id
  if A1_2 ~= L2_2 then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "ActivityMonsterResearchSubmitPage : \229\174\140\230\136\144\230\143\144\228\186\164\231\160\148\231\169\182ID<"
    L4_2 = A1_2
    L5_2 = ">\229\146\140\229\189\147\229\137\141Task\231\154\132\231\160\148\231\169\182ID<"
    L6_2 = A0_2._research_id
    L7_2 = ">\228\184\141\228\184\128\232\135\180"
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
    L2_2(L3_2)
  end
  A0_2._is_open_result = true
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_submit_material = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L2_2 = L1_2
  L1_2 = L1_2.CMJJNPMDKAM
  L3_2 = A0_2._research_id
  L1_2(L2_2, L3_2)
end
L0_1._on_click_submit = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1.IsFinish
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "RetCodeError_4674"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchEnterPage"
  L3_2 = "HideGoto"
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_click_open_book = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MonsterResearchSubmitCanceled
  L1_2(L2_2)
end
L0_1._on_click_close = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_open_result
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchSubmit.ActivityMonsterResearchSubmitResultPage"
    L3_2 = A0_2._research_data
    L4_2 = A0_2._question_id
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_unload = L4_1
return L0_1
