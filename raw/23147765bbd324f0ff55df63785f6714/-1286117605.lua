local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusChallengeUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusChallengeRaidPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusChallengeRaidPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusChallengeRaidPage"
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
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeliobusChallengeRaidPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2.cur_select_panel = nil
  L1_2 = {}
  A0_2._raid_panels = L1_2
  L1_2 = {}
  A0_2._raid_btns = L1_2
  L1_2 = {}
  A0_2._new_unlock_raid_ids = L1_2
  A0_2._has_fade_in_anim_played = false
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1.ChallengeRaidList
  L1_2 = L1_2(L2_2)
  A0_2._challenge_raid_list = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetNewUnlockChallengeRaidLevel
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._new_unlock_raid_ids = L1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = 1
  L2_2 = A0_2._challenge_raid_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.HeliobusChallengeRaidPanel
    L8_2 = G
    L8_2 = L8_2.HeliobusChallengeRaidPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_raid_list
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._raid_panels
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._raid_btns
    L9_2 = L5_2
    L8_2 = L5_2.get_root_btn
    L8_2, L9_2 = L8_2(L9_2)
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._raid_btns
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = "HeliobusChallengeMissionPage_FadeIn"
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._has_fade_in_anim_played
      if not L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._on_fade_in_anim_finished
        L0_3(L1_3)
      end
    end
  end
  L1_2(L2_2, L3_2, L4_2)
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
end
L0_1._on_load = L2_1
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
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_default_panel_index
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._raid_panels
  L2_2 = L2_2[L1_2]
  A0_2.cur_select_panel = L2_2
  L3_2 = A0_2.cur_select_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_in_control_button_enable
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.get_root_btn
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.gameObject
  return L3_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftStickButton
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = A0_2.cur_select_panel
    if L2_2 ~= nil then
      L2_2 = A0_2.cur_select_panel
      L3_2 = L2_2
      L2_2 = L2_2.show_reward_info_dialog
      L2_2(L3_2)
    end
  end
end
L0_1._on_in_control_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = 1
  L3_2 = A0_2._raid_panels
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._raid_panels
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.get_panel_state
    L7_2, L8_2 = L7_2(L8_2)
    if L7_2 then
      L1_2 = L5_2
      if not L8_2 then
        return L5_2
      end
    end
  end
  return L1_2
end
L0_1._get_default_panel_index = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._raid_panels = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = 1
  L2_2 = A0_2._raid_panels
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._raid_panels
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._challenge_raid_list
    L6_2 = L6_2[L4_2]
    L8_2 = L5_2
    L7_2 = L5_2.register_on_click_callback
    L9_2 = A0_2._on_btn_go_click
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = ipairs
    L8_2 = A0_2._new_unlock_raid_ids
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = CS
      L12_2 = L12_2.RPG
      L12_2 = L12_2.GameCore
      L12_2 = L12_2.HeliobusChallengeRaidExcelTable
      L12_2 = L12_2.GetData
      L13_2 = L6_2
      L12_2 = L12_2(L13_2)
      L13_2 = L12_2.RaidID
      if L11_2 == L13_2 then
        L14_2 = L5_2
        L13_2 = L5_2.mark_should_play_unlock_anim
        L13_2(L14_2)
      end
    end
    L8_2 = L5_2
    L7_2 = L5_2.setup_view
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
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
  L1_2(L2_2)
end
L0_1._on_btn_reward = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = G
  L3_2 = L3_2.HeliobusChallengeUtils
  L3_2 = L3_2.get_heliobus_challenge_detail_data_from_raid
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_async_show
  L5_2 = "Ui.Heliobus.Challenge.HeliobusChallengeDetailPage"
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.TryMarkChallengeRaidLevelSeen
  L6_2 = A1_2.Row
  L6_2 = L6_2.RaidID
  L4_2(L5_2, L6_2)
end
L0_1._on_btn_go_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._has_fade_in_anim_played = true
  L1_2 = ipairs
  L2_2 = A0_2._raid_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.try_play_unlock_anim
    L6_2(L7_2)
  end
end
L0_1._on_fade_in_anim_finished = L2_1
return L0_1
