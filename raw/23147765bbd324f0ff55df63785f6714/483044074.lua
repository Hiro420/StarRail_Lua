local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.CheckState.ActivityClockParkGamePlayCheckCommentPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.CheckState.ActivityClockParkGamePlayCheckCommentPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.ClockParkGameStateEnum
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ClockParkCheckPointType
L3_1 = "ClockParkCheckPanel_FadeIn"
L4_1 = "UIText_ClockPark_Request_Tip_1"
L5_1 = "UIText_ClockPark_Request_Tip_2"
L6_1 = 2
L7_1 = "ClockParkMoodBrokenInfo_Unlock"
L8_1 = "ClockParkMoodBrokenInfo_Lock"
L9_1 = "ClockBoyMood_Happy"
L10_1 = "Happy_Open"
L11_1 = "Happy_Loop"
L12_1 = "ClockBoyMood_Cry"
L13_1 = "Cry_Open"
L14_1 = "Cry_Loop"
L15_1 = "ClockParkCheckPanel_FadeIn"
L16_1 = "ClockParkCheckPanel_FadeOut"
L17_1 = G
L17_1 = L17_1.ConstValueUtils
L17_1 = L17_1.get_string_array
L18_1 = "Activity_ClockPark_CheckPoint_Win_Toast"
L17_1 = L17_1(L18_1)
L18_1 = G
L18_1 = L18_1.ConstValueUtils
L18_1 = L18_1.get_string_array
L19_1 = "Activity_ClockPark_CheckPoint_Lose_Toast"
L18_1 = L18_1(L19_1)
L19_1 = 0.5
L20_1 = 0.3
L21_1 = G
L21_1 = L21_1.Class
L22_1 = "ActivityClockParkGamePlayCheckPanel"
L23_1 = G
L23_1 = L23_1.BasePanel
L21_1 = L21_1(L22_1, L23_1)
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkGamePlayCheckCommentPanel
  L5_2 = G
  L5_2 = L5_2.ActivityClockParkGamePlayCheckCommentPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkGamePlayCheckCommentPanel
  L5_2 = G
  L5_2 = L5_2.ActivityClockParkGamePlayCheckCommentPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkGamePlayCheckCommentPanel
  L5_2 = G
  L5_2 = L5_2.ActivityClockParkGamePlayCheckCommentPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[3] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkGamePlayCheckCommentPanel
  L5_2 = G
  L5_2 = L5_2.ActivityClockParkGamePlayCheckCommentPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[4] = L2_2
  A0_2.panel_comment_list = L1_2
  L1_2 = A0_2.panel_comment_list
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._owner
  L3_2 = L3_2._binder
  L3_2 = L3_2.check_node_comment_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.panel_comment_list
  L1_2 = L1_2[2]
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._owner
  L3_2 = L3_2._binder
  L3_2 = L3_2.check_node_comment_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.panel_comment_list
  L1_2 = L1_2[3]
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._owner
  L3_2 = L3_2._binder
  L3_2 = L3_2.check_node_comment_3
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.panel_comment_list
  L1_2 = L1_2[4]
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._owner
  L3_2 = L3_2._binder
  L3_2 = L3_2.check_node_comment_4
  L1_2(L2_2, L3_2)
end
L21_1._on_load = L22_1
function L22_1(A0_2, A1_2)
  A0_2._attribute_panel = A1_2
end
L21_1.init_attribute_panel = L22_1
function L22_1(A0_2)
  local L1_2
