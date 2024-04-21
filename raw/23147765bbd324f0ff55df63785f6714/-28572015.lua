local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritUtilities.AetherSpiritUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritUtilities.AetherTeamUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritSelect.AetherSpiritSortFilterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritSelect.AetherSpiritSortFilterPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.Common.AetherCommonSpiritItemLitePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.Common.AetherCommonSpiritItemLitePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritSelectDialogListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
L1_1 = L1_1.AetherOutfitData
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_gridview_spirit
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_spirit_item_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = {}
  A0_2._spirit_table = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AetherSpiritSortFilterPanel
  L4_2 = G
  L4_2 = L4_2.AetherSpiritSortFilterPanelBinder
  L5_2 = "AetherSpiritSelectDialogListPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._sort_filter_panel = L1_2
  L1_2 = A0_2._sort_filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_sort_change_callback
  L3_2 = A0_2._on_sort_change
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._sort_filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_locked_getter
  L3_2 = A0_2._get_locked_on_top_spirit_table
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._sort_filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_sort_filter_panel
  L1_2(L2_2, L3_2)
  A0_2._cur_selected_spirit_data = nil
  A0_2._last_click_item_panel = nil
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_gridview_spirit
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = 1
  L3_2 = A0_2._spirit_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._cur_selected_spirit_data
    L6_2 = L6_2.ID
    L7_2 = A0_2._spirit_table
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.ID
    if L6_2 == L7_2 then
      L1_2 = L5_2
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.get_selected_item_object
  L4_2 = L1_2
  return L2_2(L3_2, L4_2)
end
L0_1.get_spirit_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_gridview_spirit
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    if L3_2 ~= nil then
      goto lbl_13
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_13::
  L3_2 = L2_2.UserObjectData
  L4_2 = L3_2
  L3_2 = L3_2.get_first_selected_object
  return L3_2(L4_2)
end
L0_1.get_selected_item_object = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_spirit_item_callback = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._cur_selected_spirit_data = nil
  A0_2._last_click_item_panel = nil
end
L0_1.clear_selected = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_gridview_spirit
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.UserObjectData
  L4_2 = L3_2
  L3_2 = L3_2.trigger_click
  L3_2(L4_2)
end
L0_1.set_selected_by_index = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._cur_selected_spirit_data = A1_2
  A0_2._line_up_data = A3_2
  L4_2 = {}
  A0_2._spirit_table = L4_2
  if A2_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2._generate_spirit_table
    L4_2(L5_2)
  else
    A0_2._spirit_table = A2_2
  end
  L4_2 = A0_2._sort_filter_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_sort_spirits
  L6_2 = A0_2._spirit_table
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._on_refresh
  L4_2(L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._spirit_table
  L1_2 = #L1_2
  L1_2 = L1_2 == 0
  return L1_2
end
L0_1.is_empty = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_spirit_item_list
  L1_2(L2_2)
end
L0_1._on_refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.AllAetherMonsterAvatars
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L2_2 = L2_2.Value
    L3_2 = L2_2.Promotion
    if 1 <= L3_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = A0_2._spirit_table
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
  L2_2 = G
  L2_2 = L2_2.AetherSpiritUtils
  L2_2 = L2_2.sort_spirit_table
  L3_2 = A0_2._spirit_table
  L4_2 = false
  L5_2 = A0_2._line_up_data
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._generate_spirit_table = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._spirit_table
  L3_2 = #L3_2
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_gridview_spirit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._spirit_table
  L3_2 = #L3_2
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._spirit_table
  L1_2 = #L1_2
  if L1_2 == 0 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_gridview_spirit
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._spirit_table
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_gridview_spirit
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_spirit_item_list = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.AetherCommonSpiritItemLitePanel
    L8_2 = G
    L8_2 = L8_2.AetherCommonSpiritItemLitePanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._spirit_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.setup_team_mark
  L7_2 = G
  L7_2 = L7_2.AetherTeamUtils
  L7_2 = L7_2.check_is_spirit_in_team
  L8_2 = A0_2._spirit_table
  L9_2 = A2_2 + 1
  L8_2 = L8_2[L9_2]
  L9_2 = A0_2._line_up_data
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_callback
  L7_2 = A0_2._on_click_item
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_selected
  L7_2 = A0_2._cur_selected_spirit_data
  L8_2 = A0_2._spirit_table
  L9_2 = A2_2 + 1
  L8_2 = L8_2[L9_2]
  L7_2 = L7_2 == L8_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._cur_selected_spirit_data
  L6_2 = A0_2._spirit_table
  L7_2 = A2_2 + 1
  L6_2 = L6_2[L7_2]
  if L5_2 == L6_2 then
    A0_2._last_click_item_panel = L4_2
  end
  return L3_2
end
L0_1._on_spirit_item_change = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._cur_selected_spirit_data
  if L3_2 == A1_2 then
    return
  end
  A0_2._cur_selected_spirit_data = A1_2
  L3_2 = A0_2._callback
  if L3_2 ~= nil then
    L3_2 = A0_2._callback_self
    if L3_2 ~= nil then
      L3_2 = A0_2._callback
      L4_2 = A0_2._callback_self
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = A0_2._last_click_item_panel
  if L3_2 ~= nil then
    L3_2 = A0_2._last_click_item_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_selected
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L4_2 = A2_2
  L3_2 = A2_2.set_selected
  L5_2 = true
  L3_2(L4_2, L5_2)
  A0_2._last_click_item_panel = A2_2
end
L0_1._on_click_item = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._spirit_table = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._on_refresh
  L2_2(L3_2)
end
L0_1._on_sort_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._spirit_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = G
    L6_2 = L6_2.AetherTeamUtils
    L6_2 = L6_2.check_is_spirit_in_team
    L7_2 = A0_2._spirit_table
    L7_2 = L7_2[L5_2]
    L8_2 = A0_2._line_up_data
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = L1_2
      L8_2 = A0_2._spirit_table
      L8_2 = L8_2[L5_2]
      L6_2(L7_2, L8_2)
    end
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = G
    L2_3 = L2_3.AetherTeamUtils
    L2_3 = L2_3.get_spirit_in_team_index
    L3_3 = A0_3
    L4_3 = A0_2._line_up_data
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = G
    L3_3 = L3_3.AetherTeamUtils
    L3_3 = L3_3.get_spirit_in_team_index
    L4_3 = A1_3
    L5_3 = A0_2._line_up_data
    L3_3 = L3_3(L4_3, L5_3)
    L4_3 = L2_3 < L3_3
    return L4_3
  end
  L2_2(L3_2, L4_2)
  return L1_2
end
L0_1._get_locked_on_top_spirit_table = L2_1
return L0_1
