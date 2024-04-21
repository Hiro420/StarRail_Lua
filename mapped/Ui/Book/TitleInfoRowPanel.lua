local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Book.TitleInfoRowPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TitleInfoRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.UnityEngine
L1_1 = L1_1.Vector3
L1_1 = L1_1.zero
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.is_scale_zero
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.trigger_button_click
      L0_3(L1_3)
    end
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  A0_2._text_title = L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._click_index_item
  L3_2 = A0_2._index
  L1_2(L2_2, L3_2)
end
L0_1.trigger_button_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_base_line
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_color_line
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title_color
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_title_color
    if L2_2 then
      goto lbl_29
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  ::lbl_29::
  A0_2._text_title = L2_2
end
L0_1.set_color_title = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._click_event_listner = nil
  A0_2._on_click_item = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_event_listner = A1_2
  A0_2._on_click_item = A2_2
end
L0_1.bind_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._on_click_item
  if L2_2 ~= nil then
    L2_2 = A0_2._on_click_item
    L3_2 = A0_2._click_event_listner
    L4_2 = A1_2
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2.save_navigation_target
    L4_2 = A0_2._binder
    L4_2 = L4_2.button
    L4_2 = L4_2.gameObject
    L2_2(L3_2, L4_2)
  end
end
L0_1._click_index_item = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._index = A1_2
  A0_2._book = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._bind_btn_callback
  L5_2 = A0_2._binder
  L5_2 = L5_2.button
  L6_2 = A0_2._click_index_item
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._book
  if L2_2 and A1_2 then
    L2_2 = A0_2._book
    L2_2.IsNew = false
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.button
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._text_title
  L3_2 = L2_2
  L2_2 = L2_2.SetSingleLineEllipsis
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_title = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._text_title
  L3_2 = L2_2
  L2_2 = L2_2.SetSingleLineEllipsis
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._text_title
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_customize_title = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._text_title
  L5_2 = L4_2
  L4_2 = L4_2.SetHighLight
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.set_high_light = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_locked = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_red_dot
  return L1_2
end
L0_1.get_node_red_dot = L2_1
return L0_1
