local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassPurchasedItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattlePassPurchasedItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2.RewardItem
  L4_2 = A2_2[L3_2]
  if L4_2 ~= nil then
    L4_2 = A2_2[L3_2]
    L4_2 = L4_2.Count
    if L4_2 then
      goto lbl_10
    end
  end
  L4_2 = 0
  ::lbl_10::
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_item
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_item
  L6_2 = L5_2
  L5_2 = L5_2.set_count
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_item
  L6_2 = L5_2
  L5_2 = L5_2.set_count_display
  L7_2 = A1_2.NumShow
  L5_2(L6_2, L7_2)
end
L0_1.setup_view = L1_1
return L0_1
