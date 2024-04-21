local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.RewardBox.BattleEvolveBuildWeaponUpPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearPropPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildWeaponUpPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_EvolveBuild_LevelUp"
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildSelectGearPropPanel
  L4_2 = G
  L4_2 = L4_2.BattleEvolveBuildSelectGearPropPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._prop_panel = L1_2
  L1_2 = A0_2._prop_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_prop_panel
  L1_2(L2_2, L3_2)
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
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ActivityEvolveBuildGearCollectionExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2.GearID
  L3_2 = L3_2(L4_2)
  A0_2._gear_collection_row = L3_2
  A0_2._cost_tool_level = A2_2
  L3_2 = A0_2._gear_collection_row
  L3_2 = L3_2.Type
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveGearType
  L4_2 = L4_2.Forge
  if L3_2 ~= L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_normal_view
    L5_2 = A1_2.GearID
    L6_2 = G
    L6_2 = L6_2.ActivityEvolveBuildUtils
    L6_2 = L6_2.get_evolve_build_gear_manager
    L6_2 = L6_2()
    L7_2 = L6_2
    L6_2 = L6_2.TryGetGearLevel
    L8_2 = A1_2.GearID
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = A1_2.PreLevel
    L7_2 = L7_2[1]
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.EvolveBuildUtils
    L3_2 = L3_2.GetGearMixData
    L4_2 = A1_2.GearID
    L3_2 = L3_2(L4_2)
    L5_2 = A0_2
    L4_2 = A0_2._setup_normal_view
    L6_2 = L3_2.WeaponID
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.EvolveBuildUtils
    L7_2 = L7_2.GetGearLvToForge
    L8_2 = L3_2.WeaponID
    L7_2 = L7_2(L8_2)
    L8_2 = L3_2.WeaponID
    L8_2 = A2_2[L8_2]
    L4_2(L5_2, L6_2, L7_2, L8_2)
    A0_2._need_to_change_forge = true
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._need_to_change_forge
  if L1_2 then
    A0_2._need_to_change_forge = false
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_root
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_forge_view
    L3_2 = A0_2._gear_collection_row
    L3_2 = L3_2.ID
    L1_2(L2_2, L3_2)
  end
end
L0_1.try_change_to_forge = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ActivityEvolveBuildGearCollectionExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._prop_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_weapon_name
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.Name
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_level_panel
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_max_panel
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_arrow
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A3_2 ~= nil
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_weapon_pre_lv
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A3_2 ~= nil
  L5_2(L6_2, L7_2)
  if A3_2 ~= nil then
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_weapon_pre_lv
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L1_1
    L8_2 = A3_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_weapon_cur_lv
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L1_1
  L8_2 = A2_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._setup_normal_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityEvolveBuildGearCollectionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._prop_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_weapon_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.Name
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_level_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_max_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1._setup_forge_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_navigation_btn = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._gear_collection_row
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.EvolveGearConfig
  L1_2 = L1_2()
  L2_2 = A0_2._gear_collection_row
  L2_2 = L2_2.ID
  L1_2.GearID = L2_2
  L2_2 = G
  L2_2 = L2_2.ActivityEvolveBuildUtils
  L2_2 = L2_2.get_evolve_build_gear_manager
  L2_2 = L2_2()
  L3_2 = L2_2
  L2_2 = L2_2.TryGetGearLevel
  L4_2 = A0_2._gear_collection_row
  L4_2 = L4_2.ID
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.Level = L2_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildDetailDialog"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_root = L2_1
return L0_1
