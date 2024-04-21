local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonopolyDice3DPanel"
L2_1 = G
L2_1 = L2_1.BaseUI3DPanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonopolyDiceController
  L4_2 = "Common_GameplayProp_Dice_01_Lod0"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._dice_controller = L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  A0_2._rotate_finish_cbk = A1_2
  A0_2._rotate_finish_owner = A2_2
  L5_2 = A0_2._dice_controller
  L6_2 = L5_2
  L5_2 = L5_2.Init
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._root
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.set_active
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._rotate_finish_cbk
    if L0_3 then
      L0_3 = A0_2._rotate_finish_owner
      if L0_3 then
        L0_3 = A0_2._rotate_finish_cbk
        L1_3 = A0_2._rotate_finish_owner
        L0_3(L1_3)
      end
    end
  end
  L8_2 = A3_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.register_rotate_finish_cbk = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._dice_controller
  L4_2 = L3_2
  L3_2 = L3_2.Rotate
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1.rotate = L1_1
return L0_1
