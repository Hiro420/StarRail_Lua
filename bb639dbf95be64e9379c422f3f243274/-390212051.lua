local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "Ui.RaidCollection.RaidCollectionMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RaidCollection.Widget.RaidCollectionEntranceItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RaidCollection.Widget.RaidCollectionEntranceItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RaidCollection.RaidCollectionUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.RaidCollectionUI3DPage"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.RaidCollectionModule
L1_1 = 0.6
L2_1 = {}
L3_1 = "MiniGameSpaceMainPage_SwitchToNormal"
L4_1 = "MiniGameSpaceMainPage_SwitchToHard"
L2_1[1] = L3_1
L2_1[2] = L4_1
L3_1 = "MiniGameSpaceMainPage_FadeIn"
L4_1 = "MiniGameSpaceMainPageToDialog_FadeIn"
L5_1 = "MiniGameSpaceMainPageToDialog_FadeOut"
L6_1 = 0.45
L7_1 = 0.55
L8_1 = 1.2
L9_1 = G
L9_1 = L9_1.Class
L10_1 = "RaidCollectionMainPage"
L11_1 = G
L11_1 = L11_1.UIController
L9_1 = L9_1(L10_1, L11_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RaidCollectionMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_ExitWithCut
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.TransitionStyle_EnterWithFastForward
  L1_2 = L1_2 | L2_2
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.RaidCollectionUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._ui3d = L1_2
  L1_2 = {}
  A0_2._tab_datas = L1_2
  L1_2 = {}
  A0_2._group_datas = L1_2
  A0_2._is_doing_snap = false
  A0_2._in_detail = false
  A0_2._in_fade_in = false
end
L9_1.ctor = L10_1
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  L5_2 = tonumber
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  A0_2._init_tab_id = L5_2
  A0_2._init_group_index = A2_2
  A0_2._init_collect_index = A3_2
  A0_2._play_group_unlock_index = A4_2
  L6_2 = A0_2
  L5_2 = A0_2._init_data
  L5_2(L6_2)
end
L9_1.init = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._tab_datas = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityRaidCollectionModeExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._tab_datas
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L9_1._init_data = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_show_unlock_hint
  L1_2(L2_2)
end
L9_1._on_hide_loading_page = L10_1
function L10_1(A0_2)
  local L1_2
  L1_2 = A0_2._in_detail
  if L1_2 then
    L1_2 = L4_1
    if L1_2 then
      goto lbl_8
    end
  end
  L1_2 = L3_1
  ::lbl_8::
  return L1_2
end
L9_1.get_custom_fade_in_anim_name = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideLoadingPage
  L4_2 = A0_2._on_hide_loading_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_intro
  L4_2 = A0_2._on_btn_intro
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_tab_last
  L4_2 = A0_2._on_btn_tab_last
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_tab_next
  L4_2 = A0_2._on_btn_tab_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_list_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_tab
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.RaidCollectionUtils
  L1_2 = L1_2.refresh_activity_daily_reddot
  L1_2()
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 168
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._on_fade_in_end
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._fade_in_timer = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.GetAdventureAudioManager
    L3_2 = L3_2(L4_2)
  end
  A0_2._adv_audio_mgr = L3_2
  L3_2 = A0_2._adv_audio_mgr
  if L3_2 ~= nil then
    L3_2 = A0_2._adv_audio_mgr
    L4_2 = L3_2
    L3_2 = L3_2.SwitchUIMenuBGM
    L5_2 = "None"
    L3_2(L4_2, L5_2)
  end
end
L9_1._on_load = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetAdventureAudioManager
    L2_2 = L2_2(L3_2)
  end
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.StopUIMenuBGM
    L3_2(L4_2)
  end
end
L9_1._on_dispose = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.SuperScrollView
  L1_2 = L1_2.LoopListViewInitParam
  L1_2 = L1_2.CopyDefaultInitParam
  L1_2 = L1_2()
  L1_2.mSmoothDumpRate = 0.25
  L1_2.mSnapFinishThreshold = 15
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L2_2.SnapMoveDefaultMaxAbsVec = 3400
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.SafeInitListView
  L4_2 = 0
  L5_2 = A0_2._on_item_change
  L6_2 = L1_2
  L7_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._on_snap_nearest_changed
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L2_2.mOnSnapNearestChanged = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._on_snap_item_finished
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L2_2.mOnSnapItemFinished = L3_2
end
L9_1._init_list_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
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
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
  L1_2 = ipairs
  L2_2 = A0_2._tab_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.CommonTabItem
    L9_2 = G
    L9_2 = L9_2.CommonTabItemBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L9_2 = L5_2.RaidCollectionTabName
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.setup_reddot
    L9_2 = "RaidCollectionTabNew"
    L10_2 = L5_2.RaidCollectionTabID
    L7_2(L8_2, L9_2, L10_2)
    L6_2.button_prefab_index = 0
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_tab_control
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._tab_control
    L8_2 = L7_2
    L7_2 = L7_2.add_item
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
end
L9_1._load_tab = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ui3d
  L2_2 = L1_2
  L1_2 = L1_2.play_fade_out
  L1_2(L2_2)
end
L9_1._on_start_exit = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_special_zoom_view
  L1_2(L2_2)
end
L9_1._on_return_to_top = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._in_fade_in = true
  L1_2 = A0_2._fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_tab_init_index
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._ui3d
  L3_2 = L2_2
  L2_2 = L2_2.play_fade_in
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward
  L3_2 = L2_2
  L2_2 = L2_2.setup_entry_navigation
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_enter_zoom
  L4_2 = NavigationZoneType
  L4_2 = L4_2.Zone1
  L2_2(L3_2, L4_2)
end
L9_1._setup_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._fade_in_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._fade_in_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._fade_in_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
  end
  A0_2._in_fade_in = false
end
L9_1._on_fade_in_end = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2._init_tab_id
  if L1_2 ~= nil then
    L1_2 = pairs
    L2_2 = A0_2._tab_datas
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L5_2.RaidCollectionTabID
      L7_2 = A0_2._init_tab_id
      if L6_2 == L7_2 then
        return L4_2
      end
    end
  end
  L1_2 = 1
  L2_2 = A0_2._tab_datas
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._tab_datas
    L5_2 = L5_2[L4_2]
    L6_2 = G
    L6_2 = L6_2.Utils
    L6_2 = L6_2.create_lua_table_from_cs_array
    L7_2 = L5_2.RaidCollectionGroupList
    L6_2 = L6_2(L7_2)
    L7_2 = ipairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = L0_1
      L13_2 = L12_2
      L12_2 = L12_2.GetGroupData
      L14_2 = L11_2
      L12_2 = L12_2(L13_2, L14_2)
      L12_2 = L12_2.IsFinished
      if not L12_2 then
        return L4_2
      end
    end
  end
  L1_2 = 1
  return L1_2
end
L9_1._get_tab_init_index = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._is_doing_snap = false
  A0_2._to_open_group_index = nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect
  L3_2 = L2_2
  L2_2 = L2_2.ManualStopDragging
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L2_2.IsDraging = false
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.FinishSnapImmediately
  L2_2(L3_2)
  L2_2 = A0_2._init_collect_index
  if L2_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_view
    L2_2 = L2_2.ShownItemCount
    if 0 < L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.scroll_rect
      L2_2.ForbidDrag = true
      L3_2 = A0_2
      L2_2 = A0_2._start_tab_switch
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
      return
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_bg_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_datas
  L2_2 = L2_2[A1_2]
  L4_2 = A0_2
  L3_2 = A0_2._update_group_datas
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_group_init_index
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_group_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  A0_2._init_group_index = nil
  L4_2 = A0_2._init_collect_index
  if L4_2 ~= nil then
    L4_2 = A0_2._ui3d
    L5_2 = L4_2
    L4_2 = L4_2.skip_fade_in
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._show_entrance_dialog
    L6_2 = L3_2
    L7_2 = A0_2._init_collect_index
    L8_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2)
    A0_2._init_collect_index = nil
  else
    L4_2 = A0_2._in_fade_in
    if not L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._play_tab_switch
      L6_2 = A1_2
      L4_2(L5_2, L6_2)
    end
    L5_2 = A0_2
    L4_2 = A0_2._try_play_tab_unlock
    L4_2(L5_2)
    L5_2 = A0_2
    L4_2 = A0_2._try_show_unlock_hint
    L4_2(L5_2)
  end
