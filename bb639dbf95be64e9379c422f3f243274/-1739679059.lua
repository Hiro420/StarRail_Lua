local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.UIUtils.UITextUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.TalkDialogBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.TalkModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_GamePhaseManager
L2_1 = "UIText_SkipStory"
L3_1 = "Force_Story_End"
L4_1 = "TalkContainerFadeIn"
L5_1 = "TalkContainerFadeOut"
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "TalkDialog"
L8_1 = G
L8_1 = L8_1.UIController
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TalkDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  A0_2._allow_camera_zoom_rotation_by_mouse = true
  A0_2._tick_mask_timer = 0
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ELevelPerformanceType
  L1_2 = L1_2.C
  A0_2._performance_type = L1_2
  A0_2._panel_path_hint = nil
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._cache_dont_hide_panel_types
  L1_2(L2_2)
end
L6_1.ctor = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ELevelPerformanceType
    L2_2 = L2_2.C
  end
  A0_2._performance_type = L2_2
  L2_2 = A0_2._performance_type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ELevelPerformanceType
  L3_2 = L3_2.D
  if L2_2 ~= L3_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIAchievementToastClose
    L2_2(L3_2)
  end
end
L6_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.force_set_default_navigation_target
  L1_2(L2_2)
end
L6_1._on_got_focus = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L6_1._on_enter_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_option_talk
  if L1_2 ~= nil then
    L1_2 = A0_2._panel_option_talk
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
end
L6_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L6_1._init_ui_navigation = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.shield_pause
  L1_2()
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_or_ps_or_mobile_gamepad_mode
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.MonoInControlCameraRotation
    L1_2 = L1_2.Get
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L1_2(L2_2)
  end
  L1_2 = A0_2._performance_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ELevelPerformanceType
  L2_2 = L2_2.A
  if L1_2 ~= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.create_short_cut_hint_panel
    L3_2 = 6
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_value_change
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_auto
  L4_2 = A0_2._on_btn_auto
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_skip
  L4_2 = A0_2._on_btn_skip
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_hide
  L4_2 = A0_2._on_btn_hide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_undo_hide
  L4_2 = A0_2._on_btn_undo_hide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_history
  L4_2 = A0_2._on_btn_history
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_func
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_left_func
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._clear_view
  L3_2 = nil
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.Notify
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TalkBegin
  L1_2(L2_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.CloseTalkDialogue
  L4_2 = L6_1._on_ui_close_talk_dialogue
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ClearTalkDialog
  L4_2 = L6_1._clear_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SetupSkipStory
  L4_2 = L6_1._on_setup_skip_story
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SetupAutoStory
  L4_2 = L6_1._on_setup_auto_story
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SetupHideStory
  L4_2 = L6_1._on_setup_hide_story
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SetTalkFunction
  L4_2 = L6_1._on_set_talk_function
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowTalkImage
  L4_2 = L6_1._on_show_talk_image
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ClearTalkImage
  L4_2 = L6_1._on_clear_talk_image
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowTalkFigure
  L4_2 = L6_1._on_show_talk_figure
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ClearTalkFigure
  L4_2 = L6_1._on_clear_talk_figure
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowTalkVideo
  L4_2 = L6_1._on_show_talk_video
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TalkNotUseBackground
  L4_2 = L6_1._on_talk_not_use_background
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ClearTalkBackground
  L4_2 = L6_1._on_clear_talk_background
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChangeTalkDialogMode
  L4_2 = L6_1._on_change_talk_mode
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlaySimpleTalk
  L4_2 = L6_1._on_ui_play_simple_talk
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SetTalkDialogBlackMask
  L4_2 = L6_1._on_ui_set_black_mask
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayMultiVoiceTalk
  L4_2 = L6_1._on_ui_play_multi_voice_talk
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowCutsceneCaption
  L4_2 = L6_1._on_ui_show_cutscene_caption
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideCutsceneCaption
  L4_2 = L6_1._on_ui_hide_cutscene_caption
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AutoFinishTalk
  L4_2 = L6_1._on_auto_finish_talk
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TalkSetInteractable
  L4_2 = L6_1._on_simple_talk_set_interactable
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TalkShowOption
  L4_2 = L6_1._on_ui_show_talk_option
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ClearTalkOption
  L4_2 = L6_1._on_clear_talk_option
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UITextLanguageChange
  L4_2 = L6_1._on_language_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TalkHistoryCreated
  L4_2 = L6_1._on_talk_history_created
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TalkHistoryCleared
  L4_2 = L6_1._on_talk_history_cleared
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PausePerformanceTalkUI
  L4_2 = L6_1._on_pause_performance
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowTalkDebateUI
  L4_2 = L6_1._on_show_talk_debate
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TalkDebateUIControl
  L4_2 = L6_1._on_talk_debate_ui_control
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DebateCountChanged
  L4_2 = L6_1._on_debate_count_changed
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._add_handlers = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.recover_pause
  L1_2()
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.Notify
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TalkEnd
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.Notify
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIResetCameraRotation
  L1_2(L2_2)
end
L6_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_auto_play
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.Settings
  L3_2 = L3_2.Other
  L3_2 = L3_2.IsTalkDefaultAuto
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_view_hide
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_func_btn
  L1_2(L2_2)
end
L6_1._init_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_right_func
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_left_func
  L1_2(L2_2)
end
L6_1._init_func_btn = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_skip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_hide
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._performance_type
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ELevelPerformanceType
  L4_2 = L4_2.A
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_auto
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._performance_type
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ELevelPerformanceType
  L4_2 = L4_2.A
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._check_btn_bg_active
  L1_2(L2_2)
end
L6_1._refresh_right_func = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_history
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._performance_type
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ELevelPerformanceType
  L4_2 = L4_2.A
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._check_btn_bg_active
  L1_2(L2_2)
end
L6_1._refresh_left_func = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_left_func
  L1_2(L2_2)
end
L6_1._on_talk_history_created = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_left_func
  L1_2(L2_2)
end
L6_1._on_talk_history_cleared = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_view
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ShowTalkUIFinish
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._clear_input_data
  L1_2(L2_2)
end
L6_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.UtilEngineWrap
    L2_2 = L2_2.IsCsType
    L3_2 = L1_2
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.AdventurePhase
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = L1_2.InputController
      L3_2 = L2_2
      L2_2 = L2_2.ClearInputData
      L2_2(L3_2)
    end
  end
end
L6_1._clear_input_data = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = A1_2 == nil
  L3_2 = A0_2._panel_simple_talk
  if L3_2 ~= nil then
    L3_2 = A0_2._panel_simple_talk
    L4_2 = L3_2
    L3_2 = L3_2.setup_action_enabled
    L5_2 = true
    L3_2(L4_2, L5_2)
    if not L2_2 then
      L3_2 = A0_2._dont_hide_simpletalk_type
      L3_2 = A1_2 & L3_2
      if L3_2 ~= 0 then
        goto lbl_27
      end
    end
    L3_2 = A0_2._panel_simple_talk
    L4_2 = L3_2
    L3_2 = L3_2.stop_talk
    L5_2 = true
    L3_2(L4_2, L5_2)
    goto lbl_37
    ::lbl_27::
    L3_2 = A0_2._panel_simple_talk
    L4_2 = L3_2
    L3_2 = L3_2.stop_talk
    L5_2 = false
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_simple_talk
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  ::lbl_37::
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_cutscene_talk
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_cutscene_talk
  L4_2 = L3_2
  L3_2 = L3_2.clear_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._clear_optiontalk
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_mission_talk
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = false
  L3_2(L4_2, L5_2)
  if not L2_2 then
    L3_2 = A0_2._dont_hide_bgimage_type
    L3_2 = A1_2 & L3_2
    if L3_2 ~= 0 then
      goto lbl_61
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._clear_background
  L3_2(L4_2)
  ::lbl_61::
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_prefab
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = false
  L3_2(L4_2, L5_2)
  if not L2_2 then
    L3_2 = A0_2._dont_hide_blackmask_type
    L3_2 = A1_2 & L3_2
    if L3_2 ~= 0 then
      goto lbl_77
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.blackMask
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  ::lbl_77::
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_debate
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L6_1._clear_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._panel_option_talk
  if L1_2 ~= nil then
    L1_2 = A0_2._panel_option_talk
    L2_2 = L1_2
    L1_2 = L1_2.clear_view
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.clear_cur_selected_object
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_option_talk
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L6_1._clear_optiontalk = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._panel_background
  if L1_2 ~= nil then
    L1_2 = A0_2._panel_background
    L2_2 = L1_2
    L1_2 = L1_2.clear_view
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_background
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._panel_figure
  if L1_2 ~= nil then
    L1_2 = A0_2._panel_figure
    L2_2 = L1_2
    L1_2 = L1_2.clear_view
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_figure
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._panel_bg_video
  if L1_2 ~= nil then
    L1_2 = A0_2._panel_bg_video
    L2_2 = L1_2
    L1_2 = L1_2.clear_view
    L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bg_video
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L6_1._clear_background = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._panel_simple_talk
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.SimpleTalkPanel
    L4_2 = G
    L4_2 = L4_2.SimpleTalkPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._panel_simple_talk = L1_2
    L1_2 = A0_2._panel_simple_talk
    L2_2 = L1_2
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_simple_talk
    L1_2(L2_2, L3_2)
  end
end
L6_1._try_create_simple_talk_panel = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPGTools
  L1_2 = L1_2.Timeline
  L1_2 = L1_2.DontHidePanelType
  L1_2 = L1_2.BGImage
  L2_2 = L1_2
  L1_2 = L1_2.GetHashCode
  L1_2 = L1_2(L2_2)
  A0_2._dont_hide_bgimage_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPGTools
  L1_2 = L1_2.Timeline
  L1_2 = L1_2.DontHidePanelType
  L1_2 = L1_2.SimpleTalk
  L2_2 = L1_2
  L1_2 = L1_2.GetHashCode
  L1_2 = L1_2(L2_2)
  A0_2._dont_hide_simpletalk_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPGTools
  L1_2 = L1_2.Timeline
  L1_2 = L1_2.DontHidePanelType
  L1_2 = L1_2.BlackMask
  L2_2 = L1_2
  L1_2 = L1_2.GetHashCode
  L1_2 = L1_2(L2_2)
  A0_2._dont_hide_blackmask_type = L1_2
end
L6_1._cache_dont_hide_panel_types = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._panel_simple_talk
  if L2_2 ~= nil then
    L2_2 = A0_2._panel_simple_talk
    L3_2 = L2_2
    L2_2 = L2_2.set_bg_img
    L4_2 = not A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.blackMask
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L6_1._on_ui_set_black_mask = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._performance_type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ELevelPerformanceType
  L3_2 = L3_2.A
  if L2_2 == L3_2 then
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_create_simple_talk_panel
    L2_2(L3_2)
    L2_2 = A0_2._panel_simple_talk
    L3_2 = L2_2
    L2_2 = L2_2.setup_action_enabled
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._panel_simple_talk
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A1_2
    L5_2 = A1_2.BlackMask
    L5_2 = not L5_2
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.blackMask
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2.BlackMask
    L2_2(L3_2, L4_2)
  end
end
L6_1._on_ui_play_simple_talk = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._performance_type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ELevelPerformanceType
  L3_2 = L3_2.A
  if L2_2 == L3_2 then
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_create_simple_talk_panel
    L2_2(L3_2)
    L2_2 = A0_2._panel_simple_talk
    L3_2 = L2_2
    L2_2 = L2_2.setup_action_enabled
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._panel_simple_talk
    L3_2 = L2_2
    L2_2 = L2_2.setup_view_multi_voice_talk
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L6_1._on_ui_play_multi_voice_talk = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_cutscene_talk
  L3_2 = L2_2
  L2_2 = L2_2.show_cutscene_caption
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L6_1._on_ui_show_cutscene_caption = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_cutscene_talk
  L2_2 = L1_2
  L1_2 = L1_2.hide_cutscene_caption
  L1_2(L2_2)
end
L6_1._on_ui_hide_cutscene_caption = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_auto_play
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L6_1._on_language_change = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._try_create_simple_talk_panel
  L2_2(L3_2)
  L2_2 = A0_2._panel_simple_talk
  L3_2 = L2_2
  L2_2 = L2_2.setup_action_enabled
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._panel_option_talk
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.OptionTalkPanel
    L5_2 = G
    L5_2 = L5_2.OptionTalkPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._panel_option_talk = L2_2
    L2_2 = A0_2._panel_option_talk
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_option_talk
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._panel_option_talk
    L3_2 = L2_2
    L2_2 = L2_2.register_chose_callback
    L4_2 = A0_2._on_option_chose
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._panel_option_talk
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.force_set_first_navigation_target
  L2_2(L3_2)
end
L6_1._on_ui_show_talk_option = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_optiontalk
  L1_2(L2_2)
end
L6_1._on_clear_talk_option = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_view
  L3_2 = A0_2._dont_hide_simpletalk_type
  L4_2 = A0_2._dont_hide_bgimage_type
  L3_2 = L3_2 | L4_2
  L4_2 = A0_2._dont_hide_blackmask_type
  L3_2 = L3_2 | L4_2
  L1_2(L2_2, L3_2)
end
L6_1._on_option_chose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_view
  L3_2 = nil
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_skip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L6_1._on_ui_close_talk_dialogue = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_auto
  L2_2.IsOn = A1_2
end
L6_1._set_auto_play = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_auto
  L1_2 = L1_2.IsOn
  return L1_2
end
L6_1._is_auto_play = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_func
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_left_func
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L6_1._on_set_talk_function = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.Settings
  L2_2 = L2_2.Other
  L2_2.IsTalkDefaultAuto = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._SetAutoState
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L6_1._on_btn_auto = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._try_create_simple_talk_panel
  L2_2(L3_2)
  L2_2 = A0_2._panel_simple_talk
  L3_2 = L2_2
  L2_2 = L2_2.set_auto
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L6_1._SetAutoState = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_skip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._check_btn_bg_active
  L2_2(L3_2)
end
L6_1._on_setup_skip_story = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_auto
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._check_btn_bg_active
  L2_2(L3_2)
end
L6_1._on_setup_auto_story = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_hide
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._check_btn_bg_active
  L2_2(L3_2)
end
L6_1._on_setup_hide_story = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_debate
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._panel_talk_debate
    if L2_2 == nil then
      L3_2 = A0_2
      L2_2 = A0_2._create_talk_debate
      L2_2 = L2_2(L3_2)
      A0_2._panel_talk_debate = L2_2
    end
  end
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._SetAutoState
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  if A1_2 then
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 6
    L2_2(L3_2, L4_2)
  end
end
L6_1._on_show_talk_debate = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._panel_talk_debate
  if L2_2 ~= nil then
    L2_2 = A0_2._panel_talk_debate
    L3_2 = L2_2
    L2_2 = L2_2.on_talk_debate_ui_control
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L6_1._on_talk_debate_ui_control = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._panel_talk_debate
  if L2_2 ~= nil then
    L2_2 = A0_2._panel_talk_debate
    L3_2 = L2_2
    L2_2 = L2_2.on_debate_count_changed
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L6_1._on_debate_count_changed = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.TalkDebatePanel
  L4_2 = G
  L4_2 = L4_2.TalkDebatePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.async_bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_debate
  L2_2(L3_2, L4_2)
  return L1_2
end
L6_1._create_talk_debate = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Dialogue.DialogueSkipDialog"
  L3_2 = L2_1
  L4_2 = nil
  L5_2 = nil
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if A0_3 then
      L1_3 = A0_2._panel_simple_talk
      if L1_3 ~= nil then
        L1_3 = A0_2._panel_simple_talk
        L2_3 = L1_3
        L1_3 = L1_3.on_skip_talk
        L1_3(L2_3)
      end
      L1_3 = L1_1
      L2_3 = L1_3
      L1_3 = L1_3.GetCurrentPhase
      L1_3 = L1_3(L2_3)
      L2_3 = L1_3
      L1_3 = L1_3.GetMainWorld
      L1_3 = L1_3(L2_3)
      L2_3 = CS
      L2_3 = L2_3.RPG
      L2_3 = L2_3.GameCore
      L2_3 = L2_3.GameWorldStatic
      L2_3 = L2_3.TriggerCustomStringEvent
      L3_3 = L1_3
      L4_3 = nil
      L5_3 = L3_1
      L2_3(L3_3, L4_3, L5_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L6_1._on_btn_skip = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_view_hide
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_auto_play
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L6_1._on_btn_hide = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_view_hide
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_option_talk
  if L1_2 ~= nil then
    L1_2 = A0_2._panel_option_talk
    L2_2 = L1_2
    L1_2 = L1_2.replay_fade_in
    L1_2(L2_2)
  end
end
L6_1._on_btn_undo_hide = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._open_history
  L1_2(L2_2)
end
L6_1._on_btn_history = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Talk.TalkHistory.TalkHistoryPage"
  L1_2 = L1_2(L2_2)
end
L6_1._open_history = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._panel_simple_talk
  if L2_2 ~= nil then
    L2_2 = A0_2._panel_simple_talk
    L3_2 = L2_2
    L2_2 = L2_2.on_pause_performance
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L6_1._on_pause_performance = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_simple_talk
  if L1_2 ~= nil then
    L1_2 = A0_2._panel_simple_talk
    L2_2 = L1_2
    L1_2 = L1_2.get_playing_voice_id
    return L1_2(L2_2)
  end
  L1_2 = 0
  return L1_2
end
L6_1._get_playing_voice_id = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_simple_talk
  if L1_2 ~= nil then
    L1_2 = A0_2._panel_simple_talk
    L2_2 = L1_2
    L1_2 = L1_2.get_playing_voice_instance_id
    return L1_2(L2_2)
  end
  L1_2 = 0
  return L1_2
end
L6_1._get_playing_voice_instance_id = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_to_hide
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_undo_hide
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L6_1._setup_view_hide = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._panel_background
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.ImageDisplayPanel
    L5_2 = G
    L5_2 = L5_2.ImageDisplayPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._panel_background = L2_2
    L2_2 = A0_2._panel_background
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_background
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._panel_background
  L3_2 = L2_2
  L2_2 = L2_2.on_show_talk_image
  L4_2 = A1_2.ImagePath
  L5_2 = A1_2.FadeTime
  L6_2 = A1_2.IsFadeBg
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L6_1._on_show_talk_image = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._panel_background
  if L2_2 ~= nil then
    L2_2 = A0_2._panel_background
    L3_2 = L2_2
    L2_2 = L2_2.on_clear_talk_image
    L4_2 = A1_2.FadeTime
    L5_2 = A1_2.IsFadeBg
    L2_2(L3_2, L4_2, L5_2)
  end
end
L6_1._on_clear_talk_image = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._panel_figure
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.FigureDisplayPanel
    L5_2 = G
    L5_2 = L5_2.FigureDisplayPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._panel_figure = L2_2
    L2_2 = A0_2._panel_figure
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_figure
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._panel_figure
  L3_2 = L2_2
  L2_2 = L2_2.on_show
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L6_1._on_show_talk_figure = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._panel_figure
  if L2_2 ~= nil then
    L2_2 = A0_2._panel_figure
    L3_2 = L2_2
    L2_2 = L2_2.on_clear
    L2_2(L3_2)
  end
end
L6_1._on_clear_talk_figure = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._panel_bg_video
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.TalkVideoPanel
    L5_2 = G
    L5_2 = L5_2.TalkVideoPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._panel_bg_video = L2_2
    L2_2 = A0_2._panel_bg_video
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_bg_video
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._panel_bg_video
  L3_2 = L2_2
  L2_2 = L2_2._on_show_talk_video
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L6_1._on_show_talk_video = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._panel_background
  if L2_2 ~= nil then
    L2_2 = A0_2._panel_background
    L3_2 = L2_2
    L2_2 = L2_2.exit_background
    L2_2(L3_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_background
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._panel_bg_video
  if L2_2 ~= nil then
    L2_2 = A0_2._panel_bg_video
    L3_2 = L2_2
    L2_2 = L2_2.exit_background
    L2_2(L3_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_bg_video
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L6_1._on_talk_not_use_background = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._clear_background
  L2_2(L3_2)
end
L6_1._on_clear_talk_background = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._try_create_simple_talk_panel
  L2_2(L3_2)
  L2_2 = A0_2._panel_simple_talk
  L3_2 = L2_2
  L2_2 = L2_2.set_finish_talk_config
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L6_1._on_auto_finish_talk = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._panel_simple_talk
  if L2_2 ~= nil then
    L2_2 = A0_2._panel_simple_talk
    L3_2 = L2_2
    L2_2 = L2_2.set_interactable
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L6_1._on_simple_talk_set_interactable = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  A0_2._performance_type = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_hide
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._performance_type
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ELevelPerformanceType
  L5_2 = L5_2.A
  L4_2 = L4_2 ~= L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_auto
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._performance_type
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ELevelPerformanceType
  L5_2 = L5_2.A
  L4_2 = L4_2 ~= L5_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._check_btn_bg_active
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_left_func
  L2_2(L3_2)
end
L6_1._on_change_talk_mode = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_skip
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_auto
  L2_2 = L2_2.gameObject
  L2_2 = L2_2.activeSelf
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_hide
  L3_2 = L3_2.gameObject
  L3_2 = L3_2.activeSelf
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_bg
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L1_2 or L6_2
  L6_2 = L2_2 or L6_2
  if not L1_2 and not L2_2 then
    L6_2 = L3_2
  end
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_history
  L4_2 = L4_2.gameObject
  L4_2 = L4_2.activeSelf
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_left_func_bg
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L6_1._check_btn_bg_active = L7_1
return L6_1
