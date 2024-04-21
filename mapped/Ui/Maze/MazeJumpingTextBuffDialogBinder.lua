local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.BuffArrowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.BuffArrowPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeJumpingTextBuffDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIFollow3DTarget
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.tar_target = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Content/Img/Image"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_buff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Content/Img/Image/ImgGlow"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_buffglow = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ani_animation = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BuffArrowPanel
  L4_2 = G
  L4_2 = L4_2.BuffArrowPanelBinder
  L5_2 = "Content/Img/Image/ArrowPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.buff_arrow_panel = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2.txt_desc = nil
  A0_2.tar_target = nil
  A0_2.img_buff = nil
  A0_2.img_buffglow = nil
  A0_2.ani_animation = nil
end
L0_1._on_dispose = L1_1
return L0_1
