local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildGearUnlockDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearPropPanel"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.EvolveBuildModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "EvolveBuildGearUnlockDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.EvolveBuildGearUnlockDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  A0_2._gear_ids = A1_2
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.close_btn
  L1_2(L2_2, L3_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.gear_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = A0_2._gear_ids
  L3_2 = #L3_2
  function L4_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L6_3 = A1_3
    L5_3 = A1_3.NewListViewItem
    L5_3 = L5_3(L6_3)
    L6_3 = L5_3.UserObjectData
    if L6_3 == nil then
      L8_3 = A0_3
      L7_3 = A0_3.create_panel
      L9_3 = G
      L9_3 = L9_3.BattleEvolveBuildSelectGearPropPanel
      L10_3 = G
      L10_3 = L10_3.BattleEvolveBuildSelectGearPropPanelBinder
      L7_3 = L7_3(L8_3, L9_3, L10_3)
      L6_3 = L7_3
      L8_3 = L6_3
      L7_3 = L6_3.bind
      L9_3 = L5_3.transform
      L7_3(L8_3, L9_3)
      L5_3.UserObjectData = L6_3
    end
    L7_3 = A0_3._gear_ids
    L8_3 = A2_3 + 1
    L7_3 = L7_3[L8_3]
    L9_3 = L6_3
    L8_3 = L6_3.setup_view
    L10_3 = L7_3
    L8_3(L9_3, L10_3)
    L9_3 = L6_3
    L8_3 = L6_3.on_click
    L10_3 = A0_3._open_gear_detail_panel
    L11_3 = A0_3
    L12_3 = L7_3
    L8_3(L9_3, L10_3, L11_3, L12_3)
    L9_3 = L6_3
    L8_3 = L6_3.on_select
    L10_3 = A0_3.save_navigation_target
    L11_3 = A0_3
    L12_3 = L5_3.gameObject
    L8_3(L9_3, L10_3, L11_3, L12_3)
    return L5_3
  end
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.gear_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._gear_ids
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.gear_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L1_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.gear_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = L1_2.gameObject
    return L2_2
  end
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close_gear_detail_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L1_2(L2_2)
end
L1_1._on_leave_special_zoom = L2_1
function L2_1(A0_2, A1_2)
end
L1_1._on_in_control_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.gear_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.gear_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = {}
  L4_2.GearID = A1_2
  L4_2.Level = 1
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.gear_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.register_on_btn_root_callback
  L4_2 = A0_2._close_gear_detail_panel
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_special_zoom_navigation_target
  L4_2 = A0_2._binder
  L4_2 = L4_2.gear_detail_panel
  L5_2 = L4_2
  L4_2 = L4_2.get_first_selected_object
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._open_gear_detail_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_gear_recommend_checked
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.gear_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1._close_gear_detail_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = A0_2._gear_ids
  L2_2 = #L2_2
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.gear_list
    L6_2 = L5_2
    L5_2 = L5_2.GetShownItemByItemIndex
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L6_2 = L5_2.UserObjectData
      L8_2 = L6_2
      L7_2 = L6_2.set_checked
      L9_2 = false
      L7_2(L8_2, L9_2)
    end
  end
end
L1_1._clear_gear_recommend_checked = L2_1
return L1_1
