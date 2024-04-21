local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyEventDicePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._dice_result = 0
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L1_2 = L1_2(L2_2)
  A0_2._ui_3d_page = L1_2
  L1_2 = A0_2._ui_3d_page
  L2_2 = L1_2
  L1_2 = L1_2.register_random_event_rotate_finish_callback
  L3_2 = A0_2._on_3d_dice_anim_finish
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ui_3d_page
  L2_2 = L1_2
  L1_2 = L1_2.clear_random_event_callback
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._dice_result
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._dice_anim_callback
  L3_2 = A0_2._dice_anim_handler
  L1_2(L2_2, L3_2)
end
L0_1._on_3d_dice_anim_finish = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._dice_anim_callback = A1_2
  A0_2._dice_anim_handler = A2_2
end
L0_1.register_dice_anim_finish_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._ui_3d_page
  L4_2 = L3_2
  L3_2 = L3_2.rotate_random_event_dice
  L5_2 = {}
  L6_2 = A1_2
  L7_2 = A2_2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2 + A2_2
  A0_2._dice_result = L3_2
end
L0_1.play_dice_anim = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._on_3d_dice_anim_finish
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A1_2 + A2_2
  L3_2(L4_2, L5_2)
end
L0_1.play_dice_add_anim = L1_1
return L0_1
