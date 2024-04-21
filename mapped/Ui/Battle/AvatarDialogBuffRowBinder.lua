local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.BuffArrowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.BuffArrowPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarDialogBuffRowBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Common/Widget/BuffRow.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "TitleRow/BuffIcon/Buff"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_skill = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TitleRow/BuffIcon/Buff/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_stack = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TitleRow/BuffIcon/Buff/Time"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_time = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TitleRow/TextPanel/BuffNameText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TitleRow/TextPanel/Timer/TimerText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TitleRow/TextPanel/Timer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.txt_tip_node = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "DescPanel/DescText"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.txt_describe = L1_2
  L1_2 = A0_2.txt_describe
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._safe_get_cmpt
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.UI
    L3_2 = L3_2.Text
    L4_2 = "BuffDescText"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2.txt_describe = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BuffArrowPanel
  L4_2 = G
  L4_2 = L4_2.BuffArrowPanelBinder
  L5_2 = "TitleRow/BuffIcon/Buff/ArrowPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.buff_arrow_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
