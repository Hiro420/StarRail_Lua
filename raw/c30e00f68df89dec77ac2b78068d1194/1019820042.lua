local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2._item_data = nil
  A0_2._btn_callback = nil
  A0_2._icon_panel = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_item
  function L2_2()
    local L0_3, L1_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.CoroutineUtils
    L0_3 = L0_3.InvokeNextFrame
    function L1_3()
      local L0_4, L1_4
      L0_4 = A0_2
      L1_4 = L0_4
      L0_4 = L0_4._on_btn_click
      L0_4(L1_4)
    end
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._icon_panel
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.InventoryItemIconPanel
    L5_2 = G
    L5_2 = L5_2.InventoryItemIconPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._icon_panel = L2_2
    L2_2 = A0_2._icon_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.item_icon
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._icon_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind_click
    L4_2 = A0_2
    L5_2 = A0_2._on_btn_click
    L2_2(L3_2, L4_2, L5_2)
  end
  A0_2._item_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.name_txt
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._item_data
  L4_2 = L4_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.num_txt
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._item_data
  L4_2 = L4_2.IsShow
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.num_txt
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = ""
  L5_2 = A0_2._item_data
  L5_2 = L5_2.Count
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.hold_txt
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_ItemCompose_Tips_06"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.hold_txt
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._item_data
  L4_2 = L4_2.IsShow
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_panel
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.status_red_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.status_lock_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._item_data
  L4_2 = L4_2.IsLock
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_bg
  L3_2 = A0_2._item_data
  L3_2 = L3_2.IsCanCompose
  if L3_2 then
    L3_2 = A0_2._item_data
    L3_2 = L3_2.IsFormulaUnlocked
    if L3_2 then
      L3_2 = 1.0
      if L3_2 then
        goto lbl_86
      end
    end
  end
  L3_2 = 0.5
  ::lbl_86::
  L2_2.alpha = L3_2
  L2_2 = A0_2._icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view_by_item
  L4_2 = A0_2._item_data
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_red_dot
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  A0_2._btn_callback = A1_2
end
L0_1.register_click_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_item
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._btn_callback
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._btn_callback
  L2_2 = A0_2._item_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_item
  L3_2 = L3_2.gameObject
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
return L0_1
