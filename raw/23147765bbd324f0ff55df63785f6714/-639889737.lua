local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameReSha.MiniGameReShaEasterSFXButtonPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameReSha.MiniGameReShaEasterSFXButtonPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ButtonMutex"
L0_1(L1_1)
L0_1 = require
L1_1 = "Generate.MiniGameReshaGuidePlanetIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MiniGameReShaAssistantImagePanelBinder"
L3_1 = G
L3_1 = L3_1.UIBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._create_panel_with_root_trans
  L4_2 = G
  L4_2 = L4_2.MiniGameReShaEasterSFXButtonPanel
  L5_2 = G
  L5_2 = L5_2.MiniGameReShaEasterSFXButtonPanelBinder
  L6_2 = A0_2.panel_btn_sfx_root_1
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._create_panel_with_root_trans
  L5_2 = G
  L5_2 = L5_2.MiniGameReShaEasterSFXButtonPanel
  L6_2 = G
  L6_2 = L6_2.MiniGameReShaEasterSFXButtonPanelBinder
  L7_2 = A0_2.panel_btn_sfx_root_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._create_panel_with_root_trans
  L6_2 = G
  L6_2 = L6_2.MiniGameReShaEasterSFXButtonPanel
  L7_2 = G
  L7_2 = L7_2.MiniGameReShaEasterSFXButtonPanelBinder
  L8_2 = A0_2.panel_btn_sfx_root_3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._create_panel_with_root_trans
  L7_2 = G
  L7_2 = L7_2.MiniGameReShaEasterSFXButtonPanel
  L8_2 = G
  L8_2 = L8_2.MiniGameReShaEasterSFXButtonPanelBinder
  L9_2 = A0_2.panel_btn_sfx_root_4
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  A0_2.panel_btn_sfx_arr = L1_2
end
L1_1._on_bind = L2_1
return L1_1
