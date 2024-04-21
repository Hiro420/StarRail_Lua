local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = "UIText_ActivityPunkLord_Main_InMemberValue_Label"
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueCommonExcelTable
L1_1 = L1_1.GetData
L2_1 = "PunkLord_MonsterShare_MaxNum"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.IntValue
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "PunkLordShareInfoPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_player_num
  L4_2 = A1_2.AttackNum
  L5_2 = L1_1
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_self_attack_state
  L4_2 = A1_2.SelfAttackNum
  L2_2(L3_2, L4_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_player_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L0_1
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L2_1._setup_player_num = L3_1
function L3_1(A0_2, A1_2)
end
L2_1._setup_self_attack_state = L3_1
return L2_1
