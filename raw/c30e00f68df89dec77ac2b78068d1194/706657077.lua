local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureDirectoryItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureDirectoryItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.TravelBrochureModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "TravelBrochure_ToBeContinued"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.BoolValue
L3_1 = 5
L4_1 = 0.5
L5_1 = 0.08
L6_1 = 0.6
L7_1 = 0.001
L8_1 = 1.5
L9_1 = G
L9_1 = L9_1.Class
L10_1 = "TravelBrochureDirectoryPanel"
L11_1 = G
L11_1 = L11_1.BasePanel
L9_1 = L9_1(L10_1, L11_1)
function L10_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._diary_datas = L1_2
  A0_2._to_open_diary_id = 0
  A0_2._is_doing_snap = false
  A0_2._in_touch = false
  A0_2._in_moving = false
  A0_2._enable_sound = false
  A0_2._swip_start_played = false
  A0_2._last_swipe_delta = 0
end
L9_1.ctor = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_last
  L4_2 = A0_2._on_btn_last
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L4_2 = A0_2._on_btn_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochureDiaryClosed
  L4_2 = A0_2._on_diary_closed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_list_view
  L1_2(L2_2)
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
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_bg_rotation
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.TouchDown
  L4_2 = A0_2._on_touch_down
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.TouchUp
  L4_2 = A0_2._on_touch_up
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tick
  L2_2 = L1_2
  L1_2 = L1_2.SetTickCallback
  L3_2 = A0_2._on_tick_scroll
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L9_1._on_load = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.SuperScrollView
  L1_2 = L1_2.LoopListViewInitParam
  L1_2 = L1_2.CopyDefaultInitParam
  L1_2 = L1_2()
  L1_2.mSmoothDumpRate = 0.3
  L1_2.mSnapFinishThreshold = 0.1
  L1_2.mSnapFinishCallbackThreshold = 30
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
  L2_2.SnapMoveDefaultMaxAbsVec = 3400
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L2_2.ItemMinTrackRate = 0.8
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L2_2.EnableSnapFinishCallbackThreshold = true
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
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.is_active_in_hierarchy
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.is_top_page_or_dialog
      L1_2 = L1_2(L2_2)
      if L1_2 then
        goto lbl_14
      end
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_14::
  L1_2 = true
  return L1_2
end
L9_1._is_touch_enabled = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_touch_enabled
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._in_touch
  if not L1_2 then
    A0_2._animation_changed = false
    A0_2._last_percent = nil
  end
  A0_2._in_touch = true
end
L9_1._on_touch_down = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_touch_enabled
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  A0_2._in_touch = false
  L1_2 = A0_2._animation_changed
  if L1_2 then
    A0_2._animation_changed = false
    L2_2 = A0_2
    L1_2 = A0_2._set_animation_direction
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._set_animation_speed
  L3_2 = 1
  L1_2(L2_2, L3_2)
  A0_2._last_percent = nil
end
L9_1._on_touch_up = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 then
    L2_2 = "Loop"
    if L2_2 then
      goto lbl_7
    end
  end
  L2_2 = "Loop2"
  ::lbl_7::
  L3_2 = A0_2._binder
  L3_2 = L3_2.skeletons
  L3_2 = L3_2[2]
  L3_2 = L3_2.AnimationState
  L4_2 = L3_2
  L3_2 = L3_2.AddAnimation
  L5_2 = 0
  L6_2 = L2_2
  L7_2 = true
  L8_2 = 0.1
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  if A1_2 then
    L3_2 = "LoopBG"
    if L3_2 then
      goto lbl_23
    end
  end
  L3_2 = "LoopBG2"
  ::lbl_23::
  L4_2 = A0_2._binder
  L4_2 = L4_2.skeletons
  L4_2 = L4_2[1]
  L4_2 = L4_2.AnimationState
  L5_2 = L4_2
  L4_2 = L4_2.AddAnimation
  L6_2 = 0
  L7_2 = L3_2
  L8_2 = true
  L9_2 = 0.1
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L9_1._set_animation_direction = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.skeletons
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L6_2.timeScale = A1_2
  end
end
L9_1._set_animation_speed = L10_1
function L10_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.horizontalNormalizedPosition
  return L1_2
