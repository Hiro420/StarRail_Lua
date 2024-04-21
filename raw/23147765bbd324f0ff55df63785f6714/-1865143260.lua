local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.QuestModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueEndlessTargetInfoRowPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2.data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_desc
  L4_2 = A1_2.TotalValue
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_progress
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_status
  L4_2 = false
  L5_2 = A1_2.CurrentValue
  L6_2 = A1_2.TotalValue
  L5_2 = L5_2 >= L6_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._quest_data = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_ActivityRogueEndless_Target_Des"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._setup_desc = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.data
  L1_2 = L1_2.IsHideTargetPoint
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cur_progress
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2.data
  L3_2 = L3_2.CurrentValue
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_total_progress
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2.data
  L3_2 = L3_2.TotalValue
  L1_2(L2_2, L3_2)
end
L1_1._setup_progress = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 == false and A2_2 == false then
    L3_2 = A0_2._binder
    L3_2 = L3_2.state_animator
    L4_2 = L3_2
    L3_2 = L3_2.ResetTrigger
    L5_2 = "Failed"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.state_animator
    L4_2 = L3_2
    L3_2 = L3_2.ResetTrigger
    L5_2 = "Succeed"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.state_animator
    L4_2 = L3_2
    L3_2 = L3_2.SetTrigger
    L5_2 = "Pending"
    L3_2(L4_2, L5_2)
  elseif A2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.state_animator
    L4_2 = L3_2
    L3_2 = L3_2.ResetTrigger
    L5_2 = "Failed"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.state_animator
    L4_2 = L3_2
    L3_2 = L3_2.ResetTrigger
    L5_2 = "Pending"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.state_animator
    L4_2 = L3_2
    L3_2 = L3_2.SetTrigger
    L5_2 = "Succeed"
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.state_animator
    L4_2 = L3_2
    L3_2 = L3_2.ResetTrigger
    L5_2 = "Pending"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.state_animator
    L4_2 = L3_2
    L3_2 = L3_2.ResetTrigger
    L5_2 = "Succeed"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.state_animator
    L4_2 = L3_2
    L3_2 = L3_2.SetTrigger
    L5_2 = "Failed"
    L3_2(L4_2, L5_2)
  end
end
L1_1._setup_status = L2_1
return L1_1
