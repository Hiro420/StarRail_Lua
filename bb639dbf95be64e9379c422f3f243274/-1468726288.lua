local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.Upgrade.LightConeLevelUpItemListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.Upgrade.LightConeLevelUpItemListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicLevelUpItemListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._materials = A1_2
  A0_2._all_item = A2_2
  A0_2._filtered_item = A2_2
  A0_2._cur_item = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._init_sort
  L4_2(L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._on_item_click = A1_2
  A0_2._on_minus_click = A2_2
  A0_2._item_validate_callback = A3_2
  A0_2._callback_self = A4_2
end
L0_1.set_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.toggle_sub_menu_and_relic
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.LevelUpItemListDialog"
  L3_2 = A0_2
  L4_2 = A0_2.hide
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._levelup_dialog = L1_2
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_item_click
  L4_2 = A0_2._on_minus_click
  L5_2 = A0_2._callback_self
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
  L1_2 = L1_2.register_sort_callback
  L3_2 = A0_2._on_btn_order
  L4_2 = A0_2._on_refresh_sort_type
  L5_2 = A0_2._on_btn_sort_type
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.register_sell_callback
  L3_2 = A0_2._on_btn_sell
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.register_item_validate_callback
  L3_2 = A0_2._item_validate_callback
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._materials
  L4_2 = A0_2._filtered_item
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.setup_view_order_panel
  L3_2 = A0_2._current_sort_type
  L4_2 = G
  L4_2 = L4_2.RelicUtils
  L4_2 = L4_2.supported_sort_type
  L5_2 = A0_2._is_descend
  L5_2 = not L5_2
  L6_2 = A0_2._set_sort_type_text_id
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_sort_type
  L1_2(L2_2)
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.play_fade_in
  L1_2(L2_2)
end
L0_1.show = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = "Ui.Relic.RelicSellPage"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.init
  L2_2(L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_except_item
  L4_2 = A0_2._cur_item
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.show
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_sell = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.toggle_sub_menu_and_relic
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._levelup_dialog
  L2_2 = L1_2
  L1_2 = L1_2.exit
  L1_2(L2_2)
  A0_2._levelup_dialog = nil
end
L0_1.hide = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._is_descend = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.InventorySortType
  L1_2 = L1_2.Rarity
  A0_2._current_sort_type = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.get_sort_type_from_cache
  L2_2 = A0_2.__name
  L3_2 = A0_2._current_sort_type
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.InventorySortType
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._current_sort_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._init_sort = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._levelup_dialog
  if L1_2 ~= nil then
    L1_2 = A0_2._levelup_dialog
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._materials
    L4_2 = A0_2._filtered_item
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_sort_type
  L1_2(L2_2)
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._filtered_item
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = A0_3.IsPile
    if L2_3 then
      L2_3 = A1_3.IsPile
      if L2_3 then
        L2_3 = G
        L2_3 = L2_3.RelicUtils
        L2_3 = L2_3.non_relic_default_compare
        L3_3 = A0_3
        L4_3 = A1_3
        return L2_3(L3_3, L4_3)
      end
    end
    L2_3 = A0_3.IsPile
    if L2_3 then
      L2_3 = true
      return L2_3
    end
    L2_3 = A1_3.IsPile
    if L2_3 then
      L2_3 = false
      return L2_3
    end
    L2_3 = A0_3.IsDiscard
    L3_3 = A1_3.IsDiscard
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.IsDiscard
      return L2_3
    end
    L2_3 = A0_3.IsProtected
    L3_3 = A1_3.IsProtected
    if L2_3 ~= L3_3 then
      L2_3 = A1_3.IsProtected
      return L2_3
    end
    L2_3 = G
    L2_3 = L2_3.RelicUtils
    L2_3 = L2_3.compare
    L3_3 = A0_3
    L4_3 = A1_3
    L5_3 = A0_2._current_sort_type
    L6_3 = A0_2._is_descend
    return L2_3(L3_3, L4_3, L5_3, L6_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._levelup_dialog
  if L1_2 ~= nil then
    L1_2 = A0_2._levelup_dialog
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._materials
    L4_2 = A0_2._filtered_item
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._levelup_dialog
    L2_2 = L1_2
    L1_2 = L1_2.play_fade_in
    L1_2(L2_2)
  end
end
L0_1._refresh = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2.IsProtected
  if L4_2 then
    return
  end
  L4_2 = A0_2._on_item_click
  L5_2 = A0_2._callback_self
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_item_repeat_click_add = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A0_2._on_minus_click
  L5_2 = A0_2._callback_self
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = false
  L9_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_item_repeat_click_minus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.hide
  L1_2(L2_2)
end
L0_1._on_btn_close = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Inventory.InventorySortDialog"
  L3_2 = A0_2._current_sort_type
  L4_2 = G
  L4_2 = L4_2.RelicUtils
  L4_2 = L4_2.supported_sort_type
  L5_2 = A0_2
  L6_2 = A0_2._on_refresh_sort_type
  L7_2 = "UIText_TeamMemberOrderDialog_Title"
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_btn_sort_type = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_descend
  L1_2 = not L1_2
  A0_2._is_descend = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_btn_order = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._current_sort_type
  if A1_2 == L2_2 then
    return
  end
  A0_2._current_sort_type = A1_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.save_sort_type_to_cache
  L3_2 = A0_2.__name
  L4_2 = A1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.InventorySortType
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_refresh_sort_type = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InventoryModule
  L2_2 = L2_2.GetSortTypeName
  L3_2 = A1_2
  return L2_2(L3_2)
end
L0_1._set_sort_type_text_id = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.InventoryModule
  L1_2 = L1_2.GetSortTypeName
  L2_2 = A0_2._current_sort_type
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_pc_or_ps_or_mobile_gamepad_mode
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = A0_2._levelup_dialog
    if L2_2 ~= nil then
      L2_2 = A0_2._levelup_dialog
      L3_2 = L2_2
      L2_2 = L2_2.refresh_sort_type_text
      L4_2 = L1_2
      L5_2 = A0_2._is_descend
      L5_2 = not L5_2
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._refresh_sort_type = L1_1
return L0_1
