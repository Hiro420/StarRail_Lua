local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Mission.ChapterDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChapterDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.MissionChapterConfigExcelTable
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = A1_2.ChapterTypeColor
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.image_color_bg
  L3_2 = L3_2.color
  L3_2 = L3_2.a
  L2_2.a = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.image_color_bg
  L3_2.color = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_stage
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextColor
  L5_2 = A1_2.ChapterTypeColor
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.Row
  L3_2 = L3_2.ChapterID
  L4_2 = L1_1.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_stage
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.StageName
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_title
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.ChapterName
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.ChapterDesc
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.image_chapter_icon
  L8_2 = L4_2.ChapterIconPath
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.image_chapter_figure
  L8_2 = L4_2.ChapterFigureIconPath
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.setup_view = L2_1
return L0_1
