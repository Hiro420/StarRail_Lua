local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSNSUserIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSNSUserIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.MissionUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusCommonSNSMissionInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueClientExcelTable
L1_1 = L1_1.GetData
L2_1 = "Activity_Heliobus_GuidePost_MainMissionIDList"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.ArrayValue
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.HeliobusModule
L3_1 = L3_1.HeliobusSNSData
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusCommonSNSUserIconPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonSNSUserIconPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._user_icon_panel = L1_2
  L1_2 = A0_2._user_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_user_icon
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click_btn
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_lock = false
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._lock_callback = A1_2
  A0_2._lock_callback_self = A2_2
end
L0_1.register_lock_callback = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._is_lock = A1_2
end
L0_1.set_lock = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_btn = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._mission_data
  return L1_2
end
L0_1.get_mission_data = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._mission_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._set_mission_data
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_info
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_user_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L3_1.PostMissionInProgress
  A0_2._mission_data = L1_2
  L1_2 = A0_2._mission_data
  if L1_2 ~= nil then
    L1_2 = A0_2._mission_data
    L1_2 = L1_2.IsStart
  end
  L1_2 = not L1_2 or L1_2
  A0_2._is_lock = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_lock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_color_bg
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = A0_2._mission_data
  L3_2 = L3_2.MissionTypeColor
  L2_2 = L2_2(L3_2)
  L1_2.color = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_user_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.HeliobusSNSUtils
  L1_2 = L1_2.get_post_by_mission_id
  L2_2 = L3_1.PostMissionInProgress
  L2_2 = L2_2.ID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._user_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2.UserID
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusUserExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.UserID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_user_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.HeliobusUserName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._mission_data
  L5_2 = L5_2.NameStr
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_mission_icon
  L6_2 = A0_2._mission_data
  L6_2 = L6_2.TrackIconPath
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_post_mission = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._mission_data
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_reward
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = L3_1.PostMissionInProgress
  A0_2._mission_data = L1_2
  L1_2 = A0_2._mission_data
  if L1_2 == nil then
    L1_2 = 0
    L2_2 = L1_1.Length
    L2_2 = L2_2 - 1
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = L1_1[L4_2]
      L5_2 = L5_2.UintValue
      L6_2 = L2_1
      L7_2 = L6_2
      L6_2 = L6_2.TryGetMainMissionData
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 ~= nil then
        L7_2 = L6_2.IsStart
        if L7_2 then
          A0_2._mission_data = L6_2
          return
        end
      end
    end
  end
end
L0_1._set_mission_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._mission_data
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_arrow
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_mission_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._mission_data
  if L2_2 ~= nil then
    L2_2 = A0_2._mission_data
    L2_2 = L2_2.IsStart
  end
  L2_2 = not L2_2 or L2_2
  A0_2._is_lock = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_lock
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_mission_info
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_empty_info
    L2_2(L3_2)
  end
end
L0_1._setup_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._mission_data
  L3_2 = L3_2.NameStr
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_mission_icon
  L4_2 = A0_2._mission_data
  L4_2 = L4_2.TrackIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._mission_data
  L2_2 = L1_2
  L1_2 = L1_2.GetSubMissionGroups
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_content
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2.Count
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2.Count
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = L1_2.Count
  if 0 < L2_2 then
    L2_2 = G
    L2_2 = L2_2.TextmapStatic
    L2_2 = L2_2.GetText
    L3_2 = L1_2[0]
    L3_2 = L3_2.Description
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_detail
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = L2_2 ~= ""
    L3_2(L4_2, L5_2)
    if L2_2 ~= "" then
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_content
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L1_2[0]
      L5_2 = L5_2.Description
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._setup_mission_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Heliobus_ActivityPanel_MissionUntake"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_content
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Heliobus_ActivityPanel_MissionUntakeDesc"
  L1_2(L2_2, L3_2)
end
L0_1._setup_empty_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_lock
  if L1_2 then
    L1_2 = A0_2._lock_callback
    if L1_2 then
      L1_2 = A0_2._lock_callback_self
      if L1_2 then
        L1_2 = A0_2._lock_callback
        L2_2 = A0_2._lock_callback_self
        L1_2(L2_2)
      end
    end
    return
  end
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L1_2(L2_2)
      return
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._invoke_default_logic
  L1_2(L2_2)
end
L0_1._on_click_btn = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mission_data
  L1_2 = L1_2 ~= nil
  if L1_2 then
    L2_2 = G
    L2_2 = L2_2.MissionUtils
    L2_2 = L2_2.common_jump_to_mission_by_main_mission
    L3_2 = A0_2._mission_data
    L2_2(L3_2)
    return
  else
    L2_2 = G
    L2_2 = L2_2.HeliobusSNSUtils
    L2_2 = L2_2.open_map_by_map_info_id
    L2_2()
  end
end
L0_1._invoke_default_logic = L4_1
return L0_1
