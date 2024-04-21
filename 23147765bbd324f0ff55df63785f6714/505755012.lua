local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmTeamEditPage"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.TeamModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueEndlessTeamEditPage"
L3_1 = G
L3_1 = L3_1.FarmTeamEditPage
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2
  L7_2 = L0_1
  L8_2 = L7_2
  L7_2 = L7_2.GetCurrentTeam
  L7_2 = L7_2(L8_2)
  A0_2._team_data = L7_2
  A0_2._confirm_callback = A1_2
  A0_2._confirm_handler = A2_2
  L7_2 = A3_2 or L7_2
  if not A3_2 then
    L7_2 = {}
  end
  A0_2._limit_ids = L7_2
  if A4_2 == nil then
    L7_2 = true
    if L7_2 then
      goto lbl_17
    end
  end
  L7_2 = A4_2
  ::lbl_17::
  A0_2._should_auto_exit = L7_2
  L7_2 = A5_2 or L7_2
  if not A5_2 then
    L7_2 = false
  end
  A0_2._enable_assist = L7_2
  A0_2._weakness_table = A6_2
  A0_2._is_in_battle = false
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.super
  L1_2 = L1_2._init_view
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tab_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1._init_view = L2_1
return L1_1
