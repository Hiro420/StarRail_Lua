local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.Components.RogueNousSelectLevelExtendPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousHardTipsToastDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Rogue/DLC/RogueNous/RogueNousHardTipsToastDialog.prefab"
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
  L4_2 = "BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bg_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueNousSelectLevelExtendPanel
  L4_2 = G
  L4_2 = L4_2.RogueNousSelectLevelExtendPanelBinder
  L5_2 = "BattlePanel/ExtendPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_extend_difficulty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "KeyMapBottomHintPanel/Text"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hint_pc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "KeyMapBottomHintPanel/KeyMapHIntInfoSwitch"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hint_gamepad_switch = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "KeyMapBottomHintPanel/KeyMapHIntInfoClose"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hint_gamepad_close = L1_2
end
L0_1._on_bind = L1_1
return L0_1
