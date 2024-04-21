local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildResonanceToastDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearPropPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityEvolveBuildResonanceToastDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_EvolveBuild_ActivatedResonanceToast"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityEvolveBuildResonanceToastDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = true
  L1_2(L2_2)
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildSelectGearPropPanel
  L4_2 = G
  L4_2 = L4_2.BattleEvolveBuildSelectGearPropPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._weapon_prop_panel = L1_2
  L1_2 = A0_2._weapon_prop_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_prop_weapon
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildSelectGearPropPanel
  L4_2 = G
  L4_2 = L4_2.BattleEvolveBuildSelectGearPropPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._accessory_prop_panel = L1_2
  L1_2 = A0_2._accessory_prop_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_prop_accessory
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildSelectGearPropPanel
  L4_2 = G
  L4_2 = L4_2.BattleEvolveBuildSelectGearPropPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._forge_prop_panel = L1_2
  L1_2 = A0_2._forge_prop_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_prop_forge
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._dispose_callback = A1_2
  A0_2._dispose_callback_self = A2_2
end
L0_1.register_dispose_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.EvolveBuildModule
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityEvolveGearForgeMaterialExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.LastSelectGearID
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2._forge_prop_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_2.LastSelectGearID
  L3_2(L4_2, L5_2)
  L3_2 = L2_2.MaterialGearList
  L4_2 = L3_2
  L3_2 = L3_2.GetEnumerator
  L3_2 = L3_2(L4_2)
  while true do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L3_2.Current
    L4_2 = L4_2.Key
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ActivityEvolveBuildGearCollectionExcelTable
    L5_2 = L5_2.GetData
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = L5_2.Type
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.EvolveGearType
    L7_2 = L7_2.Tool
    if L6_2 == L7_2 then
      L6_2 = A0_2._weapon_prop_panel
      L7_2 = L6_2
      L6_2 = L6_2.setup_view
      L8_2 = L4_2
      L6_2(L7_2, L8_2)
    else
      L6_2 = L5_2.Type
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.EvolveGearType
      L7_2 = L7_2.Plugin
      if L6_2 == L7_2 then
        L6_2 = A0_2._accessory_prop_panel
        L7_2 = L6_2
        L6_2 = L6_2.setup_view
        L8_2 = L4_2
        L6_2(L7_2, L8_2)
      end
    end
  end
  L1_2.LastSelectGearID = nil
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L1_1
  L4_2(L5_2, L6_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._dispose_callback
  L3_2 = A0_2._dispose_callback_self
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = false
  L1_2(L2_2)
end
L0_1._on_dispose = L2_1
return L0_1
