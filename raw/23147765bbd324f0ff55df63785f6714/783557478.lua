local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Loading.LoadingPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LoadingPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.LoadingWorldImageExcelTable
L2_1 = "SpriteOutput/LoadingPic/LoadingBg/BgLoadingWorld00.png"
L3_1 = "SpriteOutput/LoadingPic/LoadingBg/BgLoadingWorld03_02.png"
L4_1 = "Pamu_Sleep"
L5_1 = "World03_Dream"
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.Client
L6_1 = L6_1.GlobalVars
L6_1 = L6_1.s_ModuleManager
L6_1 = L6_1.StoryLineModule
L7_1 = 1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.LoadingPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._close_when_phase_changed = false
  A0_2._cur_texture = nil
  A0_2._cur_texture_path = nil
  A0_2._obj_pam = nil
  A0_2._obj_pam_name = "uninit"
  A0_2._obj_effect = nil
  A0_2._obj_effect_name = nil
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L8_1
function L8_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._navigation_zone_mgr
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_active
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._navigation_zone_mgr
      L3_2 = L2_2
      L2_2 = L2_2.set_cur_zoom_navigation_target
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2.save_navigation_target
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1.set_navigation_target = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._progress = 0
  A0_2._img_index = -1
  A0_2._text_index = -1
  L1_2 = {}
  A0_2._LoadingDescInfos = L1_2
  L1_2 = {}
  A0_2._LoadingDescInfos = L1_2
  A0_2._row = nil
  A0_2._time_interval = 5
  A0_2._current_time_interval = 0
  L2_2 = A0_2
  L1_2 = A0_2._set_as_first_sibling
  L1_2(L2_2)
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
  L3_2 = L3_2.ShowLoadingPage
  L4_2 = L0_1._on_show_loading_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideLoadingPage
  L4_2 = L0_1._on_hide_loading_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = L0_1._on_click_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.remove_tick
  L1_2(L2_2)
end
L0_1._on_dispose = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_view_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SetAsFirstSibling
  L1_2(L2_2)
end
L0_1._set_as_first_sibling = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_loading_tips
  L2_2 = L1_2
  L1_2 = L1_2.show_next_tip
  L1_2(L2_2)
  A0_2._current_time_interval = 0
end
L0_1._on_click_btn_root = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._progress = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_loading_progress = L8_1
function L8_1(A0_2, A1_2)
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
L0_1._on_async_load_to_percent = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  A0_2._loading_type = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.set_view_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MouseInputController
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.ForceShowCursor
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_loading_pam_snore
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._load_bg_pam_snore_style
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._load_bg_based_on_destination
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_content
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._init_loading_show_data
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._update_tips
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_anime_panel
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_loading_contents
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_loading_contents
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AudioManager
  L2_2 = L2_2.AudioConfig
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_AudioManager
  L4_2 = L3_2
  L3_2 = L3_2.PostEvent
  L5_2 = L2_2.ToneAudioEvents
  L5_2 = L5_2.LoadingToneEvent
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_ui_navigation
  L3_2(L4_2)
end
L0_1._on_show_loading_page = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_loading_pamu
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_loading_story_line
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._is_loading_pam_snore
      L1_2 = L1_2(L2_2)
    end
  end
  return L1_2
end
L0_1._show_content = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._loading_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.LoadingStyle
  L2_2 = L2_2.LoadingStyleDefault
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_loading_pamu = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._loading_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.LoadingStyle
  L2_2 = L2_2.LoadingStoryLine
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_loading_story_line = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._loading_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.LoadingStyle
  L2_2 = L2_2.LoadingPamSnore
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_loading_pam_snore = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._end_loading
  L2_2(L3_2)
