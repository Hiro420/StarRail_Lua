local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = "UIText_AvatarRelic_Effect4"
L1_1 = "UIText_AvatarRelic_Effect2"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "RelicRecommendSuitItemIconPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.RelicSetConfigExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L5_2 = L4_2.DisplayItemID
    A0_2._item_id = L5_2
    L6_2 = A0_2
    L5_2 = A0_2.safe_set_active
    L7_2 = A0_2._item_id
    L7_2 = L7_2 ~= 0
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._item_id
    if L5_2 ~= 0 then
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.ItemExcelTable
      L5_2 = L5_2.GetData
      L6_2 = A0_2._item_id
      L5_2 = L5_2(L6_2)
      L7_2 = A0_2
      L6_2 = A0_2._async_load_sprite_to
      L8_2 = A0_2._binder
      L8_2 = L8_2.img_icon
      L9_2 = L5_2.ItemIconPath
      L6_2(L7_2, L8_2, L9_2)
    end
    L5_2 = L4_2.IsPlanarSuit
    if L5_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_num
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = L1_1
      L5_2(L6_2, L7_2)
    elseif A3_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_num
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = L1_1
      L5_2(L6_2, L7_2)
    else
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_num
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = L0_1
      L5_2(L6_2, L7_2)
    end
  end
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._item_id
  if L1_2 ~= nil then
    L1_2 = A0_2._item_id
    if L1_2 ~= 0 then
      L1_2 = G
      L1_2 = L1_2.InventoryUtils
      L1_2 = L1_2.show_item_detail
      L2_2 = A0_2._item_id
      L1_2(L2_2)
    end
  end
end
L2_1._on_btn_root = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L2_1.get_first_selectable_cmpt = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.get_first_selectable_cmpt
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.gameObject
  return L1_2
end
L2_1.get_first_selected_object = L3_1
return L2_1
