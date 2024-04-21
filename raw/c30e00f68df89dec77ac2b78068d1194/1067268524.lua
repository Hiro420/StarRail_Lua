local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Missions.ChessRogueMainStroyRewardRowPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueMainStroyRewardRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get_reward
  L4_2 = A0_2._on_btn_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_in_control_button_enable
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_control_tip_btn_get
  L2_2.IsShowTipBySelected = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_control_tip_btn_go
  L2_2.IsShowTipBySelected = A1_2
end
L0_1.setup_in_control_button_enable = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_btn_root = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._reward_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.IsSelectedByController
    if L1_2 then
      L1_2 = {}
      L2_2 = A0_2._reward_id_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1._on_left_stick_button_click = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.TutorialSupportModule
  L5_2 = L4_2
  L4_2 = L4_2.SetNodeDynamicKey
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_root
  L6_2 = L6_2.gameObject
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  A0_2._main_story_id = A2_2
  A0_2._quest_id = A1_2
  A0_2._goto_mapinfo = A3_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.QuestModule
  L5_2 = L4_2
  L4_2 = L4_2.TryGetQuestData
  L6_2 = A0_2._quest_id
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = G
  L5_2 = L5_2.RewardUtils
  L5_2 = L5_2.CreateConfigIDList
  L6_2 = L4_2.DataRow
  L6_2 = L6_2.RewardID
  L5_2 = L5_2(L6_2)
  A0_2._reward_id_list = L5_2
  L5_2 = G
  L5_2 = L5_2.RewardUtils
  L5_2 = L5_2.CreateRewardItemTableSorted
  L6_2 = L4_2.DataRow
  L6_2 = L6_2.RewardID
  L5_2 = L5_2(L6_2)
  A0_2._reward_data = L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_title_name
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.DataRow
  L7_2 = L7_2.QuestTitle
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.reward_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = A0_2._reward_data
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._refresh
  L5_2(L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.QuestModule
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2._quest_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_get_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2.Status
  L5_2 = CS
  L5_2 = L5_2.LEOGBBOPKKO
  L5_2 = L5_2.JKFPIINHGPD
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_complete
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2.Status
  L5_2 = CS
  L5_2 = L5_2.LEOGBBOPKKO
  L5_2 = L5_2.CMOFEAFMGAK
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_in_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_go
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2.Status
  L5_2 = CS
  L5_2 = L5_2.LEOGBBOPKKO
  L5_2 = L5_2.KBBBFCIHJPC
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._main_story_id
  L2_2 = L2_2 == 0
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_in_progress_count
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_progress_cur
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L1_2.Progress
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_progress_total
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L1_2.TotalProgress
    L3_2(L4_2, L5_2)
  end
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.JCCHEMBPEEE
  L3_2 = A0_2._quest_id
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_get_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._goto_mapinfo
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RogueUtils
    L1_2 = L1_2.goto_rogue_entrance
    L1_2()
  else
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2.exit_by_jump
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIChessRogueFocusMainMission
    L3_2 = A0_2._main_story_id
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_go = L1_1
return L0_1
