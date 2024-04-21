local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectBaseSlotPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearPropPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildSelectBaseSlotPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1
L2_1 = 2
L3_1 = 3
L4_1 = "UIText_EvolveBuild_WeaponLevel"
L5_1 = "UIText_EvolveBuild_New"
L6_1 = "UIText_EvolveBuild_WeaponMax"
L7_1 = "UI_EvolveOrnamentSlotItem_LevelUp"
L8_1 = "UI_EvolveOrnamentSlotItem_FirstGet"
L9_1 = "UI_EvolveOrnamentSlotItem_PreGet"
L10_1 = "UI_EvolveOrnamentSlotItem_PreGet_Loop"
L11_1 = "UI_EvolveOrnamentSlotItem_Default"
L12_1 = "EchoAble"
L13_1 = "EchoActived"
L14_1 = "GradUpAble"
L15_1 = "Default"
function L16_1(A0_2)
  local L1_2
end
L0_1.ctor = L16_1
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
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
  L3_2 = L3_2.node_prop
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root
    L0_3(L1_3)
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
L0_1._on_load = L16_1
function L16_1(A0_2, A1_2, A2_2)
  A0_2._btn_root_callback = A1_2
  A0_2._btn_root_callback_self = A2_2
end
L0_1.register_btn_root_callback = L16_1
function L16_1(A0_2, A1_2)
  A0_2._detail_panel = A1_2
end
L0_1.register_detail_panel = L16_1
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._equip_info = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityEvolveBuildGearCollectionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.GearConfig
  L3_2 = L3_2.GearID
  L2_2 = L2_2(L3_2)
  A0_2._gear_collection_row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_text_lv
  L2_2(L3_2)
  L2_2 = A0_2._prop_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2.GearConfig
  L4_2 = L4_2.GearID
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  A0_2._state = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._common_setup_view
  L2_2(L3_2)
end
L0_1.setup_view = L16_1
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.ActivityEvolveBuildUtils
  L1_2 = L1_2.is_pre_add_new_gear
  L2_2 = A0_2._equip_info
  L2_2 = L2_2.GearConfig
  L2_2 = L2_2.GearID
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_lv
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L5_1
    L1_2(L2_2, L3_2)
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
      L1_2 = L1_2.text_lv
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = L6_1
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_lv
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = L4_1
      L4_2 = G
      L4_2 = L4_2.ActivityEvolveBuildUtils
      L4_2 = L4_2.get_gear_show_level
      L5_2 = A0_2._equip_info
      L5_2 = L5_2.GearConfig
      L5_2 = L5_2.GearID
      L4_2, L5_2 = L4_2(L5_2)
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
end
L0_1._setup_text_lv = L16_1
function L16_1(A0_2, A1_2)
  local L2_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_lv
  L2_2.color = A1_2
end
L0_1.set_level_text_color = L16_1
function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._gear_type = A1_2
  A0_2._equip_info = nil
  L2_2 = L2_1
  A0_2._state = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._common_setup_view
  L2_2(L3_2)
end
L0_1.setup_empty = L16_1
function L16_1(A0_2)
  local L1_2, L2_2
  A0_2._equip_info = nil
  L1_2 = L3_1
  A0_2._state = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._common_setup_view
  L1_2(L2_2)
