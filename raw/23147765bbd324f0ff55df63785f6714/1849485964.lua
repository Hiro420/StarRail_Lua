local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendTagRequestPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendFreeModePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendFreeModePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.DrinkMakerModule
L2_1 = "OnTagDisplayPanelLayoutChangeFinish"
L3_1 = "UIText_DrinkMaker_FreeModeConfirm"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_request_item
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_list_request_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_tag_anim_event
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_procedure
  L1_2 = #L1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.DrinkMakerBartendProcedure
  L2_2 = L2_2.Ingredient
  L2_2 = #L2_2
  L1_2 = L1_2 >= L2_2
  return L1_2
end
L0_1.is_can_to_special_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_tag_display
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._cur_procedure = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_basic_desc_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_request_detail_view
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_display_tag
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  return L1_2
end
L0_1.get_cur_scroll_rect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_procedure
  L1_2 = #L1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.DrinkMakerBartendProcedure
  L2_2 = L2_2.Deco
  L2_2 = #L2_2
  if L1_2 ~= L2_2 then
    L1_2 = true
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "RequestData"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.IsRequestSatisfied
  L3_2 = L3_1
  return L2_2, L3_2
end
L0_1.check_if_current_step_finished = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._cur_procedure = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_tag_display
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A0_2._cur_procedure
  L4_2 = #L4_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.DrinkMakerBartendProcedure
  L5_2 = L5_2.Ingredient
  L5_2 = #L5_2
  L4_2 = L4_2 >= L5_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_request_detail_view
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_display_tag
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.refresh_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_request_detail_view
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.refresh_targets = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_display_tag
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.refresh_tags = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._is_tutorial_move = true
end
L0_1.reset_list_pos = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.DrinkMakerBar
  L1_2 = L1_2.CurGuestRow
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_guest
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L1_1.DrinkMakerBar
  L2_2 = L2_2.CurRequestRow
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_request_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.RequestDesc
  L3_2(L4_2, L5_2)
end
L0_1._setup_basic_desc_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2.get_blackboard
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.query
  L4_2 = "RequestData"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = L2_2.TagRequests
  L3_2 = L3_2(L4_2)
  A0_2._detail_requests = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_line
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._detail_requests
  L5_2 = #L5_2
  L5_2 = 0 < L5_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_first_unfinished_quest_index
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.LayoutRebuilder
  L4_2 = L4_2.ForceRebuildLayoutImmediate
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_quest_root
  L4_2(L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rect
  L5_2 = L4_2
  L4_2 = L4_2.CanScroll
  L4_2 = L4_2(L5_2)
  if L4_2 then
    if L3_2 == 1 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.scroll_rect
      L5_2 = L4_2
      L4_2 = L4_2.SetVerticalScrollPercent
      L6_2 = 1
      L4_2(L5_2, L6_2)
    else
      L4_2 = A0_2._binder
      L4_2 = L4_2.list_request_item
      L5_2 = L4_2
      L4_2 = L4_2.MovePanelToItemIndex
      L6_2 = L3_2 - 1
      L7_2 = 0
      L8_2 = 0.2
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.list_request_item
  L5_2 = L4_2
  L4_2 = L4_2.SetListItemCount
  L6_2 = A0_2._detail_requests
  L6_2 = #L6_2
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
  if A1_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.CoroutineUtils
    L4_2 = L4_2.InvokeNextFrame
    function L5_2()
      local L0_3, L1_3
      L0_3 = A0_2._binder
      L0_3 = L0_3.list_request_item
      L1_3 = L0_3
      L0_3 = L0_3.RefreshAllShownItem
      L0_3(L1_3)
      L0_3 = A0_2._owner
      L1_3 = L0_3
      L0_3 = L0_3.report_wait_scroll_update
      L0_3(L1_3)
    end
    L4_2(L5_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.list_request_item
    L5_2 = L4_2
    L4_2 = L4_2.RefreshAllShownItem
    L4_2(L5_2)
  end
end
L0_1._refresh_request_detail_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._detail_requests
  L1_2 = #L1_2
  L2_2 = ipairs
  L3_2 = A0_2._detail_requests
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.IsSuccess
    if not L7_2 then
      return L5_2
    end
  end
  return L1_2
end
L0_1._get_first_unfinished_quest_index = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._cur_procedure
  L2_2 = #L2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.DrinkMakerBartendProcedure
  L3_2 = L3_2.Ingredient
  L3_2 = #L3_2
  L2_2 = L2_2 >= L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_tag_display
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.get_blackboard
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L3_2 = L3_2.query
    L5_2 = "DrinkData"
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_tag_display
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = L3_2
    L7_2 = A1_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._refresh_display_tag = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2._detail_requests
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L4_2 = 0
  L5_2 = L3_2.MixTag
  if L5_2 ~= nil then
    L4_2 = 1
  end
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.UserObjectData
  if L6_2 == nil then
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.DrinkMakerBartendTagRequestPanel
    L10_2 = G
    L10_2 = L10_2.DrinkMakerBartendTagRequestPanelBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L7_2
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2.transform
    L7_2(L8_2, L9_2)
    if L4_2 == 1 then
      L8_2 = L6_2
      L7_2 = L6_2.on_mix_tag_bind
      L7_2(L8_2)
    else
      L8_2 = L6_2
      L7_2 = L6_2.on_normal_tag_bind
      L7_2(L8_2)
    end
    L5_2.UserObjectData = L6_2
  end
  L8_2 = L6_2
  L7_2 = L6_2.setup_view
  L9_2 = L3_2
  L7_2(L8_2, L9_2)
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.LayoutRebuilder
  L7_2 = L7_2.ForceRebuildLayoutImmediate
  L8_2 = L5_2.transform
  L7_2(L8_2)
  return L5_2
end
L0_1._on_list_request_item_changed = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L2_1
  if A1_2 == L2_2 then
    L2_2 = A0_2._is_tutorial_move
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.scroll_rect
      L3_2 = L2_2
      L2_2 = L2_2.StopMovement
      L2_2(L3_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.scroll_rect
      L3_2 = L2_2
      L2_2 = L2_2.SetVerticalScrollPercent
      L4_2 = 1
      L2_2(L3_2, L4_2)
      A0_2._is_tutorial_move = false
    else
      L3_2 = A0_2
      L2_2 = A0_2._get_first_unfinished_quest_index
      L2_2 = L2_2(L3_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.scroll_rect
      L4_2 = L3_2
      L3_2 = L3_2.CanScroll
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.list_request_item
        L4_2 = L3_2
        L3_2 = L3_2.MovePanelToItemIndex
        L5_2 = L2_2 - 1
        L6_2 = 0
        L7_2 = 0.2
        L3_2(L4_2, L5_2, L6_2, L7_2)
      end
    end
  end
end
L0_1._on_tag_anim_event = L4_1
return L0_1
