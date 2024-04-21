local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearPropPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildSelectGearPropPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 0.4
L2_1 = 0.5
L3_1 = "#000000"
L4_1 = "#ffffff"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityEvolveBuildGearCollectionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._gear_collection_row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = A0_2._gear_collection_row
  L5_2 = L5_2.ItemIcon
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_icon
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColorWithAlpha
  L4_2 = L4_1
  L5_2 = 1
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.color = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_unknown
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._custom_setup_view
  L2_2(L3_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityEvolveBuildGearCollectionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._gear_collection_row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = A0_2._gear_collection_row
  L5_2 = L5_2.ItemIcon
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_icon
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColorWithAlpha
  L4_2 = L3_1
  L5_2 = L1_1
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.color = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_unknown
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._custom_setup_view
  L2_2(L3_2)
end
L0_1.setup_unknown_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityEvolveBuildGearCollectionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._gear_collection_row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = A0_2._gear_collection_row
  L5_2 = L5_2.ItemIcon
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_icon
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColorWithAlpha
  L4_2 = L4_1
  L5_2 = L2_1
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.color = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_unknown
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._custom_setup_view
  L2_2(L3_2)
end
L0_1.setup_not_collected_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reward_effect_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._effect_go
  if L1_2 then
    L1_2 = A0_2._effect_go
    L1_2 = L1_2.transform
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._gear_collection_row
  if L1_2 ~= nil then
    L1_2 = A0_2._gear_collection_row
    L1_2 = L1_2.Type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.EvolveGearType
    L2_2 = L2_2.Tool
    if L1_2 == L2_2 then
      L1_2 = A0_2._pre_effect_type
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.EvolveGearType
      L2_2 = L2_2.Tool
      if L1_2 ~= L2_2 then
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.GameCore
        L1_2 = L1_2.EvolveGearType
        L1_2 = L1_2.Tool
        A0_2._pre_effect_type = L1_2
        L2_2 = A0_2
        L1_2 = A0_2.instantiate_object
        L3_2 = A0_2._binder
        L3_2 = L3_2.prefab_load_meta_reward_effect
        L3_2 = L3_2.MultiPrefabList
        L3_2 = L3_2[0]
        L4_2 = A0_2._binder
        L4_2 = L4_2.node_reward_effect_root
        L1_2 = L1_2(L2_2, L3_2, L4_2)
        A0_2._effect_go = L1_2
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
        L1_2 = A0_2._pre_effect_type
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.GameCore
        L2_2 = L2_2.EvolveGearType
        L2_2 = L2_2.Plugin
        if L1_2 ~= L2_2 then
          L1_2 = CS
          L1_2 = L1_2.RPG
          L1_2 = L1_2.GameCore
          L1_2 = L1_2.EvolveGearType
          L1_2 = L1_2.Plugin
          A0_2._pre_effect_type = L1_2
          L2_2 = A0_2
          L1_2 = A0_2.instantiate_object
          L3_2 = A0_2._binder
          L3_2 = L3_2.prefab_load_meta_reward_effect
          L3_2 = L3_2.MultiPrefabList
          L3_2 = L3_2[1]
          L4_2 = A0_2._binder
          L4_2 = L4_2.node_reward_effect_root
          L1_2 = L1_2(L2_2, L3_2, L4_2)
          A0_2._effect_go = L1_2
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
          L1_2 = A0_2._pre_effect_type
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.GameCore
          L2_2 = L2_2.EvolveGearType
          L2_2 = L2_2.Forge
          if L1_2 ~= L2_2 then
            L1_2 = CS
            L1_2 = L1_2.RPG
            L1_2 = L1_2.GameCore
            L1_2 = L1_2.EvolveGearType
            L1_2 = L1_2.Forge
            A0_2._pre_effect_type = L1_2
            L2_2 = A0_2
            L1_2 = A0_2.instantiate_object
            L3_2 = A0_2._binder
            L3_2 = L3_2.prefab_load_meta_reward_effect
            L3_2 = L3_2.MultiPrefabList
            L3_2 = L3_2[2]
            L4_2 = A0_2._binder
            L4_2 = L4_2.node_reward_effect_root
            L1_2 = L1_2(L2_2, L3_2, L4_2)
            A0_2._effect_go = L1_2
          end
        end
      end
    end
  else
    L1_2 = A0_2._pre_effect_type
    if L1_2 ~= "coin" then
      A0_2._pre_effect_type = "coin"
      L2_2 = A0_2
      L1_2 = A0_2.instantiate_object
      L3_2 = A0_2._binder
      L3_2 = L3_2.prefab_load_meta_reward_effect
      L3_2 = L3_2.MultiPrefabList
      L3_2 = L3_2[3]
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_reward_effect_root
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      A0_2._effect_go = L1_2
    end
  end
  L1_2 = A0_2._effect_go
  if L1_2 then
    L1_2 = A0_2._effect_go
    L1_2 = L1_2.transform
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1.setup_reward_effect_bg = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_accessory
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 or L4_2
  if A1_2 then
    L4_2 = A0_2._gear_collection_row
    L4_2 = L4_2.Type
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.EvolveGearType
    L5_2 = L5_2.Plugin
    L4_2 = L4_2 == L5_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_super_weapon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 or L4_2
  if A1_2 then
    L4_2 = A0_2._gear_collection_row
    L4_2 = L4_2.Type
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.EvolveGearType
    L5_2 = L5_2.Forge
    L4_2 = L4_2 == L5_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_weapon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 or L4_2
  if A1_2 then
    L4_2 = A0_2._gear_collection_row
    L4_2 = L4_2.Type
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.EvolveGearType
    L5_2 = L5_2.Tool
    L4_2 = L4_2 == L5_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_other_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.enable_type_bg = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.enable_type_bg
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_super_weapon_glow
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._gear_collection_row
  L3_2 = L3_2.Type
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveGearType
  L4_2 = L4_2.Forge
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_normal_glow
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._gear_collection_row
  L3_2 = L3_2.Type
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveGearType
  L4_2 = L4_2.Forge
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reward_effect_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._custom_setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.enable_type_bg
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_super_weapon_glow
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_normal_glow
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.EvolveBuildModule
  L1_2 = L1_2.CoinCurrencyIconPath
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_unknown
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_reward_effect_bg
  L2_2(L3_2)
end
L0_1.setup_coin_view = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._btn_action = A1_2
  A0_2._btn_action_self = A2_2
  A0_2._btn_action_param = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._bind_btn_callback
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn
  L7_2 = A0_2._btn_callback
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.on_click = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A1_2
    if L0_3 then
      L0_3 = A2_2
      if L0_3 then
        L0_3 = A1_2
        L1_3 = A2_2
        L2_3 = A3_2
        L0_3(L1_3, L2_3)
      end
    end
  end
  L4_2.onSelectTrigger = L5_2
end
L0_1.on_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._btn_action
  if L1_2 then
    L1_2 = A0_2._btn_action_self
    if L1_2 then
      L1_2 = A0_2._btn_action
      L2_2 = A0_2._btn_action_self
      L3_2 = A0_2._btn_action_param
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._btn_callback = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2 == true
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._effect_go
  if L1_2 then
    A0_2._pre_effect_type = nil
    L2_2 = A0_2
    L1_2 = A0_2.destroy_object
    L3_2 = A0_2._effect_go
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_dispose = L5_1
return L0_1
