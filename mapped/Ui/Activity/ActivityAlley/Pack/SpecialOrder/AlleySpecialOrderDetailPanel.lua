local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AlleyModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "AlleySpecialOrderDetailPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._special_order_data = nil
  A0_2._special_order_table = nil
  A0_2._config_ids = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._special_order_table = A1_2
  L2_2 = A0_2._special_order_table
  L2_2 = L2_2[1]
  A0_2._special_order_data = L2_2
  L2_2 = A0_2._special_order_data
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._setup_shop_info
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_order
    L2_2(L3_2)
  end
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._special_order_data
  L1_2 = L1_2.SpecialOrderShopID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AlleyGridExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.GridDesc
    L3_2(L4_2, L5_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = L2_2.GridTitle
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_title
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_ActivityAlley_SpecialOrder_TitleNew"
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_title
  L6_2 = A0_2._special_order_data
  L6_2 = L6_2.OrderPicPath
  L3_2(L4_2, L5_2, L6_2)
end
L1_1._setup_shop_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_order_item_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._special_order_table
  L4_2 = nil
  L5_2 = nil
  L6_2 = NavigationType
  L6_2 = L6_2.Vertical
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L1_1._setup_order = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_order_item_list
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L1_1.get_first_selected_object = L2_1
return L1_1
