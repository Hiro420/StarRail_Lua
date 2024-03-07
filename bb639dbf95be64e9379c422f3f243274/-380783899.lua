local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ToastMissionGapDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Common/Widget/GapMissionChapterHint.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2.start_text = "UIText_CompanionToast_1"
  A0_2.finish_text = "UIText_CompanionToast_2"
  A0_2.start_animation = "GapMissionChapterHint_Start"
  A0_2.finish_animation = "GapMissionChapterHint_Finish"
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "StartPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_start = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FinishPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_complete = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/TextPanel/MissionTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/TextPanel/HintTextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ani_animation = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/TextPanel/ChapterTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_chapter = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Content/IconPanel/ChapterIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.image_chapter = L1_2
end
L0_1._on_bind = L1_1
return L0_1