end
L0_1.setup_locked = L16_1
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.ActivityEvolveBuildUtils
  L1_2 = L1_2.get_evolve_build_gear_manager
  L1_2 = L1_2()
  L1_2 = L1_2.PreAddGearID
  L2_2 = A0_2._equip_info
  L2_2 = L2_2 ~= nil
  L3_2 = A0_2._equip_info
  if L3_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.EvolveBuildUtils
    L3_2 = L3_2.GetResonanceGearIDInPacket
    L4_2 = A0_2._equip_info
    L4_2 = L4_2.GearConfig
    L4_2 = L4_2.GearID
    L3_2 = L3_2(L4_2)
    if L3_2 == L1_2 then
      L3_2 = G
      L3_2 = L3_2.ActivityEvolveBuildUtils
      L3_2 = L3_2.get_gear_show_level
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      if L3_2 == 1 then
        L4_2 = A0_2
        L3_2 = A0_2._set_eff_trigger
        L5_2 = L12_1
        L3_2(L4_2, L5_2)
      end
    end
  end
  if L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayFromBegin
    L4_2 = A0_2._binder
    L4_2 = L4_2.anim_root
    L5_2 = L9_1
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_root
    L4_2 = L3_2
    L3_2 = L3_2.PlayQueued
    L5_2 = L10_1
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._gear_collection_row
    L3_2 = L3_2.Type
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.EvolveGearType
    L4_2 = L4_2.Forge
    if L3_2 == L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2._set_eff_trigger
      L5_2 = L14_1
      L3_2(L4_2, L5_2)
    else
      L3_2 = G
      L3_2 = L3_2.ActivityEvolveBuildUtils
      L3_2 = L3_2.get_gear_show_level
      L4_2 = A0_2._equip_info
      L4_2 = L4_2.GearConfig
      L4_2 = L4_2.GearID
      L3_2 = L3_2(L4_2)
      if L3_2 == 1 then
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.EvolveBuildUtils
        L3_2 = L3_2.HasResonanceInPacket
        L4_2 = A0_2._gear_collection_row
        L4_2 = L4_2.ID
        L5_2 = 0
        L3_2 = L3_2(L4_2, L5_2)
        if L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2._set_eff_trigger
          L5_2 = L12_1
          L3_2(L4_2, L5_2)
        end
      end
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_lv
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = "#FFCF70"
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayFromBegin
    L4_2 = A0_2._binder
    L4_2 = L4_2.anim_root
    L5_2 = L11_1
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_lv
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = "#FFFFFF"
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  end
end
L0_1.refresh_animation = L16_1
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator_eff_root
  L3_2 = L2_2
  L2_2 = L2_2.ResetTrigger
  L4_2 = L12_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator_eff_root
  L3_2 = L2_2
  L2_2 = L2_2.ResetTrigger
  L4_2 = L13_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator_eff_root
  L3_2 = L2_2
  L2_2 = L2_2.ResetTrigger
  L4_2 = L14_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator_eff_root
  L3_2 = L2_2
  L2_2 = L2_2.ResetTrigger
  L4_2 = L15_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator_eff_root
  L3_2 = L2_2
  L2_2 = L2_2.SetTrigger
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._equip_info
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormat
    L3_2 = "[hwx] empty slot, _set_eff_trigger:"
    L4_2 = tostring
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
  else
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormat
    L3_2 = "[hwx] GearID:"
    L4_2 = tostring
    L5_2 = A0_2._equip_info
    L5_2 = L5_2.GearConfig
    L5_2 = L5_2.GearID
    L4_2 = L4_2(L5_2)
    L5_2 = ", _set_eff_trigger:"
    L6_2 = tostring
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
    L2_2(L3_2)
  end
end
L0_1._set_eff_trigger = L16_1
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._equip_info
  L1_2 = L1_2 ~= nil
  if L1_2 then
    L2_2 = G
    L2_2 = L2_2.ActivityEvolveBuildUtils
    L2_2 = L2_2.get_gear_show_level
    L3_2 = A0_2._equip_info
    L3_2 = L3_2.GearConfig
    L3_2 = L3_2.GearID
    L2_2 = L2_2(L3_2)
    if L2_2 == 1 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.UIAnimationUtils
      L2_2 = L2_2.PlayFromBegin
      L3_2 = A0_2._binder
      L3_2 = L3_2.anim_root
      L4_2 = L8_1
      L2_2(L3_2, L4_2)
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.UIAnimationUtils
      L2_2 = L2_2.PlayFromBegin
      L3_2 = A0_2._binder
      L3_2 = L3_2.anim_root
      L4_2 = L7_1
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1.play_confirm_animation = L16_1
function L16_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_navigation_btn = L16_1
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L16_1
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_state
  L3_2 = A0_2._state
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._equip_info
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.EvolveBuildUtils
    L1_2 = L1_2.HasResonanceInPacket
    L2_2 = A0_2._equip_info
    L2_2 = L2_2.GearConfig
    L2_2 = L2_2.GearID
    L3_2 = 0
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._set_eff_trigger
      L3_2 = L13_1
      L1_2(L2_2, L3_2)
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2._set_eff_trigger
    L3_2 = L15_1
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._gear_collection_row
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_forge_check_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_normal_check_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_forge_select_bg
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_forge_select_bg
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_normal_select_bg
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = not L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._common_setup_view = L16_1
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L2_1
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L3_1
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_1
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_state = L16_1
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._detail_panel
  if L1_2 then
    L1_2 = A0_2._detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._state
    L2_2 = L2_1
    if L1_2 == L2_2 then
      L1_2 = A0_2._detail_panel
      L2_2 = L1_2
      L1_2 = L1_2.setup_empty
      L3_2 = A0_2._gear_type
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._state
      L2_2 = L3_1
      if L1_2 == L2_2 then
        L1_2 = A0_2._detail_panel
        L2_2 = L1_2
        L1_2 = L1_2.setup_locked
        L1_2(L2_2)
      else
        L1_2 = A0_2._state
        L2_2 = L1_1
        if L1_2 == L2_2 then
          L1_2 = A0_2._detail_panel
          L2_2 = L1_2
          L1_2 = L1_2.setup_view
          L3_2 = A0_2._equip_info
          L3_2 = L3_2.GearConfig
          L1_2(L2_2, L3_2)
        end
      end
    end
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._btn_root_callback
  L3_2 = A0_2._btn_root_callback_self
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root = L16_1
return L0_1
