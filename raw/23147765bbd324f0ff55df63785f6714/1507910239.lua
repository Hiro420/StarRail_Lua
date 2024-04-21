local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildGearDetailInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildGearDetailInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_EvolveBuild_WeaponMax"
L2_1 = "UIText_EvolveBuild_LevelUp"
function L3_1(A0_2)
  local L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._gear_config = A1_2
  A0_2._only_desc = A2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ActivityEvolveBuildGearCollectionExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2.GearID
  L3_2 = L3_2(L4_2)
  A0_2._gear_collection_row = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ActivityEvolveBuildGearExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A0_2._gear_row = L3_2
  L3_2 = A0_2._gear_row
  L4_2 = L3_2
  L3_2 = L3_2.GetMazeBuff
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.BuffName
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.ActivityEvolveBuildUtils
  L4_2 = L4_2.set_gear_name_color
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_name
  L6_2 = A0_2._gear_collection_row
  L6_2 = L6_2.Type
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_level
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.setup_buff_desc
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_type
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_tags
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_damage_types
  L4_2(L5_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._only_desc
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._only_desc
  if L1_2 then
    return
  end
  L1_2 = A0_2._gear_row
  L1_2 = L1_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EvolveGearType
  L2_2 = L2_2.Forge
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_level
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_level
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L2_1
    L4_2 = 1
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_level = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._gear_type_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.BattleEvolveBuildSelectGearTypePanel
    L4_2 = G
    L4_2 = L4_2.BattleEvolveBuildSelectGearTypePanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._gear_type_panel = L1_2
    L1_2 = A0_2._gear_type_panel
    L2_2 = L1_2
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_type
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._gear_type_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._gear_collection_row
  L3_2 = L3_2.Type
  L1_2(L2_2, L3_2)
end
L0_1._setup_type = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._gear_collection_row
  L2_2 = L2_2.TagList
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_tags
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_tags
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L6_2
    L6_2 = L6_2.setup_connect_view
    L8_2 = A0_2._gear_collection_row
    L8_2 = L8_2.Type
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_tags = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._gear_collection_row
  L2_2 = L2_2.ElementList
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.ActivityEvolveBuildUtils
  L2_2 = L2_2.set_damage_type_view
  L3_2 = A0_2._gear_collection_row
  L3_2 = L3_2.ID
  L4_2 = A0_2._binder
  L4_2 = L4_2.damage_type_list
  L5_2 = L1_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_random_damage
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_damage_types = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityEvolveBuildGearExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._gear_config
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.GetMazeBuff
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.EvolveBuildUtils
  L3_2 = L3_2.SetMazeBuffDesc
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_desc
  L5_2 = L2_2
  L6_2 = false
  L7_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.setup_buff_desc = L3_1
return L0_1
