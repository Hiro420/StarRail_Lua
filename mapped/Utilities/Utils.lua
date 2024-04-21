local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "Utils"
L0_1 = L0_1(L1_1)
L1_1 = ","
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
L0_1.get_table_length = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  if L1_2 == "table" then
    L3_2 = {}
    L2_2 = L3_2
    L3_2 = next
    L4_2 = A0_2
    L5_2 = nil
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = G
      L8_2 = L8_2.Utils
      L8_2 = L8_2.deep_copy
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      L9_2 = G
      L9_2 = L9_2.Utils
      L9_2 = L9_2.deep_copy
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L2_2[L8_2] = L9_2
    end
    L3_2 = setmetatable
    L4_2 = L2_2
    L5_2 = G
    L5_2 = L5_2.Utils
    L5_2 = L5_2.deep_copy
    L6_2 = getmetatable
    L7_2 = A0_2
    L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  else
    L2_2 = A0_2
  end
  return L2_2
end
L0_1.deep_copy = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  if L1_2 == "table" then
    L3_2 = {}
    L2_2 = L3_2
    L3_2 = pairs
    L4_2 = A0_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L2_2[L6_2] = L7_2
    end
  else
    L2_2 = A0_2
  end
  return L2_2
end
L0_1.shallow_copy = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == A1_2 then
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.index_of_item = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = #A1_2
  while 0 < L2_2 do
    L3_2 = table
    L3_2 = L3_2.remove
    L4_2 = A0_2
    L5_2 = A1_2[L2_2]
    L3_2(L4_2, L5_2)
    L2_2 = L2_2 - 1
  end
end
L0_1.remove_list_by_idx_list = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L3_2 = L2_2.SelectedUITabIndex
  L4_2 = L3_2
  L3_2 = L3_2.set_Item
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.save_tab_index = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2.SelectedUITabIndex
  L3_2 = L2_2
  L2_2 = L2_2.Remove
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L0_1.remove_tab_index_storage = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  if L2_2 then
    L3_2 = L2_2.SelectedUITabIndex
    if L3_2 then
      L3_2 = L2_2.SelectedUITabIndex
      L4_2 = L3_2
      L3_2 = L3_2.ContainsKey
      L5_2 = A0_2
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L3_2 = L2_2.SelectedUITabIndex
        L4_2 = L3_2
        L3_2 = L3_2.get_Item
        L5_2 = A0_2
        return L3_2(L4_2, L5_2)
    end
  end
  else
    return A1_2
  end
end
L0_1.get_tab_index = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ConstValueCommonExcelTable
  L3_2 = L3_2.GetData
  L4_2 = "UI_SortMomory_Open"
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.Value
  L3_2 = L3_2.BoolValue
  if not L3_2 then
    return A1_2
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prefs
  L4_2 = L4_2.User
  L5_2 = nil
  if L4_2 then
    L6_2 = L4_2.CommonUISortType
    if L6_2 then
      L6_2 = L4_2.CommonUISortType
      L7_2 = L6_2
      L6_2 = L6_2.ContainsKey
      L8_2 = A0_2
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        L6_2 = L4_2.CommonUISortType
        L7_2 = L6_2
        L6_2 = L6_2.get_Item
        L8_2 = A0_2
        L6_2 = L6_2(L7_2, L8_2)
        L5_2 = L6_2
      end
    end
  end
  if A2_2 == nil then
    L6_2 = L5_2 or L6_2
    if L5_2 == nil or not L5_2 then
      L6_2 = A1_2
    end
    return L6_2
  elseif L5_2 == nil then
    return A1_2
  else
    L6_2 = L0_1.enum_from_int_str
    L7_2 = A2_2
    L8_2 = L5_2
    return L6_2(L7_2, L8_2)
  end
