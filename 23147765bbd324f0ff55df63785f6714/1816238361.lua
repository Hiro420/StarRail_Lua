local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.AssetsPage.Components.ActivityMonopolyBuyBtnPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyBuyBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._currency_item = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_txt
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A1_2.can_buy
  L3_2.interactable = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.currentcy_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2.has_next
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.has_next
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.currentcy_num
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = A1_2.item_num
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.currency_icon
    L6_2 = A1_2.icon_path
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A1_2.can_buy
  if not L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.currentcy_num
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = "#EB4D3D"
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_cbk = A1_2
  A0_2._click_listener = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._click_cbk
  L2_2 = A0_2._click_listener
  L1_2(L2_2)
end
L0_1._on_root_btn_clicked = L1_1
return L0_1
