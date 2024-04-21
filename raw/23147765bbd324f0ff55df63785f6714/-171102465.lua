local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueBuffTypeIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.Num
  L2_2 = 0 < L2_2
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  if L2_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_active
    if L5_2 then
      goto lbl_15
    end
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_unactive
  ::lbl_15::
  L6_2 = A1_2.Icon
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_active
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_unactive
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A1_2.Num
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L1_1
return L0_1
