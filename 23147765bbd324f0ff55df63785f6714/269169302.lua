local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Toast.ActivityMonopolyMBTIHintDialogBinder"
L0_1(L1_1)
L0_1 = 1.5
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityMonopolyMBTIHintDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyMBTIHintDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._text_str = A1_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = L0_1
  end
  A0_2._time = L3_2
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_top_hint
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._text_str
  L4_2 = A0_2._time
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._setup_view = L2_1
return L1_1
