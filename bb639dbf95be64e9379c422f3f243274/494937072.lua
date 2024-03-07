local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusCommonPhoneStatusPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L1_1 = L1_1.HeliobusSNSData
L2_1 = CS
L2_1 = L2_1.RPGTools
L2_1 = L2_1.Device
L2_1 = L2_1.instance
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.NetworkRefreshRTT
  L4_2 = A0_2._setup_wifi
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_uid
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_location
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_wifi
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_battery
  L1_2(L2_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_uid
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_uid
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.PlayerModule
    L3_2 = L3_2.PlayerData
    L3_2 = L3_2.UserID
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_uid = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_location
  if L1_2 ~= nil then
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
  end
end
L0_1._setup_location = L3_1
function L3_1(A0_2)
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
L0_1._setup_wifi = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetBatteryLevel
  L1_2 = L1_2(L2_2)
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetBatteryMaxLevel
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 / L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider_battery
  L3_2 = L1_2 or L3_2
  if not (0 <= L1_2) or not L1_2 then
    L3_2 = 1
  end
  L2_2.value = L3_2
end
L0_1._setup_battery = L3_1
return L0_1
