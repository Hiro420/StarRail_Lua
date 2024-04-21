local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritUtilities.AetherTeamUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritList.AetherSpiritListItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritList.AetherSpiritListItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritListPanel"
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
  A0_2._cur_type_spirit_table = L1_2
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
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_callback = L2_1
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
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._type_row = A1_2
  L3_2 = {}
  A0_2._cur_type_spirit_table = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._filter_spirit_table
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_spirit_item_list
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_type_spirit_table
  L1_2 = #L1_2
  L1_2 = L1_2 == 0
  return L1_2
end
L0_1.is_empty = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._cur_type_spirit_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._cur_type_spirit_table
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.Status
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.AetherMonsterAvatarDisplayDataStatus
    L6_2 = L6_2.Forbidden
    if L5_2 ~= L6_2 then
      L5_2 = false
      return L5_2
    end
  end
  L1_2 = true
  return L1_2
end
L0_1.is_all_forbidden = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_gridview_spirit
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._type_row
  if L2_2 == nil then
    A0_2._cur_type_spirit_table = A1_2
    return
  end
  L2_2 = 1
  L3_2 = #A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = A0_2._type_row
    L7_2 = L7_2.SpiritType
    L8_2 = L6_2.Row
    L8_2 = L8_2.SpiritType
    if L7_2 == L8_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._cur_type_spirit_table
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._filter_spirit_table = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_gridview_spirit
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._cur_type_spirit_table
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
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AetherSpiritListItem
    L8_2 = G
    L8_2 = L8_2.AetherSpiritListItemBinder
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
  L7_2 = A0_2._cur_type_spirit_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_team_mark
  L8_2 = A0_2
  L7_2 = A0_2._check_is_in_team
  L9_2 = A0_2._cur_type_spirit_table
  L10_2 = A2_2 + 1
  L9_2 = L9_2[L10_2]
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_callback
  L7_2 = A0_2._on_click_item
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_selected
  L7_2 = A0_2._cur_selected_spirit_data
  L8_2 = A0_2._cur_type_spirit_table
  L9_2 = A2_2 + 1
  L8_2 = L8_2[L9_2]
  L7_2 = L7_2 == L8_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._cur_selected_spirit_data
  L6_2 = A0_2._cur_type_spirit_table
  L7_2 = A2_2 + 1
  L6_2 = L6_2[L7_2]
  if L5_2 == L6_2 then
    A0_2._last_click_item_panel = L4_2
  end
  return L3_2
end
L0_1._on_spirit_item_change = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAetherMonsterAvatar
  L4_2 = A1_2.ID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = false
    return L3_2
  end
  L3_2 = G
  L3_2 = L3_2.AetherTeamUtils
  L3_2 = L3_2.check_is_spirit_in_team
  L4_2 = L2_2
  return L3_2(L4_2)
end
L0_1._check_is_in_team = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._cur_selected_spirit_data
  if L3_2 == A1_2 then
    return
  end
  A0_2._cur_selected_spirit_data = A1_2
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
end
L0_1._on_click_item = L2_1
return L0_1
