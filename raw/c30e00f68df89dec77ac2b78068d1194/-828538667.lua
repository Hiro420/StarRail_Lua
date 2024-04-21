local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritSkillCoreEquipPassiveSkillSlotSingleItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritSkillCoreEquipPassiveSkillSlotSingleItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritSkillCoreEquipPassiveSkillSlotPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 4
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_passive_skill_slot
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_skill_slot_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = {}
  A0_2._skill_slot_table = L1_2
  A0_2._cur_skill_slot_data = nil
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view_passive_skill_slot
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2.UserObjectData
  return L2_2
end
L0_1.get_slot_panel_by_idx = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 1
  L3_2 = A0_2._skill_slot_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._skill_slot_table
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.SlotIndex
    L7_2 = A1_2.SlotIndex
    if L6_2 == L7_2 then
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_cur_index_by_skill_slot_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2._skill_slot_table
  if L2_2 == nil then
    return
  end
  L2_2 = 1
  L3_2 = A0_2._skill_slot_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._skill_slot_table
    L6_2 = L6_2[L5_2]
    if L6_2 ~= 0 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.scroll_view_passive_skill_slot
      L7_2 = L6_2
      L6_2 = L6_2.GetShownItemByItemIndex
      L8_2 = L5_2 - 1
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = L6_2.UserObjectData
      L9_2 = L7_2
      L8_2 = L7_2.set_selected
      L10_2 = A1_2.SlotIndex
      L11_2 = A0_2._skill_slot_table
      L11_2 = L11_2[L5_2]
      L11_2 = L11_2.SlotIndex
      L10_2 = L10_2 == L11_2
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1.set_selected_by_target_skill_slot_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._skill_slot_table
  if L1_2 == nil then
    return
  end
  L1_2 = 1
  L2_2 = A0_2._skill_slot_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.scroll_view_passive_skill_slot
    L6_2 = L5_2
    L5_2 = L5_2.GetShownItemByItemIndex
    L7_2 = L4_2 - 1
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L5_2.UserObjectData
    L8_2 = L6_2
    L7_2 = L6_2.set_selected
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
end
L0_1.clear_all_btn_selected = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._skill_slot_table = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view_passive_skill_slot
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1.refresh_skill_slot = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._skill_slot_table
  return L1_2
end
L0_1.get_skill_slot_table = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._spirit_data = A1_2
  L4_2 = A2_2 or L4_2
  if not A2_2 then
    L4_2 = false
  end
  A0_2._is_enable_trigger_on_select = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._genetate_skill_slot_table
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_skill_slot_panel
  L4_2(L5_2)
  if A3_2 == nil then
    L4_2 = A0_2._skill_slot_table
    L4_2 = L4_2[1]
    A0_2._cur_skill_slot_data = L4_2
  else
    L4_2 = 1
    L5_2 = A0_2._skill_slot_table
    L5_2 = #L5_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = A3_2.SlotIndex
      L9_2 = A0_2._skill_slot_table
      L9_2 = L9_2[L7_2]
      L9_2 = L9_2.SlotIndex
      if L8_2 == L9_2 then
        A0_2._cur_skill_slot_data = A3_2
      end
    end
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  A0_2._skill_slot_table = L1_2
  L1_2 = A0_2._spirit_data
  L1_2 = L1_2.AetherMonsterAvatarSkillSlotData
  L1_2 = L1_2.AetherMonsterAvatarSkillSingleSlotDict
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  while true do
    L4_2 = L1_2
    L3_2 = L1_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L1_2.Current
    L3_2 = L3_2.Value
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._skill_slot_table
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L2_2 = L2_2 + 1
  end
end
L0_1._genetate_skill_slot_table = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_passive_skill_slot
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._skill_slot_table
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_passive_skill_slot
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_skill_slot_panel = L2_1
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
    L7_2 = L7_2.AetherSpiritSkillCoreEquipPassiveSkillSlotSingleItem
    L8_2 = G
    L8_2 = L8_2.AetherSpiritSkillCoreEquipPassiveSkillSlotSingleItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_click_skill_slot_callback
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._skill_slot_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.set_game_pad_navigation_enable
  L8_2 = A0_2._is_enable_navigation
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A0_2._is_enable_trigger_on_select
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
L0_1._on_skill_slot_changed = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._callback
  if L4_2 ~= nil then
    L4_2 = A0_2._callback_self
    if L4_2 ~= nil then
      L4_2 = A0_2._callback
      L5_2 = A0_2._callback_self
      L6_2 = A1_2
      L7_2 = A2_2
      L8_2 = A3_2
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  end
  L4_2 = A1_2.Status
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MonsterAvatarSkillSlotStatus
  L5_2 = L5_2.Locked
  if L4_2 ~= L5_2 then
    A0_2._cur_skill_slot_data = A1_2
  end
end
L0_1._on_click_skill_slot_callback = L2_1
return L0_1
