local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.ChallengeStoryActivityPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.ChallengeUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.MissionUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeStoryActivityPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChallengeModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.ActivityStateEnum
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.MissionModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.PlayerModule
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._activity_data = A3_2
  A0_2._reward_items = nil
  L4_2 = {}
  A0_2._config_ids = L4_2
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_show_buff
    L2_2 = L2_2.gameObject
    L2_2 = L2_2.activeInHierarchy
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_condition_panel
      L2_2 = L2_2.gameObject
      L2_2 = L2_2.activeInHierarchy
    end
    return L2_2
  end
end
L0_1._is_can_to_zoom = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_active_in_hierarchy
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = A0_2
    L4_2 = A0_2._is_can_to_zoom
    L6_2 = NavigationZoneType
    L6_2 = L6_2.Zone2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = 31
      if L4_2 then
        goto lbl_25
      end
    end
    L4_2 = 1
    ::lbl_25::
    L2_2(L3_2, L4_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_navigation_target
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsPreGuideComplete
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_show_buff
    L1_2 = L1_2.gameObject
    return L1_2
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_activity_state_switch
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._config_ids
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_ids
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1.on_left_stick_button_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetLatestScheduleChallengeGroupDataByGroupType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ChallengeGroupType
  L3_2 = L3_2.Story
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._cur_challenge_group_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityQuest"
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.PanelID
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_added = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._is_custom_loaded
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_show_buff
  L4_2 = A0_2._on_btn_show_buff
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_shop
  L4_2 = A0_2._on_btn_shop
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._is_custom_loaded = true
end
L0_1._custom_on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2._get_panel_prefab_path_by_activity_data
  L3_2 = A0_2._activity_data
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._is_custom_bind
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  A0_2._is_custom_bind = true
  L3_2 = A0_2
  L2_2 = A0_2._custom_on_load
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.SortedDisplayItemList
  L2_2 = L2_2(L3_2)
  A0_2._reward_items = L2_2
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "ActivityQuest"
  L5_2 = A0_2._activity_data
  L5_2 = L5_2.PanelID
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.reddot_btn_go
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2._load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_bg
  L5_2 = A0_2._cur_challenge_group_data
  L5_2 = L5_2.StoryGroupExtraInfoRow
  L5_2 = L5_2.ThemePosterBgPicPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_theme_icon
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2._load_sprite_to
    L9_2 = L6_2
    L10_2 = A0_2._cur_challenge_group_data
    L10_2 = L10_2.StoryGroupExtraInfoRow
    L10_2 = L10_2.ThemeIconPicPath
    L7_2(L8_2, L9_2, L10_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_condition
  L2_2(L3_2)
end
L0_1._on_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_activity_state_switch
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_activity_state_switch
  L2_2 = L1_2
  L1_2 = L1_2.register_customized_btn_callback
  L3_2 = L2_1.PreGuide
  L4_2 = A0_2._on_btn_guide_mission
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_activity_state_switch
  L2_2 = L1_2
  L1_2 = L1_2.register_customized_btn_callback
  L3_2 = L2_1.InProgress
  L4_2 = A0_2._on_btn_go
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_pre_mission_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress_tips
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_teaser_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_color
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_eff
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_extra
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.IsPreGuideComplete
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = A0_2
  L3_2 = A0_2._is_can_to_zoom
  L5_2 = NavigationZoneType
  L5_2 = L5_2.Zone2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = 31
    if L3_2 then
      goto lbl_49
    end
  end
  L3_2 = 1
  ::lbl_49::
  L1_2(L2_2, L3_2)
end
L0_1._get_condition = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsPreMissionComplete
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_activity_state_switch
  L2_2 = L1_2
  L1_2 = L1_2.is_all_condition_mission_finish
  L1_2 = L1_2(L2_2)
  L2_2 = L4_1.PlayerData
  L3_2 = L2_2.WorldLevel
  L3_2 = 3 <= L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_condition_panel
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L1_2
  L4_2(L5_2, L6_2)
  if not L1_2 and not L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_lock_tips
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_ChallengeStory_OpenCondition1"
    L4_2(L5_2, L6_2)
  elseif not L1_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_lock_tips
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_ActivityCommon_Panel_MainMissionNotFinish"
    L4_2(L5_2, L6_2)
  elseif not L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_lock_tips
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_GameplayGuide_Recent_ChallengeStoryPre2"
    L4_2(L5_2, L6_2)
  end
end
L0_1._setup_pre_mission_status = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._cur_challenge_group_data
  L1_2 = L1_2.StoryGroupExtraInfoRow
  L2_2 = A0_2._cur_challenge_group_data
  L2_2 = L2_2.StoryThemeConfigRow
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = L2_2.ThemeMainColor
  L3_2 = L3_2(L4_2)
  L4_2 = pairs
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_main_color_list
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.UIColorUtils
    L9_2 = L9_2.GetColorWithOriginAlpha
    L10_2 = L3_2
    L11_2 = L8_2.color
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.color = L9_2
  end
end
L0_1._setup_color = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.eff_obg
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.sync_load_prefab
    L3_2 = A0_2._cur_challenge_group_data
    L3_2 = L3_2.StoryGroupExtraInfoRow
    L3_2 = L3_2.ThemePosterEffectPrefabPath
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_eff_panel
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2.eff_obg = L1_2
  end
end
L0_1._setup_eff = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_unselect = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._activity_data = nil
  A0_2._reward_items = nil
end
L0_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_icon
  L3_2 = A0_2._cur_challenge_group_data
  L3_2 = L3_2.StoryGroupExtraInfoRow
  L3_2 = L3_2.ThemePosterTabPicPath
  L1_2(L2_2, L3_2)
end
L0_1._setup_tab_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_items
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_reward = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.EndTimeDate
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TimeManager
  L2_2 = L2_2.Instance
  L2_2 = L2_2.NowDateTime
  L3_2 = L2_2
  L2_2 = L2_2.AddDays
  L4_2 = 7
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2 <= L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_teaser_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 or L4_2
  if L1_2 then
    L4_2 = A0_2._activity_data
    L4_2 = L4_2.IsPreMissionComplete
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_teaser_context
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_GameplayGuide_Preview_Content"
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = "ChallengeMaze_SystemTitle"
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.teaser_remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.SetTargetTime
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.EndTimeDate
  L5_2 = A0_2._expire_call_back
  L6_2 = A0_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_teaser_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.IsPreGuideComplete
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_challenge_group_data
  L2_2 = L1_2
  L1_2 = L1_2.GetMaxFinishLevel
  L1_2 = L1_2(L2_2)
  if 0 < L1_2 then
    L2_2 = A0_2._cur_challenge_group_data
    L2_2 = L2_2.ChallengeDatas
    L3_2 = L1_2 - 1
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.Name
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_progress_tips
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ActivityChallengeMaze_Process"
    L6_2 = G
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = L2_2
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_progress_tips
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_RogueChallengeActivity_NoRecord"
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_progress_tips = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._refresh = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.RewardItemIconLite
  L8_2 = G
  L8_2 = L8_2.RewardItemIconLiteBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._reward_items
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.ItemID
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_count
  L7_2 = A0_2._reward_items
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.Count
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_count_display
  L7_2 = A0_2._reward_items
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.Count
  L7_2 = 0 < L7_2
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_item_changed = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.StoryLineUtils
  L1_2 = L1_2.should_switch_line_in_activity
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.PanelID
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "TeleportBtn"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.ChallengeUtils
  L1_2 = L1_2.get_challenge_story_unlock_main_mission_id
  L1_2 = L1_2()
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetMainMissionData
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.IsStart
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.MissionUtils
    L3_2 = L3_2.common_jump_to_mission_by_main_mission
    L4_2 = L2_2
    L3_2(L4_2)
  else
    L3_2 = G
    L3_2 = L3_2.GotoManager
    L3_2 = L3_2.Goto
    L4_2 = 230
    L3_2(L4_2)
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.ChallengeStorySeenActivityPanel
  L4_2 = A0_2._cur_challenge_group_data
  L4_2 = L4_2.ID
  if L3_2 ~= L4_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.Prefs
    L3_2 = L3_2.User
    L4_2 = A0_2._cur_challenge_group_data
    L4_2 = L4_2.ID
    L3_2.ChallengeStorySeenActivityPanel = L4_2
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.ActivityUpdated
    L3_2(L4_2)
  end
end
L0_1._on_btn_go = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ChallengeUtils
  L1_2 = L1_2.get_challenge_story_unlock_main_mission_id
  L1_2 = L1_2()
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetMainMissionData
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.MissionUtils
  L3_2 = L3_2.common_jump_to_mission_by_main_mission
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.ChallengeStorySeenActivityPanel
  if L3_2 == 0 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.Prefs
    L3_2 = L3_2.User
    L3_2.ChallengeStorySeenActivityPanel = 1
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.ActivityUpdated
    L3_2(L4_2)
  end
end
L0_1._on_btn_guide_mission = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.Goto
  L2_2 = 1511
  L1_2(L2_2)
end
L0_1._on_btn_shop = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ChallengeStory.Entrance.ChallengeStoryEnvironmentInfoDialog"
  L3_2 = A0_2._cur_challenge_group_data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_show_buff = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityRefreshAll
  L1_2(L2_2)
end
L0_1._expire_call_back = L5_1
return L0_1
