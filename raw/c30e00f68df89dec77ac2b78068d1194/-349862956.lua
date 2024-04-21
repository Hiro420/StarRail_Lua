local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityResultInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.UIColorUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FightActivityResultInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FightActivityModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.FightActivityUtils
L3_1 = "UIText_ActivityFight_ChallengeRequirement"
function L4_1(A0_2)
  local L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_1
  L7_2 = A1_2
  L8_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_unfinish
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not A3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_finish_icon
  L4_2 = L4_2.transform
  L4_2 = L4_2.gameObject
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
  if A3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_finish
    L4_2(L5_2)
  end
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIColorUtils
  L1_2 = L1_2.GetColorWithAlpha
  L2_2 = "#dbc291"
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_finish_icon
  L2_2.color = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L2_2.color = L1_2
end
L0_1._setup_finish = L4_1
return L0_1
