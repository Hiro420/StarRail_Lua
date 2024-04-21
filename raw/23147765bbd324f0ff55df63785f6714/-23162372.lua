local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameReSha.MiniGameReShaConditionListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameReSha.MiniGameReShaConditionListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.SceneObjClickHintMgrPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.SceneObjClickHintMgrPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.VirtualCursor"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.VirtualCursorBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Generate.MiniGameReShaPanelIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MiniGameReShaPanelBinder"
L3_1 = G
L3_1 = L3_1.UIBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Maze/MiniGame/MiniGameReShaPanel.prefab"
  return L1_2
end
L1_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "[%s] auto bind fail"
    L3_2 = A0_2.__name
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.MiniGameReShaConditionListPanel
  L4_2 = G
  L4_2 = L4_2.MiniGameReShaConditionListPanelBinder
  L5_2 = A0_2.panel_condition_list_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_condition_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.SceneObjClickHintMgrPanel
  L4_2 = G
  L4_2 = L4_2.SceneObjClickHintMgrPanelBinder
  L5_2 = A0_2.panel_click_hint_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_click_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.VirtualCursor
  L4_2 = G
  L4_2 = L4_2.VirtualCursorBinder
  L5_2 = A0_2.panel_cursor_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_cursor = L1_2
end
L1_1._on_bind = L2_1
return L1_1
