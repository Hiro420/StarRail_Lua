local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildGearSlotBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearPropPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildGearSlot"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1
L2_1 = 2
L3_1 = 3
L4_1 = "UIText_EvolveBuild_WeaponLevel"
L5_1 = "UIText_EvolveBuild_New"
L6_1 = "UIText_EvolveBuild_WeaponMax"
function L7_1(A0_2)
  local L1_2
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
end
L0_1._on_load = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._btn_root_callback = A1_2
  A0_2._btn_root_callback_self = A2_2
end
L0_1.register_btn_root_callback = L7_1
function L7_1(A0_2, A1_2)
  A0_2._detail_panel = A1_2
end
L0_1.register_detail_panel = L7_1
function L7_1(A0_2, A1_2)
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
  L3_2 = A0_2
  L2_2 = A0_2._setup_state
  L4_2 = L1_1
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  A0_2._state = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_check_bg
  L2_2(L3_2)
end
L0_1.setup_view = L7_1
function L7_1(A0_2)
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
      L4_2 = L4_2.get_gear_show_level_by_gear_config
      L5_2 = A0_2._equip_info
      L5_2 = L5_2.GearConfig
      L4_2, L5_2 = L4_2(L5_2)
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
end
L0_1._setup_text_lv = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_lv
  L2_2.color = A1_2
end
L0_1.set_level_text_color = L7_1
function L7_1(A0_2, A1_2)
  A0_2._btn_click_callback = A1_2
end
L0_1.register_btn_click_callback = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L2_2.interactable = A1_2
end
L0_1.set_interactable = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.clear_checked = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._gear_type = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_state
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
  L2_2 = L2_1
  A0_2._state = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_check_bg
  L2_2(L3_2)
end
L0_1.setup_empty = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_state
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = L3_1
  A0_2._state = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_check_bg
  L1_2(L2_2)
end
L0_1.setup_locked = L7_1
function L7_1(A0_2, A1_2)
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
L0_1._setup_state = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
L0_1._setup_check_bg = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._btn_click_callback
  if L1_2 then
    L1_2 = A0_2._btn_click_callback
    L1_2()
  end
  L1_2 = A0_2._detail_panel
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L2_2 = L1_2
    L1_2 = L1_2.SetChecked
    L3_2 = true
    L1_2(L2_2, L3_2)
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
end
L0_1._on_btn_root = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_navigation_btn = L7_1
return L0_1
