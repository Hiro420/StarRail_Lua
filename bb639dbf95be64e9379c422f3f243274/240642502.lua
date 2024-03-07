local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.RogueModule
L1_1 = "UIText_Quest_Label_InProgress"
L2_1 = "UIText_ActivityRogueEndless_OverBonus_Get_Num_Tips"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "RogueEndlessScoreRewardInfoPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2
  A0_2._reward_level = 0
  A0_2._is_over_bonus_reward = false
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = A0_2._on_btn_get
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._enable_in_control_tips
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.get_first_selected_object
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._enable_in_control_tips
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._enable_in_control_tips
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._reward_items = nil
  A0_2._config_id_list = nil
end
L3_1._on_dispose = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A1_2.RewardLevel
  A0_2._reward_level = L3_2
  A0_2._is_over_bonus_reward = false
  L4_2 = A0_2
  L3_2 = A0_2._setup_title
  L5_2 = A1_2.RewardLevelName
  L6_2 = A1_2.RewardPoint
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_reward
  L5_2 = A1_2.RewardID
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_progress_bar
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L0_1.EndlessPoint
  L6_2 = A1_2.RewardPoint
  L7_2 = A1_2.RewardPoint
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_status
  L5_2 = L0_1.EndlessPoint
  L6_2 = A1_2.RewardPoint
  L5_2 = L5_2 >= L6_2
  L6_2 = L0_1.EndlessPointRewardTakenList
  L7_2 = L6_2
  L6_2 = L6_2.Contains
  L8_2 = A1_2.RewardLevel
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_desc_display
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_btn_get_desc_display
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_inprogress_btn_desc
  L5_2 = L1_1
  L3_2(L4_2, L5_2)
end
L3_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._reward_level = 0
  A0_2._is_over_bonus_reward = true
  L3_2 = A0_2
  L2_2 = A0_2._setup_title
  L4_2 = "UIText_ActivityRogueEndless_OverBonus_Ex_Des"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_reward
  L4_2 = L0_1.RogueEndlessConstValue
  L4_2 = L4_2.OverBonusRewardID
  L2_2(L3_2, L4_2)
  L2_2 = L0_1.RogueEndlessConstValue
  L2_2 = L2_2.OverBonusPoint
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 0
  L5_2 = L0_1.EndlessPoint
  L5_2 = L5_2 - A1_2
  L6_2 = L0_1.EndlessOverBonusRewardTakenTime
  L6_2 = L6_2 * L2_2
  L5_2 = L5_2 - L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_progress_bar
  L5_2 = L4_2
  L4_2 = L4_2.setup_view_for_bonus
  L6_2 = L3_2
  L7_2 = L2_2
  L8_2 = L0_1.EndlessPoint
  L8_2 = A1_2 <= L8_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_status
  L6_2 = L2_2 <= L3_2
  L7_2 = L0_1.EndlessOverBonusRewardTakenTime
  L8_2 = L0_1.RogueEndlessConstValue
  L8_2 = L8_2.OverBonusRewardLimit
  L7_2 = L7_2 >= L8_2
  L8_2 = L0_1.EndlessPoint
  L8_2 = A1_2 > L8_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_desc_display
  L6_2 = true
  L7_2 = "UIText_ActivityRogueEndless_OverBonus_Tips"
  L8_2 = L0_1.RogueEndlessConstValue
  L8_2 = L8_2.OverBonusPoint
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_btn_get_desc_display
  L6_2 = true
  L7_2 = "UIText_ActivityRogueEndless_Reward_Count_Tips"
  L8_2 = math
  L8_2 = L8_2.floor
  L9_2 = L3_2 / L2_2
  L8_2, L9_2 = L8_2(L9_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_inprogress_btn_desc
  L6_2 = L2_1
  L7_2 = L0_1.EndlessOverBonusRewardTakenTime
  L4_2(L5_2, L6_2, L7_2)
end
L3_1.setup_view_for_over_bonus = L4_1
function L4_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L5_2 = ...
  L2_2(L3_2, L4_2, L5_2)
end
L3_1._setup_title = L4_1
function L4_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A2_2
    L6_2 = ...
    L3_2(L4_2, L5_2, L6_2)
  end
end
L3_1._setup_desc_display = L4_1
function L4_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_btn_get_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_btn_get_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A2_2
    L6_2 = ...
    L3_2(L4_2, L5_2, L6_2)
  end
end
L3_1._setup_btn_get_desc_display = L4_1
function L4_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_btn_inprogress_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L5_2 = ...
  L2_2(L3_2, L4_2, L5_2)
end
L3_1._setup_inprogress_btn_desc = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateRewardItemTableSorted
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
  end
  A0_2._reward_items = L2_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateConfigIDList
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._config_id_list = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._reward_items
  L2_2(L3_2, L4_2)
end
L3_1._setup_reward = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_gotten
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A2_2 or L6_2
  if A2_2 then
    L6_2 = not A3_2
  end
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_finish
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_in_progress
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not A1_2 and L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_can_get
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A1_2 or L6_2
  L6_2 = A1_2 and not A2_2 and L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_lock
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
end
L3_1._setup_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.NDBCKPIFOEO
  L3_2 = A0_2._reward_level
  L4_2 = A0_2._is_over_bonus_reward
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_btn_get = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_progress_bar
  L2_2 = L1_2
  L1_2 = L1_2.try_play_anime_finish
  L1_2(L2_2)
end
L3_1.try_play_anime_finish = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L3_1._on_in_control_action_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
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
L3_1._on_left_stick_button_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.setup_in_control_tip_enable
  L3_2 = A0_2._binder
  L3_2 = L3_2.get_in_control_tip
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L3_1._enable_in_control_tips = L4_1
return L3_1
