local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = 5
L1_1 = 6
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "MazeDroneActionPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
  A0_2._id = 0
  A0_2._back_btn_visible = true
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_func
  L4_2 = A0_2._on_btn_func
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_quit
  L4_2 = A0_2._on_btn_quit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_hold
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_up
  L4_2 = A0_2._on_btn_move_hold
  L5_2 = A0_2._on_btn_move_unhold
  L6_2 = A0_2._on_btn_move_unhold
  L7_2 = L0_1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_hold
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_down
  L4_2 = A0_2._on_btn_move_hold
  L5_2 = A0_2._on_btn_move_unhold
  L6_2 = A0_2._on_btn_move_unhold
  L7_2 = L1_1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIDronesMovingUp
  L4_2 = A0_2._on_drone_moving_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIDronesMovingDown
  L4_2 = A0_2._on_drone_moving_down
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdeventureFuncBtnEnableEffect
  L4_2 = A0_2._on_set_effect_enable
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SetDroneFuncBtn
  L4_2 = A0_2._on_drone_set_func_btn
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_quit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._back_btn_visible
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_moving_view
  L3_2 = false
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_func_btn
  L1_2(L2_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.PuzzleID
  A0_2._id = L2_2
  L2_2 = A1_2.FuncID
  A0_2._btn_id = L2_2
  L2_2 = A1_2.ShowBack
  A0_2._back_btn_visible = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_func_btn
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_back_btn
  L2_2(L3_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_quit
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_quit
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = A0_2._back_btn_visible
      L1_2(L2_2, L3_2)
    end
  end
end
L2_1._refresh_back_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_func
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._btn_id
  if L1_2 == 1 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_func
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_func
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "actionTextmapID_Menu_DroneIdentify"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._btn_id
    if L1_2 == 2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_func
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_func
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "actionTextmapID_Menu_DroneShot"
      L1_2(L2_2, L3_2)
    end
  end
end
L2_1._refresh_func_btn = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
  else
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.MinimapOnPuzzleWarn
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L2_1.on_enable_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPuzzleCommonAction
  L1_2(L2_2)
end
L2_1._on_btn_func = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkCancelHint
  L2_2 = "UIText_Drone_Return_Tips_Confirm"
  L3_2 = "UIText_Rogue_Quit_Comfirm_Title"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = G
      L1_3 = L1_3.NotifyManager
      L1_3 = L1_3.notify
      L2_3 = G
      L2_3 = L2_3.CS
      L2_3 = L2_3.NotifyType
      L2_3 = L2_3.UIPuzzleCommonExit
      L3_3 = A0_2._id
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_btn_quit = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIPuzzleCommonAction1
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L2_1._on_btn_move_hold = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIPuzzleCommonAction2
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L2_1._on_btn_move_unhold = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_loop_effect
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._on_set_effect_enable = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._btn_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_func_btn
  L2_2(L3_2)
end
L2_1._on_drone_set_func_btn = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_moving_view
  L4_2 = A1_2
  L5_2 = nil
  L2_2(L3_2, L4_2, L5_2)
end
L2_1._on_drone_moving_up = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_moving_view
  L4_2 = nil
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L2_1._on_drone_moving_down = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_up_moving
  if L3_2 ~= nil and A1_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_up_moving
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_down_moving
  if L3_2 ~= nil and A2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_down_moving
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L2_1._refresh_moving_view = L3_1
return L2_1
