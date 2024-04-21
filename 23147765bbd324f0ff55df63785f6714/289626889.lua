local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueSelectBuffRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueSelectBuffRowPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueCommonBuffDisplayPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._buff_list = A1_2
  A0_2._cur_selected_panel = nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._buff_list
  L4_2 = L4_2.Count
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.setup_extra_key_map_info
  L4_2 = "ActionGroup_Scroll"
  L5_2 = "ActionGroupTextmapID_ActionGroup_Scroll"
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.set_extra_key_map_info_active
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.box_ray_cast_filter
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.box_ray_cast_filter
      L2_2 = L1_2
      L1_2 = L1_2.ForceRebuildHull
      L1_2(L2_2)
    end
  end
end
L0_1.rebuild_ray_cast_filter = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2.is_destroyed
  if L3_2 then
    L3_2 = nil
    return L3_2
  end
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_26
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.RogueSelectBuffRowPanel
  L8_2 = G
  L8_2 = L8_2.RogueSelectBuffRowPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_26::
  L6_2 = L4_2
  L5_2 = L4_2.set_desc_list_forbid_repeat_update_check
  L7_2 = true
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_call_back
  L7_2 = A2_2
  L8_2 = A0_2._on_item_click
  L9_2 = A0_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_selected
  L7_2 = A0_2._cur_selected_panel
  L7_2 = L7_2 == L4_2
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.setup_origin_view
  L7_2 = A0_2._buff_list
  L7_2 = L7_2[A2_2]
  L8_2 = G
  L8_2 = L8_2.Utils
  L8_2 = L8_2.is_gamepad_input
  L8_2 = L8_2()
  L8_2 = not L8_2
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L0_1._on_item_changed = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if not L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    L4_2 = A0_2._cur_selected_panel
    if L3_2 ~= L4_2 then
      goto lbl_20
    end
  end
  do return end
  ::lbl_20::
  L3_2 = A0_2._cur_selected_panel
  if L3_2 ~= nil then
    L3_2 = A0_2._cur_selected_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_selected
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L3_2 = L2_2.UserObjectData
  A0_2._cur_selected_panel = L3_2
  L3_2 = A0_2._cur_selected_panel
  if L3_2 ~= nil then
    L3_2 = A0_2._cur_selected_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_selected
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._owner
    L4_2 = L3_2
    L3_2 = L3_2.set_extra_key_map_info_active
    L5_2 = A0_2._cur_selected_panel
    L6_2 = L5_2
    L5_2 = L5_2.get_desc_scroll_rect
    L5_2 = L5_2(L6_2)
    L6_2 = L5_2
    L5_2 = L5_2.CanScroll
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._on_item_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.is_active
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = L0_1
    L2_2 = L1_2
    L1_2 = L1_2._get_first_selected_buff_panel
    L1_2 = L1_2(L2_2)
    A0_2._cur_selected_panel = L1_2
  else
    A0_2._cur_selected_panel = nil
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.is_active
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_10
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_10::
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.UserObjectData
  return L2_2
end
L0_1._get_first_selected_buff_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.is_active
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_10
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_10::
  L2_2 = A0_2
  L1_2 = A0_2._get_first_selected_buff_panel
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.get_navi_btn
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.gameObject
  return L2_2
end
L0_1.get_first_selected_object = L1_1
return L0_1
