local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.DailyMission.Guide.HandbookGuideEnum"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.HandbookModule
L1_1 = "SpriteOutput/TabIcon/DailyQuest/DailyQuestExploreIcon.png"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "HandbookGuideTabItem"
L4_1 = G
L4_1 = L4_1.TabItem
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._guide_tab_rows = L1_2
  L1_2 = {}
  A0_2._type_items = L1_2
  L1_2 = {}
  A0_2._multiple_drop_tab_items = L1_2
  A0_2._first_select = true
  A0_2._init_type_id = nil
  L1_2 = {}
  A0_2._type_teleports_refreshed = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_detect_scroll_bar
  L2_2 = L1_2
  L1_2 = L1_2.AddDeactiveListener
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 ~= nil then
      L0_3 = A0_2._binder
      L0_3 = L0_3.canvas_group_scroll_bar
      L0_3.alpha = 0
    end
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialMoveScrollView
  L4_2 = L2_1._on_tutorial_move_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ReddotRefreshGuide
  L1_2(L2_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._has_seen
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._clear_reddot
    L1_2(L2_2)
  end
end
L2_1._on_unload = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._intro_change_callback = A1_2
  A0_2._intro_change_handler = A2_2
end
L2_1.register_intro_change_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._res_bar_change_callback = A1_2
  A0_2._res_bar_change_handler = A2_2
end
L2_1.register_res_bar_change_callback = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L2_1.show_explain = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_unlocked
  return L1_2(L2_2)
end
L2_1._is_enable = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.IsGuideTabUnlock
  return L1_2(L2_2)
end
L2_1.is_unlocked = L3_1
function L3_1(A0_2, A1_2, ...)
  local L2_2
  A0_2._init_type_id = A1_2
  L2_2 = (...)
  A0_2._init_param = L2_2
end
L2_1.set_init_param = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_btn_view
  L1_2(L2_2)
end
L2_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.select_icon_image
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TutorialSupportModule
  L2_2 = L1_2
  L1_2 = L1_2.SetNodeDynamicKey
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_btn_root
  L3_2 = L3_2.gameObject
  L4_2 = "HandbookGuide"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "HandbookGuide"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.go_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L2_1._setup_tab_btn_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_DailyMissionPage_TabLocked"
  L1_2(L2_2, L3_2)
end
L2_1._on_select_when_disable = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_to_next_zoom_by_confirm
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_to_next_zoom_left_stick_type
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickRight
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_to_next_zoom_dpad_type
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.DPadRight
  L1_2(L2_2, L3_2)
  A0_2._has_seen = true
  A0_2._can_to_zoom2 = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.HandbookUtils
  L1_2 = L1_2.GuideConditionFetched
  L1_2 = L1_2()
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaAction
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 ~= nil then
      L0_3 = A0_2._state
      L1_3 = L2_1.SelectState
      L1_3 = L1_3.Selected
      if L0_3 == L1_3 then
        goto lbl_10
      end
    end
    do return end
    ::lbl_10::
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._do_setup_view
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L2_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._has_seen
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._clear_reddot
    L1_2(L2_2)
  end
end
L2_1._on_unselect = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_list
  L1_2(L2_2)
  L1_2 = A0_2._guide_tab_control
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._init_guide_datas
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._init_guide_tabs
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._get_init_uid
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._guide_tab_control
    L3_2 = L2_2
    L2_2 = L2_2.find_item
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= nil then
      L3_2 = L2_2.set_init_param
      if L3_2 ~= nil then
        L4_2 = L2_2
        L3_2 = L2_2.set_init_param
        L5_2 = A0_2._init_param
        L3_2(L4_2, L5_2)
      end
    end
    L3_2 = A0_2._guide_tab_control
    L4_2 = L3_2
    L3_2 = L3_2.click_item_by_uid
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
    A0_2._init_param = nil
  else
    L2_2 = A0_2
    L1_2 = A0_2._refresh_guide_datas
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_view
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._move_guide_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_navigation
  L1_2(L2_2)
  L1_2 = A0_2._first_select
  if L1_2 then
    L1_2 = A0_2.uid
    L2_2 = A0_2._owner
    L2_2 = L2_2._initial_index_processed
    if L1_2 == L2_2 then
      goto lbl_54
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.try_play_double_mark_animation
  L1_2(L2_2)
  ::lbl_54::
  A0_2._first_select = false
  L2_2 = A0_2
  L1_2 = A0_2._update_res_bar
  L1_2(L2_2)
end
L2_1._do_setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_guide_datas
  L1_2(L2_2)
  L1_2 = {}
  A0_2._guide_tab_rows = L1_2
  L1_2 = pairs
  L2_2 = A0_2._type_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = #L5_2
    if 0 < L6_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.GameplayGuideTabConfigExcelTable
      L6_2 = L6_2.GetData
      L7_2 = L4_2
      L6_2 = L6_2(L7_2)
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._guide_tab_rows
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._guide_tab_rows
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.Priority
    L3_3 = A1_3.Priority
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
end
L2_1._init_guide_datas = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._type_items = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameplayGuideTabConfigExcelTable
  L1_2 = L1_2.AllTypeIDs
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L0_1
    L8_2 = L7_2
    L7_2 = L7_2.GetShowGuideDatas
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = A0_2._type_items
    L9_2 = G
    L9_2 = L9_2.Utils
    L9_2 = L9_2.create_lua_table_from_cs_list
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    L8_2[L6_2] = L9_2
  end
end
L2_1._refresh_guide_datas = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._guide_tab_control
  if L1_2 ~= nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._guide_tab_control = L1_2
  L1_2 = A0_2._guide_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_btn_root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._guide_tab_control
  L1_2 = L1_2._mono_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.SetScrollRect
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_scroll_rect
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_guide_tab_datas
  L1_2(L2_2)
  L1_2 = A0_2._guide_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._guide_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._guide_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
end
L2_1._init_guide_tabs = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 ~= nil then
      L0_3 = A0_2._state
      L1_3 = L2_1.SelectState
      L1_3 = L1_3.Selected
      if L0_3 == L1_3 then
        goto lbl_10
      end
    end
    do return end
    ::lbl_10::
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._try_move_tutorial_type
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      L1_3 = A0_2._guide_tab_control
      L2_3 = L1_3
      L1_3 = L1_3.move_to_current_item
      L1_3(L2_3)
    end
    A0_2._can_to_zoom2 = true
  end
  L1_2(L2_2)
end
L2_1._move_guide_tab = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._guide_tab_control
  L1_2 = L1_2._all_tab_items
  if L1_2 ~= nil then
    L1_2 = ipairs
    L2_2 = A0_2._guide_tab_control
    L2_2 = L2_2._all_tab_items
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = A0_2._guide_tab_rows
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.ID
      L8_2 = L5_2
      L7_2 = L5_2.set_tab_data
      L9_2 = L6_2
      L10_2 = A0_2._type_items
      L10_2 = L10_2[L6_2]
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L1_2 = A0_2._guide_tab_control
  L1_2 = L1_2.current_select_item
  if L1_2 ~= nil then
    L2_2 = L1_2.refresh
    if L2_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.refresh
      L2_2(L3_2)
    end
  end
end
L2_1._refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  A0_2._multiple_drop_tab_items = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._guide_tab_rows
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.ID
    L7_2 = L5_2.GuideType
    L9_2 = A0_2
    L8_2 = A0_2.create_panel
    L10_2 = GuideType2Panel
    L11_2 = #L7_2
    L10_2 = L10_2[L11_2]
    L11_2 = GuideType2Binder
    L12_2 = #L7_2
    L11_2 = L11_2[L12_2]
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L10_2 = A0_2
    L9_2 = A0_2._get_guide_tab_prefab_index
    L11_2 = L5_2.GuideType
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.button_prefab_index = L9_2
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.MultipleDropUtils
    L9_2 = L9_2.GetMultipleDropTypeByGuideType
    L10_2 = L5_2.GuideType
    L9_2 = L9_2(L10_2)
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.Client
    L10_2 = L10_2.MultipleDropUtils
    L10_2 = L10_2.IsInMultipleDrop
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if L10_2 then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = A0_2._multiple_drop_tab_items
      L12_2 = L8_2
      L10_2(L11_2, L12_2)
    end
    L11_2 = L8_2
    L10_2 = L8_2.bind
    L12_2 = A0_2._binder
    L12_2 = L12_2.node_tab_item_root
    L10_2(L11_2, L12_2)
    L11_2 = L8_2
    L10_2 = L8_2.set_tab_data
    L12_2 = L6_2
    L13_2 = A0_2._type_items
    L13_2 = L13_2[L6_2]
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = A0_2._guide_tab_control
    L11_2 = L10_2
    L10_2 = L10_2.add_item
    L12_2 = L8_2
    L10_2(L11_2, L12_2)
  end
end
L2_1._init_guide_tab_datas = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MultipleDropUtils
  L2_2 = L2_2.GetMultipleDropTypeByGuideType
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MultipleDropUtils
  L3_2 = L3_2.IsInMultipleDrop
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MultipleDropTypeConfig
    L3_2 = L3_2.RELIC
    if L2_2 == L3_2 then
      L3_2 = 2
      return L3_2
    else
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.MultipleDropTypeConfig
      L3_2 = L3_2.ROGUE
      if L2_2 == L3_2 then
        L3_2 = 3
        return L3_2
      else
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.MultipleDropTypeConfig
        L3_2 = L3_2.None
        if L2_2 == L3_2 then
          L3_2 = 0
          return L3_2
        else
          L3_2 = 1
          return L3_2
        end
      end
    end
  else
    L3_2 = 0
    return L3_2
  end
end
L2_1._get_guide_tab_prefab_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._init_type_id
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._get_uid_from_type_id
    L3_2 = A0_2._init_type_id
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._init_type_id = nil
    if L1_2 ~= nil then
      return L1_2
    end
  end
  L1_2 = 1
  return L1_2
end
L2_1._get_init_uid = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2._guide_tab_rows
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.ID
    if L7_2 == A1_2 then
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end
L2_1._get_uid_from_type_id = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._guide_tab_control
  L1_2 = L1_2.current_select_item
  L1_2 = L1_2._on_first_child_dialog_close
  if L1_2 ~= nil then
    L1_2 = A0_2._guide_tab_control
    L1_2 = L1_2.current_select_item
    L2_2 = L1_2
    L1_2 = L1_2._on_first_child_dialog_close
    L1_2(L2_2)
  end
end
L2_1._on_first_child_dialog_close = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._tutorial_type_id = L2_2
  L2_2 = A0_2._guide_tab_rows
  if L2_2 ~= nil then
    L2_2 = A0_2._guide_tab_rows
    L2_2 = #L2_2
    if L2_2 ~= 0 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L3_2 = A0_2
  L2_2 = A0_2._try_move_tutorial_type
  L2_2(L3_2)
end
L2_1._on_tutorial_move_page = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._tutorial_type_id
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = 0
  L2_2 = ipairs
  L3_2 = A0_2._guide_tab_rows
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._tutorial_type_id
    L8_2 = L6_2.ID
    if L7_2 == L8_2 then
      L1_2 = L5_2
    end
  end
  L2_2 = A0_2._guide_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.move_to_item_by_uid
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  A0_2._tutorial_type_id = nil
  L2_2 = true
  return L2_2
end
L2_1._try_move_tutorial_type = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "TryPlayDoubleRewardMarkAnim" then
    L3_2 = A0_2
    L2_2 = A0_2.try_play_double_mark_animation
    L2_2(L3_2)
  end
end
L2_1._on_ui_animation_event = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._guide_tab_rows
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2.ID
  L4_2 = A0_2
  L3_2 = A0_2._safe_refresh_teleports
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._update_res_bar
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._report_tab_select
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._selected_type_id
  if L3_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._remove_type_reddot
    L5_2 = A0_2._selected_type_id
    L3_2(L4_2, L5_2)
  end
  A0_2._selected_type_id = L2_2
end
L2_1._on_tab_select = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._type_teleports_refreshed
  L2_2 = L2_2[A1_2]
  if L2_2 then
    return
  end
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.RefreshGuideItemTeleports
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._type_teleports_refreshed
  L2_2[A1_2] = true
end
L2_1._safe_refresh_teleports = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = "GameplayGuideTab_"
  L3_2 = A1_2
  L2_2 = L2_2 .. L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.SDKLuaReportAdapter
  L3_2 = L3_2.ReportUIButtonClick
  L4_2 = A0_2._owner
  L4_2 = L4_2.__name
  L5_2 = A0_2.__name
  L6_2 = L2_2
  L7_2 = A0_2._owner
  L7_2 = L7_2.guid
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L2_1._report_tab_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._guide_tab_control
  L1_2 = L1_2.current_select_item
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._guide_tab_rows
  L3_2 = L1_2.uid
  L2_2 = L2_2[L3_2]
  if L2_2 == nil then
    return
  end
  L3_2 = L1_2.get_res_bar_key
  L3_2 = L3_2 ~= nil
  if L3_2 then
    L5_2 = L1_2
    L4_2 = L1_2.get_res_bar_key
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_24
    end
  end
  L4_2 = L2_2.ResBarKey
  ::lbl_24::
  L5_2 = L1_2.disable_res_bar
  L5_2 = L5_2 == true
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.invoke_callback
  L7_2 = A0_2._intro_change_callback
  L8_2 = A0_2._intro_change_handler
  L9_2 = L2_2.IntroDataID
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.invoke_callback
  L7_2 = A0_2._res_bar_change_callback
  L8_2 = A0_2._res_bar_change_handler
  L9_2 = L4_2
  L10_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L2_1._update_res_bar = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = 124
  return L1_2
end
L2_1.get_short_cut_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._multiple_drop_tab_items
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._multiple_drop_tab_items
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L5_2 = A0_2._multiple_drop_tab_items
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.try_play_double_mark_animation
      L5_2(L6_2)
    end
  end
end
L2_1.try_play_double_mark_animation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = pairs
  L2_2 = A0_2._type_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = pairs
    L7_2 = L5_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.Client
      L11_2 = L11_2.HandbookUtils
      L11_2 = L11_2.RecordGuideItemSeen
      L12_2 = L10_2.ID
      L13_2 = true
      L11_2(L12_2, L13_2)
    end
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ReddotRefreshGuide
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
L2_1._clear_reddot = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._type_items
  L2_2 = L2_2[A1_2]
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.HandbookUtils
    L8_2 = L8_2.RecordGuideItemSeen
    L9_2 = L7_2.ID
    L10_2 = true
    L8_2(L9_2, L10_2)
  end
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.ReddotRefreshGuide
  L5_2 = 0
  L3_2(L4_2, L5_2)
end
L2_1._remove_type_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L2_1._init_navigation = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L2_2 = A0_2._guide_tab_control
      L2_2 = L2_2.current_select_item
      L3_2 = L2_2.reset_view
      if L3_2 ~= nil then
        L4_2 = L2_2
        L3_2 = L2_2.reset_view
        L3_2(L4_2)
      end
      L4_2 = L2_2
      L3_2 = L2_2.get_first_selected_object
      L3_2 = L3_2(L4_2)
      L5_2 = A0_2
      L4_2 = A0_2.set_navigation_target
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
  end
end
L2_1._on_enter_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._guide_tab_control
    if L2_2 == nil then
      L2_2 = false
      return L2_2
    end
    L2_2 = A0_2._guide_tab_control
    L2_2 = L2_2.current_select_item
    if L2_2 == nil then
      L2_2 = false
      return L2_2
    end
    L2_2 = A0_2._can_to_zoom2
    if L2_2 then
      L2_2 = A0_2._guide_tab_control
      L2_2 = L2_2.current_select_item
      L2_2 = L2_2.can_to_zoom
      L2_2 = A0_2._guide_tab_control
      L2_2 = L2_2.current_select_item
      L3_2 = L2_2
      L2_2 = L2_2.can_to_zoom
      L4_2 = A1_2
      L2_2 = L2_2 ~= nil and L2_2
    end
    return L2_2
  end
end
L2_1._is_can_to_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._guide_tab_control
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if L1_2 == L2_2 then
    L2_2 = A0_2._guide_tab_control
    L3_2 = L2_2
    L2_2 = L2_2.get_cur_tab_btn_object
    return L2_2(L3_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if L1_2 == L2_2 then
      L2_2 = A0_2._guide_tab_control
      L2_2 = L2_2.current_select_item
      L3_2 = L2_2
      L2_2 = L2_2.get_first_selected_object
      return L2_2(L3_2)
    end
  end
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._guide_tab_control
  if L1_2 ~= nil then
    L1_2 = A0_2._guide_tab_control
    L1_2 = L1_2.current_select_item
    if L1_2 ~= nil then
      L1_2 = A0_2._guide_tab_control
      L1_2 = L1_2.current_select_item
      L2_2 = L1_2
      L1_2 = L1_2.force_scrollrect_move
      L1_2(L2_2)
    end
  end
end
L2_1._on_in_control_input_switch = L3_1
return L2_1
