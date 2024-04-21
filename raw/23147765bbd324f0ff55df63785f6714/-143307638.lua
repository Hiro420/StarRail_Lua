local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherChallengeRankTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
function L2_1(A0_2, A1_2)
  A0_2._row = A1_2
end
L0_1.init_data = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._row
  return L1_2
end
L0_1.get_rank_row = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._challenge_data_list
  if L1_2 == nil then
    L1_2 = {}
    A0_2._challenge_data_list = L1_2
    L1_2 = L1_1.ChallengeData
    L1_2 = L1_2.ChallengeDataItems
    if L1_2 ~= nil then
      L2_2 = A0_2._row
      L2_2 = L2_2.ChallengeRank
      L3_2 = 0
      L4_2 = L1_2.Count
      L4_2 = L4_2 - 1
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = L1_2[L6_2]
        L8_2 = L7_2.RankID
        if L8_2 == L2_2 then
          L8_2 = L7_2.IsShowInNPCChallengePage
          if L8_2 then
            L8_2 = A0_2._challenge_data_list
            L9_2 = A0_2._challenge_data_list
            L9_2 = #L9_2
            L9_2 = L9_2 + 1
            L8_2[L9_2] = L7_2
          end
        end
      end
    end
  end
  L1_2 = A0_2._challenge_data_list
  return L1_2
end
L0_1.get_challenge_data_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._row
  L1_2 = L1_1.ChallengeData
  L2_2 = L1_2
  L1_2 = L1_2.IsRankUnlock
  L3_2 = A0_2._row
  L1_2 = L1_2 ~= nil and L1_2
  return L1_2
end
L0_1.is_unlocked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._row
  L1_2 = L1_1.ChallengeData
  L2_2 = L1_2
  L1_2 = L1_2.IsRankNew
  L3_2 = A0_2._row
  L1_2 = L1_2 ~= nil and L1_2
  return L1_2
end
L0_1.is_new = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = L1_1.IsAllMissionClear
  if L1_2 then
    L1_2 = "UIText_AetherDivide_Challenge_NeedFinishFormerChallenge"
    return L1_2
  end
  L1_2 = A0_2._row
  L1_2 = L1_2.UnlockText
  return L1_2
end
L0_1.get_unlock_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.ChallengeData
  L2_2 = L1_2
  L1_2 = L1_2.GetRankName
  L3_2 = A0_2._row
  L3_2 = L3_2.ChallengeRank
  return L1_2(L2_2, L3_2)
end
L0_1.get_title = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.get_challenge_data_list
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.IsFinished
    if not L7_2 then
      L7_2 = true
      return L7_2
    end
    L7_2 = L6_2.IsRewardTaken
    if not L7_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.has_unfinished_or_reward_challenge = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_loaded
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_status
    L1_2(L2_2)
  end
end
L0_1.refresh_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._row
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.icon_normal
    L4_2 = A0_2._row
    L4_2 = L4_2.IconPath
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L4_2 = A0_2
    L3_2 = A0_2.get_title
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2
    L1_2 = A0_2.is_new
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.bind_reddot
      L3_2 = "AetherDivideChallengeRankNew"
      L4_2 = A0_2._row
      L4_2 = L4_2.ChallengeRank
      L5_2 = A0_2
      L6_2 = A0_2._binder
      L6_2 = L6_2.node_reddot
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    else
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.bind_reddot
      L3_2 = "AetherDivideChallengeReward"
      L4_2 = A0_2._row
      L4_2 = L4_2.ChallengeRank
      L5_2 = A0_2
      L6_2 = A0_2._binder
      L6_2 = L6_2.node_reddot
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_status
  L1_2(L2_2)
end
L0_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_unlocked
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.get_challenge_data_list
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.IsFinished
    if not L7_2 then
      L7_2 = false
      return L7_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1._is_all_finished = L2_1
return L0_1
