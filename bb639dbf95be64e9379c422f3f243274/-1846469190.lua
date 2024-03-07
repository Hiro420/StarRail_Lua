local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Entrance.ChallengeLevelPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.ChallengeLevelTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.ChallengePreviewMonsterBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.ChallengePreviewRewardBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamDataProviders.RaidTeamDataProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.ChallengeLevelTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.PreviewMonsterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.PreviewRewardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonTeamLimitPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonTeamLimitPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonEnvBuffPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmLevelUnlockDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.RaidUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeLevelPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RaidModule
L2_1 = 80
L3_1 = {}
L3_1.None = 0
L3_1.NotStarted = 1
L3_1.InSchedule = 2
L3_1.Expired = 3
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChallengeLevelPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  A0_2._resized = false
  A0_2._is_in_special_zoom = false
  A0_2._previous_height = 0
  A0_2._is_inited = false
  A0_2._is_having_save = false
  L1_2 = L3_1.None
  A0_2.schedule_status = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._prop_id = A1_2
  A0_2._raid_id = A2_2
  L4_2 = {}
  A0_2._raid_status = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.RaidConfigExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A2_2
  L6_2 = A3_2 or L6_2
  if not A3_2 then
    L6_2 = 0
  end
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._row = L4_2
  L4_2 = {}
  A0_2._limited_ids = L4_2
  A0_2._current_tab_item_index = 0
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_static_contents
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._on_start_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.LABMLGGBEBF
  L4_2 = A0_2._on_cmd_get_challenge_raid_info_rsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_bg_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_if_show_unlock_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_show_unlock_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_navigation_of_monsters_and_rewards
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._row
  L1_2 = L1_2.EntrancePageBGImagePath
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = not L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bg
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_bg
    L6_2 = L1_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._setup_bg_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_right_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_current_Lv_info
  L1_2(L2_2)
end
L0_1.refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_max_lv_unlocked
  L1_2 = L1_2(L2_2)
  if L1_2 < 0 then
    L1_2 = 0
  end
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.find_item
  L4_2 = L1_2 + 1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._tab_control
  L3_2 = L3_2.current_select_item
  if L2_2 ~= L3_2 then
    L4_2 = L2_2
    L3_2 = L2_2.refresh
    L3_2(L4_2)
    L3_2 = A0_2._tab_control
    L4_2 = L3_2
    L3_2 = L3_2.click_item_by_uid
    L5_2 = L1_2 + 1
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._tab_control
    L3_2 = L3_2.current_select_item
    L4_2 = L3_2
    L3_2 = L3_2.refresh_by_timeout
    L3_2(L4_2)
  end
end
L0_1._refresh_tab_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetTreasureChallengeValidLevels
  L3_2 = A0_2._raid_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._valid_Lvs = L1_2
  L1_2 = A0_2._valid_Lvs
  L1_2 = L1_2.Count
  if L1_2 == 1 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.difficulty_selection_panel_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.difficulty_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_default_select_lv
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tabcontrol
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._valid_Lvs
  L1_2 = L1_2.Count
  if L1_2 ~= 1 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.get_cur_tab_btn_object
    return L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.get_zoom2_first_selected_object
    return L1_2(L2_2)
  end
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2)
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
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L2_2 = A0_2._valid_Lvs
      L2_2 = L2_2.Count
      if L2_2 ~= 1 then
        L3_2 = A0_2
        L2_2 = A0_2.set_navigation_target
        L5_2 = A0_2
        L4_2 = A0_2.get_zoom2_first_selected_object
        L4_2, L5_2 = L4_2(L5_2)
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
end
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_monster_exist
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.monster_preview_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  else
    L1_2 = A0_2._is_rewards_exist
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.reward_preview_panel
      L2_2 = L1_2
      L1_2 = L1_2.get_first_selected_object
      return L1_2(L2_2)
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_zoom2_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.LastTimePlayedRaidLevels
  L2_2 = nil
  L4_2 = L1_2
  L3_2 = L1_2.ContainsKey
  L5_2 = A0_2._raid_id
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = A0_2._raid_id
    L2_2 = L1_2[L3_2]
  end
  L3_2 = A0_2._should_show_unlock_hint
  if L3_2 or L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2._get_max_lv_unlocked
    L3_2 = L3_2(L4_2)
    A0_2._current_select_level = L3_2
    L4_2 = L1_2
    L3_2 = L1_2.ContainsKey
    L5_2 = A0_2._raid_id
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = A0_2._raid_id
      L4_2 = A0_2._current_select_level
      L1_2[L3_2] = L4_2
    else
      L4_2 = L1_2
      L3_2 = L1_2.Add
      L5_2 = A0_2._raid_id
      L6_2 = A0_2._current_select_level
      L3_2(L4_2, L5_2, L6_2)
    end
  else
    A0_2._current_select_level = L2_2
  end
  L3_2 = A0_2._current_select_level
  if L3_2 < 0 then
    A0_2._current_select_level = 0
  end
