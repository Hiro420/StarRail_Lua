local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Utilities.BuffUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FightActivityEatFoodTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.BuffUtils
L1_1 = L1_1.BuffPoolType
L1_1 = L1_1.ItemAtk
L2_1 = G
L2_1 = L2_1.BuffUtils
L2_1 = L2_1.BuffPoolType
L2_1 = L2_1.ItemDef
L3_1 = "UIText_Activity_Consume_Type_Atk"
L4_1 = "UIText_Activity_Consume_Type_Def"
L5_1 = "UIText_Activity_Consume_Chance"
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.Client
L6_1 = L6_1.GlobalVars
L6_1 = L6_1.s_ModuleManager
L6_1 = L6_1.FightActivityModule
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.Client
L7_1 = L7_1.InventoryModule
function L8_1(A0_2, A1_2)
  A0_2._food_type = A1_2
end
L0_1.setup_food_type = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = false
  L3_2 = nil
  L4_2 = A0_2._food_type
  L5_2 = L2_1
  if L4_2 == L5_2 then
    L4_2 = L6_1.UsedDefendFood
    if L4_2 ~= -1 then
      L2_2 = true
      L4_2 = L7_1.GetItemRow
      L5_2 = L6_1.UsedDefendFood
      L4_2 = L4_2(L5_2)
      L3_2 = L4_2
    end
  else
    L4_2 = A0_2._food_type
    L5_2 = L1_1
    if L4_2 == L5_2 then
      L4_2 = L6_1.UsedAttackFood
      if L4_2 ~= -1 then
        L2_2 = true
        L4_2 = L7_1.GetItemRow
        L5_2 = L6_1.UsedAttackFood
        L4_2 = L4_2(L5_2)
        L3_2 = L4_2
      end
    end
  end
  if L3_2 ~= nil then
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_food
    L7_2 = L3_2.ItemIconPath
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_empty
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_food
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_exchange
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_empty_text
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_turn_num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  if A1_2 ~= -1 then
    L5_2 = A0_2
    L4_2 = A0_2._refresh_text
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  end
end
L0_1.refresh = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = nil
  L3_2 = L6_1.FoodRemainTurn
  L4_2 = L3_2
  L3_2 = L3_2.ContainsKey
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = L6_1.FoodRemainTurn
    L2_2 = L3_2[A1_2]
  else
    L3_2 = G
    L3_2 = L3_2.InventoryUtils
    L3_2 = L3_2.get_activity_count
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_turn_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L5_1
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._refresh_text = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._food_type
  L2_2 = L2_1
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_type
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.refresh
    L3_2 = L6_1.UsedDefendFood
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_type
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.refresh
    L3_2 = L6_1.UsedAttackFood
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_added = L8_1
return L0_1
