local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityAetherDivideMainLeftListItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._activity_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._display_node
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_sp_reward
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_reddot
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ActivityAetherDivideDataStatus
  L4_2 = L4_2.Locked
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ActivityAetherDivideDataStatus
  L4_2 = L4_2.IsStart
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_complete
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ActivityAetherDivideDataStatus
  L4_2 = L4_2.Completed
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
end
L0_1._display_node = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ActivityAetherDivideDataStatus
  L2_2 = L2_2.IsStart
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_complete_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = A0_2._activity_data
    L3_2 = L3_2.CompletedProgress
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_total_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = A0_2._activity_data
    L3_2 = L3_2.TotalProgress
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = false
  L2_2 = 0
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.QuestIDList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.QuestDataExcelTable
    L6_2 = L6_2.GetData
    L7_2 = A0_2._activity_data
    L7_2 = L7_2.QuestIDList
    L7_2 = L7_2[L5_2]
    L6_2 = L6_2(L7_2)
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.RewardExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L6_2.RewardID
    L7_2 = L7_2(L8_2)
    if L7_2 ~= nil then
      L8_2 = L7_2.IsSpecial
      if L8_2 then
        L1_2 = true
        break
      end
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_is_have_sp_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_sp_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AetherDivideActivityCanTakeReward"
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.ID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_self
    if L1_2 ~= nil then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L1_2 = A0_2._callback
  L2_2 = A0_2._callback_self
  L3_2 = A0_2._activity_data
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_click = L1_1
return L0_1
