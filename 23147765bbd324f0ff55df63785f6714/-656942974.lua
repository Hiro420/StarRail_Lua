local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DamageTypeListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 ~= nil
  return L2_2
end
L0_1.should_show = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = A0_2
  L3_2 = A0_2.should_show
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A2_2 ~= nil
  L6_2 = A0_2
  L5_2 = A0_2.safe_set_active
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  if not L3_2 then
    return
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_list
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  if L4_2 then
    L5_2 = ipairs
    L6_2 = A1_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = A0_2._binder
      L10_2 = L10_2.panel_list
      L11_2 = L10_2
      L10_2 = L10_2.get_panel_by_index
      L12_2 = L8_2
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = G
      L11_2 = L11_2.Utils
      L11_2 = L11_2.index_of_item
      L12_2 = A2_2
      L13_2 = L9_2
      L11_2 = L11_2(L12_2, L13_2)
      L11_2 = L11_2 ~= nil
      L13_2 = L10_2
      L12_2 = L10_2.set_type_activated
      L14_2 = L11_2
      L12_2(L13_2, L14_2)
    end
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_title = L1_1
return L0_1
