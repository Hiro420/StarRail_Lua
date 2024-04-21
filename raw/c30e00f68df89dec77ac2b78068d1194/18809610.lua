local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Relic.Upgrade.RelicPlaceHolderPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Upgrade.RelicPlaceHolderPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeLevelUpMaterialPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = {}
L3_1 = 271
L2_1[1] = L3_1
L3_1 = 121
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._default_materail_count = A3_2
  L4_2 = {}
  A0_2._material_selected = L4_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_materials
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_material_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeGrid
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_materials
  L1_2(L2_2)
end
L0_1._on_dispose = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._material_selected = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_materials
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._default_materail_count
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_scrollview
  L2_2(L3_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._event_listener = A1_2
  A0_2._onclick_material = A2_2
  A0_2._onclick_material_minus = A3_2
end
L0_1.bind_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._material_selected = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_scrollview
  L2_2(L3_2)
end
L0_1.set_material_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_materials
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
  L5_2 = A0_2._material_selected
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  if L5_2 then
    L7_2 = L4_2
    L6_2 = L4_2.set_text_all_display
    L9_2 = A0_2
    L8_2 = A0_2._check_is_rank_up_item
    L10_2 = L5_2.item
    L10_2 = L10_2.ConfigID
    L8_2 = L8_2(L9_2, L10_2)
    L8_2 = not L8_2
    L6_2(L7_2, L8_2)
  end
  L7_2 = L4_2
  L6_2 = L4_2.set_click_callback
  L8_2 = A0_2._onclick_material
  L9_2 = A0_2._onclick_material_minus
  L10_2 = A0_2._event_listener
  L6_2(L7_2, L8_2, L9_2, L10_2)
  if L5_2 then
    L6_2 = L5_2.item
    L6_2 = L6_2.IsPile
    if L6_2 then
      L7_2 = L4_2
      L6_2 = L4_2.bind_long_press_repeat_callback
      L8_2 = A0_2._onclick_material_minus
      L9_2 = A0_2._onclick_material_minus
      L10_2 = A0_2._event_listener
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
  end
  return L3_2
end
L0_1._on_material_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_materials
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_scrollview = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_Remove"
    L6_2 = "ActionGroup_EquipmentRotation"
    L7_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_Select"
    L6_2 = "ActionGroup_EquipmentRotation"
    L7_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_short_cut_hint = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = L2_1
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L2_1[L5_2]
    if A1_2 == L6_2 then
      L6_2 = true
      return L6_2
    end
  end
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A1_2 / 1000
  L2_2 = L2_2(L3_2)
  L3_2 = L3_1
  if L2_2 == L3_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L0_1._check_is_rank_up_item = L4_1
return L0_1
