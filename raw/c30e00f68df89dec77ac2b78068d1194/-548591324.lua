local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusPopulationPhaseFanPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "FollowerProgress/PhaseInfo/PhaseTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_pop_phase_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "FollowerProgress/PhaseInfo/PhaseText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_pop_phase = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "CountPanel/FollowerCount/ItemIcon/NumberText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_cur_fans = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "CountPanel/PointCount/ItemIcon/NumberText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_incomes = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "CountPanel/LikeCount/ItemIcon/NumberText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_likes = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "FollowerProgress/PhaseInfo/NextCountText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_next_phase_fans = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FollowerProgress"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_fan_progress_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CountPanel/FollowerCount/ItemIcon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_fans_btn_tip_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CountPanel/PointCount/ItemIcon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_income_btn_tip_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CountPanel/LikeCount/ItemIcon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_likes_btn_tip_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CountPanel/FollowerCount/ItemIcon/PopUpTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_fans_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CountPanel/PointCount/ItemIcon/PopUpTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_income_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CountPanel/LikeCount/ItemIcon/PopUpTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_likes_tip = L1_2
end
L0_1._on_bind = L1_1
return L0_1