local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumStaffSlotPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumStaffSlotPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumAreaInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumAreaInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumStaffSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumStaffSelectPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumStaffChooseDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Quest/Museum/MuseumMemberChooseDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/RightPanel/BtnPanel/BtnConfirm"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/RightPanel/BtnPanel/BtnShop"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_shop = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanel/BtnPanel/BtnShop/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_shop_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/TopBarArea/BtnAtlas"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_atlas = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TopBarArea/BtnAtlas/Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_atlas_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumAreaInfoPanel
  L4_2 = G
  L4_2 = L4_2.MuseumAreaInfoPanelBinder
  L5_2 = "Root/Contents/LeftPanel/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.area_info_panel = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.MuseumStaffSlotPanel
  L5_2 = G
  L5_2 = L5_2.MuseumStaffSlotPanelBinder
  L6_2 = "Root/Contents/LeftPanel/Content/MemberSlot/SlotList/TeamMemberSlot1"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._create_panel
  L5_2 = G
  L5_2 = L5_2.MuseumStaffSlotPanel
  L6_2 = G
  L6_2 = L6_2.MuseumStaffSlotPanelBinder
  L7_2 = "Root/Contents/LeftPanel/Content/MemberSlot/SlotList/TeamMemberSlot2"
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._create_panel
  L6_2 = G
  L6_2 = L6_2.MuseumStaffSlotPanel
  L7_2 = G
  L7_2 = L7_2.MuseumStaffSlotPanelBinder
  L8_2 = "Root/Contents/LeftPanel/Content/MemberSlot/SlotList/TeamMemberSlot3"
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  A0_2.staff_slot_panel_table = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumStaffSelectPanel
  L4_2 = G
  L4_2 = L4_2.MuseumStaffSelectPanelBinder
  L5_2 = "Root/Contents/RightPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.staff_select_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
