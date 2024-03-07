local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ChatModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueCommonExcelTable
L1_1 = L1_1.GetData
L2_1 = "Chat_MaxWord_NumLimit"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.IntValue
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "FriendChatSendPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
L3_1 = "UIText_Chat_Text_Max_Tips"
L4_1 = "UIText_Chat_No_Content_Tip"
L5_1 = 3
function L6_1(A0_2)
  local L1_2
end
L2_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_emoji
  L4_2 = A0_2._on_btn_emoji
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.input
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.SafeAddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._over_max_length
    L3_3 = A0_3
    L1_3 = L1_3(L2_3, L3_3)
    if L1_3 then
      L2_3 = A0_2._binder
      L2_3 = L2_3.input
      L3_3 = CS
      L3_3 = L3_3.RPG
      L3_3 = L3_3.Client
      L3_3 = L3_3.UIUtils
      L3_3 = L3_3.GetSubStringByCharCount
      L4_3 = A0_3
      L5_3 = L1_1
      L3_3 = L3_3(L4_3, L5_3)
      L2_3.text = L3_3
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3._show_hint
      L4_3 = L3_1
      L5_3 = false
      L2_3(L3_3, L4_3, L5_3)
    else
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3._hide_hint
      L2_3(L3_3)
    end
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.edit_box
  L1_2 = L1_2.onReturnPressed
  L2_2 = L1_2
  L1_2 = L1_2.SafeAddListener
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._send_text_message
    L0_3(L1_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.edit_box
    L1_3 = L0_3
    L0_3 = L0_3.SetFocus
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_line_type
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._hide_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
end
L2_1._on_load = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._enable_edit_box
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._on_owner_active_change = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._enable_edit_box
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L2_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._enable_edit_box
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L2_1.on_first_child_dialog_open = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._enable_edit_box
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L2_1.on_first_child_dialog_close = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.edit_box
    L3_2 = L2_2
    L2_2 = L2_2.SetFocus
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.edit_box
  L3_2 = L2_2
  L2_2 = L2_2.SetVisible
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._enable_edit_box = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AppUtils
  L1_2 = L1_2.IsAndroidPlatform
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.AppUtils
    L1_2 = L1_2.IsApplePlatform
    if not L1_2 then
      goto lbl_25
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.input
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.InputField
  L2_2 = L2_2.LineType
  L2_2 = L2_2.SingleLine
  L1_2.lineType = L2_2
  goto lbl_34
  ::lbl_25::
  L1_2 = A0_2._binder
  L1_2 = L1_2.input
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.InputField
  L2_2 = L2_2.LineType
  L2_2 = L2_2.MultiLineSubmit
  L1_2.lineType = L2_2
  ::lbl_34::
end
L2_1._setup_line_type = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.edit_box
  L2_2 = L1_2
  L1_2 = L1_2.Initialize
  L1_2(L2_2)
end
L2_1.show_input_field = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.edit_box
  L2_2 = L1_2
  L1_2 = L1_2.SetFocus
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._hide_hint
  L1_2(L2_2)
end
L2_1.activate_input_field = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._sent_callback = A1_2
  A0_2._sent_handler = A2_2
end
L2_1.register_sent_callback = L6_1
function L6_1(A0_2, A1_2)
  A0_2._contact_id = A1_2
end
L2_1.setup_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._auto_hide_countdown
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._auto_hide_countdown
  L2_2 = L2_2 - A1_2
  A0_2._auto_hide_countdown = L2_2
  L2_2 = A0_2._auto_hide_countdown
  if L2_2 <= 0 then
    L3_2 = A0_2
    L2_2 = A0_2._hide_hint
    L2_2(L3_2)
  end
end
L2_1._on_tick = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A2_2 then
    L3_2 = L5_1
    A0_2._auto_hide_countdown = L3_2
  else
    A0_2._auto_hide_countdown = nil
  end
end
L2_1._show_hint = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._auto_hide_countdown = nil
end
L2_1._hide_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L2_2 = not L2_2
  return L2_2
end
L2_1._over_max_length = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._send_text_message
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_mode
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.edit_box
    L2_2 = L1_2
    L1_2 = L1_2.SetFocus
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L2_1._on_btn_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIStringUtil
  L1_2 = L1_2.GetValidInputContent
  L2_2 = A0_2._binder
  L2_2 = L2_2.edit_box
  L2_2 = L2_2.text
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._show_hint
    L4_2 = L4_1
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = false
    return L2_2
  end
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.SendMessage
  L4_2 = A0_2._contact_id
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.edit_box
  L2_2.text = ""
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._sent_callback
  L4_2 = A0_2._sent_handler
  L2_2(L3_2, L4_2)
  L2_2 = true
  return L2_2
end
L2_1._send_text_message = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_emoji
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Friend.FriendChat.ChatEmojiSelectDialog"
  L3_2 = A0_2._contact_id
  L4_2 = A0_2._last_emoji_group_id
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.register_group_callback
  function L4_2(A0_3)
    local L1_3
    L1_3 = A0_2._binder
    if L1_3 ~= nil then
      A0_2._last_emoji_group_id = A0_3
    end
  end
  L2_2(L3_2, L4_2)
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.set_exit_callback
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 ~= nil then
      L0_3 = A0_2._binder
      L0_3 = L0_3.btn_emoji
      L1_3 = L0_3
      L0_3 = L0_3.SetChecked
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L2_1._on_btn_emoji = L6_1
return L2_1
