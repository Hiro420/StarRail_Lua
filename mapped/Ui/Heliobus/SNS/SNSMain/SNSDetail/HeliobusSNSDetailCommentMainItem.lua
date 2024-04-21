local L0_1, L1_1, L2_1
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
L1_1 = "HeliobusSNSDetailCommentMainItem"
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
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reply
  L4_2 = A0_2._on_click_reply
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_reply
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_reply
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._on_select_callback
    if L0_3 then
      L0_3 = A0_2._on_select_callback_self
      if L0_3 then
        L0_3 = A0_2._on_select_callback
        L1_3 = A0_2._on_select_callback_self
        L2_3 = A0_2._binder
        L2_3 = L2_3.rect_transform_root
        L0_3(L1_3, L2_3)
      end
    end
  end
  L1_2.onSelectTrigger = L2_2
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
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._on_select_callback = A1_2
  A0_2._on_select_callback_self = A2_2
end
L0_1.register_on_select_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_top_line
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.display_top_line = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_new
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "HeliobusPostNewReplyHint"
  L1_2(L2_2, L3_2)
end
L0_1.play_new_anim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_new
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = "HeliobusPostNewReplyHint"
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  return L1_2
end
L0_1.get_new_anim_length = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_reply
  return L1_2
end
L0_1.get_btn = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._main_comment = A1_2
  A0_2._index = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_user_info
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_comment
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeliobusUserExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._main_comment
  L2_2 = L2_2.Content
  L2_2 = L2_2.UserID
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "HeliobusSNSDetailCommentMainItem : \228\184\141\229\173\152\229\156\168UserId\228\184\186("
    L4_2 = A0_2._main_comment
    L4_2 = L4_2.Content
    L4_2 = L4_2.UserID
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
L0_1._setup_user_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._main_comment
  L1_2 = L1_2.Content
  L2_2 = L1_2
  L1_2 = L1_2.CheckIsCanReply
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_reply
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_can_reply
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = A0_2._main_comment
  L3_2 = L3_2.Content
  L3_2 = L3_2.Content
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_comment_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_comment = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L3_2 = A0_2._main_comment
      L4_2 = A0_2._index
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_click_reply = L2_1
return L0_1
