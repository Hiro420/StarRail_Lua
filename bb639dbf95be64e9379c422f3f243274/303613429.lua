local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeUI3DConfigItem"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2
  A0_2.crystal_node_path_template = nil
  A0_2.crystal_anchor_path_template = nil
  A0_2.crystal_count = nil
  L1_2 = {}
  A0_2.pc_config = L1_2
  L1_2 = {}
  A0_2.mobile_config = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2.crystal_node_path_template = nil
  A0_2.crystal_anchor_path_template = nil
  A0_2.pc_config = nil
  A0_2.mobile_config = nil
end
L0_1.dtor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.prefab_path
  A0_2.prefab_path = L2_2
  L2_2 = A1_2.node_path
  A0_2.crystal_node_path_template = L2_2
  L2_2 = A1_2.node_count
  A0_2.crystal_count = L2_2
  L2_2 = A1_2.anchor_path
  A0_2.crystal_anchor_path_template = L2_2
  L2_2 = A1_2.connect_line_path
  A0_2.crystal_connect_line_path_template = L2_2
  L2_2 = A1_2.aureole_path
  A0_2.crystal_aureole_path_template = L2_2
  L2_2 = A1_2.pc_config
  A0_2.pc_config = L2_2
  L2_2 = A1_2.mobile_config
  A0_2.mobile_config = L2_2
end
L0_1.set_config_from_table = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_layout
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2.pc_config
    L1_2 = L1_2.rect
    L1_2 = L1_2.width
    L2_2 = A0_2.pc_config
    L2_2 = L2_2.rect
    L2_2 = L2_2.height
    return L1_2, L2_2
  end
  L1_2 = A0_2.mobile_config
  L1_2 = L1_2.rect
  L1_2 = L1_2.width
  L2_2 = A0_2.mobile_config
  L2_2 = L2_2.rect
  L2_2 = L2_2.height
  return L1_2, L2_2
end
L0_1.get_root_rect_transform_size = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_layout
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2.pc_config
    L1_2 = L1_2.margin
    L1_2 = L1_2.left
    L2_2 = A0_2.pc_config
    L2_2 = L2_2.margin
    L2_2 = L2_2.right
    return L1_2, L2_2
  end
  L1_2 = A0_2.mobile_config
  L1_2 = L1_2.margin
  L1_2 = L1_2.left
  L2_2 = A0_2.mobile_config
  L2_2 = L2_2.margin
  L2_2 = L2_2.right
  return L1_2, L2_2
end
L0_1.get_margin = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    A1_2 = 1
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_pc_layout
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = A0_2.pc_config
    L2_2 = L2_2.camera_origin_pos
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Vector3
    L4_2 = A0_2.pc_config
    L4_2 = L4_2.origin_pos_offset_x
    L4_2 = L4_2[A1_2]
    L5_2 = 0
    L6_2 = 0
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L2_2 + L3_2
    return L2_2
  end
  L2_2 = A0_2.mobile_config
  L2_2 = L2_2.camera_origin_pos
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = A0_2.mobile_config
  L4_2 = L4_2.origin_pos_offset_x
  L4_2 = L4_2[A1_2]
  L5_2 = 0
  L6_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2 = L2_2 + L3_2
  return L2_2
end
L0_1.get_camera_origin_pos = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_layout
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2.pc_config
    L1_2 = L1_2.drag_offset_pos
    return L1_2
  end
  L1_2 = A0_2.mobile_config
  L1_2 = L1_2.drag_offset_pos
  return L1_2
end
L0_1.get_drag_offset = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = A0_2.crystal_node_path_template
  L4_2 = G
  L4_2 = L4_2.MathUtils
  L4_2 = L4_2.add_zero_front_num
  L5_2 = 2
  L6_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.get_crystal_nodes_path = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = A0_2.crystal_anchor_path_template
  L4_2 = G
  L4_2 = L4_2.MathUtils
  L4_2 = L4_2.add_zero_front_num
  L5_2 = 2
  L6_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.get_crystal_anchor_path = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = A0_2.crystal_connect_line_path_template
  L4_2 = G
  L4_2 = L4_2.MathUtils
  L4_2 = L4_2.add_zero_front_num
  L5_2 = 2
  L6_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.get_crystal_connect_line_path = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = A0_2.crystal_aureole_path_template
  L4_2 = G
  L4_2 = L4_2.MathUtils
  L4_2 = L4_2.add_zero_front_num
  L5_2 = 2
  L6_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.get_crystal_aureole_path = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.prefab_path
  return L1_2
end
L0_1.get_prefab_path = L1_1
return L0_1
