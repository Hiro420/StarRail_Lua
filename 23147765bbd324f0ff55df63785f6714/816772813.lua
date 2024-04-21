local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnJourneyPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.Journey.PlayerReturnJourneyEnum"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerReturnJourneyPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityPlayerReturnModule
L2_1 = G
L2_1 = L2_1.PlayerReturnJourneyEnum
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MDKWebPageClose
  L4_2 = A0_2._on_mdk_web_page_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerReturnQuestionnaireFill
  L4_2 = A0_2._on_questionnaire_filled
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerReturnRefreshJourneyPanel
  L4_2 = A0_2._on_player_return_refresh_journey_panel
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L0_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._list_items
  if L1_2 ~= nil then
    L1_2 = A0_2._list_items
    L1_2 = #L1_2
    L2_2 = 1
    L3_2 = L1_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._list_items
      L6_2 = L6_2[L5_2]
      if L6_2 ~= nil then
        L6_2 = G
        L6_2 = L6_2.delete
        L7_2 = A0_2._list_items
        L7_2 = L7_2[L5_2]
        L6_2(L7_2)
      end
    end
    A0_2._list_items = nil
  end
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2._list_items
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = L3_2.data
  L7_2 = L6_2
  L6_2 = L6_2.get_prefab_index
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 ~= nil then
    L6_2 = L5_2.is_destroyed
    if not L6_2 then
      goto lbl_28
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2.create_panel
  L8_2 = L2_1.get_panel_class
  L9_2 = L3_2.type
  L8_2 = L8_2(L9_2)
  L9_2 = L2_1.get_panel_binder_class
  L10_2 = L3_2.type
  L9_2, L10_2 = L9_2(L10_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L5_2 = L6_2
  L7_2 = L5_2
  L6_2 = L5_2.bind
  L8_2 = L4_2.transform
  L6_2(L7_2, L8_2)
  L4_2.UserObjectData = L5_2
  ::lbl_28::
  L7_2 = L5_2
  L6_2 = L5_2.setup_view
  L8_2 = L3_2.row
  L9_2 = A2_2
  L6_2(L7_2, L8_2, L9_2)
  return L4_2
end
L0_1._on_item_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._list_items
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    return
  end
  L3_2 = L2_2.data
  L4_2 = L3_2
  L3_2 = L3_2.on_item_click
  L3_2(L4_2)
end
L0_1._on_btn_item_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._owner_is_top_page
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryCheckQuestionnaire
  L1_2(L2_2)
end
L0_1._on_mdk_web_page_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L0_1._on_questionnaire_filled = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L0_1._on_player_return_refresh_journey_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.IsInBetaVersion
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ScheduleModule
  L3_2 = {}
  A0_2._list_items = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.PlayerReturnJourneyItemExcelTable
  L3_2 = L3_2.GetEnumerator
  L3_2 = L3_2()
  while true do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L3_2.Current
    L5_2 = L1_2 or L5_2
    if L1_2 then
      L5_2 = L4_2.IsHideInBeta
    end
    L6_2 = true
    L7_2 = L4_2.ActivityModuleID
    if 0 < L7_2 then
      L8_2 = L2_2
      L7_2 = L2_2.GetScheduleDataByActivityModuleID
      L9_2 = L4_2.ActivityModuleID
      L7_2 = L7_2(L8_2, L9_2)
      L9_2 = L7_2
      L8_2 = L7_2.IsInSchedule
      L8_2 = L8_2(L9_2)
      L6_2 = L7_2 ~= nil and L6_2
    end
    L7_2 = not L5_2 and L7_2
    if L7_2 then
      L8_2 = {}
      L9_2 = L4_2.Type
      L8_2.type = L9_2
      L8_2.row = L4_2
      L8_2.data = nil
      L9_2 = L2_1.get_data_class
      L10_2 = L4_2.Type
      L9_2 = L9_2(L10_2)
      L10_2 = nil
      if L9_2 ~= nil then
        L11_2 = G
        L11_2 = L11_2.new
        L12_2 = L9_2
        L11_2 = L11_2(L12_2)
        L10_2 = L11_2
      end
      if L10_2 ~= nil then
        L11_2 = L10_2.is_show
        if L11_2 ~= nil then
          L12_2 = L10_2
          L11_2 = L10_2.is_show
          L11_2 = L11_2(L12_2)
          if not L11_2 then
            goto lbl_80
          end
        end
      end
      L8_2.data = L10_2
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = A0_2._list_items
      L13_2 = L8_2
      L11_2(L12_2, L13_2)
    end
    ::lbl_80::
  end
  L5_2 = L3_2
  L4_2 = L3_2.Dispose
  L4_2(L5_2)
end
L0_1._init_data_arr = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._list_items
  if L1_2 == nil then
    return
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._list_items
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_3.data
    L3_3 = L2_3
    L2_3 = L2_3.is_finished
    L2_3 = L2_3(L3_3)
    L3_3 = A1_3.data
    L4_3 = L3_3
    L3_3 = L3_3.is_finished
    L3_3 = L3_3(L4_3)
    if L2_3 == L3_3 then
      L4_3 = A0_3.row
      L4_3 = L4_3.Sort
      L5_3 = A1_3.row
      L5_3 = L5_3.Sort
      L4_3 = L4_3 < L5_3
      return L4_3
    end
    return L3_3
  end
  L1_2(L2_2, L3_2)
end
L0_1._sort_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_data_arr
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._sort_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset_gamepad_target
  L1_2(L2_2)
end
L0_1._refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._list_items
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_enter_zoom
    L3_2 = NavigationZoneType
    L3_2 = L3_2.Zone2
    L1_2(L2_2, L3_2)
  end
end
L0_1._reset_gamepad_target = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemNearestItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
end
L0_1.get_first_selected_object = L3_1
return L0_1