end
L21_1.setup_view = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = G
  L4_2 = L4_2.ChallengeActionUtils
  L4_2 = L4_2.create_immediate_action
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2._owner
    if L0_3 ~= nil then
      L0_3 = A0_2._owner
      L0_3 = L0_3._binder
      if L0_3 ~= nil then
        goto lbl_9
      end
    end
    do return end
    ::lbl_9::
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_btn_round_finish
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_comment
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_result
    L0_3(L1_3)
    L0_3 = A0_2._owner
    L0_3 = L0_3._binder
    L0_3 = L0_3.btn_round_finish
    L0_3.interactable = false
  end
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = G
  L4_2 = L4_2.ChallengeActionUtils
  L4_2 = L4_2.create_anim_action
  L5_2 = A0_2._owner
  L5_2 = L5_2._binder
  L5_2 = L5_2.check_anim_check
  L6_2 = L15_1
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = G
  L4_2 = L4_2.ChallengeActionUtils
  L4_2 = L4_2.create_immediate_action
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._owner
    if L0_3 ~= nil then
      L0_3 = A0_2._owner
      L0_3 = L0_3._binder
      if L0_3 ~= nil then
        goto lbl_9
      end
    end
    do return end
    ::lbl_9::
    L0_3 = A0_2._owner
    L0_3 = L0_3._binder
    L0_3 = L0_3.btn_round_finish
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._owner
    L0_3 = L0_3._binder
    L0_3 = L0_3.btn_round_finish
    L0_3.interactable = true
  end
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  return L1_2
end
L21_1.get_enter_action = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.ImmediateAction
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_callback
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = A0_2._owner
    if L0_3 ~= nil then
      L0_3 = A0_2._owner
      L0_3 = L0_3._binder
      if L0_3 ~= nil then
        goto lbl_9
      end
    end
    do return end
    ::lbl_9::
    L0_3 = pairs
    L1_3 = A0_2.panel_comment_list
    L0_3, L1_3, L2_3 = L0_3(L1_3)
    for L3_3, L4_3 in L0_3, L1_3, L2_3 do
      if L4_3 ~= nil then
        L6_3 = L4_3
        L5_3 = L4_3.is_active
        L5_3 = L5_3(L6_3)
        if L5_3 then
          L6_3 = L4_3
          L5_3 = L4_3.play_fade_out
          L5_3(L6_3)
        end
      end
    end
    L0_3 = A0_2._owner
    L0_3 = L0_3._binder
    L0_3 = L0_3.btn_round_finish
    L0_3.interactable = false
  end
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = G
  L5_2 = L5_2.ChallengeActionUtils
  L5_2 = L5_2.create_anim_action
  L6_2 = A0_2._owner
  L6_2 = L6_2._binder
  L6_2 = L6_2.check_anim_check
  L7_2 = L16_1
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  return L1_2
end
L21_1.get_exit_action = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.CurGameState
  L1_2 = L1_2.IsCheckPass
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.ScriptInfo
  L2_2 = L2_2.ChapterInfo
  L2_2 = L2_2.CheckPointInfo
  L3_2 = L2_2.HasCheck
  if not L3_2 then
    return
  end
  L3_2 = nil
  if L1_2 then
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.create_lua_table_from_cs_array
    L5_2 = L2_2.Config
    L5_2 = L5_2.CheckWinTextList
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  else
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.create_lua_table_from_cs_array
    L5_2 = L2_2.Config
    L5_2 = L5_2.CheckFailTextList
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  L4_2 = math
  L4_2 = L4_2.random
  L5_2 = A0_2.panel_comment_list
  L5_2 = #L5_2
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._select_random_index
  L7_2 = 1
  L8_2 = #L3_2
  L9_2 = A0_2.panel_comment_list
  L9_2 = #L9_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = pairs
  L7_2 = A0_2.panel_comment_list
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L12_2 = L10_2
    L11_2 = L10_2.safe_set_active
    L13_2 = false
    L11_2(L12_2, L13_2)
    if L9_2 ~= L4_2 then
      L11_2 = L5_2[L9_2]
      L11_2 = L3_2[L11_2]
      if L11_2 ~= nil then
        L11_2 = A0_2.panel_comment_list
        L11_2 = L11_2[L9_2]
        L12_2 = L11_2
        L11_2 = L11_2.setup_view
        L13_2 = L5_2[L9_2]
        L13_2 = L3_2[L13_2]
        L11_2(L12_2, L13_2)
        L11_2 = A0_2.panel_comment_list
        L11_2 = L11_2[L9_2]
        L12_2 = L11_2
        L11_2 = L11_2.play_fade_in
        L13_2 = L19_1
        L14_2 = L20_1
        L14_2 = L9_2 * L14_2
        L13_2 = L13_2 + L14_2
        L11_2(L12_2, L13_2)
      end
    end
  end
end
L21_1._setup_comment = L22_1
function L22_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A2_2 - A1_2
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = L4_2 + 1
  L7_2 = A3_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = {}
  L7_2 = 0
  L8_2 = L4_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L6_2
    L13_2 = L10_2 + A1_2
    L11_2(L12_2, L13_2)
  end
  L7_2 = {}
  while true do
    L8_2 = #L7_2
    if not (L5_2 > L8_2) then
      break
    end
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = 1
    L10_2 = #L6_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L7_2
    L11_2 = L6_2[L8_2]
    L9_2(L10_2, L11_2)
    L9_2 = table
    L9_2 = L9_2.remove
    L10_2 = L6_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  return L7_2
