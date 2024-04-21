local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.DailyMission.Daily.HandbookActiveRewardHintPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Daily.HandbookActiveRewardHintPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Daily.HandbookActiveRewardLastHintPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.HandbookModule
L1_1 = {}
L1_1.normal = "#979898"
L1_1.reached = "#3c3c3b"
L2_1 = "SpriteOutput/UI/DailyMission/GetRewardHoverImage.png"
L3_1 = "SpriteOutput/UI/DailyMission/ProgressCircle.png"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "HandbookActiveRewardPanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2
  A0_2._data = nil
  A0_2.is_last = false
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.btn_root
    L1_3 = L0_3
    L0_3 = L0_3.SetChecked
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.get_first_selected_object
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._select_callback
    L2_3 = A0_2._select_hander
    L3_3 = A0_2._index
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.btn_root
      L1_3 = L0_3
      L0_3 = L0_3.SetChecked
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
end
L4_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_info_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_status_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_point_process
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_reward
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "DailyMissionBoxReward"
  L5_2 = A0_2._data
  L5_2 = L5_2.Level
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.reddot
  L7_2 = L7_2.transform
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L4_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_status_view
  L1_2(L2_2)
end
L4_1.refresh_status = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_point
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.DailyActivePoint
  L1_2(L2_2, L3_2)
end
L4_1._setup_info_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_available
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.has_reached
  L1_2 = L1_2(L2_2)
  A0_2._has_reached = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.is_taken
  L1_2 = L1_2(L2_2)
  A0_2._is_taken = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_normal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._has_reached
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_available
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._has_reached
  if L3_2 then
    L3_2 = A0_2._is_taken
    L3_2 = not L3_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_received
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._has_reached
  if L3_2 then
    L3_2 = A0_2._is_taken
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_point
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = A0_2._has_reached
  if L3_2 then
    L3_2 = L1_1.reached
    if L3_2 then
      goto lbl_47
    end
  end
  L3_2 = L1_1.normal
  ::lbl_47::
  L2_2 = L2_2(L3_2)
  L1_2.color = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_bg
  L4_2 = A0_2._is_taken
  if L4_2 then
    L4_2 = L2_1
    if L4_2 then
      goto lbl_59
    end
  end
  L4_2 = L3_1
  ::lbl_59::
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._setup_status_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2 ~= nil
  return L1_2
end
L4_1.has_reached = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L0_1.TakenActiveLevels
  L2_2 = L1_2
  L1_2 = L1_2.Contains
  L3_2 = A0_2._data
  L3_2 = L3_2.Level
  L1_2 = L1_2 ~= nil and L1_2
  return L1_2
end
L4_1.is_taken = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_point_process
  L3_2 = L0_1.ActivePoint
  L1_2(L2_2, L3_2)
end
L4_1._setup_point_process = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.DailyActiveConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._data
  L3_2 = L3_2.WorldLevel
  L4_2 = A0_2._data
  L4_2 = L4_2.Level
  L4_2 = L4_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = 0
    if L3_2 then
      goto lbl_18
    end
  end
  L3_2 = L2_2.DailyActivePoint
  ::lbl_18::
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = 0
  L6_2 = A1_2 - L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._data
  L5_2 = L5_2.DailyActivePoint
  L5_2 = L5_2 - L3_2
  L6_2 = L4_2 / L5_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.bar_point
  L8_2 = math
  L8_2 = L8_2.min
  L9_2 = L6_2
  L10_2 = 1
  L8_2 = L8_2(L9_2, L10_2)
  L7_2.fillAmount = L8_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_full
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = 1 <= L6_2
  L7_2(L8_2, L9_2)
end
L4_1.setup_point_process = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.DailyActiveReward
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateRewardItemTableSorted
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
  end
  A0_2._reward_items = L2_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateConfigIDList
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2._config_id_list = L2_2
end
L4_1._setup_reward = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._reward_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.HandbookActiveRewardHintPanel
    L4_2 = A0_2.is_last
    if L4_2 then
      L4_2 = G
      L4_2 = L4_2.HandbookActiveRewardLastHintPanelBinder
      if L4_2 then
        goto lbl_16
      end
    end
    L4_2 = G
    L4_2 = L4_2.HandbookActiveRewardHintPanelBinder
    ::lbl_16::
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
L4_1._safe_get_reward_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._has_reached
  if L1_2 then
    L1_2 = A0_2._is_taken
    L1_2 = not L1_2
  end
  if L1_2 then
    L2_2 = L0_1
    L3_2 = L2_2
    L2_2 = L2_2.TakeReward
    L4_2 = A0_2._data
    L4_2 = L4_2.Level
    L2_2(L3_2, L4_2)
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._click_callback
  L4_2 = A0_2._click_hander
  L5_2 = A0_2._index
  L6_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L4_1._on_btn_root = L5_1
function L5_1(A0_2, A1_2)
  A0_2._index = A1_2
end
L4_1.register_callback_index = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_hander = A2_2
end
L4_1.register_click_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._select_callback = A1_2
  A0_2._select_hander = A2_2
end
L4_1.register_select_callback = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._reward_panel
  L1_2 = A0_2._reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_show
  L1_2 = L1_2 ~= nil and L1_2
  return L1_2
end
L4_1._is_showing_reward = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_reward_panel
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.show_reward
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L4_1.show_reward = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L4_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L4_1.get_first_selected_btn = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L4_1._on_in_control_action_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_showing_reward
  L1_2 = L1_2(L2_2)
  if L1_2 then
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
end
L4_1._on_left_stick_button_click = L5_1
return L4_1
