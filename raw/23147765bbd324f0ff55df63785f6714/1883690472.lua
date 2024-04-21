local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityClockParkGamePlayAttributeMergeProgressPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TextPanel/PlayerGoalText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_check = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TextPanel/PlayerGoalNumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_merge_attribute_value = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Slider
  L4_2 = "Frame/MainBg/BotFill/ProgressBar/Bar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.slider_cur = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Slider
  L4_2 = "Frame/MainBg/BotFill/ProgressBar/BarPre"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.slider_pre = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "Frame/MainBg/BotFill/ProgressBar/BarAchor/Archor1"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_target = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "Frame/MainBg/BotFill/ProgressBar/BarAchor/Archor2"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.RectTransform
  L5_2 = "Frame/MainBg/BotFill/ProgressBar/BarAchor/Archor3"
  L6_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_cmpt
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Image
  L6_2 = "Frame/MainBg/BotFill/ProgressBar/BarPre/Fill"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2.img_pre_fill = L3_2
end
L0_1._on_bind = L1_1
return L0_1
