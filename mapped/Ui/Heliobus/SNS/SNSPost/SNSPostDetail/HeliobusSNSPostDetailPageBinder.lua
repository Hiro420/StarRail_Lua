local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSPostDetailPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/Heliobus/HeliobusQuickPostDetailDialog.prefab"
  return L1_2
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
  L4_2 = "Contents/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/RightPanel/Personality/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_tendency = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/RightPanel/AuthorInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_user_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/LeftPanel/ImgPanel/ImgLoad"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_img_post = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/RightPanel/ScrollView/Viewport/Content/Title/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_post_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/RightPanel/ScrollView/Viewport/Content/DesTextPanel/DesText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_post_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ArrowPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_arrow = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Contents/ArrowPanel/BtnLeft"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_arrow_prev = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Contents/ArrowPanel/BtnRight"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_arrow_next = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Contents/RightPanel/BtnPost"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_post = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SuccessHint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_post_success_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "SuccessHint"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_root = L1_2
end
L0_1._on_bind = L1_1
return L0_1
