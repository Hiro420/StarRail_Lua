local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumStaffItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumStaffItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumStaffTipDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/Museum/MuseumMemberInfoTipDialog.prefab"
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
  L1_2 = A0_2._safe_find
  L3_2 = "MemberInfoTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_content = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "MemberInfoTip/Root/AvatarPanel/AvatarMask/AvatarImg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_head = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumStaffPropertyPanel
  L4_2 = G
  L4_2 = L4_2.MuseumStaffPropertyPanelBinder
  L5_2 = "MemberInfoTip/Root/AvatarPanel/PropertyList/PropertyInfoItem1"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.property_a_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumStaffPropertyPanel
  L4_2 = G
  L4_2 = L4_2.MuseumStaffPropertyPanelBinder
  L5_2 = "MemberInfoTip/Root/AvatarPanel/PropertyList/PropertyInfoItem2"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.property_b_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumStaffPropertyPanel
  L4_2 = G
  L4_2 = L4_2.MuseumStaffPropertyPanelBinder
  L5_2 = "MemberInfoTip/Root/AvatarPanel/PropertyList/PropertyInfoItem3"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.property_c_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "MemberInfoTip/Root/TipPanel/TipText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MemberInfoTip/Root/AvatarPanel/FailHint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_fail = L1_2
end
L0_1._on_bind = L1_1
return L0_1