end
L0_1._setup_default_select_lv = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._tab_control
  if L1_2 ~= nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.difficulty_btns_tabcontrol_root
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._tab_items = L1_2
  L1_2 = 0
  L2_2 = A0_2._valid_Lvs
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._valid_Lvs
    L5_2 = L5_2[L4_2]
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.ChallengeLevelTabItem
    L9_2 = G
    L9_2 = L9_2.ChallengeLevelTabItemBinder
    L10_2 = A0_2._raid_id
    L11_2 = L5_2
    L12_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = A0_2._binder
    L9_2 = L9_2.difficulty_btns_tabcontrol_root
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_click_callback
    L9_2 = A0_2
    L10_2 = A0_2._on_tab_item_clicked
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = A0_2._tab_control
    L8_2 = L7_2
    L7_2 = L7_2.add_item
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._current_select_level
  L3_2 = L3_2 + 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.difficulty_btns_tabcontrol_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._init_tabcontrol = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = tostring
  L2_2 = A0_2.__name
  return L1_2(L2_2)
end
L0_1._get_raid_name = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = tostring
  L2_2 = A0_2.__name
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._raid_id
  L1_2 = L1_2 .. L2_2
  return L1_2
end
L0_1._get_raid_unique_name = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.current_level_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.RaidName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.ip_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.RaidDesc
  L1_2(L2_2, L3_2)
end
L0_1._init_static_contents = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_raid_desc
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_raid_buff_desc
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_raid_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_raid_enemy
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_team_limit_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_clearance_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_challenge_targets
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_time_limit_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_navigation_of_monsters_and_rewards
  L1_2(L2_2)
end
L0_1._update_right_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._row
  L2_2 = L2_2.LimitIDList
  L1_2 = L1_2(L2_2)
  L2_2 = #L1_2
  if 0 < L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.team_limit_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.team_limit_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.team_limit_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_team_limit = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ip_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.RaidDesc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._row
  L1_2 = L1_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RaidConfigType
  L2_2 = L2_2.Mission
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.challenge_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_MissionRaid_Page_Title"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.challenge_sub_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_MissionRaid_Page_Title"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.challenge_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_TreasureRaid_Page_Title"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.challenge_sub_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_TreasureRaid_Page_Title"
    L1_2(L2_2, L3_2)
  end
