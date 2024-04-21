local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.RogueNousNewMainStoryPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.UITextUtils"
L0_1(L1_1)
L0_1 = "UIText_RogueNous_Story_SubTitle"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueNousNewMainStoryPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueNousNewMainStoryPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._difficulty = A1_2
  A0_2._layer_id = A2_2
  A0_2._main_story_id = A3_2
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L1_2(L2_2, L3_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_layer_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_main_story
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.TextmapStatic
  L1_2 = L1_2.GetText
  L2_2 = G
  L2_2 = L2_2.UITextUtils
  L2_2 = L2_2.GetRomanNumberTextID
  L3_2 = A0_2._difficulty
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueDLCLayerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._layer_id
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = L2_2.LayerNumID
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = L2_2.LayerNameID
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_sub_title
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L0_1
  L8_2 = L1_2
  L9_2 = L3_2
  L10_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L1_1._setup_layer_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueNousMainStoryExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._main_story_id
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_story_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.MainStoryName
  L2_2(L3_2, L4_2)
end
L1_1._setup_main_story = L2_1
return L1_1
