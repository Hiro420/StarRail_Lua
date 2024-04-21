local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChatBubbleSelectItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_clicked
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._bubble_id = A1_2
  A0_2._is_locked = A2_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_bubble
  L6_2 = L5_2
  L5_2 = L5_2.safe_get_bubble_panel
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = G
  L6_2 = L6_2.TextmapStatic
  L6_2 = L6_2.GetText
  L7_2 = "UIText_ChatBubbleText"
  L6_2 = L6_2(L7_2)
  L8_2 = L5_2
  L7_2 = L5_2.set_local_view
  L9_2 = true
  L10_2 = A1_2
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L5_2
  L7_2 = L5_2.setup_text_view
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_locked
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = A2_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_current
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = A3_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.btn
  L8_2 = L7_2
  L7_2 = L7_2.SetChecked
  L9_2 = A4_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.btn
  L8_2 = not A4_2
  L7_2.interactable = L8_2
  L7_2 = G
  L7_2 = L7_2.RedDotModule
  L7_2 = L7_2.Instance
  L8_2 = L7_2
  L7_2 = L7_2.bind_reddot
  L9_2 = "ChatBubbleNew"
  L10_2 = A0_2._bubble_id
  L11_2 = A0_2
  L12_2 = A0_2._binder
  L12_2 = L12_2.node_reddot
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_first_selected_object
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_handler
  L4_2 = A0_2._bubble_id
  L5_2 = A0_2._is_locked
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_clicked = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
return L0_1
