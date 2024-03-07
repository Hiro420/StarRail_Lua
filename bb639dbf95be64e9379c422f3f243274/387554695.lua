local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.RogueSelectAreaItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.RogueSelectAreaItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.RogueSelectAreaEndlessItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueScheduleCheckPanel"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MissionModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueModule
L2_1 = 0.75
L3_1 = 0.6
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "RogueSimulatedEntranceListPanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._rogue_area_data_list = nil
  A0_2._rogue_area_point_panels = nil
  L3_2 = {}
  A0_2._rogue_area_dic_table = L3_2
  A0_2._is_doing_snap = false
  A0_2._is_first_refresh_view = true
  A0_2._min_area_progress = 1
  A0_2._max_area_progress = 1
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.RogueScheduleCheckPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_schedule = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.above_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_btn_quick_snap
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.bottom_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_btn_quick_snap
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rogue_loop_list_view_extra
  L2_2 = L1_2
  L1_2 = L1_2.RegisterDragStartCallback
  L3_2 = A0_2
  L4_2 = A0_2._on_drag_start
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_area_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._get_area_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_area_list
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2.on_snap_nearest_changed
    L3_3 = A0_2
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L1_2.mOnSnapNearestChanged = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_area_list
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2.on_snap_item_finished
    L3_3 = A0_2
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L1_2.mOnSnapItemFinished = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_snaping_status
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_handlers
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_bind_input_callback
  L1_2(L2_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._rogue_area_data_list = nil
  A0_2._rogue_area_point_panels = nil
  A0_2._play_screen_transfer = nil
end
L4_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_shown_item_state
  L1_2(L2_2)
end
L4_1._on_return_to_top = L5_1
function L5_1(A0_2, A1_2)
  A0_2._item_dot_list_panel = A1_2
end
L4_1.setup_view = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._try_init_data
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_area_list
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._move_to_cur_area
  L3_2(L4_2)
  L3_2 = A0_2._is_first_refresh_view
  if L3_2 and A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._try_show_area_detail_page
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._owner
    L5_2 = L4_2
    L4_2 = L4_2.set_skip_hint
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  A0_2._is_first_refresh_view = false
end
L4_1.refresh_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_area_list
  L1_2 = L1_2.CurSnapNearestItemIndex
  L3_2 = A0_2
  L2_2 = A0_2._get_rogue_area_list_index
  L4_2 = A0_2._rogue_area_data_list
  L2_2 = L2_2(L3_2, L4_2)
  if L1_2 == L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._open_detail
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L4_1.do_gamepad_confirm_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2
  L2_2 = A0_2._get_rogue_area_list_index
  L4_2 = A0_2._rogue_area_data_list
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_area_list
  L3_2 = L3_2.ItemList
  L4_2 = 0
  L5_2 = L3_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    if L8_2 ~= nil then
      L8_2 = L3_2[L7_2]
      L8_2 = L8_2.UserObjectData
      if L8_2 ~= nil then
        L8_2 = L3_2[L7_2]
        L8_2 = L8_2.UserObjectData
        if A1_2 then
          L9_2 = L3_2[L7_2]
          L9_2 = L9_2.ItemIndex
          if L9_2 == L2_2 then
            goto lbl_30
          end
        end
        L10_2 = L8_2
        L9_2 = L8_2.set_enable
        L11_2 = A1_2
        L9_2(L10_2, L11_2)
      end
    end
    ::lbl_30::
  end
end
L4_1.play_fade_anim = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueSelectMainPagePlayDialogTransfer
  L4_2 = L4_1._play_detail_transfer
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueEndlessExpired
  L4_2 = L4_1._on_rogue_endless_expired
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialMoveScrollView
  L4_2 = L4_1._on_tutorial_move_scroll_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.LNKFDHPBILC
  L4_2 = L4_1._on_get_rogue_info_sc_rsp
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._add_handlers = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  A0_2._rogue_area_data_list = nil
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetRogueData
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.ProgressInfo
  L2_2 = L2_2.ProgressAreaDic
  if L2_2 == nil then
    return
  end
  if L2_2 ~= nil then
    L3_2 = L2_2.Count
    L3_2 = L3_2 - 1
    if L3_2 then
      goto lbl_17
    end
  end
  L3_2 = 0
  ::lbl_17::
  L4_2 = {}
  A0_2._rogue_area_dic_table = L4_2
  L4_2 = 1
  L5_2 = L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L7_2
    L10_2 = L2_2
    L9_2 = L2_2.ContainsKey
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L9_2 = math
      L9_2 = L9_2.min
      L10_2 = A0_2._min_area_progress
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      A0_2._min_area_progress = L9_2
      L9_2 = math
      L9_2 = L9_2.max
      L10_2 = A0_2._max_area_progress
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      A0_2._max_area_progress = L9_2
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2._rogue_area_dic_table
      L11_2 = L2_2[L8_2]
      L9_2(L10_2, L11_2)
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._try_add_endless_area
  L4_2(L5_2)
  L4_2 = 1
  L5_2 = L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L7_2
    L10_2 = L2_2
    L9_2 = L2_2.ContainsKey
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L9_2 = L2_2[L8_2]
      L11_2 = A0_2
      L10_2 = A0_2._is_area_list_doing
      L12_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2)
      if L10_2 then
        A0_2._rogue_area_data_list = L9_2
        return
      end
    end
  end
  if A1_2 == nil then
    L4_2 = A0_2._customized_area_id
    if L4_2 == nil then
      goto lbl_99
    end
  end
  if A1_2 ~= nil then
    A0_2._customized_area_id = A1_2
  end
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetRogueData
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.ProgressInfo
  L5_2 = L4_2
  L4_2 = L4_2.GetAreaDataByID
  L6_2 = A0_2._customized_area_id
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 ~= nil then
    L5_2 = L1_1
    L6_2 = L5_2
    L5_2 = L5_2.GetRogueData
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2.ProgressInfo
    L5_2 = L5_2.ProgressAreaDic
    L7_2 = L5_2
    L6_2 = L5_2.ContainsKey
    L8_2 = L4_2.AreaProgressID
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = L4_2.AreaProgressID
      L6_2 = L5_2[L6_2]
      A0_2._rogue_area_data_list = L6_2
      return
    end
  end
  ::lbl_99::
  L5_2 = A0_2
  L4_2 = A0_2._get_tutorial_target_area
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    A0_2._rogue_area_data_list = L4_2
    L6_2 = A0_2
    L5_2 = A0_2._clear_tutorial_target_area
    L5_2(L6_2)
    return
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.RogueUtils
  L5_2 = L5_2.GetDefaultAreaDataToShow
  L6_2 = false
  L5_2 = L5_2(L6_2)
  if L5_2 ~= nil then
    L7_2 = L2_2
    L6_2 = L2_2.ContainsKey
    L8_2 = L5_2.AreaProgressID
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = L5_2.AreaProgressID
      L6_2 = L2_2[L6_2]
      A0_2._rogue_area_data_list = L6_2
    else
      L6_2 = L5_2.IsActivity
      if L6_2 then
        L6_2 = L1_1
        L7_2 = L6_2
        L6_2 = L6_2.GetRogueData
        L6_2 = L6_2(L7_2)
        L6_2 = L6_2.ProgressInfo
        L6_2 = L6_2.ActivityAreaDatas
        A0_2._rogue_area_data_list = L6_2
      end
    end
  end
  L6_2 = A0_2._rogue_area_data_list
  if L6_2 ~= nil then
    L6_2 = L5_2.AreaProgressID
    if L6_2 ~= 0 then
      return
    end
  end
  L6_2 = 1
  L7_2 = L3_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L9_2
    L12_2 = L2_2
    L11_2 = L2_2.ContainsKey
    L13_2 = L10_2
    L11_2 = L11_2(L12_2, L13_2)
    if L11_2 then
      L11_2 = L2_2[L10_2]
      L13_2 = A0_2
      L12_2 = A0_2._is_area_list_unlock
      L14_2 = L11_2
      L12_2 = L12_2(L13_2, L14_2)
      if L12_2 then
        A0_2._rogue_area_data_list = L11_2
      end
    end
  end
