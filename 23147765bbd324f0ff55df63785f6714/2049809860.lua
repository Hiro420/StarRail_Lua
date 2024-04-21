local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSDetailCommentReplyPanel"
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
L2_1 = 3
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_open_reply
  L4_2 = A0_2._on_click_open_reply
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close_reply
  L4_2 = A0_2._on_click_close_reply
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reply_1
  L4_2 = A0_2._on_click_reply_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reply_2
  L4_2 = A0_2._on_click_reply_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reply_3
  L4_2 = A0_2._on_click_reply_3
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_reply_1
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_reply_1
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_reply_2
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_reply_2
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_reply_3
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_reply_3
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  A0_2._is_show_reply = false
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._open_reply_callback = A1_2
  A0_2._open_reply_callback_self = A2_2
end
L0_1.register_open_reply_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._close_reply_callback = A1_2
  A0_2._close_reply_callback_self = A2_2
end
L0_1.register_close_reply_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._reply_callback = A1_2
  A0_2._reply_callback_self = A2_2
end
L0_1.register_reply_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._reply_comment_callback = A1_2
  A0_2._reply_comment_callback_self = A2_2
end
L0_1.register_reply_comment_callback = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_open_reply
  return L1_2
end
L0_1.get_open_reply_btn = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_open_reply
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  return L1_2
end
L0_1.get_is_reply_panle_open = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reply
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  return L1_2
end
L0_1.get_is_opt_panel_open = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._last_nav_btn
  return L1_2
end
L0_1.get_last_nav_btn = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == "Menu_Cancel" then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_reply
    L2_2 = L2_2.gameObject
    L2_2 = L2_2.activeSelf
    if L2_2 then
      L2_2 = A0_2._reply_comment
      if L2_2 == nil then
        L3_2 = A0_2
        L2_2 = A0_2.set_navigation_target
        L4_2 = A0_2._binder
        L4_2 = L4_2.btn_open_reply
        L4_2 = L4_2.gameObject
        L2_2(L3_2, L4_2)
      else
        L2_2 = A0_2._last_nav_btn
        if L2_2 then
          L3_2 = A0_2
          L2_2 = A0_2.set_navigation_target
          L4_2 = A0_2._last_nav_btn
          L4_2 = L4_2.gameObject
          L2_2(L3_2, L4_2)
          A0_2._last_nav_btn = nil
        end
      end
      L3_2 = A0_2
      L2_2 = A0_2._on_click_close_reply
      L2_2(L3_2)
    end
  end
end
L0_1._on_in_control_action_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_open_reply
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reply
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._is_show_reply = false
end
L0_1.close_all_reply = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._post = A1_2
  A0_2._is_show_reply = false
  L3_2 = A0_2
  L2_2 = A0_2._set_active_reply_panel
  L4_2 = A0_2._is_show_reply
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_user_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_reply_info
  L2_2(L3_2)
  A0_2._reply_comment = nil
  A0_2._last_nav_btn = nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reply_comment_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A1_2.Content
  A0_2._reply_comment = L3_2
  A0_2._last_nav_btn = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_reply_comment_info
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._on_click_open_reply
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reply_comment_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HeliobusUserExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._reply_comment
  L4_2 = L4_2.UserID
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "HeliobusSNSDetailCommentReplyPanel : \228\184\141\229\173\152\229\156\168UserId\228\184\186("
    L6_2 = A0_2._reply_comment
    L6_2 = L6_2.UserID
    L7_2 = ")\231\154\132SNS\231\148\168\230\136\183"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = L3_2.HeliobusUserName
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_reply_comment_target_name
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = "UIText_Heliobus_SNS_SPCommentReply"
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.setup_reply_comment = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_open_reply
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reply
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_active_reply_panel = L3_1
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
    L3_2 = "HeliobusSNSDetailCommentReplyPanel _setup_user_info() : \228\184\141\229\173\152\229\156\168UserId\228\184\186("
    L4_2 = L1_1.PlayerUserID
    L5_2 = ")\231\154\132SNS\231\148\168\230\136\183"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
    return
  end
