local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GameStartupUI3DPage"
L2_1 = G
L2_1 = L2_1.UI3DController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "UI/UI3D/LoginShow/LoginShow.prefab"
  L1_2 = A0_2.config
  L1_2.use_screen_transfer = false
  L1_2 = A0_2.config
  L1_2.join_ui_load = false
  L1_2 = A0_2.config
  L1_2.use_global_camera = true
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._animator = L1_2
  L1_2 = A0_2._root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RPGAnimationEvent
  L1_2 = L1_2.Get
  L2_2 = A0_2._root
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.AddAnimationEvent
  L4_2 = "Anim_LoginShow_LoadingWarpGO"
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_play_end
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._stop_sound
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LoginEnableEnterGameAnim
  L4_2 = L0_1._on_resources_ready
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LoginReset
  L4_2 = L0_1._on_login_fail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LoginServerFailed
  L4_2 = L0_1._on_login_fail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LoginTriggerEnterAnim
  L4_2 = L0_1._on_trigger_enter_anim
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "LoginUI3D: On login anim end"
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.LoginFinishEnterAnim
  L1_2(L2_2)
end
L0_1._on_play_end = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "ToWarp"
  L1_2(L2_2, L3_2)
end
L0_1._on_resources_ready = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "WarpGo"
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_game = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._stop_sound
  L2_2(L3_2)
  L2_2 = A0_2._animator
  L3_2 = L2_2
  L2_2 = L2_2.ResetTrigger
  L4_2 = "WarpGo"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._animator
  L3_2 = L2_2
  L2_2 = L2_2.ResetTrigger
  L4_2 = "ToWarp"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._animator
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = "LoginShow_LoadingLoop"
  L2_2(L3_2, L4_2)
end
L0_1._on_login_fail = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_loaded
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.on_game_logo_show = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_loaded
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A1_2
    L2_2()
  end
  A0_2._loaded_callback = A1_2
end
L0_1.set_loaded_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._on_enter_game
  L2_2(L3_2)
end
L0_1._on_trigger_enter_anim = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._loaded_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._loaded_callback
    L1_2()
    A0_2._loaded_callback = nil
  end
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._animator
  if L1_2 ~= nil then
    L1_2 = A0_2._animator
    L1_2 = L1_2.gameObject
    if L1_2 ~= nil then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_AudioManager
      L2_2 = L1_2
      L1_2 = L1_2.PostEvent
      L3_2 = "Ev_sfx_menu_login_loop_01_stop"
      L4_2 = A0_2._animator
      L4_2 = L4_2.gameObject
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_AudioManager
      L2_2 = L1_2
      L1_2 = L1_2.PostEvent
      L3_2 = "Ev_sfx_menu_login_loop_02_stop"
      L4_2 = A0_2._animator
      L4_2 = L4_2.gameObject
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._stop_sound = L1_1
return L0_1
