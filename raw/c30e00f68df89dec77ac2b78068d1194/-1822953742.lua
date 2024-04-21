local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.RogueHandbookAeonPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookAeonCoverPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.RogueAreaPointPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.RogueAreaPointPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueHandbookAeonPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueHandbookModule
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = G
  L3_2 = L3_2.ImportCsToLua
  L3_2 = L3_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L3_2
  L3_2 = G
  L3_2 = L3_2.ImportCsToLua
  L3_2 = L3_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._create_binder
  L5_2 = G
  L5_2 = L5_2.RogueHandbookAeonPageBinder
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._binder = L3_2
  L3_2 = {}
  L4_2 = NavigationZoneType
  L4_2 = L4_2.Zone1
  L3_2[1] = L4_2
  A0_2.listen_zooms = L3_2
  A0_2._pause_game = true
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._has_module_updated = A1_2
  A0_2._is_open_from_handbook = A2_2
  A0_2._data_table = nil
  A0_2._total_count = 0
  A0_2._selected_index = 0
  A0_2._move_to_index = nil
  A0_2._move_to_data = nil
  A0_2._is_snap_moving = false
  A0_2._point_panels = nil
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._data_table = nil
  A0_2._total_count = nil
  A0_2._selected_index = nil
  A0_2._move_to_index = nil
  A0_2._move_to_data = nil
  A0_2._is_snap_moving = nil
  A0_2._point_panels = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = -1
  L4_2 = A0_2._on_aeon_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._on_snap_nearest_changed
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L1_2.mOnSnapNearestChanged = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._on_snap_finished
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L1_2.mOnSnapItemFinished = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.back_btn
  L4_2 = A0_2._on_back_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.right_btn
  L4_2 = A0_2._on_right_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.left_btn
  L4_2 = A0_2._on_left_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._is_detail_page_opened = false
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._selected_index
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.UserObjectData
  L2_2 = L2_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  return L2_2
end
L0_1.get_first_selected_object = L2_1
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
  L1_2 = A0_2._has_module_updated
  if L1_2 ~= nil then
    L1_2 = A0_2._has_module_updated
    if L1_2 ~= false then
      goto lbl_18
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.CPHAMFIHLIG
  L4_2 = A0_2._on_cmd_get_rogue_handbook_data_sc_rsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetCurrentRogueVersionData
  L1_2(L2_2)
  do return end
  ::lbl_18::
  L2_2 = A0_2
  L1_2 = A0_2._init_data
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.aeon_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1.UnlockAeonsNum
  L4_2 = "/"
  L5_2 = A0_2._total_count
  L3_2 = L3_2 .. L4_2 .. L5_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToSnapPivotByItemIndex
  L3_2 = A0_2._selected_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.FinishSnapImmediately
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SetSnapTargetItemIndex
  L3_2 = A0_2._selected_index
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_selected_effect
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_points
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      A0_2._init_view = true
      L0_3 = A0_2._binder
      L0_3 = L0_3.scroll_view
      L1_3 = L0_3
      L0_3 = L0_3.FinishSnapImmediately
      L0_3(L1_3)
    end
  end
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.RefreshScheduleStatusAndUnlockNum
  L1_2(L2_2)
  L1_2 = {}
  A0_2._data_table = L1_2
  L1_2 = pairs
  L2_2 = L1_1.AeonsMap
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._data_table
    L8_2 = A0_2._data_table
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._data_table
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.SortID
    L3_3 = A1_3.SortID
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._data_table
  L1_2 = #L1_2
  A0_2._total_count = L1_2
  A0_2._selected_index = 0
  L1_2 = 0
  L2_2 = ipairs
  L3_2 = A0_2._data_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.IsUnLocked
    if L7_2 then
      L7_2 = math
      L7_2 = L7_2.min
      L8_2 = L5_2 - 1
      L9_2 = L1_2
      L7_2 = L7_2(L8_2, L9_2)
      L1_2 = L7_2
      L7_2 = L6_2.RedDotList
      L7_2 = L7_2.Count
      if 0 < L7_2 then
        L7_2 = L5_2 - 1
        A0_2._selected_index = L7_2
        return
      end
    end
  end
  A0_2._selected_index = L1_2
end
L0_1._init_data = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._data_table
  if L3_2 ~= nil then
    L3_2 = A0_2._total_count
    if L3_2 ~= 0 then
      goto lbl_9
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_9::
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RogueHandbookAeonCoverPanel
    L8_2 = G
    L8_2 = L8_2.RogueHandbookAeonCoverPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._total_count
  L5_2 = A2_2 % L5_2
  L5_2 = 1 + L5_2
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = A0_2._data_table
  L8_2 = L8_2[L5_2]
  L9_2 = A2_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_click_cbk
  L8_2 = A0_2
  L9_2 = A0_2._on_aeon_cover_clicked
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_select_cbk
  L8_2 = A0_2
  L9_2 = A0_2._on_select_new_item
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L3_2.transform
  L6_2(L7_2)
  return L3_2