end
L9_1._get_current_percent = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._binder
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2.is_top_page_or_dialog
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L3_2 = A0_2
  L2_2 = A0_2._get_delta_percent
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_current_percent
  L3_2 = L3_2(L4_2)
  A0_2._last_percent = L3_2
  L3_2 = math
  L3_2 = L3_2.abs
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L7_1
  L4_2 = L3_2 > L4_2
  if L4_2 then
    A0_2._last_swipe_delta = L2_2
  end
  L6_2 = A0_2
  L5_2 = A0_2._update_move_change
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._in_moving
  if L5_2 then
    A0_2._animation_changed = true
  end
  L5_2 = A0_2._in_touch
  if not L5_2 then
    return
  end
  L5_2 = A0_2._animation_changed
  if not L5_2 then
    return
  end
  L5_2 = L5_1
  L5_2 = L3_2 > L5_2
  if 0 < L2_2 then
    L6_2 = 1
    if L6_2 then
      goto lbl_52
    end
  end
  L6_2 = -1
  ::lbl_52::
  if L5_2 then
    L8_2 = A0_2
    L7_2 = A0_2._set_animation_direction
    L9_2 = 0 <= L6_2
    L7_2(L8_2, L9_2)
  end
  L7_2 = L3_2 / A1_2
  L8_2 = L4_1
  L7_2 = L7_2 * L8_2
  L9_2 = A0_2
  L8_2 = A0_2._get_item_count
  L8_2 = L8_2(L9_2)
  L7_2 = L7_2 * L8_2
  L9_2 = A0_2
  L8_2 = A0_2._set_animation_speed
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
end
L9_1._on_tick_scroll = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._in_moving
  if L2_2 == A1_2 then
    return
  end
  A0_2._in_moving = A1_2
  L2_2 = A0_2._in_moving
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_trigger_swipe_sound
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L9_1._update_move_change = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._last_percent
  if L1_2 == nil then
    L1_2 = 0
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_current_percent
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._last_percent
  L1_2 = L1_2 - L2_2
  return L1_2
end
L9_1._get_delta_percent = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_animation_speed
    L4_2 = 0
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._set_animation_speed
    L4_2 = 1
    L2_2(L3_2, L4_2)
  end
end
L9_1.pause_animation = L10_1
function L10_1(A0_2, A1_2, A2_2)
  A0_2._item_click_callback = A1_2
  A0_2._item_click_handler = A2_2
end
L9_1.register_item_click_callback = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_list_track
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_animation_direction
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_animation_speed
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L9_1._on_return_to_top = L10_1
function L10_1(A0_2, A1_2)
  if not A1_2 then
    A0_2._in_touch = false
    A0_2._last_percent = nil
    A0_2._last_swipe_delta = 0
    A0_2._to_open_diary_id = 0
    A0_2._is_doing_snap = false
    A0_2._in_moving = false
    A0_2._enable_sound = false
    A0_2._swip_start_played = false
  else
    A0_2._enable_sound = true
  end
end
L9_1._on_owner_active_change = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetDirectoryDiaryDatas
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._diary_datas = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L4_2 = A0_2
  L3_2 = A0_2._get_item_count
  L3_2 = L3_2(L4_2)
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_init_index
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemIndex
  L4_2 = L1_2 - 1
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._snap_to_index
  L4_2 = L1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.FinishSnapImmediately
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.list_view
    L1_3 = L0_3
    L0_3 = L0_3.RefreshAllShownItem
    L0_3(L1_3)
  end
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_list_track
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "TravelBrochureDiary"
  L5_2 = nil
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_reddot_btn_last
  L7_2 = L7_2.transform
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "TravelBrochureDiary"
  L5_2 = nil
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_reddot_btn_next
  L7_2 = L7_2.transform
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeAfterSeconds
  L3_2 = L8_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    A0_2._enable_sound = true
  end
  L2_2(L3_2, L4_2)
end
L9_1.setup_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_directory_config_count
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._diary_datas
  L2_2 = #L2_2
  L1_2 = L1_2 == L2_2
  if L1_2 then
    L2_2 = L2_1
    if not L2_2 then
      goto lbl_19
    end
  end
  L2_2 = A0_2._diary_datas
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  ::lbl_19::
  if not L2_2 then
    L2_2 = A0_2._diary_datas
    L2_2 = #L2_2
  end
  return L2_2
end
L9_1._get_item_count = L10_1
function L10_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.TravelBrochureConfigExcelTable
  L1_2 = L1_2.GetDirectorySequenceDiaryIDs
  L1_2 = L1_2()
  L1_2 = L1_2.Count
  return L1_2
