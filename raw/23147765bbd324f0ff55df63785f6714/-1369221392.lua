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
L1_1 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchSubmit.ActivityMonsterResearchSubmitResultPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonsterResearchSubmitResultPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityMonsterResearchModule
L2_1 = "PocketMonsterInfoPage_FadeIn_Show"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonsterResearchSubmitResultPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
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
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._research_data = A1_2
  A0_2._question_id = A2_2
  A0_2._index = 1
  L3_2 = 0
  L4_2 = L1_1.ActivityMonsterResearchDisplayList
  L4_2 = L4_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_1.ActivityMonsterResearchDisplayList
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.ID
    L8_2 = A0_2._research_data
    L8_2 = L8_2.ID
    if L7_2 == L8_2 then
      L7_2 = L6_2 + 1
      A0_2._index = L7_2
      break
    end
  end
  L3_2 = "0"
  L4_2 = A0_2._index
  L3_2 = L3_2 .. L4_2
  A0_2._index = L3_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.ActivityMonsterResearchMonsterInfoPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonsterResearchMonsterInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._monster_info_analyze_panel = L1_2
  L1_2 = A0_2._monster_info_analyze_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_monster_info_analyze_panel
  L1_2(L2_2, L3_2)
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
  A0_2._enable_click = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L2_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_anim_analyze_played
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_goto
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
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
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 8
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchSubmit.ActivityMonsterResearchSubmitSuccessToastDialog"
  L1_2(L2_2)
  A0_2._enable_click = true
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.TryUnblockFixedTime
  L3_2 = A0_2._block_id
  L1_2(L2_2, L3_2)
end
L0_1._on_anim_analyze_played = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._hide_nodes
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_research_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_monster_info
  L1_2(L2_2)
  L1_2 = A0_2._reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._research_data
  L3_2 = L3_2.ResearchRow
  L3_2 = L3_2.RewardID
  L4_2 = A0_2._research_data
  L4_2 = L4_2.IsRewardTaken
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._research_data
  L1_2 = L1_2.IsRewardTaken
  if L1_2 ~= true then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.GetAnimationState
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L2_1
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = L1_2.length
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_UIManager
    L4_2 = L3_2
    L3_2 = L3_2.BlockFixedTime
    L5_2 = L2_2
    L6_2 = L2_2
    L7_2 = nil
    L8_2 = false
    L9_2 = "ActivityMonsterResearchSubmitResultPage"
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    A0_2._block_id = L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_root
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = L2_1
    L3_2(L4_2, L5_2)
  else
    A0_2._enable_click = true
  end
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_page_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_in_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_complete
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_complete_small
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_forbid_answer
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._hide_nodes = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_answer
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_receive
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._research_data
  L3_2 = L3_2.IsRewardTaken
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_index_small
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._research_data
  L1_2 = L1_2.QuestionDataRow
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_question
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.Question
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_answer
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.Answer
  L2_2(L3_2, L4_2)
end
L0_1._setup_research_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._research_data
  L1_2 = L1_2.QuestionDataRow
  L2_2 = A0_2._monster_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2.MonsterID
  L5_2 = A0_2._index
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._monster_info_analyze_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2.MonsterID
  L5_2 = A0_2._index
  L6_2 = true
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
  L3_2 = A0_2._monster_info_analyze_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_is_multi_question_selected
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_monster_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._enable_click
  if L1_2 == false then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MonsterResearchSubmitProgressFinish
  L3_2 = A0_2._question_id
  L1_2(L2_2, L3_2)
end
L0_1._on_click_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._enable_click
  if L1_2 == false then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.FFOMLPONIFB
  L2_2 = L1_2
  L1_2 = L1_2.LIICFAOIMDO
  L3_2 = A0_2._research_data
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L0_1._on_click_receive = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchSubmit.ActivityMonsterResearchSubmitRewardPage"
  L4_2 = A1_2
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2._research_data
  L7_2 = L7_2.ID
  L8_2 = A0_2._question_id
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_take_reward = L3_1
return L0_1
