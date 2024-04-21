local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.Shop.Buff.Components.RogueBuffShopItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueBuffShopItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_RogueDLC_MiracleShop_OwenRepeat"
L2_1 = "UIText_RogueDLC_MiracleShop_SoldOut"
L3_1 = 1
L4_1 = 0.5
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.InventoryModule
L6_1 = {}
L6_1.White = "#FFFFFF"
L6_1.Red = "#C84A32"
function L7_1(A0_2, A1_2, A2_2)
  A0_2._rogue_buff_data = nil
  A0_2._maze_buff_row = nil
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_minus
  L4_2 = A0_2._on_btn_minus
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_buff
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._gamepad_select_callback
    L2_3 = A0_2._callback_listener
    L3_3 = A0_2._data
    L4_3 = A0_2
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  A0_2._callback_listener = A1_2
  A0_2._click_callback = A2_2
  A0_2._click_minus_callback = A3_2
  A0_2._gamepad_select_callback = A4_2
  A0_2._click_index = A5_2
end
L0_1.register_click_callback = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._data = A1_2
  A0_2._extra_effect_id_table = nil
  L3_2 = A0_2
  L2_2 = A0_2._setup_buff_view
  L4_2 = A0_2._data
  L4_2 = L4_2.RogueBuffData
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_cost
  L4_2 = A0_2._data
  L4_2 = L4_2.CurrencyItem
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_setup_unavailable_view
  L2_2(L3_2)
end
L0_1.setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_click
  L1_2(L2_2)
end
L0_1.trigger_click = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A1_2
  L2_2 = A1_2.GetMazeBuffRow
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A1_2
  L3_2 = A1_2.GetRogueBuffRarity
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_icon
  L7_2 = L2_2.BuffIcon
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L2_2.BuffName
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_rarity
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.RogueUtils
  L4_2 = L4_2.setup_rogue_buff_bg
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_bg_normal_table
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_bg_up_table
  L7_2 = L3_2
  L8_2 = L2_2.Lv
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._setup_buff_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2.ConfigID
  L3_2 = A1_2.Count
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = L5_1
  L6_2 = L5_2
  L5_2 = L5_2.GetItemCountByConfigID
  L7_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2._async_load_sprite_to
  L8_2 = A0_2._binder
  L8_2 = L8_2.img_cost
  L9_2 = L4_2.ItemIconPath
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_cost
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L6_2 = L6_1.White
  if not (L3_2 > L5_2) then
    L7_2 = A0_2._data
    L7_2 = L7_2.Available
    if L7_2 then
      L7_2 = A0_2._data
      L7_2 = L7_2.AlreadyHave
      if not L7_2 then
        goto lbl_36
      end
    end
  end
  L6_2 = L6_1.Red
  ::lbl_36::
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_cost
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetTextColor
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_cost
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = A0_2._data
  L9_2 = L9_2.Available
  if L9_2 then
    L9_2 = A0_2._data
    L9_2 = L9_2.AlreadyHave
    L9_2 = not L9_2
  end
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.btn_buff
  L8_2 = L7_2
  L7_2 = L7_2.SetChecked
  L9_2 = false
  L7_2(L8_2, L9_2)
end
L0_1._setup_cost = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_cost
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
      L2_2 = A0_2
      L1_2 = A0_2.show_black_mask
      L3_2 = false
      L1_2(L2_2, L3_2)
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
      L1_2 = L1_2.text_cost
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = L2_1
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_cost
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextColor
      L3_2 = L6_1.White
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2.show_black_mask
      L3_2 = true
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.root_canvas
      L2_2 = L4_1
      L1_2.alpha = L2_2
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_cost
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = L1_1
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_cost
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextColor
      L3_2 = L6_1.White
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2.show_black_mask
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._try_setup_unavailable_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.black_mask
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 == true then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_status_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1.show_black_mask = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_buff
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_selected = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_minus
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_minus_btn = L7_1
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
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._callback_listener
  if L1_2 ~= nil then
    L1_2 = A0_2._click_callback
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._click_callback
  L2_2 = A0_2._callback_listener
  L3_2 = A0_2._data
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._callback_listener
  if L1_2 ~= nil then
    L1_2 = A0_2._click_minus_callback
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._click_minus_callback
  L2_2 = A0_2._callback_listener
  L3_2 = A0_2._data
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_minus = L7_1
return L0_1
