local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Shop.Components.ActivityMonopolyShopItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyShopItem"
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_move
  L1_2.enabled = false
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._shop_good_item = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.item_icon
  L5_2 = A0_2._shop_good_item
  L5_2 = L5_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._shop_good_item
  L4_2 = L4_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._shop_good_item
  L4_2 = L4_2.Desc
  L5_2 = A0_2._shop_good_item
  L5_2 = L5_2.TextDisplayParam1
  L6_2 = A0_2._shop_good_item
  L6_2 = L6_2.TextDisplayParam2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.currency_icon
  L5_2 = A0_2._shop_good_item
  L5_2 = L5_2.CurrencyIcon
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._shop_good_item
  L2_2 = L2_2.CurrencyDisplayData
  L2_2 = L2_2.Count
  if L2_2 ~= 0 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.currentcy_num
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._shop_good_item
    L4_2 = L4_2.CurrencyDisplayData
    L4_2 = L4_2.Count
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.currentcy_num
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityMonopoly_ShopPage_FreeTag"
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_btn
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_gamepad_select
    L0_3(L1_3)
  end
  L2_2.onSelectTrigger = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_btn
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_gamepad_deselect
    L0_3(L1_3)
  end
  L2_2.onDeselectTrigger = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TutorialSupportModule
  L3_2 = L2_2
  L2_2 = L2_2.SetNodeDynamicKey
  L4_2 = A0_2._binder
  L4_2 = L4_2.root_btn
  L4_2 = L4_2.gameObject
  L5_2 = A0_2._shop_good_item
  L5_2 = L5_2.ID
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas
  L2_2.alpha = A1_2
end
L0_1.set_root_canvas = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_cbk = A1_2
  A0_2._click_listener = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_root_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._click_listener
  if L1_2 then
    L1_2 = A0_2._click_cbk
    if L1_2 then
      L1_2 = A0_2._click_cbk
      L2_2 = A0_2._click_listener
      L3_2 = A0_2
      L4_2 = A0_2._shop_good_item
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_root_btn_clicked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_hint_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect
  L4_2 = L3_2
  L3_2 = L3_2.CanScroll
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_move
  L1_2.enabled = true
  L2_2 = A0_2
  L1_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2)
end
L0_1._on_gamepad_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_hint_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_move
  L1_2.enabled = false
end
L0_1._on_gamepad_deselect = L1_1
return L0_1
