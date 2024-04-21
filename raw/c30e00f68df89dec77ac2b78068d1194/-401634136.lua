local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Common.ItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.Upgrade.LightConeMaterialItemIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeMaterialItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = G
L2_1 = L2_1.TextExtensions
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._on_click_material = nil
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ItemIconPanel
  L4_2 = G
  L4_2 = L4_2.LightConeMaterialItemIconPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._item_icon_panel = L1_2
  L1_2 = A0_2._item_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_common_item
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._btn_root_onclick
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._equip_data = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_empty
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._equip_data
  L5_2 = L5_2 == nil
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_common_item
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._equip_data
  L5_2 = L5_2 ~= nil
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._equip_data
  if L3_2 ~= nil then
    L3_2 = A0_2._item_icon_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A0_2._equip_data
    L5_2 = L5_2.ConfigID
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._click_event_listner = A1_2
  L4_2 = A0_2._equip_data
  if L4_2 == nil then
    A0_2._on_click_material = A2_2
  else
    A0_2._on_click_item_minus = A3_2
    L4_2 = A0_2._item_icon_panel
    L5_2 = L4_2
    L4_2 = L4_2.bind_click
    L6_2 = A0_2
    L7_2 = A0_2.on_materialIcon_click
    L8_2 = A0_2.on_minus_click
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1.bind_click = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._equip_data
  if L3_2 ~= nil then
    L3_2 = A0_2._item_icon_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_count
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.set_count = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._equip_data
  if L1_2 ~= nil then
    L1_2 = A0_2._item_icon_panel
    L2_2 = L1_2
    L1_2 = L1_2.trigger_click_item
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._on_click_material
  if L1_2 ~= nil then
    L1_2 = A0_2._on_click_material
    L2_2 = A0_2._click_event_listner
    L3_2 = A0_2._equip_data
    L1_2(L2_2, L3_2)
  end
end
L0_1._btn_root_onclick = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._item_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_minus_btn
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_minus_btn = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._on_click_item_minus
  L3_2 = A0_2._click_event_listner
  L4_2 = A0_2._equip_data
  L2_2(L3_2, L4_2)
end
L0_1.on_minus_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._on_click_item_minus
  L3_2 = A0_2._click_event_listner
  L4_2 = A0_2._equip_data
  L2_2(L3_2, L4_2)
end
L0_1.on_materialIcon_click = L3_1
return L0_1
