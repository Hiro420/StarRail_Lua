local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.CommonTeamLimitPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamLimitItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamLimitItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.ChallengeTeamItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.ChallengeTeamItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonTeamLimitPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._limit_ids = L1_2
  L1_2 = {}
  A0_2._limit_nodes = L1_2
  L1_2 = {}
  A0_2._limit_panels = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._limit_ids = A1_2
  L2_2 = {}
  A0_2._limit_nodes = L2_2
  L2_2 = {}
  A0_2._limit_panels = L2_2
  L2_2 = 0
  L3_2 = A0_2._limit_ids
  L3_2 = #L3_2
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2.instantiate_object
    L8_2 = A0_2._binder
    L8_2 = L8_2.limit_loader
    L8_2 = L8_2.Prefab
    L9_2 = A0_2._binder
    L9_2 = L9_2.limit_loader
    L9_2 = L9_2.transform
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = "limit_item_"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2.name = L7_2
    L7_2 = A0_2._binder
    L8_2 = L7_2
    L7_2 = L7_2._create_panel
    L9_2 = G
    L9_2 = L9_2.ChallengeTeamItemPanel
    L10_2 = G
    L10_2 = L10_2.ChallengeTeamItemPanelBinder
    L11_2 = L6_2.name
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._limit_panels
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._limit_nodes
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.setup_view
    L10_2 = L5_2 + 1
    L10_2 = A1_2[L10_2]
    L8_2(L9_2, L10_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 == nil then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = A0_2._limit_panels
  L2_2 = #L2_2
  L3_2 = #A1_2
  if L2_2 < L3_2 then
    L2_2 = 0
    L3_2 = #A1_2
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._limit_panels
      L6_2 = #L6_2
      if L5_2 < L6_2 then
        L6_2 = A0_2._limit_nodes
        L7_2 = L5_2 + 1
        L6_2 = L6_2[L7_2]
        L7_2 = L6_2
        L6_2 = L6_2.SafeSetActive
        L8_2 = true
        L6_2(L7_2, L8_2)
        L6_2 = A0_2._limit_panels
        L7_2 = L5_2 + 1
        L6_2 = L6_2[L7_2]
        L7_2 = L6_2
        L6_2 = L6_2.refresh
        L8_2 = L5_2 + 1
        L8_2 = A1_2[L8_2]
        L6_2(L7_2, L8_2)
      else
        L7_2 = A0_2
        L6_2 = A0_2.instantiate_object
        L8_2 = A0_2._binder
        L8_2 = L8_2.limit_loader
        L8_2 = L8_2.Prefab
        L9_2 = A0_2._binder
        L9_2 = L9_2.limit_loader
        L9_2 = L9_2.transform
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L7_2 = "limit_item_"
        L8_2 = L5_2
        L7_2 = L7_2 .. L8_2
        L6_2.name = L7_2
        L7_2 = A0_2._binder
        L8_2 = L7_2
        L7_2 = L7_2._create_panel
        L9_2 = G
        L9_2 = L9_2.ChallengeTeamItemPanel
        L10_2 = G
        L10_2 = L10_2.ChallengeTeamItemPanelBinder
        L11_2 = L6_2.name
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = A0_2._limit_panels
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = A0_2._limit_nodes
        L10_2 = L6_2
        L8_2(L9_2, L10_2)
        L9_2 = L7_2
        L8_2 = L7_2.setup_view
        L10_2 = L5_2 + 1
        L10_2 = A1_2[L10_2]
        L8_2(L9_2, L10_2)
      end
    end
  else
    L2_2 = 0
    L3_2 = A0_2._limit_nodes
    L3_2 = #L3_2
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = #A1_2
      if L5_2 < L6_2 then
        L6_2 = A0_2._limit_nodes
        L7_2 = L5_2 + 1
        L6_2 = L6_2[L7_2]
        L7_2 = L6_2
        L6_2 = L6_2.SafeSetActive
        L8_2 = true
        L6_2(L7_2, L8_2)
        L6_2 = A0_2._limit_panels
        L7_2 = L5_2 + 1
        L6_2 = L6_2[L7_2]
        L7_2 = L6_2
        L6_2 = L6_2.refresh
        L8_2 = L5_2 + 1
        L8_2 = A1_2[L8_2]
        L6_2(L7_2, L8_2)
      else
        L6_2 = A0_2._limit_nodes
        L7_2 = L5_2 + 1
        L6_2 = L6_2[L7_2]
        L7_2 = L6_2
        L6_2 = L6_2.SafeSetActive
        L8_2 = false
        L6_2(L7_2, L8_2)
      end
    end
  end
  A0_2._limit_ids = A1_2
end
L0_1.refresh_by_datas = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._limit_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._limit_ids
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      goto lbl_10
    end
  end
  L1_2 = true
  do return L1_2 end
  ::lbl_10::
  L1_2 = true
  L2_2 = 0
  L3_2 = A0_2._limit_ids
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._limit_panels
    L7_2 = L5_2 + 1
    L6_2 = L6_2[L7_2]
    L7_2 = L6_2
    L6_2 = L6_2.is_condition_met
    L6_2 = L6_2(L7_2)
    if L6_2 == false then
      L1_2 = false
    end
  end
  return L1_2
end
L0_1.is_limit_conditions_met = L1_1
return L0_1
