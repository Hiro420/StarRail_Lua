local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritSkillCoreBagDetailPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "SkillDetailInfo/AvatarSkillInfoPanel/ScrollViewMask/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_view_skill = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SkillDetailInfo/FunctionBtnPanel/EquippedInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_belong = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "SkillDetailInfo/FunctionBtnPanel/EquippedInfo/EquipCharaMark/CharaPanel/ImgAvatar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_belong_spirit_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "SkillDetailInfo/FunctionBtnPanel/BtnRemove"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_remove = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "SkillDetailInfo/FunctionBtnPanel/BtnReplace"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_replace = L1_2
end
L0_1._on_bind = L1_1
return L0_1
