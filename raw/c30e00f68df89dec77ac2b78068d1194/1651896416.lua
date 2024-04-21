local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityFeverTime.Buff.ActivityFeverTimeBuffSelectTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityFeverTimeBuffSelectTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._title_text_id = A1_2
end
L0_1.setup_title = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tab_select
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._title_text_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tab_unselect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._title_text_id
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_select = L1_1
return L0_1