end
L0_1._on_aeon_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_back_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._selected_index
  L1_2 = L1_2 - 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.SetSnapTargetItemIndex
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  A0_2._is_snap_moving = true
end
L0_1._on_left_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._selected_index
  L1_2 = L1_2 + 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.SetSnapTargetItemIndex
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  A0_2._is_snap_moving = true
end
L0_1._on_right_btn_clicked = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._init_view
  if L3_2 ~= true then
    return
  end
  L3_2 = A2_2.ItemIndex
  A0_2._selected_index = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_selected_effect
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_points
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_AudioManager
  L4_2 = L3_2
  L3_2 = L3_2.PostEvent
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_AudioManager
  L5_2 = L5_2.AudioConfig
  L5_2 = L5_2.EventBattlePassSelectLightCone
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.save_navigation_target
    L5_2 = A2_2.UserObjectData
    L5_2 = L5_2._binder
    L5_2 = L5_2.root
    L5_2 = L5_2.gameObject
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._move_to_index
  if L3_2 ~= nil then
    L3_2 = A0_2._move_to_index
    L4_2 = A0_2._selected_index
    if L3_2 == L4_2 then
      A0_2._move_to_index = nil
      L3_2 = A0_2._move_to_data
      if L3_2 ~= nil then
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.CoroutineUtils
        L3_2 = L3_2.InvokeAfterSeconds
        L4_2 = 0.3
        function L5_2()
          local L0_3, L1_3, L2_3
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3._open_aeon_detail
          L2_3 = A0_2._move_to_data
          L0_3(L1_3, L2_3)
          A0_2._move_to_data = nil
        end
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L0_1._on_snap_nearest_changed = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._init_view
  if L3_2 ~= true then
    return
  end
  L3_2 = A2_2.ItemIndex
  A0_2._selected_index = L3_2
  A0_2._is_snap_moving = false
end
L0_1._on_snap_finished = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._check_is_in_middle
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    A0_2._move_to_index = A1_2
    A0_2._move_to_data = A2_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_view
    L4_2 = L3_2
    L3_2 = L3_2.SetSnapTargetItemIndex
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
    A0_2._selected_index = A1_2
    L4_2 = A0_2
    L3_2 = A0_2._open_aeon_detail
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_aeon_cover_clicked = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 ~= nil and A1_2 ~= nil then
    L2_2 = A0_2._is_detail_page_opened
    if not L2_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = A1_2.IsUnLocked
  if L2_2 == false then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_Rogue_HandBook_Aeon_Unlock_Tip_1"
    L2_2(L3_2, L4_2)
  else
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.Rogue.Handbook.RogueHandbookAeonDetailPage"
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    A0_2._is_detail_page_opened = true
  end
end
L0_1._open_aeon_detail = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view
  L2_2 = L2_2.CurSnapNearestItemIndex
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L0_1._check_is_in_middle = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._check_is_in_middle
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.SetSnapTargetItemIndex
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_select_new_item = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "GetRogueHandbookDataScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L3_2 = L2_2.Retcode
  if L3_2 ~= 0 then
    return
  end
  A0_2._has_module_updated = true
  L4_2 = A0_2
  L3_2 = A0_2._setup_view
  L3_2(L4_2)
end
L0_1._on_cmd_get_rogue_handbook_data_sc_rsp = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L1_2 = L1_2.ItemList
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.UserObjectData
    if L7_2 then
      L8_2 = L6_2.ItemIndex
      L9_2 = A0_2._selected_index
      L8_2 = L8_2 == L9_2
      L10_2 = L7_2
      L9_2 = L7_2.show_cur_effect
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
      if L8_2 then
        L10_2 = A0_2
        L9_2 = A0_2.set_navigation_target
        L12_2 = L7_2
        L11_2 = L7_2.get_first_selected_object
        L11_2, L12_2 = L11_2(L12_2)
        L9_2(L10_2, L11_2, L12_2)
      end
    end
  end
end
L0_1._refresh_selected_effect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._selected_index
  L2_2 = A0_2._total_count
  L1_2 = L1_2 % L2_2
  L1_2 = 1 + L1_2
  L2_2 = 1
  L3_2 = A0_2._total_count
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._get_or_create_point_panel
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.safe_set_active
    L9_2 = true
    L7_2(L8_2, L9_2)
    if L1_2 == L5_2 then
      L7_2 = A0_2._data_table
      L7_2 = L7_2[L5_2]
      L7_2 = A0_2._data_table
      L7_2 = L7_2[L5_2]
      L7_2 = L7_2.IsUnLocked
      L7_2 = L7_2 ~= nil and L7_2
      L9_2 = L6_2
      L8_2 = L6_2.setup_view
      if L7_2 then
        L10_2 = 3
        if L10_2 then
          goto lbl_39
        end
      end
      L10_2 = 4
      ::lbl_39::
      L8_2(L9_2, L10_2)
    else
      L8_2 = L6_2
      L7_2 = L6_2.setup_view
      L9_2 = 2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = A0_2._total_count
  L2_2 = L2_2 + 1
  L3_2 = A0_2._point_panels
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._point_panels
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L6_2 = A0_2._point_panels
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2
      L6_2 = L6_2.safe_set_active
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._refresh_points = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._point_panels
  if L2_2 == nil then
    L2_2 = {}
    A0_2._point_panels = L2_2
  end
  L2_2 = A0_2._point_panels
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L2_2 = A0_2._point_panels
    L2_2 = L2_2[A1_2]
    return L2_2
  else
    L3_2 = A0_2
    L2_2 = A0_2.instantiate_object
    L4_2 = A0_2._binder
    L4_2 = L4_2.loader_point
    L4_2 = L4_2.Prefab
    L5_2 = A0_2._binder
    L5_2 = L5_2.loader_point
    L5_2 = L5_2.transform
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.RogueAreaPointPanel
    L6_2 = G
    L6_2 = L6_2.RogueAreaPointPanelBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L5_2 = L3_2
    L4_2 = L3_2.bind
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._point_panels
    L4_2[A1_2] = L3_2
    return L3_2
  end
end
L0_1._get_or_create_point_panel = L2_1
return L0_1
