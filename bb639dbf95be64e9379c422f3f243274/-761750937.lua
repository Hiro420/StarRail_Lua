local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "JigsawPuzzleMainPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Ui.Component.VirtualCursor"
L1_1(L2_1)
L1_1 = require
L2_1 = "Ui.Component.VirtualCursorBinder"
L1_1(L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Puzzle/PuzzleMagicalMainPage.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/RightPanelBlurRoot/RightPanel/EmptyPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/RightPanelBlurRoot/RightPanel/PuzzleView/ScrollView"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_loop_grid_view = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/TipsPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_rotation_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopGridView
  L4_2 = "Root/PanelContent/RightPanelBlurRoot/RightPanel/PuzzleView/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.jigsaw_item_view = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/PanelContent/RightPanelBlurRoot/BtnReset"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_reset = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose/Btn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "Root/PanelContent/RightPanelBlurRoot"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_transform_depot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "Root/PanelContent/RightPanelBlurRoot/FrameBg/Bound"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_transform_bound = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "Root/PanelContent/RightPanelBlurRoot/RightPanel/PuzzleView/ScrollView/Viewport/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_transform_content = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Canvas
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root/PanelContent/TipsPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_rotation_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/PanelContent/TipsPanel/Root/TextPanel/TxtTips"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_gamepad_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.JigsawBgEventTriggerListener
  L4_2 = "Bg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.bg_event_trigger = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Root/PanelContent/RightPanelBlurRoot/RightPanel/PuzzleView/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.VirtualCursor
  L4_2 = G
  L4_2 = L4_2.VirtualCursorBinder
  L5_2 = "Root/VirtualPanel/CommonVirtualCursor"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.virtual_cursor = L1_2
end
L0_1._on_bind = L1_1
return L0_1
