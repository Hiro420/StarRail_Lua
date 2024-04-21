local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlatformInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_ps_platform
  L3_2 = L3_2()
  L5_2 = A0_2
  L4_2 = A0_2.safe_set_active
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if not L3_2 then
    return
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_line
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L6_2 = A1_2.IsPSPlayer
  L7_2 = A1_2.PlatformUUID
  L8_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_line
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_line = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_line
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L4_2 = true
  L5_2 = A1_2
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.set_uuid = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_ps
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_other
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not A1_2
  L4_2(L5_2, L6_2)
  if A1_2 then
    L4_2 = A3_2 ~= true
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_id
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_id
    L6_2 = L5_2
    L5_2 = L5_2.SetCustomizedText
    L7_2 = A2_2
    L5_2(L6_2, L7_2)
  else
    L4_2 = OVERSEA_BUILD
    L4_2 = L4_2 == true
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_other_mi
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = not L4_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_other_ho
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._refresh = L1_1
return L0_1
