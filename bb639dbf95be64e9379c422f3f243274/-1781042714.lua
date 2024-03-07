local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicItemIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._inventory_item_icon_panel = A1_2
end
L0_1.set_inventory_item_icon_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._item = A1_2
  L2_2 = A1_2.RelicRow
  A0_2._relic_row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._show_needed_node
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_basic_info
  L2_2(L3_2)
end
L0_1.setup_view_by_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._inventory_item_icon_panel
  L1_2 = L1_2._binder
  L1_2 = L1_2.node_belong_to
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._inventory_item_icon_panel
  L1_2 = L1_2._binder
  L1_2 = L1_2.node_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._show_needed_node = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._inventory_item_icon_panel
  if L1_2 then
    L1_2 = A0_2._inventory_item_icon_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_text_all_textID
    L3_2 = "UIText_Rogue_Aeon_Level_Tip_1"
    L4_2 = A0_2._item
    L4_2 = L4_2.Level
    L1_2(L2_2, L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_belongs_to
  L1_2(L2_2)
end
L0_1._setup_basic_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._item
  L1_2 = L1_2.BelongAvatarID
  if L1_2 ~= 0 then
    L1_2 = A0_2._inventory_item_icon_panel
    L1_2 = L1_2._binder
    L1_2 = L1_2.node_belong_to
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetLightWeightActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.AvatarModule
    L1_2 = L1_2.AllAvatars
    L2_2 = A0_2._item
    L2_2 = L2_2.BelongAvatarID
    L1_2 = L1_2[L2_2]
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._inventory_item_icon_panel
    L4_2 = L4_2._binder
    L4_2 = L4_2.img_belong_to
    L5_2 = L1_2.AvatarMiniIconPath
    L2_2(L3_2, L4_2, L5_2)
  else
    L1_2 = A0_2._inventory_item_icon_panel
    L1_2 = L1_2._binder
    L1_2 = L1_2.node_belong_to
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetLightWeightActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_belongs_to = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._item = nil
  A0_2._inventory_item_icon_panel = nil
end
L0_1._on_dispose = L1_1
return L0_1
