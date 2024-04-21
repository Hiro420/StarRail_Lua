local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicLevelUpItemIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_minus
  L4_2 = A0_2._on_item_minus_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_item
  L4_2 = A0_2._on_item_click
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_selected = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_minus_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._item = A1_2
  A0_2._count = 0
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._on_click = A1_2
  A0_2._on_minus_click = A2_2
  A0_2._callback_self = A3_2
end
L0_1.set_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._count = A1_2
  L3_2 = A0_2.is_relic
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._refresh_material
    L3_2(L4_2)
  end
end
L0_1.set_count = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.set_minus_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._item
  L1_2 = L1_2.ItemMainType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemMainType
  L2_2 = L2_2.Relic
  L1_2 = L1_2 == L2_2
  A0_2.is_relic = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_rarity
  L1_2(L2_2)
  L1_2 = A0_2.is_relic
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_relic
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._refresh_material
    L1_2(L2_2)
  end
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._item
  L1_2 = L1_2.Rarity
  if L1_2 == nil then
    L2_2 = A0_2._item
    L2_2 = L2_2.RelicRow
    L1_2 = L2_2.Rarity
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InventoryModule
  L2_2 = L2_2.GetItemRarityConfig
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.rarity_frame
  L6_2 = L2_2.FrameItemRarityPath
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.rairty_bg
  L6_2 = L2_2.FrameItemRarityBgPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = L2_2.LineItemRarityColor
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.rairty_line
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.UIColorUtils
  L5_2 = L5_2.GetColorWithOriginAlpha
  L6_2 = L3_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.rairty_line
  L7_2 = L7_2.color
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.color = L5_2
end
L0_1._setup_rarity = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_item
  L4_2 = A0_2._item
  L4_2 = L4_2.ItemIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_cur_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._count
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._item
  L3_2 = L3_2.Count
  L1_2(L2_2, L3_2)
end
L0_1._refresh_material = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._item
  L1_2 = L1_2.RelicRow
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_item
  L5_2 = L1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_relic_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._item
  L4_2 = L4_2.Level
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._item
  L4_2 = L4_2.IsProtected
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_cur_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._item
  L4_2 = L4_2.Count
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_total_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._item
  L4_2 = L4_2.Count
  L2_2(L3_2, L4_2)
end
L0_1._refresh_relic = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.is_relic
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_relic_level_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.is_relic
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_num_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.is_relic
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._refresh_node = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._invoke_callback
  L3_2 = A0_2._on_click
  L1_2(L2_2, L3_2)
end
L0_1._on_item_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._invoke_callback
  L3_2 = A0_2._on_minus_click
  L1_2(L2_2, L3_2)
end
L0_1._on_item_minus_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._callback_self
  if L2_2 ~= nil then
    L2_2 = A1_2
    L3_2 = A0_2._callback_self
    L4_2 = A0_2._item
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A1_2
    L3_2 = A0_2._item
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._invoke_callback = L1_1
return L0_1
