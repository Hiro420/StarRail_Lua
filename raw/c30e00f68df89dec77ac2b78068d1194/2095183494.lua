local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.Collection.EvolveBuildCollectionGearDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearPropPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearTypePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.BuffUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Mix.BattleEvolveBuildMixConditionItemPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildCollectionGearDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_EvolveBuild_WeaponLevel"
L2_1 = "UIText_EvolveBuild_HandbookUnlockTips"
L3_1 = "UIText_EvolveBuild_HandbookUnlockName"
L4_1 = "UIText_EvolveBuild_HandbookUnlockDesc"
L5_1 = "UIText_EvolveBuild_HandbookUnlockDesc01"
L6_1 = {}
L6_1.Not_Got = 1
L6_1.Not_Unlock = 2
L6_1.Active = 3
L6_1.Forge = 4
function L7_1(A0_2)
  local L1_2
end
L0_1.ctor = L7_1
function L7_1(A0_2)
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
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildSelectGearTypePanel
  L4_2 = G
  L4_2 = L4_2.BattleEvolveBuildSelectGearTypePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._type_panel = L1_2
  L1_2 = A0_2._type_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_type_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildMixConditionItemPanel
  L4_2 = G
  L4_2 = L4_2.BattleEvolveBuildMixConditionItemPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._condition_weapon_panel = L1_2
  L1_2 = A0_2._condition_weapon_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_condition_weapon_item
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildMixConditionItemPanel
  L4_2 = G
  L4_2 = L4_2.BattleEvolveBuildMixConditionItemPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._condition_accessory_panel = L1_2
  L1_2 = A0_2._condition_accessory_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_condition_accessory_item
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._collection_gear = A1_2
  A0_2._gear_level = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_level_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.tag_list
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A0_2._collection_gear
  L4_2 = L4_2.IsUnlocked
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.desc_list
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A0_2._collection_gear
  L4_2 = L4_2.IsCollected
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.element_list
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A0_2._collection_gear
  L4_2 = L4_2.IsUnlocked
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_random_damage
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._collection_gear
  L4_2 = L4_2.IsUnlocked
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._type_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._collection_gear
  L4_2 = L4_2.GearType
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_condition_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EvolveGearTypeConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._collection_gear
  L3_2 = L3_2.GearType
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_type_bg
  L6_2 = L2_2.MixDetailPropsInfoBg
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._collection_gear
  L3_2 = L3_2.IsUnlocked
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_unlock_view
    L3_2(L4_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._setup_locked_view
    L3_2(L4_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect_detail
  L4_2 = L3_2
  L3_2 = L3_2.SetVerticalScrollPercent
  L5_2 = 1
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_scroll_content
  L4_2 = L4_2.transform
  L3_2(L4_2)
end
L0_1.setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._prop_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._collection_gear
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._collection_gear
  L2_2 = L2_2.TagIDs
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.tag_list
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = #L1_2
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.tag_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = A0_2._collection_gear
  L3_2 = L3_2.Elements
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.ActivityEvolveBuildUtils
  L3_2 = L3_2.set_damage_type_view
  L4_2 = A0_2._collection_gear
  L4_2 = L4_2.ID
  L5_2 = A0_2._binder
  L5_2 = L5_2.element_list
  L6_2 = L2_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_random_damage
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._collection_gear
  L3_2 = L3_2.IsCollected
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_desc_panel_view
    L3_2(L4_2)
  end
  L3_2 = G
  L3_2 = L3_2.BuffUtils
  L3_2 = L3_2.GetMazeBuffData
  L4_2 = A0_2._collection_gear
  L4_2 = L4_2.ID
  L5_2 = A0_2._gear_level
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_gear_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A0_2._collection_gear
  L6_2 = L6_2.Name
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.ActivityEvolveBuildUtils
  L4_2 = L4_2.set_gear_name_color
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_gear_name
  L6_2 = A0_2._collection_gear
  L6_2 = L6_2.GearType
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.EvolveBuildUtils
  L4_2 = L4_2.SetMazeBuffDesc
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_gear_desc
  L6_2 = L3_2
  L7_2 = false
  L8_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_tips_view
  L6_2 = A0_2._collection_gear
  L6_2 = L6_2.IsCollected
  if L6_2 then
    L6_2 = L6_1.Active
    if L6_2 then
      goto lbl_90
    end
  end
  L6_2 = L6_1.Not_Got
  ::lbl_90::
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_condition_view
  L4_2(L5_2)
end
L0_1._setup_unlock_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._set_tips_view
  L3_2 = L6_1.Not_Unlock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._prop_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_unknown_view
  L3_2 = A0_2._collection_gear
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_gear_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.QuestDataExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._collection_gear
  L2_2 = L2_2.UnlockQuest
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.FinishWayExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.FinishWayID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_gear_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L1_2.QuestTitle
  L6_2 = L2_2.ParamInt1
  L7_2 = L2_2.ParamInt2
  L8_2 = L2_2.ParamInt3
  L9_2 = L2_2.Progress
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._setup_locked_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityEvolveBuildGearCollectionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._collection_gear
  L3_2 = L3_2.ID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._gear_level
  L3_2 = L3_2 + 1
  L4_2 = L2_2.LvMax
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.MazeBuffExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L2_2.ID
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.desc_list
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = #L1_2
  L5_2 = 0 < L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.desc_list
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.ActivityEvolveBuildUtils
  L3_2 = L3_2.get_evolve_build_gear_manager
  L3_2 = L3_2()
  if L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.TryGetGearLevel
    L6_2 = A0_2._collection_gear
    L6_2 = L6_2.ID
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      goto lbl_58
    end
  end
  L4_2 = 0
  ::lbl_58::
  L5_2 = A0_2._gear_level
  L5_2 = L5_2 + 1
  L6_2 = L2_2.LvMax
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2._binder
    L9_2 = L9_2.desc_list
    L10_2 = L9_2
    L9_2 = L9_2.get_panel_by_index
    L11_2 = A0_2._gear_level
    L11_2 = L8_2 - L11_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L9_2
    L9_2 = L9_2.set_text_active
    L11_2 = L8_2 <= L4_2
    L9_2(L10_2, L11_2)
  end
end
L0_1._setup_desc_panel_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L6_1.Active
  L4_2 = A1_2 ~= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_active_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_unactive_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L6_1.Active
  L4_2 = A1_2 ~= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_unactive_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L6_1.Not_Unlock
  if A1_2 == L4_2 then
    L4_2 = L5_1
    if L4_2 then
      goto lbl_34
    end
  end
  L4_2 = L4_1
  ::lbl_34::
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_exclude_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._set_tips_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_condition_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._collection_gear
  L3_2 = L3_2.GearType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveGearType
  L4_2 = L4_2.Forge
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._collection_gear
  L1_2 = L1_2.GearType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EvolveGearType
  L2_2 = L2_2.Forge
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.EvolveBuildUtils
    L1_2 = L1_2.GetGearMixData
    L2_2 = A0_2._collection_gear
    L2_2 = L2_2.ID
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._condition_weapon_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = L1_2.WeaponID
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._condition_accessory_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = L1_2.AccessoryID
    L2_2(L3_2, L4_2)
  end
end
L0_1._set_condition_view = L7_1
return L0_1
