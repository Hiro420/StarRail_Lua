local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.FilterSort.BtnSortMobilePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BtnSortMobilePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._is_ascend = false
  L1_2 = A0_2._binder
  L1_2 = L1_2._btn_sort_type
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_special_zoom_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3._btn_sort_type
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2._btn_sort_type
  L2_2(L3_2, L4_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2._btn_order
  L2_2(L3_2, L4_2)
end
L0_1.save_btn_list = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._callback_self = A1_2
  A0_2._on_btn_order = A2_2
  A0_2._on_btn_sort_type = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._bind_btn_callback
  L6_2 = A0_2._binder
  L6_2 = L6_2._btn_sort_type
  L7_2 = A0_2._on_btn_sort_type_click
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._bind_btn_callback
  L6_2 = A0_2._binder
  L6_2 = L6_2._btn_order
  L7_2 = A0_2._on_btn_order_click
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._is_ascend = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2._text_sort_type
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_ascend_display
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._is_ascend = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_text_sort_type
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_ascend_display
  L3_2(L4_2)
end
L0_1.setup_view_by_list = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = A1_2
  L4_2 = ","
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2._text_sort_type
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_text_sort_type = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._is_ascend = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_order_text_sort_type
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_ascend_display
  L3_2(L4_2)
end
L0_1.setup_order_view_by_list = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = nil
  L3_2 = #A1_2
  if 1 < L3_2 then
    L3_2 = A1_2[1]
    L4_2 = "|"
    L5_2 = table
    L5_2 = L5_2.concat
    L6_2 = A1_2
    L7_2 = ","
    L8_2 = 2
    L9_2 = #A1_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L2_2 = L3_2 .. L4_2 .. L5_2
  else
    L2_2 = A1_2[1]
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2._text_sort_type
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_order_text_sort_type = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2._text_sort_type
  L3_2 = not A1_2
  L2_2.resizeTextForBestFit = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2._text_sort_type
  L3_2 = L2_2
  L2_2 = L2_2.SetSingleLineEllipsis
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_single_line_ellipsis = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._callback_self
  if L1_2 ~= nil then
    L1_2 = A0_2._on_btn_sort_type
    if L1_2 ~= nil then
      L1_2 = A0_2._on_btn_sort_type
      L2_2 = A0_2._callback_self
      L1_2(L2_2)
    end
  end
end
L0_1._on_btn_sort_type_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback_self
  if L1_2 ~= nil then
    L1_2 = A0_2._on_btn_order
    if L1_2 ~= nil then
      L1_2 = A0_2._is_ascend
      L1_2 = not L1_2
      A0_2._is_ascend = L1_2
      L2_2 = A0_2
      L1_2 = A0_2._set_ascend_display
      L1_2(L2_2)
      L1_2 = A0_2._on_btn_order
      L2_2 = A0_2._callback_self
      L3_2 = A0_2._is_ascend
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_btn_order_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2._node_ascend
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_ascend
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2._node_descend
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_ascend
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._set_ascend_display = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._is_owned_by_material
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.InventorySortType
  L2_2 = L2_2.Rarity
  L2_2 = #L2_2
  if A1_2 ~= L2_2 then
    return
  end
  A0_2._is_ascend = true
  L3_2 = A0_2
  L2_2 = A0_2._set_ascend_display
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_btn_order_click
  L2_2(L3_2)
end
L0_1._try_force_set_ascend = L1_1
return L0_1
