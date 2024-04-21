local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonMonsterDetailBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.TreasureDungeonGridType
L1_1 = L1_1.Enemy
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A1_2
  L2_2 = A1_2.GetAllGridByType
  L4_2 = L1_1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = {}
  A0_2._effect_grids = L3_2
  L3_2 = {}
  A0_2._grid_effect_buffs = L3_2
  L3_2 = {}
  L4_2 = 0
  L5_2 = L2_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L2_2[L7_2]
    L9_2 = L8_2.Row
    L9_2 = L9_2.GridID
    L10_2 = G
    L10_2 = L10_2.TreasureDungeonUtils
    L10_2 = L10_2.get_grid_effect_buff
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    if L10_2 ~= nil then
      L11_2 = G
      L11_2 = L11_2.Utils
      L11_2 = L11_2.index_of_item
      L12_2 = L3_2
      L13_2 = L9_2
      L11_2 = L11_2(L12_2, L13_2)
      if L11_2 == nil then
        L11_2 = A0_2._effect_grids
        L12_2 = A0_2._effect_grids
        L12_2 = #L12_2
        L12_2 = L12_2 + 1
        L11_2[L12_2] = L8_2
        L11_2 = A0_2._grid_effect_buffs
        L12_2 = L8_2.GridIndex
        L11_2[L12_2] = L10_2
        L11_2 = table
        L11_2 = L11_2.insert
        L12_2 = L3_2
        L13_2 = L9_2
        L11_2(L12_2, L13_2)
      end
    end
  end
  L4_2 = table
  L4_2 = L4_2.sort
  L5_2 = A0_2._effect_grids
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = A0_3.EnemyRow
    L2_3 = L2_3.EnemyLevel
    L3_3 = A1_3.EnemyRow
    L3_3 = L3_3.EnemyLevel
    if L2_3 ~= L3_3 then
      L4_3 = L2_3 > L3_3
      return L4_3
    end
    L4_3 = A0_2._grid_effect_buffs
    L5_3 = A0_3.GridIndex
    L4_3 = L4_3[L5_3]
    L4_3 = L4_3.BuffType
    L5_3 = A0_2._grid_effect_buffs
    L6_3 = A1_3.GridIndex
    L5_3 = L5_3[L6_3]
    L5_3 = L5_3.BuffType
    if L4_3 ~= L5_3 then
      L6_3 = #L4_3
      L7_3 = #L5_3
      L6_3 = L6_3 > L7_3
      return L6_3
    end
    L6_3 = A0_3.GridIndex
    L7_3 = A1_3.GridIndex
    L6_3 = L6_3 > L7_3
    return L6_3
  end
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.safe_set_active
  L6_2 = A0_2._effect_grids
  L6_2 = #L6_2
  L6_2 = 0 < L6_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "TreasureDungeonMonsterDetail"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.TreasureDungeon.TreasureDungeonMonsterDetailDialog"
  L3_2 = A0_2._effect_grids
  L4_2 = A0_2._grid_effect_buffs
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root = L2_1
return L0_1
