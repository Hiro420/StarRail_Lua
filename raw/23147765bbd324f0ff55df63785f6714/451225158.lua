local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicReplaceComparePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicReplaceComparePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_compare
  L4_2 = A0_2._on_btn_compare
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_result
  L4_2 = A0_2._on_btn_result
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_show_result = false
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._avatar_data = A1_2
  L3_2 = A2_2.RelicRow
  L3_2 = L3_2.Type
  A0_2._relic_type = L3_2
  L3_2 = G
  L3_2 = L3_2.RelicUtils
  L3_2 = L3_2.get_relic_from_avatar
  L4_2 = A0_2._relic_type
  L5_2 = A0_2._avatar_data
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._cur_relic = L3_2
  A0_2._new_relic = A2_2
  L3_2 = {}
  A0_2._data = L3_2
  L3_2 = A0_2._cur_relic
  if L3_2 ~= A2_2 then
    L3_2 = A0_2._avatar_data
    L3_2 = L3_2.RelicsData
    L5_2 = L3_2
    L4_2 = L3_2.GetVirtualDataReplaceWith
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = A0_2._avatar_data
    L6_2 = L5_2
    L5_2 = L5_2.GetAllPropertyValueWithVirtualRelicSet
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = A0_2
    L6_2 = A0_2._init_data
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if L2_2 == A1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._is_show_result
  if L2_2 and A1_2 then
    L2_2 = A0_2._new_relic
    if L2_2 ~= nil then
      goto lbl_18
    end
  end
  do return end
  ::lbl_18::
  L2_2 = A0_2._binder
  L2_2 = L2_2.relic_set_skill_compare_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_replace_relic_item
  L4_2 = A0_2._new_relic
  L2_2(L3_2, L4_2)
end
L0_1.set_panel_visibility = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A1_2
  L2_2 = A1_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AvatarPropertyExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2.Current
    L4_2 = L4_2.Key
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.IsDisplay
    if L4_2 then
      L4_2 = {}
      L5_2 = L2_2.Current
      L5_2 = L5_2.Key
      L4_2.PropertyType = L5_2
      L5_2 = L2_2.Current
      L5_2 = L5_2.Value
      L4_2.NumAfter = L5_2
      L5_2 = A0_2._avatar_data
      L6_2 = L5_2
      L5_2 = L5_2.GetPropertyByType
      L7_2 = L4_2.PropertyType
      L5_2 = L5_2(L6_2, L7_2)
      L4_2.NumBefore = L5_2
      L5_2 = L4_2.NumAfter
      L6_2 = L4_2.NumBefore
      if L5_2 ~= L6_2 then
        L5_2 = table
        L5_2 = L5_2.insert
        L6_2 = A0_2._data
        L7_2 = A0_2._data
        L7_2 = #L7_2
        L7_2 = L7_2 + 1
        L8_2 = L4_2
        L5_2(L6_2, L7_2, L8_2)
      end
    end
  end
end
L0_1._init_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_node
  L1_2(L2_2)
  L1_2 = A0_2._is_show_result
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_result
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_compare
    L1_2(L2_2)
  end
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_empty2
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_relic_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_show_result
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.relic_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._is_show_result
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.relic_status_compare_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._is_show_result
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.set_skill_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._is_show_result
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.relic_set_skill_compare_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._is_show_result
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_skill_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_show_result
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_show_result
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_equip_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_show_result
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_compare
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._is_show_result
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_result
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._is_show_result
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._refresh_node = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_relic
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._setup_unequipped_view
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_relic_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._cur_relic
  L3_2 = L3_2.RelicInfoRow
  L3_2 = L3_2.RelicName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_position
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.RelicUtils
  L3_2 = L3_2.get_textid_by_type
  L4_2 = A0_2._relic_type
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_relil_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._cur_relic
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.relic_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_relic
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.set_skill_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_relic
  L3_2 = L3_2.RelicRow
  L3_2 = L3_2.SetID
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RelicUtils
  L1_2 = L1_2.count_set_skill_id
  L2_2 = A0_2._cur_relic
  L2_2 = L2_2.RelicRow
  L2_2 = L2_2.SetID
  L3_2 = A0_2._avatar_data
  L4_2 = L3_2
  L3_2 = L3_2.GetRelicList
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.set_skill_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_count
  L4_2 = L1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_compare = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = #L3_2
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.relic_status_compare_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.relic_set_skill_compare_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.relic_set_skill_compare_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_replace_relic_item
  L3_2 = A0_2._new_relic
  L1_2(L2_2, L3_2)
end
L0_1._setup_result = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_equip_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_skill_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.relic_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_relic_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_empty2
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._setup_unequipped_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_show_result
  if not L1_2 then
    return
  end
  A0_2._is_show_result = false
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_btn_compare = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_show_result
  if L1_2 then
    return
  end
  A0_2._is_show_result = true
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_btn_result = L1_1
return L0_1
