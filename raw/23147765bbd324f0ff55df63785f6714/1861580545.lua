local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AdventureReward.InteractRewardDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AdventureReward.InteractRewardInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AdventureReward.InteractRewardInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "InteractRewardDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L0_1._interval_fade_in = 2.5
L0_1._interval_fade_out = 1
L0_1._title = "UIText_BookReward_Tips_01"
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.InteractRewardDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2.block_when_async_load = false
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    A0_2._is_hide_cursor = true
    A0_2._is_special_above_dialog = true
  end
  A0_2._allow_camera_zoom_rotation_by_mouse = true
  A0_2._allow_camera_zoom_by_gamepad = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = {}
  end
  A0_2._item_row_list = L2_2
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2._item_row_list
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.ID
    L3_3 = A1_3.ID
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L2_2(L3_2, L4_2)
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._count_down_timer = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.PopupQueueManager
  L2_2 = L1_2
  L1_2 = L1_2.set_maze_main_page_toast
  L3_2 = A0_2
  L4_2 = A0_2._on_notify_finish
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_new_item_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.loader_interact_item
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.loader_interact_item
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.InteractRewardInfoPanel
  L5_2 = G
  L5_2 = L5_2.InteractRewardInfoPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.panel_interact_item = L2_2
  L2_2 = A0_2.panel_interact_item
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._on_timer_callback
  L5_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._count_down_timer = L2_2
  A0_2._is_fading_out = false
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowPageContext
  L4_2 = A0_2._on_notify_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventurePhaseEnd
  L4_2 = A0_2._on_notify_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeToBattleTransitBegin
  L4_2 = A0_2._on_notify_finish
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_title_fade_in
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_reward_by_index
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.set_interval
  L3_2 = L0_1._interval_fade_in
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L0_1._title
  L1_2(L2_2, L3_2)
end
L0_1._setup_title = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_title
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "ListTileFadeIn"
  L1_2(L2_2, L3_2)
end
L0_1._show_title_fade_in = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_title
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "ListTitleShortFadeOut"
  L1_2(L2_2, L3_2)
end
L0_1._show_title_fade_out = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.Log
  L3_2 = "Show Reward Index: "
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  A0_2._cur_index = A1_2
  L2_2 = A0_2._item_row_list
  L2_2 = L2_2[A1_2]
  L3_2 = A0_2.panel_interact_item
  L4_2 = L3_2
  L3_2 = L3_2.setup_view_by_itemRow
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.panel_interact_item
  L4_2 = L3_2
  L3_2 = L3_2.play_fade_in
  L3_2(L4_2)
end
L0_1._show_reward_by_index = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "Hide Reward Index: "
  L3_2 = A0_2._cur_index
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = A0_2.panel_interact_item
  L2_2 = L1_2
  L1_2 = L1_2.play_fade_out
  L1_2(L2_2)
end
L0_1._hide_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_index
  L1_2 = L1_2 + 1
  L2_2 = A0_2._item_row_list
  L2_2 = #L2_2
  L1_2 = L1_2 > L2_2
  return L1_2
end
L0_1._is_final_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._is_fading_out
  if L1_2 == false then
    A0_2._is_fading_out = true
    L2_2 = A0_2
    L1_2 = A0_2._is_final_reward
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._show_title_fade_out
      L1_2(L2_2)
    end
    L2_2 = A0_2
    L1_2 = A0_2._hide_reward
    L1_2(L2_2)
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.set_interval
    L3_2 = L0_1._interval_fade_out
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.start
    L1_2(L2_2)
  else
    A0_2._is_fading_out = false
    L2_2 = A0_2
    L1_2 = A0_2._is_final_reward
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._show_reward_finish
      L1_2(L2_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._show_reward_by_index
      L3_2 = A0_2._cur_index
      L3_2 = L3_2 + 1
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._count_down_timer
      L2_2 = L1_2
      L1_2 = L1_2.set_interval
      L3_2 = L0_1._interval_fade_in
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._count_down_timer
      L2_2 = L1_2
      L1_2 = L1_2.reset
      L1_2(L2_2)
      L1_2 = A0_2._count_down_timer
      L2_2 = L1_2
      L1_2 = L1_2.start
      L1_2(L2_2)
    end
  end
end
L0_1._on_timer_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._show_reward_finish = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_notify_finish = L1_1
return L0_1
