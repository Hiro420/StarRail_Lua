local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapSymbolDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapSymbolWorldShopPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapWorldShopDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapSymbolWorldShopPanel
  L4_2 = G
  L4_2 = L4_2.MapSymbolWorldShopPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._world_shop_panel = L1_2
  L1_2 = A0_2._world_shop_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_prestige
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.param_data = A1_2
  L2_2 = A0_2.param_data
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.EntranceID
  A0_2.entrance_id = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_reward_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_WordShop_MapInfo_Reward"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_world_shop_view
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = nil
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.SpecialMappingInfoExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2.param_data
  L3_2 = L3_2.map_icon_data
  L3_2 = L3_2.MappingInfoRow
  L3_2 = L3_2.ID
  L4_2 = A0_2.param_data
  L4_2 = L4_2.map_icon_data
  L4_2 = L4_2.MappingInfoRow
  L4_2 = L4_2.WorldLevel
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.ParamList
    L3_2 = L3_2[0]
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_prestige
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._world_shop_panel
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L1_2 = L3_2
  end
  L3_2 = G
  L3_2 = L3_2.ShopModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.get_shop_by_id
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.CityShopConfigExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_reward_panel
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L8_2 = L3_2
  L7_2 = L3_2.get_limited_goods_sold_out
  L7_2 = L7_2(L8_2)
  L7_2 = not L7_2
  L5_2(L6_2, L7_2)
end
L0_1._setup_world_shop_view = L1_1
return L0_1
