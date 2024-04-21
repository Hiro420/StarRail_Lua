local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveStoryContentPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveStoryContentPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveStoryItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveStoryItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarDataBankStoryDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Avatar/AvatarStoryDialog.prefab"
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
  L3_2 = L3_2.Text
  L4_2 = "Root/PageInfo/TitleType/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_path_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/PageInfo/TitleType/ExtraContent/ProfessionalIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_path_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/StoryContentPanel/BtnBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_back = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/StoryContentPanel/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarArchiveStoryContentPanel
  L4_2 = G
  L4_2 = L4_2.AvatarArchiveStoryContentPanelBinder
  L5_2 = "Root/StoryContentPanel/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.content_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