end
L0_1.get_sort_type_from_cache = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A2_2 ~= nil then
    L3_2 = L0_1.enum_to_int_str
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    A1_2 = L3_2
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L4_2 = L3_2.CommonUISortType
  L5_2 = L4_2
  L4_2 = L4_2.set_Item
  L6_2 = A0_2
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.save_sort_type_to_cache = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ConstValueCommonExcelTable
  L3_2 = L3_2.GetData
  L4_2 = "UI_SortMomory_Open"
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.Value
  L3_2 = L3_2.BoolValue
  if not L3_2 then
    return A1_2
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prefs
  L4_2 = L4_2.User
  L5_2 = nil
  if L4_2 then
    L6_2 = L4_2.CommonUISortType
    if L6_2 then
      L6_2 = L4_2.CommonUISortType
      L7_2 = L6_2
      L6_2 = L6_2.ContainsKey
      L8_2 = A0_2
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        L6_2 = L4_2.CommonUISortType
        L7_2 = L6_2
        L6_2 = L6_2.get_Item
        L8_2 = A0_2
        L6_2 = L6_2(L7_2, L8_2)
        L5_2 = L6_2
      end
    end
  end
  if A2_2 == nil then
    L6_2 = L5_2 or L6_2
    if L5_2 == nil or not L5_2 then
      L6_2 = A1_2
    end
    return L6_2
  elseif L5_2 == nil then
    return A1_2
  else
    L6_2 = {}
    L7_2 = L0_1.string_split
    L8_2 = L5_2
    L9_2 = L1_1
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = ipairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    for L11_2, L12_2 in L8_2, L9_2, L10_2 do
      L13_2 = L0_1.enum_from_int_str
      L14_2 = A2_2
      L15_2 = L12_2
      L13_2 = L13_2(L14_2, L15_2)
      if L13_2 ~= nil then
        L14_2 = #L6_2
        L14_2 = L14_2 + 1
        L6_2[L14_2] = L13_2
      end
    end
    return L6_2
  end
end
L0_1.get_sort_type_list_from_cache = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = {}
  L4_2 = ipairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = #L3_2
    L9_2 = L9_2 + 1
    L10_2 = L0_1.enum_to_int_str
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    L3_2[L9_2] = L10_2
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prefs
  L4_2 = L4_2.User
  L5_2 = L4_2.CommonUISortType
  L6_2 = L5_2
  L5_2 = L5_2.set_Item
  L7_2 = A0_2
  L8_2 = table
  L8_2 = L8_2.concat
  L9_2 = L3_2
  L10_2 = L1_1
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1.save_sort_type_list_to_cache = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == "number" then
    L2_2 = ""
    L3_2 = L1_2
    L1_2 = L2_2 .. L3_2
  else
    L2_2 = type
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 == "string" then
    else
      L2_2 = ""
      L3_2 = #L1_2
      L1_2 = L2_2 .. L3_2
    end
  end
  return L1_2
end
L0_1.enum_to_int_str = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.__CastFrom
  L4_2 = L2_2
  return L3_2(L4_2)
end
L0_1.enum_from_int_str = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  if L1_2 ~= nil then
    L2_2 = L1_2.PlayerData
    L2_2 = L2_2.UserID
    if L2_2 ~= 0 then
      goto lbl_15
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_15::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L3_2 = false
  if L2_2 then
    L4_2 = L2_2.SeenMainMissions
    if L4_2 then
      L4_2 = L2_2.SeenMainMissions
      L5_2 = L4_2
      L4_2 = L4_2.Contains
      L6_2 = A0_2
      L4_2 = L4_2(L5_2, L6_2)
      if not L4_2 then
        L3_2 = true
      end
    end
  end
  return L3_2
end
L0_1.is_main_mission_new = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L2_2 = L1_2
  L1_2 = L1_2.TryGetMainMissionData
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.IsFinish
    if not L2_2 then
      goto lbl_16
    end
  end
  do return end
  ::lbl_16::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  if L2_2 then
    L3_2 = L2_2.SeenMainMissions
    if L3_2 then
      L3_2 = L2_2.SeenMainMissions
      L4_2 = L3_2
      L3_2 = L3_2.Contains
      L5_2 = A0_2
      L3_2 = L3_2(L4_2, L5_2)
      if not L3_2 then
        L3_2 = L2_2.SeenMainMissions
        L4_2 = L3_2
        L3_2 = L3_2.Add
        L5_2 = A0_2
        L3_2(L4_2, L5_2)
        L3_2 = G
        L3_2 = L3_2.NotifyManager
        L3_2 = L3_2.notify
        L4_2 = G
        L4_2 = L4_2.CS
        L4_2 = L4_2.NotifyType
        L4_2 = L4_2.ReddotRefreshMissionID
        L5_2 = A0_2
        L3_2(L4_2, L5_2)
      end
    end
  end
  return
