local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityRewardPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FightActivityRewardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1[1] = "UIText_ActivityFight_Easy_Reward"
L1_1[2] = "UIText_ActivityFight_Mid_Reward"
L1_1[3] = "UIText_ActivityFight_Hard_Reward"
L1_1[4] = "UIText_ActivityFight_Hard_Reward"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.FightActivityUtils
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._config_id_list = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_btn
  L4_2 = A0_2._on_click_get_reward
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
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_control_tip
  L2_2.IsShowTipBySelected = A1_2
end
L0_1.setup_in_control_button_enable = L3_1
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
L0_1._on_left_stick_button_click = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = false
  L5_2 = false
  if A1_2 ~= nil then
    if A2_2 < 4 then
      L6_2 = A1_2.PassedMaxDifficultyLevel
      L4_2 = A2_2 <= L6_2
      L6_2 = A1_2.TakenDifficultyLevelRewardList
      L7_2 = L6_2
      L6_2 = L6_2.Contains
      L8_2 = A2_2
      L6_2 = L6_2(L7_2, L8_2)
      L5_2 = L6_2
      L6_2 = G
      L6_2 = L6_2.RedDotModule
      L6_2 = L6_2.Instance
      L7_2 = L6_2
      L6_2 = L6_2.bind_reddot
      L8_2 = "FightActivityGetRewardBtn"
      L9_2 = L2_1.GetUniqueReddotIDByGroupID
      L10_2 = A1_2.GroupId
      L11_2 = A2_2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = A0_2
      L11_2 = A0_2._binder
      L11_2 = L11_2.node_get_reddot
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    else
      L6_2 = L2_1.GetEndlessRewardQuest
      L7_2 = A1_2.GroupId
      L6_2 = L6_2(L7_2)
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.GlobalVars
      L7_2 = L7_2.s_ModuleManager
      L7_2 = L7_2.QuestModule
      L8_2 = L7_2
      L7_2 = L7_2.TryGetQuestData
      L9_2 = A2_2 - 4
      L9_2 = L6_2[L9_2]
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L8_2 = L7_2.Status
        L9_2 = CS
        L9_2 = L9_2.LEOGBBOPKKO
        L9_2 = L9_2.CMOFEAFMGAK
        L5_2 = L8_2 == L9_2
        L8_2 = L7_2.Status
        L9_2 = CS
        L9_2 = L9_2.LEOGBBOPKKO
        L9_2 = L9_2.JKFPIINHGPD
        L4_2 = L8_2 == L9_2 or L4_2
        L8_2 = G
        L8_2 = L8_2.RedDotModule
        L8_2 = L8_2.Instance
        L9_2 = L8_2
        L8_2 = L8_2.bind_reddot
        L10_2 = "FightActivityGetRewardBtn"
        L11_2 = L2_1.GetUniqueReddotIDByGroupID
        L12_2 = A1_2.GroupId
        L13_2 = A2_2
        L11_2 = L11_2(L12_2, L13_2)
        L12_2 = A0_2
        L13_2 = A0_2._binder
        L13_2 = L13_2.node_get_reddot
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
      end
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2._set_datas
  L8_2 = L4_2
  L9_2 = L5_2
  L10_2 = A3_2
  L11_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  if A2_2 < 3 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_group_name
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = L1_1[A2_2]
    L6_2(L7_2, L8_2)
  else
    L6_2 = L2_1.GetEndlessRewardWaves
    L7_2 = A1_2.GroupId
    L6_2 = L6_2(L7_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.text_group_name
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetTextID
    L9_2 = L1_1[A2_2]
    L10_2 = A2_2 - 3
    L10_2 = L6_2[L10_2]
    L7_2(L8_2, L9_2, L10_2)
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_difficulty_name
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = false
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._refresh
  L6_2(L7_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._is_completed = A1_2
  A0_2._is_reward_taken = A2_2
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.create_lua_table_from_cs_list
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  A0_2._reward_data = L5_2
  L5_2 = G
  L5_2 = L5_2.RewardUtils
  L5_2 = L5_2.sort_reward_item
  L6_2 = A0_2._reward_data
  L5_2(L6_2)
  A0_2.lv = A4_2
  L5_2 = {}
  A0_2._config_id_list = L5_2
  L5_2 = ipairs
  L6_2 = A0_2._reward_data
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2._config_id_list
    L12_2 = L9_2.ConfigID
    L10_2(L11_2, L12_2)
  end
end
L0_1._set_datas = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_completed
  if L1_2 == true then
    L1_2 = A0_2._is_reward_taken
    if L1_2 == true then
      L1_2 = A0_2._binder
      L1_2 = L1_2.reward_btn
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.complete_info_root
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.in_progress_root
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = A0_2._is_completed
    if L1_2 == true then
      L1_2 = A0_2._is_reward_taken
      if L1_2 == false then
        L1_2 = A0_2._binder
        L1_2 = L1_2.reward_btn
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = true
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.complete_info_root
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = false
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.in_progress_root
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = false
        L1_2(L2_2, L3_2)
    end
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.reward_btn
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.complete_info_root
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.in_progress_root
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._reward_data
  L1_2(L2_2, L3_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._reward_btn_function = A1_2
  A0_2._reward_btn_function_owner = A2_2
end
L0_1.register_reward_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._reward_btn_function
  if L1_2 then
    L1_2 = A0_2._reward_btn_function_owner
    if L1_2 then
      L1_2 = A0_2._reward_btn_function
      L2_2 = A0_2._reward_btn_function_owner
      L3_2 = A0_2.lv
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_click_get_reward = L3_1
return L0_1