end
L9_1._on_tab_select = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block
  L4_2 = L7_1
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_bg_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._play_tab_switch
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._play_all_group_fade_out
  L2_2(L3_2)
  L2_2 = A0_2._group_fade_out_timer
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._add_count_down_timer
    L4_2 = A0_2._on_group_fade_out_timer
    L5_2 = 0.2
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._group_fade_out_timer = L2_2
  end
  L2_2 = A0_2._group_fade_out_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._group_fade_out_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L9_1._start_tab_switch = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._group_fade_out_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._group_fade_out_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._group_fade_out_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
  end
  L1_2 = A0_2._tab_datas
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L2_2 = L2_2.uid
  L1_2 = L1_2[L2_2]
  L3_2 = A0_2
  L2_2 = A0_2._update_group_datas
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_group_init_index
  L2_2 = L2_2(L3_2)
  A0_2._init_group_index = nil
  L4_2 = A0_2
  L3_2 = A0_2._setup_group_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._prepare_all_group_fade_in
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CoroutineUtils
  L3_2 = L3_2.InvokeAfterFrames
  L4_2 = 5
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._prepare_all_group_fade_in
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._try_play_tab_unlock
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._try_show_unlock_hint
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._play_all_group_fade_in
    L0_3(L1_3)
  end
  L3_2(L4_2, L5_2)
