local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonPropertyDescDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Quest/TreasureDungeon/TreasureDungeonBuffTipsDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.Text
  L4_2 = "Contents/PopUpTip/Content/BuffDetailOject/AttackBuffDetail1/AttackInfo1/Progress/ObtainedNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_attack = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/PopUpTip/Content/BuffDetailOject/DefenceBuffDetail1/AttackInfo1/Progress/ObtainedNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_defence = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/PopUpTip/Content/BuffDetailOject/AttackBuffDetail2/AttackInfo2/Progress/ObtainedNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_atk_ex = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/PopUpTip/Content/BuffDetailOject/AttackBuffDetail2/AttackInfo2/MissionName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_atk_ex_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/PopUpTip/Content/BuffDetailOject/AttackBuffDetail2/AttackIcon2/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_atk_ex = L1_2
end
L0_1._on_bind = L1_1
return L0_1
