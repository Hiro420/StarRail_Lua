local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolySocialEventPanelBinder"
L0_1(L1_1)
L0_1 = "UIText_ActivityMonopoly_Event_Tips_AddFriendCoin_FromFriend"
L1_1 = "UIText_ActivityMonopoly_Event_Tips_SubFriendCoin_FromFriend"
L2_1 = ""
L3_1 = ""
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.MonopolyUtils
L4_1 = L4_1.GetMonopolySocialEventShowTime
L4_1 = L4_1()
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "ActivityMonopolySocialEventPanel"
L7_1 = G
L7_1 = L7_1.BasePanel
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2, A1_2, A2_2)
end
L5_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_wait_timer_finish
  L4_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._wait_timer = L1_2
end
L5_1._on_load = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_player_photo
  L6_2 = L5_2
  L5_2 = L5_2.setup_view_by_id
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_name
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  if A3_2 ~= 0 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_desc
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L0_1
    L8_2 = A3_2
    L5_2(L6_2, L7_2, L8_2)
  else
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_desc
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L1_1
    L8_2 = A4_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2._start_wait_timer
  L5_2(L6_2)
end
L5_1.setup_view = L6_1
function L6_1(A0_2)
  local L1_2
end
L5_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._wait_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_handler
  L1_2(L2_2, L3_2)
end
L5_1._on_wait_timer_finish = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._wait_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._wait_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L5_1._start_wait_timer = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_handler = A2_2
end
L5_1.register_fadeout_finish_callback = L6_1
return L5_1
