local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueRandomEvtPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.Enum.RogueEnum"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = "9316"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueRandomEvtPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
L2_1 = "RogueRandomTalkPage_FadeIn"
L3_1 = "RogueRandomTalkPage_FadeIn_EventNew"
L4_1 = "RogueRandomTalkPage_FadeIn_Event"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueRandomEvtPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueStatic
  L1_2 = L1_2.IsInMissionReplay
  L1_2 = L1_2()
  A0_2._is_resp_esc = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L1_1.ctor = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  A0_2._rogue_dialog_type = A1_2
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = 0
  end
  A0_2._handbook_event_id = L5_2
  L5_2 = A3_2 or L5_2
  if not A3_2 then
    L5_2 = 0
  end
  A0_2._image_id = L5_2
  A0_2._rogue_npc_id = A4_2
  L6_2 = A0_2
  L5_2 = A0_2._get_rogue_random_event_type
  L5_2 = L5_2(L6_2)
  A0_2._random_event_type = L5_2
end
L1_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff
  L4_2 = A0_2._on_buff_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.CloseRogueTalk
  L4_2 = A0_2._on_close_talk_dialogue
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueDialogueBattleEvent
  L4_2 = A0_2._on_random_evt_enter_battle
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowRogueTalkBg
  L4_2 = A0_2._update_random_evt_bg
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_talk
  L2_2 = L1_2
  L1_2 = L1_2.register_play_option_talk_cbk
  L3_2 = A0_2
  L4_2 = A0_2._on_option_talk_show_status_changed
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_talk
  L2_2 = L1_2
  L1_2 = L1_2.register_buff_option_shown_callback
  L3_2 = A0_2._on_buff_option_shown
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._rogue_dialog_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueDialogueType
  L2_2 = L2_2.Event
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_talk
    L2_2 = L1_2
    L1_2 = L1_2.register_portrait_callback
    L3_2 = A0_2._setup_npc_portrait
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_root
    L1_2.enabled = true
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_root
    L1_2.enabled = false
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.left_graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.custom_set_disable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_event_bg
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._rogue_dialog_type
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.RogueDialogueType
  L4_2 = L4_2.Event
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_top_bar
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_buff
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueStatic
  L1_2 = L1_2.IsInMissionReplay
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.exit_btn
    L1_2 = L1_2.transform
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.exit_btn
    L4_2 = A0_2._on_exit_btn_clicked
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._random_event_type
  L2_2 = G
  L2_2 = L2_2.RogueEnum
  L2_2 = L2_2.RogueRandomEventType
  L2_2 = L2_2.Nous
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_nous_value_panel
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.TutorialTaskUnlock
    L3_2 = L0_1
    L1_2(L2_2, L3_2)
  end
