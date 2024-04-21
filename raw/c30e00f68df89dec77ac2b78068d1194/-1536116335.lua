local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSNSUserIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSNSUserIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonPhoneStatusPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonPhoneStatusPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSPost.HeliobusSNSPostPreviewImagePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSPost.HeliobusSNSPostPreviewImagePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSPost.SNSQuickPost.HeliobusSNSQuickPostInputPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSPost.SNSQuickPost.HeliobusSNSQuickPostInputPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSPost.SNSQuickPost.HeliobusSNSQuickPostOptionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSPost.SNSQuickPost.HeliobusSNSQuickPostOptionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Phone.LookAtPhonePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSPost.SNSQuickPost.HeliobusSNSQuickPostPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSQuickPostPage"
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
L2_1 = 0.2
L3_1 = 0.4
L4_1 = "HeliobusQuickPostSuccessHint"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSQuickPostPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetSPPostDataCanSend
  L1_2 = L1_2(L2_2)
  A0_2._my_post_row = L1_2
end
L0_1.init = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._post_send_callback = A1_2
  A0_2._post_send_callback_self = A2_2
end
L0_1.register_post_send_callback = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._in_control_exit_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._input_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_input_btn
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 9
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_post
  L4_2 = A0_2._on_click_post
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeliobusOnPost
  L4_2 = A0_2._on_post_send
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
  L3_2 = L3_2.HeliobusCommonPhoneStatusPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonPhoneStatusPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._phone_status_panel = L1_2
  L1_2 = A0_2._phone_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_phone_status_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSPostPreviewImagePanel
  L4_2 = G
  L4_2 = L4_2.HeliobusSNSPostPreviewImagePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._template_panel = L1_2
  L1_2 = A0_2._template_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_load_img_post
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSQuickPostInputPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusSNSQuickPostInputPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._input_panel = L1_2
  L1_2 = A0_2._input_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_click_input
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._input_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_input_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSQuickPostOptionPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusSNSQuickPostOptionPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._opt_panel = L1_2
  L1_2 = A0_2._opt_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_opt_callback
  L3_2 = A0_2._on_click_opt
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._opt_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_opt_panel
  L1_2(L2_2, L3_2)
  A0_2._selected_template_id = nil
  L1_2 = typeof
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonoPerformanceUITransfer
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeGetCmpt
  L3_2 = L1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L5_2 = ""
  L6_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._mono_ticker = L2_2
  L2_2 = A0_2._mono_ticker
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.ComponentExtensions
    L2_2 = L2_2.SafeAddCmpt
    L3_2 = L1_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.root
    L5_2 = ""
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._mono_ticker = L2_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_opt_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MessageSituationChanged
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MessageSituationType
  L4_2 = L4_2.Act
  L2_2(L3_2, L4_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._wait_time_end
  L4_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._count_down_timer = L1_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._my_post_row
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "HeliobusSNSQuickPostPage : \229\189\147\229\137\141\228\184\141\229\173\152\229\156\168\229\143\175\229\143\145\233\128\129\231\154\132\230\142\168\230\150\135"
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_user_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_location
  L1_2(L2_2)
  L1_2 = A0_2._phone_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._input_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._opt_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._my_post_row
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._wait_time_end = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeliobusUserExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L1_1.PlayerUserID
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "HeliobusSNSQuickPostPage : \228\184\141\229\173\152\229\156\168UserId\228\184\186("
    L4_2 = L1_1.PlayerUserID
    L5_2 = ")\231\154\132SNS\231\148\168\230\136\183"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._user_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2.HeliobusUserID
  L2_2(L3_2, L4_2)
end
L0_1._setup_user_info = L5_1
function L5_1(A0_2)
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
end
L0_1._setup_location = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_post
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._selected_template_id
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_post_img
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tendency
  L1_2(L2_2)
  L1_2 = A0_2._input_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_template_info
  L3_2 = A0_2._selected_template_id
  L1_2(L2_2, L3_2)
end
L0_1._refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._selected_template_id
  if L1_2 == nil then
    L2_2 = A0_2._my_post_row
    L2_2 = L2_2.TemplateIDList
    L1_2 = L2_2[0]
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.prefab_load_img_post
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= 0
  L2_2(L3_2, L4_2)
  if L1_2 ~= 0 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.HeliobusTemplateExcelTable
    L2_2 = L2_2.GetData
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 == nil then
      L3_2 = G
      L3_2 = L3_2.SuperDebug
      L3_2 = L3_2.LogErrorFormat
      L4_2 = "HeliobusSNSQuickPostPage _setup_post_img(): \228\184\141\229\173\152\229\156\168ID\228\184\186("
      L5_2 = L1_2
      L6_2 = ")\231\154\132\230\168\161\230\157\191"
      L4_2 = L4_2 .. L5_2 .. L6_2
      L3_2(L4_2)
      return
    end
    L3_2 = A0_2._template_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_post_id
    L5_2 = A0_2._my_post_row
    L5_2 = L5_2.HeliobusSpecialPostID
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._template_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._template_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_size
    L5_2 = 1
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._template_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_stick_show
    L5_2 = A0_2._selected_template_id
    L5_2 = L5_2 ~= nil
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_post_img = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tendency
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._selected_template_id
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._selected_template_id
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.HeliobusTemplateExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._selected_template_id
    L1_2 = L1_2(L2_2)
    if L1_2 == nil then
      L2_2 = G
      L2_2 = L2_2.SuperDebug
      L2_2 = L2_2.LogErrorFormat
      L3_2 = "HeliobusSNSQuickPostPage _setup_tendency(): \228\184\141\229\173\152\229\156\168ID\228\184\186("
      L4_2 = A0_2._selected_template_id
      L5_2 = ")\231\154\132\230\168\161\230\157\191"
      L3_2 = L3_2 .. L4_2 .. L5_2
      L2_2(L3_2)
      return
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_tendency
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = G
    L4_2 = L4_2.HeliobusSNSUtils
    L4_2 = L4_2.get_tendency_text_id
    L5_2 = L1_2.TemplateTendency
    L5_2 = #L5_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L3_2 = A0_2
    L2_2 = A0_2.async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_tendency
    L5_2 = G
    L5_2 = L5_2.HeliobusSNSUtils
    L5_2 = L5_2.get_tendency_img_path
    L6_2 = L1_2.TemplateTendency
    L6_2 = #L6_2
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._setup_tendency = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2.ForceReverseAlign = true
end
L0_1._on_fade_begin = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2.ForceReverseAlign = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.ScrollRect
  L2_2 = L2_2.MovementType
  L2_2 = L2_2.Elastic
  L1_2.movementType = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L2_2 = L1_2
  L1_2 = L1_2.StopMovement
  L1_2(L2_2)
end
L0_1._on_fade_end = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Scroll"
  L5_2 = "Menu_Confirm"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._on_open_reply = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 9
  L1_2(L2_2, L3_2)
end
L0_1._on_close_reply = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_opt_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._opt_panel
  L2_2 = L1_2
  L1_2 = L1_2.clear_selected
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_option
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = "HeliobusQuick_OptionList_FadeIn"
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeAfterSeconds
  L3_2 = L1_2
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_open_reply
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fade_end
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_fade_begin
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L4_2 = A0_2._opt_panel
  L5_2 = L4_2
  L4_2 = L4_2.get_first_opt_btn
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.gameObject
  L2_2(L3_2, L4_2)
end
L0_1._on_click_input = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_opt_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  A0_2._selected_template_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_close_reply
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L4_2 = nil
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UIManager
  L3_2 = L2_2
  L2_2 = L2_2.BlockFixedTime
  L4_2 = L3_1
  L5_2 = L3_1
  L6_2 = nil
  L7_2 = false
  L8_2 = "HeliobusSNSQuickPostPage"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2._block_id = L2_2
end
L0_1._on_click_opt = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._selected_template_id
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeliobusTemplateExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._selected_template_id
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "HeliobusSNSQuickPostPage _on_click_post(): \228\184\141\229\173\152\229\156\168ID\228\184\186("
    L4_2 = A0_2._selected_template_id
    L5_2 = ")\231\154\132\230\168\161\230\157\191"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.FFOMLPONIFB
  L3_2 = L2_2
  L2_2 = L2_2.KEFCPJPFJCO
  L4_2 = A0_2._my_post_row
  L4_2 = L4_2.HeliobusSpecialPostID
  L5_2 = L1_2.PostImgID
  L6_2 = A0_2._selected_template_id
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_click_post = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._is_post_send = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_success
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._on_sunccess_anim_end
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._send_count_down_timer = L2_2
  L2_2 = A0_2._send_count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._send_count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_post_success_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_success
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = L4_1
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UIManager
  L3_2 = L2_2
  L2_2 = L2_2.BlockFixedTime
  L4_2 = L1_2 + 1
  L5_2 = L1_2 + 1
  L6_2 = nil
  L7_2 = false
  L8_2 = "HeliobusSNSQuickPostPage"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2._block_id = L2_2
end
L0_1._on_post_send = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._send_count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  A0_2._is_post_send = true
  L1_2 = A0_2._block_id
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.TryUnblockFixedTime
    L3_2 = A0_2._block_id
    L1_2(L2_2, L3_2)
  end
  A0_2._block_id = nil
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_sunccess_anim_end = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_close = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.HeliobusOnQuickPostClose
  L3_2 = A0_2._is_post_send
  if not L3_2 then
    L3_2 = false
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L5_1
return L0_1
