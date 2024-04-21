local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueOptionTalkPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueSingleTalkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueRandomEvtOptionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueAeonOptionItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueAeonOptionItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueTalkUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueOptionTalkPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.default = 1
L1_1.aeon_option = 2
L1_1.random_evt = 3
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2
  A0_2._is_aeon = A3_2
  L5_2 = {}
  A0_2._evt_options = L5_2
  L5_2 = G
  L5_2 = L5_2.RogueTalkUtils
  L5_2 = L5_2.construct_talk_data
  L5_2 = L5_2()
  A0_2._talk_datas = L5_2
  L5_2 = {}
  A0_2._simple_talk_panels = L5_2
  L5_2 = {}
  A0_2._option_btns = L5_2
  A0_2._fullscreen_btn = A4_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._is_aeon = A1_2
  A0_2._fullscreen_btn = A2_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_game_pad_hint
  L3_2 = L1_1.default
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_simple_talk_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayRogueSimpleTalk
  L4_2 = A0_2._on_play_rogue_simple_talk
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TalkShowRogueOption
  L4_2 = A0_2._on_option_talk_ntf
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.goto_btn
  L4_2 = A0_2._on_next_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._fullscreen_btn
  L4_2 = A0_2._on_fullscreen_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.random_evt_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_choose_option_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_option_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.aeon_talk_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_choose_option_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_option_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.goto_btn
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._fullscreen_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_panel_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._change_team_members_story_mode
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._change_team_members_story_mode
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_aeon
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.aeon_talk_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.random_evt_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2._view_inited = true
  L1_2 = A0_2._has_wait_for_play_talks
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._start_simple_talk_flow
    L1_2(L2_2)
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueStatic
  L2_2 = L2_2.IsInMissionReplay
  L2_2 = L2_2()
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_replay_game_pad_hint
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = L1_1.default
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_Scroll"
    L4_2[1] = L5_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._safe_set_short_cut_hint_panel_active
    L4_2 = A0_2._binder
    L4_2 = L4_2.scroll_rect
    L5_2 = L4_2
    L4_2 = L4_2.CanScroll
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = L1_1.aeon_option
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.scroll_rect
      L3_2 = L2_2
      L2_2 = L2_2.CanScroll
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.setup_short_cut_hint_panel
        L4_2 = {}
        L5_2 = "ActionGroup_Select"
        L6_2 = "ActionGroup_Scroll"
        L4_2[1] = L5_2
        L4_2[2] = L6_2
        L2_2(L3_2, L4_2)
      else
        L3_2 = A0_2
        L2_2 = A0_2.setup_short_cut_hint_panel
        L4_2 = {}
        L5_2 = "ActionGroup_Select"
        L4_2[1] = L5_2
        L2_2(L3_2, L4_2)
      end
    else
      L2_2 = L1_1.random_evt
      if A1_2 == L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._safe_set_short_cut_hint_panel_active
        L4_2 = false
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._setup_game_pad_hint = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L1_1.default
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_rect
    L3_2 = L2_2
    L2_2 = L2_2.CanScroll
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = {}
      L5_2 = "ActionGroup_Scroll"
      L6_2 = "ActionGroup_Return"
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L2_2(L3_2, L4_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = {}
      L5_2 = "ActionGroup_Return"
      L4_2[1] = L5_2
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = L1_1.aeon_option
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.scroll_rect
      L3_2 = L2_2
      L2_2 = L2_2.CanScroll
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.setup_short_cut_hint_panel
        L4_2 = {}
        L5_2 = "ActionGroup_Select"
        L6_2 = "ActionGroup_Scroll"
        L7_2 = "ActionGroup_Return"
        L4_2[1] = L5_2
        L4_2[2] = L6_2
        L4_2[3] = L7_2
        L2_2(L3_2, L4_2)
      else
        L3_2 = A0_2
        L2_2 = A0_2.setup_short_cut_hint_panel
        L4_2 = {}
        L5_2 = "ActionGroup_Select"
        L6_2 = "ActionGroup_Return"
        L4_2[1] = L5_2
        L4_2[2] = L6_2
        L2_2(L3_2, L4_2)
      end
    else
      L2_2 = L1_1.random_evt
      if A1_2 == L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.setup_short_cut_hint_panel
        L4_2 = {}
        L5_2 = "ActionGroup_Return"
        L4_2[1] = L5_2
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._setup_replay_game_pad_hint = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L2_2 = L2_2._short_cut_hint_panel
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._owner
  L2_2 = L2_2._short_cut_hint_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._safe_set_short_cut_hint_panel_active = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = L2_2.TeamManager
  if L3_2 == nil then
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.ChangeTeamMemberStoryMode
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L0_1._change_team_members_story_mode = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._portrait_callback = A1_2
  A0_2._portrait_hander = A2_2
end
L0_1.register_portrait_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._buff_option_shown_callback = A1_2
  A0_2._buff_option_shown_hander = A2_2
end
L0_1.register_buff_option_shown_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._show_option_cbk = A2_2
  A0_2._show_option_owner = A1_2
end
L0_1.register_play_option_talk_cbk = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.goto_btn
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._fullscreen_btn
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._change_btn_status = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect
  L3_2 = not A1_2
  L2_2.enabled = L3_2
end
L0_1._lock_scroll_rect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._talk_datas
  L2_2 = A0_2._talk_datas
  L2_2 = L2_2.last_played_index
  L2_2 = L2_2 + 1
  L1_2.last_played_index = L2_2
end
L0_1._update_last_played_index = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == true then
    L2_2 = A0_2._owner
    L3_2 = L2_2
    L2_2 = L2_2.register_aeon_fade_finish_callback
    L4_2 = nil
    L5_2 = nil
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2._owner
    L3_2 = L2_2
    L2_2 = L2_2.register_aeon_fade_finish_callback
    L4_2 = A0_2._on_aeon_fade_in_finished
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._update_owner_aeon_fade_finish_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ipairs
  L2_2 = A0_2._talk_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._talk_datas
    L6_2 = L6_2.last_played_index
    if L4_2 < L6_2 then
      L5_2.is_played = true
    end
  end
end
L0_1._force_reset_talk_played_status = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._is_aeon
  if L2_2 or A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = A0_2._binder
    L4_2 = L4_2.aeon_talk_panel
    L5_2 = L4_2
    L4_2 = L4_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = A0_2._binder
    L4_2 = L4_2.random_evt_panel
    L5_2 = L4_2
    L4_2 = L4_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_navigation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TalkChooseOption
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._send_notify = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.aeon_talk_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.seperate_line
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._change_btn_status
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._lock_scroll_rect
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_last_played_index
  L1_2(L2_2)
  L1_2 = A0_2._talk_datas
  if L1_2 ~= nil then
    L1_2 = A0_2._talk_datas
    L1_2 = L1_2.last_played_index
    if L1_2 ~= nil then
      goto lbl_32
    end
  end
  do return end
  ::lbl_32::
  L1_2 = A0_2._talk_datas
  L2_2 = A0_2._talk_datas
  L2_2 = L2_2.last_played_index
  L1_2 = L1_2[L2_2]
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._talk_datas
  L2_2 = L2_2.last_played_index
  if 1 < L2_2 then
    L2_2 = L1_2.is_aeon_spe_talk
    if not L2_2 then
      L2_2 = G
      L2_2 = L2_2.RogueTalkUtils
      L2_2 = L2_2.check_is_aeon
      L3_2 = L1_2.TalkBgID
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._do_play_simple_talk_with_pop_up_effect
        L2_2(L3_2)
    end
  end
  else
    L2_2 = L1_2.is_aeon_spe_talk
    if not L2_2 then
      L2_2 = G
      L2_2 = L2_2.RogueTalkUtils
      L2_2 = L2_2.check_is_aeon
      L3_2 = L1_2.TalkBgID
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._update_owner_aeon_fade_finish_callback
        L4_2 = false
        L2_2(L3_2, L4_2)
    end
    else
      L2_2 = L1_2.is_aeon_spe_talk
      if not L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._do_play_simple_talk
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2._post_play_simple_talk
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2._on_simple_talk_play_finished
        L2_2(L3_2)
      else
        L3_2 = A0_2
        L2_2 = A0_2._do_play_simple_talk
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2._post_play_simple_talk
        L2_2(L3_2)
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_change_background_image
  L2_2(L3_2)
end
L0_1._pre_play_simple_talk = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._talk_datas
  L3_2 = L3_2.last_played_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._do_play_simple_talk = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._talk_datas
  L3_2 = L3_2.last_played_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.llv_helper
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.play_fade_animation
    L2_2(L3_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.llv_helper
  L3_2 = L2_2
  L2_2 = L2_2.MoveToBottom
  L4_2 = A0_2._on_simple_talk_play_finished
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_game_pad_hint
  L4_2 = L1_1.default
  L2_2(L3_2, L4_2)
end
L0_1._do_play_simple_talk_with_pop_up_effect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._on_simple_talk_finish_action
  if L1_2 then
    L1_2 = A0_2._on_simple_talk_finish_action
    L1_2 = L1_2.action
    L2_2 = A0_2
    L3_2 = A0_2._on_simple_talk_finish_action
    L3_2 = L3_2.param
    L1_2(L2_2, L3_2)
  end
  A0_2._on_simple_talk_finish_action = nil
  L2_2 = A0_2
  L1_2 = A0_2._setup_game_pad_hint
  L3_2 = L1_1.default
  L1_2(L2_2, L3_2)
end
L0_1._post_play_simple_talk = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._lock_scroll_rect
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._on_simple_talk_finish_action
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._change_btn_status
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._post_play_simple_talk
    L1_2(L2_2)
  end
end
L0_1._on_simple_talk_play_finished = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RogueSingleTalkPanel
    L8_2 = G
    L8_2 = L8_2.RogueSingleTalkPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._simple_talk_panels
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2._talk_datas
  L6_2 = A0_2._talk_datas
  L6_2 = L6_2.last_played_index
  L6_2 = L6_2 - A2_2
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2._talk_datas
  L6_2 = L6_2.last_played_index
  L6_2 = L6_2 - 1
  if A2_2 == L6_2 then
    L6_2 = A0_2._talk_datas
    L6_2 = L6_2.total_simple_talks
    L7_2 = A0_2._talk_datas
    L7_2 = #L7_2
    if L6_2 == L7_2 then
      L5_2.is_newest_talk = true
  end
  else
    L5_2.is_newest_talk = false
  end
  L7_2 = L4_2
  L6_2 = L4_2.setup_data
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = L5_2.is_aeon_spe_talk
  if L6_2 then
    L7_2 = L4_2
    L6_2 = L4_2.register_fadein_play_finish_cbk
    L8_2 = A0_2
    L9_2 = A0_2._on_simple_talk_play_finished
    L6_2(L7_2, L8_2, L9_2)
  else
    L7_2 = L4_2
    L6_2 = L4_2.register_fadein_play_finish_cbk
    L8_2 = nil
    L9_2 = nil
    L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L4_2._binder
  L7_2 = L7_2.root
  L7_2 = L7_2.transform
  L6_2(L7_2)
  return L3_2
end
L0_1._on_simple_talk_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._talk_datas
  L2_2 = A0_2._talk_datas
  L2_2 = L2_2.last_played_index
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2.TalkBgID
  if L2_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.invoke_callback
    L3_2 = A0_2._portrait_callback
    L4_2 = A0_2._portrait_hander
    L5_2 = L1_2.TalkBgID
    L6_2 = L1_2.is_aeon_spe_talk
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._try_change_background_image = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._do_play_simple_talk_with_pop_up_effect
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_owner_aeon_fade_finish_callback
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._post_play_simple_talk
  L1_2(L2_2)
end
L0_1._on_aeon_fade_in_finished = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.is_special_option
  if L2_2 ~= nil then
    L2_2 = A1_2.is_special_option
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.aeon_talk_panel
      L3_2 = L2_2
      L2_2 = L2_2.clear
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2._show_random_evt_options
      L4_2 = A0_2._current_arg
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2._setup_navigation
      L2_2(L3_2)
      return
    end
  end
  L2_2 = A1_2.dialogue_event_id
  if L2_2 ~= nil then
    L2_2 = A1_2.dialogue_event_id
    if L2_2 ~= 0 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.RogueStatic
      L2_2 = L2_2.IsInMissionReplay
      L2_2 = L2_2()
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._setup_view_after_option_clicked
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2._send_notify
        L4_2 = A1_2.InfoIndex
        L2_2(L3_2, L4_2)
        return
      end
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_DialogueManager
      L2_2 = L2_2.DialogueMode
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.DialogueMode
      L3_2 = L3_2.NoNPC
      if L2_2 == L3_2 then
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.RogueStatic
        L2_2 = L2_2.IsInMissionReplay
        L2_2 = L2_2()
        if not L2_2 then
          L3_2 = A0_2
          L2_2 = A0_2.show_full_screen_block_for_packet
          L4_2 = CS
          L4_2 = L4_2.PBIBDHBOIGI
          L4_2 = L4_2.ILNPDBDMCMF
          L2_2(L3_2, L4_2)
          L3_2 = A0_2
          L2_2 = A0_2._add_packet_handler
          L4_2 = CS
          L4_2 = L4_2.PBIBDHBOIGI
          L4_2 = L4_2.ILNPDBDMCMF
          L5_2 = L0_1._on_cmd_select_sub_mission_event_sc_rsp
          L2_2(L3_2, L4_2, L5_2)
          A0_2._is_waiting_event_rsp = true
      end
      else
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.RogueStatic
        L2_2 = L2_2.IsInMissionReplay
        L2_2 = L2_2()
        if not L2_2 then
          L3_2 = A0_2
          L2_2 = A0_2.show_full_screen_block_for_packet
          L4_2 = CS
          L4_2 = L4_2.PBIBDHBOIGI
          L4_2 = L4_2.LGOKPBEJLIE
          L2_2(L3_2, L4_2)
          L3_2 = A0_2
          L2_2 = A0_2._add_packet_handler
          L4_2 = CS
          L4_2 = L4_2.PBIBDHBOIGI
          L4_2 = L4_2.LGOKPBEJLIE
          L5_2 = L0_1._on_cmd_select_rogue_dialogue_event_sc_rsp
          L2_2(L3_2, L4_2, L5_2)
          A0_2._is_waiting_event_rsp = true
        end
      end
      L3_2 = A0_2
      L2_2 = A0_2._send_notify
      L4_2 = A1_2.InfoIndex
      L2_2(L3_2, L4_2)
  end
  else
    L3_2 = A0_2
    L2_2 = A0_2._construct_notify_action
    L4_2 = A1_2.InfoIndex
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_view_after_option_clicked
    L2_2(L3_2)
  end
end
L0_1._on_option_clicked = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = {}
  L3_2 = A0_2._send_notify
  L2_2.action = L3_2
  L2_2.param = A1_2
  A0_2._on_simple_talk_finish_action = L2_2
end
L0_1._construct_notify_action = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.goto_btn
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.aeon_talk_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._fullscreen_btn
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.seperate_line
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RogueTalkUtils
  L1_2 = L1_2.on_option_choosed
  L2_2 = A0_2._talk_datas
  L3_2 = A0_2._option_configs
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._talk_datas = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._start_simple_talk_flow
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._show_option_cbk
  L3_2 = A0_2._show_option_owner
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.aeon_talk_panel
  L2_2 = L1_2
  L1_2 = L1_2.show_new_options
  L3_2 = {}
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_game_pad_hint
  L3_2 = L1_1.default
  L1_2(L2_2, L3_2)
end
L0_1._setup_view_after_option_clicked = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._current_arg = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.goto_btn
  L3_2 = L3_2.transform
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._fullscreen_btn
  L3_2 = L3_2.transform
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  if A2_2 then
    L3_2 = G
    L3_2 = L3_2.RogueTalkUtils
    L3_2 = L3_2.construct_special_aeon_talk
    L3_2 = L3_2()
    L4_2 = A0_2._binder
    L4_2 = L4_2.aeon_talk_panel
    L5_2 = L4_2
    L4_2 = L4_2.show_new_options
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    return
  end
  L3_2 = G
  L3_2 = L3_2.RogueTalkUtils
  L3_2 = L3_2.construct_option_data
  L4_2 = A1_2
  L5_2 = true
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._option_configs = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.aeon_talk_panel
  L4_2 = L3_2
  L3_2 = L3_2.show_new_options
  L5_2 = A0_2._option_configs
  L3_2(L4_2, L5_2)
end
L0_1._apply_aeon_talk_method = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_game_pad_hint
  L4_2 = L1_1.random_evt
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._show_option_cbk
  L4_2 = A0_2._show_option_owner
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.aeon_talk_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.goto_btn
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._fullscreen_btn
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.seperate_line
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.RogueTalkUtils
  L2_2 = L2_2.construct_option_data
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._option_configs = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.random_evt_panel
  L3_2 = L2_2
  L2_2 = L2_2.show_new_options
  L4_2 = A0_2._option_configs
  L2_2(L3_2, L4_2)
  A0_2._current_arg = nil
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._buff_option_shown_callback
  L4_2 = A0_2._buff_option_shown_hander
  L2_2(L3_2, L4_2)
end
L0_1._show_random_evt_options = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.LGOKPBEJLIE
  L4_2 = L0_1._on_cmd_select_rogue_dialogue_event_sc_rsp
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_waiting_event_rsp = false
  L2_2 = A0_2
  L1_2 = A0_2._setup_view_after_option_clicked
  L1_2(L2_2)
end
L0_1._on_cmd_select_rogue_dialogue_event_sc_rsp = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.ILNPDBDMCMF
  L4_2 = L0_1._on_cmd_select_sub_mission_event_sc_rsp
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_waiting_event_rsp = false
  L2_2 = A0_2
  L1_2 = A0_2._setup_view_after_option_clicked
  L1_2(L2_2)
end
L0_1._on_cmd_select_sub_mission_event_sc_rsp = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.RogueTalkUtils
  L2_2 = L2_2.add_new_simple_talk_to
  L3_2 = A1_2
  L4_2 = A0_2._talk_datas
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._talk_datas = L2_2
  L2_2 = A0_2._view_inited
  if not L2_2 then
    A0_2._has_wait_for_play_talks = true
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_game_pad_hint
  L4_2 = L1_1.default
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._start_simple_talk_flow
  L2_2(L3_2)
end
L0_1._on_play_rogue_simple_talk = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    L2_2 = A1_2.Count
    if not (L2_2 <= 0) then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = A0_2._is_aeon
  if L2_2 ~= nil then
    L2_2 = A0_2._is_aeon
  end
  L2_2 = G
  L2_2 = L2_2.RogueTalkUtils
  L2_2 = L2_2.is_simple_option_in_random_evt
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 == false and L2_2
  L4_2 = A0_2
  L3_2 = A0_2._apply_aeon_talk_method
  L5_2 = A1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_game_pad_hint
  L5_2 = L1_1.aeon_option
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_navigation
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1._on_option_talk_ntf = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._talk_datas
  L1_2 = L1_2.last_played_index
  L2_2 = A0_2._talk_datas
  L2_2 = L2_2.total_simple_talks
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RogueSimpleTalkFinish
  L1_2(L2_2)
end
L0_1._try_apply_new_talk = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._pre_play_simple_talk
  L1_2(L2_2)
end
L0_1._start_simple_talk_flow = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._talk_datas
  L1_2 = L1_2.last_played_index
  L2_2 = A0_2._talk_datas
  L2_2 = L2_2.total_simple_talks
  if L1_2 < L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._start_simple_talk_flow
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._try_apply_new_talk
    L1_2(L2_2)
  end
end
L0_1._on_next_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._talk_datas
  L1_2 = L1_2.last_played_index
  L2_2 = A0_2._talk_datas
  L2_2 = L2_2.total_simple_talks
  if L1_2 < L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._start_simple_talk_flow
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._try_apply_new_talk
    L1_2(L2_2)
  end
end
L0_1._on_fullscreen_btn_clicked = L2_1
return L0_1
