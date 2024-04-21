local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Archive.MonsterArchive.MonsterArchiveResistItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.MonsterArchive.MonsterArchiveResistItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterArchiveDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.resist_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_resist_item_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._entry = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MonsterExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._entry
  L2_2 = L2_2.Row
  L2_2 = L2_2.MonsterTemplateID
  L1_2 = L1_2(L2_2)
  A0_2._monster_config = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_resist
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_weak_point
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_rank
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_monster_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._entry
  L3_2 = L3_2.Row
  L3_2 = L3_2.MonsterName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_kill_count
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._entry
  L3_2 = L3_2.KillCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_story
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._monster_config
  L3_2 = L3_2.MonsterIntroduction
  L1_2(L2_2, L3_2)
end
L0_1._refresh_text = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2._type_resist_datas = L1_2
  L1_2 = {}
  A0_2._status_resist_datas = L1_2
  L1_2 = 0.4
  L2_2 = A0_2._monster_config
  L2_2 = L2_2.DamageTypeResistance
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L7_2 = L7_2.Value
    L7_2 = L7_2.RawValue
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.FixPoint
    L8_2 = L8_2.One
    L8_2 = L8_2.RawValue
    L7_2 = L7_2 / L8_2
    if L1_2 < L7_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._type_resist_datas
      L10_2 = L2_2[L6_2]
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = A0_2._monster_config
  L3_2 = L3_2.DebuffResist
  L4_2 = 0
  L5_2 = L3_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L8_2 = L8_2.Value
    L8_2 = L8_2.RawValue
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.FixPoint
    L9_2 = L9_2.One
    L9_2 = L9_2.RawValue
    L8_2 = L8_2 / L9_2
    if L1_2 < L8_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2._status_resist_datas
      L11_2 = L3_2[L7_2]
      L9_2(L10_2, L11_2)
    end
  end
  L4_2 = A0_2._type_resist_datas
  L4_2 = #L4_2
  A0_2._type_count = L4_2
  L4_2 = A0_2._type_count
  L5_2 = A0_2._status_resist_datas
  L5_2 = #L5_2
  L4_2 = L4_2 + L5_2
  A0_2._resist_count = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_resist_list
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._resist_count
  L6_2 = 0 < L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._resist_count
  if 0 < L4_2 then
    L4_2 = {}
    A0_2._panel_icons = L4_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.resist_list
    L5_2 = L4_2
    L4_2 = L4_2.SetListItemCount
    L6_2 = A0_2._resist_count
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._refresh_resist = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._monster_config
  L1_2 = L1_2.StanceWeakList
  L2_2 = {}
  L3_2 = 0
  L4_2 = L1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L2_2
    L9_2 = L1_2[L6_2]
    L7_2(L8_2, L9_2)
  end
  L3_2 = #L2_2
  L3_2 = 0 < L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_empty
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.weak_point_list_panel
  L5_2 = L4_2
  L4_2 = L4_2.safe_set_active
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.weak_point_list_panel
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._refresh_weak_point = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.elite_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._entry
  L3_2 = L3_2.Row
  L1_2(L2_2, L3_2)
end
L0_1._refresh_rank = L1_1
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
    L7_2 = L7_2.MonsterArchiveResistItemPanel
    L8_2 = G
    L8_2 = L8_2.MonsterArchiveResistItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.ItemTransform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A2_2 + 1
  L6_2 = A0_2._type_count
  if L5_2 <= L6_2 then
    L6_2 = A0_2._type_resist_datas
    L6_2 = L6_2[L5_2]
    L8_2 = L4_2
    L7_2 = L4_2.setup_type_view
    L9_2 = L6_2.DamageType
    L7_2(L8_2, L9_2)
  else
    L6_2 = A0_2._status_resist_datas
    L7_2 = A0_2._type_count
    L7_2 = L5_2 - L7_2
    L6_2 = L6_2[L7_2]
    L8_2 = L4_2
    L7_2 = L4_2.setup_status_view
    L9_2 = L6_2.Key
    L7_2(L8_2, L9_2)
  end
  return L3_2
end
L0_1._on_resist_item_change = L1_1
return L0_1