end
L0_1._setup_user_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._post
  L1_2 = L1_2.Row
  L1_2 = L1_2.PlayerCommentIDList
  L1_2 = L1_2.Length
  L2_2 = 1
  L3_2 = L2_1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L7_2 = "btn_reply_"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2[L7_2]
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = L5_2 <= L1_2
    L6_2(L7_2, L8_2)
    if L5_2 <= L1_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.HeliobusCommentExcelTable
      L6_2 = L6_2.GetData
      L7_2 = A0_2._post
      L7_2 = L7_2.Row
      L7_2 = L7_2.PlayerCommentIDList
      L8_2 = L5_2 - 1
      L7_2 = L7_2[L8_2]
      L6_2 = L6_2(L7_2)
      if L6_2 == nil then
        L7_2 = G
        L7_2 = L7_2.SuperDebug
        L7_2 = L7_2.LogErrorFormat
        L8_2 = "HeliobusSNSDetailCommentReplyPanel __setup_reply_info() : \228\184\141\229\173\152\229\156\168Id\228\184\186("
        L9_2 = A0_2._post
        L9_2 = L9_2.Row
        L9_2 = L9_2.PlayerCommentIDList
        L10_2 = L5_2 - 1
        L9_2 = L9_2[L10_2]
        L10_2 = ")\231\154\132Comment"
        L8_2 = L8_2 .. L9_2 .. L10_2
        L7_2(L8_2)
        return
      end
      L7_2 = A0_2._binder
      L8_2 = "txt_reply_"
      L9_2 = L5_2
      L8_2 = L8_2 .. L9_2
      L7_2 = L7_2[L8_2]
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetTextID
      L9_2 = L6_2.CommentOptionTextID
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._setup_reply_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._reply_comment
  L1_2 = L1_2.Row
  L1_2 = L1_2.PlayerCommentIDList
  L1_2 = L1_2.Length
  L2_2 = 1
  L3_2 = L2_1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L7_2 = "btn_reply_"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2[L7_2]
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = L5_2 <= L1_2
    L6_2(L7_2, L8_2)
    if L5_2 <= L1_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.HeliobusCommentExcelTable
      L6_2 = L6_2.GetData
      L7_2 = A0_2._reply_comment
      L7_2 = L7_2.Row
      L7_2 = L7_2.PlayerCommentIDList
      L8_2 = L5_2 - 1
      L7_2 = L7_2[L8_2]
      L6_2 = L6_2(L7_2)
      if L6_2 == nil then
        L7_2 = G
        L7_2 = L7_2.SuperDebug
        L7_2 = L7_2.LogErrorFormat
        L8_2 = "HeliobusSNSDetailCommentReplyPanel _setup_reply_comment_info() : \228\184\141\229\173\152\229\156\168Id\228\184\186("
        L9_2 = A0_2._reply_comment
        L9_2 = L9_2.Row
        L9_2 = L9_2.PlayerCommentIDList
        L10_2 = L5_2 - 1
        L9_2 = L9_2[L10_2]
        L10_2 = ")\231\154\132Comment"
        L8_2 = L8_2 .. L9_2 .. L10_2
        L7_2(L8_2)
        return
      end
      L7_2 = A0_2._binder
      L8_2 = "txt_reply_"
      L9_2 = L5_2
      L8_2 = L8_2 .. L9_2
      L7_2 = L7_2[L8_2]
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetTextID
      L9_2 = L6_2.CommentOptionTextID
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._setup_reply_comment_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_show_reply
  if L1_2 then
    return
  end
  A0_2._is_show_reply = true
  L2_2 = A0_2
  L1_2 = A0_2._set_active_reply_panel
  L3_2 = A0_2._is_show_reply
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._open_reply_callback
  if L1_2 then
    L1_2 = A0_2._open_reply_callback_self
    if L1_2 then
      L1_2 = A0_2._open_reply_callback
      L2_2 = A0_2._open_reply_callback_self
      L3_2 = A0_2._reply_comment
      L3_2 = L3_2 ~= nil
      L1_2(L2_2, L3_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reply_1
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_click_open_reply = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._reply_comment
  if L1_2 == nil then
    A0_2._is_show_reply = false
    L2_2 = A0_2
    L1_2 = A0_2._set_active_reply_panel
    L3_2 = A0_2._is_show_reply
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.close_all_reply
    L1_2(L2_2)
  end
  L1_2 = A0_2._close_reply_callback
  if L1_2 then
    L1_2 = A0_2._close_reply_callback_self
    if L1_2 then
      L1_2 = A0_2._close_reply_callback
      L2_2 = A0_2._close_reply_callback_self
      L3_2 = A0_2._reply_comment
      L3_2 = L3_2 ~= nil
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_click_close_reply = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = nil
  L2_2 = A0_2._reply_comment
  if L2_2 ~= nil then
    L2_2 = A0_2._reply_comment
    L2_2 = L2_2.Row
    L1_2 = L2_2.PlayerCommentIDList
  else
    L2_2 = A0_2._post
    L2_2 = L2_2.Row
    L1_2 = L2_2.PlayerCommentIDList
  end
  L2_2 = L1_2.Length
  if L2_2 < 1 then
    return
  end
  L3_2 = A0_2._reply_comment
  if L3_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._on_reply_comment
    L5_2 = 1
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._on_reply
    L5_2 = 1
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_click_reply_1 = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = nil
  L2_2 = A0_2._reply_comment
  if L2_2 ~= nil then
    L2_2 = A0_2._reply_comment
    L2_2 = L2_2.Row
    L1_2 = L2_2.PlayerCommentIDList
  else
    L2_2 = A0_2._post
    L2_2 = L2_2.Row
    L1_2 = L2_2.PlayerCommentIDList
  end
  L2_2 = L1_2.Length
  if L2_2 < 2 then
    return
  end
  L3_2 = A0_2._reply_comment
  if L3_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._on_reply_comment
    L5_2 = 2
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._on_reply
    L5_2 = 2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_click_reply_2 = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = nil
  L2_2 = A0_2._reply_comment
  if L2_2 ~= nil then
    L2_2 = A0_2._reply_comment
    L2_2 = L2_2.Row
    L1_2 = L2_2.PlayerCommentIDList
  else
    L2_2 = A0_2._post
    L2_2 = L2_2.Row
    L1_2 = L2_2.PlayerCommentIDList
  end
  L2_2 = L1_2.Length
  if L2_2 < 3 then
    return
  end
  L3_2 = A0_2._reply_comment
  if L3_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._on_reply_comment
    L5_2 = 3
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._on_reply
    L5_2 = 3
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_click_reply_3 = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._reply_callback
  if L2_2 ~= nil then
    L2_2 = A0_2._reply_callback_self
    if L2_2 ~= nil then
      L2_2 = A0_2._post
      L2_2 = L2_2.Row
      L2_2 = L2_2.PlayerCommentIDList
      L3_2 = A1_2 - 1
      L2_2 = L2_2[L3_2]
      L3_2 = A0_2._reply_callback
      L4_2 = A0_2._reply_callback_self
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._clear_opt_state
  L2_2(L3_2)
end
L0_1._on_reply = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._reply_comment_callback
  if L2_2 ~= nil then
    L2_2 = A0_2._reply_comment_callback_self
    if L2_2 ~= nil then
      L2_2 = A0_2._reply_comment
      L2_2 = L2_2.Row
      L2_2 = L2_2.PlayerCommentIDList
      L3_2 = A1_2 - 1
      L2_2 = L2_2[L3_2]
      L3_2 = A0_2._reply_comment_callback
      L4_2 = A0_2._reply_comment_callback_self
      L5_2 = L2_2
      L6_2 = A0_2._reply_comment
      L3_2(L4_2, L5_2, L6_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._clear_opt_state
  L2_2(L3_2)
end
L0_1._on_reply_comment = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_reply_1
  L2_2 = L1_2
  L1_2 = L1_2.ClearAnimationState
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_reply_2
  L2_2 = L1_2
  L1_2 = L1_2.ClearAnimationState
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_reply_3
  L2_2 = L1_2
  L1_2 = L1_2.ClearAnimationState
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._clear_opt_state = L3_1
return L0_1