end
L9_1._get_directory_config_count = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 1
  L2_2 = A0_2._diary_datas
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._diary_datas
    L5_2 = L5_2[L4_2]
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.TravelBrochureUtils
    L6_2 = L6_2.IsDiaryNew
    L7_2 = L5_2.ID
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L6_2 = L5_2.HasAvailableReward
      if not L6_2 then
        goto lbl_21
      end
    end
    do return L4_2 end
    ::lbl_21::
  end
  L1_2 = 1
  L2_2 = A0_2._diary_datas
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._diary_datas
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.CanPaste
    if L6_2 then
      L6_2 = L5_2.HasChosen
      if L6_2 then
        L6_2 = L0_1.NewPasterDiaryIDs
        L7_2 = L6_2
        L6_2 = L6_2.Contains
        L8_2 = L5_2.ID
        L6_2 = L6_2(L7_2, L8_2)
        if L6_2 then
          return L4_2
        end
      end
    end
  end
  L1_2 = nil
  L2_2 = -1
  L3_2 = 1
  L4_2 = A0_2._diary_datas
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._diary_datas
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2.HasReward
    if L8_2 then
      L9_2 = A0_2
      L8_2 = A0_2._get_paster_progress
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      if L2_2 < L8_2 and L8_2 < 1 then
        L1_2 = L6_2
        L2_2 = L8_2
      end
    end
  end
  if L1_2 ~= nil then
    return L1_2
  end
  L3_2 = A0_2._diary_datas
  L3_2 = #L3_2
  return L3_2
end
L9_1._get_init_index = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2 ~= nil and L2_2
  if not L2_2 then
    L3_2 = 0
    return L3_2
  end
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetQuestData
  L5_2 = A1_2.RewardQuestID
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.Progress
  L4_2 = 1.0 * L4_2
  L5_2 = L3_2.TotalProgress
  L4_2 = L4_2 / L5_2
  return L4_2
end
L9_1._get_paster_progress = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.ClearTrackIndex
  L1_2(L2_2)
  L1_2 = ipairs
  L2_2 = A0_2._diary_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.TravelBrochureUtils
    L6_2 = L6_2.IsDiaryNew
    L7_2 = L5_2.ID
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L6_2 = L5_2.HasAvailableReward
      if not L6_2 then
        goto lbl_26
      end
    end
    L6_2 = A0_2._binder
    L6_2 = L6_2.list_view
    L7_2 = L6_2
    L6_2 = L6_2.PushTrackIndex
    L8_2 = L4_2 - 1
    L6_2(L7_2, L8_2)
    ::lbl_26::
  end
end
L9_1._refresh_list_track = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._diary_datas
  L1_2 = #L1_2
  L1_2 = L1_2 - 1
  L1_2 = 1.0 / L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect
  L2_2 = L2_2.horizontalNormalizedPosition
  L4_2 = A0_2
  L3_2 = A0_2._refresh_bg_right_rotation
  L5_2 = L2_2
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_bg_left_rotation
  L5_2 = L2_2
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
end
L9_1._refresh_bg_rotation = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = 0
  L4_2 = 0
  L5_2 = A2_2 * 2
  L5_2 = 1 - L5_2
  if A1_2 < L5_2 then
  else
    L5_2 = 1 - A2_2
    if A1_2 < L5_2 then
      L5_2 = A1_2 - 1
      L6_2 = A2_2 * 2
      L5_2 = L5_2 + L6_2
      L3_2 = L5_2 / A2_2
    else
      L3_2 = 1
      L5_2 = A1_2 - 1
      L5_2 = L5_2 + A2_2
      L4_2 = L5_2 / A2_2
    end
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_bg_right
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector3
  L7_2 = 0
  L8_2 = 0
  L9_2 = 10.5 * L3_2
  L9_2 = -32.5 + L9_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2.localEulerAngles = L6_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_bg_right_down
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector3
  L7_2 = 0
  L8_2 = 0
  L9_2 = 9 * L4_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2.localEulerAngles = L6_2
end
L9_1._refresh_bg_right_rotation = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = 0
  L4_2 = 0
  L5_2 = A2_2 * 2
  if A1_2 > L5_2 then
  elseif A2_2 < A1_2 then
    L5_2 = A2_2 * 2
    L5_2 = L5_2 - A1_2
    L3_2 = L5_2 / A2_2
  else
    L3_2 = 1
    L5_2 = A2_2 - A1_2
    L4_2 = L5_2 / A2_2
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_bg_left
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector3
  L7_2 = 0
  L8_2 = 0
  L9_2 = 10.5 * L3_2
  L9_2 = -32.5 + L9_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2.localEulerAngles = L6_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_bg_left_down
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector3
  L7_2 = 0
  L8_2 = 0
  L9_2 = 9 * L4_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2.localEulerAngles = L6_2
