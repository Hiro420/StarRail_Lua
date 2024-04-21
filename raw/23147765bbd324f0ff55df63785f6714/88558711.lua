local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonDifficultTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2 or nil
  if not A1_2 then
    L3_2 = {}
  end
  A0_2._selection = L3_2
  A0_2._data = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_datas
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._data
  L2_2 = L2_2.Row
  L2_2 = L2_2.DisplayMonsterIDList
  L1_2 = L1_2(L2_2)
  A0_2._monster_ids = L1_2
  L1_2 = {}
  A0_2._monster_data_list = L1_2
  A0_2._monster_level = 0
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L1_2 = L1_2.GetStageIDByEventID
  L2_2 = A0_2._data
  L2_2 = L2_2.Row
  L2_2 = L2_2.DisplayEventID
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StageExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.Level
    A0_2._monster_level = L3_2
  end
  L3_2 = ipairs
  L4_2 = A0_2._monster_ids
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.MonsterData
    L9_2 = L7_2
    L10_2 = A0_2._monster_level
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = A0_2._monster_data_list
    L10_2 = A0_2._monster_data_list
    L10_2 = #L10_2
    L10_2 = L10_2 + 1
    L9_2[L10_2] = L8_2
  end
end
L0_1._refresh_datas = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._selection
  return L1_2
end
L0_1.get_avatar_selection = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._data
  L1_2 = L1_2.Row
  return L1_2
end
L0_1.get_data = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._monster_data_list
  return L1_2
end
L0_1.get_monster_data_list = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._monster_level
  return L1_2
end
L0_1.get_monster_level = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._monster_ids
  return L1_2
end
L0_1.get_monster_ids = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsOpened
  return L1_2
end
L0_1._is_enable = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ToastPile
  L1_2 = L1_2()
  L1_2.DescTextID = "UIText_TreasureDungeon_Challenge_PreChallenge"
  L2_2 = A0_2._data
  L2_2 = L2_2.PreDungeonName
  L1_2.TextIDParam = L2_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPileToastMessageStruct
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_select_when_disable = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsOpened
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finished
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsFinished
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L1_1
return L0_1
