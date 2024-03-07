local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "OnlineStatusPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_node
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if not A1_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_last_login_time
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_online
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_offline
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_node = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.Days
  if 0 < L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_offline
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Friend_Func_State_BeforeOffline_Day"
    L5_2 = A1_2.Days
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A1_2.Hours
    if 0 < L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_offline
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_Friend_Func_State_BeforeOffline_Hour"
      L5_2 = A1_2.Hours
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_offline
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_Friend_Func_State_BeforeOffline_Minutes"
      L5_2 = A1_2.Minutes
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._setup_last_login_time = L1_1
return L0_1
