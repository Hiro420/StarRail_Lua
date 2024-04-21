local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.LightCone.Upgrade.LightConeLevelUpMaterialPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.Upgrade.LightConeLevelUpMaterialPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeSkillDetailComparePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeSkillDetailComparePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeBreakComparePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeBreakComparePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeBreakTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = "UIText_Equipment_Rank"
L3_1 = "UIText_AvatarRelic_Hiden"
L4_1 = "UIText_Equipment_LevelUp_CurrentLevelButton"
L5_1 = G
L5_1 = L5_1.ComponentExtensions
L6_1 = G
L6_1 = L6_1.TextExtensions
L7_1 = 4
L8_1 = {}
L8_1.Red = "#EE291547"
L8_1.TextRed = "#EB4D3DFF"
L8_1.Blue = "#1581EE47"
L8_1.TextBlue = "#4CE7FEFF"
DisableHintColor = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._equip_data = A3_2
end
L0_1.ctor = L8_1
function L8_1(A0_2, A1_2)
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
    L3_2 = A0_2
    L2_2 = A0_2.setup_in_control_button_enable
    L4_2 = true
    L2_2(L3_2, L4_2)
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
L0_1._on_enter_zoom = L8_1
function L8_1(A0_2, A1_2)
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
    L3_2 = A0_2
    L2_2 = A0_2.setup_in_control_button_enable
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_leave_zoom = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._levelup_material_panel
    L3_2 = L2_2
    L2_2 = L2_2.get_navigation_target
    return L2_2(L3_2)
  end
end
L0_1.get_target_by_zoom = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.auto_fill_in_control_btn
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.auto_clear_in_control_btn
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.auto_fill_in_control_btn
      L2_2.ActionEnabled = A1_2
      L2_2 = A0_2._binder
      L2_2 = L2_2.auto_clear_in_control_btn
      L2_2.ActionEnabled = A1_2
      L2_2 = A0_2._binder
      L2_2 = L2_2.auto_fill_in_control_tip
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.auto_clear_in_control_tip
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1.setup_in_control_button_enable = L8_1
function L8_1(A0_2, A1_2)
  A0_2._ui3d = A1_2
end
L0_1.setup_ui3d = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2._material_selected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.LightConeLevelUpMaterialPanel
  L4_2 = G
  L4_2 = L4_2.LightConeLevelUpMaterialPanelBinder
  L5_2 = L7_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._levelup_material_panel = L1_2
  L1_2 = A0_2._levelup_material_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_material_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._levelup_material_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_click
  L3_2 = A0_2
  L4_2 = A0_2._material_panel_onclick
  L5_2 = A0_2._click_minus
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_break
  L4_2 = A0_2._btn_break_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_auto_fill
  L4_2 = A0_2._btn_auto_fill_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_auto_clear
  L4_2 = A0_2._btn_auto_clear_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_top_compare
  L4_2 = A0_2._on_btn_top_compare
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_auto_fill
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_auto_clear
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_story_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._compare_show = true
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.EquipmentRankUpFinish
  L4_2 = L0_1._OnEquipmentRankUpFinish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = L0_1._on_item_changed
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L8_1
function L8_1(A0_2, A1_2)
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
L0_1.setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._levelup_material_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._material_selected
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_items_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_skill
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_rank_max
  L1_2 = L1_2(L2_2)
  if L1_2 then
    A0_2._compare_show = false
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_compare_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._disable_hint
  L1_2(L2_2)
  L1_2 = A0_2._material_selected
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_auto_fill
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_auto_clear
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._calculate_selected_rank
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = A0_2._material_selected
  L3_2 = #L3_2
  L2_2 = L3_2 == 0
  L3_2 = math
  L3_2 = L3_2.min
  L4_2 = L1_2
  L5_2 = A0_2._equip_data
  L5_2 = L5_2.EquipmentRow
  L5_2 = L5_2.MaxRank
  L3_2 = L3_2(L4_2, L5_2)
  L1_2 = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.skill_compare_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._equip_data
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = A0_2._compare_show
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect_desc
  L4_2 = L3_2
  L3_2 = L3_2.SetVerticalScrollPercent
  L5_2 = 1
  L3_2(L4_2, L5_2)
end
L0_1._refresh_skill = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2._item_table = L1_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemMainType
  L4_2 = L4_2.Equipment
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemsByMainTypes
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._equip_data
    if L7_2 ~= L8_2 then
      L8_2 = L7_2.BelongAvatarID
      if L8_2 == 0 then
        L8_2 = L7_2.ConfigID
        L9_2 = A0_2._equip_data
        L9_2 = L9_2.ConfigID
        if L8_2 == L9_2 then
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = A0_2._item_table
          L10_2 = L7_2
          L8_2(L9_2, L10_2)
        end
      end
    end
  end
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.EquipmentRow
  L3_2 = L3_2.RankUpCostList
  L4_2 = 0
  L5_2 = L3_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_1
    L9_2 = L8_2
    L8_2 = L8_2.GetItemDataByConfigID
    L10_2 = L3_2[L7_2]
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= nil then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2._item_table
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
      break
    end
  end
