local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookTopTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueHandbookTopTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._data
  return L1_2
end
L0_1.get_data = L1_1
function L1_1(A0_2, A1_2)
  A0_2._data = A1_2
end
L0_1.set_data = L1_1
function L1_1(A0_2, A1_2)
  A0_2._iconpath = A1_2
end
L0_1.set_icon_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.icon
  L4_2 = A0_2._iconpath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.selected_icon
  L4_2 = A0_2._iconpath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._is_selected = true
end
L0_1._on_select = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._is_selected = false
end
L0_1._on_unselect = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.bind_reddot = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reddot
  return L1_2
end
L0_1.get_reddot_transform = L1_1
return L0_1
