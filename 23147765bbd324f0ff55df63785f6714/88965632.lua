local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Expedition.ExpeditionMissionItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.ExpeditionUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ExpeditionMissionItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ExpeditionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.TimeUtils
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueClientExcelTable
L3_1 = L3_1.GetData
L4_1 = "Expedition_WorldMaterial_Group"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.UintValue
function L4_1(A0_2)
  local L1_2
  A0_2._expedition_data = nil
  L1_2 = {}
  A0_2._config_id_list = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._show_detail_callback = A1_2
  A0_2._show_detail_callback_self = A2_2
end
L0_1.register_show_detail_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._start_select_callback = A1_2
  A0_2._start_select_callback_self = A2_2
end
L0_1.register_start_select_avatar_callback = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L4_1
function L4_1(A0_2)
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
L0_1._on_left_stick_button_click = L4_1
function L4_1(A0_2)
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
    L1_3 = A0_2._show_detail_callback
    L2_3 = A0_2._show_detail_callback_self
    L3_3 = A0_2._expedition_data
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._expedition_data
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._remove_reddot
    L2_3 = A0_2._expedition_data
    L2_3 = L2_3.ID
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ExpeditionActivityScheduleStart
  L4_2 = L0_1._on_schedule_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = A0_2._refresh_item_count
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._expedition_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._remove_reddot
  L3_2 = A0_2._expedition_data
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._expedition_data = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._expedition_data
  L5_2 = L5_2.Config
  L5_2 = L5_2.Name
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = L3_2
  L3_2 = L3_2.SetChecked
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  if A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.save_navigation_target
    L5_2 = A0_2._binder
    L5_2 = L5_2.btn_root
    L5_2 = L5_2.gameObject
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._setup_icon_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_remain_timer
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_lock_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_rank_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._bind_reddot
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.transform
  L3_2(L4_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_remain_timer
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_lock_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_icon_reward
  L1_2(L2_2)
end
L0_1.refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.ExpeditionModule
    L2_2 = L1_2
    L1_2 = L1_2.GetExpeditionSchedule
    L3_2 = A0_2._expedition_data
    L3_2 = L3_2.ID
    L1_2 = L1_2(L2_2, L3_2)
    L3_2 = L1_2
    L2_2 = L1_2.IsInSchedule
    L2_2 = L2_2(L3_2)
    L2_2 = L1_2 ~= nil and L2_2
    L4_2 = A0_2
    L3_2 = A0_2._refresh_lock_view
    L3_2(L4_2)
  end
end
L0_1._setup_lock_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.ExpeditionModule
    L2_2 = L1_2
    L1_2 = L1_2.GetExpeditionSchedule
    L3_2 = A0_2._expedition_data
    L3_2 = L3_2.ID
    L1_2 = L1_2(L2_2, L3_2)
    L3_2 = L1_2
    L2_2 = L1_2.IsInSchedule
    L2_2 = L2_2(L3_2)
    L2_2 = L1_2 ~= nil and L2_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_lock
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_remain_timer_lock
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._refresh_lock_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.ExpeditionUtils
  L1_2 = L1_2.get_finish_time_stamp
  L2_2 = A0_2._expedition_data
  L1_2 = L1_2(L2_2)
  A0_2._finish_time = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._show_timer
  L3_2 = A0_2._expedition_data
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.timer_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.remain_timer
    L2_2 = L1_2
    L1_2 = L1_2.SetTargetTimeByTimeStamp
    L3_2 = A0_2._finish_time
    L4_2 = A0_2.refresh
    L5_2 = A0_2
    L6_2 = 3
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.timer_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_remain_timer = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.Status
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ExpeditionStatus
  L3_2 = L3_2.InProgress
  L2_2 = L2_2 == L3_2
  return L2_2
end
L0_1._show_timer = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._expedition_data
  L1_2 = L1_2.IsActivity
  if L1_2 == true then
    L2_2 = A0_2
    L1_2 = A0_2._setup_icon_type
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_icon_reward
    L1_2(L2_2)
  end
end
L0_1._setup_icon_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_icon
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.ExpeditionUtils
  L1_2 = L1_2.get_display_item_id
  L2_2 = A0_2._expedition_data
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.reward_icon
  L6_2 = L2_2.ItemIconPath
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_item_count
  L3_2(L4_2)
end
L0_1._setup_icon_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_count
  if L1_2 ~= nil then
    L1_2 = A0_2._expedition_data
    L1_2 = L1_2.Config
    L1_2 = L1_2.GroupID
    L2_2 = L3_1
    L2_2 = A0_2
    L1_2 = A0_2._show_timer
    L3_2 = A0_2._expedition_data
    L1_2 = L1_2(L2_2, L3_2)
    L1_2 = L1_2 == L2_2 and L1_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_count
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    if L1_2 then
      L2_2 = G
      L2_2 = L2_2.ExpeditionUtils
      L2_2 = L2_2.get_display_item_id
      L3_2 = A0_2._expedition_data
      L2_2 = L2_2(L3_2)
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_ModuleManager
      L3_2 = L3_2.InventoryModule
      L4_2 = L3_2
      L3_2 = L3_2.GetItemCountByConfigID
      L5_2 = L2_2
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.txt_count
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetText
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._refresh_item_count = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_type
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._expedition_data
  L1_2 = L1_2.Config
  L1_2 = L1_2.ExpeditionRank
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityExpeditionRank
  L2_2 = L2_2.Middle
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_type
    L5_2 = "SpriteOutput/Assignment/MedicineSpecialIcon.png"
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ActivityExpeditionRank
    L2_2 = L2_2.Low
    if L1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._async_load_sprite_to
      L4_2 = A0_2._binder
      L4_2 = L4_2.img_type
      L5_2 = "SpriteOutput/Assignment/MedicineNormalIcon.png"
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._setup_icon_type = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._expedition_data
  L1_2 = L1_2.Config
  L1_2 = L1_2.ExpeditionRank
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_rank_color
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L3_2 = pairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.imgs_color_rank
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L7_2.color = L2_2
  end
end
L0_1._setup_rank_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityExpeditionRank
  L2_2 = L2_2.Middle
  if A1_2 == L2_2 then
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#c197ff"
    return L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ActivityExpeditionRank
    L2_2 = L2_2.Low
    if A1_2 == L2_2 then
      L2_2 = G
      L2_2 = L2_2.UIColorUtils
      L2_2 = L2_2.GetColor
      L3_2 = "#73b0f4"
      return L2_2(L3_2)
    else
      L2_2 = nil
      return L2_2
    end
  end
end
L0_1._get_rank_color = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_lock_view
  L2_2(L3_2)
end
L0_1._on_schedule_start = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_reddot
  L3_2 = A0_2._expedition_data
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._start_select_callback
    L3_2 = A0_2._start_select_callback_self
    L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._show_detail_callback
    L3_2 = A0_2._show_detail_callback_self
    L4_2 = A0_2._expedition_data
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_btn_root = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  if L2_2 == nil then
    return
  end
  L3_2 = L2_2.UnseenExpeditionDataIDs
  if L3_2 then
    L3_2 = L2_2.UnseenExpeditionDataIDs
    L4_2 = L3_2
    L3_2 = L3_2.Contains
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = L2_2.UnseenExpeditionDataIDs
      L4_2 = L3_2
      L3_2 = L3_2.Remove
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = A0_2._expedition_data
  L3_2 = L3_2.IsActivity
  if L3_2 == true then
    L3_2 = L2_2.SeenActivityExpeditionDataIDs
    if L3_2 then
      L3_2 = L2_2.SeenActivityExpeditionDataIDs
      L4_2 = L3_2
      L3_2 = L3_2.Contains
      L5_2 = A1_2
      L3_2 = L3_2(L4_2, L5_2)
      if not L3_2 then
        L3_2 = L2_2.SeenActivityExpeditionDataIDs
        L4_2 = L3_2
        L3_2 = L3_2.Add
        L5_2 = A1_2
        L3_2(L4_2, L5_2)
      end
    end
  end
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.ExpeditionRefreshIsNew
  L3_2(L4_2)
end
L0_1._remove_reddot = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.unbind_reddot
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reddot
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ExpeditionItem"
  L4_2 = A0_2._expedition_data
  L4_2 = L4_2.ID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L4_1
return L0_1
