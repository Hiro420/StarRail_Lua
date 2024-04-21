local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MessageModule
L1_1 = "PhoneNotifications_QuickReplyPanel_FadeIn"
L2_1 = "PhoneNotifications_QuickReplyPanel_FadeOut"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "MessageReplyPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2
  A0_2._group_id = nil
  L1_2 = {}
  A0_2._waiting_item_ids = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply_text
  L2_2 = L1_2
  L1_2 = L1_2.register_item_click_callback
  L3_2 = A0_2._on_item_clicked
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply_image
  L2_2 = L1_2
  L1_2 = L1_2.register_item_click_callback
  L3_2 = A0_2._on_item_clicked
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L2_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_anim_fade_out_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L1_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_anim_fade_in_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._fade_begin_callback = A1_2
  A0_2._fade_begin_handler = A2_2
end
L3_1.register_fade_begin_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._fade_end_callback = A1_2
  A0_2._fade_end_handler = A2_2
end
L3_1.register_fade_end_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._group_id
  L3_2 = L3_2 ~= A1_2
  A0_2._group_id = A1_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh_waiting_data
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_item_view
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end
L3_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._waiting_item_ids
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  return L1_2
end
L3_1.can_reply = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  A0_2._waiting_item_ids = L1_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetGroupCurrentSection
  L3_2 = A0_2._group_id
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.IsFrozen
    if not L2_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = L1_2.IsWaitingItemChoose
  if not L2_2 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = L1_2.WaitingItemIDs
  L2_2 = L2_2(L3_2)
  A0_2._waiting_item_ids = L2_2
end
L3_1._refresh_waiting_data = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.can_reply
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._show_reply
    L5_2 = L2_2
    L6_2 = A1_2
    L7_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._setup_waiting_items
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._show_reply
    L5_2 = L2_2
    L6_2 = A1_2
    L7_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = A0_2
    L3_2 = A0_2._reset_items
    L3_2(L4_2)
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.UI
    L3_2 = L3_2.LayoutRebuilder
    L3_2 = L3_2.ForceRebuildLayoutImmediate
    L4_2 = A0_2._binder
    L4_2 = L4_2.layout
    L3_2(L4_2)
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.UI
    L3_2 = L3_2.LayoutRebuilder
    L3_2 = L3_2.ForceRebuildLayoutImmediate
    L4_2 = A0_2._binder
    L4_2 = L4_2.root
    L3_2(L4_2)
  end
end
L3_1._setup_item_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MessageItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._waiting_item_ids
  L2_2 = L2_2[1]
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_option_text
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_text_reply_view
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._is_option_image
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._setup_image_reply_view
      L2_2(L3_2)
    end
  end
end
L3_1._setup_waiting_items = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply_text
  L2_2 = L1_2
  L1_2 = L1_2.reset_items
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply_image
  L2_2 = L1_2
  L1_2 = L1_2.reset_items
  L1_2(L2_2)
end
L3_1._reset_items = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.ItemType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MessageItemType
  L3_2 = L3_2.Text
  L2_2 = L2_2 == L3_2
  return L2_2
end
L3_1._is_option_text = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.ItemType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MessageItemType
  L3_2 = L3_2.Sticker
  L2_2 = L2_2 == L3_2
  return L2_2
end
L3_1._is_option_image = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply_text
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply_image
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply_text
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._waiting_item_ids
  L1_2(L2_2, L3_2)
end
L3_1._setup_text_reply_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply_text
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply_image
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply_image
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._waiting_item_ids
  L1_2(L2_2, L3_2)
