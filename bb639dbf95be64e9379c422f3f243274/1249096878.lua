local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityGuessTheSilhouetteResultDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/GuessTheSilhouette/GuessTheSilhouetteFindPhotoDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = "Contents/GuessPhotoFind"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animator_find = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Bg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/GuessPhotoFind/Root/GuessPhoto/Root/GuessPhotoTaskProgess/Bg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_progress_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/GuessPhotoFind/Root/GuessPhoto/Root/GuessPhotoTaskProgess/Decoration"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_progress_mark = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/GuessPhotoFind/Root/GuessPhoto/Root/GuessPhotoTaskProgess/TextGuessPhotoTaskProgessTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_progress_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/GuessPhotoFind/Root/GuessPhoto/Root/GuessPhotoTaskProgess/TextGuessPhotoTaskProgessValue"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/GuessPhotoFind/Root/ContentRight/Root/ScrollViewMask/ScrollView/Viewport/Content/TextGuessPhotoDetail"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_photo_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/GuessPhotoFind/Root/GuessPhoto/Root/ImgPhotoTextureFind"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_photo = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/GuessPhotoFind/Root/GuessPhoto/Root/ImgPhotoTextureSilhouette"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_silhouette = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Contents/GuessPhotoFind/Root/ContentRight/Root/ScrollViewMask/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/HintPanel/KeyMapHIntInfo/LeftExtra"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_scroll_hint = L1_2
end
L0_1._on_bind = L1_1
return L0_1