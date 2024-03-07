local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityUnlockMissionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityConditionPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityConditionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.condition_list_view
  if L1_2 ~= nil then
    L1_2 = A0_2._unlock_mission_ids
    if L1_2 ~= nil then
      L1_2 = 0
      L2_2 = A0_2._unlock_mission_ids
      L2_2 = #L2_2
      L2_2 = L2_2 - 1
      L3_2 = 1
      for L4_2 = L1_2, L2_2, L3_2 do
        L5_2 = A0_2._binder
        L5_2 = L5_2.condition_list_view
        L6_2 = L5_2
        L5_2 = L5_2.GetShownItemByItemIndex
        L7_2 = L4_2
        L5_2 = L5_2(L6_2, L7_2)
        if L5_2 ~= nil then
          L6_2 = L5_2.UserObjectData
          L7_2 = L6_2
          L6_2 = L6_2.get_btn_root_interactable
          L6_2 = L6_2(L7_2)
          if L6_2 then
            L6_2 = L5_2.UserObjectData
            L6_2 = L6_2._binder
            L6_2 = L6_2.btn_root
            L6_2 = L6_2.gameObject
            return L6_2
          end
        end
      end
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.get_first_selected_object
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2 ~= nil
    return L2_2
  end
end
L0_1._is_can_to_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.condition_list_view
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
  A0_2._report_panel_name = A1_2
end
L0_1.setup_report_panel_name = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  A0_2._all_mission_panels = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_cs_list_from_table
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.MainMissionDataPromised
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L3_2 = L3_2.ThenLuaAction
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A1_2
    A0_2._unlock_mission_ids = L0_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.condition_list_view
    L1_3 = L0_3
    L0_3 = L0_3.SetListItemCount
    L2_3 = A0_2._unlock_mission_ids
    L2_3 = #L2_3
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.condition_list_view
    L1_3 = L0_3
    L0_3 = L0_3.RefreshAllShownItem
    L0_3(L1_3)
  end
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._all_mission_panels
  return L1_2
end
L0_1.get_all_mission_panels = L1_1
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
  L7_2 = L7_2.ActivityUnlockMissionPanel
  L8_2 = G
  L8_2 = L8_2.ActivityUnlockMissionPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_mission_id
  L7_2 = A0_2._unlock_mission_ids
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._report_panel_name
  if L5_2 then
    L6_2 = L4_2
    L5_2 = L4_2.setup_report_panel_name
    L7_2 = A0_2._report_panel_name
    L5_2(L6_2, L7_2)
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L5_2(L6_2)
  L5_2 = A0_2._all_mission_panels
  L6_2 = A2_2 + 1
  L5_2[L6_2] = L4_2
  return L3_2
end
L0_1._on_item_change = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.UInt32
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L2_2
    L8_2 = L2_2.Add
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L2_2
end
L0_1._create_cs_list_from_table = L1_1
return L0_1
