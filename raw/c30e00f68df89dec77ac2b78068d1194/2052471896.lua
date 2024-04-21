local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BaseMonsterDataProvider"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2
  A0_2._is_show_wave_index = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_show_wave_index
  return L1_2
end
L0_1.is_show_wave_index = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = 1
  return L1_2
end
L0_1.get_stage_count = L1_1
function L1_1(A0_2, A1_2)
end
L0_1.get_monster_waves_by_stage_idx = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.is_show_boss_info = L1_1
function L1_1(A0_2, A1_2)
end
L0_1.get_boss_monster_data_by_stage_idx = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.is_show_drop = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.get_drops = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.is_show_buff = L1_1
function L1_1(A0_2, A1_2, A2_2)
end
L0_1.get_buff_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = {}
  L2_2 = 1
  L4_2 = A0_2
  L3_2 = A0_2.get_stage_count
  L3_2 = L3_2(L4_2)
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2.get_monster_waves_by_stage_idx
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = ipairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = G
      L12_2 = L12_2.Utils
      L12_2 = L12_2.table_merge
      L13_2 = L11_2
      L14_2 = L1_2
      L12_2(L13_2, L14_2)
    end
  end
  return L1_2
end
L0_1.get_preview_monster_data_list = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = 1
  return L2_2
end
L0_1.get_index_by_monster_data = L1_1
return L0_1
