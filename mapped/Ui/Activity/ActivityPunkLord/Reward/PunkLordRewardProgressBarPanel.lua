local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PunkLordRewardProgressBarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_box_bar
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_progress_over_bonus
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A2_2 <= A1_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_progress_check
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = math
  L6_2 = L6_2.max
  L7_2 = 0
  L8_2 = A1_2 - A3_2
  L9_2 = A2_2 - A3_2
  L8_2 = L8_2 / L9_2
  L6_2 = L6_2(L7_2, L8_2)
  L6_2 = L6_2 * 0.5
  L7_2 = 0
  if A2_2 < A4_2 then
    L8_2 = math
    L8_2 = L8_2.max
    L9_2 = 0
    L10_2 = A1_2 - A2_2
    L11_2 = A4_2 - A2_2
    L10_2 = L10_2 / L11_2
    L8_2 = L8_2(L9_2, L10_2)
    L7_2 = L8_2 * 0.5
  elseif A2_2 <= A1_2 then
    L7_2 = 0.5
  end
  L8_2 = math
  L8_2 = L8_2.min
  L9_2 = 1
  L10_2 = L6_2 + L7_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.rect_normal_progress_bar
  L9_2.fillAmount = L8_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_box_bar
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_progress_check
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_progress_over_bonus
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_last_loop_top
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = 0 < A1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_cur_point
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_total_point
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = "UIText_Forward_Slash_WithPara"
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = math
  L4_2 = L4_2.min
  L5_2 = A1_2 / A2_2
  L6_2 = 1
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.bonus_progress_bar
  L5_2.fillAmount = L4_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_bonus_lock
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not A3_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_bonus_normal
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A3_2 or L7_2
  L7_2 = A3_2 and A1_2 < A2_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_bonus_collect
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A3_2 or L7_2
  L7_2 = A3_2 and A2_2 <= A1_2
  L5_2(L6_2, L7_2)
end
L0_1.setup_view_for_bonus = L1_1
return L0_1
