local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Mix.BattleEvolveBuildMixPropPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearPropPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildMixPropPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsCsType
  L3_2 = L1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.BattleGamePhase
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._is_in_battle = L2_2
  L2_2 = G
  L2_2 = L2_2.ActivityEvolveBuildUtils
  L2_2 = L2_2.get_evolve_build_gear_manager
  L2_2 = L2_2()
  A0_2._evolve_build_manager = L2_2
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
  L3_2 = L3_2.root
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
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L3_3 = G
    L3_3 = L3_3.Utils
    L3_3 = L3_3.invoke_callback
    L4_3 = A0_2._on_navi_callback
    L5_3 = A0_2._on_navi_callback_self
    L6_3 = A0_3
    L7_3 = A1_3
    L8_3 = A2_3
    L9_3 = A0_2
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
  end
  L1_2.OnNaviHandler = L2_2
end
L0_1._on_load = L1_1
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
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2.gear_id = A1_2
  A0_2.index = A3_2
  L4_2 = A2_2 or L4_2
  if not A2_2 then
    L4_2 = false
  end
  A0_2._show_in_slot_detail = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ActivityEvolveBuildGearCollectionExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  A0_2._gear_collection_row = L4_2
  L4_2 = A0_2._gear_collection_row
  L4_2 = L4_2.Type
  A0_2.type = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._custom_setup_view
  L4_2(L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_lv
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_lv
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = A0_2._is_in_battle
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._is_in_battle
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_exclude_view
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._setup_got_view
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._setup_lv_view
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_root
  L5_2 = L4_2
  L4_2 = L4_2.ClearAnimationState
  L4_2(L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_root
  L1_2(L2_2)
end
L0_1.trigger_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._evolve_build_manager
  L3_2 = L2_2
  L2_2 = L2_2.HasGear
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_lv
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_lv
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 or L5_2
  if not L2_2 then
    L5_2 = A0_2._show_in_slot_detail
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._show_in_slot_detail
  if L3_2 then
    L3_2 = A0_2._gear_collection_row
    L3_2 = L3_2.Type
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.EvolveGearType
    L4_2 = L4_2.Forge
    if L3_2 == L4_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_lv
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
      return
    end
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.EvolveBuildUtils
    L3_2 = L3_2.GetGearLvToForge
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._evolve_build_manager
    L5_2 = L4_2
    L4_2 = L4_2.TryGetGearLevel
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.EvolveBuildUtils
    L5_2 = L5_2.GetGearForgeID
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L6_2 = A0_2._evolve_build_manager
      L7_2 = L6_2
      L6_2 = L6_2.HasGearOrPreAdd
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        L4_2 = L3_2
      end
    end
    L6_2 = A0_2._binder
    L6_2 = L6_2.txt_lv
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetText
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.txt_max_lv
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetText
    L8_2 = L3_2
    L6_2(L7_2, L8_2)
  elseif L2_2 then
    L3_2 = A0_2._evolve_build_manager
    L4_2 = L3_2
    L3_2 = L3_2.TryGetGearLevel
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 == 0 then
      L3_2 = 1
    end
    L4_2 = A0_2._gear_collection_row
    L4_2 = L4_2.Type
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.EvolveGearType
    L5_2 = L5_2.Forge
    if L4_2 == L5_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.txt_lv
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = "UIText_EvolveBuild_WeaponMax"
      L4_2(L5_2, L6_2)
    else
      L4_2 = A0_2._binder
      L4_2 = L4_2.txt_lv
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = "UIText_EvolveBuild_LevelUp"
      L7_2 = L3_2
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end
L0_1._setup_lv_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_got
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._show_in_slot_detail
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_got
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._evolve_build_manager
  L3_2 = L2_2
  L2_2 = L2_2.HasGear
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_got
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_got
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = G
  L5_2 = L5_2.ActivityEvolveBuildUtils
  L5_2 = L5_2.is_cost_to_forge
  L6_2 = A1_2
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_got_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_exclude
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._show_in_slot_detail
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_exclude
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._evolve_build_manager
  L3_2 = L2_2
  L2_2 = L2_2.HasLost
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_exclude
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_exclude_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_exclude
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._on_btn_root_callback
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._gear_collection_row
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogFormat
    L2_2 = "[hwx] self._gear_collection_row == nil GearID:"
    L3_2 = tostring
    L4_2 = A0_2.gear_id
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.ActivityEvolveBuildUtils
  L1_2 = L1_2.is_gear_collection_unlock
  L2_2 = A0_2._gear_collection_row
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2._prop_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._gear_collection_row
    L4_2 = L4_2.ID
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._prop_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_unknown_view
    L4_2 = A0_2._gear_collection_row
    L4_2 = L4_2.ID
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._prop_panel
  L3_2 = L2_2
  L2_2 = L2_2.enable_type_bg
  L4_2 = A0_2._show_in_slot_detail
  L2_2(L3_2, L4_2)
end
L0_1._custom_setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._on_btn_root_callback
  L3_2 = A0_2._on_btn_root_callback_self
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_navigation_btn = L1_1
return L0_1