end
L4_1._try_init_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_rogue_endless_opening
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.GetRogueData
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.ProgressInfo
    L1_2 = L1_2.ActivityAreaDatas
    if L1_2 ~= nil then
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = A0_2._rogue_area_dic_table
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._rogue_area_dic_table
      L2_2 = #L2_2
      A0_2.rogue_endless_index = L2_2
      return
    end
  end
  A0_2.rogue_endless_index = -1
end
L4_1._try_add_endless_area = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.IsRogueEndlessOpening
  return L1_2(L2_2)
end
L4_1._is_rogue_endless_opening = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_rogue_area_list_index
  L3_2 = A0_2._rogue_area_data_list
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_area_list
  L2_2 = L2_2.CurSnapNearestItemIndex
  if L1_2 ~= L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._move_to_index
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.RogueDLC.RogueEndless.ActivityMain.RogueEndlessActivityMainPage"
  L2_2(L3_2)
end
L4_1._open_endless_rogue = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_rogue_endless_opening
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._rogue_area_dic_table
    if L1_2 ~= nil then
      goto lbl_10
    end
  end
  L1_2 = -1
  do return L1_2 end
  ::lbl_10::
  L1_2 = A0_2.rogue_endless_index
  return L1_2
end
L4_1._get_rogue_endless_index = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.rogue_endless_index
  L2_2 = A0_2
  L1_2 = A0_2._is_rogue_endless_opening
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 ~= -1 and L1_2
  return L1_2
