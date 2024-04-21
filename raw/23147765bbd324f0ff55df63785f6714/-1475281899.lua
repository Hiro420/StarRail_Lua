local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.TabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FightActivityEatFoodTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "Selected/TextPanel/ExtraContent/EmptyText"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty_text = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "Selected/TextPanel/ExtraContent/TurnNum"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_turn_num = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "Selected/TextPanel/ExtraContent/TurnNum/RemainTurn/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_turn_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "Selected/AvatarHeadRow/Empty"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "Selected/AvatarHeadRow/IconAvatar"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_food = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "Selected/AvatarHeadRow/NumberMark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_exchange = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "Selected/AvatarHeadRow/Empty/Bg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_type = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "Selected/AvatarHeadRow/IconAvatar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_food = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "Selected/TextPanel/TabText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_type = L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
