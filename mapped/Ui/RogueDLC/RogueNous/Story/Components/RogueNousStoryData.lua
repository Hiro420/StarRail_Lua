local L0_1, L1_1, L2_1, L3_1
L0_1 = "UI/Rogue/DLC/RogueNous/Widget/RogueNousMissionItem.prefab"
L1_1 = "UI/Rogue/DLC/RogueNous/Widget/RogueNousMissionRecommendItem.prefab"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "RogueNousStoryData"
L2_1 = L2_1(L3_1)
function L3_1(A0_2, A1_2, A2_2)
  A0_2._native_data = A1_2
  A0_2._is_recommended = A2_2
  A0_2.first_seen_effect_played = false
end
L2_1.init = L3_1
function L3_1(A0_2, A1_2)
  A0_2._in_layer_index = A1_2
end
L2_1.set_in_layer_index = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._in_layer_index
  return L1_2
end
L2_1.get_in_layer_index = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._native_data
  return L1_2
end
L2_1.get_native = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_recommended
  if L1_2 then
    L1_2 = L1_1
    return L1_2
  end
  L1_2 = L0_1
  return L1_2
end
L2_1.get_prefab_path = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_recommended
  return L1_2
end
L2_1.is_recommended_sub_story = L3_1
function L3_1(A0_2, A1_2)
  A0_2._offset = A1_2
end
L2_1.setup_offset = L3_1
function L3_1(A0_2, A1_2)
  A0_2._padding = A1_2
end
L2_1.setup_padding = L3_1
function L3_1(A0_2, A1_2)
  A0_2._item_height = A1_2
end
L2_1.setup_item_height = L3_1
function L3_1(A0_2, A1_2)
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
L2_1.get_local_position_y = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A1_2
  L3_2 = A1_2.get_native
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.NextLayerIDArray
  if L3_2 ~= nil then
    L4_2 = A1_2
    L3_2 = A1_2.get_native
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.NextLayerIDArray
    L3_2 = L3_2.Length
    if L3_2 ~= 0 then
      goto lbl_16
    end
  end
  L4_2 = A1_2
  L3_2 = A1_2.get_leaf_node_position_y
  do return L3_2(L4_2) end
  goto lbl_42
  ::lbl_16::
  L3_2 = 0
  L4_2 = 0
  L6_2 = A1_2
  L5_2 = A1_2.get_native
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.NextLayerIDArray
  L5_2 = L5_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L9_2 = A1_2
    L8_2 = A1_2.get_native
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2.NextLayerIDArray
    L8_2 = L8_2[L7_2]
    L9_2 = A2_2[L8_2]
    L11_2 = L9_2
    L10_2 = L9_2.recursively_get_local_position_y
    L12_2 = L9_2
    L13_2 = A2_2
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L3_2 = L3_2 + L10_2
  end
  L5_2 = A1_2
  L4_2 = A1_2.get_native
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.NextLayerIDArray
  L4_2 = L4_2.Length
  L4_2 = L3_2 / L4_2
  do return L4_2 end
  ::lbl_42::
end
L2_1.recursively_get_local_position_y = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._padding
  L2_2 = A0_2._in_layer_index
  L2_2 = 2 * L2_2
  L2_2 = L2_2 - 1
  L1_2 = L1_2 * L2_2
  L2_2 = A0_2._item_height
  L3_2 = A0_2._in_layer_index
  L3_2 = L3_2 - 0.5
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2 + L2_2
  L2_2 = A0_2._offset
  L1_2 = L1_2 + L2_2
  return L1_2
end
L2_1.get_leaf_node_position_y = L3_1
function L3_1(A0_2, A1_2)
  A0_2._is_unlocked_override = A1_2
end
L2_1.set_override_unlocked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_unlocked_override
  if L1_2 ~= nil then
    L1_2 = A0_2._is_unlocked_override
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.get_native
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.IsUnlocked
  return L1_2
end
L2_1.is_unlocked = L3_1
return L2_1
