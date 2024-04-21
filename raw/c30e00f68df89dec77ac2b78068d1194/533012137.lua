local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DiscreteProgressBarNode"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_progress
  L2_2 = L2_2.type
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L3_2 = L3_2.Type
  L3_2 = L3_2.Filled
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_progress
    L2_2.fillAmount = A1_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_progress
    L3_2 = 0 < A1_2
    L2_2.enabled = L3_2
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_animation
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_animation
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.play_animation = L2_1
return L0_1
