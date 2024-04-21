local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.ActionDay.PostPhase.HeliobusActionDayPostPhaseDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusActionDayPostPhaseDialog"
L2_1 = G
L2_1 = L2_1.UIController
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
L3_1 = {}
L3_1[1] = "UIText_Heliobus_ActionDay_Phase1"
L3_1[2] = "UIText_Heliobus_ActionDay_Phase2"
L3_1[3] = "UIText_Heliobus_ActionDay_Phase3"
L4_1 = {}
L4_1[1] = "UIText_Heliobus_ActionDay_Phase1"
L4_1[3] = "UIText_Heliobus_ActionDay_Phase3"
L5_1 = {}
L5_1[0] = "SpriteOutput/Quest/Heliobus/HeliobusIcon/MissionStatus00.png"
L5_1[1] = "SpriteOutput/Quest/Heliobus/HeliobusIcon/MissionStatus01.png"
L5_1[2] = "SpriteOutput/Quest/Heliobus/HeliobusIcon/MissionStatus02.png"
L5_1[3] = "SpriteOutput/Quest/Heliobus/HeliobusIcon/MissionStatus03.png"
L6_1 = 2
L7_1 = "EnviromentBanner_FadeIn"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeliobusActionDayPostPhaseDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L8_1
function L8_1(A0_2, A1_2)
  A0_2._post_phase = A1_2
end
L0_1.init = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go_to_mission
  L4_2 = A0_2._on_click_go_to_mission
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_enable_exit = false
end
L0_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_phase_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._hide_nodes
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_detail
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_anim
  L1_2(L2_2)
end
L0_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_post_phase
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._post_phase
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_phase_icon
  L4_2 = A0_2._post_phase
  L4_2 = L5_1[L4_2]
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._post_phase
  L3_2 = L3_1[L3_2]
  L1_2(L2_2, L3_2)
