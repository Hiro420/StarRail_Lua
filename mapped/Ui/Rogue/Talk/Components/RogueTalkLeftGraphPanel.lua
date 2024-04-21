local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Rogue.Talk.Components.RogueTalkLeftGraphPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueTalkLeftGraphPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.LEFT_2_RIGHT = "RogueRandomTalk_FigureStatus_BTalking"
L1_1.RIGHT_2_LEFT = "RogueRandomTalk_FigureStatus_ATalking"
L1_1.LEFT_2_AEON = "RogueRandomTalk_FigureStatus_AeonShowUp_A"
L1_1.RIGHT_2_AEON = "RogueRandomTalk_FigureStatus_AeonShowUp_B"
L1_1.AEON_2_AEON = "RogueRandomTalk_FigureStatus_AeonShowUp_C"
L2_1 = {}
L2_1.Left = 0
L2_1.Right = 1
function L3_1(A0_2)
  local L1_2
  A0_2._is_in_aeon_status = false
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_animation_event_notify
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowRogueTalkBg
  L4_2 = A0_2.update_bg
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator_cmpt
  L3_2 = not A1_2
  L2_2.enabled = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_bg_left
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_bg_right
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_bg_aeon
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  A0_2._is_disabled = A1_2
end
L0_1.custom_set_disable = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_disabled
  return L1_2
end
L0_1.is_disabled = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._get_config_from_talk_info
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._cur_config
  if L3_2 == nil then
    L3_2 = G
    L3_2 = L3_2.RogueTalkUtils
    L3_2 = L3_2.check_is_aeon
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      A0_2._cur_config = L2_2
      L4_2 = A0_2
      L3_2 = A0_2._init_first_bg
      L3_2(L4_2)
      return
  end
  else
    L3_2 = A0_2._cur_config
    if L3_2 == nil then
      A0_2._cur_config = L2_2
      L4_2 = A0_2
      L3_2 = A0_2._init_first_bg_if_aeon
      L3_2(L4_2)
      L4_2 = A0_2
      L3_2 = A0_2._show_aeon_fade_in
      L3_2(L4_2)
      return
    end
  end
  L3_2 = G
  L3_2 = L3_2.RogueTalkUtils
  L3_2 = L3_2.check_is_same_bg
  L4_2 = A0_2._cur_config
  L4_2 = L4_2.talkBgID
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = A0_2._aeon_fade_cbk
    if L3_2 then
      L3_2 = A0_2._aeon_fade_cbk_owner
      if L3_2 then
        L3_2 = A0_2._aeon_fade_cbk
        L4_2 = A0_2._aeon_fade_cbk_owner
        L3_2(L4_2)
      end
    end
    return
  end
  A0_2._cur_config = L2_2
  L3_2 = G
  L3_2 = L3_2.RogueTalkUtils
  L3_2 = L3_2.check_is_aeon
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.RogueTalkUtils
    L3_2 = L3_2.check_is_aeon_played
    L4_2 = A1_2
    L5_2 = A0_2._played_aeon_table
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      L3_2 = A0_2._is_in_aeon_status
      if L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._show_aeon_fade_in_again
        L3_2(L4_2)
        return
      end
      L4_2 = A0_2
      L3_2 = A0_2._show_aeon_fade_in
      L3_2(L4_2)
      return
    end
  end
  L3_2 = A0_2._is_in_aeon_status
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._show_aeon_fade_out
    L3_2(L4_2)
    L3_2 = A0_2._aeon_fade_cbk
    if L3_2 then
      L3_2 = A0_2._aeon_fade_cbk_owner
      if L3_2 then
        L3_2 = A0_2._aeon_fade_cbk
        L4_2 = A0_2._aeon_fade_cbk_owner
        L3_2(L4_2)
      end
    end
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._swap_base_panel
  L3_2(L4_2)
  L3_2 = A0_2._aeon_fade_cbk
  if L3_2 then
    L3_2 = A0_2._aeon_fade_cbk_owner
    if L3_2 then
      L3_2 = A0_2._aeon_fade_cbk
      L4_2 = A0_2._aeon_fade_cbk_owner
      L3_2(L4_2)
    end
  end
end
L0_1.update_bg = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._aeon_fade_cbk = A1_2
  A0_2._aeon_fade_cbk_owner = A2_2
end
L0_1.register_aeon_fade_finish_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = nil
  if A1_2 ~= 0 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.RogueTalkNameConfigExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L3_2 = nil
  if L2_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.RogueImageExcelTable
    L4_2 = L4_2.GetData
    L5_2 = L2_2.ImageID
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  L4_2 = {}
  L4_2.talkNameConfigRow = L2_2
  L4_2.rogueImageRow = L3_2
  L4_2.talkBgID = A1_2
  return L4_2
