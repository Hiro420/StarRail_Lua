local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Mix.BattleEvolveBuildMixConditionItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearPropPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildMixConditionItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.ActivityEvolveBuildUtils
  L1_2 = L1_2.get_evolve_build_gear_manager
  L1_2 = L1_2()
  A0_2._evolve_build_manager = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
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
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._prop_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityEvolveBuildGearCollectionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._gear_collection_row = L2_2
  L2_2 = G
  L2_2 = L2_2.ActivityEvolveBuildUtils
  L2_2 = L2_2.is_gear_collection_unlock
  L3_2 = A0_2._gear_collection_row
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_gear_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  if L2_2 then
    L5_2 = A0_2._gear_collection_row
    L5_2 = L5_2.Name
    if L5_2 then
      goto lbl_28
    end
  end
  L5_2 = "UIText_EvolveBuild_HandbookUnlockName"
  ::lbl_28::
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_text_level
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.EvolveBuildUtils
    L3_2 = L3_2.GetGearLvToForge
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_max_lv
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = 0
    L5_2 = A0_2._evolve_build_manager
    if L5_2 then
      L5_2 = A0_2._evolve_build_manager
      L6_2 = L5_2
      L5_2 = L5_2.TryGetGearLevel
      L7_2 = A1_2
      L5_2 = L5_2(L6_2, L7_2)
      L4_2 = L5_2
      L5_2 = G
      L5_2 = L5_2.ActivityEvolveBuildUtils
      L5_2 = L5_2.is_cost_to_forge
      L6_2 = A1_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.Client
        L5_2 = L5_2.EvolveBuildUtils
        L5_2 = L5_2.GetGearLvToForge
        L6_2 = A1_2
        L5_2 = L5_2(L6_2)
        L4_2 = L5_2
      end
    end
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_cur_lv
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetText
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
end
L0_1.setup_view = L1_1
return L0_1
