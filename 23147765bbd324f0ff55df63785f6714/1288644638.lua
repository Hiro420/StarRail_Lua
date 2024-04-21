local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleAcheronUltraSpInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleAcheronSpNodePanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAcheronUltraSpInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SPInfoEff_Acheron_Max"
L2_1 = "SPInfoEff_Acheron_Normal"
function L3_1(A0_2)
  local L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._node_panels = L1_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.sp_nodes
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.BattleAcheronSpNodePanel
    L8_2 = G
    L8_2 = L8_2.BattleAcheronSpNodePanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.sp_nodes
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._node_panels
    L6_2[L4_2] = L5_2
  end
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = A1_2.CurrentSP
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._node_panels
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.setup_state
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.AcheronPowerNodeState
    L8_2 = L8_2.Active
    L6_2(L7_2, L8_2)
  end
  L2_2 = A1_2.CurrentSP
  L2_2 = L2_2 + 1
  L3_2 = A1_2.MaxSP
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._node_panels
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.setup_state
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.AcheronPowerNodeState
    L8_2 = L8_2.UnActive
    L6_2(L7_2, L8_2)
  end
  L2_2 = A1_2.CurrentSP
  L3_2 = A1_2.MaxSP
  if L2_2 == L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromEnd
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_root
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromEnd
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_root
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_view = L3_1
return L0_1
