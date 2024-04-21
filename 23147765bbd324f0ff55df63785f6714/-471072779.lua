local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEnvBuffPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.DescParams
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_buff_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A1_2.Desc
    L5_2 = unpack
    L6_2 = G
    L6_2 = L6_2.Utils
    L6_2 = L6_2.create_lua_table_from_cs_array
    L7_2 = A1_2.DescParams
    L6_2, L7_2 = L6_2(L7_2)
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_buff_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A1_2.Desc
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_view = L1_1
return L0_1
