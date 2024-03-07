local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Loading.EnterDreamLoadingPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Loading.EnterDreamUI3DPage"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EnterDreamLoadingPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "EnviroSystem/PostProcessFilterAsset/ScreenDream_A.asset"
L2_1 = "EnviroSystem/PostProcessFilterAsset/ScreenDream_B.asset"
L3_1 = 1.6
L4_1 = 1.3
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.UIPriority_Topmost
  A0_2._priority = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.EnterDreamLoadingPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._close_when_phase_changed = false
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.EnterDreamUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._enter_dream_ui3d = L1_2
  A0_2._is_enter_dream = true
  A0_2._progress = 0
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_enter_dream = A1_2
  L2_2 = A0_2._enter_dream_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.set_dream_type
  L4_2 = A0_2._is_enter_dream
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetEnvironmentSystem
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.GetPPEffectManager
  L3_2 = L3_2(L4_2)
  A0_2._effect_manager = L3_2
  L3_2 = A0_2._is_enter_dream
  if L3_2 then
    L3_2 = L1_1
    A0_2._filter_path = L3_2
  else
    L3_2 = L2_1
    A0_2._filter_path = L3_2
  end
end
L0_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = L0_1._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LoadingProgress
  L4_2 = L0_1._on_loading_progress
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AsyncLoadToPercent
  L4_2 = L0_1._on_async_load_to_percent
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.EnterDreamLoadingFinish
  L4_2 = L0_1._on_enter_dream_loading_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideLoadingPage
  L4_2 = L0_1._on_hide_loading_page
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._on_ui3d_load = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._in_control_exit_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._enter_dream_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.play_fade_in_anim
  L1_2(L2_2)
  L1_2 = A0_2._effect_manager
  L2_2 = L1_2
  L1_2 = L1_2.ConfigFilterStackWithAnim
  L3_2 = A0_2._filter_path
  L4_2 = 1
  L5_2 = 0
  L6_2 = L3_1
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.PPEffectFilterPriorityGroup
  L7_2 = L7_2.PerformanceGroup
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.GameCore
  L8_2 = L8_2.PPEffectFilterPriority
  L8_2 = L8_2.High
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.Instance
  L1_2 = L1_2.IsScreenTransfer
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.EndScreenTransfer
    L1_2(L2_2)
  end
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_progress
  L2_2 = A0_2._progress
  L1_2.fillAmount = L2_2
end
L0_1._refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._enter_dream_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.play_fade_out_anim
  L1_2(L2_2)
  L1_2 = A0_2._effect_manager
  L2_2 = L1_2
  L1_2 = L1_2.ConfigFilterStackWithAnim
  L3_2 = A0_2._filter_path
  L4_2 = 0
  L5_2 = 1
  L6_2 = L4_1
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.PPEffectFilterPriorityGroup
  L7_2 = L7_2.PerformanceGroup
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.GameCore
  L8_2 = L8_2.PPEffectFilterPriority
  L8_2 = L8_2.High
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_enter_dream_loading_finish = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._progress = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_loading_progress = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._progress
  if A1_2 > L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.MMathf
    L2_2 = L2_2.Clamp01
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    A0_2._progress = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
  end
end
L0_1._on_async_load_to_percent = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == "EnterDreamFadeOutFinish" then
    L2_2 = A0_2._effect_manager
    L3_2 = L2_2
    L2_2 = L2_2.CloseFilterStackWithAnim
    L4_2 = A0_2._filter_path
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.PPEffectFilterPriorityGroup
    L5_2 = L5_2.PerformanceGroup
    L6_2 = 0
    L7_2 = 1
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  elseif A1_2 == "EnterDreamFadeInFinish" then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.EnterDreamLoadingPageFadeIn
    L2_2(L3_2)
  end
end
L0_1._on_ui_animation_event = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_hide_loading_page = L5_1
return L0_1
