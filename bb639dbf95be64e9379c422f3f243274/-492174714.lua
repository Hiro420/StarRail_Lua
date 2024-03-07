local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HandbookDailyQuestItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.HandbookModule
function L3_1(A0_2)
  local L1_2
  A0_2._quest_id = 0
  A0_2._quest_data = nil
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2.on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = A0_2.on_btn_get
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._enable_in_control
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.get_first_selected_object
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._enable_in_control
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._enable_in_control
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._quest_id = A1_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = A0_2._quest_id
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._quest_data = L2_2
  L2_2 = A0_2._quest_data
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "quest data not found in module, id:"
    L4_2 = A0_2._quest_id
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_status_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.ClearAnimationState
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.DataRow
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.FinishWayExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.FinishWayID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L1_2.QuestTitle
  L6_2 = L2_2.ParamInt1
  L7_2 = L2_2.ParamInt2
  L8_2 = L2_2.ParamInt3
  L9_2 = A0_2._quest_data
  L9_2 = L9_2.TotalProgress
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = L2_1.ActivePointItemID
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.get_item_count
  L5_2 = L1_2.RewardID
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_point
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L0_1._setup_info_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_current_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.Progress
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_total_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.TotalProgress
  L1_2(L2_2, L3_2)
end
L0_1._setup_progress_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L2_1.ActivePoint
  L2_2 = L2_1.MaxActivePoint
  L1_2 = L1_2 >= L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btns
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_active_max
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._quest_data
  L2_2 = L2_2.Status
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.DataRow
  L3_2 = L3_2.GotoID
  L3_2 = L3_2 ~= 0
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_mask_gotten
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = CS
  L6_2 = L6_2.BLHLCHNAJKK
  L6_2 = L6_2.FMLBEGJJHMJ
  L6_2 = L2_2 == L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_doing
  if L4_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_doing
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = CS
    L6_2 = L6_2.BLHLCHNAJKK
    L6_2 = L6_2.BMEAGBEFNFK
    L6_2 = L2_2 == L6_2 and L6_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_go
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = CS
  L6_2 = L6_2.BLHLCHNAJKK
  L6_2 = L6_2.BMEAGBEFNFK
  L6_2 = L2_2 == L6_2 and L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_get
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = CS
  L6_2 = L6_2.BLHLCHNAJKK
  L6_2 = L6_2.CDJHHIHBNMN
  L6_2 = L2_2 == L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_gotten
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = CS
  L6_2 = L6_2.BLHLCHNAJKK
  L6_2 = L6_2.FMLBEGJJHMJ
  L6_2 = L2_2 == L6_2
  L4_2(L5_2, L6_2)
  L4_2 = pairs
  L5_2 = A0_2._binder
  L5_2 = L5_2.canvas_group_gotten
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = CS
    L9_2 = L9_2.BLHLCHNAJKK
    L9_2 = L9_2.FMLBEGJJHMJ
    if L2_2 == L9_2 then
      L9_2 = 0.2
      if L9_2 then
        goto lbl_103
      end
    end
    L9_2 = 1
    ::lbl_103::
    L8_2.alpha = L9_2
  end
end
L0_1._setup_status_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2._quest_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.DataRow
  L2_2 = L2_2.GotoID
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.GotoManager
    L2_2 = L2_2.Goto
    L3_2 = L1_2.DataRow
    L3_2 = L3_2.GotoID
    L2_2(L3_2)
  end
end
L0_1.on_btn_go = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._get_reward
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1.on_btn_get = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L3_2 = L1_2
  L2_2 = L1_2.Add
  L4_2 = A0_2._quest_id
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.AMFNHGKACLB
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._get_reward = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.setup_in_control_tip_enable
  L3_2 = A0_2._binder
  L3_2 = L3_2.controls_tip
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._enable_in_control = L3_1
return L0_1
