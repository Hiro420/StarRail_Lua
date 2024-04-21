local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Mission.Components.MissionSelectedItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Components.MissionItemPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionSelectedItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._count = A2_2
  A0_2._configs = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.item_view
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._count
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.item_view
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_view
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.root
    L2_2 = L2_2.gameObject
    return L2_2
  end
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2.is_in_special_zoom
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._owner
      L3_2 = L2_2
      L2_2 = L2_2.notify_detail_panel_with_config_id
      L4_2 = A0_2._cur_selected_item_config_id
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_in_control_action_click = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.MissionItemPanel
    L8_2 = G
    L8_2 = L8_2.MissionItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._configs
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view_by_mission_item_config
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_click_callback
  L8_2 = A0_2
  L9_2 = A0_2._on_item_clicked
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_select_callback
  L8_2 = A0_2
  L9_2 = A0_2._on_item_selected
  L6_2(L7_2, L8_2, L9_2)
  L4_2.should_click_clear_item = true
  return L3_2
end
L0_1._on_item_changed = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._item_click_cbk = A2_2
  A0_2._item_click_owner = A1_2
end
L0_1.register_click_cbk = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._item_select_cbk = A2_2
  A0_2._item_select_owner = A1_2
end
L0_1.register_select_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._item_click_cbk
  if L3_2 then
    L3_2 = A0_2._item_click_owner
    if L3_2 then
      L3_2 = A0_2._item_click_cbk
      L4_2 = A0_2._item_click_owner
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
  A0_2._cur_selected_item_config_id = nil
  L4_2 = A2_2
  L3_2 = A2_2.get_item_info
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.ConfigID
    A0_2._cur_selected_item_config_id = L4_2
  end
  L4_2 = A0_2._owner
  L5_2 = L4_2
  L4_2 = L4_2.update_special_zoom_hint
  L6_2 = A0_2._cur_selected_item_config_id
  L4_2(L5_2, L6_2)
end
L0_1._on_item_clicked = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = A1_2.ConfigID
    A0_2._cur_selected_item_config_id = L2_2
  else
    A0_2._cur_selected_item_config_id = nil
  end
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.update_special_zoom_hint
  L4_2 = A0_2._cur_selected_item_config_id
  L2_2(L3_2, L4_2)
end
L0_1._on_item_selected = L1_1
return L0_1
