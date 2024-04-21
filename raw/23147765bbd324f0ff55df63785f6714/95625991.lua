local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ChatBubble.ChatBubbleItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ChatBubble.ChatBubbleItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChatBubblePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._bubble_panels = L1_2
  A0_2._current_id = 0
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
  L3_2 = A0_2._current_id
  if L3_2 ~= 0 then
    L4_2 = A0_2
    L3_2 = A0_2.safe_get_bubble_panel
    L5_2 = A0_2._current_id
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2
    L3_2 = L3_2.register_click_callback
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A0_2._bubble_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.safe_set_active
    L9_2 = L5_2 == A1_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_click_callback
    L9_2 = nil
    L7_2(L8_2, L9_2)
  end
  A0_2._current_id = A1_2
  L2_2 = A0_2._bubble_panels
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L3_2 = A0_2._bubble_panels
    L5_2 = A0_2
    L4_2 = A0_2._create_bubble_panel
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2[A1_2] = L4_2
    L3_2 = A0_2._bubble_panels
    L2_2 = L3_2[A1_2]
  end
  L4_2 = L2_2
  L3_2 = L2_2.register_click_callback
  L5_2 = A0_2._click_callback
  L6_2 = A0_2._click_handler
  L3_2(L4_2, L5_2, L6_2)
  return L2_2
end
L0_1.safe_get_bubble_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = "UI/Resources/ChatBubble/ChatBubble"
  L3_2 = A1_2
  L4_2 = ".prefab"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L4_2 = A0_2
  L3_2 = A0_2.sync_load_prefab
  L5_2 = L2_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_bubble
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.create_panel
  L6_2 = G
  L6_2 = L6_2.ChatBubbleItemPanel
  L7_2 = G
  L7_2 = L7_2.ChatBubbleItemPanelBinder
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  return L4_2
end
L0_1._create_bubble_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_get_bubble_panel
  L3_2 = A0_2._current_id
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L3_2 = L1_2
  L2_2 = L1_2.get_first_selected_object
  return L2_2(L3_2)
end
L0_1.get_first_selected_object = L1_1
return L0_1