end
L0_1._update_raid_desc = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._row
  L1_2 = L1_2.BuffDesc
  if L1_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.TextID
    L2_2 = L2_2.empty
    if L1_2 ~= L2_2 then
      goto lbl_19
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.env_buff_desc_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  do return end
  goto lbl_24
  ::lbl_19::
  L2_2 = A0_2._binder
  L2_2 = L2_2.env_buff_desc_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  ::lbl_24::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RaidConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._raid_id
  L4_2 = A0_2._current_select_level
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._generate_params
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L1_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.env_buff_desc_root
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._env_buff_params
    if L3_2 ~= nil then
      L3_2 = A0_2._env_buff_params
      L3_2 = #L3_2
      if L3_2 ~= 0 then
        goto lbl_55
      end
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.env_buff_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
    goto lbl_70
    ::lbl_55::
    L3_2 = A0_2._binder
    L3_2 = L3_2.env_buff_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = L1_2
    L6_2 = table
    L6_2 = L6_2.unpack
    L7_2 = A0_2._env_buff_params
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.env_buff_desc_root
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  ::lbl_70::
end
L0_1._update_raid_buff_desc = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetTreasureRewardDisplayDatas
  L3_2 = A0_2._raid_id
  L4_2 = A0_2._current_select_level
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Length
    if L2_2 ~= 0 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.reward_root
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.reward_preview_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = L1_2
      L5_2 = false
      L6_2 = L1_1
      L7_2 = L6_2
      L6_2 = L6_2.IsTreasureChallengeRewardTaken
      L8_2 = A0_2._raid_id
      L9_2 = A0_2._current_select_level
      L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      A0_2._is_rewards_exist = true
  end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.reward_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._update_raid_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._row
  L1_2 = L1_2.MonsterList
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.monster_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.PlayerModule
    L2_2 = L2_2.PlayerData
    L2_2 = L2_2.WorldLevel
    L3_2 = A0_2._binder
    L3_2 = L3_2.monster_preview_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view_by_raid
    L5_2 = A0_2._row
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
    A0_2._is_monster_exist = true
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.monster_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._update_raid_enemy = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._row
  L2_2 = L2_2.LimitIDList
  L1_2 = L1_2(L2_2)
  L2_2 = #L1_2
  if 0 < L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.team_limit_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.team_limit_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.team_limit_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh_by_datas
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._update_team_limit_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RaidConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._raid_id
  L3_2 = A0_2._current_select_level
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = L1_2.Type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.RaidConfigType
    L3_2 = L3_2.Mission
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.clearance_reward_hint
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_Raid_Mission_Reward"
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.clearance_reward_hint
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Raid_MainPage_ClearReward"
    L2_2(L3_2, L4_2)
  end
end
L0_1._update_clearance_hint = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.targets_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._raid_id
  L4_2 = A0_2._current_select_level
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._update_challenge_targets = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_current_lv_completed
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.current_lv_completed_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.current_lv_completed_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.difficulty_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Cocoon_WorldLevel_Text_"
  L4_2 = tostring
  L5_2 = A0_2._current_tab_item_index
  L5_2 = L5_2 + 1
  if not L5_2 then
    L5_2 = 1
  end
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.unlock_node
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_current_lv_locked
  if L3_2 then
    L3_2 = A0_2.schedule_status
    L4_2 = L3_1.Expired
    L3_2 = L3_2 ~= L4_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btns_node
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_current_lv_locked
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_current_lv_locked
  if L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.IsTreasureChallengeLevelLockedByNormal
    L3_2 = A0_2._raid_id
    L4_2 = A0_2._current_select_level
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_unlock_hint
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_Raid_MainPage_HardLevel_UnlockDesc"
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._update_current_Lv_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L3_1.None
  A0_2.schedule_status = L1_2
  L1_2 = A0_2._activity_raid_row
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.ScheduleModule
    L3_2 = L1_2
    L2_2 = L1_2.GetScheduleDataByActivityModuleID
    L4_2 = A0_2._activity_raid_row
    L4_2 = L4_2.ActivityModuleID
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TimeManager
    L3_2 = L3_2.Instance
    L3_2 = L3_2.NowTimeStamp
    A0_2.schedule_data = L2_2
    if L2_2 ~= nil then
      L5_2 = L2_2
      L4_2 = L2_2.IsExpired
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        goto lbl_32
      end
    end
    L4_2 = L3_1.Expired
    A0_2.schedule_status = L4_2
    goto lbl_69
    ::lbl_32::
    L4_2 = L2_2.BeginTimeStamp
    if L3_2 < L4_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.txt_unlock_hint
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = "UIText_ActivityRaid_Countdown"
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.remain_timer
      L5_2 = L4_2
      L4_2 = L4_2.SetTargetTime
      L6_2 = L2_2.BeginTimeDate
      L7_2 = A0_2._refresh_tab_item
      L8_2 = A0_2
      L9_2 = 2
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      L4_2 = L3_1.NotStarted
      A0_2.schedule_status = L4_2
    else
      L5_2 = L2_2
      L4_2 = L2_2.IsInSchedule
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L5_2 = L2_2
        L4_2 = L2_2.IsForever
        L4_2 = L4_2(L5_2)
        if not L4_2 then
          L4_2 = A0_2._binder
          L4_2 = L4_2.page_info_remain_timer
          L5_2 = L4_2
          L4_2 = L4_2.SetTargetTime
          L6_2 = L2_2.EndTimeDate
          L7_2 = A0_2._refresh_tab_item
          L8_2 = A0_2
          L9_2 = 2
          L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
          L4_2 = L3_1.InSchedule
          A0_2.schedule_status = L4_2
        end
      end
    end
  end
  ::lbl_69::
  L1_2 = A0_2.schedule_status
  L2_2 = L3_1.Expired
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_confirm_btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityRaid_Expired"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_confirm_btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_Cocoon_StartBattle_Btn"
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.confirm_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2.schedule_status
  L4_2 = L3_1.Expired
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_page_info_with_sub
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.schedule_status
  L4_2 = L3_1.InSchedule
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_page_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.schedule_status
  L4_2 = L3_1.InSchedule
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.schedule_status
  L4_2 = L3_1.NotStarted
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
end
L0_1._update_time_limit_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._row
  L1_2 = L1_2.RecommendLevel
  if L1_2 ~= 999 then
    L1_2 = A0_2._row
    L1_2 = L1_2.DisplayEventID
    if L1_2 ~= 0 then
      goto lbl_15
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.recommand_team_lv_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_15::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.WorldLevel
  L2_2 = G
  L2_2 = L2_2.RaidUtils
  L2_2 = L2_2.get_show_monster_level
  L3_2 = A0_2._row
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.recommand_team_lv_root
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._row
  L3_2 = L3_2.RecommendLevel
  L3_2 = L2_2 + L3_2
  L4_2 = L2_1
  if L3_2 > L4_2 then
    L3_2 = L2_1
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.recommand_team_lv_root
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.recommand_team_lv
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._update_recommend_lv = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  A0_2._current_tab_item_index = A4_2
  A0_2._is_current_lv_locked = A2_2
  A0_2._is_current_lv_completed = A3_2
  A0_2._current_select_level = A1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.RaidConfigExcelTable
  L5_2 = L5_2.GetData
  L6_2 = A0_2._raid_id
  L7_2 = A0_2._current_select_level
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._row = L5_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ActivityRaidConfigExcelTable
  L5_2 = L5_2.GetData
  L6_2 = A0_2._raid_id
  L7_2 = A0_2._current_select_level
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._activity_raid_row = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._update_right_panel
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._update_current_Lv_info
  L5_2(L6_2)
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.create_lua_table_from_cs_array
  L6_2 = A0_2._row
  L6_2 = L6_2.LimitIDList
  L5_2 = L5_2(L6_2)
  A0_2._limited_ids = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._update_recommend_lv
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._update_save_data_status
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._play_switch_tab_effect
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._can_show_env_buff_hint
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._try_show_env_eff_hint
    L5_2(L6_2)
  end
