local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.ConstValueCommonExcelTable
L0_1 = L0_1.GetData
L1_1 = "ActivityExpedition_GradeScore_Grade2"
L0_1 = L0_1(L1_1)
L0_1 = L0_1.Value
L0_1 = L0_1.UintValue
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueCommonExcelTable
L1_1 = L1_1.GetData
L2_1 = "ActivityExpedition_GradeScore_Grade3"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.UintValue
L2_1 = require
L3_1 = "Ui.Expedition.ExpeditionUtils"
L2_1(L3_1)
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ExpeditionDetailRewardPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._config_id_list = L1_2
  A0_2._enable_sort = true
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  A0_2._enable_sort = A1_2
end
L2_1.enable_sort = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = A0_2._expedition_data
  L5_2 = L5_2 == nil
  A0_2._expedition_changed = L5_2
  L5_2 = A0_2._duration
  L5_2 = L5_2 ~= A2_2
  A0_2._duration_changed = L5_2
  A0_2._expedition_data = A1_2
  A0_2._duration = A2_2
  A0_2._avatar_datas = A3_2
  L5_2 = A4_2 or L5_2
  if not A4_2 then
    L5_2 = {}
  end
  A0_2._friend_data = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._get_bonus_count
  L7_2 = A0_2._avatar_datas
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A0_2._bonus_count
  L6_2 = L6_2 ~= L5_2
  A0_2._bonus_changed = L6_2
  A0_2._bonus_count = L5_2
  L7_2 = A0_2
  L6_2 = A0_2._refresh_data
  L6_2(L7_2)
  L7_2 = A0_2
  L6_2 = A0_2._refresh_view
  L6_2(L7_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.get_table_length
  L2_2 = A0_2._avatar_datas
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.ExpeditionUtils
  L2_2 = L2_2.has_friend
  L3_2 = A0_2._friend_data
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_17
    end
  end
  L2_2 = 0
  ::lbl_17::
  L1_2 = L1_2 + L2_2
  L2_2 = A0_2._expedition_data
  L2_2 = L2_2.MinSelection
  L4_2 = A0_2
  L3_2 = A0_2._get_reward_id
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = A0_2._extra_reward_id
  L5_2 = L5_2 ~= L4_2
  A0_2._extra_reward_id_changed = L5_2
  A0_2._extra_reward_id = L4_2
  L6_2 = A0_2
  L5_2 = A0_2._get_reward_item
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._normal_items = L5_2
  L5_2 = L1_2 >= L2_2
  A0_2._normal_reached = L5_2
  L5_2 = {}
  A0_2._extra_items = L5_2
  L5_2 = A0_2._extra_reward_id
  L5_2 = L5_2 ~= 0
  A0_2._show_extra_items = L5_2
  L5_2 = A0_2._show_extra_items
  if L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._get_reward_item
    L7_2 = A0_2._extra_reward_id
    L5_2 = L5_2(L6_2, L7_2)
    A0_2._extra_items = L5_2
    L5_2 = A0_2._normal_reached
    if L5_2 then
      L5_2 = A0_2._bonus_count
      L5_2 = 0 < L5_2
    end
    A0_2._extra_reached = L5_2
    L5_2 = A0_2._extra_reached
    if L5_2 then
      L5_2 = ipairs
      L6_2 = A0_2._extra_items
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = L9_2.Count
        L11_2 = A0_2._bonus_count
        L10_2 = L10_2 * L11_2
        L9_2.Count = L10_2
      end
    end
  end
  L5_2 = {}
  A0_2._config_id_list = L5_2
  L5_2 = ipairs
  L6_2 = A0_2._normal_items
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2._config_id_list
    L12_2 = L9_2.ItemID
    L10_2(L11_2, L12_2)
  end
  L5_2 = ipairs
  L6_2 = A0_2._extra_items
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2._config_id_list
    L12_2 = L9_2.ItemID
    L10_2(L11_2, L12_2)
  end
end
L2_1._refresh_data = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._enable_sort
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.CreateRewardItemTableSorted
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = {}
    end
    return L2_2
  else
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.CreateRewardItemTable
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = {}
    end
    return L2_2
  end
end
L2_1._get_reward_item = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._expedition_data
  L1_2 = L1_2.IsActivity
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_grade_value
    L1_2 = L1_2(L2_2)
    L2_2 = L1_1
    if L1_2 >= L2_2 then
      L2_2 = A0_2._expedition_data
      L2_2 = L2_2.Config
      L2_2 = L2_2.RewardID
      L3_2 = A0_2._expedition_data
      L3_2 = L3_2.Config
      L3_2 = L3_2.Grade3ExtraRewardID
      return L2_2, L3_2
    else
      L2_2 = L0_1
      if L1_2 >= L2_2 then
        L2_2 = A0_2._expedition_data
        L2_2 = L2_2.Config
        L2_2 = L2_2.RewardID
        L3_2 = A0_2._expedition_data
        L3_2 = L3_2.Config
        L3_2 = L3_2.Grade2ExtraRewardID
        return L2_2, L3_2
      else
        L2_2 = A0_2._expedition_data
        L2_2 = L2_2.Config
        L2_2 = L2_2.RewardID
        L3_2 = A0_2._expedition_data
        L3_2 = L3_2.Config
        L3_2 = L3_2.Grade1ExtraRewardID
        return L2_2, L3_2
      end
    end
  else
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.get_table_length
    L2_2 = A0_2._avatar_datas
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._expedition_data
    L2_2 = L2_2.MinSelection
    L3_2 = math
    L3_2 = L3_2.max
    L4_2 = L1_2
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ExpeditionRewardExcelTable
    L4_2 = L4_2.GetData
    L5_2 = A0_2._expedition_data
    L5_2 = L5_2.ID
    L6_2 = A0_2._duration
    L7_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = L4_2.RewardID
    L6_2 = L4_2.ExtraRewardID
    return L5_2, L6_2
  end
end
L2_1._get_reward_id = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._expedition_data
  L2_2 = L2_2.BonusProfessionTypes
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.ExpeditionUtils
  L2_2 = L2_2.get_grade_score
  L3_2 = A0_2._avatar_datas
  L4_2 = A0_2._friend_data
  L5_2 = L1_2
  return L2_2(L3_2, L4_2, L5_2)
end
L2_1._get_grade_value = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2._expedition_data
  L2_2 = L2_2.IsActivity
  if L2_2 then
    L2_2 = 1
    return L2_2
  end
  L2_2 = 0
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_array
  L4_2 = A0_2._expedition_data
  L4_2 = L4_2.BonusProfessionTypes
  L3_2 = L3_2(L4_2)
  L4_2 = pairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = G
    L9_2 = L9_2.Utils
    L9_2 = L9_2.index_of_item
    L10_2 = L3_2
    L11_2 = L8_2.ProfessionType
    L9_2 = L9_2(L10_2, L11_2)
    L9_2 = L9_2 ~= nil
    if L9_2 then
      L2_2 = L2_2 + 1
    end
  end
  return L2_2
end
L2_1._get_bonus_count = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._bonus_changed
  if not L1_2 then
    L1_2 = A0_2._expedition_changed
    if not L1_2 then
      L1_2 = A0_2._extra_reward_id_changed
    end
  end
  L2_2 = A0_2._expedition_changed
  L2_2 = not L2_2 and L2_2
  L3_2 = A0_2._expedition_changed
  L3_2 = A0_2._duration_changed
  L3_2 = not L3_2 and (L3_2 or L3_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_normal_reward
  L5_2 = L4_2
  L4_2 = L4_2.enable_hint
  L6_2 = L1_2
  L7_2 = L2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_normal_reward
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A0_2._normal_items
  L7_2 = A0_2._normal_reached
  L8_2 = 0
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_extra_reward
  L5_2 = L4_2
  L4_2 = L4_2.safe_set_active
  L6_2 = A0_2._show_extra_items
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._show_extra_items
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_extra_reward
    L5_2 = L4_2
    L4_2 = L4_2.enable_hint
    L6_2 = L1_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_extra_reward
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = A0_2._extra_items
    L7_2 = A0_2._extra_reached
    L8_2 = A0_2._bonus_count
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_extra_reward
    L5_2 = L4_2
    L4_2 = L4_2.setup_grade
    L6_2 = A0_2._expedition_data
    L6_2 = L6_2.IsActivity
    L6_2 = L6_2 == true
    L8_2 = A0_2
    L7_2 = A0_2._get_grade_value
    L7_2 = L7_2(L8_2)
    L8_2 = A0_2._expedition_changed
    L8_2 = not L8_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.invoke_next_frame_callback
  L5_2 = A0_2._update_navigation
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
end
L2_1._refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L5_2 = A0_2
  L4_2 = A0_2.get_last_normal_reward_button
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L5_2 = A0_2
  L4_2 = A0_2.get_first_extra_reward_button
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = L1_2
  L5_2 = NavigationType
  L5_2 = L5_2.Horizontal
  L6_2 = false
  L7_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L2_1._update_navigation = L3_1
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
    L2_2 = A0_2
    L1_2 = A0_2.is_active_in_hierarchy
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
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_normal_reward
  L2_2 = L1_2
  L1_2 = L1_2.get_last_button
  return L1_2(L2_2)
end
L2_1.get_last_normal_reward_button = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_normal_reward
  L2_2 = L1_2
  L1_2 = L1_2.get_first_button
  return L1_2(L2_2)
end
L2_1.get_first_normal_reward_button = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_extra_reward
  L2_2 = L1_2
  L1_2 = L1_2.get_first_button
  return L1_2(L2_2)
end
L2_1.get_first_extra_reward_button = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.get_first_normal_reward_button
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L2_1.get_first_selected_object = L3_1
return L2_1
