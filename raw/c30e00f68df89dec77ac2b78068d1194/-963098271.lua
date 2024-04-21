local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.TabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleCollegeDetailVideoTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "VideoPanel/VideoContainer/NamePanel/TitleText/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "VideoPanel/VideoContainer/PicCover"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.image_cover = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "VideoPanel/VideoContainer/PicCover"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_image_cover = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "VideoPanel/VideoContainer/Pic"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.image_trans = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "VideoPanel/VideoContainer/SubtitlePanel/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_subtitle = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "VideoPanel/VideoContainer/SubtitlePanel/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas_group_caption = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "VideoPanel/VideoContainer/SubtitlePanel/Name"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_subtitle = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CaptionComponent
  L4_2 = "VideoPanel/VideoContainer/SubtitlePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.caption_component = L1_2
end
L0_1._on_bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_btn = L1_2
  L1_2 = L1_1.SafeFind
  L2_2 = A0_2.tab_btn_root
  L3_2 = "ClickArea"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_click_area = L1_2
end
L0_1._on_tab_btn_bind = L2_1
return L0_1
