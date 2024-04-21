local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueRewardFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._reward_data = nil
  A0_2._is_activity_unlocked = false
  A0_2._is_guide_mission_finished = false
  A0_2._is_propagation_aeon_unlocked = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "ChessRogueLongTermReward"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_unlock_cond
  L1_2(L2_2)
  L1_2 = A0_2._is_activity_unlocked
  if L1_2 then
    L1_2 = A0_2._is_guide_mission_finished
    if L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = A0_2
  L1_2 = A0_2._try_get_reward_data
  L1_2(L2_2)
  L1_2 = A0_2._reward_data
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_long_term_reward
    L1_2(L2_2)
  end
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_activity_unlocked
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ChessRogueUtils
    L1_2 = L1_2.IsActivityUnlocked
    L1_2 = L1_2()
  end
  A0_2._is_activity_unlocked = L1_2
  L1_2 = A0_2._is_guide_mission_finished
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ChessRogueUtils
    L1_2 = L1_2.IsGuideMissionFinished
    L1_2 = L1_2()
  end
  A0_2._is_guide_mission_finished = L1_2
  L1_2 = A0_2._is_propagation_aeon_unlocked
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ChessRogueUtils
    L1_2 = L1_2.IsPropagationAeonUnlocked
    L1_2 = L1_2()
  end
  A0_2._is_propagation_aeon_unlocked = L1_2
end
L0_1._refresh_unlock_cond = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_propagation_aeon_unlocked
  if not L1_2 then
    return
  end
  L1_2 = A0_2._reward_data
  L2_2 = L1_2
  L1_2 = L1_2.IsAnyLongTermRewardAvailable
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "ChessRogueLongTermReward"
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_long_term_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._reward_data
  if L1_2 ~= nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L2_2 = L1_2.ChessRogueRewardData
  A0_2._reward_data = L2_2
end
L0_1._try_get_reward_data = L1_1
return L0_1
