local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.AlleyPackDepotPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.AlleyPackDepotPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.AlleyPackProfitPreviewPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.AlleyPackProfitPreviewPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.AlleyPackShipControlPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.AlleyPackShipControlPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.AlleyPackVideoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.AlleyPackVideoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.AlleyPackOrderPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.AlleyPackOrderPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.AlleyPackTipsBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.AlleyPackTipsBtnPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityAlleyPackMainPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/Alley/AlleyShippingPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_common_pack_components
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_common_order_pack_components
  L1_2(L2_2)
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_exit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/PanelContent/BtnPanel/BtnGo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_go = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AlleyPackTipsBtnPanel
  L4_2 = G
  L4_2 = L4_2.AlleyPackTipsBtnPanelBinder
  L5_2 = "Root/PanelContent/ShipFunction/BtnHint"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.tips_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AlleyPackDepotPanel
  L4_2 = G
  L4_2 = L4_2.AlleyPackDepotPanelBinder
  L5_2 = "Root/PanelContent/CargoAvailablePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_depot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AlleyPackProfitPreviewPanel
  L4_2 = G
  L4_2 = L4_2.AlleyPackProfitPreviewPanelBinder
  L5_2 = "Root/PanelContent/OrderInfoPanel/Root/CurrencyPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_profit_preview = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AlleyPackShipControlPanel
  L4_2 = G
  L4_2 = L4_2.AlleyPackShipControlPanelBinder
  L5_2 = "Root/PanelContent"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_ship_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TopBarAreaPanel
  L4_2 = G
  L4_2 = L4_2.TopBarAreaPanelBinder
  L5_2 = "Root/TopBarArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_top_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/PanelContent/OrderInfoPanel/Root/CurrencyPanel/IconPanel/CurrencyIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_icon_currency = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AlleyPackVideoPanel
  L4_2 = G
  L4_2 = L4_2.AlleyPackVideoPanelBinder
  L5_2 = "NodeVideoContainer/VideoContainer"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_ship_video = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "Root/PanelContent/OrderInfoPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_orders = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "Root/PanelContent/CargoAvailablePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_depot = L1_2
end
L0_1._bind_common_pack_components = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AlleyPackOrderPanel
  L4_2 = G
  L4_2 = L4_2.AlleyPackOrderPanelBinder
  L5_2 = "Root/PanelContent/OrderInfoPanel/Root/GeneralOrder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_order = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/OrderInfoPanel/Root/GeneralOrder"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_common_order = L1_2
  L1_2 = A0_2.node_common_order
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/OrderInfoPanel/Root/SPOrder"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_special_order = L1_2
  L1_2 = A0_2.node_special_order
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._bind_common_order_pack_components = L1_1
return L0_1
