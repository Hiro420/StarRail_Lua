local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendTagPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerCommentPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendResultDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/DrinkMaker/DrinkMakerPerformanceDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
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
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BtnSkip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_skip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root/BtnSkip/SkipBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_skip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/PanelContent/RightPanel/Content/TitlePanel/DrinkName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_drink_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/RightPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_drink_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/PanelContent/RightPanel/Content/DescPanel/ScrollView/Viewport/Content/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_drink_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Root/PanelContent/RightPanel/Content/TagPanel"
  L6_2 = G
  L6_2 = L6_2.DrinkMakerBartendTagPanel
  L7_2 = G
  L7_2 = L7_2.DrinkMakerBartendTagPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.panel_tag_list = L1_2
  L1_2 = "Root/PanelContent/CommentsPanel/Root/CommentItem"
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/PanelContent/CommentsPanel/Root"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.node_comments_root = L2_2
  L2_2 = {}
  A0_2.list_comments = L2_2
  L2_2 = 1
  L3_2 = 3
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._create_panel
    L8_2 = G
    L8_2 = L8_2.DrinkMakerCommentPanel
    L9_2 = G
    L9_2 = L9_2.DrinkMakerCommentPanelBinder
    L10_2 = L1_2
    L11_2 = tostring
    L12_2 = L5_2
    L11_2 = L11_2(L12_2)
    L10_2 = L10_2 .. L11_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.list_comments
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AnimatorButton
  L5_2 = "Bg/BtnEmptyClose"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.btn_empty_close = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MonoTimer
  L5_2 = ""
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.mono_timer = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Bg/BtnEmptyClose/HintPanel"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.node_hint_panel = L2_2
end
L0_1._on_bind = L1_1
return L0_1