end
L0_1.mark_main_mission_seen = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIStringUtil
  L1_2 = L1_2.GetNameLength
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1.get_name_length = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIStringUtil
  L2_2 = L2_2.CheckNameLengthValid
  L3_2 = A0_2
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.check_name_length_valid = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.UIUtils
  L0_2 = L0_2.IsPCMode
  return L0_2
end
L0_1.is_pc_mode = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.AppUtils
  L0_2 = L0_2.IsPCLayout
  return L0_2
end
L0_1.is_pc_layout = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.AppUtils
  L0_2 = L0_2.IsWindowsPlatform
  return L0_2
end
L0_1.is_windows_platform = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.AppUtils
  L0_2 = L0_2.IsPSPlatform
  return L0_2
end
L0_1.is_ps_platform = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1.is_pc_mode
  L0_2 = L0_2()
  if not L0_2 then
    L0_2 = L0_1.is_ps_platform
    L0_2 = L0_2()
  end
  return L0_2
end
L0_1.is_pc_or_ps_platform = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.UIUtils
  L0_2 = L0_2.IsGamePadMode
  return L0_2
end
L0_1.is_pc_or_ps_or_mobile_gamepad_mode = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.AppUtils
  L0_2 = L0_2.IsMobilePlatform
  return L0_2
end
L0_1.is_mobile_platform = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.AppUtils
  L0_2 = L0_2.IsCloudPlatform
  return L0_2
end
L0_1.is_cloud_platform = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.AppUtils
  L0_2 = L0_2.IsCloudUseGamePad
  return L0_2
end
L0_1.is_cloud_use_gamepad = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.AppUtils
  L0_2 = L0_2.IsCloudAndroidPlatform
  return L0_2
end
L0_1.is_cloud_android_platform = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.AppUtils
  L0_2 = L0_2.IsCloudIOSPlatform
  return L0_2
end
L0_1.is_cloud_ios_platform = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.AppUtils
  L0_2 = L0_2.IsCloudWebMac
  return L0_2
end
L0_1.is_cloud_web_mac = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.AppUtils
  L0_2 = L0_2.IsCloudWebAndroid
  return L0_2
end
L0_1.is_cloud_web_android = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.AppUtils
  L0_2 = L0_2.IsCloudWebIOS
  return L0_2
end
L0_1.is_cloud_web_ios = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.AppUtils
  L0_2 = L0_2.IsCloudWebTouch
  return L0_2
end
L0_1.is_cloud_web_touch = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1.is_cloud_android_platform
  L0_2 = L0_2()
  if not L0_2 then
    L0_2 = L0_1.is_cloud_ios_platform
    L0_2 = L0_2()
    if not L0_2 then
      L0_2 = L0_1.is_cloud_web_android
      L0_2 = L0_2()
      if not L0_2 then
        L0_2 = L0_1.is_cloud_web_ios
        L0_2 = L0_2()
        if not L0_2 then
          L0_2 = L0_1.is_cloud_web_touch
          L0_2 = L0_2()
        end
      end
    end
  end
  return L0_2
end
L0_1.is_cloud_mobile_platform = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.RPGQualitySettings
  L0_2 = L0_2.GetRealPlatform
  L0_2 = L0_2()
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Platform
  L1_2 = L1_2.iOS
  L0_2 = L0_2 == L1_2
  return L0_2
end
L0_1.is_ios_platform = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.SystemOpenModule
  L0_2 = L0_2.IsCommunicationRestricted
  return L0_2()
end
L0_1.is_communication_restricted = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Screen
  L1_2 = L1_2.width
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Screen
  L2_2 = L2_2.height
  L3_2 = L1_2 / L2_2
  L4_2 = L3_2 < 1.6
  return L4_2