end
L0_1._on_tab_item_clicked = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.StartTreasureChallenge
  L4_2 = A0_2._prop_id
  L5_2 = A0_2._raid_id
  L6_2 = A0_2._current_select_level
  L7_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_enter_raid = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._row
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._should_skip_condition_check
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.RaidModule
    L2_2 = L1_2
    L1_2 = L1_2.CheckRaidBanWithHint
    L3_2 = A0_2._raid_id
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      return
    end
  end
  L1_2 = A0_2._is_having_save
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._select_is_use_save_data
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._enter_team_edit_page
  L1_2(L2_2)
end
L0_1._on_start_btn_clicked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._is_having_save
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = 0
  L2_2 = A0_2._row
  L2_2 = L2_2.LimitIDList
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.RaidLimitConditionExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2._row
    L6_2 = L6_2.LimitIDList
    L6_2 = L6_2[L4_2]
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L6_2 = L5_2.LimitType
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.RaidLimitType
      L7_2 = L7_2.HasMainMission
      if L6_2 == L7_2 then
        L6_2 = false
        return L6_2
      end
    end
  end
  L1_2 = true
  return L1_2
end
L0_1._should_skip_condition_check = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2
  L1_2 = A0_2._try_generate_recommend_attribute
  L1_2(L2_2)
  L1_2 = A0_2._row
  L1_2 = L1_2.TeamType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RaidTeamType
  L2_2 = L2_2.TrialAndPlayer
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._row
    L1_2 = L1_2.TeamType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.RaidTeamType
    L2_2 = L2_2.TrialOrPlayer
    if L1_2 ~= L2_2 then
      goto lbl_50
    end
  end
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.RaidTeamDataProvider
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_raid_row
  L4_2 = A0_2._row
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = "Ui.Team.LocalTeamEditPage"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.init
  L5_2 = LocalTeamSourceType
  L5_2 = L5_2.Raid
  L6_2 = A0_2._on_enter_raid
  L7_2 = A0_2
  L8_2 = A0_2._limited_ids
  L9_2 = false
  L10_2 = false
  L11_2 = A0_2._recommend_attributes
  L12_2 = A0_2._row
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_team_data_provider
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.async_show
  L3_2(L4_2)
  goto lbl_61
  ::lbl_50::
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.FarmEnemy.FarmTeamEditPage"
  L3_2 = A0_2._on_enter_raid
  L4_2 = A0_2
  L5_2 = A0_2._limited_ids
  L6_2 = false
  L7_2 = false
  L8_2 = A0_2._recommend_attributes
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  ::lbl_61::
end
L0_1._enter_team_edit_page = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit_btn_clicked = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  A0_2._env_buff_params = L2_2
  L2_2 = 0
  L3_2 = A1_2.BuffParamList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._env_buff_params
    L8_2 = A1_2.BuffParamList
    L8_2 = L8_2[L5_2]
    L9_2 = L8_2
    L8_2 = L8_2.ToString
    L8_2, L9_2 = L8_2(L9_2)
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._generate_params = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._valid_Lvs
  L1_2 = L1_2.Count
  if L1_2 == 0 then
    L1_2 = -1
    return L1_2
  end
  L1_2 = -1
  L2_2 = 0
  L3_2 = A0_2._valid_Lvs
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.IsTreasureChallengeLevelLocked
    L8_2 = A0_2._raid_id
    L9_2 = A0_2._valid_Lvs
    L9_2 = L9_2[L5_2]
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 then
      return L1_2
    end
    L6_2 = A0_2._valid_Lvs
    L1_2 = L6_2[L5_2]
  end
  return L1_2
