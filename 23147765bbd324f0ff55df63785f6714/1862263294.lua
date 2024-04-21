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
L1_1 = "AvatarArchiveDetailStoryTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/DataBank/Widget/DataBankAvatarPanelStory.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "StoryContentPanel/BtnBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_back = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "StoryContentPanel/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarArchiveStoryContentPanel
  L4_2 = G
  L4_2 = L4_2.AvatarArchiveStoryContentPanelBinder
  L5_2 = "StoryContentPanel/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.content_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "OutsideStoryListPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_story_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "StoryContentPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_story_content = L1_2
  L1_2 = {}
  A0_2.story_panel_list = L1_2
  L1_2 = 1
  L2_2 = 5
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = "OutsideStoryListPanel/Root/OutsideStoryStaticList/OutsideStoryItem"
    L6_2 = tostring
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2 .. L6_2
    L7_2 = A0_2
    L6_2 = A0_2._create_panel
    L8_2 = G
    L8_2 = L8_2.AvatarArchiveStoryItemPanel
    L9_2 = G
    L9_2 = L9_2.AvatarArchiveStoryItemPanelBinder
    L10_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L7_2 = A0_2.story_panel_list
    L8_2 = A0_2.story_panel_list
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L7_2[L8_2] = L6_2
  end
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_red_dot = L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
