local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Talk.Components.RogueRandomEvtPerformancePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talk.Components.RogueRandomEvtItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueTalkUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueRandomEvtPerformancePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.random_evt_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._get_prefab_data
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_scroll_curve
  L3_2 = L2_2
  L2_2 = L2_2.RegisterFinishCallback
  L4_2 = A0_2._on_move_finished
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.RogueHandbookModule
  L3_2 = L2_2
  L2_2 = L2_2.GetSortedRandomEventPerformData
  L4_2 = A0_2._target_index
  L5_2 = A0_2._event_id
  L6_2 = A0_2._total_num
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._data_list = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.random_evt_list_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._total_num
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.RogueTalkUtils
  L2_2 = L2_2.is_random_evt_first_met
  L3_2 = A0_2._event_id
  L2_2 = L2_2(L3_2)
  if L2_2 then
    A0_2._is_new = true
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_scroll_curve
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L2_2(L3_2)
  else
    A0_2._is_new = false
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_scroll_curve
    L3_2 = L2_2
    L2_2 = L2_2.PlaySimplified
    L2_2(L3_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_new
  return L1_2
end
L0_1.is_random_evt_new = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._finish_cbk = A1_2
  A0_2._finish_hdl = A2_2
end
L0_1.register_finish_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_scroll_curve
  L2_2 = L2_2.TargetObjectIndex
  L2_2 = L2_2 - 1
  A0_2._target_index = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_scroll_curve
  L2_2 = L2_2.TotalObjectNum
  A0_2._total_num = L2_2
  A0_2._event_id = A1_2
end
L0_1._get_prefab_data = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.RogueRandomEvtItemPanel
  L8_2 = G
  L8_2 = L8_2.RogueRandomEvtItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A2_2
  L8_2 = A0_2._data_list
  L8_2 = L8_2[A2_2]
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L0_1._on_item_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormatWithTag
  L2_2 = G
  L2_2 = L2_2.LogTag
  L2_2 = L2_2.UI
  L3_2 = " Random Event Perform Finished"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._finish_cbk
  if L1_2 then
    L1_2 = A0_2._finish_hdl
    if L1_2 then
      L1_2 = A0_2._finish_cbk
      L2_2 = A0_2._finish_hdl
      L3_2 = A0_2._data_list
      L4_2 = A0_2._target_index
      L3_2 = L3_2[L4_2]
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_move_finished = L1_1
return L0_1
