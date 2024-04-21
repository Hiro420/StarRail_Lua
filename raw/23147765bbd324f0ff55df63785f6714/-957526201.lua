local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicUpgradeTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ResBarAreaFactory"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicUpgradeTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 8
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.InventoryModule
L3_1 = "UIText_RewardDialog_MaterialReturn"
L4_1 = "4020"
function L5_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._relic = A3_2
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
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
      L4_2 = A0_2._binder
      L4_2 = L4_2.material_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_navigation_target
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2, A1_2)
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
L0_1._on_leave_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._res_bar_panel
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._res_bar_panel
  L2_2 = L1_2
  L1_2 = L1_2.enable_navi_reaction
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_got_focus = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._res_bar_panel
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._res_bar_panel
  L2_2 = L1_2
  L1_2 = L1_2.enable_navi_reaction
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_lost_focus = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rarity_in_control_btn
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.auto_fill_in_control_btn
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.auto_clear_in_control_btn
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rarity_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
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
L0_1.setup_in_control_button_enable = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._materials = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_level_up
  L4_2 = A0_2._on_btn_level_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RelicLevelupFinish
  L4_2 = A0_2._on_level_up_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = L0_1._on_item_changed
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.res_bar_area
  L3_2 = "RelicUpgradePage"
  L4_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._res_bar_panel = L1_2
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_relic_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._relic
  L3_2 = L3_2.RelicInfoRow
  L3_2 = L3_2.RelicName
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_data
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.exp_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._relic
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.status_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._relic
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.status_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.material_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_click_callback
  L3_2 = A0_2._on_auto_add
  L4_2 = A0_2._on_clear
  L5_2 = A0_2._on_level_upgrade_limit_changed
  L6_2 = A0_2._on_material_item_click
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.material_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_cur_and_max_level
  L3_2 = A0_2._relic
  L3_2 = L3_2.Level
  L4_2 = A0_2._relic
  L4_2 = L4_2.RelicRow
  L4_2 = L4_2.MaxLevel
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.material_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_get_forbid_refresh_mat_callback
  L3_2 = A0_2._get_is_forbid_refresh_material_panel
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.material_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._materials
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.coin_cost_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_click_callback
  L3_2 = A0_2._add_item
  L4_2 = A0_2._remove_item
  L5_2 = A0_2._is_item_selected
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.exp_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_max_level
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.material_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.coin_cost_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_level_up
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_level_max_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.TutorialTaskUnlock
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2._all_item = L1_2
  L1_2 = G
  L1_2 = L1_2.RelicUtils
  L1_2 = L1_2.get_all_relic_items
  L2_2 = false
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._relic
    if L6_2 ~= L7_2 then
      L7_2 = L6_2.BelongAvatarID
      if L7_2 == 0 then
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = A0_2._all_item
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RelicExpItemExcelTable
  L2_2 = L2_2.dataDict
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L2_1
    L9_2 = L8_2
    L8_2 = L8_2.GetItemDataByConfigID
    L10_2 = L7_2.ItemID
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= nil then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2._all_item
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
end
L0_1._init_data = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 ~= nil then
    L5_2 = A0_2
    L4_2 = A0_2._remove_item
    L6_2 = A1_2
    L7_2 = A2_2
    L8_2 = true
    L9_2 = A3_2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.item_list_panel
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = A0_2._materials
    L7_2 = A0_2._all_item
    L8_2 = A0_2._relic
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.item_list_panel
    L5_2 = L4_2
    L4_2 = L4_2.show
    L4_2(L5_2)
    A0_2._can_to_zoom3 = true
  end
