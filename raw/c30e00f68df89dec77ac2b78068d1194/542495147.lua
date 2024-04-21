local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.InfoTipsCounterDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "InfoTipsCounterDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.FightActivityUtils
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = G
  L3_2 = L3_2.ImportCsToLua
  L3_2 = L3_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._create_binder
  L5_2 = G
  L5_2 = L5_2.InfoTipsCounterDialogBinder
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._binder = L3_2
  A0_2._round_limit = A1_2
  A0_2._reward_wave = A2_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2.exit
  L4_2 = L1_1.GetInfoTipsTime
  L4_2, L5_2 = L4_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._count_down_timer = L1_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityFight_ChallengeRequirement"
  L4_2 = A0_2._round_limit
  L5_2 = A0_2._reward_wave
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_view = L2_1
return L0_1
