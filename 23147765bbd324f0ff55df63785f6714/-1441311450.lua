local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportGoodsItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AlleyModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "AlleyTransportGoodsItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L1_2 = L1_2(L2_2)
  A0_2._alley_transport_ui3d = L1_2
  A0_2._last_complete_draw_line_state = false
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._cur_show_layer = A1_2
  A0_2._shop_goods_data = A2_2
  L4_2 = A2_2 or L4_2
  if A2_2 then
    L4_2 = A2_2.GoodsID
    L4_2 = L4_2 == 0
  end
  A0_2._is_empty = L4_2
  A0_2._alley_map_shop_data = A3_2
  L4_2 = L0_1
  L5_2 = L4_2
  L4_2 = L4_2.GetAlleyMapIDByLayer
  L6_2 = A0_2._cur_show_layer
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L0_1
  L6_2 = L5_2
  L5_2 = L5_2.CheckLineCompletedState
  L7_2 = L4_2
  L8_2 = A0_2._alley_map_shop_data
  L8_2 = L8_2.GridID
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2._is_empty
  if not L6_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_icon
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_empty
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.AlleyGoodsExcelTable
    L6_2 = L6_2.GetData
    L7_2 = A2_2.GoodsID
    L6_2 = L6_2(L7_2)
    L8_2 = A0_2
    L7_2 = A0_2._load_sprite_to
    L9_2 = A0_2._binder
    L9_2 = L9_2.img_icon
    L10_2 = L6_2.GoodsPic
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = A0_2
    L7_2 = A0_2._load_sprite_to
    L9_2 = A0_2._binder
    L9_2 = L9_2.img_lock_icon
    L10_2 = L6_2.GoodsPicLocked
    L7_2(L8_2, L9_2, L10_2)
    if L5_2 then
      L7_2 = A0_2._binder
      L7_2 = L7_2.img_icon
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.img_lock_icon
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = false
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.canvas_group_img_icon
      L7_2.alpha = 1
    else
      L7_2 = A0_2._binder
      L7_2 = L7_2.img_icon
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = false
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.img_lock_icon
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.canvas_group_img_lock_icon
      L7_2.alpha = 1
    end
    L7_2 = A0_2._last_complete_draw_line_state
    if L7_2 == false and L5_2 == true then
      L7_2 = A0_2._binder
      L7_2 = L7_2.animation_root
      L8_2 = L7_2
      L7_2 = L7_2.Play
      L9_2 = "AlleyCargoItem_Unlock"
      L7_2(L8_2, L9_2)
    end
    L7_2 = A0_2._last_complete_draw_line_state
    if L7_2 == true and L5_2 == false then
      L7_2 = A0_2._binder
      L7_2 = L7_2.animation_root
      L8_2 = L7_2
      L7_2 = L7_2.Play
      L9_2 = "AlleyCargoItem_Lock"
      L7_2(L8_2, L9_2)
    end
  else
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_icon
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_empty
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = true
    L6_2(L7_2, L8_2)
  end
  A0_2._last_complete_draw_line_state = L5_2
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AlleyGoodsExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_icon
  L6_2 = L2_2.GoodsPic
  L3_2(L4_2, L5_2, L6_2)
end
L1_1.setup_view_static = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.enabled = false
end
L1_1._on_load = L2_1
return L1_1
