local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.Components.ActivityMonopolyRollDiceEventOptionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.Components.ActivityMonopolyRollDiceEventOptionPanelBinder"
L0_1(L1_1)
L0_1 = {}
L1_1 = "Ui.ActivityMonopoly.Toast.ActivityMonopolyGameRatioHintDialog"
L2_1 = "Ui.ActivityMonopoly.Toast.ActivityMonopolyBuffHintDialog"
L3_1 = "Ui.ActivityMonopoly.Toast.ActivityMonopolyMBTIHintDialog"
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L1_1 = {}
L2_1 = "UIText_ActivityMonopoly_Event_Random_Result_Perfect"
L3_1 = "UIText_ActivityMonopoly_Event_Random_Result_Good"
L4_1 = "UIText_ActivityMonopoly_Event_Random_Result_Miss"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ActivityMonopolyRollDiceEventOptionListPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._event_id = A1_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  A0_2._option_data_table = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._calculate_option_range
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_panel_option_info
  L3_2(L4_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ActivityMonopolyRollDiceEventOptionPanel
    L8_2 = G
    L8_2 = L8_2.ActivityMonopolyRollDiceEventOptionPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._option_data_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2._option_dice_range
  L7_2 = A2_2 + 1
  L6_2 = L6_2[L7_2]
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L5_2
  L10_2 = L6_2.MinDiceNum
  L11_2 = L6_2.MaxDiceNum
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L8_2 = L4_2
  L7_2 = L4_2.register_anim_finish_callback
  L9_2 = A0_2._on_option_active_anim_finish
  L10_2 = A0_2
  L7_2(L8_2, L9_2, L10_2)
  return L3_2
end
L2_1._on_option_list_change = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._option_active_anim_callback
  L5_2 = A0_2._option_active_anim_handler
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L2_1._on_option_active_anim_finish = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = A0_2._binder
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.is_destroyed
      if not L1_2 then
        goto lbl_11
      end
    end
  end
  do return end
  ::lbl_11::
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_big_success
  L2_2 = L1_2
  L1_2 = L1_2.get_option_id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._take_effect_option_id
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_option_big_success
    L2_2 = L1_2
    L1_2 = L1_2.setup_bubble_state
    L3_2 = true
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_success
  L2_2 = L1_2
  L1_2 = L1_2.get_option_id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._take_effect_option_id
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_option_success
    L2_2 = L1_2
    L1_2 = L1_2.setup_bubble_state
    L3_2 = true
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_normal
  L2_2 = L1_2
  L1_2 = L1_2.get_option_id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._take_effect_option_id
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_option_normal
    L2_2 = L1_2
    L1_2 = L1_2.setup_bubble_state
    L3_2 = true
    L1_2(L2_2, L3_2)
    return
  end
end
L2_1._on_toast_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.option_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._option_data_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.option_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L2_1._refresh_option_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._option_data_table
  L1_2 = #L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_option_big_success
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._option_data_table
  L4_2 = L4_2[L1_2]
  L5_2 = A0_2._option_dice_range
  L5_2 = L5_2[L1_2]
  L5_2 = L5_2.MinDiceNum
  L6_2 = A0_2._option_dice_range
  L6_2 = L6_2[L1_2]
  L6_2 = L6_2.MaxDiceNum
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_option_big_success
  L3_2 = L2_2
  L2_2 = L2_2.register_anim_finish_callback
  L4_2 = A0_2._on_option_active_anim_finish
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_option_success
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._option_data_table
  L5_2 = L1_2 - 1
  L4_2 = L4_2[L5_2]
  L5_2 = A0_2._option_dice_range
  L6_2 = L1_2 - 1
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.MinDiceNum
  L6_2 = A0_2._option_dice_range
  L7_2 = L1_2 - 1
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.MaxDiceNum
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_option_success
  L3_2 = L2_2
  L2_2 = L2_2.register_anim_finish_callback
  L4_2 = A0_2._on_option_active_anim_finish
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_option_normal
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._option_data_table
  L4_2 = L4_2[1]
  L5_2 = A0_2._option_dice_range
  L5_2 = L5_2[1]
  L5_2 = L5_2.MinDiceNum
  L6_2 = A0_2._option_dice_range
  L6_2 = L6_2[1]
  L6_2 = L6_2.MaxDiceNum
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_option_normal
  L3_2 = L2_2
  L2_2 = L2_2.register_anim_finish_callback
  L4_2 = A0_2._on_option_active_anim_finish
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_option_big_success
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_option_success
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_option_normal
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  if 2 < L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_option_normal
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L2_1._setup_panel_option_info = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._option_active_anim_callback = A1_2
  A0_2._option_active_anim_handler = A2_2
end
L2_1.register_option_active_anim_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._option_dice_range = L1_2
  L1_2 = 1
  L2_2 = A0_2._option_data_table
  L2_2 = #L2_2
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = {}
    L6_2 = A0_2._option_data_table
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.DiceSoreRequirement
    L5_2.MinDiceNum = L6_2
    L6_2 = A0_2._option_data_table
    L7_2 = L4_2 + 1
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.DiceSoreRequirement
    L6_2 = L6_2 - 1
    L5_2.MaxDiceNum = L6_2
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._option_dice_range
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = {}
  L2_2 = A0_2._option_data_table
  L3_2 = A0_2._option_data_table
  L3_2 = #L3_2
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.DiceSoreRequirement
  L1_2.MinDiceNum = L2_2
  L1_2.MaxDiceNum = 12
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._option_dice_range
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L2_1._calculate_option_range = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.reset_all_option_state
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._find_take_effect_option_id
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_option_take_effect
  L2_2(L3_2)
end
L2_1.set_option_take_effect_by_result = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.reset_all_option_state
  L2_2(L3_2)
  A0_2._take_effect_option_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._set_option_take_effect
  L2_2(L3_2)
end
L2_1.set_option_take_effect_by_option_id = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_big_success
  L2_2 = L1_2
  L1_2 = L1_2.reset_state
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_success
  L2_2 = L1_2
  L1_2 = L1_2.reset_state
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_normal
  L2_2 = L1_2
  L1_2 = L1_2.reset_state
  L1_2(L2_2)
end
L2_1.reset_all_option_state = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_option_big_success
  L3_2 = L2_2
  L2_2 = L2_2.is_roll_result_in_range
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_option_big_success
    L3_2 = L2_2
    L2_2 = L2_2.get_option_id
    L2_2 = L2_2(L3_2)
    A0_2._take_effect_option_id = L2_2
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_option_success
  L3_2 = L2_2
  L2_2 = L2_2.is_roll_result_in_range
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_option_success
    L3_2 = L2_2
    L2_2 = L2_2.get_option_id
    L2_2 = L2_2(L3_2)
    A0_2._take_effect_option_id = L2_2
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_option_normal
  L3_2 = L2_2
  L2_2 = L2_2.is_roll_result_in_range
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_option_normal
    L3_2 = L2_2
    L2_2 = L2_2.get_option_id
    L2_2 = L2_2(L3_2)
    A0_2._take_effect_option_id = L2_2
    return
  end
end
L2_1._find_take_effect_option_id = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_big_success
  L2_2 = L1_2
  L1_2 = L1_2.get_option_id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._take_effect_option_id
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_option_big_success
    L2_2 = L1_2
    L1_2 = L1_2.setup_view_after_result
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._show_toast_dialog
    L3_2 = 1
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_success
  L2_2 = L1_2
  L1_2 = L1_2.get_option_id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._take_effect_option_id
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_option_success
    L2_2 = L1_2
    L1_2 = L1_2.setup_view_after_result
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._show_toast_dialog
    L3_2 = 2
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_normal
  L2_2 = L1_2
  L1_2 = L1_2.get_option_id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._take_effect_option_id
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_option_normal
    L2_2 = L1_2
    L1_2 = L1_2.setup_view_after_result
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._show_toast_dialog
    L3_2 = 3
    L1_2(L2_2, L3_2)
    return
  end
end
L2_1._set_option_take_effect = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = L1_1[A1_2]
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_async_show
  L4_2 = L0_1[A1_2]
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.LuaTable
  L5_2 = L4_2
  L4_2 = L4_2.set_exit_callback
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_toast_close
    L0_3(L1_3)
  end
  L4_2(L5_2, L6_2)
end
L2_1._show_toast_dialog = L3_1
return L2_1
