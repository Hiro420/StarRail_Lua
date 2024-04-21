local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Event.AlleyLetterInfoRowBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyLetterInfoRow"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AlleyModule
function L2_1(A0_2, A1_2, A2_2)
  A0_2._is_finished = false
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.btn_root
    L1_3 = L0_3
    L0_3 = L0_3.SetChecked
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_button_enable
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.onSelectTrigger = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.onDeselectTrigger = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_btn_go
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_tip
  L2_2.IsShowTip = A1_2
end
L0_1.setup_in_control_button_enable = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data = A1_2
  L2_2 = A1_2.type
  if L2_2 == "Event" then
    L3_2 = A0_2
    L2_2 = A0_2._setup_event_info_view
    L2_2(L3_2)
  else
    L2_2 = A1_2.type
    if L2_2 == "Order" then
      L3_2 = A0_2
      L2_2 = A0_2._setup_order_info_view
      L2_2(L3_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_panel_state
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_event
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_order
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AlleyEventExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._data
  L2_2 = L2_2.id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.EventTitle
  L2_2(L3_2, L4_2)
  L2_2 = L1_2.MapEntranceID
  A0_2._map_entrance_id = L2_2
  L2_2 = L1_2.MappingInfoID
  A0_2._mapping_info_id = L2_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetEventMissionData
  L4_2 = L1_2.StartMissionIDList
  L4_2 = L4_2[0]
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.IsFinish
  A0_2._is_finished = L3_2
end
L0_1._setup_event_info_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_event
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_order
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AlleySpecialOrderExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._data
  L2_2 = L2_2.id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.SubTitleID
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueCommonExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "Activity_Alley_SpecialLego_MapEntranceID"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.IntValue
  A0_2._map_entrance_id = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueCommonExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "Activity_Alley_SpecialLego_MappingInfoID"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.IntValue
  A0_2._mapping_info_id = L2_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAlleySpecialOrderData
  L4_2 = A0_2._data
  L4_2 = L4_2.id
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 ~= nil
  A0_2._is_finished = L3_2
end
L0_1._setup_order_info_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_arrow_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_finished
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finish_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_finished
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_go
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._is_finished
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_panel_state = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_finished
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.GotoByType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GotoType
  L2_2 = L2_2.AreaSwitch
  L2_2 = #L2_2
  L3_2 = {}
  L4_2 = A0_2._map_entrance_id
  L5_2 = A0_2._mapping_info_id
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
  end
end
L0_1._on_btn_go = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.AlleyExitEntrancePage
  L1_2(L2_2)
end
L0_1._exit_entrance_page = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._parent
  if L1_2 then
    L1_2 = A0_2._parent
    L1_2 = L1_2.parent_page
    if L1_2 then
      L1_2 = A0_2._parent
      L1_2 = L1_2.parent_page
      L2_2 = L1_2
      L1_2 = L1_2.exit
      L1_2(L2_2)
    end
  end
end
L0_1._exit_event_page = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._parent
  if L1_2 then
    L1_2 = A0_2._parent
    L2_2 = L1_2
    L1_2 = L1_2.exit
    L1_2(L2_2)
  end
end
L0_1._exit_letter_dialog = L2_1
return L0_1
