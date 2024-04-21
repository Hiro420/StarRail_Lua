local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ChatModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ChatEmojiSelectItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._quick_mark = A3_2
  A0_2._id = 0
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._enable_in_control
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._select_callback
    L2_3 = A0_2._select_handler
    L3_3 = A0_2._id
    L4_3 = A0_2
    L5_3 = L4_3
    L4_3 = L4_3.get_first_selected_object
    L4_3, L5_3 = L4_3(L5_3)
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._enable_in_control
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L1_2 = A0_2._quick_mark
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._bind_short_down_click
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn
    L4_2 = A0_2._on_btn_down
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn
    function L4_2()
      local L0_3, L1_3
      L0_3 = G
      L0_3 = L0_3.Utils
      L0_3 = L0_3.is_gamepad_input
      L0_3 = L0_3()
      if not L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._on_btn_click
        L0_3(L1_3)
      end
    end
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._bind_short_click
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn
    function L4_2()
      local L0_3, L1_3
      L0_3 = G
      L0_3 = L0_3.Utils
      L0_3 = L0_3.is_gamepad_input
      L0_3 = L0_3()
      if L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._on_btn_click
        L0_3(L1_3)
      end
    end
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._bind_over_short_click_time
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn
    L4_2 = L1_1._on_start_press
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._bind_pressing_down
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn
    L4_2 = L1_1._on_confirm_btn_press
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._bind_long_click
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn
    L4_2 = A0_2._on_btn_long_press
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._bind_release
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn
    L4_2 = A0_2._on_btn_release
    L1_2(L2_2, L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn
    L4_2 = A0_2._on_btn_click
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.controls_button
  L2_2 = A0_2._quick_mark
  L2_2 = not L2_2
  L1_2.enabled = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._enable_in_control
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_marked
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_marked_effect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_pressing
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L1_1.register_click_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._long_press_callback = A1_2
  A0_2._long_press_handler = A2_2
end
L1_1.register_long_press_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._select_callback = A1_2
  A0_2._select_handler = A2_2
end
L1_1.register_select_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._id = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.EmojiConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A0_2._row = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_emoji_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_index_view
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_favorite_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_reddot_view
  L3_2(L4_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img
  L4_2 = A0_2._row
  L4_2 = L4_2.EmojiPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.KeyWords
  L1_2(L2_2, L3_2)
end
L1_1._refresh_emoji_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2 ~= nil
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = L3_2
  L3_2 = L3_2.SetChecked
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_check
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_index
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_index
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L1_1._refresh_index_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._show_mark
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_marked
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_marked_effect
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 or L4_2
  if L1_2 then
    L4_2 = false
  end
  L2_2(L3_2, L4_2)
end
L1_1._refresh_favorite_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._quick_mark
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.IsEmojiMarked
  L3_2 = A0_2._id
  L1_2 = not L1_2 and L1_2
  return L1_2
end
L1_1._show_mark = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._refresh_reddot_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_marked_effect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_mark
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_marked_effect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = "Ev_sfx_ui_click_chat_emoji_love"
  L1_2(L2_2, L3_2)
end
L1_1.play_mark_effect = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._long_press_start = false
  A0_2._long_press_success = false
end
L1_1._on_btn_down = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._long_press_start = true
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  A0_2._begin_time_stamp = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_pressing
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = "Ev_sfx_ui_click_chat_emoji_love_long"
  L1_2(L2_2, L3_2)
end
L1_1._on_start_press = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  L2_2 = A0_2._begin_time_stamp
  L1_2 = L1_2 - L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.long_press
  L2_2 = L2_2.TotalTime
  L3_2 = A0_2._binder
  L3_2 = L3_2.long_press
  L3_2 = L3_2.ShortClickTime
  L2_2 = L2_2 - L3_2
  L1_2 = L1_2 / L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.bar_pressing
  L2_2.fillAmount = L1_2
end
L1_1._on_confirm_btn_press = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._long_press_success = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_pressing
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._long_press_callback
  L3_2 = A0_2._long_press_handler
  L4_2 = A0_2._id
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_btn_long_press = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_pressing
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._long_press_start
  if L1_2 then
    L1_2 = A0_2._long_press_success
    if not L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_AudioManager
      L2_2 = L1_2
      L1_2 = L1_2.PostEvent
      L3_2 = "Ev_sfx_ui_click_chat_emoji_love_long_stop"
      L1_2(L2_2, L3_2)
    end
  end
end
L1_1._on_btn_release = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._long_press_start
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._click_callback
    L3_2 = A0_2._click_handler
    L4_2 = A0_2._id
    L1_2(L2_2, L3_2, L4_2)
  end
  A0_2._long_press_start = false
  A0_2._long_press_success = false
end
L1_1._on_btn_click = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.controls_button
  L2_2.ActionEnabled = A1_2
end
L1_1._enable_in_control = L2_1
return L1_1
