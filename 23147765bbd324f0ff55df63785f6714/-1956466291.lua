local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearTagPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectTagIconPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildSelectGearTagPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L6_2 = A0_2
  L5_2 = A0_2._set_bg_active
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_tag_name
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  A0_2._tag = A1_2
  L6_2 = A0_2
  L5_2 = A0_2._setup_tag_view
  L5_2(L6_2)
  A0_2._on_btn_root_callback = A2_2
  A0_2._on_btn_root_callback_self = A4_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._gear_type = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_connect_view
  L2_2(L3_2)
end
L0_1.setup_connect_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_active_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_bg_active = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = type
  L2_2 = A0_2._tag
  L1_2 = L1_2(L2_2)
  if L1_2 == "number" then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.EvolveBuildTagConfigExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._tag
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_tag_name
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L1_2.Name
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_tag_name
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
    L2_2 = A0_2._tag_icon_panel
    if L2_2 == nil then
      L3_2 = A0_2
      L2_2 = A0_2.instantiate_object
      L4_2 = A0_2._binder
      L4_2 = L4_2.prefab_load_meta_icon
      L4_2 = L4_2.MultiPrefabList
      L4_2 = L4_2[0]
      L5_2 = A0_2._binder
      L5_2 = L5_2.prefab_load_meta_icon
      L5_2 = L5_2.transform
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2.create_panel
      L5_2 = G
      L5_2 = L5_2.BattleEvolveBuildSelectTagIconPanel
      L6_2 = G
      L6_2 = L6_2.BattleEvolveBuildSelectTagIconPanelBinder
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      A0_2._tag_icon_panel = L3_2
      L3_2 = A0_2._tag_icon_panel
      L4_2 = L3_2
      L3_2 = L3_2.bind
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
    L2_2 = A0_2._tag_icon_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = L1_2.IconPath
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._damage_type_panel
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.destroy_object
      L4_2 = A0_2._damage_type_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_root_transform
      L4_2 = L4_2(L5_2)
      L4_2 = L4_2.gameObject
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
      A0_2._damage_type_panel = nil
    end
  else
    L1_2 = A0_2._damage_type_panel
    if L1_2 == nil then
      L2_2 = A0_2
      L1_2 = A0_2.instantiate_object
      L3_2 = A0_2._binder
      L3_2 = L3_2.prefab_load_meta_icon
      L3_2 = L3_2.MultiPrefabList
      L3_2 = L3_2[1]
      L4_2 = A0_2._binder
      L4_2 = L4_2.prefab_load_meta_icon
      L4_2 = L4_2.transform
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.create_panel
      L4_2 = "Ui.Monster.MonsterDamageTypePanel"
      L5_2 = "Ui.Monster.MonsterDamageTypePanelBinder"
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      A0_2._damage_type_panel = L2_2
      L2_2 = A0_2._damage_type_panel
      L3_2 = L2_2
      L2_2 = L2_2.bind
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
    L1_2 = A0_2._damage_type_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._tag
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._tag_icon_panel
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.destroy_object
      L3_2 = A0_2._tag_icon_panel
      L4_2 = L3_2
      L3_2 = L3_2.get_root_transform
      L3_2 = L3_2(L4_2)
      L3_2 = L3_2.gameObject
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
      A0_2._tag_icon_panel = nil
    end
  end
end
L0_1._setup_tag_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = G
  L1_2 = L1_2.ActivityEvolveBuildUtils
  L1_2 = L1_2.get_evolve_build_gear_manager
  L1_2 = L1_2()
  if L1_2 == nil then
    return
  end
  L2_2 = nil
  L3_2 = A0_2._gear_type
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveGearType
  L4_2 = L4_2.Tool
  if L3_2 ~= L4_2 then
    L3_2 = A0_2._gear_type
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.EvolveGearType
    L4_2 = L4_2.Forge
    if L3_2 ~= L4_2 then
      goto lbl_34
    end
  end
  L4_2 = L1_2
  L3_2 = L1_2.GetAllEquippedGear
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.EvolveGearType
  L5_2 = L5_2.Plugin
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L3_2
  goto lbl_47
  ::lbl_34::
  L4_2 = L1_2
  L3_2 = L1_2.GetAllEquippedGear
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.EvolveGearType
  L5_2 = L5_2.Tool
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.EvolveGearType
  L6_2 = L6_2.Forge
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2 = L3_2
  ::lbl_47::
  if L2_2 == nil then
    return
  end
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = false
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.ActivityEvolveBuildGearCollectionExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L2_2[L6_2]
    L9_2 = L9_2.GearConfig
    L9_2 = L9_2.GearID
    L8_2 = L8_2(L9_2)
    L9_2 = type
    L10_2 = A0_2._tag
    L9_2 = L9_2(L10_2)
    if L9_2 == "number" then
      L9_2 = G
      L9_2 = L9_2.Utils
      L9_2 = L9_2.create_lua_table_from_cs_array
      L10_2 = L8_2.TagList
      L9_2 = L9_2(L10_2)
      L10_2 = 1
      L11_2 = #L9_2
      L12_2 = 1
      for L13_2 = L10_2, L11_2, L12_2 do
        L14_2 = L9_2[L13_2]
        L15_2 = A0_2._tag
        if L14_2 == L15_2 then
          L7_2 = true
          break
        end
      end
    else
      L9_2 = G
      L9_2 = L9_2.Utils
      L9_2 = L9_2.create_lua_table_from_cs_array
      L10_2 = L8_2.ElementList
      L9_2 = L9_2(L10_2)
      L10_2 = 1
      L11_2 = #L9_2
      L12_2 = 1
      for L13_2 = L10_2, L11_2, L12_2 do
        L14_2 = L9_2[L13_2]
        L15_2 = A0_2._tag
        if L14_2 == L15_2 then
          L7_2 = true
          break
        end
      end
    end
    if L7_2 then
      L10_2 = A0_2
      L9_2 = A0_2._set_bg_active
      L11_2 = true
      L9_2(L10_2, L11_2)
    end
  end
end
L0_1._setup_connect_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._on_btn_root_callback
  L3_2 = A0_2._on_btn_root_callback_self
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_root = L1_1
return L0_1
