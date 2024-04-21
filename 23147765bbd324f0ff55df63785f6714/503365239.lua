local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.Entrance.GamePlayRaid.ClockParkStreetEventTabItemBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = "UIText_ClockPark_Event_Title"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ClockParkStreetEventTabItem"
L5_1 = G
L5_1 = L5_1.TabItem
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_navi
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TutorialTaskUnlock
  L3_2 = "5311"
  L1_2(L2_2, L3_2)
end
L3_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.EventSystem
  L1_2 = L1_2.current
  L1_2 = L1_2.currentSelectedGameObject
  A0_2._last_selected_object = L1_2
end
L3_1._on_unselect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = 1
  L2_2 = 0
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ClockParkSpecialMissionExcelTable
  L3_2 = L3_2.dataDict
  L4_2 = {}
  L5_2 = pairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L4_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L5_2 = table
  L5_2 = L5_2.sort
  L6_2 = L4_2
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.EventNum
    L3_3 = A1_3.EventNum
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L5_2(L6_2, L7_2)
  L5_2 = pairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = A0_2._binder
    L10_2 = L10_2.panels_street_event_item
    L10_2 = L10_2[L1_2]
    L11_2 = L10_2
    L10_2 = L10_2.setup_view
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
    L1_2 = L1_2 + 1
    L10_2 = L1_1
    L11_2 = L10_2
    L10_2 = L10_2.IsMainMissionFinished
    L12_2 = L9_2.SpecialMissionID
    L10_2 = L10_2(L11_2, L12_2)
    if L10_2 then
      L2_2 = L2_2 + 1
    end
  end
end
L3_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._refresh_navi = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._last_selected_object
  if L1_2 ~= nil then
    L1_2 = A0_2._last_selected_object
    return L1_2
  end
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.panels_street_event_item
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.panels_street_event_item
    L5_2 = L5_2[L4_2]
    L6_2 = L0_1
    L7_2 = L6_2
    L6_2 = L6_2.CheckStreetEventUnlock
    L9_2 = L5_2
    L8_2 = L5_2.get_item_id
    L8_2, L9_2 = L8_2(L9_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.panels_street_event_item
      L6_2 = L6_2[L4_2]
      L7_2 = L6_2
      L6_2 = L6_2.get_btn
      L6_2 = L6_2(L7_2)
      L6_2 = L6_2.gameObject
      return L6_2
    end
  end
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.panels_street_event_item
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.panels_street_event_item
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.get_mission_status
    L6_2, L7_2 = L6_2(L7_2)
    if L6_2 and not L7_2 then
      L8_2 = A0_2._binder
      L8_2 = L8_2.panels_street_event_item
      L8_2 = L8_2[L4_2]
      L9_2 = L8_2
      L8_2 = L8_2.get_btn
      L8_2 = L8_2(L9_2)
      L8_2 = L8_2.gameObject
      return L8_2
    end
  end
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.panels_street_event_item
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.panels_street_event_item
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.get_mission_status
    L6_2, L7_2 = L6_2(L7_2)
    if not L6_2 and not L7_2 then
      L8_2 = A0_2._binder
      L8_2 = L8_2.panels_street_event_item
      L8_2 = L8_2[L4_2]
      L9_2 = L8_2
      L8_2 = L8_2.get_btn
      L8_2 = L8_2(L9_2)
      L8_2 = L8_2.gameObject
      return L8_2
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panels_street_event_item
  L2_2 = A0_2._binder
  L2_2 = L2_2.panels_street_event_item
  L2_2 = #L2_2
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.get_btn
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.gameObject
  return L1_2
end
L3_1.get_first_selected_object = L4_1
return L3_1
