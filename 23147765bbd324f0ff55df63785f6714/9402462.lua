local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeGridItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._icon_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.InventoryItemIconPanel
    L4_2 = G
    L4_2 = L4_2.InventoryItemIconPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._icon_panel = L1_2
    L1_2 = A0_2._icon_panel
    L2_2 = L1_2
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.item_icon
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._item_data = A1_2
  L2_2 = A0_2._item_data
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_panel
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_red_dot
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_icon
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_count
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_status
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._item_data
  L2_2 = L2_2.ItemID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.ItemName
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_rarity_star
  L4_2 = L1_2.Rarity
  L4_2 = #L4_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_formula_locked
  L2_2(L3_2)
end
L0_1._setup_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = A0_2._item_data
  L3_2 = L3_2.IsLock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._item_data
  L1_2 = L1_2.IsLock
  if not L1_2 then
    L1_2 = A0_2._item_data
    L2_2 = L1_2
    L1_2 = L1_2.CanCompose
    L1_2 = L1_2(L2_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ComposeItemFailedType
    L2_2 = L2_2.NeedResource
    if L1_2 ~= L2_2 then
      L1_2 = A0_2._item_data
      L2_2 = L1_2
      L1_2 = L1_2.CanCompose
      L1_2 = L1_2(L2_2)
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.ComposeItemFailedType
      L2_2 = L2_2.InsufficientRemainComposeNum
      if L1_2 ~= L2_2 then
        goto lbl_51
      end
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_lock_bg
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetLightWeightActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_lock_icon
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetLightWeightActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  ::lbl_51::
end
L0_1._setup_status = L2_1
function L2_1(A0_2, A1_2)
  A0_2._btn_callback = A1_2
end
L0_1.register_click_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.CoroutineUtils
    L2_2 = L2_2.InvokeAfterFrames
    L3_2 = 1
    function L4_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2._binder
      if L0_3 then
        L0_3 = A0_2._binder
        L0_3 = L0_3.btn_item
        L1_3 = L0_3
        L0_3 = L0_3.SetChecked
        L2_3 = true
        L0_3(L1_3, L2_3)
      end
    end
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_item
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_selected = L2_1
function L2_1(A0_2, A1_2)
end
L0_1._setup_rarity_star = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ItemFactory
  L1_2 = L1_2.CreateItemData
  L2_2 = A0_2._item_data
  L2_2 = L2_2.ItemID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._icon_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view_by_item
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind_click
  L4_2 = A0_2
  L5_2 = A0_2._on_btn_click
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_text_all_display
  L4_2 = A0_2._item_data
  L4_2 = L4_2.IsShow
  L2_2(L3_2, L4_2)
end
L0_1._setup_icon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._item_data
  L1_2 = L1_2.IsShow
  if L1_2 then
    L1_2 = A0_2._icon_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_count
    L3_2 = A0_2._item_data
    L3_2 = L3_2.Count
    L1_2(L2_2, L3_2)
  end
end
L0_1._set_count = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._item_data
  L1_2 = L1_2.Row
  L1_2 = L1_2.FormulaRequire
  if L1_2 == 0 then
    L2_2 = A0_2
    L1_2 = A0_2._set_formula_mark_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_consumable_icon_display
  L3_2 = A0_2._item_data
  L3_2 = L3_2.IsFormulaUnlocked
  L3_2 = L3_2 == true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_formula_mark_active
  L3_2 = A0_2._item_data
  L3_2 = L3_2.IsFormulaUnlocked
  L3_2 = L3_2 == false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._item_data
  L1_2 = L1_2.IsFormulaUnlocked
  if L1_2 == false then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.GetItemCountByConfigID
    L3_2 = A0_2._item_data
    L3_2 = L3_2.Row
    L3_2 = L3_2.FormulaRequire
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_lock_bg
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_lock_icon
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = L1_2 < 1
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ItemExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A0_2._item_data
    L3_2 = L3_2.Row
    L3_2 = L3_2.FormulaRequire
    L2_2 = L2_2(L3_2)
  end
end
L0_1._set_formula_locked = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_formula_mark
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_formula_mark
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._set_formula_mark_active = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._btn_callback
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_item
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._btn_callback
  L2_2 = A0_2._item_data
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ItemComposeIsNew"
  L4_2 = A0_2._item_data
  L4_2 = L4_2.ConfigID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.red_dot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_red_dot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L1_2 = L1_2.is_in_anim
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._set_count
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_status
  L1_2(L2_2)
end
L0_1._on_return_to_top = L2_1
return L0_1
