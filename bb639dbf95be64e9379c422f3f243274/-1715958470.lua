local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.Common.AetherCommonSkillCoreItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.Common.AetherCommonSkillCoreItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritSkillCoreBagListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_gridview_skill_core
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_skill_core_item_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = {}
  A0_2._cur_type_skill_core_table = L1_2
  A0_2._cur_selected_skill_core_data = nil
  A0_2._last_click_item_panel = nil
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_gridview_skill_core
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
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_callback = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._cur_selected_skill_core_data = nil
  A0_2._last_click_item_panel = nil
end
L0_1.clear_selected = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_gridview_skill_core
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.UserObjectData
  L4_2 = L3_2
  L3_2 = L3_2.trigger_click
  L3_2(L4_2)
end
L0_1.set_selected_by_index = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._type_row = A1_2
  L3_2 = {}
  A0_2._cur_type_skill_core_table = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._filter_skill_core_table
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_skill_core_item_list
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_type_skill_core_table
  L1_2 = #L1_2
  L1_2 = L1_2 == 0
  return L1_2
end
L0_1.is_empty = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_gridview_skill_core
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._on_return_to_top = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._type_row
  if L2_2 == nil then
    A0_2._cur_type_skill_core_table = A1_2
    return
  end
  L2_2 = 1
  L3_2 = #A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = A0_2._type_row
    L7_2 = L7_2.PassiveSkillType
    L8_2 = L6_2.PassiveSkillType
    if L7_2 == L8_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._cur_type_skill_core_table
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._filter_skill_core_table = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.is_empty
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_gridview_skill_core
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.loop_gridview_skill_core
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = A0_2._cur_type_skill_core_table
    L4_2 = #L4_2
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.loop_gridview_skill_core
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.loop_gridview_skill_core
    L3_2 = L2_2
    L2_2 = L2_2.PlayFadeIn
    L2_2(L3_2)
  end
end
L0_1._setup_skill_core_item_list = L1_1
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
    L7_2 = L7_2.AetherCommonSkillCoreItemPanel
    L8_2 = G
    L8_2 = L8_2.AetherCommonSkillCoreItemPanelBinder
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
  L7_2 = A0_2._cur_type_skill_core_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_callback
  L7_2 = A0_2._on_click_item
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_selected
  L7_2 = A0_2._cur_selected_skill_core_data
  L8_2 = A0_2._cur_type_skill_core_table
  L9_2 = A2_2 + 1
  L8_2 = L8_2[L9_2]
  L7_2 = L7_2 == L8_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._cur_selected_skill_core_data
  L6_2 = A0_2._cur_type_skill_core_table
  L7_2 = A2_2 + 1
  L6_2 = L6_2[L7_2]
  if L5_2 == L6_2 then
    A0_2._last_click_item_panel = L4_2
  end
  return L3_2
end
L0_1._on_skill_core_item_change = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._cur_selected_skill_core_data
  if L3_2 == A1_2 then
    return
  end
  A0_2._cur_selected_skill_core_data = A1_2
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
L0_1._on_click_item = L1_1
return L0_1
