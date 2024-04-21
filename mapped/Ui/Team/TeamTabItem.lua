local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Team.TeamTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._click_callback = nil
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  A0_2._click_callback = A1_2
end
L0_1.set_select_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_current_team_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_current_team_mark = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_team_title_unselected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "0%d"
  L5_2 = A0_2.uid
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_team_title_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "0%d"
  L5_2 = A0_2.uid
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.trigger_callback
  L1_2(L2_2)
end
L0_1._on_select = L1_1
function L1_1(A0_2, A1_2)
end
L0_1._on_unselect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._click_callback
  if L1_2 then
    L1_2 = A0_2._click_callback
    L2_2 = A0_2.uid
    L1_2(L2_2)
  end
end
L0_1.trigger_callback = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._click_callback = nil
end
L0_1._on_dispose = L1_1
return L0_1
