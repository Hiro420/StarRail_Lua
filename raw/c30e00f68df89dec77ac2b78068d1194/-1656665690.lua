local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeEventPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_layout
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = "UI/Maze/Widget/MazeEventBtnPC.prefab"
    return L1_2
  else
    L1_2 = "UI/Maze/Widget/MazeEventBtn.prefab"
    return L1_2
  end
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_place = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "CountMaskPanel/CountNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_CD = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Slider
  L4_2 = "CountMaskPanel/ProgressBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.slider_slider = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CountMaskPanel/ImageDisable"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_image_mask = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CountMaskPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_mask = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "IconSkill"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.image_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CountTag"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_count_tag = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "CountTag/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "EventBtnLoopEffs"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_loop_effect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BanMark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_ban_mark = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "DisableMask"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_disable = L1_2
end
L0_1._on_bind = L1_1
return L0_1
