local L0_1, L1_1, L2_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.QuestModule
L1_1 = G
L1_1 = L1_1.StaticClass
L2_1 = "QuestUtils"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = L0_1
    L3_3 = L2_3
    L2_3 = L2_3.TryGetQuestData
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = L0_1
    L4_3 = L3_3
    L3_3 = L3_3.TryGetQuestData
    L5_3 = A1_3
    L3_3 = L3_3(L4_3, L5_3)
    L4_3 = L1_1._get_status_value
    L5_3 = L2_3
    L4_3 = L4_3(L5_3)
    L5_3 = L1_1._get_status_value
    L6_3 = L3_3
    L5_3 = L5_3(L6_3)
    if L4_3 == L5_3 then
      L6_3 = A0_3 < A1_3
      return L6_3
    else
      L6_3 = L4_3 > L5_3
      return L6_3
    end
  end
  L1_2(L2_2, L3_2)
end
L1_1.sort_quest = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = L1_1._get_status_value
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    L3_3 = L1_1._get_status_value
    L4_3 = A1_3
    L3_3 = L3_3(L4_3)
    if L2_3 == L3_3 then
      L4_3 = A0_3.ID
      L5_3 = A1_3.ID
      L4_3 = L4_3 < L5_3
      return L4_3
    else
      L4_3 = L2_3 > L3_3
      return L4_3
    end
  end
  L1_2(L2_2, L3_2)
end
L1_1.sort_quest_datas = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = {}
  L4_2 = pairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.Status
    L10_2 = CS
    L10_2 = L10_2.BLHLCHNAJKK
    L10_2 = L10_2.FMLBEGJJHMJ
    if L9_2 == L10_2 then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L3_2
      L12_2 = L8_2
      L10_2(L11_2, L12_2)
    else
      L10_2 = CS
      L10_2 = L10_2.BLHLCHNAJKK
      L10_2 = L10_2.BMEAGBEFNFK
      if L9_2 == L10_2 then
        L10_2 = table
        L10_2 = L10_2.insert
        L11_2 = L2_2
        L12_2 = L8_2
        L10_2(L11_2, L12_2)
      else
        L10_2 = CS
        L10_2 = L10_2.BLHLCHNAJKK
        L10_2 = L10_2.CDJHHIHBNMN
        if L9_2 == L10_2 then
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L1_2
          L12_2 = L8_2
          L10_2(L11_2, L12_2)
        end
      end
    end
  end
  L4_2 = {}
  L5_2 = pairs
  L6_2 = L1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L4_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L5_2 = pairs
  L6_2 = L2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L4_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L5_2 = pairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L4_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  return L4_2
end
L1_1.sort_quest_datas_stabled = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L1_1._get_status_value
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L1_1._get_status_value
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if L3_2 ~= L4_2 then
    L5_2 = L3_2 > L4_2
    return L5_2
  end
  L5_2 = A2_2
  L6_2 = A0_2
  L7_2 = A1_2
  return L5_2(L6_2, L7_2)
end
L1_1.compare_quest_data_with_custom_comparer = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  if A0_2 == nil then
    L1_2 = 1
    return L1_2
  end
  L1_2 = A0_2.Status
  L2_2 = CS
  L2_2 = L2_2.BLHLCHNAJKK
  L2_2 = L2_2.FMLBEGJJHMJ
  if L1_2 == L2_2 then
    L2_2 = -2
    return L2_2
  else
    L2_2 = CS
    L2_2 = L2_2.BLHLCHNAJKK
    L2_2 = L2_2.BMEAGBEFNFK
    if L1_2 == L2_2 then
      L2_2 = 2
      return L2_2
    else
      L2_2 = CS
      L2_2 = L2_2.BLHLCHNAJKK
      L2_2 = L2_2.CDJHHIHBNMN
      if L1_2 == L2_2 then
        L2_2 = 3
        return L2_2
      end
    end
  end
  L2_2 = 0
  return L2_2
end
L1_1._get_status_value = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2.SafeSetTextID
  L4_2 = A1_2.DataRow
  L4_2 = L4_2.QuestTitle
  L5_2 = A1_2.FinishWayRow
  L5_2 = L5_2.ParamInt1
  L6_2 = A1_2.FinishWayRow
  L6_2 = L6_2.ParamInt2
  L7_2 = A1_2.FinishWayRow
  L7_2 = L7_2.ParamInt3
  L8_2 = A1_2.TotalProgress
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L1_1.setup_title = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.TextmapStatic
  L1_2 = L1_2.GetText
  L2_2 = A0_2.DataRow
  L2_2 = L2_2.QuestTitle
  L3_2 = A0_2.FinishWayRow
  L3_2 = L3_2.ParamInt1
  L4_2 = A0_2.FinishWayRow
  L4_2 = L4_2.ParamInt2
  L5_2 = A0_2.FinishWayRow
  L5_2 = L5_2.ParamInt3
  L6_2 = A0_2.TotalProgress
  return L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L1_1.get_title_text = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L1_1.get_quest_data
    L10_2 = L6_2
    L9_2, L10_2 = L9_2(L10_2)
    L7_2(L8_2, L9_2, L10_2)
  end
  return L1_2
end
L1_1.get_quest_datas_from_quest_ids = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.QuestDataExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 == nil then
      L3_2 = nil
      return L3_2
    end
    L3_2 = {}
    L1_2 = L3_2
    L1_2.ID = A0_2
    L1_2.DataRow = L2_2
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.FinishWayExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L1_2.DataRow
    L4_2 = L4_2.FinishWayID
    L3_2 = L3_2(L4_2)
    L1_2.FinishWayRow = L3_2
    L3_2 = L1_2.DataRow
    L3_2 = L3_2.RewardID
    L1_2.RewardID = L3_2
    L1_2.Progress = 0
    L3_2 = L1_2.FinishWayRow
    L3_2 = L3_2.Progress
    L1_2.TotalProgress = L3_2
    L3_2 = CS
    L3_2 = L3_2.BLHLCHNAJKK
    L3_2 = L3_2.BILIHDBLNBB
    L1_2.Status = L3_2
  end
  return L1_2
end
L1_1.get_quest_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  if A0_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.Status
  L2_2 = CS
  L2_2 = L2_2.BLHLCHNAJKK
  L2_2 = L2_2.CDJHHIHBNMN
  L1_2 = L1_2 == L2_2
  return L1_2
end
L1_1.is_quest_finished = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  if A0_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.Status
  L2_2 = CS
  L2_2 = L2_2.BLHLCHNAJKK
  L2_2 = L2_2.CDJHHIHBNMN
  L1_2 = L1_2 == L2_2
  return L1_2
end
L1_1.is_quest_reward_can_take = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  if A0_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.Status
  L2_2 = CS
  L2_2 = L2_2.BLHLCHNAJKK
  L2_2 = L2_2.FMLBEGJJHMJ
  L1_2 = L1_2 == L2_2
  return L1_2
end
L1_1.is_quest_reward_taken = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  if A0_2 ~= nil then
    L1_2 = A0_2.RewardID
    if L1_2 ~= 0 then
      goto lbl_8
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_8::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RewardExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.RewardID
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 ~= nil and L2_2
  return L2_2
end
L1_1.is_quest_reward_special = L2_1
L2_1 = G
L2_1.QuestUtils = L1_1
return L1_1