end
L0_1._on_hide_loading_page = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.set_view_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.remove_tick
  L1_2(L2_2)
  A0_2._current_time_interval = 0
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_InControlActionsManager
  L2_2 = L1_2
  L1_2 = L1_2.TopControllerOnEnter
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MouseInputController
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.CloseForceShowCursor
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.UpdateCursorState
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L1_2 = L1_2.AudioConfig
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AudioManager
  L3_2 = L2_2
  L2_2 = L2_2.PostEvent
  L4_2 = L1_2.ToneAudioEvents
  L4_2 = L4_2.LoadingToneStopEvent
  L2_2(L3_2, L4_2)
end
L0_1._end_loading = L8_1
function L8_1(A0_2)
  local L1_2
  A0_2._progress = 0
end
L0_1._init_loading_show_data = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_loading_story_line
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_loading_tips
    L2_2 = L1_2
    L1_2 = L1_2.update_tips_story_line
    L3_2 = L6_1.CurrentLine
    L3_2 = L3_2.ID
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_loading_tips
    L2_2 = L1_2
    L1_2 = L1_2.update_tips_world_tele
    L4_2 = A0_2
    L3_2 = A0_2._get_world_going_to
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_loading_tips
  L2_2 = L1_2
  L1_2 = L1_2.show_next_tip
  L1_2(L2_2)
end
L0_1._update_tips = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loading_progress_slider
  L2_2 = A0_2._progress
  L1_2.value = L2_2
end
L0_1._refresh = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_loading_story_line
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.loading_pamu
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.loading_story_line
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.story_line_image
    L4_2 = L6_1.CurrentLine
    L4_2 = L4_2.PortraitPath
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.loading_pamu
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.loading_story_line
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_anime_panel = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_loading_tips
  L2_2 = L1_2
  L1_2 = L1_2.show_next_tip
  L1_2(L2_2)
end
L0_1._on_passive_refresh = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._current_time_interval
  L2_2 = L2_2 + A1_2
  A0_2._current_time_interval = L2_2
  L2_2 = A0_2._current_time_interval
  L3_2 = A0_2._time_interval
  if L2_2 >= L3_2 then
    A0_2._current_time_interval = 0
    L3_2 = A0_2
    L2_2 = A0_2._on_passive_refresh
    L2_2(L3_2)
  end
end
L0_1._on_tick = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.MapDef
  if L1_2 == nil then
    L1_2 = 0
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.MapDef
  L1_2 = L1_2.PlaneID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazePlaneExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.WorldID
    return L3_2
  end
end
L0_1._get_world_going_to = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._load_pam_obj
  L3_2 = nil
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_world_going_to
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = 0
  end
  L2_2 = L1_1.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.loading_bg
    L5_2 = A0_2
    L4_2 = A0_2._get_texture2d_by_path
    L6_2 = L2_1
    L4_2 = L4_2(L5_2, L6_2)
    L3_2.texture = L4_2
    L4_2 = A0_2
    L3_2 = A0_2._load_world_effect
    L5_2 = nil
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L3_2 = L3_2.IsNullOrEmpty
  L4_2 = L2_2.ImagePath
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.loading_bg
    L5_2 = A0_2
    L4_2 = A0_2._get_texture2d_by_path
    L6_2 = L2_1
    L4_2 = L4_2(L5_2, L6_2)
    L3_2.texture = L4_2
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.loading_bg
    L5_2 = A0_2
    L4_2 = A0_2._get_texture2d_by_path
    L6_2 = L2_2.ImagePath
    L4_2 = L4_2(L5_2, L6_2)
    L3_2.texture = L4_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._load_world_effect
  L5_2 = L2_2.EffectContainer
  L3_2(L4_2, L5_2)
