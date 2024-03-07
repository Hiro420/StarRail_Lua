local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = "Battlepass/Eff_LightConeSelect_01/Par_Set (1)"
L1_1 = "Battlepass/Bottom"
L2_1 = CS
L2_1 = L2_1.UnityEngine
L2_1 = L2_1.Vector3
L3_1 = -1.9
L4_1 = 3.6
L5_1 = 0.25
L2_1 = L2_1(L3_1, L4_1, L5_1)
L3_1 = CS
L3_1 = L3_1.UnityEngine
L3_1 = L3_1.Vector3
L4_1 = -1.68
L5_1 = 3.64
L6_1 = 0.25
L3_1 = L3_1(L4_1, L5_1, L6_1)
L4_1 = CS
L4_1 = L4_1.UnityEngine
L4_1 = L4_1.Vector3
L5_1 = 0
L6_1 = -1.37
L7_1 = 0
L4_1 = L4_1(L5_1, L6_1, L7_1)
L5_1 = CS
L5_1 = L5_1.UnityEngine
L5_1 = L5_1.Vector3
L6_1 = -2.5
L7_1 = 3.6
L8_1 = 0.25
L5_1 = L5_1(L6_1, L7_1, L8_1)
L6_1 = CS
L6_1 = L6_1.UnityEngine
L6_1 = L6_1.Vector3
L7_1 = -2.18
L8_1 = 3.65
L9_1 = 0.25
L6_1 = L6_1(L7_1, L8_1, L9_1)
L7_1 = CS
L7_1 = L7_1.UnityEngine
L7_1 = L7_1.Vector3
L8_1 = 0
L9_1 = -0.37
L10_1 = 0
L7_1 = L7_1(L8_1, L9_1, L10_1)
L8_1 = CS
L8_1 = L8_1.UnityEngine
L8_1 = L8_1.Vector3
L9_1 = -2.9
L10_1 = 3.54
L11_1 = 0.25
L8_1 = L8_1(L9_1, L10_1, L11_1)
L9_1 = CS
L9_1 = L9_1.UnityEngine
L9_1 = L9_1.Vector3
L10_1 = -2.18
L11_1 = 3.65
L12_1 = 0.25
L9_1 = L9_1(L10_1, L11_1, L12_1)
L10_1 = CS
L10_1 = L10_1.UnityEngine
L10_1 = L10_1.Vector3
L11_1 = -2.55
L12_1 = -1.07
L13_1 = 0
L10_1 = L10_1(L11_1, L12_1, L13_1)
L11_1 = G
L11_1 = L11_1.Class
L12_1 = "BattlePassPurchaseUI3DPage"
L13_1 = G
L13_1 = L13_1.UI3DController
L11_1 = L11_1(L12_1, L13_1)
function L12_1(A0_2)
  local L1_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "UI/UI3D/LightCone/Prefabs/BattlePassPurchaseBG.prefab"
end
L11_1.ctor = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._adapt_pos
  L1_2(L2_2)
end
L11_1._on_load = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Screen
  L1_2 = L1_2.width
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Screen
  L2_2 = L2_2.height
  L3_2 = L1_2 / L2_2
  L4_2 = nil
  L5_2 = nil
  if L3_2 < 1.6 then
    L6_2 = G
    L6_2 = L6_2.Utils
    L6_2 = L6_2.is_pc_layout
    L6_2 = L6_2()
    if L6_2 then
      L6_2 = L3_1
      if L6_2 then
        goto lbl_23
        L4_2 = L6_2 or L4_2
      end
    end
    L4_2 = L2_1
    ::lbl_23::
    L5_2 = L4_1
  elseif 2.1 < L3_2 then
    L6_2 = G
    L6_2 = L6_2.Utils
    L6_2 = L6_2.is_pc_layout
    L6_2 = L6_2()
    if L6_2 then
      L6_2 = L9_1
      if L6_2 then
        goto lbl_37
        L4_2 = L6_2 or L4_2
      end
    end
    L4_2 = L8_1
    ::lbl_37::
    L5_2 = L10_1
  else
    L6_2 = G
    L6_2 = L6_2.Utils
    L6_2 = L6_2.is_pc_layout
    L6_2 = L6_2()
    if L6_2 then
      L6_2 = L6_1
      if L6_2 then
        goto lbl_49
        L4_2 = L6_2 or L4_2
      end
    end
    L4_2 = L5_1
    ::lbl_49::
    L5_2 = L7_1
  end
  L6_2 = A0_2._root
  L7_2 = L6_2
  L6_2 = L6_2.SafeFind
  L8_2 = L0_1
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2._root
  L8_2 = L7_2
  L7_2 = L7_2.SafeFind
  L9_2 = L1_1
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.localPosition = L4_2
  L7_2.localPosition = L5_2
end
L11_1._adapt_pos = L12_1
return L11_1