end
L9_1._on_group_fade_out_timer = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ipairs
  L3_2 = L2_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L5_2 ~= A1_2 then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.UIAnimationUtils
      L7_2 = L7_2.PlayToEnd
      L8_2 = A0_2._binder
      L8_2 = L8_2.animation
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = L2_1[A1_2]
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIAnimationUtils
  L3_2 = L3_2.PlayFromBegin
  L4_2 = A0_2._binder
  L4_2 = L4_2.animation
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L9_1._play_tab_switch = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._ui3d
  L3_2 = L2_2
  L2_2 = L2_2.play_switch
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.nodes_focus
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = L5_2 == A1_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.nodes_light
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = L5_2 == A1_2
    L7_2(L8_2, L9_2)
  end
end
L9_1._refresh_bg_view = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = A1_2.RaidCollectionGroupList
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  A0_2._group_datas = L3_2
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._group_datas
    L10_2 = L0_1
    L11_2 = L10_2
    L10_2 = L10_2.GetGroupData
    L12_2 = L7_2
    L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
end
L9_1._update_group_datas = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._group_datas
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._snap_to_index
  L4_2 = A1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.FinishSnapImmediately
  L2_2(L3_2)
  A0_2._snapped_index = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_checked_view
  L2_2(L3_2)
end
L9_1._setup_group_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._init_group_index
  if L1_2 ~= nil then
    L1_2 = A0_2._init_group_index
    return L1_2
  end
  L1_2 = 1
  L2_2 = A0_2._group_datas
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._group_datas
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.IsUnlocked
    if L6_2 then
      L6_2 = L5_2.IsFinished
      if not L6_2 then
        return L4_2
      end
    end
  end
  L1_2 = 1
  return L1_2
end
L9_1._get_group_init_index = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 ~= true then
    L3_2 = A0_2._snapped_index
    if A1_2 == L3_2 then
      return
    end
  end
  if A1_2 < 1 then
    A1_2 = 1
  else
    L3_2 = A0_2._group_datas
    L3_2 = #L3_2
    if A1_2 > L3_2 then
      L3_2 = A0_2._group_datas
      A1_2 = #L3_2
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.show_full_screen_block
  L5_2 = L8_1
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._snap_block_id = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view
  L4_2 = L3_2
  L3_2 = L3_2.SetSnapTargetItemIndex
  L5_2 = A1_2 - 1
  L3_2(L4_2, L5_2)
  A0_2._is_doing_snap = true
