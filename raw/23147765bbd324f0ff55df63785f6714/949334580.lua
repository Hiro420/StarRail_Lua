local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.PlusMinusSliderPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.PlusMinusSliderPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PayConversionDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Shop/PayConversionDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Bg/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_exit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/DialogBtnPanel/BtnCancel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_cancel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/DialogBtnPanel/BtnConfirm"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RewardItemIconLite
  L4_2 = G
  L4_2 = L4_2.RewardItemIconLiteBinder
  L5_2 = "Contents/DescPanel/ConversionIcon/Icon1/CommonItemIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_item1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RewardItemIconLite
  L4_2 = G
  L4_2 = L4_2.RewardItemIconLiteBinder
  L5_2 = "Contents/DescPanel/ConversionIcon/Icon2/CommonItemIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_item2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.InputField
  L4_2 = "Contents/DescPanel/ConversionText/CommonInputField_Reverse"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.input_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "ResBarArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.loadmeta_resbar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PlusMinusSliderPanel
  L4_2 = G
  L4_2 = L4_2.PlusMinusSliderPanelBinder
  L5_2 = "Contents/DescPanel/ExchangePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_slider = L1_2
end
L0_1._on_bind = L1_1
return L0_1
