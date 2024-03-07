local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherUI3D.UI3DAetherSpirit"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "UI3DAetherSpiritPanel"
L2_1 = G
L2_1 = L2_1.BaseUI3DPanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._owner = A1_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.List
  L2_2 = L2_2(L3_2)
  A0_2._ui3d_spirits = L2_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.remove_all_ui3d_spirits
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.UI3DAetherSpirit
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.load_entity
  L6_2 = A0_2._root
  L7_2 = A1_2
  L8_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._ui3d_spirits
  L5_2 = L4_2
  L4_2 = L4_2.Add
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  return L3_2
end
L0_1.create_ui3d_spirit = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = A0_2._ui3d_spirits
    if L2_2 ~= nil then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = A0_2._ui3d_spirits
  L3_2 = L2_2
  L2_2 = L2_2.Remove
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2.dispose
  L2_2(L3_2)
  L2_2 = delete
  L3_2 = A1_2
  L2_2(L3_2)
end
L0_1.remove_ui3d_spirit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._ui3d_spirits
  if L1_2 ~= nil then
    L1_2 = A0_2._ui3d_spirits
    L2_2 = L1_2
    L1_2 = L1_2.Count
    L1_2 = L1_2(L2_2)
    if L1_2 ~= 0 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = A0_2._ui3d_spirits
  L2_2 = L1_2
  L1_2 = L1_2.Pairs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.dispose
    L6_2(L7_2)
    L6_2 = delete
    L7_2 = L5_2
    L6_2(L7_2)
  end
  L1_2 = A0_2._ui3d_spirits
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
end
L0_1.remove_all_ui3d_spirits = L1_1
return L0_1