end
L0_1._on_material_item_click = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2.ItemMainType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ItemMainType
  L5_2 = L5_2.Relic
  if L4_2 == L5_2 then
    L4_2 = A1_2.IsProtected
    if L4_2 then
      return
    end
    L4_2 = A0_2._binder
    L4_2 = L4_2.material_panel
    L5_2 = L4_2
    L4_2 = L4_2.get_material
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._remove_item
      L6_2 = A1_2
      L7_2 = A2_2
      L4_2(L5_2, L6_2, L7_2)
      return
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.exp_panel
  L5_2 = L4_2
  L4_2 = L4_2.get_needed_exp_to_max
  L4_2 = L4_2(L5_2)
  A0_2._needed_exp = L4_2
  L4_2 = A0_2._needed_exp
  if L4_2 <= 0 then
    if not A3_2 then
      L4_2 = G
      L4_2 = L4_2.NotifyManager
      L4_2 = L4_2.notify
      L5_2 = G
      L5_2 = L5_2.CS
      L5_2 = L5_2.NotifyType
      L5_2 = L5_2.UIPileToastMessageTextID
      L6_2 = "UIText_Toast_Upgrade_ExpMax"
      L4_2(L5_2, L6_2)
    end
    return
  end
  L4_2 = nil
  L5_2 = A1_2.IsPile
  if L5_2 then
    L5_2 = G
    L5_2 = L5_2.Utils
    L5_2 = L5_2.get_long_press_repeat_speed
    L6_2 = A3_2
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.RelicExpItemExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A1_2.ConfigID
    L5_2 = L5_2(L6_2)
    L6_2 = math
    L6_2 = L6_2.ceil
    L7_2 = A0_2._needed_exp
    L8_2 = L5_2.ExpProvide
    L7_2 = L7_2 / L8_2
    L6_2 = L6_2(L7_2)
    L4_2 = L6_2 or L4_2
    if not (L4_2 > L6_2) or not L6_2 then
    end
  else
    L4_2 = 1
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.material_panel
  L6_2 = L5_2
  L5_2 = L5_2.get_material_item
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L6_2 = L5_2.count
    if L6_2 then
      goto lbl_85
    end
  end
  L6_2 = 0
  ::lbl_85::
  L7_2 = A0_2._binder
  L7_2 = L7_2.material_panel
  L8_2 = L7_2
  L7_2 = L7_2.add_item
  L9_2 = A1_2
  L10_2 = L4_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L5_2 = L7_2
  if A3_2 then
    L7_2 = L5_2.count
    if L6_2 < L7_2 then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.GlobalVars
      L7_2 = L7_2.s_AudioManager
      L8_2 = L7_2
      L7_2 = L7_2.PostEvent
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.Client
      L9_2 = L9_2.GlobalVars
      L9_2 = L9_2.s_AudioManager
      L9_2 = L9_2.AudioConfig
      L9_2 = L9_2.EventUISliderPlus
      L7_2(L8_2, L9_2)
    end
  end
  if L5_2 ~= nil then
    L8_2 = A2_2
    L7_2 = A2_2.set_minus_btn
    L9_2 = true
    L7_2(L8_2, L9_2)
    L7_2 = A1_2.IsPile
    if L7_2 then
      L8_2 = A2_2
      L7_2 = A2_2.set_count
      L9_2 = L5_2.count
      L10_2 = A1_2.Count
      L7_2(L8_2, L9_2, L10_2)
    end
    L8_2 = A0_2
    L7_2 = A0_2._refresh
    L7_2(L8_2)
  end
end
L0_1._add_item = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._is_forbid_refresh_material_panel = A3_2
  A0_2._can_to_zoom3 = false
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.get_long_press_repeat_speed
  L6_2 = A4_2
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.material_panel
  L7_2 = L6_2
  L6_2 = L6_2.remove_item
  L8_2 = A1_2
  L9_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if not A3_2 then
    L7_2 = L6_2.item
    L7_2 = L7_2.ItemMainType
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.ItemMainType
    L8_2 = L8_2.Relic
    if L7_2 ~= L8_2 then
      L7_2 = L6_2.count
      if L7_2 ~= 0 then
        goto lbl_31
      end
    end
    L8_2 = A2_2
    L7_2 = A2_2.set_minus_btn
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
  ::lbl_31::
  if not A3_2 then
    L7_2 = A1_2.IsPile
    if L7_2 then
      L8_2 = A2_2
      L7_2 = A2_2.set_count
      L9_2 = L6_2.count
      L10_2 = A1_2.Count
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L8_2 = A0_2
  L7_2 = A0_2._refresh
  L7_2(L8_2)
  A0_2._is_forbid_refresh_material_panel = false
  L8_2 = A0_2
  L7_2 = A0_2._refresh_single_icon
  L9_2 = A1_2
  L10_2 = A2_2
  L7_2(L8_2, L9_2, L10_2)
  if A4_2 then
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.GlobalVars
    L7_2 = L7_2.s_AudioManager
    L8_2 = L7_2
    L7_2 = L7_2.PostEvent
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.GlobalVars
    L9_2 = L9_2.s_AudioManager
    L9_2 = L9_2.AudioConfig
    L9_2 = L9_2.EventUISliderMinus
    L7_2(L8_2, L9_2)
  end
