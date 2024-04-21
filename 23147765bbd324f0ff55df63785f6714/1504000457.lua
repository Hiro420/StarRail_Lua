local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSkillPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSetSkillInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSetSkillInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicSkillComparePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.skill_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_skill_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == nil then
    return
  end
  L3_2 = A1_2
  L2_2 = A1_2.GetRelicList
  L2_2 = L2_2(L3_2)
  A0_2._relic_data = L2_2
  L2_2 = G
  L2_2 = L2_2.RelicUtils
  L2_2 = L2_2.get_distinct_set_skill_id_data
  L3_2 = A0_2._relic_data
  L2_2 = L2_2(L3_2)
  A0_2._set_skill_info = L2_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = G
  L2_2 = L2_2.RelicUtils
  L2_2 = L2_2.get_relic_from
  L3_2 = A1_2.RelicRow
  L3_2 = L3_2.Type
  L4_2 = A0_2._relic_data
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = {}
  A0_2._data = L3_2
  if L2_2 ~= nil then
    L3_2 = L2_2.RelicRow
    L3_2 = L3_2.SetID
    L4_2 = A1_2.RelicRow
    L4_2 = L4_2.SetID
    if L3_2 == L4_2 then
      goto lbl_56
    end
  end
  L3_2 = 1
  L4_2 = A0_2._set_skill_info
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._set_skill_info
    L7_2 = L7_2[L6_2]
    if L2_2 then
      L8_2 = L7_2.ID
      L9_2 = L2_2.RelicRow
      L9_2 = L9_2.SetID
      if L8_2 == L9_2 then
        L8_2 = L7_2.Count
        L8_2 = L8_2 - 1
        L7_2.AfterCount = L8_2
      end
    end
    L8_2 = L7_2.ID
    L9_2 = A1_2.RelicRow
    L9_2 = L9_2.SetID
    if L8_2 == L9_2 then
      L8_2 = L7_2.Count
      L8_2 = L8_2 + 1
      L7_2.AfterCount = L8_2
    end
    L9_2 = A0_2
    L8_2 = A0_2._is_contain_set_skill_changed
    L10_2 = L7_2.Count
    L11_2 = L7_2.AfterCount
    L12_2 = L7_2.ID
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    if L8_2 then
      L8_2 = A0_2._data
      L9_2 = A0_2._data
      L9_2 = #L9_2
      L9_2 = L9_2 + 1
      L8_2[L9_2] = L7_2
    end
  end
  ::lbl_56::
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_skill_empty
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._data
  L5_2 = #L5_2
  L5_2 = L5_2 == 0
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_set_skill_info
  L3_2(L4_2)
end
L0_1.set_replace_relic_item = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == nil or A2_2 == nil or A1_2 == A2_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.RelicSetConfigExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A3_2
  L4_2 = L4_2(L5_2)
  L5_2 = 0
  L6_2 = L4_2.SetSkillList
  L6_2 = L6_2.Length
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    if A2_2 < A1_2 then
      L9_2 = L4_2.SetSkillList
      L9_2 = L9_2[L8_2]
      if A2_2 == L9_2 then
        L9_2 = true
        return L9_2
      end
    end
    if A1_2 < A2_2 then
      L9_2 = L4_2.SetSkillList
      L9_2 = L9_2[L8_2]
      if A2_2 == L9_2 then
        L9_2 = true
        return L9_2
      end
    end
  end
  L5_2 = false
  return L5_2
end
L0_1._is_contain_set_skill_changed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.skill_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._data
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.skill_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._set_set_skill_info = L1_1
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
    L7_2 = L7_2.RelicSetSkillInfoPanel
    L8_2 = G
    L8_2 = L8_2.RelicSetSkillInfoPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._data
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ID
  L6_2(L7_2, L8_2)
  L6_2 = L5_2.AfterCount
  if L6_2 == nil then
    L6_2 = L5_2.Count
    L5_2.AfterCount = L6_2
  end
  L7_2 = L4_2
  L6_2 = L4_2.set_replace
  L8_2 = L5_2.Count
  L9_2 = L5_2.AfterCount
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.safe_set_active
  L8_2 = L4_2.contains_set_skill_info
  L6_2(L7_2, L8_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L3_2.transform
  L6_2(L7_2)
  L7_2 = A1_2
  L6_2 = A1_2.OnItemSizeChanged
  L8_2 = A2_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_skill_item_change = L1_1
return L0_1
