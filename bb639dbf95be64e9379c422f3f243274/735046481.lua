local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.DailyMission.HandbookPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.HandbookPhaseTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.HandbookPhaseTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.HandbookDailyTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.HandbookDailyTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.HandbookBattleCollegeTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.HandbookBattleCollegeTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Guide.HandbookGuideTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Guide.HandbookGuideTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.HandbookChallengeTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.HandbookChallengeTabItemBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.HandbookModule
L1_1 = "DailyMissionPage_IntroducePanelFadeOut"
L2_1 = {}
L2_1.Phase = 1
L2_1.Daily = 2
L2_1.Guide = 3
L2_1.College = 4
L2_1.Challenge = 5
L3_1 = 9902
L4_1 = 9901
L5_1 = 9903
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.ConstValueClientExcelTable
L6_1 = L6_1.GetData
L7_1 = "BattleCollege_UnlockID"
L6_1 = L6_1(L7_1)
L6_1 = L6_1.Value
L6_1 = L6_1.IntValue
L7_1 = G
L7_1 = L7_1.Class
L8_1 = "HandbookPage"
L9_1 = G
L9_1 = L9_1.UIController
L7_1 = L7_1(L8_1, L9_1)
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HandbookPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._tab_current_index = 0
  A0_2._initial_index_processed = nil
  A0_2._is_flyleaf_shown = false
  L1_2 = {}
  A0_2._type_to_index = L1_2
  L1_2 = {}
  A0_2._tab_to_title_id = L1_2
  A0_2._is_save_by_click = false
  A0_2._enable_inner_goto = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
end
L7_1.ctor = L8_1
function L8_1(A0_2, A1_2, ...)
  local L2_2, L3_2
  A0_2._inital_tab_type = A1_2
  L2_2, L3_2 = ...
  A0_2._init_param1 = L3_2
  A0_2._init_param = L2_2
end
L7_1.init = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_flyleaf
  L4_2 = A0_2._on_btn_flyleaf
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_book
  L4_2 = A0_2._on_btn_book
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_intro
  L4_2 = A0_2._report_btn_intro
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L1_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_flyleaf_fade_out_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_detect_block
  L2_2 = L1_2
  L1_2 = L1_2.AddActiveListener
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._reset_navigation_target
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L7_1._on_load = L8_1
function L8_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.find_item
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.set_init_param
    if L3_2 ~= nil then
      L4_2 = L2_2
      L3_2 = L2_2.set_init_param
      L5_2 = ...
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.click_item_by_uid
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L7_1._do_inner_goto = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L1_2 = L1_2._on_top_page
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    L2_2 = L1_2
    L1_2 = L1_2._on_top_page
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_control_tip
  L1_2(L2_2)
end
L7_1._on_return_to_top = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L1_2 = L1_2._on_first_child_dialog_close
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    L2_2 = L1_2
    L1_2 = L1_2._on_first_child_dialog_close
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_control_tip
  L1_2(L2_2)
