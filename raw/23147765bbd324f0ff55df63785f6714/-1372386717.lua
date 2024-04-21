local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSNSUserIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSNSUserIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusMainEntranceSNSInfoCarouselItem"
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
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
function L3_1(A0_2)
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
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._select_callback = A1_2
  A0_2._select_callback_self = A2_2
end
L0_1.register_select_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._post = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_user_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_post_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_status
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeliobusUserExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._post
  L2_2 = L2_2.UserID
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "HeliobusMainEntranceSNSInfoCarouselItem : \228\184\141\229\173\152\229\156\168UserId\228\184\186("
    L4_2 = A0_2._post
    L4_2 = L4_2.UserID
    L5_2 = ")\231\154\132SNS\231\148\168\230\136\183"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._user_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._post
  L4_2 = L4_2.UserID
  L2_2(L3_2, L4_2)
end
L0_1._setup_user_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_post_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._post
  L3_2 = L3_2.Title
  L1_2(L2_2, L3_2)
end
L0_1._setup_post_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._post
  L1_2 = L1_2.PostType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusPostType
  L2_2 = L2_2.MissionAnchor
  if L1_2 == L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.HeliobusPostType
    L1_2 = L2_2.MissionMain
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusPostTypeConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetMainMissionData
  L5_2 = A0_2._post
  L5_2 = L5_2.Row
  L5_2 = L5_2.PostTypeParameter
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MainMissionTypeConfigExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2.Row
  L5_2 = L5_2.Type
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_post_type_icon
  L8_2 = L4_2.TypeIcon
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = nil
  L6_2 = L1_1.PostMissionInProgress
  if L6_2 ~= nil then
    L6_2 = L1_1.PostMissionInProgress
    L6_2 = L6_2.ID
    L7_2 = A0_2._post
    L7_2 = L7_2.Row
    L7_2 = L7_2.PostTypeParameter
    if L6_2 == L7_2 then
      L5_2 = "UIText_Heliobus_PostStatus_InProgress"
  end
  else
    L5_2 = L2_2.PostTypeName
  end
  L7_2 = A0_2
  L6_2 = A0_2._setup_mission_anim_status
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.txt_post_type_name
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
end
L0_1._setup_status = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._check_is_main_mission_type
  L4_2 = A1_2.Row
  L4_2 = L4_2.Type
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_status
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "MainMission"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A1_2.Row
    L2_2 = L2_2.Type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MainMissionType
    L3_2 = L3_2.Branch
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_status
      L3_2 = L2_2
      L2_2 = L2_2.SetTrigger
      L4_2 = "SubMission"
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._post
      L2_2 = L2_2.PostType
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.HeliobusPostType
      L3_2 = L3_2.MissionEvent
      if L2_2 == L3_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.anim_status
        L3_2 = L2_2
        L2_2 = L2_2.SetTrigger
        L4_2 = "DailyMission"
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._setup_mission_anim_status = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MainMissionType
  L2_2 = L2_2.Gap
  L2_2 = A1_2 == L2_2
  return L2_2
end
L0_1._check_is_main_mission_type = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L3_2 = A0_2._post
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_click_btn = L3_1
return L0_1
