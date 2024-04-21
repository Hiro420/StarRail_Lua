local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarPromotionStatusPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.AvatarPropertyType
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._avatar_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_level_up
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetText
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_hp
  L3_2 = A0_2._avatar_data
  L4_2 = L3_2
  L3_2 = L3_2.GetDisplayFormatPropertyByType
  L5_2 = L1_1.MaxHP
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetText
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_attack
  L3_2 = A0_2._avatar_data
  L4_2 = L3_2
  L3_2 = L3_2.GetDisplayFormatPropertyByType
  L5_2 = L1_1.Attack
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetText
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_defense
  L3_2 = A0_2._avatar_data
  L4_2 = L3_2
  L3_2 = L3_2.GetDisplayFormatPropertyByType
  L5_2 = L1_1.Defence
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetText
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_speed
  L3_2 = A0_2._avatar_data
  L4_2 = L3_2
  L3_2 = L3_2.GetDisplayFormatPropertyByType
  L5_2 = L1_1.Speed
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.Promotion
  L1_2 = L1_2 + 1
  L2_2 = A0_2._avatar_data
  L3_2 = L2_2
  L2_2 = L2_2.GetDisplayFormatPropertyByType
  L4_2 = L1_1.MaxHP
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2._avatar_data
  L4_2 = L3_2
  L3_2 = L3_2.GetDisplayFormatPropertyByType
  L5_2 = L1_1.Attack
  L6_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2._avatar_data
  L5_2 = L4_2
  L4_2 = L4_2.GetDisplayFormatPropertyByType
  L6_2 = L1_1.Defence
  L7_2 = L1_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2._avatar_data
  L6_2 = L5_2
  L5_2 = L5_2.GetDisplayFormatPropertyByType
  L7_2 = L1_1.Speed
  L8_2 = L1_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = G
  L6_2 = L6_2.TextExtensions
  L6_2 = L6_2.SafeSetText
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_hp_next
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
  L6_2 = G
  L6_2 = L6_2.TextExtensions
  L6_2 = L6_2.SafeSetText
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_attack_next
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L6_2 = G
  L6_2 = L6_2.TextExtensions
  L6_2 = L6_2.SafeSetText
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_defense_next
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L6_2 = G
  L6_2 = L6_2.TextExtensions
  L6_2 = L6_2.SafeSetText
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_speed_next
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_speed
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = false
  L6_2(L7_2, L8_2)
end
L0_1._refresh = L2_1
return L0_1
