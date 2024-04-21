local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.UIUtils.UITextUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.Shop.Miracle.Components.RogueMiracleShopItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueMiracleShopItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_RogueDLC_MiracleShop_SoldOut"
L2_1 = "UIText_RogueDLC_MiracleShop_OwenRepeat"
L3_1 = 1
L4_1 = 0.5
L5_1 = {}
L5_1.White = "#FFFFFF"
L5_1.Red = "#C84A32"
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.Client
L6_1 = L6_1.GlobalVars
L6_1 = L6_1.s_ModuleManager
L6_1 = L6_1.InventoryModule
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_incontrol_move
  L1_2.enabled = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_incontrol_move
    L0_3.enabled = true
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_root_btn_clicked
    L0_3(L1_3)
    L0_3 = A0_2._owner
    L1_3 = L0_3
    L0_3 = L0_3.update_gamepad_hint
    L2_3 = A0_2._binder
    L2_3 = L2_3.text_scroll_rect
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_incontrol_move
    L0_3.enabled = false
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.safe_set_active
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  A0_2._data = A1_2
  A0_2._index = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_text
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_figure
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_currency
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_setup_unavailable_view
  L3_2(L4_2)
end
L0_1.setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2)
end
L0_1.trigger_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if L1_2 == false then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  return L1_2
end
L0_1.get_root_btn = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._click_cbk = A2_2
  A0_2._click_listener = A1_2
end
L0_1.register_click_callback = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_handbook_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_handbook_hint = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.miracle_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.MiracleName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.miracle_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.MiracleDesc
  L4_2 = G
  L4_2 = L4_2.UITextUtils
  L4_2 = L4_2.GetSkillParams
  L5_2 = A0_2._data
  L5_2 = L5_2.DescParamList
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_text = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.miracle_img
  L4_2 = A0_2._data
  L4_2 = L4_2.MiracleImgPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_figure = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._data
  L1_2 = L1_2.CurrencyItem
  L1_2 = L1_2.Count
  L2_2 = L6_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = A0_2._data
  L4_2 = L4_2.CurrencyItem
  L4_2 = L4_2.ConfigID
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.currency_icon
  L6_2 = A0_2._data
  L6_2 = L6_2.CurrencyItem
  L6_2 = L6_2.ItemIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.currency_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.currency_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextColor
  if L1_2 <= L2_2 then
    L5_2 = L5_1.White
    if L5_2 then
      goto lbl_31
    end
  end
  L5_2 = L5_1.Red
  ::lbl_31::
  L3_2(L4_2, L5_2)
end
L0_1._setup_currency = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.currency_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.Available
  if L3_2 then
    L3_2 = A0_2._data
    L3_2 = L3_2.AlreadyHave
    L3_2 = not L3_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.Available
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.AlreadyHave
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.root_canvas
      L2_2 = L3_1
      L1_2.alpha = L2_2
  end
  else
    L1_2 = A0_2._data
    L1_2 = L1_2.Available
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.root_canvas
      L2_2 = L4_1
      L1_2.alpha = L2_2
      L1_2 = A0_2._binder
      L1_2 = L1_2.currency_num
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = L1_1
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.currency_num
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextColor
      L3_2 = L5_1.White
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.root_canvas
      L2_2 = L4_1
      L1_2.alpha = L2_2
      L1_2 = A0_2._binder
      L1_2 = L1_2.currency_num
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = L2_1
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.currency_num
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextColor
      L3_2 = L5_1.White
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._try_setup_unavailable_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._click_listener
  if L1_2 then
    L1_2 = A0_2._click_cbk
    if L1_2 then
      L1_2 = A0_2._click_cbk
      L2_2 = A0_2._click_listener
      L3_2 = A0_2._data
      L4_2 = A0_2
      L5_2 = A0_2._index
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_root_btn_clicked = L7_1
return L0_1
