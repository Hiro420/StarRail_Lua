local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSNSUserIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSNSUserIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSelectTriggerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSelectTriggerPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.SNSDetail.HeliobusSNSMissionConfirmDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSMissionConfirmDialog"
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
L3_1.Fans = 1
L3_1.Income = 2
L3_1.Skill = 3
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSMissionConfirmDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._post = A1_2
  A0_2._comment_id = A2_2
end
L0_1.init = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._close_callback = A1_2
  A0_2._close_callback_self = A2_2
end
L0_1.register_close_callback = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1._is_can_to_special_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_can_to_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.set_special_zoom_navigation_target
    L3_2 = A0_2._fans_tip_panel
    L4_2 = L3_2
    L3_2 = L3_2.get_btn
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.gameObject
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_left_stick_button_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_click_back
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_take_mission
  L4_2 = A0_2._on_click_take_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeliobusOnComment
  L4_2 = A0_2._on_post_sync_comment
  L1_2(L2_2, L3_2, L4_2)
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
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusCommonSelectTriggerPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonSelectTriggerPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._fans_tip_panel = L1_2
  L1_2 = A0_2._fans_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_select_callback
  L3_2 = A0_2._on_select_tip
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._fans_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_deselect_callback
  L3_2 = A0_2._on_deselect_tip
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._fans_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bonus_fans
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusCommonSelectTriggerPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonSelectTriggerPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._income_tip_panel = L1_2
  L1_2 = A0_2._income_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_select_callback
  L3_2 = A0_2._on_select_tip
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._income_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_deselect_callback
  L3_2 = A0_2._on_deselect_tip
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._income_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bonus_income
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusCommonSelectTriggerPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonSelectTriggerPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._skill_tip_panel = L1_2
  L1_2 = A0_2._skill_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_select_callback
  L3_2 = A0_2._on_select_tip
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._skill_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_deselect_callback
  L3_2 = A0_2._on_deselect_tip
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._skill_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bonus_skill
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_basic_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_bonus_info
  L1_2(L2_2)
  L1_2 = A0_2._fans_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L3_1.Fans
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._income_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L3_1.Income
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._skill_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L3_1.Skill
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_post_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._post
  L3_2 = L3_2.Title
  L1_2(L2_2, L3_2)
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
  L4_2 = A0_2
  L3_2 = A0_2.async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_post_type_icon
  L6_2 = L2_2.PostTypeIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_post_type_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.PostTypeName
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HeliobusUserExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._post
  L4_2 = L4_2.UserID
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "HeliobusSNSMissionConfirmDialog : \228\184\141\229\173\152\229\156\168UserId\228\184\186("
    L6_2 = A0_2._post
    L6_2 = L6_2.UserID
    L7_2 = ")\231\154\132SNS\231\148\168\230\136\183"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L4_2 = A0_2._user_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L3_2.HeliobusUserID
  L4_2(L5_2, L6_2)
end
L0_1._setup_basic_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._bonus_btn_table = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_bonus_fan_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_bonus_income_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_bonus_skill_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._bonus_btn_table
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_bonus_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.HeliobusSNSUtils
  L1_2 = L1_2.get_post_bonus_fan
  L2_2 = A0_2._post
  L2_2 = L2_2.Row
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bonus_fans
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_bonus_fans
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = G
    L4_2 = L4_2.HeliobusSNSUtils
    L4_2 = L4_2.get_abbreviation_num_text
    L5_2 = L1_2
    L6_2 = true
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._bonus_btn_table
    L4_2 = A0_2._fans_tip_panel
    L5_2 = L4_2
    L4_2 = L4_2.get_btn
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._setup_bonus_fan_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.HeliobusSNSUtils
  L1_2 = L1_2.get_post_bonus_income
  L2_2 = A0_2._post
  L2_2 = L2_2.Row
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bonus_income
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_bonus_income
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._bonus_btn_table
    L4_2 = A0_2._income_tip_panel
    L5_2 = L4_2
    L4_2 = L4_2.get_btn
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_bonus_income_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.HeliobusSNSUtils
  L1_2 = L1_2.get_post_bonus_skill
  L2_2 = A0_2._post
  L2_2 = L2_2.Row
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bonus_skill
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._bonus_btn_table
    L4_2 = A0_2._skill_tip_panel
    L5_2 = L4_2
    L4_2 = L4_2.get_btn
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_bonus_skill_info = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._post
  if L2_2 ~= nil then
    L2_2 = A0_2._post
    L2_2 = L2_2.ID
    if L2_2 == A1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.SetTrackingMission
  L4_2 = A0_2._post
  L4_2 = L4_2.Row
  L4_2 = L4_2.PostTypeParameter
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._post
  L2_2 = L2_2.Row
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
  L5_2 = A0_2._post
  L5_2 = L5_2.Row
  L5_2 = L5_2.PostTypeParameter
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L2_2.LuaTable
  L4_2 = L3_2
  L3_2 = L3_2.set_exit_callback
  L5_2 = A0_2._on_close_all_ui
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_post_sync_comment = L4_1
function L4_1(A0_2)
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
L0_1._on_close_all_ui = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  A0_2._is_click_back = true
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._on_click_back = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.FFOMLPONIFB
  L2_2 = L1_2
  L1_2 = L1_2.FGOFPPFFFML
  L3_2 = A0_2._post
  L3_2 = L3_2.ID
  L4_2 = 0
  L5_2 = A0_2._comment_id
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_click_take_mission = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L3_1.Fans
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_fans_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = L3_1.Income
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_income_tip
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
    else
      L2_2 = L3_1.Skill
      if A1_2 == L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_skill_tip
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = true
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._on_select_tip = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L3_1.Fans
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_fans_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = L3_1.Income
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_income_tip
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
    else
      L2_2 = L3_1.Skill
      if A1_2 == L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_skill_tip
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = false
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._on_deselect_tip = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_close = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._close_callback
  if L1_2 then
    L1_2 = A0_2._close_callback_self
    if L1_2 then
      L1_2 = A0_2._close_callback
      L2_2 = A0_2._close_callback_self
      L3_2 = A0_2._is_click_back
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_unload = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
return L0_1
