local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonMonsterDetailInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._data = A1_2
  A0_2._buff_data = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_monster
  L4_2 = A0_2._data
  L4_2 = L4_2.Row
  L4_2 = L4_2.IconPath2D
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.Row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._buff_data
  L3_2 = L3_2.BuffRow
  L3_2 = L3_2.Desc
  L4_2 = unpack
  L5_2 = G
  L5_2 = L5_2.TreasureDungeonUtils
  L5_2 = L5_2.get_buff_desc_params
  L6_2 = A0_2._buff_data
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_elite
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsElite
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.EnemyRow
  L1_2 = L1_2.EnemyLevel
  L1_2 = 2 < L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_effect
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = G
    L2_2 = L2_2.TreasureDungeonUtils
    L2_2 = L2_2.get_content_type_id
    L3_2 = A0_2._data
    L2_2 = L2_2(L3_2)
    L3_2 = G
    L3_2 = L3_2.TreasureDungeonUtils
    L3_2 = L3_2.get_content_type_effect_path
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 ~= nil then
      L5_2 = A0_2
      L4_2 = A0_2._async_load_material
      L6_2 = A0_2._binder
      L6_2 = L6_2.img_effect
      L7_2 = L3_2
      L4_2(L5_2, L6_2, L7_2)
    else
      L4_2 = A0_2._binder
      L4_2 = L4_2.img_effect
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = false
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._refresh = L1_1
return L0_1