end
L0_1._get_max_lv_unlocked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.GetNPCManager
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetFarmElementEntity
  L5_2 = A0_2._farm_element_id
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.GetComponent
  L6_2 = typeof
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.NPCComponent
  L6_2, L7_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._npc_component = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AdventureStatic
  L4_2 = L4_2.GetStageIDByEventID
  L5_2 = A0_2._npc_component
  L5_2 = L5_2.MapNpcDef
  L5_2 = L5_2.EventID
  L6_2 = A0_2._current_level
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._stage_id = L4_2
end
L0_1._setup_datas = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "GetRaidInfoScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.Retcode
  if L3_2 == 0 then
    L3_2 = A0_2._is_inited
    if L3_2 == false then
      L4_2 = A0_2
      L3_2 = A0_2.setup_view
      L3_2(L4_2)
      A0_2._is_inited = true
    end
  end
end
L0_1._on_cmd_get_challenge_raid_info_rsp = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_preview_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_all_reward_btns
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.monster_preview_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_all_monster_btns
  L3_2 = L3_2(L4_2)
  if L2_2 ~= nil then
    L4_2 = #L2_2
    if L4_2 ~= 0 and L3_2 ~= nil then
      L4_2 = #L3_2
      if L4_2 ~= nil then
        goto lbl_21
      end
    end
  end
  do return end
  ::lbl_21::
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L1_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L1_2
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.UIUtils
  L4_2 = L4_2.setup_multi_line_navigation
  L5_2 = L1_2
  L4_2(L5_2)
end
L0_1._setup_navigation_of_monsters_and_rewards = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_current_lv_locked
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.env_buff_panel
    L2_2 = L1_2
    L1_2 = L1_2.update_hint_eff
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.env_buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.update_hint_eff
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._try_show_env_eff_hint = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._get_max_lv_unlocked
  L1_2 = L1_2(L2_2)
  if L1_2 == -1 then
    L2_2 = false
    return L2_2
  end
  L2_2 = nil
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.HintedMaxRaidLevels
  L5_2 = L3_2
  L4_2 = L3_2.ContainsKey
  L6_2 = A0_2._raid_id
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = A0_2._raid_id
    L2_2 = L3_2[L4_2]
  end
  if L2_2 == nil then
    L4_2 = A0_2._valid_Lvs
    L4_2 = L4_2.Count
  end
  L4_2 = 1 < L4_2 or L2_2 ~= nil and L1_2 > L2_2
  L5_2 = not L4_2
  return L5_2
