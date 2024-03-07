local L0_1, L1_1, L2_1
L0_1 = "UI/Rogue/DLC/RogueNous/Widget/RogueNousMissionBigWithLineItem.prefab"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueNousMainStoryData"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2)
  A0_2._native_data = A1_2
  A0_2.first_seen_effect_played = false
end
L1_1.init = L2_1
function L2_1(A0_2, A1_2)
  A0_2._in_layer_index = A1_2
end
L1_1.set_in_layer_index = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._in_layer_index
  return L1_2
end
L1_1.get_in_layer_index = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._native_data
  return L1_2
end
L1_1.get_native = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = L0_1
  return L1_2
end
L1_1.get_prefab_path = L2_1
function L2_1(A0_2, A1_2)
  A0_2._offset = A1_2
end
L1_1.setup_offset = L2_1
function L2_1(A0_2, A1_2)
  A0_2._padding = A1_2
end
L1_1.setup_padding = L2_1
function L2_1(A0_2, A1_2)
  A0_2._item_height = A1_2
end
L1_1.setup_item_height = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._local_position_y
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.recursively_get_local_position_y
    L4_2 = A0_2
    L5_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._local_position_y = L2_2
  end
  L2_2 = A0_2._local_position_y
  return L2_2
end
L1_1.get_local_position_y = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L4_2 = A1_2
  L3_2 = A1_2.get_leaf_node_position_y
  return L3_2(L4_2)
end
L1_1.recursively_get_local_position_y = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._padding
  L2_2 = A0_2._in_layer_index
  L2_2 = 2 * L2_2
  L2_2 = L2_2 - 2
  L1_2 = L1_2 * L2_2
  L2_2 = A0_2._item_height
  L3_2 = A0_2._in_layer_index
  L3_2 = L3_2 - 1.5
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2 + L2_2
  return L1_2
end
L1_1.get_leaf_node_position_y = L2_1
return L1_1
