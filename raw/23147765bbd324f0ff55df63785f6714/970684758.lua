local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = "#DCC291"
L1_1 = "#FFFFFF"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ActivityAlleyPackOrderItemPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_goods_item
  L4_2 = A1_2.GoodsID
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_total_count
  L4_2 = A1_2.GoodsCnt
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_type_color
  L4_2 = A1_2.GoodsID
  L2_2(L3_2, L4_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AlleyGoodsExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_icon
    L6_2 = L2_2.GoodsPic
    L3_2(L4_2, L5_2, L6_2)
  end
end
L2_1._setup_goods_item = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_total_num
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._setup_total_count = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.AlleyPackUtils
  L2_2 = L2_2.get_good_type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.AlleyPackUtils
  L3_2 = L3_2.get_good_type_color
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_color_type_bg
    L5_2 = G
    L5_2 = L5_2.UIColorUtils
    L5_2 = L5_2.GetColor
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L4_2.color = L5_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_color_type_line
    L5_2 = G
    L5_2 = L5_2.UIColorUtils
    L5_2 = L5_2.GetColor
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L4_2.color = L5_2
  end
end
L2_1._setup_type_color = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_cur_num
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.setup_cur_count = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_finish
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_status_color
    L4_2 = L0_1
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._set_status_color
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
  end
end
L2_1.set_is_finish = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_cur_num
  L2_2.color = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_splash
  L2_2.color = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_total_num
  L2_2.color = A1_2
end
L2_1._set_status_color = L3_1
return L2_1