end
L0_1._can_show_env_buff_hint = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._should_show_unlock_hint = false
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetTreasureChallengeValidLevels
  L3_2 = A0_2._raid_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._valid_Lvs = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_max_lv_unlocked
  L1_2 = L1_2(L2_2)
  if L1_2 == -1 then
    return
  end
  L2_2 = nil
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.HintedMaxRaidLevels
  L5_2 = L3_2
  L4_2 = L3_2.ContainsKey
  L6_2 = A0_2._raid_id
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = A0_2._raid_id
    L2_2 = L3_2[L4_2]
  end
  if L2_2 == nil then
    L4_2 = A0_2._valid_Lvs
    L4_2 = L4_2.Count
  end
  L4_2 = 1 < L4_2 or L2_2 ~= nil and L1_2 > L2_2
  A0_2._should_show_unlock_hint = L4_2
end
L0_1._get_if_show_unlock_hint = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_max_lv_unlocked
  L1_2 = L1_2(L2_2)
  if L1_2 == -1 then
    return
  end
  L2_2 = A0_2._should_show_unlock_hint
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.User
    L2_2 = L2_2.HintedMaxRaidLevels
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_show
    L4_2 = "Ui.FarmEnemy.FarmLevelUnlockDialog"
    L5_2 = L1_2 + 1
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._raid_id
    L2_2[L3_2] = L1_2
    A0_2._should_show_env_eff_hint = true
  end
end
L0_1._try_show_unlock_hint = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._row
  L1_2 = L1_2.AutoObtainDamageType
  if L1_2 == false then
    L2_2 = A0_2
    L1_2 = A0_2._try_read_recommend_attribute
    L1_2 = L1_2(L2_2)
    A0_2._recommend_attributes = L1_2
  else
    L2_2 = A0_2
    L1_2 = A0_2._try_cal_recommend_attribute
    L1_2 = L1_2(L2_2)
    A0_2._recommend_attributes = L1_2
  end
end
L0_1._try_generate_recommend_attribute = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._row
  L2_2 = L2_2.DamageType
  return L1_2(L2_2)
end
L0_1._try_read_recommend_attribute = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.RaidUtils
  L1_2 = L1_2.get_all_monster_ids_by_raid
  L2_2 = A0_2._row
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.RaidUtils
  L2_2 = L2_2.auto_construct_recommend_attributes
  L3_2 = L1_2
  L4_2 = true
  return L2_2(L3_2, L4_2)
end
L0_1._try_cal_recommend_attribute = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.switch_tab_effect
  L1_2 = L1_2.isPlaying
  if L1_2 then
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.switch_tab_effect
  L3_2 = "RaidRightPanelRefresh"
  L1_2(L2_2, L3_2)
end
L0_1._play_switch_tab_effect = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.CheckIsHavingSave
  L4_2 = A0_2._raid_id
  L5_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._is_having_save = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_save_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_having_save
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_save_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Raid_MainPage_SaveData"
  L2_2(L3_2, L4_2)
end
L0_1._update_save_data_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.TreasureChallenge.Entrance.RaidSaveModeConfirmDialog"
  L3_2 = "UIText_Raid_Dialog_LoadOrRestart_Desc"
  L4_2 = "UIText_Raid_Dialog_LoadOrRestart_Load"
  L5_2 = "UIText_Raid_Dialog_LoadOrRestart_Restart"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.register_confirm_callback
  L4_2 = A0_2._start_raid_with_save_data
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.register_cancel_callback
  L4_2 = A0_2._open_edit_team_page
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._select_is_use_save_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 1
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._enter_team_edit_page
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._open_edit_team_page = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.StartTreasureChallenge
  L3_2 = A0_2._prop_id
  L4_2 = A0_2._raid_id
  L5_2 = A0_2._current_select_level
  L6_2 = nil
  L7_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._start_raid_with_save_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._should_show_env_eff_hint
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_show_env_eff_hint
  L1_2(L2_2)
  A0_2._should_show_env_eff_hint = false
end
L0_1._on_first_child_dialog_close = L4_1
return L0_1
