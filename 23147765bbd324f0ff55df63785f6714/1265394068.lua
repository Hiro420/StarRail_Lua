local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.ChallengeCumulativeRewardNodePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.ChallengeCumulativeRewardNodePanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ChallengeModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ScheduleModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ChallengeCumulativeRewardsBarPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._reward_node_panels = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_star_num_info
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_progress
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_reward_phase_info
  L5_2 = A1_2
  L4_2 = A1_2.GetCumulativeRewardInfos
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2.TotalStarCount
  L2_2(L3_2, L4_2, L5_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_current_star_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2.CurrentStarCount
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_total_star_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2.TotalStarCount
  L2_2(L3_2, L4_2)
end
L2_1._setup_star_num_info = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.progress
  L3_2 = A1_2.CurrentStarCount
  L4_2 = A1_2.TotalStarCount
  L3_2 = L3_2 / L4_2
  L2_2.fillAmount = L3_2
end
L2_1._setup_progress = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = 0
  L4_2 = A1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = A0_2
    L7_2 = A0_2._setup_one_reward_phase
    L9_2 = A1_2[L6_2]
    L9_2 = L9_2.StarCount
    L10_2 = A2_2
    L11_2 = L6_2 + 1
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  L3_2 = A1_2.Count
  L3_2 = L3_2 + 1
  L4_2 = A0_2._reward_node_panels
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._reward_node_panels
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.safe_set_active
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
end
L2_1._setup_reward_phase_info = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2 / A2_2
  L6_2 = A0_2
  L5_2 = A0_2._get_reward_node_panel
  L7_2 = A3_2
  L8_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.setup_view
  L8_2 = A1_2
  L6_2(L7_2, L8_2)
end
L2_1._setup_one_reward_phase = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._reward_node_panels
  L3_2 = #L3_2
  if A1_2 <= L3_2 then
    L3_2 = A0_2._reward_node_panels
    L3_2 = L3_2[A1_2]
    L5_2 = L3_2
    L4_2 = L3_2.safe_set_active
    L6_2 = true
    L4_2(L5_2, L6_2)
    L5_2 = L3_2
    L4_2 = L3_2.setup_anchor
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._reward_node_panels
    L4_2 = L4_2[A1_2]
    return L4_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.instantiate_object
  L5_2 = A0_2._binder
  L5_2 = L5_2.reward_phase_meta
  L5_2 = L5_2.Prefab
  L6_2 = A0_2._binder
  L6_2 = L6_2.recttransform_reward_phase
  L6_2 = L6_2.transform
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.create_panel
  L6_2 = G
  L6_2 = L6_2.ChallengeCumulativeRewardNodePanel
  L7_2 = G
  L7_2 = L7_2.ChallengeCumulativeRewardNodePanelBinder
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = A0_2._reward_node_panels
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.setup_anchor
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  return L4_2
end
L2_1._get_reward_node_panel = L3_1
return L2_1
