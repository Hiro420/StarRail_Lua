local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Challenge.ChallengeTeamItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeTeamItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TeamModule
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._id = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TeamModule
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentTeam
  L2_2 = L2_2(L3_2)
  A0_2._team = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_condition
  L4_2 = A0_2._id
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    A0_2._id = A1_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TeamModule
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentTeam
  L2_2 = L2_2(L3_2)
  A0_2._team = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_condition
  L4_2 = A0_2._id
  L2_2(L3_2, L4_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._team
  if L1_2 ~= nil then
    L1_2 = A0_2._id
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  L1_2 = true
  do return L1_2 end
  ::lbl_9::
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.CheckTeamLimitCondition
  L3_2 = A0_2._team
  L4_2 = A0_2._id
  return L1_2(L2_2, L3_2, L4_2)
end
L0_1.is_condition_met = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RaidLimitConditionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetTeamLimitHintParam
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.Count
    if 0 < L4_2 then
      L4_2 = G
      L4_2 = L4_2.Utils
      L4_2 = L4_2.create_lua_table_from_cs_list
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.limit_condition_txt
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = L2_2.LimitDesc
      L8_2 = unpack
      L9_2 = L4_2
      L8_2, L9_2 = L8_2(L9_2)
      L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.limit_condition_txt
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L2_2.LimitDesc
    L4_2(L5_2, L6_2)
  end
end
L0_1._setup_condition = L2_1
return L0_1
