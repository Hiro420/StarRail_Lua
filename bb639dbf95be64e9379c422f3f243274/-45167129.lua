local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Team.TeamLimitItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamLimitItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TeamModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.AvatarModule
L3_1 = "#FFFFFF"
L4_1 = "#EB4141"
function L5_1(A0_2)
  local L1_2
  A0_2._team_limit_id = nil
  A0_2._avatar_id = nil
  A0_2._team_data = nil
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._team_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L0_1.switch_team = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._team_limit_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._avatar_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L0_1.setup_view_by_avatar_id = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._team_limit_id
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._setup_desc_view
    L3_2 = A0_2._team_limit_id
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.refresh_condition_view
    L1_2(L2_2)
    return
  else
    L1_2 = A0_2._avatar_id
    if L1_2 ~= nil then
      L2_2 = A0_2
      L1_2 = A0_2._setup_desc_by_avatar_id
      L3_2 = A0_2._avatar_id
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_met
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_unmet
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._setup_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RaidLimitConditionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.LimitDesc
  L6_2 = L1_1
  L7_2 = L6_2
  L6_2 = L6_2.GetTeamLimitHintParam
  L8_2 = A1_2
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._setup_desc_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UlText_TeamEdit_AvatarLimit"
  L6_2 = G
  L6_2 = L6_2.TextmapStatic
  L6_2 = L6_2.GetText
  L7_2 = L2_2.AvatarName
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextColor
  L5_2 = L3_1
  L3_2(L4_2, L5_2)
end
L0_1._setup_desc_by_avatar_id = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._team_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.is_condition_met
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_met
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_unmet
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextColor
  if L1_2 then
    L4_2 = L3_1
    if L4_2 then
      goto lbl_26
    end
  end
  L4_2 = L4_1
  ::lbl_26::
  L2_2(L3_2, L4_2)
end
L0_1.refresh_condition_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._team_data
  if L1_2 ~= nil then
    L1_2 = A0_2._team_limit_id
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
  L3_2 = A0_2._team_data
  L4_2 = A0_2._team_limit_id
  return L1_2(L2_2, L3_2, L4_2)
end
L0_1.is_condition_met = L5_1
return L0_1