end
L3_1._setup_image_reply_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._in_fade
  if L2_2 then
    return
  end
  A0_2._to_send_item_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._show_reply
  L4_2 = false
  L5_2 = true
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L3_1._on_item_clicked = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2.is_active
  L4_2 = L4_2(L5_2)
  if A1_2 == L4_2 or not A2_2 then
    A0_2._in_fade = false
    if A1_2 then
      L5_2 = A0_2
      L4_2 = A0_2.safe_set_active
      L6_2 = A1_2
      L4_2(L5_2, L6_2)
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.UIAnimationUtils
      L4_2 = L4_2.PlayToEnd
      L5_2 = A0_2._binder
      L5_2 = L5_2.anim_root
      L6_2 = L1_1
      L4_2(L5_2, L6_2)
      L4_2 = CS
      L4_2 = L4_2.UnityEngine
      L4_2 = L4_2.UI
      L4_2 = L4_2.LayoutRebuilder
      L4_2 = L4_2.ForceRebuildLayoutImmediate
      L5_2 = A0_2._binder
      L5_2 = L5_2.layout
      L4_2(L5_2)
      L4_2 = CS
      L4_2 = L4_2.UnityEngine
      L4_2 = L4_2.UI
      L4_2 = L4_2.LayoutRebuilder
      L4_2 = L4_2.ForceRebuildLayoutImmediate
      L5_2 = A0_2._binder
      L5_2 = L5_2.root
      L4_2(L5_2)
    else
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.UIAnimationUtils
      L4_2 = L4_2.PlayToEnd
      L5_2 = A0_2._binder
      L5_2 = L5_2.anim_root
      L6_2 = L2_1
      L4_2(L5_2, L6_2)
      L5_2 = A0_2
      L4_2 = A0_2.safe_set_active
      L6_2 = A1_2
      L4_2(L5_2, L6_2)
    end
  else
    A0_2._in_fade = true
    if A1_2 then
      L5_2 = A0_2
      L4_2 = A0_2.safe_set_active
      L6_2 = A1_2
      L4_2(L5_2, L6_2)
      L4_2 = CS
      L4_2 = L4_2.UnityEngine
      L4_2 = L4_2.UI
      L4_2 = L4_2.LayoutRebuilder
      L4_2 = L4_2.ForceRebuildLayoutImmediate
      L5_2 = A0_2._binder
      L5_2 = L5_2.layout
      L4_2(L5_2)
      L4_2 = CS
      L4_2 = L4_2.UnityEngine
      L4_2 = L4_2.UI
      L4_2 = L4_2.LayoutRebuilder
      L4_2 = L4_2.ForceRebuildLayoutImmediate
      L5_2 = A0_2._binder
      L5_2 = L5_2.root
      L4_2(L5_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.anim_root
      L5_2 = L4_2
      L4_2 = L4_2.Play
      L6_2 = L1_1
      L4_2(L5_2, L6_2)
    else
      L4_2 = A0_2._binder
      L4_2 = L4_2.anim_root
      L5_2 = L4_2
      L4_2 = L4_2.Play
      L6_2 = L2_1
      L4_2(L5_2, L6_2)
    end
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.invoke_callback
    L5_2 = A0_2._fade_begin_callback
    L6_2 = A0_2._fade_begin_handler
    L7_2 = A1_2
    L8_2 = A3_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L3_1._show_reply = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._in_fade = false
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._fade_end_callback
  L3_2 = A0_2._fade_end_handler
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._do_send_message
  L1_2(L2_2)
end
L3_1._on_anim_fade_out_end = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._to_send_item_id
  if L1_2 == nil then
    return
  end
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.FinishItemByChoice
  L3_2 = A0_2._to_send_item_id
  L1_2(L2_2, L3_2)
  A0_2._to_send_item_id = nil
end
L3_1._do_send_message = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._in_fade = false
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._fade_end_callback
  L3_2 = A0_2._fade_end_handler
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_anim_fade_in_end = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._waiting_item_ids
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MessageItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._waiting_item_ids
  L2_2 = L2_2[1]
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_option_text
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_reply_text
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._is_option_image
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_reply_image
      L3_2 = L2_2
      L2_2 = L2_2.get_first_selected_object
      return L2_2(L3_2)
    end
  end
end
L3_1.get_first_selected_object = L4_1
return L3_1
