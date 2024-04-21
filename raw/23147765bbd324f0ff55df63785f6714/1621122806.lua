local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HDRSettingsPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Settings/HDRSettingsPage.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/TitlePanel/Title/Txt"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/TitlePanel/SettingDetail"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_setting_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/HDRCheckPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hdr_check = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Slider
  L4_2 = "Root/Contents/HDRCheckPanel/HDRCheckSliderBar/Slider/Line"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.slider_hdr_check = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/HDRCheckPanel/HDRCheckSliderBar/ButtonLeft"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_hdr_check_minus = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/HDRCheckPanel/HDRCheckSliderBar/ButtonRight"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_hdr_check_add = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/BrightnessAdjustPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_brightness_adjust = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Slider
  L4_2 = "Root/Contents/BrightnessAdjustPanel/BrightnessAdjustSliderBar/Slider/Line"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.slider_brightness_adjust = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/BrightnessAdjustPanel/BrightnessAdjustSliderBar/ButtonLeft"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_brightness_adjust_minus = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/BrightnessAdjustPanel/BrightnessAdjustSliderBar/ButtonRight"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_brightness_adjust_add = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnPanel/ResetBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_reset = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnPanel/ConfirmBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_confirm = L1_2
end
L0_1._bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind
  L1_2(L2_2)
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind
  L1_2(L2_2)
end
L0_1._on_pc_bind = L1_1
return L0_1
