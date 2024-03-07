local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.CommonRewardPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonRewardPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityQuestInfoRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._config_id_list = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._quest_id = A1_2
  A0_2._tab_id = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.IsSelectedByController
    if L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_id_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1._on_left_stick_button_click = L2_1
function L2_1(A0_2)
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
  L3_2 = L3_2.btn_goto
  L4_2 = A0_2._on_btn_goto
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.CommonRewardPanel
  L4_2 = G
  L4_2 = L4_2.CommonRewardPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._reward_panel = L1_2
  L1_2 = A0_2._reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reward
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
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.goto_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.goto_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.get_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.get_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_in_control_button_enable = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._quest_data = nil
  A0_2._quest_id = nil
  A0_2._tab_id = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2._quest_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._quest_data = L1_2
  L1_2 = A0_2._quest_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  A0_2._config_id_list = L1_2
  L1_2 = A0_2._quest_data
  if L1_2 then
    L1_2 = A0_2._quest_data
    L1_2 = L1_2.DataRow
    L1_2 = L1_2.RewardID
    if L1_2 then
      L1_2 = A0_2._reward_panel
      L2_2 = L1_2
      L1_2 = L1_2.setup_view
      L3_2 = A0_2._quest_data
      L3_2 = L3_2.DataRow
      L3_2 = L3_2.RewardID
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._reward_panel
      L2_2 = L1_2
      L1_2 = L1_2.safe_set_active
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = G
      L1_2 = L1_2.RewardUtils
      L1_2 = L1_2.CreateConfigIDList
      L2_2 = A0_2._quest_data
      L2_2 = L2_2.DataRow
      L2_2 = L2_2.RewardID
      L1_2 = L1_2(L2_2)
      A0_2._config_id_list = L1_2
  end
  else
    L1_2 = A0_2._reward_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._quest_data
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._quest_data
    L3_2 = L3_2.DataRow
    L3_2 = L3_2.QuestTitle
    L4_2 = A0_2._quest_data
    L4_2 = L4_2.FinishWayRow
    L4_2 = L4_2.ParamInt1
    L5_2 = A0_2._quest_data
    L5_2 = L5_2.FinishWayRow
    L5_2 = L5_2.ParamInt2
    L6_2 = A0_2._quest_data
    L6_2 = L6_2.FinishWayRow
    L6_2 = L6_2.ParamInt3
    L7_2 = A0_2._quest_data
    L7_2 = L7_2.TotalProgress
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1._setup_title = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._quest_data
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_goto
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._quest_data
    L3_2 = L3_2.Status
    L4_2 = CS
    L4_2 = L4_2.BLHLCHNAJKK
    L4_2 = L4_2.BMEAGBEFNFK
    L3_2 = L3_2 == L4_2
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_in_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._quest_data
    L3_2 = L3_2.Status
    L4_2 = CS
    L4_2 = L4_2.BLHLCHNAJKK
    L4_2 = L4_2.BMEAGBEFNFK
    L3_2 = L3_2 == L4_2
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_get_reward
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._quest_data
    L3_2 = L3_2.Status
    L4_2 = CS
    L4_2 = L4_2.BLHLCHNAJKK
    L4_2 = L4_2.CDJHHIHBNMN
    L3_2 = L3_2 == L4_2
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_got
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._quest_data
    L3_2 = L3_2.Status
    L4_2 = CS
    L4_2 = L4_2.BLHLCHNAJKK
    L4_2 = L4_2.FMLBEGJJHMJ
    L3_2 = L3_2 == L4_2
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._set_high_light
    L3_2 = A0_2._quest_data
    L3_2 = L3_2.Status
    L4_2 = CS
    L4_2 = L4_2.BLHLCHNAJKK
    L4_2 = L4_2.CDJHHIHBNMN
    L3_2 = L3_2 == L4_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._quest_data
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.slider_progress
    L2_2 = A0_2._quest_data
    L2_2 = L2_2.Progress
    L3_2 = A0_2._quest_data
    L3_2 = L3_2.TotalProgress
    L2_2 = L2_2 / L3_2
    L1_2.value = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_cur_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = A0_2._quest_data
    L3_2 = L3_2.Progress
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_total_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = A0_2._quest_data
    L3_2 = L3_2.TotalProgress
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_progress = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_high_light
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_high_light = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L1_2
  L2_2 = L1_2.Add
  L4_2 = A0_2._quest_id
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.AMFNHGKACLB
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_get_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2._quest_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.DataRow
  L2_2 = L2_2.GotoID
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.GotoManager
    L2_2 = L2_2.Goto
    L3_2 = L1_2.DataRow
    L3_2 = L3_2.GotoID
    L2_2(L3_2)
  end
end
L0_1._on_btn_goto = L2_1
return L0_1