end
L0_1._get_items_data = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._levelup_dialog = nil
  L1_2 = A0_2._ui3d
  if L1_2 ~= nil then
    L1_2 = A0_2._ui3d
    L1_2 = L1_2.lightcone_panel
    L2_2 = L1_2
    L1_2 = L1_2.show_lightcone
    L3_2 = A0_2._equip_data
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.anim_fade_in_sub_menu
  L1_2(L2_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.anim_fade_in_lightcone
  L1_2(L2_2)
end
L0_1._btn_item_list_close_onclick = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_items_data
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.anim_fade_out_sub_menu
  L1_2(L2_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.anim_fade_out_lightcone
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.LevelUpItemListDialog"
  L3_2 = A0_2
  L4_2 = A0_2._btn_item_list_close_onclick
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._levelup_dialog = L1_2
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_item_click_add
  L4_2 = A0_2._on_item_click_minus
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.register_long_press_repeat_callback
  L3_2 = A0_2._on_item_repeat_click_add
  L4_2 = A0_2._on_item_repeat_click_minus
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.register_item_validate_callback
  L3_2 = A0_2._is_item_selected
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._material_selected
  L4_2 = A0_2._item_table
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.play_fade_in
  L1_2(L2_2)
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.set_order_panel_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._ui3d
  if L1_2 ~= nil then
    L1_2 = A0_2._ui3d
    L1_2 = L1_2.lightcone_panel
    L2_2 = L1_2
    L1_2 = L1_2.hide_lightcone
    L1_2(L2_2)
  end
  L1_2 = A0_2._compare_show
  if L1_2 then
    L1_2 = A0_2._compare_show
    L1_2 = not L1_2
    A0_2._compare_show = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._refresh_compare_view
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._material_panel_onclick = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A0_2._material_selected
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.item
    if L7_2 == A1_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_item_selected = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2.IsProtected
  if L4_2 then
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2._add_select_material
  L6_2 = A1_2
  L7_2 = 1
  L8_2 = A2_2
  L9_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L4_2(L5_2)
end
L0_1._on_item_click_add = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = A1_2.IsProtected
  if L5_2 then
    return
  end
  if A2_2 == 0 then
    return
  end
  L6_2 = A0_2
  L5_2 = A0_2._calculate_selected_rank
  L5_2 = L5_2(L6_2)
  L6_2 = nil
  L7_2 = 1
  L8_2 = A0_2._material_selected
  L8_2 = #L8_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = A0_2._material_selected
    L11_2 = L11_2[L10_2]
    L11_2 = L11_2.item
    if L11_2 == A1_2 then
      L11_2 = A0_2._material_selected
      L6_2 = L11_2[L10_2]
    end
  end
  if L6_2 ~= nil then
    L7_2 = L6_2.item
    L7_2 = L7_2.ItemMainType
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.ItemMainType
    L8_2 = L8_2.Equipment
    if L7_2 == L8_2 then
      L8_2 = A0_2
      L7_2 = A0_2._on_item_click_minus
      L9_2 = L6_2.item
      L10_2 = A3_2
      L7_2(L8_2, L9_2, L10_2)
      return
    end
  end
  L7_2 = A0_2._equip_data
  L7_2 = L7_2.EquipmentRow
  L7_2 = L7_2.MaxRank
  if L5_2 >= L7_2 then
    if A4_2 then
      A0_2._toast_message = "UIText_Toast_Upgrade_RankMax"
    else
      L7_2 = G
      L7_2 = L7_2.NotifyManager
      L7_2 = L7_2.notify
      L8_2 = G
      L8_2 = L8_2.CS
      L8_2 = L8_2.NotifyType
      L8_2 = L8_2.UIPileToastMessageTextID
      L9_2 = "UIText_Toast_Upgrade_RankMax"
      L7_2(L8_2, L9_2)
    end
    return
  end
  if L6_2 == nil then
    L7_2 = A1_2.ItemMainType
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.ItemMainType
    L8_2 = L8_2.Equipment
    if L7_2 == L8_2 then
      L7_2 = A0_2._material_selected
      L7_2 = #L7_2
      L8_2 = L7_1
      if L7_2 >= L8_2 then
        if A4_2 then
          A0_2._toast_message = "UIText_Toast_Upgrade_CountMax"
        else
          L7_2 = G
          L7_2 = L7_2.NotifyManager
          L7_2 = L7_2.notify
          L8_2 = G
          L8_2 = L8_2.CS
          L8_2 = L8_2.NotifyType
          L8_2 = L8_2.UIPileToastMessageTextID
          L9_2 = "UIText_Toast_Upgrade_CountMax"
          L7_2(L8_2, L9_2)
        end
        return
      end
      L7_2 = {}
      L6_2 = L7_2
      L6_2.item = A1_2
      L6_2.count = 1
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._material_selected
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
  end
  else
    L7_2 = A1_2.ItemMainType
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.ItemMainType
    L8_2 = L8_2.Equipment
    if L7_2 ~= L8_2 then
      L7_2 = L7_1
      L8_2 = A0_2._material_selected
      L8_2 = #L8_2
      L7_2 = L7_2 - L8_2
      if L7_2 <= 0 then
        if A4_2 then
          A0_2._toast_message = "UIText_Toast_Upgrade_CountMax"
        else
          L8_2 = G
          L8_2 = L8_2.NotifyManager
          L8_2 = L8_2.notify
          L9_2 = G
          L9_2 = L9_2.CS
          L9_2 = L9_2.NotifyType
          L9_2 = L9_2.UIPileToastMessageTextID
          L10_2 = "UIText_Toast_Upgrade_CountMax"
          L8_2(L9_2, L10_2)
        end
        return
      end
      if A2_2 > L7_2 then
        A2_2 = L7_2
      end
      L9_2 = A0_2
      L8_2 = A0_2._calculate_item_current_selected_count
      L10_2 = A1_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = L8_2 + A2_2
      L10_2 = A1_2.Count
      if L9_2 <= L10_2 then
        L9_2 = 1
        L10_2 = A2_2
        L11_2 = 1
        for L12_2 = L9_2, L10_2, L11_2 do
          L13_2 = {}
          L6_2 = L13_2
          L6_2.item = A1_2
          L6_2.count = 1
          L13_2 = table
          L13_2 = L13_2.insert
          L14_2 = A0_2._material_selected
          L15_2 = L6_2
          L13_2(L14_2, L15_2)
        end
      end
    else
      L7_2 = L6_2.count
      L7_2 = L7_2 + A2_2
      L8_2 = A1_2.Count
      if L7_2 <= L8_2 then
        L7_2 = L6_2.count
        L7_2 = L7_2 + A2_2
        L6_2.count = L7_2
      end
    end
  end
  L7_2 = nil
  L8_2 = A1_2.IsPile
  if L8_2 then
    L9_2 = A0_2
    L8_2 = A0_2._calculate_item_current_selected_count
    L10_2 = A1_2
    L8_2 = L8_2(L9_2, L10_2)
    L7_2 = L8_2
  end
  L9_2 = A0_2
  L8_2 = A0_2._refresh_single_icon
  L10_2 = L6_2
  L11_2 = A3_2
  L12_2 = L7_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
end
L0_1._add_select_material = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 0
  L3_2 = 1
  L4_2 = A0_2._material_selected
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._material_selected
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.item
    if L7_2 == A1_2 then
      L7_2 = A0_2._material_selected
      L7_2 = L7_2[L6_2]
      L7_2 = L7_2.count
      L2_2 = L2_2 + L7_2
    end
  end
  return L2_2
end
L0_1._calculate_item_current_selected_count = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2
  L1_2 = A0_2._calculate_selected_rank
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._equip_data
  L2_2 = L2_2.EquipmentRow
  L2_2 = L2_2.MaxRank
  if L1_2 >= L2_2 then
    L2_2 = A0_2._material_selected
    L2_2 = #L2_2
    if 0 < L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.btn_auto_fill
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.btn_auto_clear
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_Toast_Upgrade_RankMax"
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_items_data
  L2_2(L3_2)
  L2_2 = 1
  L3_2 = A0_2._item_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._calculate_selected_rank
    L6_2 = L6_2(L7_2)
    L1_2 = L6_2
    L6_2 = A0_2._equip_data
    L6_2 = L6_2.EquipmentRow
    L6_2 = L6_2.MaxRank
    if L1_2 >= L6_2 then
      break
    end
    L6_2 = A0_2._item_table
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.ItemMainType
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.ItemMainType
    L8_2 = L8_2.Equipment
    if L7_2 ~= L8_2 then
      L8_2 = A0_2
      L7_2 = A0_2._calculate_item_current_selected_count
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = A0_2._equip_data
      L8_2 = L8_2.EquipmentRow
      L8_2 = L8_2.MaxRank
      L8_2 = L8_2 - L1_2
      L9_2 = nil
      L10_2 = L6_2.Count
      L10_2 = L10_2 - L7_2
      if L8_2 > L10_2 then
        L10_2 = L6_2.Count
        L9_2 = L10_2 - L7_2
      else
        L9_2 = L8_2
      end
      L11_2 = A0_2
      L10_2 = A0_2._add_select_material
      L12_2 = L6_2
      L13_2 = L9_2
      L10_2(L11_2, L12_2, L13_2)
    end
  end
  L2_2 = 1
  L3_2 = A0_2._item_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._calculate_selected_rank
    L6_2 = L6_2(L7_2)
    L1_2 = L6_2
    L6_2 = A0_2._equip_data
    L6_2 = L6_2.EquipmentRow
    L6_2 = L6_2.MaxRank
    if L1_2 >= L6_2 then
      break
    end
    L6_2 = A0_2._item_table
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.ItemMainType
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.ItemMainType
    L8_2 = L8_2.Equipment
    if L7_2 == L8_2 then
      L7_2 = 0
      L8_2 = 1
      L9_2 = A0_2._material_selected
      L9_2 = #L9_2
      L10_2 = 1
      for L11_2 = L8_2, L9_2, L10_2 do
        L12_2 = A0_2._material_selected
        L12_2 = L12_2[L11_2]
        L12_2 = L12_2.item
        if L6_2 == L12_2 then
          L12_2 = A0_2._material_selected
          L12_2 = L12_2[L11_2]
          L7_2 = L12_2.count
        end
      end
      L8_2 = L6_2.Level
      if L8_2 == 1 then
        L8_2 = L6_2.Rank
        if L8_2 == 1 and L7_2 == 0 then
          L9_2 = A0_2
          L8_2 = A0_2._add_select_material
          L10_2 = L6_2
          L11_2 = 1
          L8_2(L9_2, L10_2, L11_2)
        end
      end
    end
  end
  L2_2 = A0_2._material_selected
  L2_2 = #L2_2
  if 0 < L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_auto_fill
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_auto_clear
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_unlock_material_light_cone
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.UIPileToastMessageTextID
      L4_2 = "UIText_AutoAdd_Toast_Fail"
      L2_2(L3_2, L4_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._btn_auto_fill_onclick = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2.try_unlock_light_cone_list = L1_2
  L1_2 = 1
  L2_2 = A0_2._item_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._item_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.ItemMainType
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.ItemMainType
    L7_2 = L7_2.Equipment
    if L6_2 == L7_2 then
      L6_2 = A0_2._equip_data
      L6_2 = L6_2.Rank
      L7_2 = A0_2.try_unlock_light_cone_list
      L7_2 = #L7_2
      L6_2 = L6_2 + L7_2
      L7_2 = A0_2._equip_data
      L7_2 = L7_2.EquipmentRow
      L7_2 = L7_2.MaxRank
      if L6_2 >= L7_2 then
        break
      end
      L6_2 = L5_2.Level
      if L6_2 == 1 then
        L6_2 = L5_2.Rank
        if L6_2 == 1 then
          L6_2 = table
          L6_2 = L6_2.insert
          L7_2 = A0_2.try_unlock_light_cone_list
          L8_2 = L5_2
          L6_2(L7_2, L8_2)
        end
      end
    end
  end
  L1_2 = A0_2.try_unlock_light_cone_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.LightCone.LockSetting.PromoteUnlockItemConfirmDialog"
    L3_2 = A0_2.try_unlock_light_cone_list
    L4_2 = A0_2._on_try_unlock_callback
    L5_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = true
    return L1_2
  end
  L1_2 = false
  return L1_2
end
L0_1._try_unlock_material_light_cone = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 then
    L2_2 = 1
    L3_2 = A0_2.try_unlock_light_cone_list
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2.try_unlock_light_cone_list
      L6_2 = L6_2[L5_2]
      L6_2.IsProtected = false
      L7_2 = A0_2
      L6_2 = A0_2._add_select_material
      L8_2 = A0_2.try_unlock_light_cone_list
      L8_2 = L8_2[L5_2]
      L9_2 = 1
      L6_2(L7_2, L8_2, L9_2)
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_auto_fill
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_auto_clear
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
  end
  L2_2 = {}
  A0_2.try_unlock_light_cone_list = L2_2
end
L0_1._on_try_unlock_callback = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._equip_data
  L1_2 = L1_2.Rank
  L2_2 = 1
  L3_2 = A0_2._material_selected
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._material_selected
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.item
    L6_2 = L6_2.ItemMainType
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.ItemMainType
    L7_2 = L7_2.Equipment
    if L6_2 == L7_2 then
      L6_2 = A0_2._material_selected
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.item
      L6_2 = L6_2.Rank
      L1_2 = L1_2 + L6_2
    else
      L6_2 = A0_2._material_selected
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.count
      L1_2 = L1_2 + L6_2
    end
  end
  return L1_2
end
L0_1._calculate_selected_rank = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  A0_2._material_selected = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_auto_fill
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_auto_clear
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._btn_auto_clear_onclick = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._material_selected
  L1_2 = #L1_2
  if L1_2 <= 0 then
    return
  end
  L1_2 = false
  L2_2 = false
  L3_2 = false
  L4_2 = false
  L5_2 = A0_2._equip_data
  L5_2 = L5_2.Rank
  L6_2 = pairs
  L7_2 = A0_2._material_selected
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = L10_2.item
    L11_2 = L11_2.ItemMainType
    L12_2 = CS
    L12_2 = L12_2.RPG
    L12_2 = L12_2.GameCore
    L12_2 = L12_2.ItemMainType
    L12_2 = L12_2.Equipment
    if L11_2 == L12_2 then
      L11_2 = L10_2.item
      L11_2 = L11_2.Rarity
      if 4 <= L11_2 then
        L1_2 = true
      end
      L11_2 = L10_2.item
      L11_2 = L11_2.Rank
      if 2 <= L11_2 then
        L3_2 = true
      end
      L11_2 = L10_2.item
      L11_2 = L11_2.Level
      if 2 <= L11_2 then
        L2_2 = true
      end
      L11_2 = L10_2.item
      L11_2 = L11_2.Rank
      L5_2 = L5_2 + L11_2
    else
      L11_2 = L10_2.count
      L5_2 = L5_2 + L11_2
    end
  end
  L6_2 = A0_2._equip_data
  L6_2 = L6_2.EquipmentRow
  L6_2 = L6_2.MaxRank
  if L5_2 > L6_2 then
    L4_2 = true
  end
  if L1_2 or L2_2 or L3_2 or L4_2 then
    L6_2 = nil
    if L1_2 and L2_2 and L3_2 and L4_2 then
      L7_2 = G
      L7_2 = L7_2.TextmapStatic
      L7_2 = L7_2.GetText
      L8_2 = "UIText_WarningDialog_Upgrade4"
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeRarity"
      L9_2 = L9_2(L10_2)
      L10_2 = G
      L10_2 = L10_2.TextmapStatic
      L10_2 = L10_2.GetText
      L11_2 = "UIText_WarningDialog_UpgradeRank"
      L10_2 = L10_2(L11_2)
      L11_2 = G
      L11_2 = L11_2.TextmapStatic
      L11_2 = L11_2.GetText
      L12_2 = "UIText_WarningDialog_UpgradeLevel"
      L11_2 = L11_2(L12_2)
      L12_2 = G
      L12_2 = L12_2.TextmapStatic
      L12_2 = L12_2.GetText
      L13_2 = "UIText_WarningDialog_UpgradeRankOver"
      L12_2, L13_2 = L12_2(L13_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L6_2 = L7_2
    elseif not L1_2 and L2_2 and L3_2 and L4_2 then
      L7_2 = G
      L7_2 = L7_2.TextmapStatic
      L7_2 = L7_2.GetText
      L8_2 = "UIText_WarningDialog_Upgrade3"
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeRank"
      L9_2 = L9_2(L10_2)
      L10_2 = G
      L10_2 = L10_2.TextmapStatic
      L10_2 = L10_2.GetText
      L11_2 = "UIText_WarningDialog_UpgradeLevel"
      L10_2 = L10_2(L11_2)
      L11_2 = G
      L11_2 = L11_2.TextmapStatic
      L11_2 = L11_2.GetText
      L12_2 = "UIText_WarningDialog_UpgradeRankOver"
      L11_2, L12_2, L13_2 = L11_2(L12_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L6_2 = L7_2
    elseif L1_2 and not L2_2 and L3_2 and L4_2 then
      L7_2 = G
      L7_2 = L7_2.TextmapStatic
      L7_2 = L7_2.GetText
      L8_2 = "UIText_WarningDialog_Upgrade3"
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeRarity"
      L9_2 = L9_2(L10_2)
      L10_2 = G
      L10_2 = L10_2.TextmapStatic
      L10_2 = L10_2.GetText
      L11_2 = "UIText_WarningDialog_UpgradeRank"
      L10_2 = L10_2(L11_2)
      L11_2 = G
      L11_2 = L11_2.TextmapStatic
      L11_2 = L11_2.GetText
      L12_2 = "UIText_WarningDialog_UpgradeRankOver"
      L11_2, L12_2, L13_2 = L11_2(L12_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L6_2 = L7_2
    elseif L1_2 and L2_2 and not L3_2 and L4_2 then
      L7_2 = G
      L7_2 = L7_2.TextmapStatic
      L7_2 = L7_2.GetText
      L8_2 = "UIText_WarningDialog_Upgrade3"
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeRarity"
      L9_2 = L9_2(L10_2)
      L10_2 = G
      L10_2 = L10_2.TextmapStatic
      L10_2 = L10_2.GetText
      L11_2 = "UIText_WarningDialog_UpgradeLevel"
      L10_2 = L10_2(L11_2)
      L11_2 = G
      L11_2 = L11_2.TextmapStatic
      L11_2 = L11_2.GetText
      L12_2 = "UIText_WarningDialog_UpgradeRankOver"
      L11_2, L12_2, L13_2 = L11_2(L12_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L6_2 = L7_2
    elseif L1_2 and L2_2 and L3_2 and not L4_2 then
      L7_2 = G
      L7_2 = L7_2.TextmapStatic
      L7_2 = L7_2.GetText
      L8_2 = "UIText_WarningDialog_Upgrade3"
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeRarity"
      L9_2 = L9_2(L10_2)
      L10_2 = G
      L10_2 = L10_2.TextmapStatic
      L10_2 = L10_2.GetText
      L11_2 = "UIText_WarningDialog_UpgradeRank"
      L10_2 = L10_2(L11_2)
      L11_2 = G
      L11_2 = L11_2.TextmapStatic
      L11_2 = L11_2.GetText
      L12_2 = "UIText_WarningDialog_UpgradeLevel"
      L11_2, L12_2, L13_2 = L11_2(L12_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L6_2 = L7_2
    elseif not L1_2 and not L2_2 and L3_2 and L4_2 then
      L7_2 = G
      L7_2 = L7_2.TextmapStatic
      L7_2 = L7_2.GetText
      L8_2 = "UIText_WarningDialog_Upgrade2"
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeRank"
      L9_2 = L9_2(L10_2)
      L10_2 = G
      L10_2 = L10_2.TextmapStatic
      L10_2 = L10_2.GetText
      L11_2 = "UIText_WarningDialog_UpgradeRankOver"
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L6_2 = L7_2
    elseif not L1_2 and L2_2 and not L3_2 and L4_2 then
      L7_2 = G
      L7_2 = L7_2.TextmapStatic
      L7_2 = L7_2.GetText
      L8_2 = "UIText_WarningDialog_Upgrade2"
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeLevel"
      L9_2 = L9_2(L10_2)
      L10_2 = G
      L10_2 = L10_2.TextmapStatic
      L10_2 = L10_2.GetText
      L11_2 = "UIText_WarningDialog_UpgradeRankOver"
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L6_2 = L7_2
    elseif not L1_2 and L2_2 and L3_2 and not L4_2 then
      L7_2 = G
      L7_2 = L7_2.TextmapStatic
      L7_2 = L7_2.GetText
      L8_2 = "UIText_WarningDialog_Upgrade2"
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeLevel"
      L9_2 = L9_2(L10_2)
      L10_2 = G
      L10_2 = L10_2.TextmapStatic
      L10_2 = L10_2.GetText
      L11_2 = "UIText_WarningDialog_UpgradeRank"
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L6_2 = L7_2
    elseif L1_2 and not L2_2 and not L3_2 and L4_2 then
      L7_2 = G
      L7_2 = L7_2.TextmapStatic
      L7_2 = L7_2.GetText
      L8_2 = "UIText_WarningDialog_Upgrade2"
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeRarity"
      L9_2 = L9_2(L10_2)
      L10_2 = G
      L10_2 = L10_2.TextmapStatic
      L10_2 = L10_2.GetText
      L11_2 = "UIText_WarningDialog_UpgradeRankOver"
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L6_2 = L7_2
    elseif L1_2 and not L2_2 and L3_2 and not L4_2 then
      L7_2 = G
      L7_2 = L7_2.TextmapStatic
      L7_2 = L7_2.GetText
      L8_2 = "UIText_WarningDialog_Upgrade2"
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeRarity"
      L9_2 = L9_2(L10_2)
      L10_2 = G
      L10_2 = L10_2.TextmapStatic
      L10_2 = L10_2.GetText
      L11_2 = "UIText_WarningDialog_UpgradeRank"
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L6_2 = L7_2
    elseif L1_2 and L2_2 and not L3_2 and not L4_2 then
      L7_2 = G
      L7_2 = L7_2.TextmapStatic
      L7_2 = L7_2.GetText
      L8_2 = "UIText_WarningDialog_Upgrade2"
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeRarity"
      L9_2 = L9_2(L10_2)
      L10_2 = G
      L10_2 = L10_2.TextmapStatic
      L10_2 = L10_2.GetText
      L11_2 = "UIText_WarningDialog_UpgradeLevel"
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L6_2 = L7_2
    elseif L1_2 and not L2_2 and not L3_2 and not L4_2 then
      L7_2 = G
      L7_2 = L7_2.TextmapStatic
      L7_2 = L7_2.GetText
      L8_2 = "UIText_WarningDialog_Upgrade1"
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeRarity"
      L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L6_2 = L7_2
    elseif not L1_2 and L2_2 and not L3_2 and not L4_2 then
      L7_2 = G
      L7_2 = L7_2.TextmapStatic
      L7_2 = L7_2.GetText
      L8_2 = "UIText_WarningDialog_Upgrade1"
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeLevel"
      L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L6_2 = L7_2
    elseif not L1_2 and not L2_2 and L3_2 and not L4_2 then
      L7_2 = G
      L7_2 = L7_2.TextmapStatic
      L7_2 = L7_2.GetText
      L8_2 = "UIText_WarningDialog_Upgrade1"
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeRank"
      L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L6_2 = L7_2
    elseif not L1_2 and not L2_2 and not L3_2 and L4_2 then
      L7_2 = G
      L7_2 = L7_2.TextmapStatic
      L7_2 = L7_2.GetText
      L8_2 = "UIText_WarningDialog_Upgrade1"
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_WarningDialog_UpgradeRankOver"
      L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L6_2 = L7_2
    end
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.ConfirmDialogUtil
    L7_2 = L7_2.ShowConfirmDialog
    function L8_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._confirm_use
        L1_3(L2_3)
      end
    end
    L7_2 = L7_2(L8_2)
    L8_2 = DialogBtnMode
    L8_2 = L8_2.eOkCancel
    L7_2.Mode = L8_2
    L9_2 = L7_2
    L8_2 = L7_2.GetComponentContent
    L8_2 = L8_2(L9_2)
    L9_2 = L8_2
    L8_2 = L8_2.SetCustomizedText
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    return
  else
    L7_2 = A0_2
    L6_2 = A0_2._confirm_use
    L6_2(L7_2)
  end
end
L0_1._btn_break_onclick = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.Proto
  L2_2 = L2_2.ItemCost
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = pairs
  L3_2 = A0_2._material_selected
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = nil
    L8_2 = L6_2.item
    L8_2 = L8_2.ItemMainType
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.ItemMainType
    L9_2 = L9_2.Equipment
    if L8_2 == L9_2 then
      L8_2 = CS
      L8_2 = L8_2.Proto
      L8_2 = L8_2.ItemCost
      L8_2 = L8_2()
      L7_2 = L8_2
      L8_2 = L6_2.item
      L8_2 = L8_2.UID
      L7_2.EquipmentUniqueId = L8_2
    else
      L8_2 = false
      L9_2 = 0
      L10_2 = L1_2.Count
      L10_2 = L10_2 - 1
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = L1_2[L12_2]
        L14_2 = L13_2.PileItem
        if L14_2 ~= nil then
          L14_2 = L13_2.PileItem
          L14_2 = L14_2.ItemId
          L15_2 = L6_2.item
          L15_2 = L15_2.ConfigID
          if L14_2 == L15_2 then
            L14_2 = L13_2.PileItem
            L15_2 = L13_2.PileItem
            L15_2 = L15_2.ItemNum
            L16_2 = L6_2.count
            L15_2 = L15_2 + L16_2
            L14_2.ItemNum = L15_2
            L8_2 = true
            break
          end
        end
      end
      if not L8_2 then
        L9_2 = CS
        L9_2 = L9_2.Proto
        L9_2 = L9_2.ItemCost
        L9_2 = L9_2()
        L7_2 = L9_2
        L9_2 = CS
        L9_2 = L9_2.Proto
        L9_2 = L9_2.PileItem
        L9_2 = L9_2()
        L7_2.PileItem = L9_2
        L9_2 = L7_2.PileItem
        L10_2 = L6_2.item
        L10_2 = L10_2.ConfigID
        L9_2.ItemId = L10_2
        L9_2 = L7_2.PileItem
        L10_2 = L6_2.count
        L9_2.ItemNum = L10_2
      end
    end
    if L7_2 ~= nil then
      L9_2 = L1_2
      L8_2 = L1_2.Add
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.FFOMLPONIFB
  L3_2 = L2_2
  L2_2 = L2_2.FHLLBFGHJJJ
  L4_2 = A0_2._equip_data
  L4_2 = L4_2.UID
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_auto_fill
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_auto_clear
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item_list_area
  L2_2 = L2_2.gameObject
  L2_2 = L2_2.activeSelf
  if L2_2 then
    L3_2 = A0_2._levelup_dialog
    if L3_2 ~= nil then
      L3_2 = A0_2._levelup_dialog
      L4_2 = L3_2
      L3_2 = L3_2.close
      L3_2(L4_2)
    end
  end
end
L0_1._confirm_use = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2._material_selected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._equip_data
  L1_2 = L1_2.RankUpedBeforeData
  if L1_2 ~= nil then
    L1_2 = A0_2._equip_data
    L1_2 = L1_2.RankUpedBeforeData
    L2_2 = A0_2._equip_data
    L3_2 = L2_2
    L2_2 = L2_2.ClearRankUpBeforeData
    L2_2(L3_2)
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.LightCone.LightConeBreakResultDialog"
    L4_2 = A0_2._equip_data
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._OnEquipmentRankUpFinish = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = false
  L2_2 = pairs
  L3_2 = A0_2._material_selected
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.item
    L8_2 = L7_2.IsPile
    if not L8_2 then
      L8_2 = L7_2.IsProtected
      if L8_2 then
        L1_2 = true
        L8_2 = table
        L8_2 = L8_2.remove
        L9_2 = A0_2._material_selected
        L10_2 = L5_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  L2_2 = A0_2._equip_data
  if L2_2 ~= nil then
    if L1_2 then
      L3_2 = A0_2
      L2_2 = A0_2._refresh
      L2_2(L3_2)
    end
    L2_2 = A0_2._levelup_dialog
    if L2_2 ~= nil then
      L2_2 = A0_2._levelup_dialog
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = A0_2._material_selected
      L5_2 = A0_2._item_table
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_item_changed = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
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
end
L0_1._on_added = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  A0_2._material_selected = L1_2
  A0_2._compare_show = true
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_can_to_special_zoom
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.on_click_tab
  L3_2 = A0_2.uid
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Select"
  L5_2 = "ActionGroup_Scroll"
  L6_2 = "ActionGroup_EquipmentRotation"
  L7_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L8_1
function L8_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L8_1
function L8_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_rank_max
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_disable_hint_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Equipment_Rank_Max"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_disable_hint_panel
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = DisableHintColor
    L4_2 = L4_2.Blue
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_disable_hint_panel
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = DisableHintColor
    L4_2 = L4_2.TextBlue
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_disable_hint_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_break
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_material_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_top_btn_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
end
L0_1._disable_hint = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._equip_data
  L1_2 = L1_2.EquipmentRow
  L1_2 = L1_2.MaxRank
  L2_2 = A0_2._equip_data
  L2_2 = L2_2.Rank
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_rank_max = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A0_2
  L4_2 = A0_2._click_minus
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._refresh_single_icon
  L8_2 = L4_2
  L9_2 = A2_2
  L10_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_item_click_minus = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = nil
  L5_2 = 0
  L6_2 = 1
  L7_2 = A0_2._material_selected
  L7_2 = #L7_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A0_2._material_selected
    L10_2 = L10_2[L9_2]
    L10_2 = L10_2.item
    if L10_2 == A1_2 then
      L10_2 = A0_2._material_selected
      L4_2 = L10_2[L9_2]
      L5_2 = L9_2
      break
    end
  end
  if L4_2 ~= nil then
    L6_2 = L4_2.count
    L6_2 = L6_2 - 1
    L4_2.count = L6_2
    L6_2 = L4_2.count
    if L6_2 <= 0 then
      L6_2 = table
      L6_2 = L6_2.remove
      L7_2 = A0_2._material_selected
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2._refresh
  L6_2(L7_2)
  L6_2 = nil
  L7_2 = A1_2.IsPile
  if L7_2 then
    L8_2 = A0_2
    L7_2 = A0_2._calculate_item_current_selected_count
    L9_2 = A1_2
    L7_2 = L7_2(L8_2, L9_2)
    L6_2 = L7_2
  end
  L7_2 = L4_2
  L8_2 = L6_2
  return L7_2, L8_2
end
L0_1._click_minus = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2.IsProtected
  if L4_2 then
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2._on_item_click_add
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_item_repeat_click_add = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2._on_item_click_minus
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_item_repeat_click_minus = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A1_2 ~= nil and A2_2 ~= nil then
    L4_2 = A1_2.item
    L4_2 = L4_2.IsPile
    if L4_2 then
      L5_2 = A2_2
      L4_2 = A2_2.set_count
      L6_2 = A3_2
      L7_2 = A1_2.item
      L7_2 = L7_2.Count
      L4_2(L5_2, L6_2, L7_2)
      L5_2 = A2_2
      L4_2 = A2_2.set_minus_btn
      L6_2 = 0 < A3_2
      L4_2(L5_2, L6_2)
    else
      L5_2 = A2_2
      L4_2 = A2_2.set_minus_btn
      L6_2 = A1_2.count
      L6_2 = 0 < L6_2
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._refresh_single_icon = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._compare_show
  L1_2 = not L1_2
  A0_2._compare_show = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_compare_view
  L1_2(L2_2)
end
L0_1._on_btn_top_compare = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.skill_compare_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_view_state
  L3_2 = A0_2._compare_show
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_compare_view
  L1_2(L2_2)
end
L0_1._refresh_compare_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._compare_show
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.arrow_to_hiden
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.arrow_to_compare
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_btn_top_compare
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.skill_cur_node
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.skill_cur_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._equip_data
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.arrow_to_hiden
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.arrow_to_compare
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_btn_top_compare
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.skill_cur_node
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_compare_view = L8_1
return L0_1
