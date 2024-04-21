local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.Entrance.GamePlayRaid.ClockParkStreeteventBtnPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ClockParkStreeteventBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ActivityClockParkModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.InventoryModule
L4_1 = "UIText_ClockPark_Script_Mission_Unlock_Toast"
L5_1 = "ClockParkStreetEventItem_Unlock"
L6_1 = "ClockParkStreetEventItem_Finshed"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
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
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_btn = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._row
  L1_2 = L1_2.SpecialMissionUnlockItemID
  return L1_2
end
L0_1.get_item_id = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetMainMissionData
  L3_2 = A0_2._row
  L3_2 = L3_2.SpecialMissionID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2 ~= nil and L2_2
  L3_2 = L1_2 ~= nil and L3_2
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L0_1.get_mission_status = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._row = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.try_play_anim
  L2_2(L3_2)
end
L0_1.setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.CheckStreetEventUnlock
  L3_2 = A0_2._row
  L3_2 = L3_2.SpecialMissionUnlockItemID
  L4_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_root
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L5_1
    L1_2(L2_2, L3_2)
    L1_2 = L2_1
    L2_2 = L1_2
    L1_2 = L1_2.SetStreetEventUnlock
    L3_2 = A0_2._row
    L3_2 = L3_2.SpecialMissionUnlockItemID
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1.try_play_anim = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._row
  L2_2 = L2_2.SpecialMissionUnlockItemID
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = L1_2.ItemName
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_event_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._row
  L5_2 = L5_2.EventName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_lock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_ClockPark_ItemUnlock"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_icon_lock
  L6_2 = L1_2.ItemIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetMainMissionData
  L5_2 = A0_2._row
  L5_2 = L5_2.SpecialMissionID
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2 ~= nil and L4_2
  L5_2 = L3_2 ~= nil and L5_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_finish
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_lock
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = not L5_2 and L8_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_lock_panel
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = not L5_2 and L8_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_effect
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = not L5_2 and L8_2
  L6_2(L7_2, L8_2)
  L6_2 = G
  L6_2 = L6_2.RedDotModule
  L6_2 = L6_2.Instance
  L7_2 = L6_2
  L6_2 = L6_2.bind_reddot
  L8_2 = "ClockParkSpecialMissionNew"
  L9_2 = A0_2._row
  L9_2 = L9_2.SpecialMissionUnlockItemID
  L10_2 = A0_2
  L11_2 = A0_2._binder
  L11_2 = L11_2.node_red_dot
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1._refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetMainMissionData
  L3_2 = A0_2._row
  L3_2 = L3_2.SpecialMissionID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2 ~= nil and L2_2
  L3_2 = L1_2 ~= nil and L3_2
  if L3_2 then
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.UIPileToastMessageTextID
    L6_2 = "UIText_ClockPark_Script_Condition_Finished"
    L4_2(L5_2, L6_2)
    return
  elseif not L3_2 and not L2_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ClockParkScriptConfigExcelTable
    L4_2 = L4_2.GetData
    L5_2 = A0_2._row
    L5_2 = L5_2.EventScript
    L4_2 = L4_2(L5_2)
    L5_2 = G
    L5_2 = L5_2.TextmapStatic
    L5_2 = L5_2.GetText
    L6_2 = L4_2.ScriptTitle
    L5_2 = L5_2(L6_2)
    L6_2 = G
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = L4_1
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = G
    L7_2 = L7_2.NotifyManager
    L7_2 = L7_2.notify
    L8_2 = G
    L8_2 = L8_2.CS
    L8_2 = L8_2.NotifyType
    L8_2 = L8_2.UIPileToastMessageString
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    return
  end
  L4_2 = L2_1
  L5_2 = L4_2
  L4_2 = L4_2.SetStreetEventUnlock
  L6_2 = A0_2._row
  L6_2 = L6_2.SpecialMissionUnlockItemID
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L4_2(L5_2)
  if not L3_2 then
    L4_2 = G
    L4_2 = L4_2.GotoManager
    L4_2 = L4_2.Goto
    L5_2 = A0_2._row
    L5_2 = L5_2.SpecialMissionGotoIDBefore
    L4_2(L5_2)
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.SDKLuaReportAdapter
  L4_2 = L4_2.ReportUIButtonClick
  L5_2 = A0_2._owner
  L5_2 = L5_2.__name
  L6_2 = A0_2.__name
  L7_2 = "GotoStreetEvent"
  L8_2 = A0_2._row
  L8_2 = L8_2.EventNum
  L7_2 = L7_2 .. L8_2
  L8_2 = A0_2._owner
  L8_2 = L8_2.guid
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2.save_navigation_target
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_root
  L6_2 = L6_2.gameObject
  L4_2(L5_2, L6_2)
end
L0_1._on_btn_root = L7_1
return L0_1
