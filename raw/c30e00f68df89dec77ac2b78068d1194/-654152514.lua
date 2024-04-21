local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.BattlePass.MainPage.BattlePassQuestTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.TabItem"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.BattlePassModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ScheduleModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_TimeManager
L3_1 = "SpriteOutput/TabIcon/AntiVirus/AntiVirusQuestIcon.png"
L4_1 = 1
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "BattlePassQuestTabItem"
L7_1 = G
L7_1 = L7_1.TabItem
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._tab_items = L1_2
  A0_2._current_tab = nil
end
L5_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattlePassRefreshExp
  L4_2 = A0_2._on_exp_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattlePassRefreshLevel
  L4_2 = A0_2._on_level_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattlePassRefreshQuest
  L4_2 = A0_2._on_quest_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_receive_all
  L4_2 = A0_2._on_btn_receive_all
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_type_tab
  L1_2(L2_2)
end
L5_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._quest_tab_control = L1_2
  L1_2 = A0_2._quest_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._quest_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_item
  L1_2(L2_2)
  L1_2 = A0_2._quest_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
end
L5_1._init_type_tab = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.BPQuestType
  L2_2 = L2_2.Weekly
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.BPQuestType
  L3_2 = L3_2.Activity
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2._tab_types = L1_2
  L1_2 = {}
  L2_2 = A0_2._binder
  L2_2 = L2_2.tab_quest_weekly
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_quest_activity
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2._tab_items = L1_2
  L1_2 = 1
  L2_2 = A0_2._tab_items
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._tab_items
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.set_type
    L8_2 = A0_2._tab_types
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L5_2.button_prefab_index = 0
    L7_2 = L5_2
    L6_2 = L5_2.register_time_end_callback
    L8_2 = A0_2._on_quest_changed
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._quest_tab_control
    L7_2 = L6_2
    L6_2 = L6_2.add_item
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._quest_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
end
L5_1._init_tab_item = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_level
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_quest
  L1_2(L2_2)
end
L5_1._on_top_page = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_level
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_level
  L3_2 = L2_2
  L2_2 = L2_2.play_exp_up_anim
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L5_1._on_exp_changed = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_level
  L3_2 = L2_2
  L2_2 = L2_2.play_level_up_anim
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_level
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L2_2(L3_2)
end
L5_1._on_level_up = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_quests
  L3_2 = L2_2
  L2_2 = L2_2.clear_navi
  L2_2(L3_2)
  L2_2 = A0_2._tab_items
  L2_2 = L2_2[A1_2]
  A0_2._current_tab = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_quest
  L2_2(L3_2)
end
L5_1._on_tab_select = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_receive_all
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L0_1.FinishedQuestCount
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._current_tab
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._current_tab
  L2_2 = L1_2
  L1_2 = L1_2.get_type
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_quests
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_quests
  L3_2 = L2_2
  L2_2 = L2_2.play_fade_in
  L2_2(L3_2)
end
L5_1._refresh_quest = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state
  L2_2 = L5_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 ~= L2_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_quest
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.to_first_zoom
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L5_1._on_quest_changed = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.ReceiveAllQuests
  L1_2(L2_2)
end
L5_1._on_btn_receive_all = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._tab_types
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L0_1
    L7_2 = L6_2
    L6_2 = L6_2.GetBattlePassQuestFinishedCount
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if 0 < L6_2 then
      return L4_2
    end
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.BPQuestType
    L6_2 = L6_2.Activity
    if L5_2 == L6_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.BattlePassUtils
      L6_2 = L6_2.HasNewActivityQuest
      L6_2 = L6_2()
      if L6_2 then
        return L4_2
      end
    end
  end
  L1_2 = nil
  return L1_2
end
L5_1._get_available_index = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_level
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._quest_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L4_2 = A0_2
  L3_2 = A0_2._get_available_index
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = L4_1
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L5_1._on_select = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_quest_activity
  L2_2 = L1_2
  L1_2 = L1_2.try_check_new_quests
  L1_2(L2_2)
end
L5_1._on_unselect = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_btn_view
  L1_2(L2_2)
end
L5_1._on_added = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.unselect_icon_image
  L4_2 = L3_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.select_icon_image
  L4_2 = L3_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "BattlePassQuestTab"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.go_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L5_1._setup_tab_btn_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  end
end
L5_1._is_can_to_zoom = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 1
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.canvas_group_zoom_1
      L2_2.alpha = 0.5
    end
  end
end
L5_1._on_enter_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_first_selected_type_object
  return L1_2(L2_2)
end
L5_1.get_first_selected_object = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._quest_tab_control
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._quest_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_tab_btn_object
  return L1_2(L2_2)
end
L5_1._get_first_selected_type_object = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_quests
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L5_1.get_zone2_selected_object = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if L1_2 == L2_2 then
    L2_2 = {}
    L3_2 = "Menu_Confirm"
    L4_2 = "ActionGroup_Return"
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    return L2_2
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if L1_2 == L2_2 then
      L2_2 = {}
      L3_2 = "Menu_Confirm"
      L4_2 = "ItemDetail"
      L5_2 = "ActionGroup_Return"
      L2_2[1] = L3_2
      L2_2[2] = L4_2
      L2_2[3] = L5_2
      return L2_2
    end
  end
end
L5_1.get_short_cut_hint = L6_1
return L5_1
