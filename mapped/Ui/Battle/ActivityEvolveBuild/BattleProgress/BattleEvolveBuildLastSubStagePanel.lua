local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.BattleProgress.BattleEvolveBuildLastSubStagePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildLastSubStagePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1
L2_1 = 2
L3_1 = 3
L4_1 = 4
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_state
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1.setup_finish = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_state
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L0_1.setup_action = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_state
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L0_1.setup_pre_action = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_state
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
end
L0_1.setup_not_start = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_finish
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_finish
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_finish
  L2_2 = L1_2
  L1_2 = L1_2.Sample
  L1_2(L2_2)
end
L0_1.play_action_anim = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  L1_2 = L1_2.position
  L2_2 = 0
  return L1_2, L2_2
end
L0_1.get_root_world_pos = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_finish
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_1
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_pre_action
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L3_1
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_not_start
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L4_1
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_state = L5_1
return L0_1