end
L21_1._select_random_index = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.CurGameState
  L1_2 = L1_2.IsCheckPass
  L2_2 = A0_2._owner
  L2_2 = L2_2._binder
  L2_2 = L2_2.check_node_eff_win
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._owner
  L2_2 = L2_2._binder
  L2_2 = L2_2.check_node_eff_fail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._owner
  L2_2 = L2_2._binder
  L2_2 = L2_2.check_txt_check_result
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  if L1_2 then
    L4_2 = L4_1
    if L4_2 then
      goto lbl_26
    end
  end
  L4_2 = L5_1
  ::lbl_26::
  L2_2(L3_2, L4_2)
end
L21_1._setup_result = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.CurGameState
  L1_2 = L1_2.IsCheckPass
  L2_2 = A0_2._owner
  L2_2 = L2_2._binder
  L2_2 = L2_2.btn_round_finish
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._owner
  L2_2 = L2_2._binder
  L2_2 = L2_2.text_btn_round_finish
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  if L1_2 then
    L4_2 = "UIText_ClockPark_Script_Round_Continue"
    if L4_2 then
      goto lbl_20
    end
  end
  L4_2 = "UIText_ClockPark_Script_Exit"
  ::lbl_20::
  L2_2(L3_2, L4_2)
end
L21_1._setup_btn_round_finish = L22_1
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 ~= "ClockParkPlayCheckSpineAnime" then
    return
  end
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.CurGameState
  L2_2 = L2_2.IsCheckPass
  L3_2 = A0_2._owner
  L3_2 = L3_2._binder
  L3_2 = L3_2.check_animator_spine
  L4_2 = L3_2
  L3_2 = L3_2.Play
  if L2_2 then
    L5_2 = L9_1
    if L5_2 then
      goto lbl_17
    end
  end
  L5_2 = L12_1
  ::lbl_17::
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._owner
  L3_2 = L3_2._binder
  L3_2 = L3_2.check_spine_anim
  L3_2 = L3_2.AnimationState
  L4_2 = L3_2
  L3_2 = L3_2.SetAnimation
  L5_2 = 0
  if L2_2 then
    L6_2 = L10_1
    if L6_2 then
      goto lbl_30
    end
  end
  L6_2 = L13_1
  ::lbl_30::
  L7_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  A0_2._spine_anim = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._add_count_down_timer
  L5_2 = A0_2._on_spine_end
  L6_2 = A0_2._spine_anim
  L6_2 = L6_2.AnimationEnd
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._spine_timer = L3_2
  L3_2 = A0_2._spine_timer
  L4_2 = L3_2
  L3_2 = L3_2.reset
  L3_2(L4_2)
  L3_2 = A0_2._spine_timer
  L4_2 = L3_2
  L3_2 = L3_2.start
  L3_2(L4_2)
end
L21_1._on_ui_animation_event = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._spine_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.CurGameStateEnum
  L2_2 = L1_1.Check
  if L1_2 ~= L2_2 then
    return
  end
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.CurGameState
  L2_2 = L2_2.IsCheckPass
  L3_2 = A0_2._owner
  L3_2 = L3_2._binder
  L3_2 = L3_2.check_spine_anim
  L3_2 = L3_2.AnimationState
  L4_2 = L3_2
  L3_2 = L3_2.SetAnimation
  L5_2 = 0
  if L2_2 then
    L6_2 = L11_1
    if L6_2 then
      goto lbl_25
    end
  end
  L6_2 = L14_1
  ::lbl_25::
  L7_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  A0_2._spine_anim = L3_2
  L3_2 = A0_2._spine_timer
  L4_2 = L3_2
  L3_2 = L3_2.set_interval
  L5_2 = A0_2._spine_anim
  L5_2 = L5_2.AnimationEnd
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._spine_timer
  L4_2 = L3_2
  L3_2 = L3_2.reset
  L3_2(L4_2)
  L3_2 = A0_2._spine_timer
  L4_2 = L3_2
  L3_2 = L3_2.start
  L3_2(L4_2)
end
L21_1._on_spine_end = L22_1
return L21_1
