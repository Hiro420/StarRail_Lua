local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.Collection.EvolveBuildCollectionGearListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.Collection.EvolveBuildCollectionGearItemPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildCollectionGearListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_EvolveBuild_WeaponTag"
L2_1 = "UIText_EvolveBuild_SuperWeaponTag"
function L3_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.EvolveBuildModule
  A0_2._evolve_build_module = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.gear_list_view
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_gear_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._on_btn_root_callback = A1_2
  A0_2._on_btn_root_callback_self = A2_2
end
L0_1.register_on_btn_root_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._gear_type = A1_2
  A0_2._idx = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._init_type_data
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.gear_list_view
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._gear_collections
  L5_2 = #L5_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._gear_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EvolveGearType
  L2_2 = L2_2.Forge
  if L1_2 == L2_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.create_lua_table_from_cs_list
    L2_2 = A0_2._evolve_build_module
    L2_2 = L2_2.ForgedWeapons
    L1_2 = L1_2(L2_2)
    A0_2._gear_collections = L1_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._gear_type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.EvolveGearType
    L2_2 = L2_2.Tool
    if L1_2 == L2_2 then
      L1_2 = G
      L1_2 = L1_2.Utils
      L1_2 = L1_2.create_lua_table_from_cs_list
      L2_2 = A0_2._evolve_build_module
      L2_2 = L2_2.NormalWeapons
      L1_2 = L1_2(L2_2)
      A0_2._gear_collections = L1_2
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_title
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = L1_1
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._gear_type
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.EvolveGearType
      L2_2 = L2_2.Plugin
      if L1_2 == L2_2 then
        L1_2 = G
        L1_2 = L1_2.Utils
        L1_2 = L1_2.create_lua_table_from_cs_list
        L2_2 = A0_2._evolve_build_module
        L2_2 = L2_2.Accessories
        L1_2 = L1_2(L2_2)
        A0_2._gear_collections = L1_2
      end
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._gear_type
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveGearType
  L4_2 = L4_2.Plugin
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
end
L0_1._init_type_data = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_25
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.EvolveBuildCollectionGearItemPanel
  L8_2 = G
  L8_2 = L8_2.EvolveBuildCollectionGearItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_on_btn_root_callback
  L7_2 = A0_2._on_btn_root_callback
  L8_2 = A0_2._on_btn_root_callback_self
  L5_2(L6_2, L7_2, L8_2)
  L3_2.UserObjectData = L4_2
  ::lbl_25::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._gear_collections
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  if A2_2 == 0 then
    L5_2 = A0_2._idx
    if L5_2 == 0 then
      L6_2 = L4_2
      L5_2 = L4_2.trigger_click
      L5_2(L6_2)
    end
  end
  return L3_2
end
L0_1._on_gear_changed = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.gear_list_view
  return L1_2
end
L0_1.get_static_list_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.gear_list_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_navigation_btn
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L3_1
return L0_1
