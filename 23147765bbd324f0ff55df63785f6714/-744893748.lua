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
L1_1 = "HeliobusActionDayResultNewMissionPostPanel"
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
  A0_2._mission_post_user_icon_1st_panel = L1_2
  L1_2 = A0_2._mission_post_user_icon_1st_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_1st_mission_post_user_icon
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusCommonSNSUserIconPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonSNSUserIconPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mission_post_user_icon_2nd_panel = L1_2
  L1_2 = A0_2._mission_post_user_icon_2nd_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_2nd_mission_post_user_icon
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusCommonSNSUserIconPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonSNSUserIconPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._anchor_mission_post_user_icon_panel = L1_2
  L1_2 = A0_2._anchor_mission_post_user_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_anchor_mission_post_user_icon
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission_post
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_all_finish_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.setup_all_finish_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission_post
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_all_finish_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._generate_mission_table
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_1st_mission_post
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_2nd_mission_post
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_anchor_mission_post
  L1_2(L2_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._main_mission_post = L1_2
  L1_2 = {}
  A0_2._sub_mission_post = L1_2
  L1_2 = {}
  A0_2._mission_post = L1_2
  L1_2 = {}
  A0_2._anchor_mission_post = L1_2
  L1_2 = G
  L1_2 = L1_2.HeliobusSNSUtils
  L1_2 = L1_2.get_unlock_post_table_by_main_mission_id
  L2_2 = L1_1.LastPostMissionInProgress
  L2_2 = L2_2.ID
  L3_2 = true
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.PostType
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.HeliobusPostType
    L8_2 = L8_2.MissionMain
    if L7_2 == L8_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._main_mission_post
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    else
      L7_2 = L6_2.PostType
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.HeliobusPostType
      L8_2 = L8_2.MissionSide
      if L7_2 == L8_2 then
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = A0_2._sub_mission_post
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      else
        L7_2 = L6_2.PostType
        L8_2 = CS
        L8_2 = L8_2.RPG
        L8_2 = L8_2.GameCore
        L8_2 = L8_2.HeliobusPostType
        L8_2 = L8_2.MissionAnchor
        if L7_2 == L8_2 then
          L7_2 = table
          L7_2 = L7_2.insert
          L8_2 = A0_2._anchor_mission_post
          L9_2 = L6_2
          L7_2(L8_2, L9_2)
        end
      end
    end
  end
  L2_2 = 1
  L3_2 = A0_2._main_mission_post
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._mission_post
    L8_2 = A0_2._main_mission_post
    L8_2 = L8_2[L5_2]
    L6_2(L7_2, L8_2)
  end
  L2_2 = 1
  L3_2 = A0_2._sub_mission_post
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._mission_post
    L8_2 = A0_2._sub_mission_post
    L8_2 = L8_2[L5_2]
    L6_2(L7_2, L8_2)
  end
end
L0_1._generate_mission_table = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_1st_mission_post
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._mission_post
  L3_2 = #L3_2
  L3_2 = 1 <= L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mission_post
  L1_2 = #L1_2
  if L1_2 <= 0 then
    return
  end
  L1_2 = A0_2._mission_post
  L1_2 = L1_2[1]
  L3_2 = A0_2
  L2_2 = A0_2._get_user_row
  L4_2 = L1_2.UserID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._mission_post_user_icon_1st_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2.HeliobusUserID
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_1st_mission_post_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L1_2.Title
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._play_anim_status
  L5_2 = A0_2._binder
  L5_2 = L5_2.anim_1st_status
  L6_2 = L1_2.PostType
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.GetMainMissionDataWithPromise
  L5_2 = L1_2.Row
  L5_2 = L5_2.PostTypeParameter
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L3_2 = L3_2.ThenLuaActionOneParam
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2._binder
    if L1_3 == nil then
      return
    end
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._async_load_sprite_to
    L3_3 = A0_2._binder
    L3_3 = L3_3.img_1st_mission_type_icon
    L4_3 = A0_3.TrackIconPath
    L1_3(L2_3, L3_3, L4_3)
  end
  L3_2(L4_2, L5_2)
end
L0_1._setup_1st_mission_post = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_2nd_mission_post
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._mission_post
  L3_2 = #L3_2
  L3_2 = 2 <= L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mission_post
  L1_2 = #L1_2
  if L1_2 <= 1 then
    return
  end
  L1_2 = A0_2._mission_post
  L1_2 = L1_2[2]
  L3_2 = A0_2
  L2_2 = A0_2._get_user_row
  L4_2 = L1_2.UserID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._mission_post_user_icon_2nd_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2.HeliobusUserID
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_2nd_mission_post_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L1_2.Title
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._play_anim_status
  L5_2 = A0_2._binder
  L5_2 = L5_2.anim_2nd_status
  L6_2 = L1_2.PostType
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.GetMainMissionDataWithPromise
  L5_2 = L1_2.Row
  L5_2 = L5_2.PostTypeParameter
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L3_2 = L3_2.ThenLuaActionOneParam
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2._binder
    if L1_3 == nil then
      return
    end
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._async_load_sprite_to
    L3_3 = A0_2._binder
    L3_3 = L3_3.img_2nd_mission_type_icon
    L4_3 = A0_3.TrackIconPath
    L1_3(L2_3, L3_3, L4_3)
  end
  L3_2(L4_2, L5_2)
end
L0_1._setup_2nd_mission_post = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_anchor_mission_post
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._anchor_mission_post
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._anchor_mission_post
  L1_2 = #L1_2
  if L1_2 <= 0 then
    return
  end
  L1_2 = A0_2._anchor_mission_post
  L1_2 = L1_2[1]
  L3_2 = A0_2
  L2_2 = A0_2._get_user_row
  L4_2 = L1_1.PlayerUserID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._anchor_mission_post_user_icon_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2.HeliobusUserID
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_anchor_mission_post_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L1_2.Title
  L3_2(L4_2, L5_2)
end
L0_1._setup_anchor_mission_post = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusUserExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "HeliobusActionDayResultNewMissionPostPanel : \228\184\141\229\173\152\229\156\168UserId\228\184\186("
    L5_2 = A1_2
    L6_2 = ")\231\154\132SNS\231\148\168\230\136\183"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
    L3_2 = nil
    return L3_2
  end
  return L2_2
end
L0_1._get_user_row = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HeliobusPostType
  L3_2 = L3_2.MissionMain
  if A2_2 == L3_2 then
    L4_2 = A1_2
    L3_2 = A1_2.SetTrigger
    L5_2 = "MainMission"
    L3_2(L4_2, L5_2)
  else
    L4_2 = A1_2
    L3_2 = A1_2.SetTrigger
    L5_2 = "SubMission"
    L3_2(L4_2, L5_2)
  end
end
L0_1._play_anim_status = L3_1
return L0_1