end
L0_1.is_4_3_aspect = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.UIUtils
  L0_2 = L0_2.IsMobileGamePadMode
  return L0_2
end
L0_1.is_mobile_gamepad_mode = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.UIUtils
  L0_2 = L0_2.IsGamePadInput
  return L0_2
end
L0_1.is_gamepad_input = L2_1
function L2_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.do_filter
  L2_2 = A0_2
  L3_2 = {}
  L4_2 = ...
  L3_2[1] = L4_2
  return L1_2(L2_2, L3_2)
end
L0_1.filter = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.filter
    L10_2 = L2_2
    L8_2 = L8_2(L9_2, L10_2)
    L2_2 = L8_2
  end
  return L2_2
end
L0_1.do_filter = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  if A0_2 ~= nil then
    if A1_2 then
      L3_2 = A0_2.Count
      L3_2 = L3_2 - 1
      if L3_2 then
        goto lbl_11
      end
    end
    L3_2 = 0
    ::lbl_11::
    if A1_2 then
      L4_2 = 0
      if L4_2 then
        goto lbl_18
      end
    end
    L4_2 = A0_2.Count
    L4_2 = L4_2 - 1
    ::lbl_18::
    if A1_2 then
      L5_2 = -1
      if L5_2 then
        goto lbl_24
      end
    end
    L5_2 = 1
    ::lbl_24::
    L6_2 = L3_2
    L7_2 = L4_2
    L8_2 = L5_2
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = #L2_2
      L10_2 = L10_2 + 1
      L11_2 = A0_2[L9_2]
      L2_2[L10_2] = L11_2
    end
  end
  return L2_2
end
L0_1.create_lua_table_from_cs_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  if A0_2 ~= nil then
    L2_2 = 0
    L3_2 = A0_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L5_2 + 1
      L7_2 = A0_2[L5_2]
      L1_2[L6_2] = L7_2
    end
  end
  return L1_2
end
L0_1.create_lua_table_from_cs_array = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 == nil then
    L1_2 = {}
    return L1_2
  end
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = #L1_2
    L3_2 = L3_2 + 1
    L4_2 = L2_2.Current
    L4_2 = L4_2.Value
    L1_2[L3_2] = L4_2
  end
  return L1_2
end
L0_1.create_lua_table_from_cs_dict = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 == nil then
    L1_2 = {}
    return L1_2
  end
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = #L1_2
    L3_2 = L3_2 + 1
    L4_2 = L2_2.Current
    L1_2[L3_2] = L4_2
  end
  return L1_2
end
L0_1.create_lua_table_from_cs_enumerable = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 == nil then
    L1_2 = {}
    return L1_2
  end
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L3_2 = L3_2.Key
    L4_2 = L2_2.Current
    L4_2 = L4_2.Value
    L1_2[L3_2] = L4_2
  end
  return L1_2
end
L0_1.create_lua_table_from_cs_dict_with_key = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 == nil or A1_2 == nil then
    return A1_2
  end
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = #A1_2
    L7_2 = L7_2 + 1
    A1_2[L7_2] = L6_2
  end
  return A1_2
end
L0_1.table_merge = L2_1
function L2_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2
  if A0_2 == nil then
    return
  end
  if A1_2 ~= nil then
    L2_2 = A0_2
    L3_2 = A1_2
    L4_2 = ...
    return L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2
    L3_2, L4_2 = ...
    return L2_2(L3_2, L4_2)
  end
end
L0_1.invoke_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = NG_HSOD_DEBUG
  if not L1_2 then
    L1_2 = NG_HSOD_PROFILE
    if not L1_2 then
      goto lbl_18
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.SystemOpenModule
  L1_2 = L1_2.IsUnlockAllFunc
  if L1_2 then
    L1_2 = true
    return L1_2
  end
  ::lbl_18::
  if nil ~= A0_2 and A0_2 ~= 0 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.SystemOpenModule
    L1_2 = L1_2.IsOpen
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L2_2 = false
      return L2_2
    end
  end
  L1_2 = true
  return L1_2