end
L4_1._check_rogue_endless_schedule = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.LNKFDHPBILC
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.BackToFirstPage
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.AOFFGNBCIPP
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkHint
  L2_2 = "UIText_ActivityRogueEndless_Entry_End_Tips"
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RogueSelectArea3DExitImmediate
  L1_2(L2_2)
end
L4_1._on_rogue_endless_expired = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_area_list
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_area_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._rogue_area_dic_table
  L3_2 = #L3_2
  L3_2 = L3_2 + 2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_area_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L4_1._setup_area_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._rogue_area_data_list
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_rogue_area_list_index
  L3_2 = A0_2._rogue_area_data_list
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._move_to_index
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_area_list
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_area_item_panel_selected
  L5_2 = L2_2.UserObjectData
  L6_2 = true
  L7_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_area_points
  L3_2(L4_2)
end
L4_1._move_to_cur_area = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._rogue_area_dic_table
  L1_2 = #L1_2
  L2_2 = A0_2._item_dot_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_item_count
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L1_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._rogue_area_dic_table
    L6_2 = L6_2[L5_2]
    L8_2 = A0_2
    L7_2 = A0_2._is_same_rogue_area_data_list
    L9_2 = L6_2
    L10_2 = A0_2._rogue_area_data_list
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if L7_2 then
      L7_2 = A0_2._item_dot_list_panel
      L8_2 = L7_2
      L7_2 = L7_2.set_selected
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
end
L4_1._setup_area_points = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_area_list
  L2_2 = L2_2.ItemList
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 ~= nil then
      L6_2 = L5_2.UserObjectData
      if L6_2 ~= nil then
        L6_2 = L5_2.UserObjectData
        L7_2 = A0_2._rogue_area_dic_table
        L8_2 = L5_2.ItemIndex
        L7_2 = L7_2[L8_2]
        L9_2 = L6_2
        L8_2 = L6_2.setup_view
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
      end
    end
  end
end
L4_1._refresh_shown_item_state = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = A1_2.Count
    if L2_2 ~= 0 then
      goto lbl_8
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_8::
  L2_2 = A1_2[0]
  L2_2 = L2_2.RogueAreaStatus
  L2_2 = #L2_2
  L3_2 = G
  L3_2 = L3_2.UtilEngineWrap
  L3_2 = L3_2.ConvCsEnumToNum
  L4_2 = CS
  L4_2 = L4_2.AOLNJCNICEG
  L4_2 = L4_2.PALNCCGNNAH
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 ~= L3_2
  return L2_2
