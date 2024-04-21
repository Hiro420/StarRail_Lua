local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.LightCone.Upgrade.LightConeLevelUpPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.Upgrade.LightConeLevelUpPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.Upgrade.LightConePromotionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.Upgrade.LightConePromotionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeUpgradeTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Equipment_LevelUp"
L2_1 = "UIText_Equipment_Promotion"
L3_1 = "UIText_RewardDialog_MaterialReturn"
function L4_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._equip_data = A3_2
  A0_2._current_display_panel = nil
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._current_display_panel
    if L2_2 then
      L2_2 = A0_2._current_display_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_in_control_button_enable
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_target_by_zoom
      L6_2 = A1_2
      L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._current_display_panel
    if L2_2 then
      L2_2 = A0_2._current_display_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_in_control_button_enable
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_leave_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._current_display_panel
  if L2_2 == nil then
    L2_2 = nil
    return L2_2
  else
    L2_2 = A0_2._current_display_panel
    L3_2 = L2_2
    L2_2 = L2_2.get_target_by_zoom
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  end
end
L0_1.get_target_by_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._material_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._material_ids
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._material_ids
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1._on_left_stick_button_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._equip_data = A1_2
  L2_2 = A0_2._state
  L3_2 = A0_2.SelectState
  L3_2 = L3_2.Selected
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
  end
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  A0_2._ui3d = A1_2
end
L0_1.setup_ui3d = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.EquipmentLevelupFinish
  L4_2 = L0_1._OnEquipmentLevelupFinish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.EquipmentPromotionFinish
  L4_2 = L0_1._OnEquipmentPromotionFinish
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  A0_2._material_ids = L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._equip_data
  if L1_2 ~= nil then
    L1_2 = A0_2._equip_data
    L1_2 = L1_2.Level
    L2_2 = A0_2._equip_data
    L3_2 = L2_2
    L2_2 = L2_2.GetCurrentMaxLv
    L2_2 = L2_2(L3_2)
    L1_2 = L1_2 == L2_2
    L2_2 = A0_2._equip_data
    L2_2 = L2_2.Promotion
    L3_2 = A0_2._equip_data
    L3_2 = L3_2.EquipmentRow
    L3_2 = L3_2.MaxPromotion
    L2_2 = L2_2 >= L3_2
    if L1_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_tab_name_normal
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L2_1
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_tab_name_selected
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L2_1
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.light_level_up_panel
      L4_2 = L3_2
      L3_2 = L3_2.safe_set_active
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.light_promotion_panel
      L4_2 = L3_2
      L3_2 = L3_2.safe_set_active
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.light_promotion_panel
      A0_2._current_display_panel = L3_2
      L3_2 = {}
      L4_2 = "ItemList"
      L5_2 = "ActionGroup_Select"
      L6_2 = "ActionGroup_EquipmentRotation"
      L7_2 = "ActionGroup_Return"
      L3_2[1] = L4_2
      L3_2[2] = L5_2
      L3_2[3] = L6_2
      L3_2[4] = L7_2
      if L2_2 then
        L4_2 = {}
        L5_2 = "ActionGroup_Select"
        L6_2 = "ActionGroup_EquipmentRotation"
        L7_2 = "ActionGroup_Return"
        L4_2[1] = L5_2
        L4_2[2] = L6_2
        L4_2[3] = L7_2
        L3_2 = L4_2
      end
      L5_2 = A0_2
      L4_2 = A0_2._setup_gamepad_bottom_hint
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_tab_name_normal
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L1_1
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_tab_name_selected
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L1_1
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.light_level_up_panel
      L4_2 = L3_2
      L3_2 = L3_2.safe_set_active
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.light_promotion_panel
      L4_2 = L3_2
      L3_2 = L3_2.safe_set_active
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.light_level_up_panel
      A0_2._current_display_panel = L3_2
      L3_2 = {}
      L4_2 = "ActionGroup_Select"
      L5_2 = "ActionGroup_EquipmentRotation"
      L6_2 = "ActionGroup_Return"
      L3_2[1] = L4_2
      L3_2[2] = L5_2
      L3_2[3] = L6_2
      L5_2 = A0_2
      L4_2 = A0_2._setup_gamepad_bottom_hint
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
    L3_2 = A0_2._current_display_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A0_2._equip_data
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._update_material_ids
    L5_2 = L1_2
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._refresh = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_gamepad_bottom_hint = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = {}
  A0_2._material_ids = L3_2
  if A1_2 and not A2_2 then
    L3_2 = A0_2._current_display_panel
    L4_2 = L3_2
    L3_2 = L3_2.get_promotion_material_datas
    L3_2 = L3_2(L4_2)
    L4_2 = 1
    L5_2 = #L3_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._material_ids
      L10_2 = L3_2[L7_2]
      L10_2 = L10_2.ID
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1._update_material_ids = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._equip_data
  L1_2 = L1_2.Level
  L2_2 = A0_2._equip_data
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentMaxLv
  L2_2 = L2_2(L3_2)
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_tab_name_normal
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_tab_name_selected
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_tab_name_normal
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_tab_name_selected
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_can_to_special_zoom
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.on_click_tab
  L3_2 = A0_2.uid
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.to_first_zoom
  L1_2(L2_2)
  L1_2 = A0_2._equip_data
  L1_2 = L1_2.PromotedBeforeData
  if L1_2 ~= nil then
    L1_2 = A0_2._equip_data
    L1_2 = L1_2.PromotedBeforeData
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.LightCone.Upgrade.LightConePromotionResultDialog"
    L4_2 = A0_2._equip_data
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._OnEquipmentPromotionFinish = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  A0_2._reward_arg = L2_2
  L2_2 = 0
  L3_2 = A1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._reward_arg
    L8_2 = A1_2[L5_2]
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2._equip_data
  L2_2 = L2_2.LevelUpedBeforeData
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.light_level_up_panel
    L4_2 = L3_2
    L3_2 = L3_2.play_exp_tween
    L5_2 = A0_2._equip_data
    L6_2 = L2_2
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.is_loaded
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        return
      end
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh
      L0_3(L1_3)
      L0_3 = A0_2._equip_data
      L0_3 = L0_3.Level
      L1_3 = L2_2.LevelBefore
      if L0_3 > L1_3 then
        L0_3 = G
        L0_3 = L0_3.UIManager
        L0_3 = L0_3.load_and_show
        L1_3 = "Ui.LightCone.Upgrade.LightConeLevelUpResultDialog"
        L2_3 = L2_2
        L3_3 = A0_2._equip_data
        L4_3 = A0_2
        L5_3 = A0_2._show_level_up_result_finish
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
      end
    end
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.Level
  L4_2 = A0_2._equip_data
  L5_2 = L4_2
  L4_2 = L4_2.GetCurrentMaxLv
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 == L4_2
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2.to_first_zoom
    L4_2(L5_2)
  end
end
L0_1._OnEquipmentLevelupFinish = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._reward_arg
  if L1_2 ~= nil then
    L2_2 = #L1_2
    if 0 < L2_2 then
      L2_2 = G
      L2_2 = L2_2.RewardUtils
      L2_2 = L2_2.show_reward_dialog
      L3_2 = L1_2
      L4_2 = L3_1
      L2_2(L3_2, L4_2)
    end
  end
  A0_2._reward_arg = nil
end
L0_1._show_level_up_result_finish = L4_1
return L0_1
