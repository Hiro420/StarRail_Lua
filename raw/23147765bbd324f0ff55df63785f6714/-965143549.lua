local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = "MiniGameReShaInfo_BtnGo_FadeIn"
L1_1 = "MiniGameReShaInfo_BtnGo_Refresh"
L2_1 = "UIText_ReSha_Hint_Depart"
L3_1 = "UIText_ReSha_Hint_UnlockedDepart"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "MiniGameReShaRoutePanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = A0_2._on_btn_start_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  A0_2._is_hidden_route_unlocked = A2_2
  A0_2._is_hidden_route_clear = A3_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_route
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = A1_2.RouteName
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_effect
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A0_2._is_hidden_route_unlocked
  L5_2(L6_2, L7_2)
  if A4_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.UIAnimationUtils
    L5_2 = L5_2.PlayFromBegin
    L6_2 = A0_2._binder
    L6_2 = L6_2.anim_btn_start
    L7_2 = L0_1
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2._refresh_btn_start
    L5_2(L6_2)
  elseif A2_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.UIAnimationUtils
    L5_2 = L5_2.PlayFromBegin
    L6_2 = A0_2._binder
    L6_2 = L6_2.anim_btn_start
    L7_2 = L1_1
    L5_2(L6_2, L7_2)
  else
    L6_2 = A0_2
    L5_2 = A0_2._refresh_btn_start
    L5_2(L6_2)
  end
end
L4_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ReShaClickStart
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_exit_after_transition
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Puzzle.EmptyPuzzlePage"
  L1_2(L2_2)
end
L4_1._on_btn_start_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "ReSha_RefreshBtnStartText" then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_btn_start
    L2_2(L3_2)
  end
end
L4_1._on_ui_animation_event = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1
  L2_2 = A0_2._is_hidden_route_unlocked
  if L2_2 then
    L2_2 = A0_2._is_hidden_route_clear
    if not L2_2 then
      L1_2 = L3_1
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_btn_start
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L4_1._refresh_btn_start = L5_1
return L4_1