end
L0_1.is_unlock = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Common.CommonIntroduceDialog"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_title
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_content
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.show_introduce = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Common.CommonIntroduceDialog"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_title_with_text
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_content_with_text
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.show_introduce_with_text = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  L3_2 = string
  L3_2 = L3_2.gsub
  L4_2 = A0_2
  L5_2 = "[^"
  L6_2 = A1_2
  L7_2 = "]+"
  L5_2 = L5_2 .. L6_2 .. L7_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = table
    L1_3 = L1_3.insert
    L2_3 = L2_2
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L3_2(L4_2, L5_2, L6_2)
  return L2_2
end
L0_1.string_split = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L1_2 = type
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 == "string" then
      L1_2 = #A0_2
      if not (L1_2 <= 0) then
        goto lbl_13
      end
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_13::
  L1_2 = 0
  L2_2 = 1
  while true do
    L3_2 = string
    L3_2 = L3_2.byte
    L4_2 = A0_2
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = 1
    if 239 < L3_2 then
      L4_2 = 4
    elseif 223 < L3_2 then
      L4_2 = 3
    elseif 128 < L3_2 then
      L4_2 = 2
    else
      L4_2 = 1
    end
    L2_2 = L2_2 + L4_2
    L1_2 = L1_2 + 1
    L5_2 = #A0_2
    if L2_2 > L5_2 then
      break
    end
  end
  return L1_2
end
L0_1.get_string_display_length = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  return L1_2
end
L0_1.cs_list_to_table = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = A0_2.Count
  if 0 < L2_2 then
    L2_2 = 0
    L3_2 = A0_2.Count
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2[L5_2]
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L1_2
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  return L1_2
end
L0_1.cs_list_to_table_orderly = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = L0_1.string_split
  L3_2 = A0_2
  L4_2 = ","
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = tonumber
    L11_2 = L7_2
    L10_2, L11_2 = L10_2(L11_2)
    L8_2(L9_2, L10_2, L11_2)
  end
  return L1_2
