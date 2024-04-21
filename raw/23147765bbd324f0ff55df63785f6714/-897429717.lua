local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Battle.Pause.BattleEvolveBuildGearDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearDetailInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearTypePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Mix.BattleEvolveBuildMixListPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildGearDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1
L2_1 = 2
L3_1 = 3
L4_1 = "UIText_EvolveBuild_WeaponMax"
L5_1 = "UIText_EvolveBuild_LevelUp"
function L6_1(A0_2)
  local L1_2
end
L0_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L4_2 = A0_2._on_btn_empty_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildMixListPanel
  L4_2 = G
  L4_2 = L4_2.BattleEvolveBuildMixListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mix_list_panel = L1_2
  L1_2 = A0_2._mix_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mix_list
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._on_btn_root_callback = A1_2
  A0_2._on_btn_root_callback_self = A2_2
end
L0_1.register_on_btn_root_callback = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_state
  L4_2 = L1_1
  L2_2(L3_2, L4_2)
  A0_2._gear_config = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityEvolveBuildGearCollectionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.GearID
  L2_2 = L2_2(L3_2)
  A0_2._gear_collection_row = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityEvolveBuildGearExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._gear_row = L2_2
  L2_2 = A0_2._gear_row
  L3_2 = L2_2
  L2_2 = L2_2.GetMazeBuff
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.BuffName
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.ActivityEvolveBuildUtils
  L3_2 = L3_2.set_gear_name_color
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_name
  L5_2 = A0_2._gear_collection_row
  L5_2 = L5_2.Type
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_bg
  L5_2 = A0_2._gear_collection_row
  L5_2 = L5_2.Type
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_level
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_buff_desc
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_type
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_tags
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_damage_types
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_resonance
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_mix_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.weapon_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveGearType
  L4_2 = L4_2.Tool
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.accessory_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveGearType
  L4_2 = L4_2.Plugin
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.super_weapon_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveGearType
  L4_2 = L4_2.Forge
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.icon_weapon_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveGearType
  L4_2 = L4_2.Tool
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.icon_accessory_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveGearType
  L4_2 = L4_2.Plugin
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.icon_super_weapon_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveGearType
  L4_2 = L4_2.Forge
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_bg = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_level
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L5_1
    L4_2 = G
    L4_2 = L4_2.ActivityEvolveBuildUtils
    L4_2 = L4_2.get_gear_show_level
    L5_2 = A0_2._gear_config
    L5_2 = L5_2.GearID
    L4_2, L5_2 = L4_2(L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L0_1._setup_level = L6_1
function L6_1(A0_2)
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
L0_1.setup_buff_desc = L6_1
function L6_1(A0_2)
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
L0_1._setup_type = L6_1
function L6_1(A0_2)
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
L0_1._setup_tags = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._gear_collection_row
  L2_2 = L2_2.ElementList
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.damage_type_list
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.damage_type_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_damage_types = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._gear_collection_row
  L1_2 = L1_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EvolveGearType
  L2_2 = L2_2.Tool
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.ActivityEvolveGearForgeMaterialExcelTable
    L1_2 = L1_2.GetResonanceGearID
    L2_2 = A0_2._gear_collection_row
    L2_2 = L2_2.ID
    L1_2 = L1_2(L2_2)
    L2_2 = G
    L2_2 = L2_2.ActivityEvolveBuildUtils
    L2_2 = L2_2.get_evolve_build_gear_manager
    L2_2 = L2_2()
    L3_2 = L2_2
    L2_2 = L2_2.HasGearOrPreAdd
    L4_2 = L1_2
    L2_2 = L1_2 ~= nil and L2_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_resonance_gear
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_resonance_gear_name
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    if L2_2 then
      L4_2 = A0_2
      L3_2 = A0_2._setup_resonance_tips
      L5_2 = L1_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_resonance_tips
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = "UIText_EvolveBuild_ActivatedResonanceNotGet"
      L3_2(L4_2, L5_2)
    end
  else
    L1_2 = A0_2._gear_collection_row
    L1_2 = L1_2.Type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.EvolveGearType
    L2_2 = L2_2.Plugin
    if L1_2 == L2_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.EvolveBuildUtils
      L1_2 = L1_2.HasResonanceInPacket
      L2_2 = A0_2._gear_collection_row
      L2_2 = L2_2.ID
      L3_2 = 0
      L1_2 = L1_2(L2_2, L3_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.img_resonance_gear
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_resonance_gear_name
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
      if L1_2 then
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.EvolveBuildUtils
        L2_2 = L2_2.GetResonanceGearIDInPacket
        L3_2 = A0_2._gear_collection_row
        L3_2 = L3_2.ID
        L2_2 = L2_2(L3_2)
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.ActivityEvolveBuildGearCollectionExcelTable
        L3_2 = L3_2.GetData
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        L4_2 = L3_2.Type
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.GameCore
        L5_2 = L5_2.EvolveGearType
        L5_2 = L5_2.Forge
        if L4_2 == L5_2 then
          L4_2 = A0_2._binder
          L4_2 = L4_2.img_resonance_gear
          L5_2 = L4_2
          L4_2 = L4_2.SafeSetActive
          L6_2 = false
          L4_2(L5_2, L6_2)
          L4_2 = A0_2._binder
          L4_2 = L4_2.text_resonance_gear_name
          L5_2 = L4_2
          L4_2 = L4_2.SafeSetActive
          L6_2 = false
          L4_2(L5_2, L6_2)
          L4_2 = A0_2._binder
          L4_2 = L4_2.text_resonance_tips
          L5_2 = L4_2
          L4_2 = L4_2.SafeSetTextID
          L6_2 = "UIText_EvolveBuild_JewelryStatus01"
          L4_2(L5_2, L6_2)
        else
          L5_2 = A0_2
          L4_2 = A0_2._setup_resonance_tips
          L6_2 = L2_2
          L4_2(L5_2, L6_2)
        end
      else
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_resonance_tips
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = "UIText_EvolveBuild_ActivatedResonanceNotGet"
        L2_2(L3_2, L4_2)
      end
    else
      L1_2 = A0_2._gear_collection_row
      L1_2 = L1_2.Type
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.EvolveGearType
      L2_2 = L2_2.Forge
      if L1_2 == L2_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.text_resonance_tips
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetTextID
        L3_2 = "UIText_EvolveBuild_WeaponLevelUp"
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.img_resonance_gear
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = false
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.text_resonance_gear_name
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = false
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L0_1._setup_resonance = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityEvolveBuildGearCollectionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_resonance_gear
  L6_2 = L2_2.ItemIcon
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = nil
  L4_2 = G
  L4_2 = L4_2.ActivityEvolveBuildUtils
  L4_2 = L4_2.get_evolve_build_gear_manager
  L4_2 = L4_2()
  L4_2 = L4_2.PreAddGearID
  if A1_2 == L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ActivityEvolveBuildGearExcelTable
    L4_2 = L4_2.GetData
    L5_2 = A1_2
    L6_2 = 1
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ActivityEvolveBuildGearExcelTable
    L4_2 = L4_2.GetData
    L5_2 = A1_2
    L6_2 = G
    L6_2 = L6_2.ActivityEvolveBuildUtils
    L6_2 = L6_2.get_evolve_build_gear_manager
    L6_2 = L6_2()
    L7_2 = L6_2
    L6_2 = L6_2.TryGetGearLevel
    L8_2 = A1_2
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L3_2 = L4_2
  end
  L5_2 = L3_2
  L4_2 = L3_2.GetMazeBuff
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_resonance_gear_name
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.BuffName
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_resonance_tips
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = "UIText_EvolveBuild_ActivatedResonance"
  L5_2(L6_2, L7_2)
end
L0_1._setup_resonance_tips = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.EvolveBuildUtils
  L2_2 = L2_2.GetGearMixData
  L3_2 = A1_2.GearID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mix_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 ~= nil
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._mix_list_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = L2_2
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_mix_finish
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = G
    L5_2 = L5_2.ActivityEvolveBuildUtils
    L5_2 = L5_2.get_evolve_build_gear_manager
    L5_2 = L5_2()
    L6_2 = L5_2
    L5_2 = L5_2.HasGearOrPreAdd
    L7_2 = L2_2.ForgeID
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1._setup_mix_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_state
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EvolveGearTypeConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.imge_empty
  L6_2 = L2_2.TypeImg
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.EvolveGearType
  L3_2 = L3_2.Tool
  if A1_2 == L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_empty
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_EvolveBuild_WeaponUnlock"
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_empty
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_EvolveBuild_JewelryUnlock"
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_empty = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_state
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L0_1.setup_locked = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_empty_close
  L1_2(L2_2)
end
L0_1.trigger_empty_close = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L2_1
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_locked
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L3_1
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_1
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = 33
  L5_2 = A0_2._binder
  L5_2 = L5_2.scroll_rect_content
  L6_2 = "Root/DialogPanel/Root"
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_state = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._on_btn_root_callback
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._on_btn_root_callback
    L3_2 = A0_2._on_btn_root_callback_self
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_empty_close = L6_1
return L0_1
