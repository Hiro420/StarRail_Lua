local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemTipsTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._title = A1_2
end
L0_1.set_tab_title = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._title = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_title
  L1_2(L2_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._title
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._title
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_tab_title = L1_1
return L0_1
