local L0_1, L1_1, L2_1, L3_1
L0_1 = "UIText_ClockPark_Add"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityClockParkGamePlayLittleGameTargetInfoRowPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_title
  L4_2 = A1_2.desc
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_desc
  L4_2 = A1_2.resultA
  L5_2 = A1_2.resultB
  L6_2 = A1_2.resultC
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_star
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.show_status
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_status
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.show_status
  if not L4_2 then
    L4_2 = false
  end
  L2_2(L3_2, L4_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.ResetTrigger
    L4_2 = "Pending"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "SuccessHintDelay"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.ResetTrigger
    L4_2 = "SuccessHintDelay"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Pending"
    L2_2(L3_2, L4_2)
  end
end
L1_1.setup_result = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.setup_title = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_value_a
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L0_1
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_value_b
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L0_1
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_value_c
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L0_1
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
end
L1_1.setup_desc = L2_1
return L1_1