end
L0_1._get_config_from_talk_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bg_left
  L2_2 = L1_2
  L1_2 = L1_2.setup_simple_talk_view
  L3_2 = A0_2._cur_config
  L3_2 = L3_2.talkBgID
  L1_2(L2_2, L3_2)
  L1_2 = L2_1.Left
  A0_2._cur_panel_pos = L1_2
end
L0_1._init_first_bg = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bg_left
  L2_2 = L1_2
  L1_2 = L1_2.setup_bg_view_if_empty
  L1_2(L2_2)
  L1_2 = L2_1.Left
  A0_2._cur_panel_pos = L1_2
end
L0_1._init_first_bg_if_aeon = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._get_next_panel_and_anim_and_status
  L1_2, L2_2 = L1_2(L2_2)
  L4_2 = L1_2
  L3_2 = L1_2.setup_simple_talk_view
  L5_2 = A0_2._cur_config
  L5_2 = L5_2.talkBgID
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.animator_cmpt
  L4_2 = L3_2
  L3_2 = L3_2.SetInteger
  L5_2 = "TalkingStatus"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  A0_2._cur_panel_pos = L2_2
end
L0_1._swap_base_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_panel_pos
  L2_2 = L2_1.Left
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_bg_right
    L2_2 = L2_1.Right
    return L1_2, L2_2
  else
    L1_2 = A0_2._cur_panel_pos
    L2_2 = L2_1.Right
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_bg_left
      L2_2 = L2_1.Left
      return L1_2, L2_2
    end
  end
end
L0_1._get_next_panel_and_anim_and_status = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_in_aeon_status = true
  L1_2 = A0_2._played_aeon_table
  if not L1_2 then
    L1_2 = {}
  end
  A0_2._played_aeon_table = L1_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._played_aeon_table
  L3_2 = A0_2._cur_config
  L3_2 = L3_2.rogueImageRow
  L3_2 = L3_2.ImageID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_config
  L1_2 = L1_2.rogueImageRow
  L1_2 = L1_2.ParamStr1
  A0_2._wait_for_play_effect = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bg_aeon
  L2_2 = L1_2
  L1_2 = L1_2.setup_simple_talk_view
  L3_2 = A0_2._cur_config
  L3_2 = L3_2.talkBgID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_cmpt
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "AeonShowUp"
  L1_2(L2_2, L3_2)
end
L0_1._show_aeon_fade_in = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._get_next_panel_and_anim_and_status
  L1_2, L2_2 = L1_2(L2_2)
  L4_2 = L1_2
  L3_2 = L1_2.setup_simple_talk_view
  L5_2 = A0_2._cur_config
  L5_2 = L5_2.talkBgID
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.animator_cmpt
  L4_2 = L3_2
  L3_2 = L3_2.SetInteger
  L5_2 = "TalkingStatus"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.animator_cmpt
  L4_2 = L3_2
  L3_2 = L3_2.SetTrigger
  L5_2 = "ShowUpEnd"
  L3_2(L4_2, L5_2)
  A0_2._cur_panel_pos = L2_2
  A0_2._is_in_aeon_status = false
end
L0_1._show_aeon_fade_out = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_cmpt
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "ShowUpAgain"
  L1_2(L2_2, L3_2)
  A0_2._is_in_stage_two = true
end
L0_1._show_aeon_fade_in_again = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_in_stage_two = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bg_aeon
  L2_2 = L1_2
  L1_2 = L1_2.setup_simple_talk_view
  L3_2 = A0_2._cur_config
  L3_2 = L3_2.talkBgID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._played_aeon_table
  if not L1_2 then
    L1_2 = {}
  end
  A0_2._played_aeon_table = L1_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._played_aeon_table
  L3_2 = A0_2._cur_config
  L3_2 = L3_2.rogueImageRow
  L3_2 = L3_2.ImageID
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = A0_2._cur_config
  L3_2 = L3_2.rogueImageRow
  L3_2 = L3_2.ParamStr1
  L1_2(L2_2, L3_2)
end
L0_1._on_aeon_anim_fade_in_again = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == "RogueRandomTalkAeonShowUp" then
    L2_2 = A0_2._aeon_fade_cbk
    if L2_2 then
      L2_2 = A0_2._aeon_fade_cbk_owner
      if L2_2 then
        L2_2 = A0_2._aeon_fade_cbk
        L3_2 = A0_2._aeon_fade_cbk_owner
        L2_2(L3_2)
      end
    end
    L2_2 = A0_2._is_in_stage_two
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_aeon_anim_fade_in_again
      L2_2(L3_2)
    end
    L2_2 = A0_2._wait_for_play_effect
    if L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_AudioManager
      L3_2 = L2_2
      L2_2 = L2_2.PostEvent
      L4_2 = A0_2._wait_for_play_effect
      L2_2(L3_2, L4_2)
      A0_2._wait_for_play_effect = nil
    end
  end
end
L0_1._on_animation_event_notify = L3_1
return L0_1
