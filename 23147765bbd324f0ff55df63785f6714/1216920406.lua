local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MiniGamePinballPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Maze/MiniGame/MiniGamePinBallPanel.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FloatPanel/PopupMenuContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.popup_menu_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MiniGameHintPanel/ReadyPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.launch_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "MiniGameHintPanel/ReadyPanel/BtnPanel/BtnStart"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.launch_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MiniGameHintPanel/HintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.ready_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "FunctionPanel/BtnReset/Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.reset_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "ObjectPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.remain_count_text = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "MiniGameHintPanel/HintPanel/HintText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.hint_text = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FloatPanel/CommonVirtualCursor"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.virtual_cursor_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FloatPanel/PlayerPosCursor"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.player_pos_cursor = L1_2
end
L0_1._on_bind = L1_1
return L0_1