end
L9_1._snap_to_index = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_25
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.RaidCollectionEntranceItemPanel
  L8_2 = G
  L8_2 = L8_2.RaidCollectionEntranceItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  L6_2 = L4_2
  L5_2 = L4_2.register_click_callback
  L7_2 = A0_2._on_item_clicked
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  ::lbl_25::
  L5_2 = A0_2._group_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A2_2 + 1
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.reset_unlock
  L6_2(L7_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_visible
  L8_2 = A0_2._in_detail
  L8_2 = not L8_2
  L9_2 = A0_2._in_detail
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_checked
  L8_2 = A0_2._snapped_index
  L9_2 = A2_2 + 1
  L8_2 = L8_2 == L9_2
  L9_2 = false
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L9_1._on_item_change = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.index_of_item
  L3_2 = A0_2._group_datas
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._is_doing_snap
  if not L3_2 then
    L3_2 = A0_2._snapped_index
    if L2_2 == L3_2 then
      A0_2._to_open_group_index = nil
      L4_2 = A0_2
      L3_2 = A0_2._show_entrance_dialog
      L5_2 = L2_2
      L6_2 = nil
      L7_2 = false
      L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  else
    L4_2 = A0_2
    L3_2 = A0_2._snap_to_index
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L9_1._on_item_clicked = L10_1
function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2._transfer_with_select
  L6_2 = true
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_async_show
  L5_2 = "Ui.RaidCollection.RaidCollectionEntranceDialog"
  L6_2 = A0_2._group_datas
  L7_2 = A1_2
  L8_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = L4_2.LuaTable
  L6_2 = L5_2
  L5_2 = L5_2.set_exit_callback
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_checked_view
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._transfer_with_select
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L5_2(L6_2, L7_2)
end
L9_1._show_entrance_dialog = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  A0_2._in_detail = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._skip_unlock_anim
  L3_2(L4_2)
  L3_2 = ipairs
  L4_2 = A0_2._group_datas
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._snapped_index
    L8_2 = L6_2 == L8_2
    L9_2 = A0_2._binder
    L9_2 = L9_2.list_view
    L10_2 = L9_2
    L9_2 = L9_2.GetShownItemByItemIndex
    L11_2 = L6_2 - 1
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 ~= nil then
      L10_2 = L9_2.UserObjectData
      if L10_2 ~= nil then
        L10_2 = L9_2.UserObjectData
        L12_2 = L10_2
        L11_2 = L10_2.set_visible
        L13_2 = not A1_2 or L13_2
        L14_2 = A0_2._in_detail
        L11_2(L12_2, L13_2, L14_2)
      end
    end
  end
  if A1_2 then
    L3_2 = L4_1
    if L3_2 then
      goto lbl_41
    end
  end
  L3_2 = L5_1
  ::lbl_41::
  if A2_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.UIAnimationUtils
    L4_2 = L4_2.PlayToEnd
    L5_2 = A0_2._binder
    L5_2 = L5_2.animation
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = L6_1
    L6_2 = A0_2
    L5_2 = A0_2.show_full_screen_block
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.UIAnimationUtils
    L5_2 = L5_2.PlayFromBegin
    L6_2 = A0_2._binder
    L6_2 = L6_2.animation
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
  end
end
L9_1._transfer_with_select = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A2_2.ItemIndex
  L3_2 = L3_2 + 1
  L5_2 = A0_2
  L4_2 = A0_2._refresh_snapped
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  A0_2._snapped_index = L3_2
  L5_2 = A0_2
  L4_2 = A0_2.force_set_first_navigation_target
  L4_2(L5_2)
end
L9_1._on_snap_nearest_changed = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._snapped_index
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_view
    L3_2 = L2_2
    L2_2 = L2_2.GetShownItemByItemIndex
    L4_2 = A0_2._snapped_index
    L4_2 = L4_2 - 1
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= nil then
      L3_2 = L2_2.UserObjectData
      L5_2 = L3_2
      L4_2 = L3_2.set_checked
      L6_2 = false
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    L5_2 = L3_2
    L4_2 = L3_2.set_checked
    L6_2 = true
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
  end
end
L9_1._refresh_snapped = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2._group_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.list_view
    L7_2 = L6_2
    L6_2 = L6_2.GetShownItemByItemIndex
    L8_2 = L4_2 - 1
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.UserObjectData
      if L7_2 ~= nil then
        L7_2 = L6_2.UserObjectData
        L9_2 = L7_2
        L8_2 = L7_2.reset_unlock
        L8_2(L9_2)
      end
    end
  end
end
L9_1._skip_unlock_anim = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = ipairs
  L2_2 = A0_2._group_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.list_view
    L7_2 = L6_2
    L6_2 = L6_2.GetShownItemByItemIndex
    L8_2 = L4_2 - 1
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.UserObjectData
      if L7_2 ~= nil then
        L7_2 = L6_2.UserObjectData
        L9_2 = L7_2
        L8_2 = L7_2.set_checked
        L10_2 = A0_2._snapped_index
        L10_2 = L10_2 == L4_2
        L11_2 = false
        L8_2(L9_2, L10_2, L11_2)
      end
    end
  end
end
L9_1._refresh_checked_view = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._is_doing_snap = false
  L3_2 = A0_2._snap_block_id
  if L3_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_UIManager
    L4_2 = L3_2
    L3_2 = L3_2.TryUnblockFixedTime
    L5_2 = A0_2._snap_block_id
    L3_2(L4_2, L5_2)
    A0_2._snap_block_id = nil
  end
  L4_2 = A0_2
  L3_2 = A0_2._try_show_unlock_hint
  L3_2(L4_2)
  L3_2 = A0_2._to_open_group_index
  if L3_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._show_entrance_dialog
    L5_2 = A0_2._to_open_group_index
    L6_2 = nil
    L7_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2)
    A0_2._to_open_group_index = nil
  end
