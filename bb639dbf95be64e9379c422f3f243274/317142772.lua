local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionChronicleMainPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Chronicle/ChroniclePage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root/BtnClose02"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_back = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/PageInfo/Title/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PageInfo02"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_sub_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/PageInfo02/TitleType/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_sub_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_graph_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopGridView
  L4_2 = "Root/Contents/RulerScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.grid_view_world = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "Root/Contents/RulerScrollView/Viewport/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_trans_world = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Root/Contents/RulerScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect_world = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root/Contents/ArrowPanel/BtnLeft"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_left_world = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root/Contents/ArrowPanel/BtnRight"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_right_world = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Bg/PictureBg/ImgBgScrollView/Viewport/Content/ImgBg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_world_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Bg/PictureBg/ImgBgScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "Bg/PictureBg/ImgBgScrollView/Viewport/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_bg_trans = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "Bg/BgEffect"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_bg_eff_trans = L1_2
end
L0_1._on_bind = L1_1
return L0_1
