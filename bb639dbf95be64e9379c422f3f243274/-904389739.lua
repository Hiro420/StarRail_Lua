local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "QingqueMahjongTilePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.QingQueEnergyBarIconType
L2_1 = {}
L3_1 = L1_1.Wan
L2_1[L3_1] = "SpriteOutput/UI/Nature/IconDotColor/1201/IconDotColor120102.png"
L3_1 = L1_1.Tiao
L2_1[L3_1] = "SpriteOutput/UI/Nature/IconDotColor/1201/IconDotColor120103.png"
L3_1 = L1_1.Tong
L2_1[L3_1] = "SpriteOutput/UI/Nature/IconDotColor/1201/IconDotColor120101.png"
L3_1 = L1_1.Yu
L2_1[L3_1] = "SpriteOutput/UI/Nature/IconDotColor/1201/IconDotColor120104.png"
function L3_1(A0_2)
  local L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L1_1.Invalid
  L2_2 = A1_2 ~= L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_empty
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_icon
    L6_2 = L2_1[A1_2]
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.setup_view = L3_1
return L0_1
