local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = "#383434"
L1_1 = "UIText_Activity_Museum_MainPageInfo_Title"
L2_1 = "UIText_Activity_Museum_MainPageInfo_Content"
L3_1 = "UIText_ActivityMuseum_MarketLockTip"
L4_1 = "UIText_ActivityMuseum_AtlasLockTip"
L5_1 = 1
L6_1 = 31
L7_1 = "MuseumMissionStart"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.Client
L8_1 = L8_1.GlobalVars
L8_1 = L8_1.s_ModuleManager
L8_1 = L8_1.MuseumModule
L9_1 = G
L9_1 = L9_1.Class
L10_1 = "MuseumEntranceFunctionPanel"
L11_1 = G
L11_1 = L11_1.BasePanel
L9_1 = L9_1(L10_1, L11_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumDataRefresh
  L4_2 = A0_2._on_museum_data_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_atlas_ending
  L4_2 = A0_2._on_btn_ending
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_config_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_click_callback
  L3_2 = A0_2._on_btn_config
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_config_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_on_select_callback
  L3_2 = A0_2._on_btn_select
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_config_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "MuseumMainPageEntrance"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_atlas_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_click_callback
  L3_2 = A0_2._on_btn_atlas
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_atlas_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_on_select_callback
  L3_2 = A0_2._on_btn_select
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_atlas_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_disable_hint_text_id
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_market_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_click_callback
  L3_2 = A0_2._on_btn_market
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_market_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_on_select_callback
  L3_2 = A0_2._on_btn_select
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_market_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_disable_hint_text_id
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_market_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "MuseumMarket"
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "MuseumAtlasCollectReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot_btn_atlas
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "MuseumAtlasCollectReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot_btn_atlas_ending
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L9_1._on_load = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._museum_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L9_1.setup_view = L10_1
function L10_1(A0_2, A1_2, A2_2)
  A0_2._config_callback = A1_2
  A0_2._config_callback_listener = A2_2
end
L9_1.set_config_callback = L10_1
function L10_1(A0_2, A1_2, A2_2)
  A0_2._page_exit_callback = A1_2
  A0_2._page_exit_callback_listener = A2_2
end
L9_1.set_page_exit_callback = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_config_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L9_1.get_first_selected_object = L10_1
function L10_1(A0_2)
  local L1_2
  A0_2._museum_data = nil
end
L9_1._on_dispose = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L8_1.IsAllFinish
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_end_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_normal_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_basic_info
  L2_2(L3_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_ending_panel
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_normal_panel
    L2_2(L3_2)
  end
end
L9_1._refresh = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_sub_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._museum_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.PhaseName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.phase_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._museum_data
  L3_2 = L3_2.Row
  L1_2(L2_2, L3_2)
end
L9_1._setup_basic_info = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_ending
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityMuseum_EndPageContent"
  L4_2 = A0_2._museum_data
  L4_2 = L4_2.FinishTurnCount
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_btn_ending
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Activity_Museum_MainPage_ManagementBtn"
  L1_2(L2_2, L3_2)
  L1_2 = L8_1.MuseumAvatarCount
  L2_2 = L8_1.UnlockAvatarCount
  L1_2 = L1_2 - L2_2
  L2_2 = L8_1.ExhibitItemCount
  L3_2 = L8_1.UnlockExhibitItemCount
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_ending_mission
  L3_2 = L3_2.gameObject
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = 0 < L1_2 or 0 < L2_2
  L3_2(L4_2, L5_2)
  if 0 < L1_2 and 0 < L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_ending_mission
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ActivityMuseum_EndPageMissionContent"
    L6_2 = L2_2
    L7_2 = L1_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  elseif 0 < L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_ending_mission
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ActivityMuseum_EndPageMissionItem"
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  elseif 0 < L1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_ending_mission
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ActivityMuseum_EndPageMissionStuff"
    L6_2 = L1_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L9_1._setup_ending_panel = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.renew_point_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_show_max_bar
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.renew_point_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._museum_data
  L3_2 = L3_2.RenewPointData
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buttons
  L1_2(L2_2)
end
L9_1._setup_normal_panel = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L8_1
  L2_2 = L1_2
  L1_2 = L1_2.IsChapterMissionReachLimit
  L1_2 = L1_2(L2_2)
  L2_2 = L8_1.IsConfigLocked
  if L2_2 then
    L2_2 = L8_1
    L3_2 = L2_2
    L2_2 = L2_2.HaveHidePhaseMission
    L2_2 = L2_2(L3_2)
  end
  L2_2 = not L2_2 or L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_config_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_enable
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.mission_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = L8_1.IsConfigLocked
    if L3_2 then
      L3_2 = L8_1
      L4_2 = L3_2
      L3_2 = L3_2.HaveHidePhaseMission
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.mission_panel
        L4_2 = L3_2
        L3_2 = L3_2.setup_view
        L5_2 = L8_1.CurConfigLockMissionData
        L5_2 = L5_2.ID
        L3_2(L4_2, L5_2)
    end
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.mission_panel
      L4_2 = L3_2
      L3_2 = L3_2.setup_reach_limit_view
      L3_2(L4_2)
    end
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_config_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_round_info
    L5_2 = A0_2._museum_data
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_atlas_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_lock
  L5_2 = L8_1.IsAtlasUnlock
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.reddot_btn_atlas
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L8_1.IsAtlasUnlock
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_market_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_lock
  L5_2 = L8_1.IsMarketUnlock
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_atlas_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_mission_count
  L5_2 = L8_1.TakenMissionCount
  L3_2(L4_2, L5_2)
end
L9_1._setup_buttons = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._museum_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L9_1._on_museum_data_refresh = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = L8_1
  L2_2 = L1_2
  L1_2 = L1_2.HaveHidePhaseMission
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._config_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._config_callback
    L2_2 = A0_2._config_callback_listener
    L1_2(L2_2)
  end
end
L9_1._on_btn_config = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Museum.MuseumAtlasPage"
  L1_2(L2_2)
end
L9_1._on_btn_atlas = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._config_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._config_callback
    L2_2 = A0_2._config_callback_listener
    L1_2(L2_2)
  end
end
L9_1._on_btn_ending = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L8_1
  L2_2 = L1_2
  L1_2 = L1_2.RefreshStaffAvailable
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.ThenLuaAction
  function L4_2()
    local L0_3, L1_3
    L0_3 = G
    L0_3 = L0_3.UIManager
    L0_3 = L0_3.load_and_async_show
    L1_3 = "Ui.Museum.MuseumMarketPage"
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
end
L9_1._on_btn_market = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._exit_page
  L1_2(L2_2)
end
L9_1._on_btn_close = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._page_exit_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._page_exit_callback
    L2_2 = A0_2._page_exit_callback_listener
    L1_2(L2_2)
  end
end
L9_1._exit_page = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.save_navigation_target
  L5_2 = A1_2
  L4_2 = A1_2.get_first_selected_object
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.mission_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_mono_in_control_tip_active
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_config_panel
  L5_2 = A1_2
  L4_2 = A1_2.is_btn_enable
  L4_2 = L4_2(L5_2)
  L4_2 = A1_2 == L4_2 and L4_2
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2.is_btn_enable
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = L6_1
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = L5_1
    L2_2(L3_2, L4_2)
  end
end
L9_1._on_btn_select = L10_1
return L9_1
