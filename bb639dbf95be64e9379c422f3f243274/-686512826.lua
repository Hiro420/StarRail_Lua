local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeEnCounterHintPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Maze/MazeEnCounterHintDialogV2.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AdventagePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.advantage_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "AdventagePanel/StatusTitle/Text/WaveInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.advantage_txt_wave = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "AdventagePanel/StatusTitle/Text/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.advantage_txt_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "AdventagePanel/StatusTitle/TextAdditonal/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.advantage_txt_additional_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "AdventagePanel/StatusTitle/Text/Text/Icon/Image"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.advantage_img_title_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "AdventagePanel/Bg/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.advantage_img_bg_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "AdventagePanel/Bg/Light"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.advantage_img_bg_light0 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "AdventagePanel/Bg/Light1"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.advantage_img_bg_light1 = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Image
  L5_2 = "AdventagePanel/Bg/BgImg"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_cmpt
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Image
  L6_2 = "AdventagePanel/Bg/BgImg1"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._safe_get_cmpt
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.Image
  L7_2 = "AdventagePanel/Bg/BgImg2"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._safe_get_cmpt
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.Image
  L8_2 = "AdventagePanel/Bg/BgImg3"
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  A0_2.bg_simple_imgs = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BalancePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.balance_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "DisAdventagePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.disadvantage_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation = L1_2
end
L0_1._on_bind = L1_1
return L0_1
