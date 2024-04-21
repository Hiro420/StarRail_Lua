local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.SymbolDetail.PuzzleMovie.PuzzleMovieTargetInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PuzzleMovieTargetInfoPanel"
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
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_star
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_status
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CoroutineUtils
  L3_2 = L3_2.InvokeNextFrame
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._reset_all_animator_trigger
    L0_3(L1_3)
    L0_3 = L2_2.Status
    L1_3 = CS
    L1_3 = L1_3.LEOGBBOPKKO
    L1_3 = L1_3.CMOFEAFMGAK
    if L0_3 == L1_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.state_animator
      L1_3 = L0_3
      L0_3 = L0_3.SetTrigger
      L2_3 = "Succeed"
      L0_3(L1_3, L2_3)
    else
      L0_3 = A0_2._binder
      L0_3 = L0_3.state_animator
      L1_3 = L0_3
      L0_3 = L0_3.SetTrigger
      L2_3 = "Pending"
      L0_3(L1_3, L2_3)
    end
  end
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.QuestDataExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.FinishWayExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2.FinishWayID
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_title
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = "MazeText_Maze_GamePlay_Movie_RewardTarget"
  L8_2 = L4_2.ParamInt1
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_animator
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "Pending"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_animator
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "Failed"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_animator
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "Succeed"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_animator
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "SuccessHintDelay"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_animator
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "SuccessHint"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_animator
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "FailHint"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_animator
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "ProgressHint"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_animator
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "FailProgressHint"
  L1_2(L2_2, L3_2)
end
L0_1._reset_all_animator_trigger = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
return L0_1
