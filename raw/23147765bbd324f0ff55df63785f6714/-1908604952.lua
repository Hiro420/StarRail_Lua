local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueBuffTypeListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 100
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._init_buff_type_to_num_dic
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_1
  L3_2 = L2_2[L3_2]
  if not L3_2 then
    L3_2 = 0
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_total_num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_empty
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2 == 0
  L4_2(L5_2, L6_2)
  if 0 < L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_buff_type_num
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RogueBuffTypeExcelTable
  L3_2 = L3_2.dataDict
  L4_2 = L3_2
  L3_2 = L3_2.GetEnumerator
  L3_2 = L3_2(L4_2)
  while true do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L3_2.Current
    L4_2 = L4_2.Value
    L5_2 = L4_2.RogueBuffType
    L6_2 = L1_1
    if L5_2 ~= L6_2 then
      L6_2 = {}
      L7_2 = L4_2.RogueBuffTypeIcon
      L6_2.Icon = L7_2
      L7_2 = A1_2[L5_2]
      if not L7_2 then
        L7_2 = 0
      end
      L6_2.Num = L7_2
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L2_2
      L9_2 = #L2_2
      L9_2 = L9_2 + 1
      L10_2 = L6_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.buff_type_list
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L0_1._setup_buff_type_num = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = 0
  if A1_2 == nil then
    L4_2 = 0
    if L4_2 then
      goto lbl_9
    end
  end
  L4_2 = A1_2.Count
  ::lbl_9::
  L5_2 = 0
  L6_2 = L4_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A1_2[L8_2]
    L11_2 = L9_2
    L10_2 = L9_2.GetRogueBuffType
    L10_2 = L10_2(L11_2)
    L11_2 = L2_2[L10_2]
    if L11_2 == nil then
      L2_2[L10_2] = 1
    else
      L11_2 = L2_2[L10_2]
      L11_2 = L11_2 + 1
      L2_2[L10_2] = L11_2
    end
    L3_2 = L3_2 + 1
  end
  L5_2 = L1_1
  L2_2[L5_2] = L3_2
  return L2_2
end
L0_1._init_buff_type_to_num_dic = L2_1
return L0_1
