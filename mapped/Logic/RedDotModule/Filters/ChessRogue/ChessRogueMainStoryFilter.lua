local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueMainStoryFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._native_filter = nil
  A0_2._is_activity_unlocked = false
  A0_2._is_guide_mission_finished = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native_filter
  if L1_2 ~= nil then
    L1_2 = A0_2._native_filter
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
  end
  A0_2._native_filter = nil
end
L0_1.dtor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "ChessRogueMainStoryReward"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_init_native_filter
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_unlock_cond
  L1_2(L2_2)
  L1_2 = A0_2._is_activity_unlocked
  if L1_2 then
    L1_2 = A0_2._is_guide_mission_finished
    if L1_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = A0_2
  L1_2 = A0_2._refresh_main_story_new
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_main_story_reward
  L1_2(L2_2)
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
end
L0_1._refresh_unlock_cond = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._native_filter
  L2_2 = L1_2
  L1_2 = L1_2.UpdateMainStoryReward
  L1_2(L2_2)
  L1_2 = A0_2._native_filter
  L1_2 = L1_2.HasAnyMainStoryRewardAvailable
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "ChessRogueMainStoryReward"
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_main_story_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._native_filter
  L2_2 = L1_2
  L1_2 = L1_2.UpdateNewMainStory
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.NewMainStoryIDs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "ChessRogueMainStoryNew"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._refresh_main_story_new = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native_filter
  if L1_2 ~= nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ChessRogueRedDotFilter
  L1_2 = L1_2()
  A0_2._native_filter = L1_2
  L1_2 = A0_2._native_filter
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
end
L0_1._try_init_native_filter = L1_1
return L0_1
