local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AttributeStatusNode"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = G
L2_1 = L2_1.TextExtensions
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.name
  L2_2(L3_2, L4_2)
  L2_2 = L2_1.SafeSetText
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_pre
  L4_2 = A1_2.preValue
  L2_2(L3_2, L4_2)
  L2_2 = L2_1.SafeSetText
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_cur
  L4_2 = A1_2.curValue
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = A1_2.propertyRow
  L5_2 = L5_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
return L0_1
