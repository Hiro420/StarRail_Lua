local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeSpecialGridItem"
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
L2_1.Enable = "#FFFFFFC6"
L2_1.Disable = "#EB4141FF"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.node_icon
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_trigger_click_on_navigation
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_long_press
  L3_2 = A0_2
  L4_2 = A0_2._on_long_press
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_button_action_enable_on_navigation
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._material_id = A1_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetItemDataByConfigID
  L5_2 = A0_2._material_id
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._material_data = L3_2
  L3_2 = nil
  L4_2 = A0_2._material_data
  if L4_2 == nil then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ItemFactory
    L4_2 = L4_2.CreateItemData
    L5_2 = A0_2._material_id
    L4_2 = L4_2(L5_2)
    A0_2._material_data = L4_2
    L3_2 = 0
  else
    L4_2 = A0_2._material_data
    L3_2 = L4_2.Count
  end
  L4_2 = A0_2._icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view_by_item
  L6_2 = A0_2._material_data
  L4_2(L5_2, L6_2)
  if A2_2 == nil then
    if L3_2 ~= 0 then
      L4_2 = A0_2._icon_panel
      L5_2 = L4_2
      L4_2 = L4_2.set_text_all_customized_text
      L7_2 = A0_2
      L6_2 = A0_2._get_count_str
      L8_2 = L3_2
      L9_2 = true
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2, L9_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    else
      L4_2 = A0_2._icon_panel
      L5_2 = L4_2
      L4_2 = L4_2.set_text_all_customized_text
      L7_2 = A0_2
      L6_2 = A0_2._get_count_str
      L8_2 = L3_2
      L9_2 = false
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2, L9_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    end
  else
    L4_2 = "UIText_Stamima_Current"
    L6_2 = A0_2
    L5_2 = A0_2._get_count_str
    L7_2 = A2_2.count
    L8_2 = false
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if L3_2 ~= 0 then
      L7_2 = A0_2
      L6_2 = A0_2._get_count_str
      L8_2 = A2_2.count
      L9_2 = true
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L6_2
    end
    L7_2 = A0_2
    L6_2 = A0_2._get_count_str
    L8_2 = L3_2
    L9_2 = true
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = A0_2._icon_panel
    L8_2 = L7_2
    L7_2 = L7_2.set_text_all_textID
    L9_2 = L4_2
    L10_2 = L5_2
    L11_2 = L6_2
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.canvas_bg
  if L3_2 ~= 0 then
    L5_2 = 1.0
    if L5_2 then
      goto lbl_77
    end
  end
  L5_2 = 0.5
  ::lbl_77::
  L4_2.alpha = L5_2
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.LayoutRebuilder
  L4_2 = L4_2.ForceRebuildLayoutImmediate
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L4_2(L5_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A2_2 then
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "<color=\"%s\">%s</color>"
    L5_2 = L2_1.Enable
    L6_2 = A1_2
    return L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "<color=\"%s\">%s</color>"
    L5_2 = L2_1.Disable
    L6_2 = A1_2
    return L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._get_count_str = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1.set_navigation = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_bg
  if A1_2 then
    L3_2 = 0.5
    if L3_2 then
      goto lbl_9
    end
  end
  L3_2 = 1.0
  ::lbl_9::
  L2_2.alpha = L3_2
end
L0_1.set_canvas_alpha_half = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.bind_click
  L6_2 = A3_2
  L7_2 = A1_2
  L8_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.register_click_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_minus_btn
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_item
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_current_selected = L3_1
function L3_1(A0_2, A1_2)
end
L0_1.set_rarity_display = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Common.ItemDetailDialog"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_view
  L5_2 = A0_2._material_id
  L3_2(L4_2, L5_2)
end
L0_1._on_long_press = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_bg
  L1_2.alpha = 1
end
L0_1._on_unload = L3_1
return L0_1
