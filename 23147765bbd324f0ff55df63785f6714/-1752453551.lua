local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueEndlessStatisticsItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.name
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A1_2.name
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.icon_path
  L4_2 = L4_2 ~= nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mul
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.icon_path
  L4_2 = L4_2 ~= nil
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.icon_path
  if L2_2 then
    L2_2 = A0_2.icon_path
    if L2_2 ~= nil then
      L2_2 = A0_2.icon_path
      L3_2 = A1_2.icon_path
      if L2_2 == L3_2 then
        goto lbl_44
      end
    end
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_icon
    L5_2 = A1_2.icon_path
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A1_2.icon_path
    A0_2.icon_path = L2_2
  end
  ::lbl_44::
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.num
  L4_2 = L4_2 ~= nil
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.num
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_num
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A1_2.num
    L2_2(L3_2, L4_2)
  end
  L2_2 = A1_2.custom_num
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_num
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = A1_2.custom_num
    L5_2 = "%"
    L4_2 = L4_2 .. L5_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_view = L1_1
return L0_1