end
L0_1._remove_item = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.material_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_material_item
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil and A2_2 ~= nil then
    L5_2 = A2_2
    L4_2 = A2_2.set_minus_btn
    L6_2 = L3_2.count
    L6_2 = 0 < L6_2
    L4_2(L5_2, L6_2)
    L4_2 = L3_2.item
    L4_2 = L4_2.IsPile
    if L4_2 then
      L5_2 = A2_2
      L4_2 = A2_2.set_count
      L6_2 = L3_2.count
      L7_2 = L3_2.item
      L7_2 = L7_2.Count
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end
L0_1._refresh_single_icon = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_forbid_refresh_material_panel
  return L1_2
end
L0_1._get_is_forbid_refresh_material_panel = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A0_2._materials
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
L0_1._is_item_selected = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.exp_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L3_2 = A0_2._materials
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_material_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.status_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L3_2 = A0_2._binder
  L3_2 = L3_2.exp_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_addition_level
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._relic
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.material_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_cur_and_max_level
    L3_2 = A0_2._relic
    L3_2 = L3_2.Level
    L4_2 = A0_2._relic
    L4_2 = L4_2.RelicRow
    L4_2 = L4_2.MaxLevel
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.material_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.material_panel
  L2_2 = L1_2
  L1_2 = L1_2.calculate_coin_cost
  L1_2 = L1_2(L2_2)
  A0_2._need_coin = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.coin_cost_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._need_coin
  L1_2(L2_2, L3_2)
end
L0_1._refresh_material_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 1
  L2_2 = A0_2._materials
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._materials
    L5_2[L4_2] = nil
  end
end
L0_1._clear_selected_material = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.material_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_upgrade_target_level
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.exp_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_needed_exp_to_level
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._needed_exp = L3_2
  L3_2 = A0_2._needed_exp
  L4_2 = A0_2._needed_exp
  if L4_2 <= 0 then
    L5_2 = A0_2
    L4_2 = A0_2._refresh
    L4_2(L5_2)
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.UIPileToastMessageTextID
    L6_2 = "UIText_Toast_Upgrade_ExpMax"
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = 1
  L5_2 = A1_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.RelicExpItemExcelTable
    L8_2 = L8_2.dataDict
    L9_2 = pairs
    L10_2 = L8_2
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L14_2 = A0_2._needed_exp
      if L14_2 <= 0 then
        break
      end
      L14_2 = L2_1
      L15_2 = L14_2
      L14_2 = L14_2.GetItemDataByConfigID
      L16_2 = L13_2.ItemID
      L14_2 = L14_2(L15_2, L16_2)
      if L14_2 ~= nil then
        L15_2 = L14_2.Rarity
        if L15_2 == L7_2 then
          L16_2 = A0_2
          L15_2 = A0_2._fill_with_pile_item
          L17_2 = L14_2
          L15_2(L16_2, L17_2)
        end
      end
    end
    L9_2 = ipairs
    L10_2 = A0_2._all_item
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L14_2 = A0_2._needed_exp
      if L14_2 <= 0 then
        break
      end
      L14_2 = A0_2._materials
      L14_2 = #L14_2
      L15_2 = L1_1
      if L14_2 >= L15_2 then
        break
      end
      L14_2 = L13_2.Rarity
      if L14_2 == L7_2 then
        L14_2 = L13_2.IsPile
        if not L14_2 then
          L14_2 = L13_2.Level
          if L14_2 == 0 then
            L14_2 = L13_2.IsProtected
            if not L14_2 then
              L15_2 = A0_2
              L14_2 = A0_2._fill_with_relic_item
              L16_2 = L13_2
              L14_2(L15_2, L16_2)
            end
          end
        end
      end
    end
    L9_2 = A0_2._needed_exp
    if L9_2 <= 0 then
      break
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.material_panel
  L5_2 = L4_2
  L4_2 = L4_2.refresh
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L4_2(L5_2)
  L4_2 = A0_2._needed_exp
  if L3_2 == L4_2 then
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.UIPileToastMessageTextID
    L6_2 = "UIText_AutoAdd_Toast_Fail"
    L4_2(L5_2, L6_2)
  end
end
L0_1._on_auto_add = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.material_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_material
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = A0_2._materials
    L3_2 = #L3_2
    L4_2 = L1_1
    if L3_2 >= L4_2 then
      return
    end
  end
  if L2_2 then
    L3_2 = L2_2.count
    if L3_2 then
      goto lbl_20
    end
  end
  L3_2 = 0
  ::lbl_20::
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.RelicExpItemExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A1_2.ConfigID
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.ceil
  L6_2 = A0_2._needed_exp
  L7_2 = L4_2.ExpProvide
  L6_2 = L6_2 / L7_2
  L5_2 = L5_2(L6_2)
  L6_2 = A1_2.Count
  L6_2 = L6_2 - L3_2
  L6_2 = L5_2 or L6_2
  if not (L5_2 <= L6_2) or not L5_2 then
    L6_2 = A1_2.Count
    L6_2 = L6_2 - L3_2
  end
  L7_2 = A0_2._binder
  L7_2 = L7_2.material_panel
  L8_2 = L7_2
  L7_2 = L7_2.add_item
  L9_2 = A1_2
  L10_2 = L6_2
  L11_2 = true
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = A0_2._needed_exp
  L8_2 = G
  L8_2 = L8_2.RelicUtils
  L8_2 = L8_2.calculate_exp_provide
  L9_2 = A1_2
  L10_2 = L6_2
  L8_2 = L8_2(L9_2, L10_2)
  L7_2 = L7_2 - L8_2
  A0_2._needed_exp = L7_2