end
L9_1._refresh_bg_left_rotation = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._snapped_index
  L1_2 = 1 < L1_2
  L2_2 = A0_2._snapped_index
  L4_2 = A0_2
  L3_2 = A0_2._get_item_count
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 < L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_arrow
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L9_1._refresh_arrow = L10_1
function L10_1(A0_2)
  local L1_2
  L1_2 = A0_2._diary_datas
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  return L1_2
end
L9_1.has_directory = L10_1
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
      goto lbl_29
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.TravelBrochureDirectoryItemPanel
  L8_2 = G
  L8_2 = L8_2.TravelBrochureDirectoryItemPanelBinder
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
  L6_2 = L4_2
  L5_2 = L4_2.register_selected_callback
  L7_2 = A0_2._on_item_selected
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  ::lbl_29::
  L5_2 = A0_2._diary_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  if L5_2 == nil then
    L7_2 = L4_2
    L6_2 = L4_2.setup_unknown_view
    L8_2 = A2_2 + 1
    L6_2(L7_2, L8_2)
  else
    L7_2 = L4_2
    L6_2 = L4_2.setup_view
    L8_2 = L5_2
    L9_2 = A2_2 + 1
    L6_2(L7_2, L8_2, L9_2)
  end
  L7_2 = L4_2
  L6_2 = L4_2.set_checked
  L8_2 = A2_2 + 1
  L9_2 = A0_2._snapped_index
  L8_2 = L8_2 == L9_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L9_1._on_item_change = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A2_2.ItemIndex
  L3_2 = L3_2 + 1
  L4_2 = A0_2._snapped_index
  if L4_2 ~= nil then
    L4_2 = A0_2._snapped_index
    if L3_2 <= L4_2 then
      L4_2 = 1
      if L4_2 then
        goto lbl_13
      end
    end
  end
  L4_2 = -1
  ::lbl_13::
  L6_2 = A0_2
  L5_2 = A0_2._refresh_snapped
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  A0_2._snapped_index = L3_2
  L6_2 = A0_2
  L5_2 = A0_2._refresh_arrow
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.force_set_first_navigation_target
  L5_2(L6_2)
  L5_2 = A0_2._enable_sound
  if L5_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.GlobalVars
    L5_2 = L5_2.s_AudioManager
    L6_2 = L5_2
    L5_2 = L5_2.PostEvent
    L8_2 = A0_2
    L7_2 = A0_2._get_snap_sound
    L9_2 = L4_2
    L10_2 = L3_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  end
end
L9_1._on_snap_nearest_changed = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A2_2 - 1
  L3_2 = L3_2 % 8
  L3_2 = L3_2 + 1
  if A1_2 < 0 then
    L4_2 = string
    L4_2 = L4_2.format
    L5_2 = "Ev_sfx_ui_click_travelBrochure_switch_%02d"
    L6_2 = L3_2
    return L4_2(L5_2, L6_2)
  else
    L4_2 = string
    L4_2 = L4_2.format
    L5_2 = "Ev_sfx_ui_click_travelBrochure_switch_%02d_reversal"
    L6_2 = L3_2
    return L4_2(L5_2, L6_2)
  end
end
L9_1._get_snap_sound = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._is_doing_snap = false
  L4_2 = A0_2
  L3_2 = A0_2._try_trigger_swipe_sound
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._to_open_diary_id
  if L3_2 ~= 0 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.invoke_callback
    L4_2 = A0_2._item_click_callback
    L5_2 = A0_2._item_click_handler
    L6_2 = A0_2._to_open_diary_id
    L3_2(L4_2, L5_2, L6_2)
    A0_2._to_open_diary_id = 0
  end
end
L9_1._on_snap_item_finished = L10_1
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
    L4_2 = A0_2
    L3_2 = A0_2._get_item_count
    L3_2 = L3_2(L4_2)
    if A1_2 > L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._get_item_count
      L3_2 = L3_2(L4_2)
      A1_2 = L3_2
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view
  L4_2 = L3_2
  L3_2 = L3_2.SetSnapTargetItemIndex
  L5_2 = A1_2 - 1
  L3_2(L4_2, L5_2)
  A0_2._is_doing_snap = true
