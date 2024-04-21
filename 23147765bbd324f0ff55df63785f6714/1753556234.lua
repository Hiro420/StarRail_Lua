local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Talk.Components.RogueRandomEvtItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueRandomEvtItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._data = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img
  L6_2 = A2_2.ImagePath
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_view = L1_1
return L0_1
