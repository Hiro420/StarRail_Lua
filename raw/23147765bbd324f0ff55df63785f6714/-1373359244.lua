local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Book.BookContentInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BookContentInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_line
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_cover_line
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_cover_title = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.TextExtensions
  L2_2 = L2_2.SafeSetTextID
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_title
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_title = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_title
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_customized_title = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_content
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_content
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_content_text = L1_1
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_content
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_content
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A1_2
    L5_2 = ...
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.setup_content_text_id = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_content
  if L3_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_content
    L3_2.alignment = A1_2
  end
end
L0_1.setup_content_text_alignment = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.image
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_content_pic = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect
  L1_2(L2_2)
end
L0_1._refresh_rect_size = L1_1
return L0_1
