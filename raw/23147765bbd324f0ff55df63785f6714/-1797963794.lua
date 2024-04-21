local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaPoolDetailListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaPoolDetailListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "GachaDetailSubtitle"
L2_1 = "GachaDetailSubtitleRare5"
L3_1 = "GachaDetailSubtitleRare4"
function L4_1(A0_2)
  local L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_item_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_item_icon
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_close
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_item_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_detail_item_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  A0_2._itemsRow = A1_2
  L2_2 = A1_2[1]
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._set_title_text
    L5_2 = L2_2.Rarity
    L5_2 = #L5_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_item_list
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._itemsRow
  L5_2 = #L5_2
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L3_2(L4_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_item_list
  return L1_2
end
L0_1.get_static_list = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_main_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_1
  L2_2(L3_2, L4_2)
  if A1_2 == 5 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_sub_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
  elseif A1_2 == 4 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_sub_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
  end
end
L0_1._set_title_text = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.GachaItemPanel
    L8_2 = G
    L8_2 = L8_2.GachaItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._itemsRow
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A0_2
  L9_2 = A0_2._on_pool_item_click
  L5_2(L6_2, L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_detail_item_change = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.InventoryUtils
  L2_2 = L2_2.show_item_detail
  L3_2 = A1_2.ID
  L2_2(L3_2)
end
L0_1._on_pool_item_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L4_1
return L0_1