end
L9_1._on_snap_item_finished = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetRaidCollectionActivityData
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.ResidentActivityModule
    L3_2 = L2_2
    L2_2 = L2_2.GetResidentRaidCollectionActivityData
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
    if L1_2 == nil then
      return
    end
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.show_introduce
  L3_2 = L1_2.TagDesc
  L4_2 = L1_2.IntroDesc
  L2_2(L3_2, L4_2)
end
L9_1._on_btn_intro = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
end
L9_1._on_btn_tab_last = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
end
L9_1._on_btn_tab_next = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.IsLoading
  if L2_2 then
    return
  end
  L2_2 = A0_2._play_group_unlock_index
  L2_2 = L2_2 ~= nil
  if not L2_2 then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view
  L4_2 = L3_2
  L3_2 = L3_2.GetShownItemByItemIndex
  L5_2 = A0_2._play_group_unlock_index
  L5_2 = L5_2 - 1
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.UserObjectData
    if L4_2 ~= nil then
      goto lbl_32
    end
  end
  do return end
  ::lbl_32::
  L4_2 = L3_2.UserObjectData
  L5_2 = A0_2._snapped_index
  L6_2 = A0_2._play_group_unlock_index
  if L5_2 == L6_2 then
    L6_2 = L4_2
    L5_2 = L4_2.try_play_unlock
    L5_2(L6_2)
    A0_2._play_group_unlock_index = nil
  else
    L6_2 = L4_2
    L5_2 = L4_2.prepare_play_unlock
    L5_2(L6_2)
    L6_2 = A0_2
    L5_2 = A0_2._snap_to_index
    L7_2 = A0_2._play_group_unlock_index
    L8_2 = true
    L5_2(L6_2, L7_2, L8_2)
  end
