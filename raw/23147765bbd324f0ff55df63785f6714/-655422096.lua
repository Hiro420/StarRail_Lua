local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.DrinkMakerBarUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Entrance.Components.DrinkMakerBartendProcessHandler"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Entrance.Components.DrinkMakerMainEntranceGuestPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Entrance.DrinkMakerMainEntrancePageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerMainEntrancePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.DrinkMakerModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.OfferingModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ConstValueClientExcelTable
L4_1 = L4_1.GetData
L5_1 = "DrinkMaker_WorkBookUnlocked_MainMissionID"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L4_1 = L4_1.UintValue
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ConstValueClientExcelTable
L5_1 = L5_1.GetData
L6_1 = "DrinkMaker_ChallengeModeUnlocked_MainMissionID"
L5_1 = L5_1(L6_1)
L5_1 = L5_1.Value
L5_1 = L5_1.UintValue
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.ConstValueClientExcelTable
L6_1 = L6_1.GetData
L7_1 = "DrinkMaker_TipsUnlocked_MainMissionID"
L6_1 = L6_1(L7_1)
L6_1 = L6_1.Value
L6_1 = L6_1.UintValue
L7_1 = "UIText_DrinkMaker_EntranceLock"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.DrinkMakerMainEntrancePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveBlack
  A0_2._transition_style = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._is_inited = false
end
L0_1.ctor = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DrinkMakerChallengeFinish
  L4_2 = A0_2._on_challenge_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnActivityEnd
  L4_2 = A0_2._on_activity_end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetDrinkMakerActivityData
  L1_2 = L1_2(L2_2)
  A0_2._activity_data = L1_2
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.close_waypoint_billboard
  L1_2()
end
L0_1.init = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_book
  L4_2 = A0_2._on_btn_book_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_challenge
  L4_2 = A0_2._on_btn_challenge_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_tip
  L4_2 = A0_2._on_btn_tip_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_drink
  L4_2 = A0_2._on_btn_drink_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_book
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_book
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_challenge
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_challenge
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_tip
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_tip
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_drink
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_drink
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.DrinkMakerMainEntranceGuestPanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerMainEntranceGuestPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._panel_guest = L1_2
  L1_2 = A0_2._panel_guest
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_guest_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.DrinkMakerBartendProcessHandler
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_handler = L1_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.DrinkMakerOnMainEntrancePageOpen
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "Menu_Confirm"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1.IsDataPrepared
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.show_full_screen_block_for_packet
    L3_2 = CS
    L3_2 = L3_2.PBIBDHBOIGI
    L3_2 = L3_2.CBFMICELIOG
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._add_packet_handler
    L3_2 = CS
    L3_2 = L3_2.PBIBDHBOIGI
    L3_2 = L3_2.CBFMICELIOG
    L4_2 = L0_1._on_get_drink_maker_data_rsp
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2.set_view_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_view_when_data_ready
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._init_ui_navigation
    L1_2(L2_2)
  end
end
L0_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.reopen_waypoint_billboard
  L1_2()
end
L0_1._on_dispose = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_view_when_data_ready
  L1_2(L2_2)