end
L1_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueStatic
  L1_2 = L1_2.IsInMissionReplay
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_DialogManager
    L2_2 = L1_2
    L1_2 = L1_2.ForceFinishCurDialogLevelGraph
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_exit_btn_clicked = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_buff
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1._on_unload = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._handbook_event_id
  if L1_2 == 0 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_normal_view
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.root_animation
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.RogueTalkUtils
    L1_2 = L1_2.is_random_evt_first_met
    L2_2 = A0_2._handbook_event_id
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._perform_random_process
      L1_2(L2_2)
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.CoroutineUtils
      L1_2 = L1_2.InvokeNextFrame
      function L2_2()
        local L0_3, L1_3, L2_3
        L0_3 = A0_2._binder
        L0_3 = L0_3.root_animation
        L1_3 = L0_3
        L0_3 = L0_3.Play
        L2_3 = L3_1
        L0_3(L1_3, L2_3)
      end
      L1_2(L2_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._setup_normal_view
      L1_2(L2_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.root_animation
      L2_2 = L1_2
      L1_2 = L1_2.Play
      L3_2 = L2_1
      L1_2(L2_2, L3_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_gamemode_title
  L1_2(L2_2)
end
L1_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._handbook_event_id
  if L1_2 ~= 0 then
    L1_2 = A0_2._random_performance_finished
    if not L1_2 then
      goto lbl_10
    end
  end
  L1_2 = L2_1
  do return L1_2 end
  goto lbl_22
  ::lbl_10::
  L1_2 = G
  L1_2 = L1_2.RogueTalkUtils
  L1_2 = L1_2.is_random_evt_first_met
  L2_2 = A0_2._handbook_event_id
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L3_1
    return L1_2
  else
    L1_2 = L2_1
    return L1_2
  end
  ::lbl_22::
end
L1_1.get_custom_fade_in_anim_name = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._rogue_dialog_type
  return L1_2
end
L1_1.get_dialogue_type = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._random_event_type
  return L1_2
end
L1_1.get_rogue_random_event_type = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.RogueTalkUtils
  L1_2 = L1_2.is_rogue_nous_event_npc
  L2_2 = A0_2._rogue_npc_id
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RogueEnum
    L1_2 = L1_2.RogueRandomEventType
    L1_2 = L1_2.Nous
    return L1_2
  else
    L1_2 = G
    L1_2 = L1_2.RogueEnum
    L1_2 = L1_2.RogueRandomEventType
    L1_2 = L1_2.Common
    return L1_2
  end
end
L1_1._get_rogue_random_event_type = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.random_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_finish_callback
  L3_2 = A0_2._on_random_process_finished
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_talk
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_event_bg
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_top_bar
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_extra_panel_status
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.random_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.random_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._handbook_event_id
  L1_2(L2_2, L3_2)
end
L1_1._perform_random_process = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_top_bar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = "RogueSelectBuffPage"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_talk
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_play_sound_effect
  L1_2(L2_2)
end
L1_1._setup_normal_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L2_2 = L1_2
  L1_2 = L1_2.GetCurSubMode
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueSubMode
  L2_2 = L2_2.ChessRogue
  if L1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.game_mode_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_RogueDLC_MainStory"
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.RogueSubMode
    L2_2 = L2_2.ChessRogueNous
    if L1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.game_mode_title
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_RogueNous_Common_SubTtitle"
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.game_mode_title
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_Rogue_Title"
      L2_2(L3_2, L4_2)
    end
  end
end
L1_1._setup_gamemode_title = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._image_id
  if L1_2 == 0 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.RogueTalkUtils
  L1_2 = L1_2.get_random_evt_sound_str
  L2_2 = A0_2._image_id
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AudioManager
  L3_2 = L2_2
  L2_2 = L2_2.PostEvent
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L1_1._try_play_sound_effect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_buff
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_top_bar
  L2_2 = L1_2
  L1_2 = L1_2.refresh_navigation
  L1_2(L2_2)
end
L1_1._on_buff_option_shown = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_talk
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_event_bg
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A0_2._rogue_dialog_type
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.RogueDialogueType
  L5_2 = L5_2.Event
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  A0_2._random_performance_finished = true
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeAfterSeconds
  L3_2 = 0.3
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._update_extra_panel_status
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_normal_view
  L2_2(L3_2)
end
L1_1._on_random_process_finished = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_close_talk_dialogue = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_buff
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_top_bar
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._on_option_talk_show_status_changed = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.show_rogue_buff_list_page
  L1_2()
end
L1_1._on_buff_btn = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_talk
    L5_2 = L4_2
    L4_2 = L4_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L1_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.OptionTriggeredWaitAdd
  L3_2 = "RogueDialog"
  L1_2(L2_2, L3_2)
end
L1_1._on_first_child_dialog_open = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.OptionTriggeredWaitRelease
  L3_2 = "RogueDialog"
  L1_2(L2_2, L3_2)
end
L1_1._on_first_child_dialog_close = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_view_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1._on_random_evt_enter_battle = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_event_bg
  L3_2 = L2_2
  L2_2 = L2_2.setup_simple_talk_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._update_random_evt_bg = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.left_graph_panel
  L3_2 = L2_2
  L2_2 = L2_2.is_disabled
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.left_graph_panel
  L3_2 = L2_2
  L2_2 = L2_2.update_bg
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._setup_npc_portrait = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.left_graph_panel
  L4_2 = L3_2
  L3_2 = L3_2.register_aeon_fade_finish_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L1_1.register_aeon_fade_finish_callback = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.create_nous_value_panel
  L2_2 = A0_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_nous_value_slot
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._nous_value_panel = L1_2
  L1_2 = A0_2._nous_value_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._nous_value_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_handle_update_notify
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L1_1._setup_nous_value_panel = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._try_update_nous_value_panel_status
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._update_extra_panel_status = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._random_event_type
  L3_2 = G
  L3_2 = L3_2.RogueEnum
  L3_2 = L3_2.RogueRandomEventType
  L3_2 = L3_2.Nous
  if L2_2 == L3_2 then
    L2_2 = A0_2._nous_value_panel
    if L2_2 then
      L2_2 = A0_2._nous_value_panel
      L3_2 = L2_2
      L2_2 = L2_2.safe_set_active
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L1_1._try_update_nous_value_panel_status = L5_1
return L1_1