end
L9_1._try_show_unlock_hint = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.IsLoading
  if L2_2 then
    return
  end
  L2_2 = A0_2._tab_control
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._tab_datas
  L3_2 = A0_2._tab_control
  L3_2 = L3_2.current_select_item
  L3_2 = L3_2.uid
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2.RaidCollectionTabID
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prefs
  L4_2 = L4_2.User
  L4_2 = L4_2.RaidCollectionPlayedUnlockTabIDs
  L6_2 = L4_2
  L5_2 = L4_2.Contains
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L6_2 = L4_2
    L5_2 = L4_2.Add
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L5_2 = ipairs
    L6_2 = A0_2._group_datas
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L11_2 = L9_2
      L10_2 = L9_2.GetFinishedCollectionCount
      L10_2 = L10_2(L11_2)
      if 0 < L10_2 then
        return
      end
    end
    L6_2 = A0_2
    L5_2 = A0_2._play_all_group_unlock
    L5_2(L6_2)
  end
end
L9_1._try_play_tab_unlock = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._group_datas
  L1_2 = #L1_2
  A0_2._tab_unlock_counter = L1_2
  L1_2 = A0_2._tab_unlock_timer
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._add_count_down_timer
    L3_2 = A0_2._on_tab_play_single_unlock
    L4_2 = 0.1
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._tab_unlock_timer = L1_2
  end
  L1_2 = A0_2._tab_unlock_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._tab_unlock_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L9_1._play_all_group_unlock = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._tab_unlock_counter
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_unlock_counter
    if not (L1_2 <= 0) then
      goto lbl_17
    end
  end
  L1_2 = A0_2._tab_unlock_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_unlock_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
    L1_2 = A0_2._tab_unlock_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
  end
  do return end
  ::lbl_17::
  L1_2 = A0_2._group_datas
  L1_2 = #L1_2
  L2_2 = A0_2._tab_unlock_counter
  L1_2 = L1_2 - L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    if L3_2 ~= nil then
      L3_2 = L2_2.UserObjectData
      L5_2 = L3_2
      L4_2 = L3_2.try_play_unlock
      L6_2 = true
      L4_2(L5_2, L6_2)
    end
  end
  L3_2 = A0_2._tab_unlock_counter
  L3_2 = L3_2 - 1
  A0_2._tab_unlock_counter = L3_2
end
L9_1._on_tab_play_single_unlock = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._group_datas
  L1_2 = #L1_2
  A0_2._group_fade_in_counter = L1_2
  L1_2 = A0_2._group_fade_in_timer
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._add_count_down_timer
    L3_2 = A0_2._on_group_fade_in_timer
    L4_2 = 0.1
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._group_fade_in_timer = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_group_fade_in_timer
  L1_2(L2_2)
  L1_2 = A0_2._group_fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._group_fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L9_1._play_all_group_fade_in = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._group_fade_in_counter
  if L1_2 ~= nil then
    L1_2 = A0_2._group_fade_in_counter
    if not (L1_2 <= 0) then
      goto lbl_20
    end
  end
  L1_2 = A0_2._group_fade_in_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._group_fade_in_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
    L1_2 = A0_2._group_fade_in_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2.ForbidDrag = false
  do return end
  ::lbl_20::
  L1_2 = A0_2._group_datas
  L1_2 = #L1_2
  L2_2 = A0_2._group_fade_in_counter
  L1_2 = L1_2 - L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    if L3_2 ~= nil then
      L3_2 = L2_2.UserObjectData
      L5_2 = L3_2
      L4_2 = L3_2.play_fade_in
      L4_2(L5_2)
    end
  end
  L3_2 = A0_2._group_fade_in_counter
  L3_2 = L3_2 - 1
  A0_2._group_fade_in_counter = L3_2
end
L9_1._on_group_fade_in_timer = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = ipairs
  L2_2 = A0_2._group_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.list_view
    L7_2 = L6_2
    L6_2 = L6_2.GetShownItemByItemIndex
    L8_2 = L4_2 - 1
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.UserObjectData
      if L7_2 ~= nil then
        L7_2 = L6_2.UserObjectData
        L9_2 = L7_2
        L8_2 = L7_2.prepare_fade_in
        L8_2(L9_2)
        L9_2 = L7_2
        L8_2 = L7_2.set_checked
        L10_2 = A0_2._snapped_index
        L10_2 = L10_2 == L4_2
        L11_2 = false
        L8_2(L9_2, L10_2, L11_2)
      end
    end
  end