end
L0_1.convert_const_str_value_to_list = L2_1
L0_1._last_clipboard_text = nil
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AppUtils
  L2_2 = L2_2.IsCloudPlatform
  if L2_2 then
    L2_2 = L0_1._get_cloud_clipboard_text
    function L3_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = L0_1._on_get_clipboard_text
      L2_3 = A0_3
      L3_3 = A0_2
      L4_3 = A1_2
      L1_3(L2_3, L3_3, L4_3)
    end
    L2_2(L3_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ClipboardUtils
  L2_2 = L2_2.GetTextFromClipboard
  L2_2 = L2_2()
  L3_2 = L0_1._on_get_clipboard_text
  L4_2 = L2_2
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.get_cliboard_text_with_permission = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L0_1._is_platform_need_permission
  L3_2 = L3_2()
  if not L3_2 then
    L3_2 = L0_1.invoke_callback
    L4_2 = A1_2
    L5_2 = A2_2
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  L3_2 = L0_1._last_clipboard_text
  if A0_2 == L3_2 then
    L3_2 = L0_1.invoke_callback
    L4_2 = A1_2
    L5_2 = A2_2
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  L3_2 = L0_1._show_clipboard_permission_dialog
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L0_1._last_clipboard_text = L0_3
    L0_3 = L0_1.invoke_callback
    L1_3 = A1_2
    L2_3 = A2_2
    L3_3 = A0_2
    L0_3(L1_3, L2_3, L3_3)
  end
  L3_2(L4_2)
end
L0_1._on_get_clipboard_text = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = OVERSEA_BUILD
  if L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.AppUtils
  L0_2 = L0_2.IsAndroidPlatform
  if not L0_2 then
    L0_2 = CS
    L0_2 = L0_2.RPG
    L0_2 = L0_2.Client
    L0_2 = L0_2.AppUtils
    L0_2 = L0_2.IsCloudAndroidPlatform
    if not L0_2 then
      goto lbl_22
    end
  end
  L0_2 = true
  do return L0_2 end
  ::lbl_22::
  L0_2 = false
  return L0_2
end
L0_1._is_platform_need_permission = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ConfirmDialogUtil
  L2_2 = L2_2.ShowOkCancelHint
  L3_2 = "UIText_ClipboardPermission_Dialog_Request"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TextID
  L4_2 = L4_2.empty
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = L0_1.invoke_callback
      L2_3 = A0_2
      L3_3 = A1_2
      L1_3(L2_3, L3_3)
    end
  end
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2.TextIDOK = "UIText_ClipboardPermission_Comfirm"
  L2_2.TextIDCancel = "UIText_ClipboardPermission_Refuse"
end
L0_1._show_clipboard_permission_dialog = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CloudUtils
  L2_2 = L2_2.GetClipboardTextFromSDK
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = L0_1.invoke_callback
    L3_3 = A0_2
    L4_3 = A1_2
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L2_2(L3_2)
end
L0_1._get_cloud_clipboard_text = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 == nil then
    return
  end
  if A1_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.CoroutineUtils
    L2_2 = L2_2.InvokeNextFrame
    function L3_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = A1_2
      L0_3(L1_3)
    end
    L2_2(L3_2)
  end
end
L0_1.invoke_next_frame_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A0_2 == nil then
    return
  end
  if A1_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.CoroutineUtils
    L3_2 = L3_2.InvokeAfterFrames
    L4_2 = A2_2
    function L5_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = A1_2
      L0_3(L1_3)
    end
    L3_2(L4_2, L5_2)
  end
end
L0_1.invoke_after_frames_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A0_2 == nil then
    return
  end
  if A1_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.CoroutineUtils
    L3_2 = L3_2.InvokeAfterSeconds
    L4_2 = A2_2
    function L5_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = A1_2
      L0_3(L1_3)
    end
    L3_2(L4_2, L5_2)
  end
end
L0_1.invoke_after_seconds_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.GetMainWorld
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GameWorldStatic
  L3_2 = L3_2.TriggerCustomStringEvent
  L4_2 = L2_2
  L5_2 = nil
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.trigger_custom_string = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = nil
  L2_2 = pairs
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L1_2 then
      if L6_2 < L1_2 then
        L1_2 = L6_2
      end
    else
      L1_2 = L6_2
    end
  end
  return L1_2
end
L0_1.get_min_by_table = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = L0_1.is_ps_platform
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.InControl
    L1_2 = L1_2.InputControlType
    L1_2 = L1_2.TouchPadButton
    L1_2 = #L1_2
    L1_2 = A0_2 == L1_2
    return L1_2
  else
    L1_2 = CS
    L1_2 = L1_2.InControl
    L1_2 = L1_2.InputControlType
    L1_2 = L1_2.Share
    L1_2 = #L1_2
    L1_2 = A0_2 == L1_2
    return L1_2
  end
end
L0_1.is_in_control_share_type = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.Options
  L1_2 = #L1_2
  L1_2 = A0_2 == L1_2
  return L1_2
end
L0_1.is_in_control_option_type = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1.deep_copy
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  while true do
    L3_2 = #L1_2
    if not (0 < L3_2) then
      break
    end
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIRandomUtils
    L3_2 = L3_2.RangeInt
    L4_2 = 1
    L5_2 = #L1_2
    L5_2 = L5_2 + 1
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = table
    L4_2 = L4_2.remove
    L5_2 = L1_2
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L2_2
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  return L2_2
end
L0_1.shuffle_table = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  if A0_2 then
    L2_2 = A0_2
    L1_2 = A0_2.GetPressDownTime
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_8
    end
  end
  L1_2 = 0
  ::lbl_8::
  if L1_2 <= 2 then
    L2_2 = 1
    return L2_2
  elseif L1_2 < 4 then
    L2_2 = 5
    return L2_2
  elseif L1_2 < 5 then
    L2_2 = 10
    return L2_2
  elseif L1_2 < 6 then
    L2_2 = 100
    return L2_2
  else
    L2_2 = 300
    return L2_2
  end
end
L0_1.get_long_press_repeat_speed = L2_1
return L0_1
