local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonPropertyDescDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonPropertyDescDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonPropertyDescDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = false
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._level_data = A1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._level_data
  L1_2 = L1_2.TeamData
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_attack
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_TreasureDungeon_Prepare_Value"
  L5_2 = L1_2.AttackAdd
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_defence
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_TreasureDungeon_Prepare_Value"
  L5_2 = L1_2.DefenceAdd
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_atk_ex
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_TreasureDungeon_Prepare_Value"
  L5_2 = A0_2._level_data
  L5_2 = L5_2.ATKExAdd
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_atk_ex_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._level_data
  L4_2 = L4_2.ATKExName
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_atk_ex
  L5_2 = A0_2._level_data
  L5_2 = L5_2.ATKExIcon
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_view = L1_1
return L0_1