end
L4_1._is_area_list_unlock = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 ~= nil then
    L2_2 = A1_2.Count
    if L2_2 ~= 0 then
      goto lbl_8
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_8::
  L2_2 = 0
  L3_2 = A1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = L6_2.IsDoing
    if L7_2 == true then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L4_1._is_area_list_doing = L5_1
function L5_1(A0_2, A1_2)
  A0_2._is_doing_snap = A1_2
end
L4_1._refresh_snaping_status = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  if A1_2 == true then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_select_area
    L3_2 = L2_2
    L2_2 = L2_2.PostButtonSound
    L2_2(L3_2)
  end
  L2_2 = A0_2._rogue_area_data_list
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._rogue_area_data_list
  L2_2 = L2_2[0]
  L4_2 = A0_2
  L3_2 = A0_2._check_rogue_endless_schedule
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_rogue_endless_expired
    L3_2(L4_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._get_rogue_area_list_index
  L5_2 = A0_2._rogue_area_data_list
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._get_rogue_endless_index
  L4_2 = L4_2(L5_2)
  if L3_2 == L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._is_rogue_endless_opening
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._show_endless_rogue_out_of_date_toast
      L4_2(L5_2)
    else
      L4_2 = L1_1
      L5_2 = L4_2
      L4_2 = L4_2.IsRogueEndlessUnlock
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L5_2 = A0_2
        L4_2 = A0_2._open_endless_rogue
        L4_2(L5_2)
      else
        L5_2 = A0_2
        L4_2 = A0_2._show_endless_rogue_lock_toast
        L4_2(L5_2)
      end
    end
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2.check_resident_rogue_other_doing
  L6_2 = L2_2.AreaProgressID
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._show_other_doing_toast
    L4_2(L5_2)
    return
  end
  L4_2 = A0_2._panel_schedule
  if L4_2 then
    L4_2 = A0_2._panel_schedule
    L5_2 = L4_2
    L4_2 = L4_2.check_schedule
    L4_2 = L4_2(L5_2)
    if L4_2 == false then
      return
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._get_rogue_area_list_index
  L6_2 = A0_2._rogue_area_data_list
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.scroll_area_list
  L5_2 = L5_2.CurSnapNearestItemIndex
  if L4_2 ~= L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._move_to_index
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.SDKLuaReportAdapter
  L5_2 = L5_2.ReportUIButtonClick
  L6_2 = A0_2.__name
  L7_2 = ""
  L8_2 = L2_2.AreaProgressID
  L9_2 = A0_2._owner
  L9_2 = L9_2.guid
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = A0_2
  L5_2 = A0_2._transfer_to_detail
  L5_2(L6_2)
end
L4_1._open_detail = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Rogue.MainPage.RogueSelectAreaDetailDialog"
  L3_2 = A0_2._rogue_area_data_list
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.set_exit_callback
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._transfer_to_select
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
end
L4_1._transfer_to_detail = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if not L2_2 or not A1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_area_list
  L3_2 = pairs
  L4_2 = A0_2._rogue_area_dic_table
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L2_2.CurSnapNearestItemIndex
    if L6_2 ~= L8_2 then
      L9_2 = L2_2
      L8_2 = L2_2.GetShownItemByItemIndex
      L10_2 = L6_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 ~= nil then
        L10_2 = A0_2
        L9_2 = A0_2._set_area_item_panel_enable
        L11_2 = L8_2.UserObjectData
        L12_2 = false
        L9_2(L10_2, L11_2, L12_2)
      end
    end
  end
  L4_2 = L2_2
  L3_2 = L2_2.GetShownItemByItemIndex
  L5_2 = L2_2.CurSnapNearestItemIndex
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L5_2 = A0_2
    L4_2 = A0_2._set_area_item_panel_detail_select
    L6_2 = L3_2.UserObjectData
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
  end
end
L4_1._play_detail_transfer = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RogueSelectMainPagePlayDialogTransfer
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_area_list
  L2_2 = pairs
  L3_2 = A0_2._rogue_area_dic_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_2.CurSnapNearestItemIndex
    if L5_2 ~= L7_2 then
      L8_2 = L1_2
      L7_2 = L1_2.GetShownItemByItemIndex
      L9_2 = L5_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 ~= nil then
        L9_2 = A0_2
        L8_2 = A0_2._set_area_item_panel_enable
        L10_2 = L7_2.UserObjectData
        L11_2 = true
        L8_2(L9_2, L10_2, L11_2)
      end
    end
  end
  L3_2 = L1_2
  L2_2 = L1_2.GetShownItemByItemIndex
  L4_2 = L1_2.CurSnapNearestItemIndex
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._set_area_item_panel_detail_select
    L5_2 = L2_2.UserObjectData
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
  end
end
L4_1._transfer_to_select = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueUnlockConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.RogueAreaRow
  L3_2 = L3_2.UnlockID
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIPileToastMessageTextID
  L5_2 = L2_2.RogueUnlockDetail
  L3_2(L4_2, L5_2)
end
L4_1._show_lock_hint = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetRogueData
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.ProgressInfo
  L3_2 = L3_2.AllAreaDataList
  L4_2 = 0
  L5_2 = L3_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L9_2 = L8_2.IsActivity
    if not L9_2 then
      L9_2 = L8_2.AreaProgressID
      if L9_2 ~= A1_2 then
        L9_2 = L8_2.IsDoing
        if L9_2 then
          L9_2 = true
          return L9_2
        end
      end
    end
  end
  L4_2 = false
  return L4_2
end
L4_1.check_resident_rogue_other_doing = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueData
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.ProgressInfo
  L2_2 = L2_2.AllAreaDataList
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = L7_2.IsActivity
    if not L8_2 then
      L8_2 = L7_2.IsDoing
      if L8_2 then
        L8_2 = L7_2.AreaProgressID
        return L8_2
      end
    end
  end
  L3_2 = -1
  return L3_2
end
L4_1._get_resident_rogue_doing_area_data_progress_id = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueData
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.ProgressInfo
  L2_2 = L2_2.AllAreaDataList
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = L7_2.IsActivity
    if not L8_2 then
      L8_2 = L7_2.IsDoing
      if L8_2 then
        return L7_2
      end
    end
  end
  L3_2 = nil
  return L3_2
end
L4_1._get_resident_rogue_doing_area_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._rogue_area_data_list
  if L1_2 ~= nil then
    L1_2 = A0_2._rogue_area_data_list
    L1_2 = L1_2.Count
    if L1_2 ~= 0 then
      goto lbl_10
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_10::
  L2_2 = A0_2
  L1_2 = A0_2._get_rogue_area_list_index
  L3_2 = A0_2._rogue_area_data_list
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_rogue_endless_index
  L2_2 = L2_2(L3_2)
  if L1_2 == L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = 0
  L3_2 = A0_2._rogue_area_data_list
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._rogue_area_data_list
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.AreaID
    L8_2 = A0_2._customized_area_id
    if L7_2 == L8_2 then
      L7_2 = L2_1
      if 0 < L7_2 then
        L9_2 = A0_2
        L8_2 = A0_2.show_full_screen_block
        L10_2 = L7_2 + 3
        L8_2 = L8_2(L9_2, L10_2)
        L9_2 = CS
        L9_2 = L9_2.RPG
        L9_2 = L9_2.Client
        L9_2 = L9_2.CoroutineUtils
        L9_2 = L9_2.InvokeAfterSeconds
        L10_2 = L7_2
        function L11_2()
          local L0_3, L1_3, L2_3
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3._open_detail
          L2_3 = false
          L0_3(L1_3, L2_3)
          L0_3 = CS
          L0_3 = L0_3.RPG
          L0_3 = L0_3.Client
          L0_3 = L0_3.GlobalVars
          L0_3 = L0_3.s_UIManager
          L1_3 = L0_3
          L0_3 = L0_3.TryUnblockFixedTime
          L2_3 = L8_2
          L0_3(L1_3, L2_3)
        end
        L9_2(L10_2, L11_2)
      else
        L9_2 = A0_2
        L8_2 = A0_2._open_detail
        L10_2 = false
        L8_2(L9_2, L10_2)
      end
      L8_2 = true
      return L8_2
    end
  end
  L2_2 = false
  return L2_2
end
L4_1._try_show_area_detail_page = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.refresh_view
  L1_2(L2_2)
end
L4_1._on_get_rogue_info_sc_rsp = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == "RogueEndless" then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.CoroutineUtils
    L2_2 = L2_2.InvokeNextFrame
    function L3_2()
      local L0_3, L1_3
    end
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._get_rogue_endless_index
    L2_2 = L2_2(L3_2)
    if 0 < L2_2 then
      L3_2 = A0_2._rogue_area_dic_table
      L3_2 = L3_2[L2_2]
      A0_2._rogue_area_data_list = L3_2
      L4_2 = A0_2
      L3_2 = A0_2._move_to_cur_area
      L3_2(L4_2)
    else
      L4_2 = A0_2
      L3_2 = A0_2._set_tutorial_target_area
      L5_2 = L1_1
      L6_2 = L5_2
      L5_2 = L5_2.GetRogueData
      L5_2 = L5_2(L6_2)
      L5_2 = L5_2.ProgressInfo
      L5_2 = L5_2.ActivityAreaDatas
      L3_2(L4_2, L5_2)
    end
  end
end
L4_1._on_tutorial_move_scroll_view = L5_1
function L5_1(A0_2, A1_2)
  A0_2._tutorial_target_area_data_list = A1_2
end
L4_1._set_tutorial_target_area = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._tutorial_target_area_data_list
  return L1_2
end
L4_1._get_tutorial_target_area = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._tutorial_target_area_data_list = nil
end
L4_1._clear_tutorial_target_area = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A2_2 == 0
  if L3_2 then
    L5_2 = A1_2
    L4_2 = A1_2.NewListViewItem
    L6_2 = 0
    return L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._rogue_area_dic_table
  L4_2 = L4_2[A2_2]
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.UserObjectData
  if L6_2 == nil then
    L8_2 = A0_2
    L7_2 = A0_2._is_rogue_endless_opening
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L8_2 = A0_2
      L7_2 = A0_2._get_rogue_endless_index
      L7_2 = L7_2(L8_2)
      if A2_2 == L7_2 then
        L8_2 = A0_2
        L7_2 = A0_2.create_panel
        L9_2 = G
        L9_2 = L9_2.RogueSelectAreaEndlessItemPanel
        L10_2 = G
        L10_2 = L10_2.RogueSelectAreaItemPanelBinder
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        L6_2 = L7_2
    end
    else
      L8_2 = A0_2
      L7_2 = A0_2.create_panel
      L9_2 = G
      L9_2 = L9_2.RogueSelectAreaItemPanel
      L10_2 = G
      L10_2 = L10_2.RogueSelectAreaItemPanelBinder
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2 = L7_2
    end
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2.transform
    L7_2(L8_2, L9_2)
    L5_2.UserObjectData = L6_2
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L9_2 = L4_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_click_callback
    L9_2 = A0_2._on_btn_select_area
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = A0_2
    L7_2 = A0_2._set_area_item_panel_selected
    L9_2 = L6_2
    L11_2 = A0_2
    L10_2 = A0_2._is_same_rogue_area_data_list
    L12_2 = L4_2
    L13_2 = A0_2._rogue_area_data_list
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = true
    L7_2(L8_2, L9_2, L10_2, L11_2)
    return L5_2
  end
  L8_2 = L6_2
  L7_2 = L6_2.setup_view
  L9_2 = L4_2
  L7_2(L8_2, L9_2)
  L8_2 = A0_2
  L7_2 = A0_2._set_area_item_panel_selected
  L9_2 = L6_2
  L11_2 = A0_2
  L10_2 = A0_2._is_same_rogue_area_data_list
  L12_2 = L4_2
  L13_2 = A0_2._rogue_area_data_list
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = true
  L7_2(L8_2, L9_2, L10_2, L11_2)
  return L5_2
end
L4_1._get_area_item = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._get_rogue_area_list_index
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._get_rogue_area_list_index
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 == L4_2
  return L3_2
end
L4_1._is_same_rogue_area_data_list = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A2_2.ItemIndex
  L3_2 = L3_2 == 0
  if L3_2 then
    return
  end
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.IsCsObjectNull
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L4_2 = A0_2._nearest_item
  if L4_2 ~= nil then
    L4_2 = A0_2._nearest_item
    L4_2 = L4_2.ItemIndex
    L5_2 = A2_2.ItemIndex
    if L4_2 == L5_2 then
      return
    end
  end
  L4_2 = A0_2._nearest_item
  if L4_2 ~= nil then
    L5_2 = A0_2
    L4_2 = A0_2._set_area_item_panel_selected
    L6_2 = A0_2._nearest_item
    L6_2 = L6_2.UserObjectData
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
  end
  A0_2._nearest_item = A2_2
  L5_2 = A0_2
  L4_2 = A0_2._set_area_item_panel_selected
  L6_2 = A0_2._nearest_item
  L6_2 = L6_2.UserObjectData
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._rogue_area_dic_table
  L5_2 = A2_2.ItemIndex
  L4_2 = L4_2[L5_2]
  A0_2._rogue_area_data_list = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_area_points
  L4_2(L5_2)
end
L4_1.on_snap_nearest_changed = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_snaping_status
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L4_1.on_snap_item_finished = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    return
  end
  L5_2 = A1_2
  L4_2 = A1_2.set_selected
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
end
L4_1._set_area_item_panel_selected = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  L4_2 = A1_2
  L3_2 = A1_2.set_enable
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L4_1._set_area_item_panel_enable = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  L4_2 = A1_2
  L3_2 = A1_2.set_detail_selected
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L4_1._set_area_item_panel_detail_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_resident_rogue_doing_area_data_progress_id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._rogue_area_dic_table
  L2_2 = L2_2[L1_2]
  L4_2 = A0_2
  L3_2 = A0_2._try_switch_area
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L4_1._on_btn_quick_snap = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._try_switch_area
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L4_1._on_btn_select_area = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    L2_2 = A1_2.Count
    if L2_2 ~= 0 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L3_2 = A0_2
  L2_2 = A0_2._get_rogue_area_list_index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._snap_to_index
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._rogue_area_data_list
  L3_2 = L3_2 == A1_2
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._open_detail
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
end
L4_1._try_switch_area = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_resident_rogue_doing_area_data
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = "UIText_Rogue_EnterPage_New_Tip_1"
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = L1_2.RogueAreaRow
  L5_2 = L5_2.AreaNameID
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIPileToastMessageString
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L4_1._show_other_doing_toast = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetMainMissionData
  L3_2 = L1_1.RogueEndlessConstValue
  L3_2 = L3_2.UnlockMainMissionID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = "UIText_ActivityRogueEndless_Lock_Mission_Tips"
  L4_2 = L1_2.NameStr
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIPileToastMessageString
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L4_1._show_endless_rogue_lock_toast = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageString
  L3_2 = "UIText_ActivityRogueEndless_Entry_End_Tips"
  L1_2(L2_2, L3_2)
end
L4_1._show_endless_rogue_out_of_date_toast = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not (A1_2 < 1) then
    L2_2 = A0_2._rogue_area_dic_table
    L2_2 = #L2_2
    if not (A1_2 > L2_2) then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L3_2 = A0_2
  L2_2 = A0_2.try_show_doing_tips
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_area_list
  L4_2 = L3_2
  L3_2 = L3_2.SetSnapTargetItemIndex
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_snaping_status
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L4_1._snap_to_index = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._get_resident_rogue_doing_area_data_progress_id
  L2_2 = L2_2(L3_2)
  if L2_2 == -1 then
    return
  end
  L3_2 = A1_2 - 2
  if L2_2 <= L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.show_doing_tips
    L5_2 = 1
    L3_2(L4_2, L5_2)
  else
    L3_2 = A1_2 + 2
    if L2_2 >= L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.show_doing_tips
      L5_2 = 2
      L3_2(L4_2, L5_2)
    else
      L4_2 = A0_2
      L3_2 = A0_2.show_doing_tips
      L5_2 = 0
      L3_2(L4_2, L5_2)
    end
  end
end
L4_1.try_show_doing_tips = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.above_tip_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_active
  L4_2 = A1_2 == 1
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.bottom_tip_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_active
  L4_2 = A1_2 == 2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  if A1_2 == 0 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_resident_rogue_doing_area_data
  L2_2 = L2_2(L3_2)
  if A1_2 == 1 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.above_tip_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  elseif A1_2 == 2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.bottom_tip_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L4_1.show_doing_tips = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_area_list
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemIndex
  L4_2 = A1_2 - 1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_area_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.try_show_doing_tips
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L4_1._move_to_index = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_doing_snap
  if L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.rogue_loop_list_view_extra
  L3_2 = L2_2
  L2_2 = L2_2.ShowBorderAdjust
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_snaping_status
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L4_1._show_rebound = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 < 1 then
    L3_2 = A0_2
    L2_2 = A0_2._show_rebound
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = true
    return L2_2
  end
  L2_2 = A0_2._rogue_area_dic_table
  L2_2 = #L2_2
  if A1_2 > L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._show_rebound
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = true
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L4_1._check_switch_to_border_rebound = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TutorialSupportModule
  L2_2 = L1_2
  L1_2 = L1_2.HasTutorialBlockMask
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_rogue_area_list_index
  L3_2 = A0_2._rogue_area_data_list
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._check_switch_to_border_rebound
  L4_2 = L1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L2_2 = A0_2._rogue_area_dic_table
  L3_2 = L1_2 - 1
  L2_2 = L2_2[L3_2]
  L4_2 = A0_2
  L3_2 = A0_2._try_switch_area
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L4_1._try_switch_to_prev = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TutorialSupportModule
  L2_2 = L1_2
  L1_2 = L1_2.HasTutorialBlockMask
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_rogue_area_list_index
  L3_2 = A0_2._rogue_area_data_list
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._check_switch_to_border_rebound
  L4_2 = L1_2 + 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L2_2 = A0_2._rogue_area_dic_table
  L3_2 = L1_2 + 1
  L2_2 = L2_2[L3_2]
  L4_2 = A0_2
  L3_2 = A0_2._try_switch_area
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L4_1._try_switch_to_next = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._rogue_area_dic_table
  if L2_2 == nil or A1_2 == nil then
    L2_2 = -1
    return L2_2
  end
  L2_2 = A1_2.Count
  if 0 < L2_2 then
    L2_2 = pairs
    L3_2 = A0_2._rogue_area_dic_table
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L6_2.Count
      if 0 < L7_2 then
        L7_2 = L6_2[0]
        L7_2 = L7_2.AreaProgressID
        L8_2 = A1_2[0]
        L8_2 = L8_2.AreaProgressID
        if L7_2 == L8_2 then
          return L5_2
        end
      end
    end
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.index_of_item
  L3_2 = A0_2._rogue_area_dic_table
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L4_1._get_rogue_area_list_index = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
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
  L3_2 = L3_2.LeftStickUp
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L3_2 = L3_1
    if A2_2 > L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._try_switch_to_prev
      L3_2(L4_2)
      A0_2._wait_in_control_release = true
      return
    end
  end
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickDown
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L3_2 = L3_1
    if A2_2 > L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._try_switch_to_next
      L3_2(L4_2)
      A0_2._wait_in_control_release = true
      return
    end
  end
end
L4_1._on_in_control_press = L5_1
function L5_1(A0_2, A1_2)
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
L4_1._on_in_control_released = L5_1
function L5_1(A0_2, A1_2)
  A0_2._wait_in_control_release = false
end
L4_1._on_in_control_input_switch = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.DPadUp
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_switch_to_prev
    L2_2(L3_2)
  end
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.DPadDown
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_switch_to_next
    L2_2(L3_2)
  end
end
L4_1._on_in_control_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  if 0 < A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_switch_to_prev
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_switch_to_next
    L2_2(L3_2)
  end
end
L4_1._on_mouse_wheel_roll = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == 0 then
    return
  end
  if A1_2 < 0 then
    L3_2 = A0_2
    L2_2 = A0_2._try_switch_to_prev
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_switch_to_next
    L2_2(L3_2)
  end
end
L4_1._on_drag_start = L5_1
return L4_1
