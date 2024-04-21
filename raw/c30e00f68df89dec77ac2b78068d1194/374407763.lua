local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Mail.MailInfoRowPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.TextmapStatic
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MailInfoRowPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RewardItemIconLite
  L4_2 = G
  L4_2 = L4_2.RewardItemIconLiteBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.item_icon_panel = L1_2
  L1_2 = A0_2.item_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_item_icon_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._click_mail_item
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._mail_data = nil
  A0_2._expire_call_back_func = nil
  A0_2._expire_call_back_self = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._mail_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.button
  L5_2 = A0_2._click_mail_item
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SetSingleLineEllipsis
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = L0_1.CompileActivityName
  L5_2 = A1_2.Title
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_mail_owner
  L3_2 = L2_2
  L2_2 = L2_2.SetSingleLineEllipsis
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_mail_owner
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2.Sender
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_star
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L5_2 = A1_2
  L4_2 = A1_2.is_star
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_icon_panel
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.SetTargetTimeByTimeStamp
  L4_2 = A1_2.ExpireTime
  L5_2 = A0_2._expire_call_back
  L6_2 = A0_2
  L7_2 = 1
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "MailSingle"
  L5_2 = A1_2.ID
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.go_reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._mail_data
  if L1_2 then
    L1_2 = A0_2._mail_data
    L1_2 = L1_2.ID
    return L1_2
  end
end
L1_1.get_mail_id = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._expire_call_back_self = A1_2
  A0_2._expire_call_back_func = A2_2
end
L1_1.bind_mail_expire_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._mail_data
  L1_2 = L1_2.IsRead
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.ComponentExtensions
    L1_2 = L1_2.SafeSetActive
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_item_icon_panel
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.ComponentExtensions
    L1_2 = L1_2.SafeSetActive
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_mail_icon_panel
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.ComponentExtensions
    L1_2 = L1_2.SafeSetActive
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_icon_mail_open
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.ComponentExtensions
    L1_2 = L1_2.SafeSetActive
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_icon_mail
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._mail_data
  L2_2 = L1_2
  L1_2 = L1_2.has_reward
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.ComponentExtensions
    L1_2 = L1_2.SafeSetActive
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_item_icon_panel
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.ComponentExtensions
    L1_2 = L1_2.SafeSetActive
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_mail_icon_panel
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._mail_data
    L1_2 = L1_2.MailItems
    L1_2 = L1_2[1]
    L2_2 = A0_2.item_icon_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = L1_2.ConfigID
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.item_icon_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_count
    L4_2 = L1_2.Count
    L2_2(L3_2, L4_2)
  else
    L1_2 = G
    L1_2 = L1_2.ComponentExtensions
    L1_2 = L1_2.SafeSetActive
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_item_icon_panel
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.ComponentExtensions
    L1_2 = L1_2.SafeSetActive
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_mail_icon_panel
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.ComponentExtensions
    L1_2 = L1_2.SafeSetActive
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_icon_mail_open
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.ComponentExtensions
    L1_2 = L1_2.SafeSetActive
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_icon_mail
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L1_1._set_icon_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.button
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.set_selected = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_event_listner = A1_2
  A0_2._on_click_item = A2_2
end
L1_1.bind_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.button
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.MailModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.delete_mail_new
  L3_2 = A0_2._mail_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._on_click_item
  if L1_2 ~= nil then
    L1_2 = A0_2._on_click_item
    L2_2 = A0_2._click_event_listner
    L3_2 = A0_2._mail_data
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
end
L1_1._click_mail_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mail_data
  if L1_2 ~= nil then
    L1_2 = A0_2._mail_data
    L2_2 = L1_2
    L1_2 = L1_2.get_is_expired
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.SuperDebug
      L1_2 = L1_2.Log
      L2_2 = "Mail Expired, mailID: "
      L3_2 = A0_2._mail_data
      L3_2 = L3_2.ID
      L2_2 = L2_2 .. L3_2
      L1_2(L2_2)
      L1_2 = A0_2._expire_call_back_func
      if nil ~= L1_2 then
        L1_2 = A0_2._expire_call_back_func
        L2_2 = A0_2._expire_call_back_self
        L1_2(L2_2)
      end
    end
  end
end
L1_1._expire_call_back = L2_1
return L1_1
