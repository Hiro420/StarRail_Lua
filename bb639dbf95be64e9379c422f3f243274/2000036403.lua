local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Mission.Components.MissionSelectItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Components.MissionSelectedItemPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionSubmitItemPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MissionSelectItemPanel
  L4_2 = G
  L4_2 = L4_2.MissionSelectItemPanelBinder
  L5_2 = "DescPanel/ItemArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.select_item_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MissionSelectedItemPanel
  L4_2 = G
  L4_2 = L4_2.MissionSelectedItemPanelBinder
  L5_2 = "DescPanel/ScrollViewMask"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.selected_item_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "DialogBtnPanel/BtnConfirm"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.confirm_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "DialogBtnPanel/BtnCancel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.cancel_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "WarningTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.not_enought_node = L1_2
  L1_2 = A0_2.not_enought_node
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_bind = L1_1
return L0_1
