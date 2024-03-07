local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NetStatusPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 200
L2_1 = 400
L3_1 = 999
L4_1 = 3
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.NetworkConnectStateChange
  L4_2 = L0_1._refresh_connect_status
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.NetworkRefreshRTT
  L4_2 = L0_1._refresh_rtt
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AppUtils
  L1_2 = L1_2.IsCloudPlatform
  if L1_2 == false then
    L2_2 = A0_2
    L1_2 = A0_2.set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_rtt
  L1_2(L2_2)
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeUtils
  L1_2 = L1_2.NetRttMsTime
  L2_2 = L3_1
  if L1_2 > L2_2 then
    L1_2 = L3_1
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_signal_rate
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.bar_signal
  L4_2 = L4_1
  L4_2 = L2_2 / L4_2
  L3_2.CurRate = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_time
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_Network_Signal_Suffix"
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = L1_2
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_time
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextColor
  L6_2 = A0_2
  L5_2 = A0_2._get_text_color
  L7_2 = L1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._refresh_rtt = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = L1_1
  if A1_2 < L2_2 then
    L2_2 = 3
    return L2_2
  else
    L2_2 = L2_1
    if A1_2 < L2_2 then
      L2_2 = 2
      return L2_2
    else
      L2_2 = 1
      return L2_2
    end
  end
end
L0_1._get_signal_rate = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = L1_1
  if A1_2 < L2_2 then
    L2_2 = "#2EFFF8"
    return L2_2
  else
    L2_2 = L2_1
    if A1_2 < L2_2 then
      L2_2 = "#F29E38"
      return L2_2
    else
      L2_2 = "#EB4D3D"
      return L2_2
    end
  end
end
L0_1._get_text_color = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.PEHMELBCCKC
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.ConnectState
  L2_2 = L2_2.Connected
  L2_2 = L1_2 == L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.disconnect_mark
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.connected_mark
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._refresh_connect_status = L5_1
return L0_1