end
L0_1._fill_with_pile_item = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.material_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_material
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = A0_2._materials
    L3_2 = #L3_2
    L4_2 = L1_1
    if not (L3_2 >= L4_2) then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L3_2 = A0_2._binder
  L3_2 = L3_2.material_panel
  L4_2 = L3_2
  L3_2 = L3_2.add_item
  L5_2 = A1_2
  L6_2 = nil
  L7_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._needed_exp
  L4_2 = G
  L4_2 = L4_2.RelicUtils
  L4_2 = L4_2.calculate_exp_provide
  L5_2 = A1_2
  L6_2 = 1
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 - L4_2
  A0_2._needed_exp = L3_2
end
L0_1._fill_with_relic_item = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_selected_material
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.material_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_clear = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.exp_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_addition_level
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  L3_2 = A0_2._relic
  L3_2 = L3_2.Level
  L3_2 = L3_2 + L2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.material_panel
  L5_2 = L4_2
  L4_2 = L4_2.get_upgrade_target_level
  L4_2 = L4_2(L5_2)
  if L3_2 > L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._clear_selected_material
    L3_2(L4_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.exp_panel
    L4_2 = L3_2
    L3_2 = L3_2.refresh
    L5_2 = A0_2._materials
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._on_auto_add
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_level_upgrade_limit_changed = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._materials
  if L1_2 then
    L1_2 = A0_2._materials
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2
  L1_2 = A0_2._is_coin_enough
  L1_2 = L1_2(L2_2)
  if L1_2 == false then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_confirm_text
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ConfirmDialogUtil
    L2_2 = L2_2.ShowConfirmDialog
    function L3_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._on_confirm_level_up
        L1_3(L2_3)
      end
    end
    L2_2 = L2_2(L3_2)
    L3_2 = DialogBtnMode
    L3_2 = L3_2.eOkCancel
    L2_2.Mode = L3_2
    L4_2 = L2_2
    L3_2 = L2_2.GetComponentContent
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L3_2 = L3_2.SetCustomizedText
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
    return
  else
    L3_2 = A0_2
    L2_2 = A0_2._on_confirm_level_up
    L2_2(L3_2)
  end
end
L0_1._on_btn_level_up = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = pairs
  L4_2 = A0_2._materials
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.item
    L8_2 = L8_2.IsPile
    if not L8_2 then
      if L1_2 == 0 then
        L8_2 = L7_2.item
        L8_2 = L8_2.Rarity
        if 5 <= L8_2 then
          L1_2 = 1
        end
      end
      if L2_2 == 0 then
        L8_2 = L7_2.item
        L8_2 = L8_2.Level
        if L8_2 ~= 0 then
          L2_2 = 1
        end
      end
    end
  end
  if L1_2 ~= 0 or L2_2 ~= 0 then
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "UIText_WarningDialog_Upgrade%d_Relic"
    L5_2 = L1_2 + L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = G
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = "UIText_WarningDialog_UpgradeRarity"
    L4_2 = L4_2(L5_2)
    L5_2 = G
    L5_2 = L5_2.TextmapStatic
    L5_2 = L5_2.GetText
    L6_2 = "UIText_WarningDialog_UpgradeLevel"
    L5_2 = L5_2(L6_2)
    if L1_2 ~= 0 then
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = L3_2
      L8_2 = L4_2
      L9_2 = L5_2
      return L6_2(L7_2, L8_2, L9_2)
    else
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = L3_2
      L8_2 = L5_2
      L9_2 = L4_2
      return L6_2(L7_2, L8_2, L9_2)
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1._get_confirm_text = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
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
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2._materials
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.Proto
    L8_2 = L8_2.ItemCost
    L8_2 = L8_2()
    L9_2 = L7_2.item
    L9_2 = L9_2.ItemMainType
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.ItemMainType
    L10_2 = L10_2.Relic
    if L9_2 == L10_2 then
      L9_2 = L7_2.item
      L9_2 = L9_2.UID
      L8_2.RelicUniqueId = L9_2
    else
      L9_2 = CS
      L9_2 = L9_2.Proto
      L9_2 = L9_2.PileItem
      L9_2 = L9_2()
      L8_2.PileItem = L9_2
      L9_2 = L8_2.PileItem
      L10_2 = L7_2.item
      L10_2 = L10_2.ConfigID
      L9_2.ItemId = L10_2
      L9_2 = L8_2.PileItem
      L10_2 = L7_2.count
      L9_2.ItemNum = L10_2
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = L8_2.PileItem
      L11_2 = L11_2.ItemId
      L9_2(L10_2, L11_2)
    end
    L10_2 = L1_2
    L9_2 = L1_2.Add
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = G
  L3_2 = L3_2.InventoryUtils
  L3_2 = L3_2.check_item_deleted
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.NetworkManager
  L3_2 = L3_2.FFOMLPONIFB
  L4_2 = L3_2
  L3_2 = L3_2.IDDDPICPDIN
  L5_2 = A0_2._relic
  L5_2 = L5_2.UID
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.item_list_panel
  L4_2 = L3_2
  L3_2 = L3_2.hide
  L3_2(L4_2)
end
L0_1._on_confirm_level_up = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetItemCountByConfigID
  L3_2 = G
  L3_2 = L3_2.UtilEngineWrap
  L3_2 = L3_2.ConvCsEnumToNum
  L4_2 = CS
  L4_2 = L4_2.HGGDPEHMDBH
  L4_2 = L4_2.AHCNPMBGKID
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2._need_coin
  L2_2 = L1_2 >= L2_2
  if not L2_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UIText_SkillTreeDetail_LimitSoftCoin"
    L3_2(L4_2, L5_2)
  end
  return L2_2
end
L0_1._is_coin_enough = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._relic
  L2_2 = L2_2.LevelUpBeforeData
  if L2_2 == nil then
    return
  end
  L3_2 = {}
  A0_2._reward_arg = L3_2
  L3_2 = 0
  L4_2 = A1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._reward_arg
    L8_2 = A0_2._reward_arg
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L9_2 = A1_2[L6_2]
    L7_2[L8_2] = L9_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._clear_selected_material
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_material_panel
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.exp_panel
  L4_2 = L3_2
  L3_2 = L3_2.play_exp_tween
  L5_2 = A0_2._relic
  L6_2 = L2_2
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.is_loaded
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_view
    L0_3(L1_3)
    L0_3 = L2_2.LevelBefore
    L1_3 = A0_2._relic
    L1_3 = L1_3.Level
    if L0_3 < L1_3 then
      L0_3 = G
      L0_3 = L0_3.UIManager
      L0_3 = L0_3.load_and_async_show
      L1_3 = "Ui.Relic.Upgrade.RelicLevelUpResultDialog"
      L2_3 = A0_2._relic
      L3_3 = A0_2._show_item_returns_dialog
      L4_3 = A0_2
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
  end
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_level_up_finish = L5_1
function L5_1(A0_2)
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
L0_1._show_item_returns_dialog = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_hide
  if L1_2 then
    A0_2._has_item_changed = true
    return
  end
  A0_2._has_item_changed = false
  L2_2 = A0_2
  L1_2 = A0_2._check_selected_material
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_material_panel
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_item_changed = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_clear
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_can_to_special_zoom
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = not A1_2
  A0_2._is_hide = L2_2
  L2_2 = A0_2._is_hide
  if not L2_2 then
    L2_2 = A0_2._has_item_changed
    if L2_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L3_2 = A0_2
  L2_2 = A0_2._init_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._check_selected_material
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._materials
  L5_2 = A0_2._all_item
  L6_2 = A0_2._relic
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_owner_active_change = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = false
  L3_2 = A0_2._materials
  L3_2 = #L3_2
  L4_2 = 1
  L5_2 = -1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._materials
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.item
    L8_2 = L7_2.IsPile
    if not L8_2 then
      L8_2 = L7_2.IsProtected
      if L8_2 then
        goto lbl_21
      end
    end
    if A1_2 then
      L8_2 = L7_2.Count
      ::lbl_21::
      if L8_2 == 0 then
        L8_2 = table
        L8_2 = L8_2.remove
        L9_2 = A0_2._materials
        L10_2 = L6_2
        L8_2(L9_2, L10_2)
        L2_2 = true
      end
    end
  end
  return L2_2
end
L0_1._check_selected_material = L5_1
return L0_1
