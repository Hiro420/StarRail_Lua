local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusCommonGhostSpineBgPanel"
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
L2_1 = 10
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_left_ghost
  L4_2 = A0_2._on_click_left_ghost
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right_ghost
  L4_2 = A0_2._on_click_right_ghost
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_play_left_click_anim = false
  A0_2._is_play_right_click_anim = false
  A0_2._is_left_played = false
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_spine_auto_play
  L4_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._spine_auto_timer = L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._play_spine
  L1_2(L2_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.skeleton_left
  L1_2 = L1_2.AnimationState
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.skeleton_left
    L1_2 = L1_2.AnimationState
    L2_2 = L1_2
    L1_2 = L1_2.SetAnimation
    L3_2 = 0
    L4_2 = "Open"
    L5_2 = false
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2._left_spine_anim = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_left_spine_end
  L4_2 = A0_2._left_spine_anim
  L4_2 = L4_2.AnimationEnd
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._spine_left_timer = L1_2
  L1_2 = A0_2._spine_left_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._spine_left_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.skeleton_right
  L1_2 = L1_2.AnimationState
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.skeleton_right
    L1_2 = L1_2.AnimationState
    L2_2 = L1_2
    L1_2 = L1_2.SetAnimation
    L3_2 = 0
    L4_2 = "Open"
    L5_2 = false
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2._right_spine_anim = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_right_spine_end
  L4_2 = A0_2._right_spine_anim
  L4_2 = L4_2.AnimationEnd
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._spine_right_timer = L1_2
  L1_2 = A0_2._spine_right_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._spine_right_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = A0_2._spine_auto_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._spine_auto_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._play_spine = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._spine_left_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.skeleton_left
  L1_2 = L1_2.AnimationState
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.skeleton_left
    L1_2 = L1_2.AnimationState
    L2_2 = L1_2
    L1_2 = L1_2.SetAnimation
    L3_2 = 0
    L4_2 = "Loop1"
    L5_2 = true
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2._left_spine_anim = L1_2
  end
  A0_2._is_play_left_click_anim = false
end
L0_1._on_left_spine_end = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._spine_right_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.skeleton_right
  L1_2 = L1_2.AnimationState
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.skeleton_right
    L1_2 = L1_2.AnimationState
    L2_2 = L1_2
    L1_2 = L1_2.SetAnimation
    L3_2 = 0
    L4_2 = "Loop1"
    L5_2 = true
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2._right_spine_anim = L1_2
  end
  A0_2._is_play_right_click_anim = false
end
L0_1._on_right_spine_end = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_play_left_click_anim
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.skeleton_left
  L1_2 = L1_2.AnimationState
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.skeleton_left
    L1_2 = L1_2.AnimationState
    L2_2 = L1_2
    L1_2 = L1_2.SetAnimation
    L3_2 = 0
    L4_2 = "Loop2"
    L5_2 = false
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2._left_spine_anim = L1_2
  end
  L1_2 = A0_2._spine_left_timer
  L2_2 = L1_2
  L1_2 = L1_2.set_total_time
  L3_2 = A0_2._left_spine_anim
  L3_2 = L3_2.AnimationEnd
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._spine_left_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._spine_left_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  A0_2._is_play_left_click_anim = true
  A0_2._is_left_played = true
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = "Ev_sfx_ui_click_activity_heliobus_SNSMainPage_ghost_L"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._spine_auto_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._spine_auto_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._on_click_left_ghost = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_play_right_click_anim
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.skeleton_right
  L1_2 = L1_2.AnimationState
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.skeleton_right
    L1_2 = L1_2.AnimationState
    L2_2 = L1_2
    L1_2 = L1_2.SetAnimation
    L3_2 = 0
    L4_2 = "Loop2"
    L5_2 = false
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2._right_spine_anim = L1_2
  end
  L1_2 = A0_2._spine_right_timer
  L2_2 = L1_2
  L1_2 = L1_2.set_total_time
  L3_2 = A0_2._right_spine_anim
  L3_2 = L3_2.AnimationEnd
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._spine_right_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._spine_right_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  A0_2._is_play_right_click_anim = true
  A0_2._is_left_played = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = "Ev_sfx_ui_click_activity_heliobus_SNSMainPage_ghost_R"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._spine_auto_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._spine_auto_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._on_click_right_ghost = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page_or_dialog
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._is_left_played
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._on_click_left_ghost
      L1_2(L2_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._on_click_right_ghost
      L1_2(L2_2)
    end
  else
    L1_2 = A0_2._spine_auto_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
  end
end
L0_1._on_spine_auto_play = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._spine_auto_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._spine_auto_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._on_return_to_top = L3_1
return L0_1
