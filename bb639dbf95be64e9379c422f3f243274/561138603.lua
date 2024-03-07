local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.RogueNousStoryPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousSubStoryPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousStoryPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueNousStoryPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._is_save_by_click = false
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._focus_story_id = A1_2
  L2_2 = A0_2._focus_story_id
  L2_2 = L2_2 ~= nil
  A0_2._is_in_rogue = L2_2
  L2_2 = L1_1.ChessRogueDimensionData
  L2_2 = L2_2.NousStoryInfo
  L2_2 = L2_2.SubMissionDict
  L3_2 = A0_2._focus_story_id
  L2_2 = L2_2[L3_2]
  A0_2._focus_story_data = L2_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._init_transform_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_btn
  L4_2 = A0_2._on_story_reward_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueNousShowSurfaceItemPreview
  L4_2 = A0_2._update_reward_display_panel_show_status
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.ONPICCBOANC
  L4_2 = A0_2._on_quest_get_reward
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_content_move
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_btn
  L1_2 = L1_2.transform
  L1_2 = L1_2.parent
  L1_2 = L1_2.parent
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_in_rogue
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.co_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_in_rogue
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "RogueNousStoryUnlockReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reward_red_dot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = {}
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._main_gamepad_hint_panel = L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._reshow_reward_panel
  if L1_2 then
    A0_2._reshow_reward_panel = false
    L2_2 = A0_2
    L1_2 = A0_2._show_surface_preview
    L3_2 = A0_2._cur_surface_preview_data
    L3_2 = L3_2[1]
    L4_2 = A0_2._cur_surface_preview_data
    L4_2 = L4_2[2]
    L1_2(L2_2, L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_show_red_dot_hint
  L1_2(L2_2)
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_in_rogue
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_in_rogue_view
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_out_of_rogue_view
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_story_reward_progress
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_play_first_time_unlock_effect
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_show_red_dot_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_btn_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.start_main_mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.end_main_mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.sub_story_mgr
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_story_mgr
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_tf
  L1_2 = L1_2.localPosition
  L1_2 = L1_2.y
  A0_2._default_content_local_pos_y = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.title_tf
  L1_2 = L1_2.localPosition
  L1_2 = L1_2.y
  A0_2._default_title_local_pos = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIUtils
  L1_2 = L1_2.GetItemCornerWorldPosArray
  L2_2 = A0_2._binder
  L2_2 = L2_2.viewport_tf
  L1_2 = L1_2(L2_2)
  A0_2._viewport_world_corners = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.title_tf
  L1_2 = L1_2.rect
  L1_2 = L1_2.height
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_nous_value_slot
  L2_2 = L2_2.transform
  L2_2 = L2_2.rect
  L2_2 = L2_2.height
  L1_2 = L1_2 + L2_2
  A0_2._max_mask_height = L1_2
end
L0_1._init_transform_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_rogue_highlight_bg
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_sub_story_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_start_end_main_story_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.start_main_mission_part_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_main_story_panel
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.create_nous_value_panel
  L2_2 = A0_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_nous_value_slot
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._nous_value_panel = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_title_part_layout_element
  L1_2.minHeight = 120
  L2_2 = A0_2
  L1_2 = A0_2._try_setup_focus_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._move_title_to_top
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_in_rogue_mask
  L1_2(L2_2)
end
L0_1._setup_in_rogue_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.highlight_bg_roots
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = A0_2._focus_story_data
    L8_2 = L8_2.Layer
    L8_2 = L4_2 == L8_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.highlight_title_roots
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = A0_2._focus_story_data
    L8_2 = L8_2.Layer
    L8_2 = L4_2 == L8_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_in_rogue_highlight_bg = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_sub_story_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_start_end_main_story_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_main_story_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_move_to_panel_has_reward
  L1_2(L2_2)
end
L0_1._setup_out_of_rogue_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueDimensionData
  L1_2 = L1_2.NousStoryInfo
  L2_2 = L1_2.SubMissionList
  A0_2._sub_mission_list = L2_2
  L2_2 = nil
  L3_2 = A0_2._is_in_rogue
  if L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.ChessRogueModule
    L3_2 = L3_2.ChessRogueData
    L3_2 = L3_2.StoryInfo
    L2_2 = L3_2.RecommendedSubStoryIDs
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.sub_story_mgr
  L4_2 = L3_2
  L3_2 = L3_2.init
  L5_2 = A0_2._sub_mission_list
  L6_2 = L2_2
  L7_2 = A0_2._is_in_rogue
  L8_2 = A0_2._binder
  L8_2 = L8_2.deliverer
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.sub_story_mgr
  L4_2 = L3_2
  L3_2 = L3_2.refresh_sub_story
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.sub_story_mgr
  L4_2 = L3_2
  L3_2 = L3_2.register_reward_panel_click_callback
  L5_2 = A0_2._on_reward_btn_clicked
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_sub_story_panels = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueDimensionData
  L1_2 = L1_2.NousStoryInfo
  L2_2 = A0_2._binder
  L2_2 = L2_2.start_main_mission_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = G
  L4_2 = L4_2.RogueNousUtils
  L4_2 = L4_2.construct_rogue_nous_main_story_data
  L6_2 = L1_2
  L5_2 = L1_2.GetStartMainMissionData
  L5_2, L6_2 = L5_2(L6_2)
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.end_main_mission_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = G
  L4_2 = L4_2.RogueNousUtils
  L4_2 = L4_2.construct_rogue_nous_main_story_data
  L6_2 = L1_2
  L5_2 = L1_2.GetEndMainMissionData
  L5_2, L6_2 = L5_2(L6_2)
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.start_main_mission_panel
  L3_2 = L2_2
  L2_2 = L2_2.register_click_callback
  L4_2 = A0_2._on_reward_btn_clicked
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.end_main_mission_panel
  L3_2 = L2_2
  L2_2 = L2_2.register_click_callback
  L4_2 = A0_2._on_reward_btn_clicked
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_start_end_main_story_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueDimensionData
  L1_2 = L1_2.NousStoryInfo
  L3_2 = L1_2
  L2_2 = L1_2.GetGeneralMainMissions
  L2_2 = L2_2(L3_2)
  A0_2._main_mission_list = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.main_story_mgr
  L3_2 = L2_2
  L2_2 = L2_2.init
  L4_2 = A0_2._main_mission_list
  L5_2 = A0_2._is_in_rogue
  L6_2 = A0_2._binder
  L6_2 = L6_2.deliverer
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.main_story_mgr
  L3_2 = L2_2
  L2_2 = L2_2.refresh_main_story
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.main_story_mgr
  L3_2 = L2_2
  L2_2 = L2_2.register_click_callback
  L4_2 = A0_2._on_reward_btn_clicked
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_main_story_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.get_story_reward_data
  L1_2 = L1_2()
  A0_2._story_reward_data = L1_2
  L1_2 = tostring
  L2_2 = A0_2._story_reward_data
  L2_2 = L2_2.FinishCount
  L1_2 = L1_2(L2_2)
  L2_2 = "/"
  L3_2 = tostring
  L4_2 = A0_2._story_reward_data
  L4_2 = L4_2.NormalQuestData
  L4_2 = #L4_2
  L3_2 = L3_2(L4_2)
  L1_2 = L1_2 .. L2_2 .. L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_progress
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_story_reward_progress = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._focus_story_id
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_auto_focus_target
  L1_2 = L1_2(L2_2)
  A0_2._target_panel = L1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._auto_focus
    L2_3 = A0_2._target_panel
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._show_focus_view
    L2_3 = A0_2._target_panel
    L0_3(L1_3, L2_3)
  end
  L2_2(L3_2)
end
L0_1._try_setup_focus_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_first_panel_has_can_take_reward
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  A0_2._target_panel = L1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._move_to
    L2_3 = L1_2
    L0_3(L1_3, L2_3)
  end
  L2_2(L3_2)
end
L0_1._try_move_to_panel_has_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.start_main_mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_story_data
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.get_native
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.QuestStatus
  L2_2 = CS
  L2_2 = L2_2.BLHLCHNAJKK
  L2_2 = L2_2.CDJHHIHBNMN
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.start_main_mission_panel
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.sub_story_mgr
  L2_2 = L1_2
  L1_2 = L1_2.get_panels
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.get_story_data
    L8_2 = L8_2(L9_2)
    L9_2 = L8_2
    L8_2 = L8_2.get_native
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2.QuestStatus
    L9_2 = CS
    L9_2 = L9_2.BLHLCHNAJKK
    L9_2 = L9_2.CDJHHIHBNMN
    if L8_2 == L9_2 then
      if L2_2 ~= nil then
        L9_2 = L2_2
        L8_2 = L2_2.get_tf
        L8_2 = L8_2(L9_2)
        L8_2 = L8_2.localPosition
        L8_2 = L8_2.y
        L10_2 = L7_2
        L9_2 = L7_2.get_tf
        L9_2 = L9_2(L10_2)
        L9_2 = L9_2.localPosition
        L9_2 = L9_2.y
        if not (L8_2 < L9_2) then
          goto lbl_48
        end
      end
      L2_2 = L7_2
    end
    ::lbl_48::
  end
  if L2_2 then
    return L2_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.main_story_mgr
  L4_2 = L3_2
  L3_2 = L3_2.get_panels
  L3_2 = L3_2(L4_2)
  L1_2 = L3_2
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.get_story_data
    L8_2 = L8_2(L9_2)
    L9_2 = L8_2
    L8_2 = L8_2.get_native
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2.QuestStatus
    L9_2 = CS
    L9_2 = L9_2.BLHLCHNAJKK
    L9_2 = L9_2.CDJHHIHBNMN
    if L8_2 == L9_2 then
      if L2_2 ~= nil then
        L9_2 = L2_2
        L8_2 = L2_2.get_tf
        L8_2 = L8_2(L9_2)
        L8_2 = L8_2.localPosition
        L8_2 = L8_2.y
        L10_2 = L7_2
        L9_2 = L7_2.get_tf
        L9_2 = L9_2(L10_2)
        L9_2 = L9_2.localPosition
        L9_2 = L9_2.y
        if not (L8_2 < L9_2) then
          goto lbl_85
        end
      end
      L2_2 = L7_2
    end
    ::lbl_85::
  end
  if L2_2 then
    return L2_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.end_main_mission_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_story_data
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.get_native
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.QuestStatus
  L4_2 = CS
  L4_2 = L4_2.BLHLCHNAJKK
  L4_2 = L4_2.CDJHHIHBNMN
  if L3_2 == L4_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.end_main_mission_panel
    return L3_2
  end
end
L0_1._get_first_panel_has_can_take_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_rect_mask_2d
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector4
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L6_2 = A0_2._max_mask_height
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2.padding = L2_2
end
L0_1._show_in_rogue_mask = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.sub_story_mgr
  L3_2 = L2_2
  L2_2 = L2_2.get_panels
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    if L7_2 then
      L9_2 = L7_2
      L8_2 = L7_2.get_story_data
      L8_2 = L8_2(L9_2)
      L9_2 = L8_2
      L8_2 = L8_2.get_native
      L8_2 = L8_2(L9_2)
      L8_2 = L8_2.SubStoryID
      L9_2 = A0_2._focus_story_id
      if L8_2 == L9_2 then
        L1_2 = L7_2
        break
      end
    end
  end
  return L1_2
end
L0_1._get_auto_focus_target = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._move_to
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.sub_story_mgr
  L3_2 = L2_2
  L2_2 = L2_2.setup_focus_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._auto_focus = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._get_relative_position
  L5_2 = A1_2
  L4_2 = A1_2.get_tf
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 < 0 then
    L2_2 = 0
  end
  if 1 < L2_2 then
    L2_2 = 1
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect
  L4_2 = 1 - L2_2
  L3_2.verticalNormalizedPosition = L4_2
end
L0_1._move_to = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.sub_story_mgr
  L3_2 = L2_2
  L2_2 = L2_2.setup_focus_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.main_story_mgr
  L3_2 = L2_2
  L2_2 = L2_2.setup_focus_view
  L5_2 = A1_2
  L4_2 = A1_2.get_story_data
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.get_native
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.Layer
  L2_2(L3_2, L4_2)
end
L0_1._show_focus_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.GetItemCornerWorldPosArray
  L3_2 = A0_2._binder
  L3_2 = L3_2.content_tf
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.abs
  L4_2 = L2_2[0]
  L4_2 = L4_2.y
  L5_2 = L2_2[1]
  L5_2 = L5_2.y
  L4_2 = L4_2 - L5_2
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = A0_2._viewport_world_corners
  L5_2 = L5_2[0]
  L5_2 = L5_2.y
  L6_2 = A0_2._viewport_world_corners
  L6_2 = L6_2[1]
  L6_2 = L6_2.y
  L5_2 = L5_2 - L6_2
  L4_2 = L4_2(L5_2)
  L5_2 = L3_2 - L4_2
  L6_2 = math
  L6_2 = L6_2.abs
  L7_2 = A1_2.position
  L7_2 = L7_2.y
  L8_2 = L2_2[1]
  L8_2 = L8_2.y
  L7_2 = L7_2 - L8_2
  L6_2 = L6_2(L7_2)
  L7_2 = L4_2 / 2
  L6_2 = L6_2 - L7_2
  if L6_2 < 0 then
    L6_2 = 0
  end
  if L5_2 == 0 then
    L7_2 = 1
    return L7_2
  end
  L7_2 = math
  L7_2 = L7_2.abs
  L8_2 = L6_2 / L5_2
  L7_2 = L7_2(L8_2)
  if L7_2 < 0 then
    L7_2 = 0
  end
  if 1 < L7_2 then
    L7_2 = 1
  end
  return L7_2
end
L0_1._get_relative_position = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_play_first_time_unlock_effect
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_show_red_dot_hint
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.start_main_mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.trigger_hide_effect_when_content_move
  L3_2 = A0_2._viewport_world_corners
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_in_rogue
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._update_title_pos
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_mask_2D
  L1_2(L2_2)
end
L0_1._on_content_move = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._is_in_rogue
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_tf
  L1_2 = L1_2.localPosition
  L1_2 = L1_2.y
  L2_2 = A0_2._default_content_local_pos_y
  L1_2 = L1_2 - L2_2
  L2_2 = math
  L2_2 = L2_2.abs
  L3_2 = A0_2._binder
  L3_2 = L3_2.content_title_part
  L3_2 = L3_2.transform
  L3_2 = L3_2.rect
  L3_2 = L3_2.height
  L2_2 = L2_2(L3_2)
  if L1_2 > L2_2 then
    L2_2 = math
    L2_2 = L2_2.abs
    L3_2 = A0_2._binder
    L3_2 = L3_2.content_title_part
    L3_2 = L3_2.transform
    L3_2 = L3_2.rect
    L3_2 = L3_2.height
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
    L2_2 = A0_2._title_world_corners
    if L2_2 == nil then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.UIUtils
      L2_2 = L2_2.GetItemCornerWorldPosArray
      L3_2 = A0_2._binder
      L3_2 = L3_2.title_tf
      L2_2 = L2_2(L3_2)
      A0_2._title_world_corners = L2_2
    end
  end
  if L1_2 < 0 then
    L1_2 = 0
  end
  L2_2 = A0_2._default_title_local_pos
  L2_2 = L2_2 + L1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.title_tf
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector3
  L5_2 = A0_2._binder
  L5_2 = L5_2.title_tf
  L5_2 = L5_2.localPosition
  L5_2 = L5_2.x
  L6_2 = L2_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.title_tf
  L7_2 = L7_2.localPosition
  L7_2 = L7_2.z
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.localPosition = L4_2
end
L0_1._update_title_pos = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_nous_value_slot
  L1_2 = L1_2.transform
  L1_2 = L1_2.localPosition
  L1_2 = L1_2.y
  L2_2 = A0_2._binder
  L2_2 = L2_2.title_tf
  L2_2 = L2_2.rect
  L2_2 = L2_2.height
  L1_2 = L1_2 - L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.deliverer
  L3_2 = L2_2
  L2_2 = L2_2.TryGetValue
  L4_2 = "InGameTitleOffset"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2 - L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.title_tf
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = A0_2._binder
  L4_2 = L4_2.title_tf
  L4_2 = L4_2.localPosition
  L4_2 = L4_2.x
  L5_2 = L1_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.title_tf
  L6_2 = L6_2.localPosition
  L6_2 = L6_2.z
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.localPosition = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.top_red_dot_hint_root
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = A0_2._binder
  L4_2 = L4_2.top_red_dot_hint_root
  L4_2 = L4_2.localPosition
  L4_2 = L4_2.x
  L5_2 = A0_2._binder
  L5_2 = L5_2.top_red_dot_hint_root
  L5_2 = L5_2.localPosition
  L5_2 = L5_2.y
  L6_2 = A0_2._binder
  L6_2 = L6_2.title_tf
  L6_2 = L6_2.rect
  L6_2 = L6_2.height
  L5_2 = L5_2 - L6_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.top_red_dot_hint_root
  L6_2 = L6_2.localPosition
  L6_2 = L6_2.z
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.localPosition = L3_2
end
L0_1._move_title_to_top = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.sub_story_mgr
  L2_2 = L1_2
  L1_2 = L1_2.update_by_content_move
  L3_2 = A0_2._viewport_world_corners
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_story_mgr
  L2_2 = L1_2
  L1_2 = L1_2.update_by_content_move
  L3_2 = A0_2._viewport_world_corners
  L4_2 = A0_2._title_world_corners
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.start_main_mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.try_trigger_effect_when_content_move
  L3_2 = A0_2._viewport_world_corners
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.end_main_mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.try_trigger_effect_when_content_move
  L3_2 = A0_2._viewport_world_corners
  L1_2(L2_2, L3_2)
end
L0_1._try_play_first_time_unlock_effect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = false
  L2_2 = false
  L3_2 = A0_2._binder
  L3_2 = L3_2.sub_story_mgr
  L4_2 = L3_2
  L3_2 = L3_2.get_panels
  L3_2 = L3_2(L4_2)
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.has_reward
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L10_2 = L8_2
      L9_2 = L8_2.is_story_panel_higher_then_viewport
      L11_2 = A0_2._viewport_world_corners
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        L1_2 = true
      end
    end
    L10_2 = L8_2
    L9_2 = L8_2.has_reward
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L10_2 = L8_2
      L9_2 = L8_2.is_story_panel_lower_then_viewport
      L11_2 = A0_2._viewport_world_corners
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        L2_2 = true
      end
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.main_story_mgr
  L5_2 = L4_2
  L4_2 = L4_2.get_panels
  L4_2 = L4_2(L5_2)
  L3_2 = L4_2
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.has_reward
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L10_2 = L8_2
      L9_2 = L8_2.is_story_panel_higher_then_viewport
      L11_2 = A0_2._viewport_world_corners
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        L1_2 = true
      end
    end
    L10_2 = L8_2
    L9_2 = L8_2.has_reward
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L10_2 = L8_2
      L9_2 = L8_2.is_story_panel_lower_then_viewport
      L11_2 = A0_2._viewport_world_corners
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        L2_2 = true
      end
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.top_red_dot_hint_root
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.bottom_red_dot_hint_root
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L0_1._try_show_red_dot_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._max_title_move_length
  if L1_2 == nil then
    L1_2 = math
    L1_2 = L1_2.abs
    L2_2 = A0_2._binder
    L2_2 = L2_2.content_title_part
    L2_2 = L2_2.transform
    L2_2 = L2_2.rect
    L2_2 = L2_2.height
    L1_2 = L1_2(L2_2)
    A0_2._max_title_move_length = L1_2
  end
  L1_2 = math
  L1_2 = L1_2.abs
  L2_2 = A0_2._binder
  L2_2 = L2_2.title_tf
  L2_2 = L2_2.localPosition
  L2_2 = L2_2.y
  L3_2 = A0_2._default_title_local_pos
  L2_2 = L2_2 - L3_2
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._max_title_move_length
  L1_2 = L1_2 / L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect_rect_mask_2d
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector4
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = A0_2._binder
  L7_2 = L7_2.title_tf
  L7_2 = L7_2.rect
  L7_2 = L7_2.height
  L7_2 = L7_2 * L1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2.padding = L3_2
end
L0_1._update_mask_2D = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._update_reward_display_panel_show_status
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueNous.Reward.RogueNousStoryRewardDialog"
  L3_2 = A0_2._story_reward_data
  L1_2(L2_2, L3_2)
end
L0_1._on_story_reward_btn_clicked = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "TakeQuestRewardScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.SuccQuestIdList
    if L3_2 ~= nil then
      L3_2 = L2_2.SuccQuestIdList
      L3_2 = L3_2.Length
      if L3_2 ~= 0 then
        goto lbl_24
      end
    end
  end
  do return end
  ::lbl_24::
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ItemFactory
  L3_2 = L3_2.GetRewardItemDisplayListByQuestRsp
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_async_show
  L5_2 = "Ui.Common.RewardDialog"
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._on_quest_get_reward = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.QuestStatus
  L4_2 = CS
  L4_2 = L4_2.BLHLCHNAJKK
  L4_2 = L4_2.CDJHHIHBNMN
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._take_reward
    L3_2(L4_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._show_surface_preview
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._on_reward_btn_clicked = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A2_2
  L3_2 = A2_2.get_root_world_pos
  L3_2 = L3_2(L4_2)
  L5_2 = A2_2
  L4_2 = A2_2.get_rect
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2.RewardID
  A0_2._cur_display_reward = L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.reward_display_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = A1_2.RewardID
  L8_2 = L3_2
  L9_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  A0_2._surface_preview_panel_active = true
  L5_2 = {}
  L5_2[1] = A1_2
  L5_2[2] = A2_2
  A0_2._cur_surface_preview_data = L5_2
  L5_2 = G
  L5_2 = L5_2.NotifyManager
  L5_2 = L5_2.notify
  L6_2 = G
  L6_2 = L6_2.CS
  L6_2 = L6_2.NotifyType
  L6_2 = L6_2.RogueNousShowSurfaceItemPreview
  L7_2 = true
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.update_gamepad_hint
  L7_2 = {}
  L8_2 = "ActionGroup_Switch"
  L7_2[1] = L8_2
  L5_2(L6_2, L7_2)
end
L0_1._show_surface_preview = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.TakeAllFinishedMissionReward
  L1_2()
end
L0_1._take_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_start_mission_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_end_mission_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_navigation_between_sub_and_main_stories
  L1_2(L2_2)
end
L0_1._init_btn_navigation = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A1_2.navigation
  L4_2 = A2_2.navigation
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Navigation
  L5_2 = L5_2.Mode
  L5_2 = L5_2.Explicit
  L3_2.mode = L5_2
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Navigation
  L5_2 = L5_2.Mode
  L5_2 = L5_2.Explicit
  L4_2.mode = L5_2
  L3_2.selectOnDown = A2_2
  L5_2 = A1_2.navigation
  L5_2 = L5_2.selectOnUp
  L3_2.selectOnUp = L5_2
  L5_2 = A1_2.navigation
  L5_2 = L5_2.selectOnRight
  L3_2.selectOnRight = L5_2
  L5_2 = A1_2.navigation
  L5_2 = L5_2.selectOnLeft
  L3_2.selectOnLeft = L5_2
  L4_2.selectOnUp = A1_2
  L5_2 = A2_2.navigation
  L5_2 = L5_2.selectOnDown
  L4_2.selectOnDown = L5_2
  L5_2 = A2_2.navigation
  L5_2 = L5_2.selectOnRight
  L4_2.selectOnRight = L5_2
  L5_2 = A2_2.navigation
  L5_2 = L5_2.selectOnLeft
  L4_2.selectOnLeft = L5_2
  A1_2.navigation = L3_2
  A2_2.navigation = L4_2
end
L0_1._set_vertical_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.sub_story_mgr
  L2_2 = L1_2
  L1_2 = L1_2.get_start_mission_navi_targets
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_vertical_navigation
  L4_2 = A0_2._binder
  L4_2 = L4_2.start_main_mission_panel
  L5_2 = L4_2
  L4_2 = L4_2.get_navigation_btn
  L4_2 = L4_2(L5_2)
  L5_2 = L1_2[3]
  L6_2 = L5_2
  L5_2 = L5_2.get_navigation_btn
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_vertical_navigation
  L4_2 = A0_2._binder
  L4_2 = L4_2.start_main_mission_panel
  L5_2 = L4_2
  L4_2 = L4_2.get_navigation_btn
  L4_2 = L4_2(L5_2)
  L5_2 = L1_2[1]
  L6_2 = L5_2
  L5_2 = L5_2.get_navigation_btn
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_vertical_navigation
  L4_2 = A0_2._binder
  L4_2 = L4_2.start_main_mission_panel
  L5_2 = L4_2
  L4_2 = L4_2.get_navigation_btn
  L4_2 = L4_2(L5_2)
  L5_2 = L1_2[2]
  L6_2 = L5_2
  L5_2 = L5_2.get_navigation_btn
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._init_start_mission_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_story_mgr
  L2_2 = L1_2
  L1_2 = L1_2.get_end_mission_navi_targets
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_vertical_navigation
  L4_2 = L1_2[3]
  L5_2 = L4_2
  L4_2 = L4_2.get_navigation_btn
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.end_main_mission_panel
  L6_2 = L5_2
  L5_2 = L5_2.get_navigation_btn
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_vertical_navigation
  L4_2 = L1_2[1]
  L5_2 = L4_2
  L4_2 = L4_2.get_navigation_btn
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.end_main_mission_panel
  L6_2 = L5_2
  L5_2 = L5_2.get_navigation_btn
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_vertical_navigation
  L4_2 = L1_2[2]
  L5_2 = L4_2
  L4_2 = L4_2.get_navigation_btn
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.end_main_mission_panel
  L6_2 = L5_2
  L5_2 = L5_2.get_navigation_btn
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._init_end_mission_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._set_vertical_navigation
    L7_2 = A0_2._binder
    L7_2 = L7_2.sub_story_mgr
    L8_2 = L7_2
    L7_2 = L7_2.get_main_mission_navi_target
    L9_2 = L4_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2
    L7_2 = L7_2.get_navigation_btn
    L7_2 = L7_2(L8_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.main_story_mgr
    L9_2 = L8_2
    L8_2 = L8_2.get_sub_mission_navi_target
    L10_2 = L4_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L8_2
    L8_2 = L8_2.get_navigation_btn
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  end
end
L0_1._init_navigation_between_sub_and_main_stories = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_target_tf
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.gameObject
  return L2_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_in_rogue
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_auto_focus_target
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2
    L1_2 = L1_2.get_tf
    return L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._get_first_panel_has_can_take_reward
    L1_2 = L1_2(L2_2)
    if L1_2 == nil then
      L2_2 = A0_2._binder
      L1_2 = L2_2.start_main_mission_panel
    end
    L3_2 = L1_2
    L2_2 = L1_2.get_tf
    return L2_2(L3_2)
  end
end
L0_1._get_target_tf = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._main_gamepad_hint_panel
  if L2_2 then
    L2_2 = A0_2._main_gamepad_hint_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_short_cut_hint_view
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.update_gamepad_hint = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._move_to
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.move_scroll_rect_to = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._surface_preview_panel_active
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._update_reward_display_panel_show_status
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 then
    return
  end
  A0_2._surface_preview_panel_active = false
  A0_2._cur_display_reward = nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_display_panel
  L3_2 = L2_2
  L2_2 = L2_2.close_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.update_gamepad_hint
  L4_2 = {}
  L5_2 = "Menu_Confirm"
  L6_2 = "ActionGroup_Switch"
  L7_2 = "ActionGroup_Return"
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L2_2(L3_2, L4_2)
end
L0_1._update_reward_display_panel_show_status = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._surface_preview_panel_active
  return L1_2
end
L0_1.is_preview_panel_shown = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L2_2 = A0_2._surface_preview_panel_active
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._show_item_detail_panel
      L2_2(L3_2)
      A0_2._reshow_reward_panel = true
    end
  end
end
L0_1._on_in_control_action_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._cur_display_reward
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ItemFactory
  L2_2 = L2_2.CreateDisplayItemDataFromReward
  L3_2 = A0_2._cur_display_reward
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ConfigID
    L2_2[L6_2] = L8_2
  end
  L3_2 = {}
  L3_2.items = L2_2
  L3_2.sync_load = false
  L3_2.display_only = true
  L3_2.hide_lock = true
  L3_2.is_item = false
  L4_2 = G
  L4_2 = L4_2.InventoryUtils
  L4_2 = L4_2.show_item_detail_display_dialog_for_gamepad
  L5_2 = L3_2
  L4_2(L5_2)
end
L0_1._show_item_detail_panel = L2_1
return L0_1
