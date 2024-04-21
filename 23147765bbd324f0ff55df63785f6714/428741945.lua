local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarEnergyDotPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_light
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.isLight
  if not L4_2 then
    L4_2 = false
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_dark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.isBlack
  if not L4_2 then
    L4_2 = false
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_excited
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_excited
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2.isExcited
    if not L4_2 then
      L4_2 = false
    end
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_view = L1_1
return L0_1
