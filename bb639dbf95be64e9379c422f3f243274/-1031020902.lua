local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritMainDetailSkillPanelSingleItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritMainDetailSkillPanelSingleItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritMainDetailSkillPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_skill
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_skill_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = {}
  A0_2._skill_table = L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 1
  L3_2 = A0_2._skill_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._skill_table
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.SkillID
    L7_2 = A1_2.SkillID
    if L6_2 == L7_2 then
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_cur_index_by_skill_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view_skill
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    L3_2 = L3_2._binder
    L3_2 = L3_2.btn_root
    return L3_2
  end
  L3_2 = nil
  return L3_2
end
L0_1.get_list_btn_by_index = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeAfterFrames
  L3_2 = 1
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = 1
    L1_3 = A0_2._skill_table
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = A0_2._binder
      L4_3 = L4_3.scroll_view_skill
      L5_3 = L4_3
      L4_3 = L4_3.GetShownItemByItemIndex
      L6_3 = L3_3 - 1
      L4_3 = L4_3(L5_3, L6_3)
      L5_3 = L4_3.UserObjectData
      L7_3 = L5_3
      L6_3 = L5_3.set_selected
      L8_3 = A1_2.SkillID
      L9_3 = A0_2._skill_table
      L9_3 = L9_3[L3_3]
      L9_3 = L9_3.SkillID
      L8_3 = L8_3 == L9_3
      L6_3(L7_3, L8_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L0_1.set_selected_by_target_skill_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 1
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = A0_2._skill_table
    if L0_3 == nil then
      return
    end
    L0_3 = 1
    L1_3 = A0_2._skill_table
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = A0_2._binder
      L4_3 = L4_3.scroll_view_skill
      L5_3 = L4_3
      L4_3 = L4_3.GetShownItemByItemIndex
      L6_3 = L3_3 - 1
      L4_3 = L4_3(L5_3, L6_3)
      L5_3 = L4_3.UserObjectData
      L7_3 = L5_3
      L6_3 = L5_3.set_selected
      L8_3 = false
      L6_3(L7_3, L8_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1.clear_all_btn_selected = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._skill_table
  return L1_2
end
L0_1.get_skill_table = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._spirit_data = A1_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = false
  end
  A0_2._is_enable_trigger_on_select = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._genetate_skill_table
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_skill_panel
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._skill_table = L1_2
  L1_2 = A0_2._spirit_data
  L1_2 = L1_2.AetherMonsterAvatarSkillData
  L1_2 = L1_2.SkillDataList
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.IsShow
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._skill_table
      L8_2 = L1_2[L5_2]
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._genetate_skill_table = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_skill
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._skill_table
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_skill
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_skill_panel = L1_1
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
    L7_2 = L7_2.AetherSpiritMainDetailSkillPanelSingleItem
    L8_2 = G
    L8_2 = L8_2.AetherSpiritMainDetailSkillPanelSingleItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_click_skill_callback
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._skill_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
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
L0_1._on_skill_changed = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._callback
  if L2_2 ~= nil then
    L2_2 = A0_2._callback_self
    if L2_2 ~= nil then
      L2_2 = A0_2._callback
      L3_2 = A0_2._callback_self
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_click_skill_callback = L1_1
return L0_1
