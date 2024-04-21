local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.BattleImageMessageDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleImageMessageDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BattleImageMessageDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  A0_2._is_focusable = false
  A0_2._is_resp_esc = false
  A0_2._message = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._message = A1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._message
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._message
  L3_2 = L3_2.Text
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.image
  L4_2 = A0_2._message
  L4_2 = L4_2.ImagePath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_view = L1_1
return L0_1