end
L0_1._load_bg_based_on_destination = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loading_bg
  L3_2 = A0_2
  L2_2 = A0_2._get_texture2d_by_path
  L4_2 = L3_1
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.texture = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._load_world_effect
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_pam_obj
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
end
L0_1._load_bg_pam_snore_style = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._obj_effect_name
  if L2_2 == A1_2 then
    return
  end
  L2_2 = A0_2._obj_effect
  if L2_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Object
    L2_2 = L2_2.Destroy
    L3_2 = A0_2._obj_effect
    L2_2(L3_2)
    A0_2._obj_effect = nil
  end
  A0_2._obj_effect_name = A1_2
  if A1_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.System
    L2_2 = L2_2.String
    L2_2 = L2_2.IsNullOrEmpty
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = 0
      L3_2 = A0_2._binder
      L3_2 = L3_2.effect_container
      L3_2 = L3_2.MultiPrefabList
      L3_2 = L3_2.Count
      L3_2 = L3_2 - 1
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = A0_2._binder
        L6_2 = L6_2.effect_container
        L6_2 = L6_2.MultiPrefabList
        L6_2 = L6_2[L5_2]
        if L6_2 ~= nil then
          L6_2 = A0_2._binder
          L6_2 = L6_2.effect_container
          L6_2 = L6_2.MultiPrefabList
          L6_2 = L6_2[L5_2]
          L6_2 = L6_2.name
          if L6_2 == A1_2 then
            L7_2 = A0_2
            L6_2 = A0_2.instantiate_object
            L8_2 = A0_2._binder
            L8_2 = L8_2.effect_container
            L8_2 = L8_2.MultiPrefabList
            L8_2 = L8_2[L5_2]
            L9_2 = A0_2._binder
            L9_2 = L9_2.effect_container
            L9_2 = L9_2.transform
            L6_2 = L6_2(L7_2, L8_2, L9_2)
            A0_2._obj_effect = L6_2
            break
          end
        end
      end
    end
  end
end
L0_1._load_world_effect = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._obj_pam_name
  if L2_2 == A1_2 then
    return
  end
  L2_2 = A0_2._obj_pam
  if L2_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Object
    L2_2 = L2_2.Destroy
    L3_2 = A0_2._obj_pam
    L2_2(L3_2)
    A0_2._obj_pam = nil
  end
  A0_2._obj_pam_name = A1_2
  if A1_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.System
    L2_2 = L2_2.String
    L2_2 = L2_2.IsNullOrEmpty
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      goto lbl_36
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.instantiate_object
  L4_2 = A0_2._binder
  L4_2 = L4_2.pam_container
  L4_2 = L4_2.Prefab
  L5_2 = A0_2._binder
  L5_2 = L5_2.pam_container
  L5_2 = L5_2.transform
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._obj_pam = L2_2
  goto lbl_69
  ::lbl_36::
  L2_2 = 0
  L3_2 = A0_2._binder
  L3_2 = L3_2.pam_container
  L3_2 = L3_2.MultiPrefabList
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.pam_container
    L6_2 = L6_2.MultiPrefabList
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L6_2 = A0_2._binder
      L6_2 = L6_2.pam_container
      L6_2 = L6_2.MultiPrefabList
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.name
      if L6_2 == A1_2 then
        L7_2 = A0_2
        L6_2 = A0_2.instantiate_object
        L8_2 = A0_2._binder
        L8_2 = L8_2.pam_container
        L8_2 = L8_2.MultiPrefabList
        L8_2 = L8_2[L5_2]
        L9_2 = A0_2._binder
        L9_2 = L9_2.pam_container
        L9_2 = L9_2.transform
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        A0_2._obj_pam = L6_2
        break
      end
    end
  end
  ::lbl_69::
end
L0_1._load_pam_obj = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._cur_texture_path
  if A1_2 == L2_2 then
    L2_2 = A0_2._cur_texture
    return L2_2
  end
  A0_2._cur_texture_path = A1_2
  L2_2 = G
  L2_2 = L2_2.AssetLoader
  L2_2 = L2_2.ReleaseAsset
  L3_2 = A0_2._cur_texture
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.AssetLoader
  L2_2 = L2_2.SyncLoadAsset
  L3_2 = A1_2
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Texture2D
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._cur_texture = L2_2
  L2_2 = A0_2._cur_texture
  return L2_2
end
L0_1._get_texture2d_by_path = L8_1
return L0_1
