local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueSelectBuffRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueSelectBuffRowPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueBuffGetDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Rogue/RogueBuffRewardDialog.prefab"
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
  L3_2 = L3_2.Button
  L4_2 = "Bg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/DescPanel/EffectContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_title_effect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Contents/DescPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueSelectBuffRowPanel
  L4_2 = G
  L4_2 = L4_2.RogueSelectBuffRowPanelBinder
  L5_2 = "Contents/BuffContainer/RogueTabBuff"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_buff = L1_2
end
L0_1._on_bind = L1_1
return L0_1