end
L9_1._snap_to_index = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
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
      L4_2(L5_2, L6_2)
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
    L4_2(L5_2, L6_2)
  end
end
L9_1._refresh_snapped = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._snap_to_index
  L3_2 = A0_2._snapped_index
  L4_2 = L3_1
  L3_2 = L3_2 - L4_2
  L1_2(L2_2, L3_2)
end
L9_1._on_btn_last = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._snap_to_index
  L3_2 = A0_2._snapped_index
  L4_2 = L3_1
  L3_2 = L3_2 + L4_2
  L1_2(L2_2, L3_2)
end
L9_1._on_btn_next = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = A0_2._is_doing_snap
    if L2_2 then
      return
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_diary_index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._is_doing_snap
  if not L3_2 then
    L3_2 = A0_2._snapped_index
    if L2_2 == L3_2 then
      L3_2 = G
      L3_2 = L3_2.Utils
      L3_2 = L3_2.invoke_callback
      L4_2 = A0_2._item_click_callback
      L5_2 = A0_2._item_click_handler
      L6_2 = A1_2
      L3_2(L4_2, L5_2, L6_2)
  end
  else
    A0_2._to_open_diary_id = A1_2
    L4_2 = A0_2
    L3_2 = A0_2._snap_to_index
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L9_1._on_item_clicked = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._enable_sound = false
  L3_2 = A0_2
  L2_2 = A0_2._get_diary_index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view
  L4_2 = L3_2
  L3_2 = L3_2.MovePanelToItemIndex
  L5_2 = L2_2 - 1
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._snap_to_index
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view
  L4_2 = L3_2
  L3_2 = L3_2.FinishSnapImmediately
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CoroutineUtils
  L3_2 = L3_2.InvokeNextFrame
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    A0_2._enable_sound = true
  end
  L3_2(L4_2)
end
L9_1._on_diary_closed = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A0_2._diary_datas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.ID
    if A1_2 == L7_2 then
      return L5_2
    end
  end
  L2_2 = 1
  return L2_2
end
L9_1._get_diary_index = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._snap_to_index
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L9_1._on_item_selected = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._enable_sound
  if not L2_2 then
    return
  end
  L2_2 = A0_2._last_swipe_delta
  if A1_2 then
    L3_2 = A0_2._swip_start_played
    if not L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._do_trigger_swipe_sound
      L5_2 = L2_2
      L6_2 = A1_2
      L3_2(L4_2, L5_2, L6_2)
      A0_2._swip_start_played = true
    end
  else
    L3_2 = A0_2._swip_start_played
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._do_trigger_swipe_sound
      L5_2 = L2_2
      L6_2 = A1_2
      L3_2(L4_2, L5_2, L6_2)
      A0_2._swip_start_played = false
    end
  end
end
L9_1._try_trigger_swipe_sound = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A2_2 then
    if 0 < A1_2 then
      L3_2 = "Ev_sfx_ui_click_travelBrochure_switch_start"
      if L3_2 then
        goto lbl_9
      end
    end
    L3_2 = "Ev_sfx_ui_click_travelBrochure_switch_start_reversal"
    ::lbl_9::
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_AudioManager
    L5_2 = L4_2
    L4_2 = L4_2.PostEvent
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  else
    if 0 < A1_2 then
      L3_2 = "Ev_sfx_ui_click_travelBrochure_switch_stop"
      if L3_2 then
        goto lbl_24
      end
    end
    L3_2 = "Ev_sfx_ui_click_travelBrochure_switch_stop_reversal"
    ::lbl_24::
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_AudioManager
    L5_2 = L4_2
    L4_2 = L4_2.PostEvent
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L9_1._do_trigger_swipe_sound = L10_1
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
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InControlActionsManager
  L2_2 = L2_2.Instance
  L2_2 = L2_2.InControlInputEventEnabled
  if not L2_2 then
    return
  end
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
  L3_2 = A0_2.is_active_in_hierarchy
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = A0_2._wait_in_control_release
  if L3_2 then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.InControlActionsManager
  L3_2 = L3_2.Instance
  L3_2 = L3_2.InControlInputEventEnabled
  if not L3_2 then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickLeft
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L3_2 = L6_1
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
      L3_2 = L6_1
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
  A0_2._wait_in_control_release = false
end
L9_1._on_in_control_input_switch = L10_1
return L9_1