end
L7_1._on_first_child_dialog_close = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L7_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_phase_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_daily_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_guide_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_challenge_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_battle_college_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_index
  L1_2(L2_2)
  L1_2 = A0_2._tab_current_index
  A0_2._initial_index_processed = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.find_item
  L3_2 = A0_2._tab_current_index
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.set_init_param
    if L2_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.set_init_param
      L4_2 = A0_2._init_param
      L5_2 = A0_2._init_param1
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.update_layout
  L2_2(L3_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = A0_2._tab_current_index
  L2_2(L3_2, L4_2)
end
L7_1._init_tab_control = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SystemOpenModule
  L1_2 = L1_2.IsOpen
  L2_2 = L3_1
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HandbookPhaseTabItem
  L4_2 = G
  L4_2 = L4_2.HandbookPhaseTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.set_async_bind_parent
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_phase
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._type_to_index
  L3_2 = L2_1.Phase
  L4_2 = L1_2.uid
  L2_2[L3_2] = L4_2
  L2_2 = A0_2._tab_to_title_id
  L3_2 = L1_2.uid
  L2_2[L3_2] = "UIText_DailyMissionPage_Tab_02"
end
L7_1._init_phase_tab = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SystemOpenModule
  L1_2 = L1_2.IsOpen
  L2_2 = L4_1
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HandbookDailyTabItem
  L4_2 = G
  L4_2 = L4_2.HandbookDailyTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.set_async_bind_parent
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_daily
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._type_to_index
  L3_2 = L2_1.Daily
  L4_2 = L1_2.uid
  L2_2[L3_2] = L4_2
  L2_2 = A0_2._tab_to_title_id
  L3_2 = L1_2.uid
  L2_2[L3_2] = "UIText_DailyMissionPage_Tab_01"
end
L7_1._init_daily_tab = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SystemOpenModule
  L1_2 = L1_2.IsOpen
  L2_2 = L5_1
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HandbookGuideTabItem
  L4_2 = G
  L4_2 = L4_2.HandbookGuideTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.set_async_bind_parent
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_guide
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._type_to_index
  L3_2 = L2_1.Guide
  L4_2 = L1_2.uid
  L2_2[L3_2] = L4_2
  L2_2 = A0_2._tab_to_title_id
  L3_2 = L1_2.uid
  L2_2[L3_2] = "UIText_DailyMissionPage_Tab_03"
  L3_2 = L1_2
  L2_2 = L1_2.register_intro_change_callback
  L4_2 = A0_2._on_intro_changed
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.register_res_bar_change_callback
  L4_2 = A0_2._on_res_bar_changed
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L7_1._init_guide_tab = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SystemOpenModule
  L1_2 = L1_2.IsOpen
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HandbookBattleCollegeTabItem
  L4_2 = G
  L4_2 = L4_2.HandbookBattleCollegeTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.set_async_bind_parent
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_battle_college
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._type_to_index
  L3_2 = L2_1.College
  L4_2 = L1_2.uid
  L2_2[L3_2] = L4_2
  L2_2 = A0_2._tab_to_title_id
  L3_2 = L1_2.uid
  L2_2[L3_2] = "UIText_BattleCollege_Title"
end
L7_1._init_battle_college_tab = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.IsGuideChallengeTabUnlock
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HandbookChallengeTabItem
  L4_2 = G
  L4_2 = L4_2.HandbookChallengeTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.set_async_bind_parent
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_challenge
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._type_to_index
  L3_2 = L2_1.Challenge
  L4_2 = L1_2.uid
  L2_2[L3_2] = L4_2
  L2_2 = A0_2._tab_to_title_id
  L3_2 = L1_2.uid
  L2_2[L3_2] = "UIText_GameplayGuide_ChallengeTitle"
  L3_2 = L1_2
  L2_2 = L1_2.register_intro_change_callback
  L4_2 = A0_2._on_intro_changed
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.register_res_bar_change_callback
  L4_2 = A0_2._on_res_bar_changed
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L7_1._init_challenge_tab = L8_1
function L8_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._type_to_index
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2 ~= nil
  return L2_2
end
L7_1._has_tab = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._inital_tab_type
  if L1_2 ~= nil then
    L1_2 = A0_2._type_to_index
    L2_2 = A0_2._inital_tab_type
    L1_2 = L1_2[L2_2]
    A0_2._tab_current_index = L1_2
  else
    L2_2 = A0_2
    L1_2 = A0_2._has_tab
    L3_2 = L2_1.Phase
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.HandbookUtils
      L1_2 = L1_2.HasPhaseRedDot
      L1_2 = L1_2()
      if L1_2 then
        L1_2 = A0_2._type_to_index
        L2_2 = L2_1.Phase
        L1_2 = L1_2[L2_2]
        A0_2._tab_current_index = L1_2
    end
    else
      L2_2 = A0_2
      L1_2 = A0_2._has_tab
      L3_2 = L2_1.Daily
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.HandbookUtils
        L1_2 = L1_2.HasDailyRedDot
        L1_2 = L1_2()
        if L1_2 then
          L1_2 = A0_2._type_to_index
          L2_2 = L2_1.Daily
          L1_2 = L1_2[L2_2]
          A0_2._tab_current_index = L1_2
      end
      else
        L2_2 = A0_2
        L1_2 = A0_2._has_tab
        L3_2 = L2_1.Guide
        L1_2 = L1_2(L2_2, L3_2)
        if L1_2 then
          L1_2 = CS
          L1_2 = L1_2.RPG
          L1_2 = L1_2.Client
          L1_2 = L1_2.HandbookUtils
          L1_2 = L1_2.HasGuideRedDot
          L1_2 = L1_2()
          if L1_2 then
            L1_2 = A0_2._type_to_index
            L2_2 = L2_1.Guide
            L1_2 = L1_2[L2_2]
            A0_2._tab_current_index = L1_2
        end
        else
          L2_2 = A0_2
          L1_2 = A0_2._has_tab
          L3_2 = L2_1.Daily
          L1_2 = L1_2(L2_2, L3_2)
          if L1_2 then
            L1_2 = L0_1.ActivePoint
            L2_2 = L0_1.MaxActivePoint
            if L1_2 < L2_2 then
              L1_2 = A0_2._type_to_index
              L2_2 = L2_1.Daily
              L1_2 = L1_2[L2_2]
              A0_2._tab_current_index = L1_2
          end
          else
            L2_2 = A0_2
            L1_2 = A0_2._has_tab
            L3_2 = L2_1.Guide
            L1_2 = L1_2(L2_2, L3_2)
            if L1_2 then
              L1_2 = A0_2._type_to_index
              L2_2 = L2_1.Guide
              L1_2 = L1_2[L2_2]
              A0_2._tab_current_index = L1_2
            else
              A0_2._tab_current_index = 1
            end
          end
        end
      end
    end
  end
  L1_2 = A0_2._tab_current_index
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_current_index
    if not (L1_2 < 1) then
      goto lbl_95
    end
  end
  A0_2._tab_current_index = 1
  ::lbl_95::
  L1_2 = A0_2._tab_current_index
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.item_count
  L2_2 = L2_2(L3_2)
  if L1_2 > L2_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.item_count
    L1_2 = L1_2(L2_2)
    A0_2._tab_current_index = L1_2
  end
end
L7_1._init_tab_index = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L7_1._on_btn_close = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._show_flyLeaf
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L7_1._on_btn_flyleaf = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._is_flyleaf_shown
  if L2_2 == A1_2 then
    return
  end
  A0_2._is_flyleaf_shown = A1_2
  L2_2 = A0_2._is_flyleaf_shown
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.get_navigation_target
    L2_2 = L2_2(L3_2)
    A0_2._last_navigation_target = L2_2
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.EventSystem
    L2_2 = L2_2.current
    L3_2 = L2_2
    L2_2 = L2_2.SetSelectedGameObject
    L4_2 = nil
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._last_navigation_target
    if L2_2 ~= nil then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._last_navigation_target
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.set_enable
  L4_2 = A0_2._is_flyleaf_shown
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_flyleaf
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_flyleaf_shown
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_close
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_flyleaf_shown
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  if L2_2 ~= nil then
    L2_2 = A0_2._tab_control
    L2_2 = L2_2.current_select_item
    if L2_2 ~= nil then
      L2_2 = A0_2._tab_control
      L2_2 = L2_2.current_select_item
      L3_2 = L2_2.on_covered
      if L3_2 ~= nil then
        L4_2 = L2_2
        L3_2 = L2_2.on_covered
        L5_2 = A0_2._is_flyleaf_shown
        L3_2(L4_2, L5_2)
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_res_bar
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_control_tip
  L2_2(L3_2)
end
L7_1._show_flyLeaf = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close_flyleaf
  L1_2(L2_2)
end
L7_1._on_btn_book = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._in_anim
  if L1_2 then
    return
  end
  A0_2._in_anim = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_flyleaf
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L7_1._close_flyleaf = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._show_flyLeaf
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
  A0_2._in_anim = false
end
L7_1._on_flyleaf_fade_out_end = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._tab_current_index = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._tab_to_title_id
  L4_2 = L4_2[A1_2]
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_home
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._tab_control
  L4_2 = L4_2.current_select_item
  L4_2 = L4_2.hide_home
  L4_2 = L4_2 ~= true
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.EventSystem
  L2_2 = L2_2.current
  L2_2 = L2_2.alreadySelecting
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.force_set_first_navigation_target
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_res_bar
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_short_cut_hint
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_control_tip
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._report_tab_select
  L2_2(L3_2)
end
L7_1._on_tab_select = L8_1
function L8_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_intro
  L2_2.IntroduceID = A1_2
end
L7_1._on_intro_changed = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_top_bar
  L4_2 = L3_2
  L3_2 = L3_2.enable_res_area
  L5_2 = not A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_top_bar
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_top_bar
  L4_2 = L3_2
  L3_2 = L3_2.refresh_navigation
  L3_2(L4_2)
end
L7_1._on_res_bar_changed = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_flyleaf_shown
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L1_2 = L1_2.show_explain
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.show_explain
  L1_2 = not L1_2 and L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_top_bar
  L3_2 = L2_2
  L2_2 = L2_2.show_with_anim
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L7_1._refresh_res_bar = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_flyleaf_shown
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = 1
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = A0_2._tab_control
    L3_2 = L3_2.current_select_item
    L4_2 = L3_2
    L3_2 = L3_2.get_short_cut_hint
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end
L7_1._refresh_short_cut_hint = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == "ResBarAreaPanel" then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 124
    L2_2(L3_2, L4_2)
  elseif A1_2 == "HandbookDailyActivePanel" then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 124
    L2_2(L3_2, L4_2)
  end
end
L7_1._refresh_special_short_cut_hint = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.guid
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.SDKLuaReportAdapter
    L2_2 = L2_2.ReportUIPanelSwitch
    L3_2 = A0_2.__name
    L4_2 = L1_2.__name
    L5_2 = A0_2.guid
    L2_2(L3_2, L4_2, L5_2)
  end
end
L7_1._report_tab_select = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.guid
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_control
    if L1_2 ~= nil then
      L1_2 = A0_2._tab_control
      L1_2 = L1_2.current_select_item
      if L1_2 ~= nil then
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.SDKLuaReportAdapter
        L2_2 = L2_2.ReportUIButtonClick
        L3_2 = A0_2.__name
        L4_2 = L1_2.__name
        L5_2 = "InstructionsBtn"
        L6_2 = A0_2.guid
        L2_2(L3_2, L4_2, L5_2, L6_2)
      end
    end
  end
end
L7_1._report_btn_intro = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    if L1_2 ~= nil then
      goto lbl_10
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_10::
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L7_1.get_first_selected_object = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.is_top_page_or_dialog
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.force_set_default_navigation_target
      L0_3(L1_3)
    else
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.set_navigation_target
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3.get_navigation_target
      L2_3, L3_3 = L2_3(L3_3)
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  L1_2(L2_2)
end
L7_1._reset_navigation_target = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L7_1._init_ui_navigation = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_flyleaf_shown
  if L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2._is_can_to_zoom
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L7_1._is_can_to_zoom = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_flyleaf_shown
  if L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L2_2 = L2_2._is_can_back_zoom
  if L2_2 == nil then
    L2_2 = true
    return L2_2
  end
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2._is_can_back_zoom
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L7_1._is_can_back_zoom = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_flyleaf_shown
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2._is_can_leave_special_zoom
  if L2_2 == nil then
    L2_2 = true
    return L2_2
  end
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2._is_can_leave_special_zoom
  return L2_2(L3_2)
end
L7_1._is_can_leave_special_zoom = L8_1
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
  L3_2 = A0_2
  L2_2 = A0_2._refresh_control_tip
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_short_cut_hint
  L2_2(L3_2)
end
L7_1._on_enter_zoom = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_control_tip
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_special_short_cut_hint
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L7_1._on_enter_special_zoom = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_control_tip
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
end
L7_1._on_leave_special_zoom = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_flyleaf_shown
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_gamepad_input
    L1_2 = L1_2()
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._on_btn_book
      L1_2(L2_2)
    end
  end
end
L7_1._in_control_exit_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.enable
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.to_first_zoom
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_prev
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2.force_set_first_navigation_target
      L1_2(L2_2)
    end
  end
end
L7_1._select_prev = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.enable
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.to_first_zoom
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_next
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2.force_set_first_navigation_target
      L1_2(L2_2)
    end
  end
end
L7_1._select_next = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_short_cut_hint
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_control_tip
  L2_2(L3_2)
end
L7_1._on_in_control_input_switch = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.item_count
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2._is_flyleaf_shown
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = not L1_2 and L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_keymap_left
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_keymap_left
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_keymap_right
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_keymap_right
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L7_1._refresh_control_tip = L8_1
return L7_1
