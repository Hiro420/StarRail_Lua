local L0_1, L1_1
L0_1 = require
L1_1 = "Logic.MazeModule.MazeAvatarData"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.DataStruct.Dictionary"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.MazeModule.MazeData"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeMainData"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2.CurSeriesID = 0
  L1_2 = {}
  A0_2.FinishedPlaneList = L1_2
  L1_2 = {}
  A0_2._WaitPlaneList = L1_2
  L1_2 = {}
  A0_2.ChosenAbilityList = L1_2
  L1_2 = {}
  A0_2.CandidateAbilityList = L1_2
  L1_2 = {}
  A0_2._MazeDataList = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.Dictionary
  L1_2 = L1_2(L2_2)
  A0_2._AvatarDict = L1_2
  L1_2 = {}
  A0_2._TakenRewardList = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2._MazeDataList
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.Row
    L7_2 = L7_2.ID
    if L7_2 == A1_2 then
      return L6_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.FindMazeData = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.cur_series_id
  A0_2.CurSeriesID = L2_2
  L2_2 = {}
  A0_2.FinishedPlaneList = L2_2
  L2_2 = pairs
  L3_2 = A1_2.finished_plane_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2.FinishedPlaneList
    L7_2[L5_2] = L6_2
  end
  L2_2 = {}
  A0_2._WaitPlaneList = L2_2
  L2_2 = pairs
  L3_2 = A1_2.wait_plane_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._WaitPlaneList
    L7_2[L5_2] = L6_2
  end
  L2_2 = {}
  A0_2.ChosenAbilityList = L2_2
  L2_2 = pairs
  L3_2 = A1_2.chosen_ability_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2.ChosenAbilityList
    L7_2[L5_2] = L6_2
  end
  L2_2 = {}
  A0_2.CandidateAbilityList = L2_2
  L2_2 = pairs
  L3_2 = A1_2.candidate_ability_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2.CandidateAbilityList
    L7_2[L5_2] = L6_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._UpdateMazeList
  L4_2 = A1_2.maze_list
  L2_2(L3_2, L4_2)
end
L0_1.UpdateByGetMazeScRsp = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == nil then
    return
  end
  L2_2 = {}
  A0_2._MazeDataList = L2_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = G
    L7_2 = L7_2.new
    L8_2 = G
    L8_2 = L8_2.MazeData
    L9_2 = L6_2.id
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L6_2.max_finished_difficulty
    L7_2.MaxFinishedDifficulty = L8_2
    L8_2 = A0_2._MazeDataList
    L9_2 = A0_2._MazeDataList
    L9_2 = #L9_2
    L9_2 = L9_2 + 1
    L8_2[L9_2] = L7_2
  end
end
L0_1._UpdateMazeList = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A1_2.cur_series_id
  A0_2.CurSeriesID = L2_2
  L2_2 = A0_2._AvatarDict
  L3_2 = L2_2
  L2_2 = L2_2.Clear
  L2_2(L3_2)
  L2_2 = pairs
  L3_2 = A1_2.avatar_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._AvatarDict
    L8_2 = L7_2
    L7_2 = L7_2.Value
    L9_2 = L6_2.avatar_id
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 == nil then
      L8_2 = G
      L8_2 = L8_2.new
      L9_2 = G
      L9_2 = L9_2.MazeAvatarData
      L8_2 = L8_2(L9_2)
      L7_2 = L8_2
      L8_2 = A0_2._AvatarDict
      L9_2 = L8_2
      L8_2 = L8_2.Add
      L10_2 = L6_2.avatar_id
      L11_2 = L7_2
      L8_2(L9_2, L10_2, L11_2)
    end
    L9_2 = L7_2
    L8_2 = L7_2.Update
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = {}
  A0_2._MazeDataList = L2_2
  L2_2 = pairs
  L3_2 = A1_2.maze_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = G
    L7_2 = L7_2.new
    L8_2 = G
    L8_2 = L8_2.MazeData
    L7_2 = L7_2(L8_2)
    L8_2 = L6_2.max_finished_difficulty
    L7_2.MaxFinishedDifficulty = L8_2
    L8_2 = A0_2._MazeDataList
    L9_2 = A0_2._MazeDataList
    L9_2 = #L9_2
    L9_2 = L9_2 + 1
    L8_2[L9_2] = L7_2
  end
  L2_2 = A1_2.finished_plane_list
  A0_2.FinishedPlaneList = L2_2
  L2_2 = A1_2.wait_plane_list
  A0_2._WaitPlaneList = L2_2
  L2_2 = A1_2.taken_reward_list
  A0_2._TakenRewardList = L2_2
  L2_2 = A1_2.chosen_ability_list
  A0_2.ChosenAbilityList = L2_2
  L2_2 = A1_2.candidate_ability_list
  A0_2.CandidateAbilityList = L2_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormat
  L3_2 = "Pang: tostring(#self.ChosenAbilityList) = "
  L4_2 = tostring
  L5_2 = A0_2.ChosenAbilityList
  L5_2 = #L5_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormat
  L3_2 = "Pang: tostring(#self.CandidateAbilityList) = "
  L4_2 = tostring
  L5_2 = A0_2.CandidateAbilityList
  L5_2 = #L5_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
end
L0_1.Update = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._AvatarDict
  L3_2 = L2_2
  L2_2 = L2_2.Value
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.GetMazeAvatar = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._WaitPlaneList
  if L1_2 ~= nil then
    L1_2 = A0_2._WaitPlaneList
    L1_2 = L1_2[1]
    if L1_2 ~= nil then
      goto lbl_15
    end
  end
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogErrorFormat
  L2_2 = "self._WaitPlaneList == nil or self._WaitPlaneList[1] == nil"
  L1_2(L2_2)
  L1_2 = 1
  do return L1_2 end
  ::lbl_15::
  L1_2 = A0_2._WaitPlaneList
  L1_2 = L1_2[1]
  return L1_2
end
L0_1.GetNowPlaneID = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._MazeList
  return L1_2
end
L0_1.GetMazeListData = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.UpdateUintDataList
  L4_2 = A0_2.ChosenAbilityList
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.UpdateChosenAbilityList = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A2_2 == nil then
    return
  end
  L3_2 = {}
  A1_2 = L3_2
  L3_2 = ipairs
  L4_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    A1_2[L6_2] = L7_2
  end
end
L0_1.UpdateUintDataList = L1_1
return L0_1
