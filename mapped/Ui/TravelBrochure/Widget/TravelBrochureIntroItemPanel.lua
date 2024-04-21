local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TravelBrochureIntroItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_content
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A2_2 ~= nil
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_index
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_index
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = string
    L6_2 = L6_2.format
    L7_2 = "%02d"
    L8_2 = A2_2
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.LayoutRebuilder
  L4_2 = L4_2.ForceRebuildLayoutImmediate
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L5_2 = L5_2.transform
  L4_2(L5_2)
end
L0_1.setup_view = L1_1
return L0_1
