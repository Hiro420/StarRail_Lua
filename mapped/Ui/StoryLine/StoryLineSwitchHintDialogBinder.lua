local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "StoryLineSwitchHintDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/StoryLine/Widget/StoryLineSwitchHint.prefab"
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
  L3_2 = L3_2.Image
  L4_2 = "Contents/LeftPanel/ImgMask/ShowImgPanel0/StoryImg/Image"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/RightPanel/IconPanel/ChapterIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.figure_image = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/RightPanel/IconPanel/ChapterIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.small_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Contents/RightPanel/TextPanel/MissionTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.name_txt = L1_2
end
L0_1._on_bind = L1_1
return L0_1
