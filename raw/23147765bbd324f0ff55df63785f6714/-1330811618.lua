local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildWeaponChangePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildWeaponChangeDetailItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildConst"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.EvolveBuildModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "EvolveBuildWeaponChangePage"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.EvolveBuildWeaponChangePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_BelowBlack
  A0_2._transition_style = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._stage = A1_2
  L2_2 = A1_2.SelectedWeapon
  A0_2._selected_weapon = L2_2
  L2_2 = A0_2._selected_weapon
  if L2_2 then
    L2_2 = A0_2._selected_weapon
    L2_2 = L2_2.ID
    if L2_2 then
      goto lbl_12
    end
  end
  L2_2 = 0
  ::lbl_12::
  A0_2._equipped_weapon_id = L2_2
  L2_2 = {}
  A0_2._weapons = L2_2
  L2_2 = 0
  L3_2 = L1_1.NormalWeapons
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_1.NormalWeapons
    L6_2 = L6_2[L5_2]
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._weapons
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L2_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.close_btn
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._confirm_stage_weapon
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.simple_desc_btn
  L4_2 = A0_2._toggle_simple_desc
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2
  L1_2 = L1_2.GetEvolveBuildSelectGearShortDesc
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.simple_desc_btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.weapon_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeInitListView
  L4_2 = A0_2._weapons
  L4_2 = #L4_2
  function L5_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L4_3 = A1_3
    L3_3 = A1_3.NewListViewItem
    L3_3 = L3_3(L4_3)
    L4_3 = L3_3.UserObjectData
    if L4_3 == nil then
      L6_3 = A0_3
      L5_3 = A0_3.create_panel
      L7_3 = G
      L7_3 = L7_3.EvolveBuildWeaponChangeDetailItem
      L8_3 = G
      L8_3 = L8_3.EvolveBuildWeaponChangeDetailItemBinder
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      L4_3 = L5_3
      L6_3 = L4_3
      L5_3 = L4_3.bind
      L7_3 = L3_3.transform
      L5_3(L6_3, L7_3)
      L3_3.UserObjectData = L4_3
    end
    L5_3 = A0_3._weapons
    L6_3 = A2_3 + 1
    L5_3 = L5_3[L6_3]
    L7_3 = L4_3
    L6_3 = L4_3.setup_view
    L8_3 = L5_3
    L6_3(L7_3, L8_3)
    L7_3 = L4_3
    L6_3 = L4_3.on_click
    L8_3 = A0_3
    L9_3 = A0_3._set_select_weapon
    L6_3(L7_3, L8_3, L9_3)
    L7_3 = L4_3
    L6_3 = L4_3.set_equipped_tip
    L8_3 = L5_3.ID
    L9_3 = A0_3._equipped_weapon_id
    L8_3 = L8_3 == L9_3
    L6_3(L7_3, L8_3)
    L7_3 = L4_3
    L6_3 = L4_3.set_checked
    L8_3 = A0_3._selected_weapon
    if L8_3 then
      L8_3 = L5_3.ID
      L9_3 = A0_3._selected_weapon
      L9_3 = L9_3.ID
      L8_3 = L8_3 == L9_3
    end
    L6_3(L7_3, L8_3)
    return L3_3
  end
  L6_2 = nil
  L7_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.weapon_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_weapon_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_enter_zoom
  L4_2 = NavigationZoneType
  L4_2 = L4_2.Zone1
  L2_2(L3_2, L4_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
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
L2_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.weapon_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = L1_2.gameObject
    if L2_2 then
      goto lbl_12
    end
  end
  L2_2 = nil
  ::lbl_12::
  return L2_2
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._stage
  L2_2 = A0_2._selected_weapon
  L1_2.SelectedWeapon = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L2_1._confirm_stage_weapon = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._selected_weapon = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_weapon_panel
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.weapon_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L2_1._set_select_weapon = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._selected_weapon
  L2_2 = A0_2._binder
  L2_2 = L2_2.empty_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 == nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.weapon_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.confirm_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.weapon_icon
  L5_2 = L1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.weapon_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.weapon_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L0_1.WeaponLevelTextID
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.GetWeaponInitialLevel
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.EvolveBuildUtils
  L2_2 = L2_2.SetMazeBuffDesc
  L3_2 = A0_2._binder
  L3_2 = L3_2.weapon_desc
  L4_2 = L1_2.MazeBuff
  L5_2 = false
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L2_1._refresh_weapon_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2
  L1_2 = L1_2.GetEvolveBuildSelectGearShortDesc
  L1_2 = L1_2(L2_2)
  L2_2 = not L1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L4_2 = L3_2
  L3_2 = L3_2.SetEvolveBuildSelectGearShortDesc
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.ForceSave
  L3_2()
  L3_2 = A0_2._binder
  L3_2 = L3_2.simple_desc_btn
  L4_2 = L3_2
  L3_2 = L3_2.SetChecked
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_weapon_panel
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.weapon_list
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
end
L2_1._toggle_simple_desc = L3_1
return L2_1
