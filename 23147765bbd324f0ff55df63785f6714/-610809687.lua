local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSNSUserIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSNSUserIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSPost.HeliobusSNSPostPreviewImagePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSPost.HeliobusSNSPostPreviewImagePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSPost.SNSPostDetail.HeliobusSNSPostDetailPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSPostDetailPage"
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
L2_1 = "HeliobusQuickPostSuccessHint"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSPostDetailPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._sp_post_id = A1_2
  A0_2._template_row_table = A2_2
  A0_2._idx = A3_2
end
L0_1.init = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._post_send_callback = A1_2
  A0_2._post_send_callback_self = A2_2
end
L0_1.register_post_send_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeliobusOnPost
  L4_2 = A0_2._on_post_send
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_arrow_prev
  L4_2 = A0_2._on_click_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_arrow_next
  L4_2 = A0_2._on_click_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_post
  L4_2 = A0_2._on_click_post
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
  L3_2 = L3_2.HeliobusSNSPostPreviewImagePanel
  L4_2 = G
  L4_2 = L4_2.HeliobusSNSPostPreviewImagePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._img_panel = L1_2
  L1_2 = A0_2._img_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_img_post
  L1_2(L2_2, L3_2)
  A0_2._enable_exit = true
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_user_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_arrow
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
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
    L3_2 = "HeliobusSNSPostDetailPage : \228\184\141\229\173\152\229\156\168UserId\228\184\186("
    L4_2 = L1_1.PlayerUserID
    L5_2 = ")\231\154\132SNS\231\148\168\230\136\183"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
  end
  L2_2 = A0_2._user_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2.HeliobusUserID
  L2_2(L3_2, L4_2)
end
L0_1._setup_user_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_arrow
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._template_row_table
  L3_2 = #L3_2
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_arrow = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_post
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tendency
  L1_2(L2_2)
end
L0_1._on_refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._template_row_table
  L2_2 = A0_2._idx
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_post_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.HeliobusTemplateTitle
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_post_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.HeliobusTemplateContent
  L2_2(L3_2, L4_2)
  L2_2 = L1_2.TemplateType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HeliobusTemplateType
  L3_2 = L3_2.ImageWithText
  L2_2 = L2_2 == L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_img_post
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._img_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_post = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._template_row_table
  L2_2 = A0_2._idx
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_tendency
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = G
  L4_2 = L4_2.HeliobusSNSUtils
  L4_2 = L4_2.get_tendency_text_id
  L5_2 = L1_2.TemplateTendency
  L5_2 = #L5_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_tendency = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._idx
  L1_2 = L1_2 - 1
  A0_2._idx = L1_2
  L1_2 = A0_2._idx
  if 1 <= L1_2 then
    L1_2 = A0_2._idx
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = A0_2._template_row_table
  L1_2 = #L1_2
  ::lbl_12::
  A0_2._idx = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
end
L0_1._on_click_prev = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._idx
  L1_2 = L1_2 + 1
  A0_2._idx = L1_2
  L1_2 = A0_2._idx
  L2_2 = A0_2._template_row_table
  L2_2 = #L2_2
  if L1_2 <= L2_2 then
    L1_2 = A0_2._idx
    if L1_2 then
      goto lbl_13
    end
  end
  L1_2 = 1
  ::lbl_13::
  A0_2._idx = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
end
L0_1._on_click_next = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._template_row_table
  L2_2 = A0_2._idx
  L1_2 = L1_2[L2_2]
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.FFOMLPONIFB
  L3_2 = L2_2
  L2_2 = L2_2.KEFCPJPFJCO
  L4_2 = A0_2._sp_post_id
  L5_2 = L1_2.PostImgID
  L6_2 = L1_2.HeliobusTemplateID
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_click_post = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2._enable_exit = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._on_sunccess_anim_end
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._count_down_timer = L2_2
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._count_down_timer
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
  L2_2 = L2_2.anim_root
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
end
L0_1._on_post_send = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  A0_2._is_post_send = true
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.BackToFirstPage
  L1_2(L2_2)
end
L0_1._on_sunccess_anim_end = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._enable_exit
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_click_close = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_post_send
  if L1_2 then
    L1_2 = A0_2._post_send_callback
    if L1_2 ~= nil then
      L1_2 = A0_2._post_send_callback_self
      if L1_2 ~= nil then
        L1_2 = A0_2._post_send_callback
        L2_2 = A0_2._post_send_callback_self
        L1_2(L2_2)
      end
    end
  end
end
L0_1._on_unload = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
return L0_1
