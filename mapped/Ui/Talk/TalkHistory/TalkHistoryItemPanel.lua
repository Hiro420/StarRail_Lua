local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.TalkModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "TalkHistoryItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  A0_2._voice_instance_id = 0
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TalkVoiceEnd
  L4_2 = L1_1._on_talk_voice_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.get_first_selected_object
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._select_callback
    L2_3 = A0_2._select_handler
    L3_3 = A0_2._index
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ButtonMutex
  L1_2 = L1_2(L2_2)
  A0_2._button_mutex = L1_2
  L1_2 = A0_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.ReleaseMutex
  L1_2(L2_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._button_mutex
  if L1_2 then
    L1_2 = A0_2._button_mutex
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    A0_2._button_mutex = nil
  end
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._select_callback = A1_2
  A0_2._select_handler = A2_2
end
L1_1.register_select_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._voice_callback = A1_2
  A0_2._voice_handler = A2_2
end
L1_1.register_voice_callback = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  A0_2._data = A1_2
  A0_2._index = A2_2
  L5_2 = L0_1
  L6_2 = L5_2
  L5_2 = L5_2.IsHistoryItemLatest
  L7_2 = A2_2 - 1
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._is_latest = L5_2
  L5_2 = L0_1
  L6_2 = L5_2
  L5_2 = L5_2.IsHistoryItemIconSpecial
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._is_next_special = L5_2
  L5_2 = L0_1
  L6_2 = L5_2
  L5_2 = L5_2.IsHistoryItemContinuing
  L7_2 = A2_2 - 1
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._is_continuing = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._setup_info_view
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_dot_view
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_extra_view
  L7_2 = A3_2
  L8_2 = A4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  L6_2 = L6_2.transform
  L5_2(L6_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TalkHistoryType
  L2_2 = L2_2.Read
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_content
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_BacklogBookName"
    L4_2 = G
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = A0_2._data
    L5_2 = L5_2.Content
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L1_2 = G
    L1_2 = L1_2.TextmapStatic
    L1_2 = L1_2.GetText
    L2_2 = A0_2._data
    L2_2 = L2_2.Content
    L1_2 = L1_2(L2_2)
    L2_2 = string
    L2_2 = L2_2.gsub
    L3_2 = L1_2
    L4_2 = "</?size.->"
    L5_2 = ""
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2 = L2_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_LocalizationManager
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.CompileRuby
    L4_2 = L1_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_content
    L6_2 = L2_2.RubyHoldAlignSpace
    L7_2 = L2_2.RubyStrRatio
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L1_2 = L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_content
    L4_2 = L3_2
    L3_2 = L3_2.SetCustomizedText
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_latest
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_latest
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.Type
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TalkHistoryType
  L4_2 = L4_2.Aside
  L3_2 = A0_2._is_continuing
  L3_2 = L3_2 ~= L4_2 and L3_2
  L1_2(L2_2, L3_2)
end
L1_1._setup_info_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._data
  L1_2 = L1_2.HasVoice
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_dot
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_voice
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_voice
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_voice_l
    if L2_2 then
      goto lbl_25
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_dot_l
  ::lbl_25::
  if L1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_voice_s
    if L3_2 then
      goto lbl_33
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_dot_s
  ::lbl_33::
  L5_2 = L2_2
  L4_2 = L2_2.SafeSetActive
  L6_2 = A0_2._is_latest
  L6_2 = A0_2._is_next_special
  L6_2 = not L6_2 and L6_2
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.SafeSetActive
  L6_2 = A0_2._is_latest
  L6_2 = not L6_2 and L6_2
  L4_2(L5_2, L6_2)
end
L1_1._setup_dot_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = L3_2
  L3_2 = L3_2.SetChecked
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._data
  L3_2 = L3_2.HasVoice
  if L3_2 then
    A0_2._playing_voice = A1_2
    L3_2 = A0_2._playing_voice
    L3_2 = A2_2 or L3_2
    if not L3_2 or not A2_2 then
      L3_2 = 0
    end
    A0_2._voice_instance_id = L3_2
    L4_2 = A0_2
    L3_2 = A0_2._refresh_voice_view
    L3_2(L4_2)
  end
end
L1_1._setup_extra_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.HasVoice
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._playing_voice
  L1_2(L2_2, L3_2)
end
L1_1._refresh_voice_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.HasExtra
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.Type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.TalkHistoryType
    L2_2 = L2_2.Read
    if L1_2 == L2_2 then
      L1_2 = G
      L1_2 = L1_2.UIManager
      L1_2 = L1_2.load_and_async_show
      L2_2 = "Ui.Book.BookContentDialog"
      L3_2 = A0_2._data
      L3_2 = L3_2.ExtraID
      L1_2(L2_2, L3_2)
    end
  else
    L1_2 = A0_2._data
    L1_2 = L1_2.HasVoice
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._on_btn_voice
      L1_2(L2_2)
    end
  end
end
L1_1._on_btn_root = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.HasVoice
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.ButtonMutex
  L1_2 = L1_2.click_mutex
  L2_2 = A0_2._button_mutex
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._playing_voice
    if L0_3 then
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.GlobalVars
      L0_3 = L0_3.s_AudioManager
      L1_3 = L0_3
      L0_3 = L0_3.StopEventID
      L2_3 = A0_2._voice_instance_id
      L3_3 = 0.1
      L0_3(L1_3, L2_3, L3_3)
    else
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._play_voice
      L0_3(L1_3)
    end
  end
  L4_2 = 0.1
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_btn_voice = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._data
  L1_2 = L1_2.HasVoice
  if not L1_2 then
    return
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.VoiceID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AudioManager
  L3_2 = L2_2
  L2_2 = L2_2.PostVoice
  L4_2 = A0_2._data
  L4_2 = L4_2.VoiceID
  L5_2 = nil
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_voice_end
    L2_3 = L1_2
    L0_3(L1_3, L2_3)
  end
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_voice_begin
    L2_3 = L1_2
    L0_3(L1_3, L2_3)
  end
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._voice_instance_id = L2_2
end
L1_1._play_voice = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._data
  L2_2 = L2_2.HasVoice
  if not L2_2 then
    return
  end
  L2_2 = A0_2._data
  L2_2 = L2_2.VoiceID
  if L2_2 ~= A1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._change_voice_status
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L1_1._on_voice_begin = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._data
  L2_2 = L2_2.HasVoice
  if not L2_2 then
    return
  end
  L2_2 = A0_2._data
  L2_2 = L2_2.VoiceID
  if L2_2 ~= A1_2 then
    return
  end
  A0_2._voice_instance_id = 0
  L3_2 = A0_2
  L2_2 = A0_2._change_voice_status
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L1_1._on_voice_end = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_voice_end
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._on_talk_voice_end = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._playing_voice
  if L2_2 == A1_2 then
    return
  end
  A0_2._playing_voice = A1_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._voice_callback
  L4_2 = A0_2._voice_handler
  L5_2 = A0_2._index
  L6_2 = A0_2._data
  L6_2 = L6_2.VoiceID
  L7_2 = A0_2._playing_voice
  L8_2 = A0_2._voice_instance_id
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L1_1._change_voice_status = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L1_1.get_first_selected_object = L2_1
return L1_1
