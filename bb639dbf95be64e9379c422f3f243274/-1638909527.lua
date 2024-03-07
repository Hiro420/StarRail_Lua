local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherBattle.AetherBattleSpiritUltraSkillCutInDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.UltraSkillCutInAutoClosePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.UltraSkillCutInAutoClosePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherBattle.AetherBattleSpiritCutInInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherBattle.AetherBattleSpiritCutInInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherBattleSpiritUltraSkillCutInDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 0.83
L2_1 = 1.4
L3_1 = 0.01
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AetherBattleSpiritUltraSkillCutInDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._spirit_row = A1_2
  A0_2._skill_row = A2_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UltraSkillCutInAutoClosePanel
  L4_2 = G
  L4_2 = L4_2.UltraSkillCutInAutoClosePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._auto_close_panel = L1_2
  L1_2 = A0_2._auto_close_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_exit_callback
  L3_2 = A0_2._on_exit
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_prefab
  L3_2 = A0_2._spirit_row
  L3_2 = L3_2.UltraSkillCutInPrefabPath
  L4_2 = A0_2._on_cutin_load_finish
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_cutin
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.AetherBattleSpiritCutInInfoPanel
  L5_2 = G
  L5_2 = L5_2.AetherBattleSpiritCutInInfoPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._cutin_panel = L2_2
  L2_2 = A0_2._cutin_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A1_2.transform
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._cutin_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._spirit_row
  L5_2 = A0_2._skill_row
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_timer
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_cutin_load_finish = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L2_1
  L3_2 = 0
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIGameEntityUtils
  L4_2 = L4_2.GetBattleTimeScale
  L4_2 = L4_2()
  A0_2._battle_time_scale = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIGameEntityUtils
  L4_2 = L4_2.IsAutoBattle
  L4_2 = L4_2()
  if L4_2 then
    L3_2 = L3_1
    L2_2 = L1_1
  end
  L4_2 = A0_2._auto_close_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_timer
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._setup_timer = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L4_1
return L0_1
