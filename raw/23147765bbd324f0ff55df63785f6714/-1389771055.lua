local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AlleyModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "AlleySpecialOrderTabItem"
L3_1 = G
L3_1 = L3_1.TabItem
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2)
  local L2_2
  A0_2._special_order_data_table = A1_2
  L2_2 = A1_2[1]
  A0_2._special_order_data = L2_2
end
L1_1.set_tab_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_icon
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reddot
  L1_2(L2_2)
end
L1_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_root
  return L1_2
end
L1_1.get_root_ref = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._special_order_data_table = nil
  A0_2._special_order_data = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
end
L1_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._special_order_data_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L0_1
    L7_2 = L6_2
    L6_2 = L6_2.RecordSpecialOrderID
    L8_2 = L5_2.OrderID
    L6_2(L7_2, L8_2)
  end
end
L1_1._on_unselect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_icon
    L6_2 = L2_2.GridIcon
    L3_2(L4_2, L5_2, L6_2)
  end
end
L1_1._setup_tab_icon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finish
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._is_all_order_finish
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._setup_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._special_order_data_table
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = pairs
  L2_2 = A0_2._special_order_data_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.Status
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.AlleyOrderStatus
    L7_2 = L7_2.OrderFinish
    if L6_2 ~= L7_2 then
      L6_2 = false
      return L6_2
    end
  end
  L1_2 = true
  return L1_2
end
L1_1._is_all_order_finish = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AlleySpecialOrderTabNew"
  L4_2 = A0_2._special_order_data
  L4_2 = L4_2.SpecialOrderShopID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L1_1._setup_reddot = L2_1
return L1_1
