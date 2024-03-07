local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.ActivityMonopolyUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ActivityMonopolyJackpotDonatedItemPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_reward
  L4_2 = L3_2
  L3_2 = L3_2.register_available_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L2_1.register_available_callback = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._quest_id = A1_2
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.TryGetQuestData
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._quest_data = L4_2
  L4_2 = A0_2._quest_data
  if L4_2 == nil then
    return
  end
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.TryGetQuestData
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 ~= nil then
    L5_2 = L4_2.TotalProgress
    if L5_2 then
      goto lbl_21
    end
  end
  L5_2 = 0
  ::lbl_21::
  A0_2._previous_progress = L5_2
  L5_2 = A0_2._quest_data
  L5_2 = L5_2.TotalProgress
  A0_2._target_progress = L5_2
  L5_2 = A0_2._quest_data
  L5_2 = L5_2.RewardID
  L6_2 = G
  L6_2 = L6_2.RewardUtils
  L6_2 = L6_2.CreateRewardItemTableSorted
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = {}
  end
  A0_2._reward_items = L6_2
  L6_2 = G
  L6_2 = L6_2.RewardUtils
  L6_2 = L6_2.CreateConfigIDList
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = {}
  end
  A0_2._config_id_list = L6_2
  L6_2 = A0_2._quest_data
  L6_2 = L6_2.Status
  L7_2 = CS
  L7_2 = L7_2.BLHLCHNAJKK
  L7_2 = L7_2.CDJHHIHBNMN
  L6_2 = L6_2 == L7_2
  A0_2._is_reached = L6_2
  L6_2 = A0_2._quest_data
  L6_2 = L6_2.Progress
  L7_2 = A0_2._previous_progress
  L6_2 = L6_2 <= L7_2
  A0_2._is_empty = L6_2
  L7_2 = A0_2
  L6_2 = A0_2._refresh_view
  L6_2(L7_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L2_1.set_reddot = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TutorialSupportModule
  L3_2 = L2_2
  L2_2 = L2_2.SetNodeDynamicKey
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_reward
  L4_2 = L4_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.gameObject
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L2_1.set_tutorial = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_not_started
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_not_started
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._is_empty
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reached
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_reached
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_not_reached
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_reached
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.txts_target_progress
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.ActivityMonopolyUtils
    L6_2 = L6_2.set_text_value_in_thousands
    L7_2 = L5_2
    L8_2 = A0_2._target_progress
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.bar_progress
  if L1_2 ~= nil then
    L1_2 = A0_2._quest_data
    L1_2 = L1_2.Progress
    L2_2 = A0_2._previous_progress
    L1_2 = L1_2 - L2_2
    L2_2 = A0_2._target_progress
    L3_2 = A0_2._previous_progress
    L2_2 = L2_2 - L3_2
    L1_2 = L1_2 / L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.bar_progress
    L3_2 = G
    L3_2 = L3_2.MathUtils
    L3_2 = L3_2.get_clamp
    L4_2 = L1_2
    L5_2 = 0
    L6_2 = 1
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2.value = L3_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._quest_id
  L1_2(L2_2, L3_2)
end
L2_1._refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L2_1._on_in_control_action_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_reward
    L2_2 = L1_2
    L1_2 = L1_2.is_selected_by_controller
    L1_2 = L1_2(L2_2)
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
L2_1._on_left_stick_button_click = L3_1
return L2_1
