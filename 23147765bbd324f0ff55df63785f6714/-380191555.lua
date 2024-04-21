local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.NewbieTicketProgressPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NewbieTicketProgressPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
function L2_1(A0_2, A1_2)
  local L2_2
  A0_2._activity_data = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.PlayerModule
  L2_2 = L2_2.PlayerData
  L2_2 = L2_2.Level
  A0_2._cur_player_level = L2_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_node_hint_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_level_view
  L1_2(L2_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 0
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.TypeParam
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1
    L6_2 = L5_2
    L5_2 = L5_2.TryGetQuestData
    L7_2 = A0_2._activity_data
    L7_2 = L7_2.TypeParam
    L7_2 = L7_2[L4_2]
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.TryGetQuestData
    L8_2 = A0_2._activity_data
    L8_2 = L8_2.TypeParam
    L9_2 = L4_2 + 1
    L8_2 = L8_2[L9_2]
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = A0_2._cur_player_level
    L8_2 = L6_2.FinishWayRow
    L8_2 = L8_2.Progress
    if L7_2 >= L8_2 then
      L7_2 = A0_2._binder
      L7_2 = L7_2.progress_bar
      L7_2 = L7_2[L4_2]
      L7_2.value = 1.0
    else
      L7_2 = A0_2._cur_player_level
      L8_2 = L5_2.FinishWayRow
      L8_2 = L8_2.Progress
      if L7_2 >= L8_2 then
        L7_2 = A0_2._binder
        L7_2 = L7_2.progress_bar
        L7_2 = L7_2[L4_2]
        L8_2 = A0_2._cur_player_level
        L9_2 = L5_2.FinishWayRow
        L9_2 = L9_2.Progress
        L8_2 = L8_2 - L9_2
        L9_2 = L6_2.FinishWayRow
        L9_2 = L9_2.Progress
        L10_2 = L5_2.FinishWayRow
        L10_2 = L10_2.Progress
        L9_2 = L9_2 - L10_2
        L8_2 = L8_2 / L9_2
        L7_2.value = L8_2
      else
        L7_2 = A0_2._binder
        L7_2 = L7_2.progress_bar
        L7_2 = L7_2[L4_2]
        L7_2.value = 0
      end
    end
  end
end
L0_1._setup_progress_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.TypeParam
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1
    L6_2 = L5_2
    L5_2 = L5_2.TryGetQuestData
    L7_2 = A0_2._activity_data
    L7_2 = L7_2.TypeParam
    L7_2 = L7_2[L4_2]
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.hint_node
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.unlocked
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = A0_2._cur_player_level
    L9_2 = L5_2.FinishWayRow
    L9_2 = L9_2.Progress
    L8_2 = L8_2 >= L9_2
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.hint_node
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.locked
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = A0_2._cur_player_level
    L9_2 = L5_2.FinishWayRow
    L9_2 = L9_2.Progress
    L8_2 = L8_2 < L9_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_node_hint_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.player_cur_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._cur_player_level
  L1_2(L2_2, L3_2)
end
L0_1._setup_level_view = L2_1
return L0_1
