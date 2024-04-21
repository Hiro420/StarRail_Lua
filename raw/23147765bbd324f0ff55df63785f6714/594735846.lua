local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Relic.Upgrade.RelicPlaceHolderPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Upgrade.RelicPlaceHolderPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.BtnAutoFilterPanelPC"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.BtnAutoFilterPanelPCBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicLevelUpMaterialListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Relic_ALUC_R"
L2_1 = "UIText_Relic_Enhance_InputRules_SubTitle_1"
L3_1 = "UIText_Relic_Enhance_InputRules_SubTitle_2"
L4_1 = "UIText_Relic_Enhance_InputRules_Option_ToNextStep"
L5_1 = "UIText_Relic_Enhance_InputRules_Hint_1"
L6_1 = "UIText_Relic_Enhance_Hint_NextStepLevel"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_auto
  L4_2 = A0_2._on_btn_auto
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_clear
  L4_2 = A0_2._on_btn_clear
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rarity
  L4_2 = A0_2._on_btn_rarity
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.material_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_filter
  L1_2(L2_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._materials = A1_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = 8
  end
  A0_2._max_item_num = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_cur_filter_rarity
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L1_1
  L6_2 = tostring
  L7_2 = A0_2._current_auto_fill_filter
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.material_list
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._max_item_num
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.material_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 1
  L3_2 = A0_2._materials
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._materials
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.item
    if L7_2 == A1_2 then
      return L6_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_material = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._get_forbid_refresh_mat_callback
  if L1_2 then
    L1_2 = A0_2._get_forbid_refresh_mat_callback_self
    if L1_2 then
      L1_2 = A0_2._get_forbid_refresh_mat_callback
      L2_2 = A0_2._get_forbid_refresh_mat_callback_self
      L1_2 = L1_2(L2_2)
      A0_2._is_forbid_refresh_material_panel = L1_2
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1.refresh = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A2_2 then
    A2_2 = 1
  end
  L4_2 = 1
  L5_2 = A0_2._materials
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._materials
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2.item
    if L9_2 == A1_2 then
      L9_2 = L8_2.count
      L9_2 = L9_2 + A2_2
      L8_2.count = L9_2
      L9_2 = L8_2.count
      L10_2 = L8_2.item
      L10_2 = L10_2.Count
      if L9_2 > L10_2 then
        L9_2 = L8_2.item
        L9_2 = L9_2.Count
        L8_2.count = L9_2
      end
      if not A3_2 then
        L10_2 = A0_2
        L9_2 = A0_2._refresh
        L9_2(L10_2)
      end
      return L8_2
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._try_add_new_material
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not A3_2 then
    L6_2 = A0_2
    L5_2 = A0_2._refresh
    L5_2(L6_2)
  end
  return L4_2
end
L0_1.add_item = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = 1
  L4_2 = A0_2._materials
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._materials
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2.item
    if L8_2 == A1_2 then
      L9_2 = A0_2
      L8_2 = A0_2._try_remove_item
      L10_2 = L7_2
      L11_2 = L6_2
      L12_2 = A2_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
      L9_2 = A0_2
      L8_2 = A0_2._refresh
      L8_2(L9_2)
      return L7_2
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1.remove_item = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 1
  L3_2 = A0_2._materials
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._materials
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.item
    if L7_2 == A1_2 then
      return L6_2
    end
  end
end
L0_1.get_material_item = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2._materials
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.item
    L7_2 = L7_2.ItemMainType
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.ItemMainType
    L8_2 = L8_2.Relic
    if L7_2 == L8_2 then
      L7_2 = L6_2.item
      L7_2 = L7_2.RelicRow
      L7_2 = L7_2.CoinCost
      L1_2 = L1_2 + L7_2
    else
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.RelicExpItemExcelTable
      L7_2 = L7_2.GetData
      L8_2 = L6_2.item
      L8_2 = L8_2.ConfigID
      L7_2 = L7_2(L8_2)
      L8_2 = L7_2.CoinCost
      L9_2 = L6_2.count
      L8_2 = L8_2 * L9_2
      L1_2 = L1_2 + L8_2
    end
  end
  return L1_2
end
L0_1.calculate_coin_cost = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  A0_2._on_auto_add = A1_2
  A0_2._on_clear = A2_2
  A0_2._on_level_upgrade_limit_changed = A3_2
  A0_2._on_item_click = A4_2
  A0_2._callback_self = A5_2
end
L0_1.set_click_callback = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._get_forbid_refresh_mat_callback = A1_2
  A0_2._get_forbid_refresh_mat_callback_self = A2_2
end
L0_1.register_get_forbid_refresh_mat_callback = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = 2
  L3_2 = 3
  L4_2 = 4
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  A0_2._auto_fill_filters = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.RelicLevelUpAutoFillFilterIndex
  A0_2._current_auto_fill_filter = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.RelicLevelUpEnableBonusLevelLimit
  A0_2._upgrade_to_bonus_level = L1_2
end
L0_1._init_filter = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RelicPlaceHolderPanel
    L8_2 = G
    L8_2 = L8_2.RelicPlaceHolderPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.set_item_select_callback
    L7_2 = A0_2._refresh_short_cut_hint
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._materials
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_item_click_callback
  L8_2 = A0_2._on_item_click
  L9_2 = A0_2._callback_self
  L6_2(L7_2, L8_2, L9_2)
  if L5_2 then
    L6_2 = L5_2.item
    L6_2 = L6_2.IsPile
    if L6_2 then
      L7_2 = L4_2
      L6_2 = L4_2.bind_long_press_repeat_callback
      L8_2 = A0_2._on_item_click
      L9_2 = A0_2._on_item_click
      L10_2 = A0_2._callback_self
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
  end
  return L3_2
end
L0_1._on_item_change = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.LightCone.Upgrade.LightConeSelectOrderDialog"
  L3_2 = A0_2._current_auto_fill_filter
  L4_2 = A0_2._auto_fill_filters
  L5_2 = A0_2
  L6_2 = A0_2._on_refresh_auto_fill_filter
  L7_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = L1_2
  L2_2 = L1_2.show_toggle_option
  L4_2 = A0_2._upgrade_to_bonus_level
  L5_2 = L3_1
  L6_2 = L4_1
  L7_2 = L5_1
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = L1_2
  L2_2 = L1_2.show_sort_title
  L4_2 = true
  L5_2 = L2_1
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_btn_rarity = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._invoke_callback
  L3_2 = A0_2._on_auto_add
  L4_2 = A0_2._current_auto_fill_filter
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._materials
  L1_2 = #L1_2
  L1_2 = L1_2 ~= 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_auto
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_clear
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_auto = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._invoke_callback
  L3_2 = A0_2._on_clear
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_auto
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_clear
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_clear = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2._get_forbid_refresh_mat_callback
  if L4_2 then
    L4_2 = A0_2._get_forbid_refresh_mat_callback_self
    if L4_2 then
      L4_2 = A0_2._get_forbid_refresh_mat_callback
      L5_2 = A0_2._get_forbid_refresh_mat_callback_self
      L4_2 = L4_2(L5_2)
      A0_2._is_forbid_refresh_material_panel = L4_2
    end
  end
  L4_2 = A1_2.item
  L4_2 = L4_2.ItemMainType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ItemMainType
  L5_2 = L5_2.Relic
  if L4_2 == L5_2 then
    L4_2 = table
    L4_2 = L4_2.remove
    L5_2 = A0_2._materials
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
    A0_2._is_forbid_refresh_material_panel = false
  else
    L4_2 = A1_2.count
    L4_2 = L4_2 - A3_2
    if L4_2 < 0 then
      L5_2 = 0
      if L5_2 then
        goto lbl_35
      end
    end
    L5_2 = L4_2
    ::lbl_35::
    A1_2.count = L5_2
    L5_2 = A1_2.count
    if L5_2 == 0 then
      L5_2 = table
      L5_2 = L5_2.remove
      L6_2 = A0_2._materials
      L7_2 = A2_2
      L5_2(L6_2, L7_2)
      A0_2._is_forbid_refresh_material_panel = false
    end
  end
end
L0_1._try_remove_item = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._materials
  L3_2 = #L3_2
  L4_2 = A0_2._max_item_num
  if L3_2 >= L4_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UIText_Toast_Upgrade_CountMax"
    L3_2(L4_2, L5_2)
    L3_2 = nil
    return L3_2
  end
  L3_2 = {}
  L3_2.item = A1_2
  L3_2.count = A2_2
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._materials
  L6_2 = A0_2._materials
  L6_2 = #L6_2
  L6_2 = L6_2 + 1
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  return L3_2
end
L0_1._try_add_new_material = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2._report_upgrade_material_selected
  L5_2 = A0_2._current_auto_fill_filter
  L6_2 = A1_2
  L7_2 = A0_2._upgrade_to_bonus_level
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2.RelicLevelUpAutoFillFilterIndex = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2.RelicLevelUpEnableBonusLevelLimit = A2_2
  A0_2._current_auto_fill_filter = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_cur_filter_rarity
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L1_1
  L6_2 = tostring
  L7_2 = A0_2._current_auto_fill_filter
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._upgrade_to_bonus_level
  L3_2 = L3_2 ~= A2_2
  A0_2._upgrade_to_bonus_level = A2_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh_bonus_level_status
  L4_2(L5_2)
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._invoke_callback
    L6_2 = A0_2._on_level_upgrade_limit_changed
    L7_2 = A0_2._current_auto_fill_filter
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._on_refresh_auto_fill_filter = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_Remove"
    L6_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_Select"
    L6_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_short_cut_hint = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._materials
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_auto
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_clear
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._is_forbid_refresh_material_panel
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.material_list
    L2_2 = L1_2
    L1_2 = L1_2.RefreshAllShownItem
    L1_2(L2_2)
  end
  A0_2._is_forbid_refresh_material_panel = false
  L2_2 = A0_2
  L1_2 = A0_2._refresh_bonus_level_status
  L1_2(L2_2)
end
L0_1._refresh = L7_1
function L7_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._callback_self
  if L2_2 ~= nil then
    L2_2 = A1_2
    L3_2 = A0_2._callback_self
    L4_2 = ...
    L2_2(L3_2, L4_2)
  else
    L2_2 = A1_2
    L3_2, L4_2 = ...
    L2_2(L3_2, L4_2)
  end
end
L0_1._invoke_callback = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._cur_level = A1_2
  A0_2._max_level = A2_2
end
L0_1.set_cur_and_max_level = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._upgrade_to_bonus_level
  if L1_2 then
    L1_2 = A0_2._next_bonus_level
    return L1_2
  end
  L1_2 = A0_2._max_level
  return L1_2
end
L0_1.get_upgrade_target_level = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bonus_level_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._upgrade_to_bonus_level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._upgrade_to_bonus_level
  if L1_2 then
    L1_2 = math
    L1_2 = L1_2.min
    L2_2 = A0_2._max_level
    L3_2 = G
    L3_2 = L3_2.RelicUtils
    L3_2 = L3_2.get_next_bonus_level
    L4_2 = A0_2._cur_level
    L3_2, L4_2 = L3_2(L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._next_bonus_level = L1_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_bonus_level_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L6_1
    L4_2 = A0_2._next_bonus_level
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._refresh_bonus_level_status = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.SDKLuaReportAdapter
  L5_2 = L5_2.ReportRelicUpgradeMaterialFilterSelectOptions
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L0_1._report_upgrade_material_selected = L7_1
return L0_1
