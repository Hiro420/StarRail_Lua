local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicSynthesis.ItemComposeRelicSynthesisSelectMainAffixLeftPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicSynthesis.ItemComposeRelicSynthesisSelectMainAffixLeftPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicSynthesis.ItemComposeRelicSynthesisSingleMainAffixPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicSynthesis.ItemComposeRelicSynthesisSingleMainAffixPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicSynthesis.ItemComposeRelicSynthesisSelectMainAffixDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeRelicSynthesisSelectMainAffixDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = 236
L3_1 = {}
L3_1.SingleMainAffix = 1
L3_1.NotHaveBlackCrystal = 2
L3_1.NotHaveEnoughMaterial = 3
L3_1.HaveBlackCrystal = 4
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ItemComposeRelicSynthesisSelectMainAffixDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._current_dialog_mode
  L2_2 = L3_1.HaveBlackCrystal
  if L1_2 ~= L2_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._selected_index
  if L1_2 == nil then
    A0_2._selected_index = 1
  end
  L1_2 = A0_2._btn_list
  L2_2 = A0_2._selected_index
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L1_2 = A0_2._btn_list
    L2_2 = A0_2._selected_index
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.Button
    L1_2 = L1_2.gameObject
    return L1_2
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_btn_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_close
  L4_2 = A0_2._on_btn_cancel
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_affix_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_main_affix_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = L3_1.NotHaveBlackCrystal
  A0_2._current_dialog_mode = L1_2
  A0_2._selected_main_affix_id = 0
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_close_callback = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._relic_config = A1_2
  A0_2._selected_main_affix_id = A2_2
  A0_2._relic_box_data = A3_2
  L4_2 = {}
  A0_2._btn_list = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_black_crystal_info
  L4_2(L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_main_affix_select_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = "UIText_ItemCompose_RelicCompose_Dialog_Title_1"
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._get_main_affix_id_list
  L4_2(L5_2)
  L4_2 = A0_2._main_affix_id_list
  L4_2 = #L4_2
  if L4_2 == 1 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.RelicMainAffixConfigExcelTable
    L4_2 = L4_2.GetData
    L5_2 = A0_2._relic_config
    L5_2 = L5_2.MainAffixGroup
    L6_2 = A0_2._main_affix_id_list
    L6_2 = L6_2[1]
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.AvatarPropertyExcelTable
    L5_2 = L5_2.GetData
    L6_2 = L4_2.Property
    L5_2 = L5_2(L6_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.txt_single_affix_disable_hint
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = "UIText_ItemCompose_RelicCompose_Dialog_Tip_3"
    L9_2 = string
    L9_2 = L9_2.format
    L10_2 = "<color=\"#F09839\">%s</color>"
    L11_2 = G
    L11_2 = L11_2.TextmapStatic
    L11_2 = L11_2.GetText
    L12_2 = L5_2.PropertyNameRelic
    L11_2, L12_2 = L11_2(L12_2)
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L6_2 = L3_1.SingleMainAffix
    A0_2._current_dialog_mode = L6_2
    L7_2 = A0_2
    L6_2 = A0_2._set_display_hide
    L6_2(L7_2)
    return
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_single_affix_disable_hint
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = "UIText_ItemCompose_RelicCompose_Dialog_Tip_1"
  L4_2(L5_2, L6_2)
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetItemCountByConfigID
  L6_2 = L2_1
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 < 1 then
    L5_2 = L3_1.NotHaveBlackCrystal
    A0_2._current_dialog_mode = L5_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_disable_hint
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "UIText_ItemCompose_RelicCompose_Dialog_Tip_2"
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2._set_display_hide
    L5_2(L6_2)
    return
  end
  L5_2 = A0_2._relic_box_data
  L6_2 = L5_2
  L5_2 = L5_2.CanCompose
  L5_2 = L5_2(L6_2)
  L5_2 = #L5_2
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.ComposeItemFailedType
  L6_2 = L6_2.NeedResource
  L6_2 = #L6_2
  if L5_2 >= L6_2 then
    L5_2 = L3_1.NotHaveEnoughMaterial
    A0_2._current_dialog_mode = L5_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_disable_hint
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "UIText_ItemCompose_Tips_05"
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2._set_display_hide
    L5_2(L6_2)
    return
  end
  L5_2 = L3_1.HaveBlackCrystal
  A0_2._current_dialog_mode = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._set_display_hide
  L5_2(L6_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.CoroutineUtils
  L5_2 = L5_2.InvokeAfterFrames
  L6_2 = 3
  function L7_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._init_ui_navigation
    L0_3(L1_3)
  end
  L5_2(L6_2, L7_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ItemComposeRelicSynthesisSelectMainAffixLeftPanel
  L4_2 = G
  L4_2 = L4_2.ItemComposeRelicSynthesisSelectMainAffixLeftPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  panel = L1_2
  L1_2 = panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_black_crystal_panel
  L1_2(L2_2, L3_2)
  L1_2 = panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetItemCountByConfigID
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == 0 then
    L2_2 = string
    L2_2 = L2_2.format
    L3_2 = "<color=\"#C84A32\">%s</color>"
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  L2_2 = panel
  L3_2 = L2_2
  L2_2 = L2_2.set_count
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_black_crystal_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_affix_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._current_dialog_mode
  L4_2 = L3_1.SingleMainAffix
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_disable_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._current_dialog_mode
  L4_2 = L3_1.NotHaveBlackCrystal
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_cancel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._current_dialog_mode
  L4_2 = L3_1.SingleMainAffix
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._current_dialog_mode
  L4_2 = L3_1.NotHaveBlackCrystal
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_main_affix_list
  L1_2(L2_2)
end
L0_1._set_display_hide = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2._main_affix_id_list = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RelicMainAffixConfigExcelTable
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2()
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L3_2 = L2_2.GroupID
    L4_2 = A0_2._relic_config
    L4_2 = L4_2.MainAffixGroup
    if L3_2 == L4_2 then
      L3_2 = L2_2.IsAvailable
      if L3_2 then
        L3_2 = table
        L3_2 = L3_2.insert
        L4_2 = A0_2._main_affix_id_list
        L5_2 = L2_2.AffixID
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L0_1._get_main_affix_id_list = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._main_affix_id_list
  L1_2 = #L1_2
  if L1_2 <= 1 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_affix_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._main_affix_id_list
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_affix_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_main_affix_list = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ItemComposeRelicSynthesisSingleMainAffixPanel
    L8_2 = G
    L8_2 = L8_2.ItemComposeRelicSynthesisSingleMainAffixPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._relic_config
  L8_2 = A0_2._main_affix_id_list
  L9_2 = A2_2 + 1
  L8_2 = L8_2[L9_2]
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_click_callback
  L7_2 = A0_2._on_single_affix_selected
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_interactable
  L7_2 = A0_2._current_dialog_mode
  L8_2 = L3_1.HaveBlackCrystal
  L7_2 = L7_2 == L8_2
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_selected
  L7_2 = A0_2._selected_main_affix_id
  L8_2 = A0_2._main_affix_id_list
  L9_2 = A2_2 + 1
  L8_2 = L8_2[L9_2]
  L7_2 = L7_2 == L8_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._selected_main_affix_id
  L6_2 = A0_2._main_affix_id_list
  L7_2 = A2_2 + 1
  L6_2 = L6_2[L7_2]
  if L5_2 == L6_2 then
    L5_2 = A2_2 + 1
    A0_2._selected_index = L5_2
  end
  L5_2 = false
  L6_2 = 1
  L7_2 = A0_2._btn_list
  L7_2 = #L7_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A0_2._btn_list
    L10_2 = L10_2[L9_2]
    L10_2 = L10_2.Index
    L11_2 = A0_2._main_affix_id_list
    L12_2 = A2_2 + 1
    L11_2 = L11_2[L12_2]
    if L10_2 == L11_2 then
      L5_2 = true
      break
    end
  end
  if L5_2 == false then
    L6_2 = {}
    L7_2 = A0_2._main_affix_id_list
    L8_2 = A2_2 + 1
    L7_2 = L7_2[L8_2]
    L6_2.Index = L7_2
    L7_2 = L4_2._binder
    L7_2 = L7_2.btn_root
    L6_2.Button = L7_2
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._btn_list
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  return L3_2
end
L0_1._on_main_affix_changed = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._selected_main_affix_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_main_affix_list
  L2_2(L3_2)
end
L0_1._on_single_affix_selected = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_cancel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._current_dialog_mode
  L2_2 = L3_1.HaveBlackCrystal
  if L1_2 == L2_2 then
    L1_2 = A0_2._callback
    if L1_2 ~= nil then
      L1_2 = A0_2._callback_self
      if L1_2 ~= nil then
        L1_2 = A0_2._callback
        L2_2 = A0_2._callback_self
        L3_2 = A0_2._selected_main_affix_id
        L1_2(L2_2, L3_2)
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_confirm = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
return L0_1