end
L9_1._prepare_all_group_fade_in = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2._group_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.list_view
    L7_2 = L6_2
    L6_2 = L6_2.GetShownItemByItemIndex
    L8_2 = L4_2 - 1
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.UserObjectData
      if L7_2 ~= nil then
        L7_2 = L6_2.UserObjectData
        L9_2 = L7_2
        L8_2 = L7_2.play_fade_out
        L8_2(L9_2)
      end
    end
  end
end
L9_1._play_all_group_fade_out = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.get_zoom_navigation_target
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L9_1._on_enter_zoom = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._snapped_index
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      goto lbl_14
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_14::
  L2_2 = L1_2.UserObjectData
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_object
  return L2_2(L3_2)
end
L9_1.get_first_selected_object = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_special_zoom_view
  L1_2(L2_2)
end
L9_1._on_enter_special_zoom = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_special_zoom_view
  L1_2(L2_2)
end
L9_1._on_leave_special_zoom = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.nodes_not_in_special_zoom
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = G
    L8_2 = L8_2.Utils
    L8_2 = L8_2.is_gamepad_input
    L8_2 = L8_2()
    L9_2 = A0_2
    L8_2 = A0_2.is_in_special_zoom
    L8_2 = L8_2(L9_2)
    L8_2 = not L8_2 or L8_2
    L6_2(L7_2, L8_2)
  end
end
L9_1._refresh_special_zoom_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = 31
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = 168
    L1_2(L2_2, L3_2)
  end
end
L9_1._refresh_short_cut_hint = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_in_special_zoom
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.DPadLeft
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._snap_to_index
    L4_2 = A0_2._snapped_index
    L4_2 = L4_2 - 1
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.DPadRight
    L2_2 = #L2_2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._snap_to_index
      L4_2 = A0_2._snapped_index
      L4_2 = L4_2 + 1
      L2_2(L3_2, L4_2)
    end
  end
end
L9_1._on_in_control_click = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2.is_top_page_or_dialog
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.is_in_special_zoom
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L3_2 = A0_2._wait_in_control_release
  if L3_2 then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickLeft
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L3_2 = L1_1
    if A2_2 > L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._snap_to_index
      L5_2 = A0_2._snapped_index
      L5_2 = L5_2 - 1
      L3_2(L4_2, L5_2)
      A0_2._wait_in_control_release = true
  end
  else
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.LeftStickRight
    L3_2 = #L3_2
    if A1_2 == L3_2 then
      L3_2 = L1_1
      if A2_2 > L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._snap_to_index
        L5_2 = A0_2._snapped_index
        L5_2 = L5_2 + 1
        L3_2(L4_2, L5_2)
        A0_2._wait_in_control_release = true
      end
    end
  end
end
L9_1._on_in_control_press = L10_1
function L10_1(A0_2, A1_2)
  local L2_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftStickUp
  L2_2 = #L2_2
  if A1_2 ~= L2_2 then
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.LeftStickDown
    L2_2 = #L2_2
    if A1_2 ~= L2_2 then
      L2_2 = CS
      L2_2 = L2_2.InControl
      L2_2 = L2_2.InputControlType
      L2_2 = L2_2.LeftStickLeft
      L2_2 = #L2_2
      if A1_2 ~= L2_2 then
        L2_2 = CS
        L2_2 = L2_2.InControl
        L2_2 = L2_2.InputControlType
        L2_2 = L2_2.LeftStickRight
        L2_2 = #L2_2
        if A1_2 ~= L2_2 then
          return
        end
      end
    end
  end
  A0_2._wait_in_control_release = false
end
L9_1._on_in_control_released = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._wait_in_control_release = false
  L3_2 = A0_2
  L2_2 = A0_2._refresh_special_zoom_view
  L2_2(L3_2)
end
L9_1._on_in_control_input_switch = L10_1
return L9_1
