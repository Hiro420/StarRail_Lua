local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SkillExtraDescPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._skill_row = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_extra_info
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._extra_desc_list = L1_2
  L1_2 = A0_2._skill_row
  L1_2 = L1_2.SimpleExtraEffectIDList
  if L1_2 then
    L1_2 = A0_2._skill_row
    L1_2 = L1_2.SimpleExtraEffectIDList
    L1_2 = L1_2.Length
    if 0 < L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.safe_set_active
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = 0
      L2_2 = A0_2._skill_row
      L2_2 = L2_2.SimpleExtraEffectIDList
      L2_2 = L2_2.Length
      L2_2 = L2_2 - 1
      L3_2 = 1
      for L4_2 = L1_2, L2_2, L3_2 do
        L5_2 = A0_2._skill_row
        L5_2 = L5_2.SimpleExtraEffectIDList
        L5_2 = L5_2[L4_2]
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.GameCore
        L6_2 = L6_2.ExtraEffectExcelTable
        L6_2 = L6_2.GetData
        L7_2 = L5_2
        L6_2 = L6_2(L7_2)
        if L6_2 ~= nil then
          L7_2 = table
          L7_2 = L7_2.insert
          L8_2 = A0_2._extra_desc_list
          L9_2 = L6_2
          L7_2(L8_2, L9_2)
        end
      end
      L1_2 = A0_2._binder
      L1_2 = L1_2._node_list_extra_desc
      L2_2 = L1_2
      L1_2 = L1_2.setup_view
      L3_2 = A0_2._extra_desc_list
      L1_2(L2_2, L3_2)
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_extra_info = L1_1
return L0_1