end
L0_1._on_return_to_top = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L8_1
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
  local L1_2, L2_2
  L1_2 = A0_2._panel_guest
  L2_2 = L1_2
  L1_2 = L1_2.get_root_btn
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.set_view_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_guest_panel_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_unlock_panel_view
  L3_2 = L4_1
  L4_2 = nil
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_book_lock
  L6_2 = A0_2._setup_book_panel_view
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_unlock_panel_view
  L3_2 = L5_1
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_challenge_progress
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_challenge_lock
  L6_2 = A0_2._setup_challenge_panel_view
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_unlock_panel_view
  L3_2 = L6_1
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tip_progress
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tip_lock
  L6_2 = A0_2._setup_tip_panel_view
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_drink_panel_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_view_when_data_ready = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_guest
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._setup_guest_panel_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._is_book_unlock = true
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAllGuestsData
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = #L1_2
  L3_2 = 0
  L4_2 = ipairs
  L5_2 = L1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.IsFinish
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L3_2 = L3_2 + 1
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_work_book_progress
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L3_2
  L7_2 = "/"
  L8_2 = L2_2
  L6_2 = L6_2 .. L7_2 .. L8_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.RedDotModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.bind_reddot
  L6_2 = "DrinkMakerWorkBookEntrance"
  L7_2 = nil
  L8_2 = A0_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_book_reddot
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._setup_book_panel_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._is_challenge_unlock = true
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetFinishChallengeCount
  L1_2 = L1_2(L2_2)
  L2_2 = L2_1.DrinkMakerBarChallenges
  L2_2 = L2_2.Count
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_challenge_progress
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2
  L6_2 = "/"
  L7_2 = L2_2
  L5_2 = L5_2 .. L6_2 .. L7_2
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "DrinkMakerChallengeEntrance"
  L6_2 = nil
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_challenge_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._setup_challenge_panel_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._is_tips_unlock = true
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.GetOfferingRewardData
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.DrinkMakerModule
  L3_2 = L3_2.OFFER_TYPE
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_reward_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.Level
  L5_2 = "/"
  L6_2 = L1_2.MaxLevel
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "DrinkMakerOfferEntrance"
  L5_2 = nil
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_tip_reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_tip_panel_view = L8_1
function L8_1(A0_2)
  local L1_2
end
L0_1._setup_drink_panel_view = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  if A2_2 ~= nil then
    L6_2 = A2_2
    L5_2 = A2_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
  L6_2 = A3_2
  L5_2 = A3_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.GetMainMissionDataWithPromise
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2
  L5_2 = L5_2.ThenLuaActionOneParam
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 ~= nil then
      L1_3 = A0_2._binder
      if L1_3 then
        L1_3 = A0_3.IsFinish
        if L1_3 then
          L1_3 = A2_2
          if L1_3 ~= nil then
            L1_3 = A2_2
            L2_3 = L1_3
            L1_3 = L1_3.SafeSetActive
            L3_3 = true
            L1_3(L2_3, L3_3)
          end
          L1_3 = A3_2
          L2_3 = L1_3
          L1_3 = L1_3.SafeSetActive
          L3_3 = false
          L1_3(L2_3, L3_3)
          L1_3 = A4_2
          L2_3 = A0_2
          L1_3(L2_3)
        end
      end
    end
  end
  L5_2(L6_2, L7_2)
end
L0_1._setup_unlock_panel_view = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetMainMissionRow
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = G
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = L2_2.Name
    L3_2 = L3_2(L4_2)
    L4_2 = G
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = L7_1
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = G
    L5_2 = L5_2.NotifyManager
    L5_2 = L5_2.notify
    L6_2 = G
    L6_2 = L6_2.CS
    L6_2 = L6_2.NotifyType
    L6_2 = L6_2.UICenterToastMessageString
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._show_toast = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_view_when_data_ready
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_ui_navigation
  L2_2(L3_2)
end
L0_1._on_get_drink_maker_data_rsp = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_book_unlock
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.DrinkMaker.WorkBook.DrinkMakerWorkBookPage"
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._show_toast
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_book_clicked = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_challenge_unlock
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.DrinkMaker.Challenge.DrinkMakerChallengeDialog"
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._show_toast
    L3_2 = L5_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_challenge_clicked = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_tips_unlock
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.DrinkMaker.Offering.DrinkMakerOfferingPage"
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._show_toast
    L3_2 = L6_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_tip_clicked = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.DrinkMaker.Handbook.DrinkMakerHandbookDialog"
  L1_2(L2_2)
end
L0_1._on_btn_drink_clicked = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_challenge_panel_view
  L1_2(L2_2)
end
L0_1._on_challenge_finish = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._activity_data
  if L2_2 ~= nil then
    L2_2 = A0_2._activity_data
    L2_2 = L2_2.PanelID
    if A1_2 == L2_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L3_2 = A0_2
  L2_2 = A0_2._init_ui_navigation
  L2_2(L3_2)
end
L0_1._on_activity_end = L8_1
return L0_1
