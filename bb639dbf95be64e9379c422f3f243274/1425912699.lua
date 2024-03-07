local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyPlayerIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._click_cbk = A1_2
  A0_2._click_owner = A2_2
  L5_2 = A0_2
  L4_2 = A0_2._bind_btn_callback
  L6_2 = A0_2._binder
  L6_2 = L6_2.button
  L7_2 = A0_2._on_root_btn_clicked
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.icon_controller
  L5_2 = L4_2
  L4_2 = L4_2.Init
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
end
L0_1.cus_init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._click_cbk
  if L1_2 then
    L1_2 = A0_2._click_owner
    if L1_2 then
      L1_2 = A0_2._click_cbk
      L2_2 = A0_2._click_owner
      L1_2(L2_2)
    end
  end
end
L0_1._on_root_btn_clicked = L1_1
return L0_1
