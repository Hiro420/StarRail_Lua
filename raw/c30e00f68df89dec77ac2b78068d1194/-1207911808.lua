local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AdventureReward.NewItemRewardDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AdventureReward.NewItemRewardInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AdventureReward.NewItemRewardInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NewItemRewardDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.NewItemRewardDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2.block_when_async_load = false
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._item_row = A1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._count_down_timer = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_interact_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.loader_new_item
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.loader_new_item
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.NewItemRewardInfoPanel
  L5_2 = G
  L5_2 = L5_2.NewItemRewardInfoPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.panel_new_item = L2_2
  L2_2 = A0_2.panel_new_item
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
  L4_2 = A0_2._on_show_ui_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventurePhaseEnd
  L4_2 = A0_2._on_adventure_phase_end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.panel_new_item
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._item_row
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.set_interval
  L3_2 = 2.5
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
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._is_fading_out
  if L1_2 == false then
    L1_2 = A0_2.panel_new_item
    L2_2 = L1_2
    L1_2 = L1_2.play_fade_out
    L1_2(L2_2)
    A0_2._is_fading_out = true
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.set_interval
    L3_2 = 1
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
    L1_2 = A0_2._show_reward_finish
    L1_2(L2_2)
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
  L1_2 = A0_2._show_reward_finish
  L1_2(L2_2)
end
L0_1._on_show_ui_page = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_adventure_phase_end = L1_1
return L0_1
