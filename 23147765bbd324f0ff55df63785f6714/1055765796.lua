local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.ShopUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeSimpleItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._invoke_callback
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  A0_2._is_click_enable = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._config_id = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_icon
  L5_2 = L2_2.ItemIconPath
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_rarity
  L5_2 = L2_2.Rarity
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L5_2 = A0_2
  L4_2 = A0_2.set_count_display
  L6_2 = true
  L4_2(L5_2, L6_2)
  if A3_2 and A2_2 then
    L4_2 = tonumber
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L5_2 = tonumber
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    if L4_2 < L5_2 then
      L4_2 = string
      L4_2 = L4_2.format
      L5_2 = "<color=\"#C84A32\">%s</color>"
      L6_2 = A1_2
      L4_2 = L4_2(L5_2, L6_2)
      A1_2 = L4_2
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_cur_num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_cur_num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if A2_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_total_num
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_num_splash
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_total_num
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_num_splash
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_total_num
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
end
L0_1.set_count = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.set_icon = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InventoryModule
  L2_2 = L2_2.GetItemRarityConfig
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_rarity_frame
  L6_2 = L2_2.FrameItemRarityPath
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.set_rarity = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_num_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_count_display = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_cur_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_num_splash
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_total_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.set_name = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._callback = nil
  A0_2._callback_self = nil
end
L0_1.clear_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_interactable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._is_click_enable = A1_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_root
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.UI
    L3_2 = L3_2.Selectable
    L3_2 = L3_2.Transition
    L3_2 = L3_2.Animation
    L2_2.transition = L3_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_root
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.UI
    L3_2 = L3_2.Selectable
    L3_2 = L3_2.Transition
    L3_2 = L3_2.None
    L2_2.transition = L3_2
  end
end
L0_1.set_click_enable = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemDetailDialog"
  L1_2 = L1_2(L2_2)
  A0_2._detail_dialog = L1_2
  L1_2 = A0_2._detail_dialog
  L2_2 = L1_2
  L1_2 = L1_2.register_drop_hint_go_to_callback
  L3_2 = A0_2._on_click_detail_dialog_drop_hint
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._detail_dialog
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._config_id
  L1_2(L2_2, L3_2)
end
L0_1._on_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._detail_dialog
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.ShopUtils
    L2_2 = L2_2.check_is_exchange_shop_param
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._detail_dialog
      L3_2 = L2_2
      L2_2 = L2_2.exit
      L2_2(L3_2)
      A0_2._detail_dialog = nil
    end
  end
end
L0_1._on_click_detail_dialog_drop_hint = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_click_enable
  if L1_2 == false then
    return
  end
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L3_2 = A0_2._config_id
      L1_2(L2_2, L3_2)
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_click
    L1_2(L2_2)
  end
end
L0_1._invoke_callback = L1_1
return L0_1
