local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonEntrancePageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonEntrancePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TreasureDungeonModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonEntrancePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_EnterWithFastForward
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1.AllGroupDatas
  L1_2 = L1_2(L2_2)
  A0_2._group_datas = L1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cur
  L4_2 = A0_2._on_btn_cur
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "TreasureDungeonReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuitTreasureDungeon
  L4_2 = A0_2._on_quit_treasuredungeon
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnActivityEnd
  L4_2 = L0_1._on_activity_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TreasureDungeonSync
  L4_2 = L0_1._on_treasuredungeon_sync
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FinishedMainMission
  L4_2 = L0_1._refresh
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveAllListeners
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = math
    L0_3 = L0_3.max
    L1_3 = math
    L1_3 = L1_3.min
    L2_3 = A0_2._binder
    L2_3 = L2_3.scroll_rect
    L2_3 = L2_3.verticalNormalizedPosition
    L2_3 = 1 - L2_3
    L3_3 = 1.1
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = -0.1
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = A0_2._origin_bg_x
    if L1_3 == nil then
      L1_3 = A0_2._binder
      L1_3 = L1_3.node_scroll_bg
      L1_3 = L1_3.localPosition
      L1_3 = L1_3.x
      A0_2._origin_bg_x = L1_3
    end
    L1_3 = A0_2._origin_bg_y
    if L1_3 == nil then
      L1_3 = A0_2._binder
      L1_3 = L1_3.node_scroll_bg
      L1_3 = L1_3.localPosition
      L1_3 = L1_3.y
      A0_2._origin_bg_y = L1_3
    end
    L1_3 = A0_2._binder
    L1_3 = L1_3.node_scroll_bg
    L2_3 = CS
    L2_3 = L2_3.UnityEngine
    L2_3 = L2_3.Vector3
    L3_3 = A0_2._origin_bg_x
    L4_3 = A0_2._origin_bg_y
    L5_3 = 160 * L0_3
    L4_3 = L4_3 - L5_3
    L5_3 = 0
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L1_3.localPosition = L2_3
    L1_3 = A0_2._origin_edge_x
    if L1_3 == nil then
      L1_3 = A0_2._binder
      L1_3 = L1_3.node_scroll_edge
      L1_3 = L1_3.localPosition
      L1_3 = L1_3.x
      A0_2._origin_edge_x = L1_3
    end
    L1_3 = A0_2._origin_edge_y
    if L1_3 == nil then
      L1_3 = A0_2._binder
      L1_3 = L1_3.node_scroll_edge
      L1_3 = L1_3.localPosition
      L1_3 = L1_3.y
      A0_2._origin_edge_y = L1_3
    end
    L1_3 = A0_2._binder
    L1_3 = L1_3.node_scroll_edge
    L2_3 = CS
    L2_3 = L2_3.UnityEngine
    L2_3 = L2_3.Vector3
    L3_3 = A0_2._origin_edge_x
    L4_3 = A0_2._origin_edge_y
    L5_3 = 1000 * L0_3
    L4_3 = L4_3 - L5_3
    L5_3 = 0
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L1_3.localPosition = L2_3
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._fade_in_timer
    if L0_3 ~= nil then
      L0_3 = A0_2._fade_in_timer
      L1_3 = L0_3
      L0_3 = L0_3.reset
      L0_3(L1_3)
      L0_3 = A0_2._fade_in_timer
      L1_3 = L0_3
      L0_3 = L0_3.stop
      L0_3(L1_3)
    end
    L0_3 = A0_2._binder
    if L0_3 ~= nil then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.force_set_default_navigation_target
      L0_3(L1_3)
    end
  end
  L4_2 = 0.4
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._fade_in_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_timer
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetTreasureDungeonActivityData
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_remain_time
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.SetTargetTimeByTimeStamp
  L4_2 = L1_2.EndTimeStamp
  L5_2 = A0_2._on_timer_expire
  L6_2 = A0_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_timer = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetTreasureDungeonActivityData
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.RecordAllSeenDungeon
    L2_2(L3_2)
  end
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_spark_in
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.ActivityModule
    L3_2 = L2_2
    L2_2 = L2_2.GetTreasureDungeonActivityData
    L2_2 = L2_2(L3_2)
    if L2_2 ~= nil then
      L4_2 = L2_2
      L3_2 = L2_2.RecordAllSeenDungeon
      L3_2(L4_2)
    end
  end
