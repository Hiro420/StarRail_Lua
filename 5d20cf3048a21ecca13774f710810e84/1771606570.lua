local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.HandbookGuideChallengeFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ShopGoodFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "ShopTab"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_shop_good_new
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_shop_good_normal
  L1_2(L2_2)
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = G
  L1_2 = L1_2.ShopModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.get_new_shop_good_map
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = pairs
    L3_2 = L1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L6_2
      L8_2 = L7_2.row
      if L8_2 ~= nil then
        L9_2 = L7_2
        L8_2 = L7_2.is_new
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = G
          L8_2 = L8_2.RedDotModule
          L8_2 = L8_2.Instance
          L9_2 = L8_2
          L8_2 = L8_2.update_reddot
          L10_2 = "NewShopGood"
          L11_2 = L6_2.GoodsID
          L8_2(L9_2, L10_2, L11_2)
          L8_2 = G
          L8_2 = L8_2.RedDotModule
          L8_2 = L8_2.Instance
          L9_2 = L8_2
          L8_2 = L8_2.update_reddot
          L10_2 = "HasNewShopGoodTab"
          L11_2 = L6_2.ShopID
          L8_2(L9_2, L10_2, L11_2)
        end
      end
    end
  end
end
L0_1._refresh_shop_good_new = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_challenge_reddot
  L1_2(L2_2)
end
L0_1._refresh_shop_good_normal = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.HandbookGuideChallengeFilter
  L1_2 = L1_2.get_shop_good_reddot_map
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = pairs
    L3_2 = L1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.update_reddot
      L9_2 = "HasNormalShopGoodTab"
      L10_2 = L6_2
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.update_reddot
      L9_2 = "NormalShopGood"
      L10_2 = L5_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1._refresh_challenge_reddot = L1_1
return L0_1