end
L0_1._setup_phase_info = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_user_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_new_mission_post
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bg_close_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_go_to_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._hide_nodes = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._post_phase
  if L1_2 == 1 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_phase1
    L1_2(L2_2)
  else
    L1_2 = A0_2._post_phase
    if L1_2 == 2 then
      L2_2 = A0_2
      L1_2 = A0_2._setup_phase2
      L1_2(L2_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._setup_phase3
      L1_2(L2_2)
    end
  end
end
L0_1._setup_detail = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L3_1[1]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1[1]
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.HeliobusSNSUtils
  L1_2 = L1_2.get_mission_post_table_in_cur_action_day
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_new_mission_post
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = #L1_2
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = #L1_2
  if L2_2 == 0 then
    return
  end
  L2_2 = 0
  L3_2 = 0
  L4_2 = 1
  L5_2 = #L1_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_2[L7_2]
    L9_2 = L8_2.PostType
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.HeliobusPostType
    L10_2 = L10_2.MissionMain
    if L9_2 == L10_2 then
      L2_2 = L2_2 + 1
    else
      L9_2 = L8_2.PostType
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.GameCore
      L10_2 = L10_2.HeliobusPostType
      L10_2 = L10_2.MissionSide
      if L9_2 == L10_2 then
        L3_2 = L3_2 + 1
      end
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_new_main_mission_post
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = 0 < L2_2
  L4_2(L5_2, L6_2)
  if 0 < L2_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_new_main_mission_post
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_new_sub_mission_post
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = 0 < L3_2
  L4_2(L5_2, L6_2)
  if 0 < L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_new_sub_mission_post
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._setup_phase1 = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_user_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_go_to_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L3_1[2]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1[1]
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_post_mission_info
  L1_2(L2_2)
end
L0_1._setup_phase2 = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.PostMissionInProgress
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "HeliobusActionDayPostPhaseDialog _setup_post_mission_info() : \229\189\147\229\137\141\228\184\141\229\173\152\229\156\168\230\173\163\229\156\168\230\137\167\232\161\140\231\154\132SNS\228\187\187\229\138\161"
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_mission_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_post_info
  L1_2(L2_2)
end
L0_1._setup_post_mission_info = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_mission_icon
  L4_2 = L1_1.PostMissionInProgress
  L4_2 = L4_2.TrackIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_mission_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1.PostMissionInProgress
  L3_2 = L3_2.NameStr
  L1_2(L2_2, L3_2)
  L1_2 = L1_1.PostMissionInProgress
  L2_2 = L1_2
  L1_2 = L1_2.GetSubMissionGroups
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2[0]
  L4_2 = L4_2.Description
  L2_2(L3_2, L4_2)
end
L0_1._setup_mission_info = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.HeliobusSNSUtils
  L1_2 = L1_2.get_post_in_mission_progress
  L1_2 = L1_2()
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "HeliobusActionDayPostPhaseDialog _setup_post_info() : \230\156\170\233\128\154\232\191\135\228\187\187\229\138\161ID("
    L4_2 = L1_1.PostMissionInProgress
    L4_2 = L4_2.ID
    L5_2 = ")\230\137\190\229\136\176\229\175\185\229\186\148\231\154\132\230\142\168\230\150\135"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusUserExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.UserID
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "HeliobusActionDayPostPhaseDialog : \228\184\141\229\173\152\229\156\168UserId\228\184\186("
    L5_2 = L1_2.UserID
    L6_2 = ")\231\154\132SNS\231\148\168\230\136\183"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_user_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.HeliobusUserName
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_user_icon
  L6_2 = L2_2.UserIconPath
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_post_info = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L3_1[3]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1[3]
  L1_2(L2_2, L3_2)
end
L0_1._setup_phase3 = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L7_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._post_phase
  if L1_2 ~= 2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_root
    L2_2 = L1_2
    L1_2 = L1_2.GetClip
    L3_2 = L7_1
    L1_2 = L1_2(L2_2, L3_2)
    L1_2 = L1_2.length
    L3_2 = A0_2
    L2_2 = A0_2._add_count_down_timer
    L4_2 = A0_2._on_enable_exit_timer_end
    L5_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._enable_exit_timer = L2_2
    L2_2 = A0_2._enable_exit_timer
    L3_2 = L2_2
    L2_2 = L2_2.reset
    L2_2(L3_2)
    L2_2 = A0_2._enable_exit_timer
    L3_2 = L2_2
    L2_2 = L2_2.start
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._add_count_down_timer
    L4_2 = A0_2._on_disappear_timer_end
    L5_2 = L6_1
    L5_2 = L1_2 + L5_2
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._disappear_timer = L2_2
    L2_2 = A0_2._disappear_timer
    L3_2 = L2_2
    L2_2 = L2_2.reset
    L2_2(L3_2)
    L2_2 = A0_2._disappear_timer
    L3_2 = L2_2
    L2_2 = L2_2.start
    L2_2(L3_2)
  end
end
L0_1._setup_anim = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._enable_exit_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  A0_2._is_enable_exit = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bg_close_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_enable_exit_timer_end = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._disappear_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._on_disappear_timer_end = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._post_phase
  if L1_2 ~= 2 then
    return
  end
  L1_2 = L1_1.PostMissionInProgress
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "HeliobusActionDayPostPhaseDialog _on_click_go_to_mission() : \229\189\147\229\137\141\228\184\141\229\173\152\229\156\168\230\173\163\229\156\168\230\137\167\232\161\140\231\154\132SNS\228\187\187\229\138\161"
    L1_2(L2_2)
    return
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetPostInProgress
  L1_2 = L1_2(L2_2)
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.SetTrackingMission
  L4_2 = L1_1.PostMissionInProgress
  L4_2 = L4_2.ID
  L2_2(L3_2, L4_2)
  L2_2 = L1_2.Row
  L2_2 = L2_2.IsClosePanel
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_close_all_ui
    L2_2(L3_2)
    return
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Mission.MissionPage"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MainMissionType
  L4_2 = L4_2.None
  L4_2 = #L4_2
  L5_2 = L1_1.PostMissionInProgress
  L5_2 = L5_2.ID
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L2_2.LuaTable
  L4_2 = L3_2
  L3_2 = L3_2.set_exit_callback
  L5_2 = A0_2._on_close_all_ui
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_click_go_to_mission = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.BackToFirstPage
  L1_2(L2_2)
end
L0_1._on_close_all_ui = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_enable_exit
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_click_close = L8_1
function L8_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L8_1
function L8_1(A0_2)
  local L1_2
end
L0_1._on_unload = L8_1
function L8_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L8_1
return L0_1
