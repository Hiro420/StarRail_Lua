local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PhotoImagePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L0_1._double_padding_width = 40
L0_1._double_padding_height = 50
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._texture = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._texture = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._adjust_rect_size
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_photo
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.water_mark_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_img
  L2_2 = L1_2
  L1_2 = L1_2.ResetFilter
  L1_2(L2_2)
end
L0_1.reset_filter = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_img
  L3_2 = L2_2
  L2_2 = L2_2.InitWithFilterConfig
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.init_with_config = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_img
  L3_2 = L2_2
  L2_2 = L2_2.SetFilterLUT
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_filter = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_img
  L3_2 = L2_2
  L2_2 = L2_2.SetFilterAlpha
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_filter_alpha = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_frame
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_frame_active = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_img
  return L1_2
end
L0_1.get_photo = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.PhotoGraphUtils
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = "StarRail_Image_%s.png"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_TimeManager
  L4_2 = L4_2.NowTimeStamp
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_2.SaveScreenCapture
  L4_2 = A0_2._binder
  L4_2 = L4_2.filter_img
  L5_2 = L2_2
  L6_2 = L1_2.StorageFormatType
  L6_2 = L6_2.PNG
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.save_photo = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_img
  L2_2 = L1_2
  L1_2 = L1_2.SetTexture
  L3_2 = A0_2._texture
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_filter_alpha
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
L0_1._show_photo = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._texture
  L1_2 = L1_2.width
  L2_2 = A0_2._texture
  L2_2 = L2_2.height
  L1_2 = L1_2 / L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_photo
  L2_2 = L2_2.rect
  L2_2 = L2_2.height
  L3_2 = L1_2 * L2_2
  L5_2 = A0_2
  L4_2 = A0_2._set_rect_size
  L6_2 = A0_2._binder
  L6_2 = L6_2.rect_photo
  L7_2 = L3_2
  L8_2 = L2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_rect_size
  L6_2 = A0_2._binder
  L6_2 = L6_2.water_mark_panel
  L7_2 = L6_2
  L6_2 = L6_2.get_rect_root
  L6_2 = L6_2(L7_2)
  L7_2 = L3_2
  L8_2 = L2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_rect_size
  L6_2 = A0_2._binder
  L6_2 = L6_2.rect_frame
  L7_2 = L0_1._double_padding_width
  L7_2 = L3_2 + L7_2
  L8_2 = L0_1._double_padding_height
  L8_2 = L2_2 + L8_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._adjust_rect_size = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A1_2
  L4_2 = A1_2.SetSizeWithCurrentAnchors
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.RectTransform
  L6_2 = L6_2.Axis
  L6_2 = L6_2.Horizontal
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A1_2
  L4_2 = A1_2.SetSizeWithCurrentAnchors
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.RectTransform
  L6_2 = L6_2.Axis
  L6_2 = L6_2.Vertical
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._set_rect_size = L1_1
return L0_1
