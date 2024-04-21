local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueMiracleListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    L2_2 = 0
    if L2_2 then
      goto lbl_7
    end
  end
  L2_2 = A1_2.Count
  ::lbl_7::
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_total_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_empty
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 == 0
  L3_2(L4_2, L5_2)
  if 0 < L2_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.create_lua_table_from_cs_list
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.miracle_list
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1.setup_view = L1_1
return L0_1
