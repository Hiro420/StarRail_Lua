local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SilverWolfExploreQuestItemPanel"
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
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_receive
  L4_2 = A0_2._on_receive_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.interactable = false
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_control_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_short_cut_hint_panel
    L2_3 = 38
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_in_control_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_in_control_enable
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._quest_id = A3_2
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.TryGetQuestData
  L6_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._quest_data = L4_2
  L4_2 = A0_2._quest_data
  if L4_2 == nil then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "Unkown quest id: %d"
    L6_2 = A3_2
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = G
  L4_2 = L4_2.RedDotModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.bind_reddot
  L6_2 = "SilverWolfRewardBtn"
  L7_2 = A0_2._quest_id
  L8_2 = A0_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.red_dot
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = A0_2._quest_data
  L4_2 = L4_2.Status
  L5_2 = CS
  L5_2 = L5_2.BLHLCHNAJKK
  L5_2 = L5_2.FMLBEGJJHMJ
  L4_2 = L4_2 == L5_2
  L5_2 = A0_2._quest_data
  L5_2 = L5_2.Status
  L6_2 = CS
  L6_2 = L6_2.BLHLCHNAJKK
  L6_2 = L6_2.CDJHHIHBNMN
  L5_2 = L5_2 == L6_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_receive
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_done
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_inprogress
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = not L5_2 and L8_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_normal
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._quest_data
  L6_2 = L6_2.RewardID
  L7_2 = G
  L7_2 = L7_2.RewardUtils
  L7_2 = L7_2.CreateRewardItemTableSorted
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  if L7_2 then
    L9_2 = A0_2
    L8_2 = A0_2.create_panel
    L10_2 = G
    L10_2 = L10_2.RewardItemIconLite
    L11_2 = G
    L11_2 = L11_2.RewardItemIconLiteBinder
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.bind
    L11_2 = A0_2._binder
    L11_2 = L11_2.node_reward_item_1
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.setup_view
    L11_2 = L7_2[1]
    L11_2 = L11_2.ItemID
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.set_count
    L11_2 = L7_2[1]
    L11_2 = L11_2.Count
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.set_attachment_getted
    L11_2 = L4_2
    L9_2(L10_2, L11_2)
    A0_2._reward1 = L8_2
  end
  L8_2 = #L7_2
  if 1 < L8_2 then
    L9_2 = A0_2
    L8_2 = A0_2.create_panel
    L10_2 = G
    L10_2 = L10_2.RewardItemIconLite
    L11_2 = G
    L11_2 = L11_2.RewardItemIconLiteBinder
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.bind
    L11_2 = A0_2._binder
    L11_2 = L11_2.node_reward_item_2
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.setup_view
    L11_2 = L7_2[2]
    L11_2 = L11_2.ItemID
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.set_count
    L11_2 = L7_2[2]
    L11_2 = L11_2.Count
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.set_attachment_getted
    L11_2 = L4_2
    L9_2(L10_2, L11_2)
    A0_2._reward2 = L8_2
  else
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_reward_item_2
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = false
    L8_2(L9_2, L10_2)
  end
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_checked
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L4_2
  L8_2(L9_2, L10_2)
  L9_2 = A0_2
  L8_2 = A0_2._setup_line_view
  L10_2 = A1_2
  L11_2 = A2_2
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.btn_root
  L9_2 = L8_2
  L8_2 = L8_2.ClearAnimationState
  L8_2(L9_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_top_line
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2 == 1
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mid_line
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2 ~= 1 and A1_2 ~= A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bottom_line
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2 == A2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_line_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.get_navigation_target
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  if L2_2 ~= L3_2 then
    return
  end
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_reward_detail
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_mono_recieve
    L2_2.ActionEnabled = A1_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.confirm_tip_key_map_info
    L3_2 = A1_2 or L3_2
    if A1_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.btn_receive
      L3_2 = L3_2.interactable
    end
    L2_2.IsShowTip = L3_2
  end
end
L0_1._setup_in_control_enable = L2_1
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
L0_1._on_receive_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_ids
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.RewardUtils
    L1_2 = L1_2.CreateConfigIDList
    L2_2 = A0_2._quest_data
    L2_2 = L2_2.RewardID
    L1_2 = L1_2(L2_2)
    A0_2._config_ids = L1_2
  end
  L1_2 = {}
  L2_2 = A0_2._config_ids
  L1_2.items = L2_2
  L2_2 = G
  L2_2 = L2_2.InventoryUtils
  L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1._on_reward_detail = L2_1
return L0_1
