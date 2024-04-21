local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MiniGameReShaEasterSFXButtonPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._is_playing = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.ui_param_deliverer
  L2_2 = L1_2
  L1_2 = L1_2.TryGetValue
  L3_2 = "SFXEventName"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._sfx_event_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReShaAssistantStopPlayingSFX
  L4_2 = A0_2._on_resha_assistant_stop_playing_sfx
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root_select
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_status
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_playing
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_stop_sfx
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._play_sfx
    L1_2(L2_2)
  end
end
L0_1._on_btn_root_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2.is_destroyed
    if not L1_2 then
      L1_2 = A0_2._is_playing
      if L1_2 then
        goto lbl_11
      end
    end
  end
  do return end
  ::lbl_11::
  A0_2._is_playing = false
  A0_2._playing_event_id = nil
  L2_2 = A0_2
  L1_2 = A0_2._refresh_status
  L1_2(L2_2)
end
L0_1._on_audio_event_end = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_stop_sfx
  L1_2(L2_2)
end
L0_1._on_resha_assistant_stop_playing_sfx = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_btn_root = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.transform
  L1_2 = L1_2.position
  L1_2 = L1_2.x
  return L1_2
end
L0_1.get_world_position_horizontal = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ReShaAssistantStopPlayingSFX
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.StrExt
  L1_2 = L1_2.IsNullOrEmpty
  L2_2 = A0_2._sfx_event_name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormatWithTag
    L2_2 = G
    L2_2 = L2_2.LogTag
    L2_2 = L2_2.UI
    L3_2 = "[ReSha] \233\159\179\230\149\136\230\140\137\233\146\174%s\231\154\132SFXEventName\233\133\141\231\189\174\228\184\186\231\169\186\239\188\140\232\175\183\230\163\128\230\159\165\233\133\141\231\189\174"
    L4_2 = A0_2._binder
    L4_2 = L4_2.root
    L4_2 = L4_2.transform
    L4_2 = L4_2.parent
    L4_2 = L4_2.gameObject
    L4_2 = L4_2.name
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  A0_2._is_playing = true
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = A0_2._sfx_event_name
  L4_2 = nil
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_audio_event_end
    L0_3(L1_3)
  end
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._playing_event_id = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_status
  L1_2(L2_2)
end
L0_1._play_sfx = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_playing
  if L1_2 then
    L1_2 = A0_2._playing_event_id
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.StopEventID
  L3_2 = A0_2._playing_event_id
  L1_2(L2_2, L3_2)
  A0_2._is_playing = false
  A0_2._playing_event_id = nil
  L2_2 = A0_2
  L1_2 = A0_2._refresh_status
  L1_2(L2_2)
end
L0_1._try_stop_sfx = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_playing
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_playing
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_playing_effect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_playing
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_stop
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_playing
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._refresh_status = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_first_selected_object
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root_select = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
return L0_1
