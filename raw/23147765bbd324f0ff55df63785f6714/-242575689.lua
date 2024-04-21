local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.StuffStats
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MuseumStaffInfoPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._load_small_icon = true
  if A2_2 ~= nil then
    A0_2._load_small_icon = A2_2
  end
  A0_2._staff_data = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_staff_base_info
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_property
  L3_2(L4_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._staff_data
  L1_2 = L1_2.ItemRow
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.ItemName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.staff_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._staff_data
  L4_2 = L4_2.ID
  L5_2 = A0_2._load_small_icon
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._setup_staff_base_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._staff_data
  L1_2 = L1_2.StaffRow
  L2_2 = A0_2._binder
  L2_2 = L2_2.property_a_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2.StatsA
  L5_2 = L0_1.StatsA
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.property_b_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2.StatsB
  L5_2 = L0_1.StatsB
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.property_c_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2.StatsC
  L5_2 = L0_1.StatsC
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._setup_property = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_avatar_head
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_avatar_head
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Quaternion
  L3_2 = L3_2.Euler
  L4_2 = 0
  L5_2 = 0
  L6_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.rotation = L3_2
end
L1_1.set_avatar_head_rotation = L2_1
return L1_1
