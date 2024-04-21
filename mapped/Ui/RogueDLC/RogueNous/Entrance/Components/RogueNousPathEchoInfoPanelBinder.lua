local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueEntranceInfoItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousPathEchoInfoPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.type_tag
  if L1_2 == "Title" then
    L2_2 = A0_2
    L1_2 = A0_2._safe_get_cmpt
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.UI
    L3_2 = L3_2.Text
    L4_2 = "Text"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2.text_title = L1_2
  else
    L1_2 = A0_2.type_tag
    if L1_2 == "Desc" then
      L2_2 = A0_2
      L1_2 = A0_2._safe_get_cmpt
      L3_2 = CS
      L3_2 = L3_2.UnityEngine
      L3_2 = L3_2.UI
      L3_2 = L3_2.Text
      L4_2 = "Desc"
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      A0_2.text_desc = L1_2
    else
      L1_2 = A0_2.type_tag
      if L1_2 == "Tips" then
        L2_2 = A0_2
        L1_2 = A0_2._safe_get_cmpt
        L3_2 = CS
        L3_2 = L3_2.UnityEngine
        L3_2 = L3_2.UI
        L3_2 = L3_2.Text
        L4_2 = "RecommendTip/TextPanel/DescText"
        L1_2 = L1_2(L2_2, L3_2, L4_2)
        A0_2.text_tips = L1_2
      else
        L1_2 = A0_2.type_tag
        if L1_2 == "Buff" then
          L2_2 = A0_2
          L1_2 = A0_2._create_panel
          L3_2 = G
          L3_2 = L3_2.ChessRogueEntranceInfoItem
          L4_2 = G
          L4_2 = L4_2.ChessRogueEntranceInfoItemBinder
          L5_2 = ""
          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
          A0_2.panel_entrance_info = L1_2
        end
      end
    end
  end
end
L0_1._on_bind = L1_1
return L0_1