end
L0_1._on_view_active_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1.AllGroupDatas
  L1_2 = L1_2(L2_2)
  A0_2._group_datas = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_treasuredungeon_sync = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_init_index
  L1_2 = L1_2(L2_2)
  A0_2._init_index = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_position
  L3_2 = A0_2._init_index
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = A0_2._fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = 1
  L4_2 = A0_2
  L3_2 = A0_2._get_entrance_count
  L3_2 = L3_2(L4_2)
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._group_datas
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.IsDoing
    if L6_2 then
      return L5_2
    end
    L6_2 = A0_2._group_datas
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.IsOpened
    if L6_2 then
      L1_2 = L5_2
    end
  end
  return L1_2
end
L0_1._get_init_index = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._get_entrance_count
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 - 1
  if A1_2 >= L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_rect
    L3_2 = L2_2
    L2_2 = L2_2.SetVerticalScrollPercent
    L4_2 = 0
    L2_2(L3_2, L4_2)
  elseif A1_2 <= 2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_rect
    L3_2 = L2_2
    L2_2 = L2_2.SetVerticalScrollPercent
    L4_2 = 1
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_position = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cur
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_entrance_list
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurDoingGroup
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_cur
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.Row
    L4_2 = L4_2.Name
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_cur = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._get_entrance_count
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.entrance_panel_list
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L9_2 = A0_2._group_datas
    L9_2 = L9_2[L5_2]
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_confirm_callback
    L9_2 = A0_2._try_enter_dungeon
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_selected_callback
    L9_2 = A0_2._on_select_dungeon
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
  end
  L2_2 = L1_2 + 1
  L3_2 = 5
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.entrance_panel_list
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.safe_set_active
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L0_1._refresh_entrance_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = A0_2._group_datas
  L2_2 = #L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.entrance_panel_list
  L3_2 = #L3_2
  return L1_2(L2_2, L3_2)
end
L0_1._get_entrance_count = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.IsDoing
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._show_cur_dungeon_info_dialog
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.TreasureDungeonModule
    L2_2 = L2_2.Instance
    L2_2 = L2_2.CurrentTreasureDungeonLevelID
    if L2_2 ~= 0 then
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.UIPileToastMessageTextID
      L4_2 = "UIText_TreasureDungeon_Challenge_PlayingTips"
      L2_2(L3_2, L4_2)
    else
      L2_2 = G
      L2_2 = L2_2.UIManager
      L2_2 = L2_2.load_and_async_show
      L3_2 = "Ui.Activity.TreasureDungeon.TreasureDungeonAvatarSelectPage"
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._try_enter_dungeon = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Activity.TreasureDungeon.TreasureDungeonInfoDialog"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._show_cur_dungeon_info_dialog = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.index_of_item
  L3_2 = A0_2._group_datas
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_position
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_select_dungeon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.entrance_panel_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = #L1_2
    L7_2 = L7_2 + 1
    L9_2 = L6_2
    L8_2 = L6_2.get_btn_object
    L8_2 = L8_2(L9_2)
    L1_2[L7_2] = L8_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = L1_2
  L5_2 = NavigationType
  L5_2 = L5_2.Vertical
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_btn_navigation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.IsFinish
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Activity.TreasureDungeon.TreasureDungeonResultDialog"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_quit_treasuredungeon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.TreasureDungeon.TreasureDungeonRewardPage"
  L1_2(L2_2)
end
L0_1._on_btn_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2.__name
  L3_2 = ""
  L4_2 = "CurrentDungeon"
  L5_2 = A0_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurDoingGroup
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_cur_dungeon_info_dialog
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_cur = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_timer_expire = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ActivityModule
  L3_2 = L2_2
  L2_2 = L2_2.GetTreasureDungeonActivityData
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.PanelID
    if A1_2 ~= L3_2 then
      goto lbl_25
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_UIManager
  L4_2 = L3_2
  L3_2 = L3_2.BackToFirstPage
  L3_2(L4_2)
  ::lbl_25::
end
L0_1._on_activity_end = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.entrance_panel_list
  L2_2 = A0_2._init_index
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
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
return L0_1
