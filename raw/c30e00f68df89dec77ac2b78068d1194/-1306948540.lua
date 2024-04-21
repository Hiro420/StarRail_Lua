local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonResultDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_TreasureDungeon_Result_SubTitle"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  A0_2._data = A1_2
  A0_2._callback = A2_2
  A0_2._callback_self = A3_2
  L4_2 = {}
  L5_2 = A0_2._data
  L5_2 = L5_2.TotalExploreUsed
  L6_2 = A0_2._data
  L6_2 = L6_2.TotalEnemyKilled
  L7_2 = A0_2._data
  L7_2 = L7_2.TotalAttackItemFound
  L8_2 = A0_2._data
  L8_2 = L8_2.TotalDefenceItemFound
  L9_2 = A0_2._data
  L9_2 = L9_2.TotalBuffFound
  L10_2 = A0_2._data
  L10_2 = L10_2.TotalTrialAvatarFound
  L11_2 = A0_2._data
  L11_2 = L11_2.TotalUltraItemFound
  L12_2 = G
  L12_2 = L12_2.TextmapStatic
  L12_2 = L12_2.GetText
  L13_2 = "UIText_TreasureDungeon_Prepare_Value"
  L14_2 = A0_2._data
  L14_2 = L14_2.AttackAdd
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = G
  L13_2 = L13_2.TextmapStatic
  L13_2 = L13_2.GetText
  L14_2 = "UIText_TreasureDungeon_Prepare_Value"
  L15_2 = A0_2._data
  L15_2 = L15_2.AttackExAdd
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = G
  L14_2 = L14_2.TextmapStatic
  L14_2 = L14_2.GetText
  L15_2 = "UIText_TreasureDungeon_Prepare_Value"
  L16_2 = A0_2._data
  L16_2 = L16_2.DefenceAdd
  L14_2, L15_2, L16_2 = L14_2(L15_2, L16_2)
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L4_2[5] = L9_2
  L4_2[6] = L10_2
  L4_2[7] = L11_2
  L4_2[8] = L12_2
  L4_2[9] = L13_2
  L4_2[10] = L14_2
  L4_2[11] = L15_2
  L4_2[12] = L16_2
  A0_2._info_list = L4_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L4_2 = A0_2._data
  L4_2 = L4_2.CurFloor
  L5_2 = A0_2._data
  L5_2 = L5_2.MaxFloor
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = A0_2._info_list
  L2_2 = #L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.info_text_list
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.info_text_list
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetText
    L8_2 = A0_2._info_list
    L8_2 = L8_2[L5_2]
    L6_2(L7_2, L8_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_atk_ex
  L5_2 = A0_2._data
  L5_2 = L5_2.AttackExIcon
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_atk_ex_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._data
  L4_2 = L4_2.AttackExName
  L2_2(L3_2, L4_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_self
  L1_2(L2_2, L3_2)
end
L0_1._on_dispose = L2_1
return L0_1
