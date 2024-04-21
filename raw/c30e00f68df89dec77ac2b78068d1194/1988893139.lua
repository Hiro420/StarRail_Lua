local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueEndlessBuffIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_interactable = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._data = A1_2
  L3_2 = A1_2
  L2_2 = A1_2.GetMazeBuffRow
  L2_2 = L2_2(L3_2)
  L4_2 = A1_2
  L3_2 = A1_2.GetRogueBuffRarity
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img
  L7_2 = L2_2.BuffIcon
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L2_2.BuffName
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_buff_rarity
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L3_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_bg_normal_table
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_endless_mark
  L5_2 = L4_2
  L4_2 = L4_2.setup_buff_view
  L6_2 = A0_2._data
  L6_2 = L6_2.BuffID
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  A0_2._data = nil
  A0_2._index = A4_2
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img
  L8_2 = A2_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_name
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_buff_rarity
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = A3_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_bg_normal_table
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.setup_fake_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_handler
  L4_2 = A0_2._data
  L5_2 = A0_2._index
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_click = L1_1
return L0_1
