local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PhoneStatusBarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPGTools
L1_1 = L1_1.Device
L1_1 = L1_1.instance
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.NetworkRefreshRTT
  L4_2 = L0_1._on_refresh_wifi
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_location
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.AdventureModule
  L3_2 = L3_2.MapDef
  L3_2 = L3_2.CurMapName
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetBatteryLevel
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetBatteryMaxLevel
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 / L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.bar_battery
  L3_2 = L1_2 or L3_2
  if not (0 <= L1_2) or not L1_2 then
    L3_2 = 1
  end
  L2_2.size = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.bar_wifi
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TimeUtils
  L3_2 = L3_2.NetSignalStrength
  L2_2.CurRate = L3_2
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.bar_wifi
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TimeUtils
  L2_2 = L2_2.NetSignalStrength
  L1_2.CurRate = L2_2
end
L0_1._on_refresh_wifi = L2_1
return L0_1
