local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.TravelBrochure.PasterCollect.TravelBrochureRewardHintPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.PasterCollect.TravelBrochureRewardHintPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TravelBrochurePasterCollectRewardItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward
  L1_2(L2_2, L3_2, L4_2)
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
    L0_3 = L0_3._refresh_control_select_view
    L0_3(L1_3)
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._select_callback
    L2_3 = A0_2._select_hander
    L3_3 = A0_2._quest_data
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh_control_select_view
      L0_3(L1_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.TouchDown
  L4_2 = A0_2._on_touch_down
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.TouchUp
  L4_2 = A0_2._on_touch_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.Swipe
  L4_2 = A0_2._on_touch_up
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._preview_callback = A1_2
  A0_2._preview_handler = A2_2
end
L0_1.register_preview_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._select_callback = A1_2
  A0_2._select_hander = A2_2
end
L0_1.register_select_callback = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._quest_data = A1_2
  A0_2._locked = A2_2
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.CreateRewardItemTableSorted
  L5_2 = A0_2._quest_data
  L5_2 = L5_2.RewardID
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = {}
  end
  A0_2._reward_items = L4_2
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.CreateConfigIDList
  L5_2 = A0_2._quest_data
  L5_2 = L5_2.RewardID
  L4_2 = L4_2(L5_2)
  A0_2._config_id_list = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.bar_progress
  L4_2.fillAmount = A3_2
  L4_2 = G
  L4_2 = L4_2.RedDotModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.bind_reddot
  L6_2 = "TravelBrochurePasterCollectReward"
  L7_2 = A0_2._quest_data
  L7_2 = L7_2.ID
  L8_2 = A0_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_reddot
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_locked
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._locked
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_doing
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_finished
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_taken
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._locked
  if L4_2 then
    return
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_count
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A0_2._quest_data
  L6_2 = L6_2.TotalProgress
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._quest_data
  L4_2 = L4_2.Status
  L5_2 = CS
  L5_2 = L5_2.LEOGBBOPKKO
  L5_2 = L5_2.KBBBFCIHJPC
  if L4_2 == L5_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_doing
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._quest_data
    L4_2 = L4_2.Status
    L5_2 = CS
    L5_2 = L5_2.LEOGBBOPKKO
    L5_2 = L5_2.JKFPIINHGPD
    if L4_2 == L5_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_finished
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = true
      L4_2(L5_2, L6_2)
    else
      L4_2 = A0_2._quest_data
      L4_2 = L4_2.Status
      L5_2 = CS
      L5_2 = L5_2.LEOGBBOPKKO
      L5_2 = L5_2.CMOFEAFMGAK
      if L4_2 == L5_2 then
        L4_2 = A0_2._binder
        L4_2 = L4_2.node_taken
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetActive
        L6_2 = true
        L4_2(L5_2, L6_2)
      end
    end
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_reward_panel
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.show_reward
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._preview_callback
  L5_2 = A0_2._preview_handler
  L6_2 = A1_2
  L7_2 = A0_2._quest_data
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.show_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._reward_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.TravelBrochureRewardHintPanel
    L4_2 = G
    L4_2 = L4_2.TravelBrochureRewardHintPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._reward_panel = L1_2
    L1_2 = A0_2._reward_panel
    L2_2 = L1_2
    L1_2 = L1_2.sync_loadto
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_reward_root
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._reward_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._reward_items
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._reward_panel
  return L1_2
end
L0_1._safe_get_reward_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._locked
  if L1_2 then
    return
  end
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.LEOGBBOPKKO
  L2_2 = L2_2.JKFPIINHGPD
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_NetworkManager
    L2_2 = L1_2
    L1_2 = L1_2.JCCHEMBPEEE
    L3_2 = A0_2._quest_data
    L3_2 = L3_2.ID
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.show_reward
    L3_2 = true
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_btn_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._reward_panel
  L1_2 = A0_2._reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_show
  L1_2 = L1_2 ~= nil and L1_2
  return L1_2
end
L0_1._is_showing_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.is_active_in_hierarchy
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.is_top_page_or_dialog
      L1_2 = L1_2(L2_2)
      if L1_2 then
        goto lbl_13
      end
    end
  end
  do return end
  ::lbl_13::
  L2_2 = A0_2
  L1_2 = A0_2._is_showing_reward
  L1_2 = L1_2(L2_2)
  A0_2._should_hide = L1_2
end
L0_1._on_touch_down = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.is_active_in_hierarchy
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.is_top_page_or_dialog
      L1_2 = L1_2(L2_2)
      if L1_2 then
        goto lbl_13
      end
    end
  end
  do return end
  ::lbl_13::
  L1_2 = A0_2._should_hide
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.show_reward
  L3_2 = false
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_touch_up = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_control_select_view
  L2_2(L3_2)
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_control_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_root
    L3_2 = L3_2.IsSelectedByController
  end
  L1_2(L2_2, L3_2)
end
L0_1._refresh_control_select_view = L1_1
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.IsSelectedByController
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_showing_reward
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L1_2 = {}
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateConfigIDList
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.RewardID
  L2_2 = L2_2(L3_2)
  L1_2.items = L2_2
  L2_2 = G
  L2_2 = L2_2.InventoryUtils
  L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1._on_left_stick_button_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.show_reward
    L4_2 = false
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_back_zoom_fail = L1_1
return L0_1
