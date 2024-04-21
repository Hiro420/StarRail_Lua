local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Challenge.ChallengeSymbolIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.ChallengeSymbolIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeInfoRowPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Abyss/Widget/AbyssCrystalItem.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_index = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/ButtonPanel/ButtonUp"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.button = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StarPanel"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2 = L1_2 == nil
  if L1_2 then
    L2_2 = {}
    A0_2.panels_progress_stars = L2_2
  else
    L2_2 = {}
    L4_2 = A0_2
    L3_2 = A0_2._create_panel
    L5_2 = G
    L5_2 = L5_2.ChallengeSymbolIconPanel
    L6_2 = G
    L6_2 = L6_2.ChallengeSymbolIconPanelBinder
    L7_2 = "Root/StarPanel/Star1"
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L2_2[1] = L3_2
    L4_2 = A0_2
    L3_2 = A0_2._create_panel
    L5_2 = G
    L5_2 = L5_2.ChallengeSymbolIconPanel
    L6_2 = G
    L6_2 = L6_2.ChallengeSymbolIconPanelBinder
    L7_2 = "Root/StarPanel/Star2"
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L2_2[2] = L3_2
    L4_2 = A0_2
    L3_2 = A0_2._create_panel
    L5_2 = G
    L5_2 = L5_2.ChallengeSymbolIconPanel
    L6_2 = G
    L6_2 = L6_2.ChallengeSymbolIconPanelBinder
    L7_2 = "Root/StarPanel/Star3"
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L2_2[3] = L3_2
    A0_2.panels_progress_stars = L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.RectTransform
  L5_2 = ""
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.rect_transform_root = L2_2
end
L0_1._on_bind = L1_1
return L0_1
