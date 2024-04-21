local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Mix.BattleEvolveBuildMixListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Mix.BattleEvolveBuildMixPropPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildMixListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildMixPropPanel
  L4_2 = G
  L4_2 = L4_2.BattleEvolveBuildMixPropPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._weapon_prop_panel = L1_2
  L1_2 = A0_2._weapon_prop_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_weapon
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._weapon_prop_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_on_btn_root_callback
  L3_2 = A0_2._on_btn_root_callback
  L4_2 = A0_2._on_btn_root_callback_self
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._weapon_prop_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_on_navi_callback
  L3_2 = A0_2._on_navi_callback
  L4_2 = A0_2._on_navi_callback_self
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildMixPropPanel
  L4_2 = G
  L4_2 = L4_2.BattleEvolveBuildMixPropPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._accessory_prop_panel = L1_2
  L1_2 = A0_2._accessory_prop_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_accessory
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._accessory_prop_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_on_btn_root_callback
  L3_2 = A0_2._on_btn_root_callback
  L4_2 = A0_2._on_btn_root_callback_self
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._accessory_prop_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_on_navi_callback
  L3_2 = A0_2._on_navi_callback
  L4_2 = A0_2._on_navi_callback_self
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildMixPropPanel
  L4_2 = G
  L4_2 = L4_2.BattleEvolveBuildMixPropPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._forge_prop_panel = L1_2
  L1_2 = A0_2._forge_prop_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_forge
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._forge_prop_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_on_btn_root_callback
  L3_2 = A0_2._on_btn_root_callback
  L4_2 = A0_2._on_btn_root_callback_self
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._forge_prop_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_on_navi_callback
  L3_2 = A0_2._on_navi_callback
  L4_2 = A0_2._on_navi_callback_self
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.TutorialSupportModule
  L5_2 = L4_2
  L4_2 = L4_2.SetNodeDynamicKey
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  L6_2 = L6_2.gameObject
  L7_2 = A1_2.ForgeID
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._weapon_prop_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A1_2.WeaponID
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._accessory_prop_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A1_2.AccessoryID
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._forge_prop_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A1_2.ForgeID
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.TutorialSupportModule
  L5_2 = L4_2
  L4_2 = L4_2.SetNodeDynamicKey
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  L6_2 = L6_2.gameObject
  L7_2 = A1_2.ForgeID
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._weapon_prop_panel
  L2_2 = L1_2
  L1_2 = L1_2.trigger_click
  L1_2(L2_2)
end
L0_1.trigger_weapon_click = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.EvolveGearType
  L3_2 = L3_2.Tool
  if A1_2 == L3_2 then
    L3_2 = A0_2._weapon_prop_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_checked
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.EvolveGearType
    L3_2 = L3_2.Plugin
    if A1_2 == L3_2 then
      L3_2 = A0_2._accessory_prop_panel
      L4_2 = L3_2
      L3_2 = L3_2.set_checked
      L5_2 = A2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.EvolveGearType
      L3_2 = L3_2.Forge
      if A1_2 == L3_2 then
        L3_2 = A0_2._forge_prop_panel
        L4_2 = L3_2
        L3_2 = L3_2.set_checked
        L5_2 = A2_2
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L0_1.set_checked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._weapon_prop_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_navigation_target
  return L1_2(L2_2)
end
L0_1.get_navigation_btn = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EvolveGearType
  L2_2 = L2_2.Tool
  if A1_2 == L2_2 then
    L2_2 = A0_2._weapon_prop_panel
    L3_2 = L2_2
    L2_2 = L2_2.get_navigation_btn
    return L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.EvolveGearType
    L2_2 = L2_2.Plugin
    if A1_2 == L2_2 then
      L2_2 = A0_2._accessory_prop_panel
      L3_2 = L2_2
      L2_2 = L2_2.get_navigation_btn
      return L2_2(L3_2)
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.EvolveGearType
      L2_2 = L2_2.Forge
      if A1_2 == L2_2 then
        L2_2 = A0_2._forge_prop_panel
        L3_2 = L2_2
        L2_2 = L2_2.get_navigation_btn
        return L2_2(L3_2)
      end
    end
  end
end
L0_1.get_btn = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  return L1_2
end
L0_1.get_root = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_btn_root_callback = A1_2
  A0_2._on_btn_root_callback_self = A2_2
end
L0_1.register_on_btn_root_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_navi_callback = A1_2
  A0_2._on_navi_callback_self = A2_2
end
L0_1.register_on_navi_callback = L1_1
return L0_1
