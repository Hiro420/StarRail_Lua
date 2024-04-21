local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PhotoFilterInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._on_click_handler = nil
  A0_2._on_click_listener = nil
  A0_2._data = nil
  A0_2._texture = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._data = A1_2
  A0_2._texture = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_title
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_texture
  L3_2(L4_2)
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
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_click_handler = A1_2
  A0_2._on_click_listener = A2_2
end
L0_1.register_click_handler = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._on_click_handler
  if L1_2 then
    L1_2 = A0_2._on_click_handler
    L2_2 = A0_2._on_click_listener
    L3_2 = A0_2._data
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L0_1._setup_title = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._setup_texture_finish
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._adjust_rect_size
  L3_2 = A0_2._texture
  L3_2 = L3_2.width
  L4_2 = A0_2._texture
  L4_2 = L4_2.height
  L3_2 = L3_2 / L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_img
  L2_2 = L1_2
  L1_2 = L1_2.SetTexture
  L3_2 = A0_2._texture
  L1_2(L2_2, L3_2)
  A0_2._setup_texture_finish = true
end
L0_1._setup_texture = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_photo
  L2_2 = L2_2.rect
  L2_2 = L2_2.width
  A0_2._origin_width = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_photo
  L2_2 = L2_2.rect
  L2_2 = L2_2.height
  A0_2._origin_height = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._set_rect_size
  L4_2 = A0_2._origin_height
  L4_2 = A1_2 * L4_2
  L5_2 = A0_2._origin_height
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._adjust_rect_size = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.rect_photo
  L4_2 = L3_2
  L3_2 = L3_2.SetSizeWithCurrentAnchors
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.RectTransform
  L5_2 = L5_2.Axis
  L5_2 = L5_2.Horizontal
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.rect_photo
  L4_2 = L3_2
  L3_2 = L3_2.SetSizeWithCurrentAnchors
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.RectTransform
  L5_2 = L5_2.Axis
  L5_2 = L5_2.Vertical
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._set_rect_size = L1_1
return L0_1
