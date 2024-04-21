local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.PreviewMonsterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusChallengeUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusChallengeDetailTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusFarmCocoonPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusFarmCocoonPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeliobusFarmCocoonPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_save_by_click = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
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
  A0_2._challenge_panels = L1_2
  L1_2 = {}
  A0_2._challenge_target_object = L1_2
  L1_2 = {}
  A0_2._challenge_tab_items = L1_2
  L1_2 = {}
  A0_2._reward_btns = L1_2
  A0_2._has_unlock_anim_played = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureCharacterController
  L1_2.AllowPlayIdleShow = false
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._challenge_group_id = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusChallengeGroupExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._challenge_group_id
  L2_2 = L2_2(L3_2)
  A0_2._challenge_row = L2_2
  L2_2 = L1_1.HeliobusRedDotFilter
  L2_2 = L2_2.HeliobusNewUnlockChallengeGroupLevel
  L3_2 = {}
  A0_2._new_unlock_challenge_ids = L3_2
  L4_2 = L2_2
  L3_2 = L2_2.ContainsKey
  L5_2 = A0_2._challenge_group_id
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.create_lua_table_from_cs_list
    L4_2 = A0_2._challenge_group_id
    L4_2 = L2_2[L4_2]
    L3_2 = L3_2(L4_2)
    A0_2._new_unlock_challenge_ids = L3_2
  end
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rule
  L4_2 = A0_2._on_btn_rule
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_challenge
  L4_2 = A0_2._on_btn_challenge
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_reward_list_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.PreviewMonsterPanel
  L4_2 = G
  L4_2 = L4_2.PreviewMonsterPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._monster_preview_panel = L1_2
  L1_2 = A0_2._monster_preview_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_monster_panel
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "HeliobusChallengeReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reward_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = "ChallengeLevelPage_FadeIn"
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fade_in_anim_finished
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "Menu_Confirm"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureCharacterController
  L1_2.AllowPlayIdleShow = true
end
L0_1._on_dispose = L2_1
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
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2._get_zoom2_first_selected_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftStickButton
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = A0_2._tab_control
    L2_2 = L2_2.current_select_item
    L3_2 = L2_2
    L2_2 = L2_2.show_reward_info_dialog
    L2_2(L3_2)
  end
end
L0_1._on_in_control_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_monster_exist
  if L1_2 then
    L1_2 = A0_2._monster_preview_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  else
    L1_2 = A0_2._reward_btns
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = A0_2._reward_btns
      L1_2 = L1_2[1]
      return L1_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1._get_zoom2_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_tab_btn_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._challenge_target_object
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.target_prefab
    L3_2 = L3_2.Prefab
    L5_2 = A0_2
    L4_2 = A0_2.instantiate_object
    L6_2 = L3_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.target_prefab
    L7_2 = L7_2.transform
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L2_2 = L4_2
    L4_2 = A0_2._challenge_target_object
    L4_2[A1_2] = L2_2
  end
  return L2_2
end
L0_1.get_challenge_target_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_challenge
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_warning_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_challenge
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_challenge_button_state = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2 ~= nil
  A0_2._is_monster_exist = L3_2
  L3_2 = A0_2._monster_preview_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.set_challenge_monster_info = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._reward_item_table = A1_2
  A0_2._is_cur_challenge_finished = A2_2
  L3_2 = {}
  A0_2._reward_btns = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_list
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._reward_item_table
  L5_2 = #L5_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_list
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
end
L0_1.set_challenge_reward_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = A0_2._reward_btns
  L3_2 = A0_2._monster_preview_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_all_monster_btns
  L3_2 = L3_2(L4_2)
  if L2_2 ~= nil then
    L4_2 = #L2_2
    if L4_2 ~= 0 and L3_2 ~= nil then
      L4_2 = #L3_2
      if L4_2 ~= nil then
        goto lbl_17
      end
    end
  end
  do return end
  ::lbl_17::
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
L0_1.rebuild_challenge_detail_panel_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_max_unlock_stage_index
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_ui_navigation
  L2_2(L3_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
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
  L3_2 = L3_2.node_tab_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_stage_items
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
end
L0_1._init_tab_control = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._challenge_row
  L2_2 = L2_2.ChallengeStageList
  L1_2 = L1_2(L2_2)
  A0_2._challenge_id_list = L1_2
  L1_2 = 1
  L2_2 = A0_2._challenge_id_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._challenge_id_list
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._challenge_id_list
    L7_2 = L4_2 - 1
    L6_2 = L6_2[L7_2]
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.HeliobusChallengeDetailTabItem
    L10_2 = G
    L10_2 = L10_2.HeliobusChallengeDetailTabItemBinder
    L11_2 = L5_2
    L12_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L9_2 = L7_2
    L8_2 = L7_2.bind
    L10_2 = A0_2._binder
    L10_2 = L10_2.node_challenge_detail
    L8_2(L9_2, L10_2)
    L8_2 = ipairs
    L9_2 = A0_2._new_unlock_challenge_ids
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    for L11_2, L12_2 in L8_2, L9_2, L10_2 do
      if L12_2 == L5_2 then
        L14_2 = L7_2
        L13_2 = L7_2.mark_should_play_unlock_anim
        L13_2(L14_2)
      end
    end
    L8_2 = A0_2._tab_control
    L9_2 = L8_2
    L8_2 = L8_2.add_item
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._challenge_tab_items
    L8_2[L4_2] = L7_2
  end
end
L0_1._init_stage_items = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = 1
  L3_2 = A0_2._challenge_tab_items
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._challenge_tab_items
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.is_unlock
    if L7_2 then
      L1_2 = L5_2
    else
      break
    end
  end
  return L1_2
end
L0_1._get_max_unlock_stage_index = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_btn_rule = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.HeliobusChallengeUtils
  L1_2 = L1_2.get_heliobus_challenge_detail_data_from_stage
  L2_2 = A0_2._challenge_group_id
  L3_2 = A0_2._tab_control
  L3_2 = L3_2.current_select_item
  L3_2 = L3_2.uid
  L4_2 = A0_2._tab_control
  L4_2 = L4_2.current_select_item
  L4_2 = L4_2.challenge_id
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Heliobus.Challenge.HeliobusChallengeDetailPage"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_challenge = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2.__name
  L3_2 = ""
  L4_2 = "HeliobusChallengeReward"
  L5_2 = A0_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Heliobus.Challenge.HeliobusChallengeRewardDialog"
  L3_2 = A0_2._challenge_group_id
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_reward = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
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
  end
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = A0_2._reward_btns
  L8_2 = L4_2
  L7_2 = L4_2.get_btn
  L7_2, L8_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._reward_item_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ItemID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2.Count
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_attachment_getted
  L8_2 = A0_2._is_cur_challenge_finished
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_reward_list_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._challenge_tab_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._has_unlock_anim_played
    if not L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.try_play_unlock_anim
      L6_2(L7_2)
    else
      L7_2 = L5_2
      L6_2 = L5_2.reset_view
      L6_2(L7_2)
    end
  end
  A0_2._has_unlock_anim_played = true
end
L0_1._on_fade_in_anim_finished = L2_1
return L0_1
