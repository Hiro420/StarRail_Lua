local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Battle.TreasureDungeon.TreasureDungeonBEUltraSkillCutInDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.UltraSkillCutInAutoClosePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.UltraSkillCutInAutoClosePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonBEUltraSkillCutInDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 0.83
L2_1 = 1.16
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
  L3_2 = L3_2.TreasureDungeonBEUltraSkillCutInDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._skill_row = A1_2
  L3_2 = A0_2._binder
  L4_2 = L3_2
  L3_2 = L3_2.set_custom_path
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_timer
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_skill_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._skill_row
  L3_2 = L3_2.SkillName
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L2_1
  L2_2 = 0
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIGameEntityUtils
  L3_2 = L3_2.GetBattleTimeScale
  L3_2 = L3_2()
  A0_2._battle_time_scale = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIGameEntityUtils
  L3_2 = L3_2.IsAutoBattle
  L3_2 = L3_2()
  if L3_2 then
    L2_2 = L3_1
    L1_2 = L1_1
  end
  L3_2 = A0_2._auto_close_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_timer
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
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
